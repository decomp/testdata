// The gen-cfa-results tool compares the source of truth against recovered
// control flow primities.
package main

import (
	"bytes"
	"encoding/json"
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"sort"

	"github.com/mewkiz/pkg/jsonutil"

	"github.com/decomp/testdata/_scripts_/cfastats"
	"github.com/kr/pretty"
	"github.com/mewkiz/pkg/osutil"
	"github.com/mewkiz/pkg/pathutil"
	"github.com/mewkiz/pkg/term"
	"github.com/mewmew/lnp/pkg/cfa/primitive"
	"github.com/pkg/errors"
)

// dbg represents a logger with the "gen-cfa-results:" prefix, which logs debug
// messages to standard error.
var dbg = log.New(os.Stderr, term.MagentaBold("gen-cfa-results:")+" ", 0)

func usage() {
	const use = `
Generate results for the control flow recovery method.

Usage:

	gen-cfa-results FILE.ll
`
	fmt.Fprintln(os.Stderr, use[1:])
}

func main() {
	var (
		// method specifies the control flow recovery method (hammock, interval,
		// pattern-independent).
		method string
	)
	flag.StringVar(&method, "method", "hammock", "control flow recovery method (hammock, interval, pattern-independent)")
	flag.Usage = usage
	flag.Parse()
	for _, llPath := range flag.Args() {
		dotPaths, err := getDOTPaths(llPath)
		if err != nil {
			log.Fatalf("%+v", err)
		}
		if err := genResults(llPath, dotPaths, method); err != nil {
			log.Fatalf("%+v", err)
		}
	}
}

func getDOTPaths(llPath string) ([]string, error) {
	graphsDir := pathutil.TrimExt(llPath) + "_graphs"
	var dotPaths []string
	walk := func(path string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}
		if info.IsDir() {
			return nil
		}
		if filepath.Ext(path) == ".dot" {
			dotPaths = append(dotPaths, path)
		}
		return nil
	}
	if err := filepath.Walk(graphsDir, walk); err != nil {
		return nil, errors.WithStack(err)
	}
	sort.Strings(dotPaths)
	return dotPaths, nil
}

func genResults(llPath string, dotPaths []string, method string) error {
	// Load and index truth table.
	files, err := loadTruth(llPath)
	if err != nil {
		return errors.WithStack(err)
	}
	truth := make(map[string]*SourceFunc)
	for _, srcFuncs := range files {
		for _, srcFunc := range srcFuncs {
			if prev, ok := truth[srcFunc.Name]; ok {
				panic(fmt.Errorf("source function %q already present in truth table; prev `%v`, new `%v`", srcFunc.Name, prev, srcFunc))
			}
			truth[srcFunc.Name] = srcFunc
		}
	}
	pretty.Println("truth", truth)
	// Load and index results.
	results := make(map[string][]*primitive.Primitive)
	for _, dotPath := range dotPaths {
		funcName := pathutil.FileName(dotPath)
		dbg.Printf("structuring %q", funcName)
		//fmt.Println("funcName:", funcName)
		prims, err := restructure(dotPath, method)
		if err != nil {
			return errors.WithStack(err)
		}
		//pretty.Println("prims:", prims)
		if prev, ok := results[funcName]; ok {
			panic(fmt.Errorf("source function %q already present in results table; prev `%v`, new `%v`", funcName, prev, prims))
		}
		results[funcName] = prims
	}
	pretty.Println("results", results)
	// Compare results against truth table.
	stats := compareResults(truth, results)

	basePath := pathutil.TrimExt(llPath)
	jsonPath := fmt.Sprintf("%s.cfa_stats_%s.json", basePath, method)
	dbg.Printf("creating file %q", jsonPath)
	if err := jsonutil.WriteFile(jsonPath, stats); err != nil {
		return errors.WithStack(err)
	}
	return nil
}

