package main

import (
	"flag"
	"log"
	"os"

	"github.com/decomp/testdata/_scripts_/cfastats"
	"github.com/mewkiz/pkg/jsonutil"
	"github.com/pkg/errors"
)

func main() {
	// Parse command line arguments.
	flag.Parse()
	jsonPaths := flag.Args()
	// Merge control flow analysis results.
	result, err := mergeResults(jsonPaths)
	if err != nil {
		log.Fatalf("%+v", err)
	}
	// Output merged results.
	if err := jsonutil.Write(os.Stdout, result); err != nil {
		log.Fatalf("%+v", err)
	}
}

// mergeResults merges the control flow analysis results stored in the given
// JSON files into a combined statistic.
func mergeResults(jsonPaths []string) (*cfastats.CFAResult, error) {
	total := &cfastats.CFAResult{}
	var stats []*cfastats.CFAStats
	for _, jsonPath := range jsonPaths {
		if err := jsonutil.ParseFile(jsonPath, &stats); err != nil {
			return nil, errors.WithStack(err)
		}
		for _, stat := range stats {
			// False negative.
			total.FalseNegative2WayConditional += stat.FalseNegative2WayConditional()
			total.FalseNegativeNWayConditional += stat.FalseNegativeNWayConditional()
			total.FalseNegativePostTestLoop += stat.FalseNegativePostTestLoop()
			total.FalseNegativePreTestLoop += stat.FalseNegativePreTestLoop()
			// False positive.
			total.FalsePositive2WayConditional += stat.FalsePositive2WayConditional()
			total.FalsePositiveNWayConditional += stat.FalsePositiveNWayConditional()
			total.FalsePositivePostTestLoop += stat.FalsePositivePostTestLoop()
			total.FalsePositivePreTestLoop += stat.FalsePositivePreTestLoop()
			// True positive.
			total.TruePositive2WayConditional += stat.TruePositive2WayConditional()
			total.TruePositiveNWayConditional += stat.TruePositiveNWayConditional()
			total.TruePositivePreTestLoop += stat.TruePositivePreTestLoop()
			total.TruePositivePostTestLoop += stat.TruePositivePostTestLoop()
			// Total amount.
			total.Total2WayConditional += stat.Want2WayConditional
			total.TotalNWayConditional += stat.WantNWayConditional
			total.TotalPreTestLoop += stat.WantPreTestLoop
			total.TotalPostTestLoop += stat.WantPostTestLoop
		}
	}
	return total, nil
}
