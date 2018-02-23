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

	"github.com/kr/pretty"
	"github.com/mewkiz/pkg/pathutil"
	"github.com/mewmew/cfa/primitive"
	"github.com/pkg/errors"
)

func usage() {
	const use = `
Generate results for the control flow recovery method.

Usage:

	gen-cfa-results FILE.ll
`
	fmt.Fprintln(os.Stderr, use[1:])
}

func main() {
	flag.Usage = usage
	flag.Parse()
	for _, llPath := range flag.Args() {
		dotPaths, err := getDOTPaths(llPath)
		if err != nil {
			log.Fatalf("%+v", err)
		}
		if err := genResults(llPath, dotPaths); err != nil {
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

func genResults(llPath string, dotPaths []string) error {
	srcFuncs, err := loadTruth(llPath)
	if err != nil {
		return errors.WithStack(err)
	}
	pretty.Println("srcFuncs", srcFuncs)
	for _, dotPath := range dotPaths {
		funcName := pathutil.FileName(dotPath)
		fmt.Println("funcName:", funcName)
		prims, err := restructure(dotPath)
		if err != nil {
			return errors.WithStack(err)
		}
		pretty.Println("prims:", prims)
	}
	return nil
}

func loadTruth(llPath string) ([]*SourceFunc, error) {
	jsonPath := pathutil.TrimExt(llPath) + ".json"
	buf, err := ioutil.ReadFile(jsonPath)
	if err != nil {
		return nil, errors.WithStack(err)
	}
	var srcFuncs []*SourceFunc
	if err := json.Unmarshal(buf, &srcFuncs); err != nil {
		return nil, errors.WithStack(err)
	}
	return srcFuncs, nil
}

// Example:
//
//    {
//       "name": "KeccakF1600Step",
//       "stats": {
//          "do_while_loops": 0,
//          "for_loops": 1,
//          "goto_stmts": 0,
//          "if_else_stmts": 0,
//          "if_stmts": 0,
//          "switch_stmts": 0,
//          "while_loops": 0
//       }
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

func restructure(dotPath string) (*primitive.Primitives, error) {
	buf := &bytes.Buffer{}
	cmd := exec.Command("restructure_interval", dotPath)
	cmd.Stdout = buf
	if err := cmd.Run(); err != nil {
		return nil, errors.WithStack(err)
	}
	prims := &primitive.Primitives{}
	if err := json.Unmarshal(buf.Bytes(), prims); err != nil {
		return nil, errors.WithStack(err)
	}
	return prims, nil
}