func compareResults(truth map[string]*SourceFunc, results map[string][]*primitive.Primitive) []*cfastats.CFAStats {
	if len(truth) != len(results) {
		log.Printf("mismatch between number of results (%d) and number of entities in truth table (%d)", len(results), len(truth))
	}
	var funcNames []string
	for funcName := range truth {
		funcNames = append(funcNames, funcName)
	}
	sort.Strings(funcNames)
	var stats []*cfastats.CFAStats
	for _, funcName := range funcNames {
		stat := compareFunc(truth[funcName], results[funcName])
		stats = append(stats, stat)
	}

	fmt.Println("=== [ False negatives ] =====================================")
	fmt.Println()
	for _, stat := range stats {
		if stat.FalseNegative2WayConditional() != 0 {
			fmt.Printf("2-way %q: (%d/%d) (got/want)\n", stat.Name, stat.Got2WayConditional, stat.Want2WayConditional)
		}
	}
	for _, stat := range stats {
		if stat.FalseNegativeNWayConditional() != 0 {
			fmt.Printf("n-way %q: (%d/%d) (got/want)\n", stat.Name, stat.GotNWayConditional, stat.WantNWayConditional)
		}
	}
	for _, stat := range stats {
		if stat.FalseNegativePreTestLoop() != 0 {
			fmt.Printf("pre-test %q: (%d/%d) (got/want)\n", stat.Name, stat.GotPreTestLoop, stat.WantPreTestLoop)
		}
	}
	for _, stat := range stats {
		if stat.FalseNegativePostTestLoop() != 0 {
			fmt.Printf("post-test %q: (%d/%d) (got/want)\n", stat.Name, stat.GotPostTestLoop, stat.WantPostTestLoop)
		}
	}
	fmt.Println()

	fmt.Println("=== [ False positives ] =====================================")
	fmt.Println()
	for _, stat := range stats {
		if stat.FalsePositive2WayConditional() != 0 {
			fmt.Printf("2-way %q: (%d/%d) (got/want)\n", stat.Name, stat.Got2WayConditional, stat.Want2WayConditional)
		}
	}
	for _, stat := range stats {
		if stat.FalsePositiveNWayConditional() != 0 {
			fmt.Printf("n-way %q: (%d/%d) (got/want)\n", stat.Name, stat.GotNWayConditional, stat.WantNWayConditional)
		}
	}
	for _, stat := range stats {
		if stat.FalsePositivePreTestLoop() != 0 {
			fmt.Printf("pre-test %q: (%d/%d) (got/want)\n", stat.Name, stat.GotPreTestLoop, stat.WantPreTestLoop)
		}
	}
	for _, stat := range stats {
		if stat.FalsePositivePostTestLoop() != 0 {
			fmt.Printf("post-test %q: (%d/%d) (got/want)\n", stat.Name, stat.GotPostTestLoop, stat.WantPostTestLoop)
		}
	}
	fmt.Println()

	fmt.Println("=== [ True positives ] =====================================")
	fmt.Println()
	for _, stat := range stats {
		if stat.Got2WayConditional == stat.Want2WayConditional && stat.Got2WayConditional > 0 {
			fmt.Printf("2-way %q: (%d/%d) (got/want)\n", stat.Name, stat.Got2WayConditional, stat.Want2WayConditional)
		}
	}
	for _, stat := range stats {
		if stat.GotNWayConditional == stat.WantNWayConditional && stat.GotNWayConditional > 0 {
			fmt.Printf("n-way %q: (%d/%d) (got/want)\n", stat.Name, stat.GotNWayConditional, stat.WantNWayConditional)
		}
	}
	for _, stat := range stats {
		if stat.GotPreTestLoop == stat.WantPreTestLoop && stat.GotPreTestLoop > 0 {
			fmt.Printf("pre-test %q: (%d/%d) (got/want)\n", stat.Name, stat.GotPreTestLoop, stat.WantPreTestLoop)
		}
	}
	for _, stat := range stats {
		if stat.GotPostTestLoop == stat.WantPostTestLoop && stat.GotPostTestLoop > 0 {
			fmt.Printf("post-test %q: (%d/%d) (got/want)\n", stat.Name, stat.GotPostTestLoop, stat.WantPostTestLoop)
		}
	}
	fmt.Println()

	return stats
}

func compareFunc(truth *SourceFunc, result []*primitive.Primitive) *cfastats.CFAStats {
	stats := &cfastats.CFAStats{
		Name: truth.Name,
	}
	stats.Want2WayConditional = truth.Stats.IfStmts + truth.Stats.IfElseStmts
	for _, prim := range result {
		switch prim.Prim {
		case "if", "if_else", "if_return":
			stats.Got2WayConditional++
		case "switch":
			stats.GotNWayConditional++
		case "pre_loop":
			stats.GotPreTestLoop++
		case "post_loop":
			stats.GotPostTestLoop++
		case "inf_loop":
			// TODO: Check whether to consider endless loops as pre-test or post-
			// test, or another category altogether? Consider as pre-test for now.
			stats.GotPreTestLoop++
		case "seq":
			// nothing to do.
		default:
			panic(fmt.Errorf("support for primitive %q not yet implemented", prim.Prim))
		}
	}
	stats.WantNWayConditional = truth.Stats.SwitchStmts
	stats.WantPreTestLoop = truth.Stats.ForLoops + truth.Stats.WhileLoops
	stats.WantPostTestLoop = truth.Stats.DoWhileLoops
	return stats
}

func loadTruth(llPath string) (map[string][]*SourceFunc, error) {
	jsonPath := pathutil.TrimExt(llPath) + ".json"
	buf, err := ioutil.ReadFile(jsonPath)
	if err != nil {
		return nil, errors.WithStack(err)
	}
	files := make(map[string][]*SourceFunc)
	if err := json.Unmarshal(buf, &files); err != nil {
		return nil, errors.WithStack(err)
	}
	return files, nil
}

// Example:
//
//    {
//       "/home/u/Desktop/go/src/github.com/decomp/testdata/sqlite/sqlite-amalgamation-3200000/shell.c": [
//          {
//             "name": "KeccakF1600Step",
//             "stats": {
//                "do_while_loops": 0,
//                "for_loops": 1,
//                "goto_stmts": 0,
//                "if_else_stmts": 0,
//                "if_stmts": 0,
//                "switch_stmts": 0,
//                "while_loops": 0
//             }
//          }
//       ]
//    }

type SourceFunc struct {
	Name  string
	Stats Stats
}

type Stats struct {
	DoWhileLoops int `json:"do_while_loops"`
	ForLoops     int `json:"for_loops"`
	GotoStmts    int `json:"goto_stmts"`
	IfElseStmts  int `json:"if_else_stmts"`
	IfStmts      int `json:"if_stmts"`
	SwitchStmts  int `json:"switch_stmts"`
	WhileLoops   int `json:"while_loops"`
}

// Example from "absFunc" of SQLite shell.ll:
//
//    {
//       "intervals": {
//          "G0_I1": [
//             "3",
//             "34",
//             "41",
//             "44",
//             "32",
//             "14",
//             "21",
//             "26",
//             "29",
//             "24",
//             "47"
//          ],
//          "G1_I1": [
//             "G1_I1"
//          ]
//       },
//       "loops": null,
//       "ifs": [
//          {
//             "Cond": "14",
//             "Follow": "29",
//             "Unresolved": [
//                "21"
//             ]
//          },
//          {
//             "Cond": "34",
//             "Follow": "44",
//             "Unresolved": null
//          }
//       ]
//    }

func restructure(dotPath, method string) ([]*primitive.Primitive, error) {
	// Load JSON files if present.
	basePath := pathutil.TrimExt(dotPath)
	jsonPath := fmt.Sprintf("%s.restructure_%s.json", basePath, method)
	if osutil.Exists(jsonPath) {
		dbg.Printf("loading `restructure2` output from %q.", jsonPath)
		buf, err := ioutil.ReadFile(jsonPath)
		if err != nil {
			return nil, errors.WithStack(err)
		}
		var prims []*primitive.Primitive
		if err := json.Unmarshal(buf, &prims); err != nil {
			return nil, errors.WithStack(err)
		}
		return prims, nil
	}

	// Restructure DOT file.
	buf := &bytes.Buffer{}
	cmd := exec.Command("restructure2", "-method", method, dotPath)
	cmd.Stdout = buf
	cmd.Stderr = os.Stderr
	if err := cmd.Run(); err != nil {
		return nil, errors.WithStack(err)
	}
	var prims []*primitive.Primitive
	if err := json.Unmarshal(buf.Bytes(), &prims); err != nil {
		return nil, errors.WithStack(err)
	}

	// Store results for the future.
	dbg.Printf("storing `restructure2` output to %q.", jsonPath)
	if err := ioutil.WriteFile(jsonPath, buf.Bytes(), 0644); err != nil {
		return nil, errors.WithStack(err)
	}

	return prims, nil
}
