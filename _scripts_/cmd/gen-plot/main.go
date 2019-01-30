package main

import (
	"bytes"
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"text/tabwriter"
	"text/template"

	"github.com/decomp/testdata/_scripts_/cfastats"
	"github.com/mewkiz/pkg/jsonutil"
	"github.com/pkg/errors"
)

func main() {
	// Parse command line arguments.
	var (
		// Path to results of hammock method.
		hammockPath string
		// Path to results of interval method.
		intervalPath string
	)
	flag.StringVar(&hammockPath, "hammock", "", "path to results of hammock method")
	flag.StringVar(&intervalPath, "interval", "", "path to results of interval method")
	flag.Parse()
	// Output plot.
	if err := genPlot(hammockPath, intervalPath); err != nil {
		log.Fatalf("%+v", err)
	}
}

// genPlot generates a plot based on the control flow recovery results of the
// Hammock and the Interval method.
func genPlot(hammockPath, intervalPath string) error {
	// Parse control flow recovery results.
	hammockResult := &cfastats.CFAResult{}
	if err := jsonutil.ParseFile(hammockPath, hammockResult); err != nil {
		return errors.WithStack(err)
	}
	intervalResult := &cfastats.CFAResult{}
	if err := jsonutil.ParseFile(intervalPath, intervalResult); err != nil {
		return errors.WithStack(err)
	}
	// Render plot of 2-way.
	data := make(map[string]int)
	data["HammockTruePositive"] = hammockResult.TruePositive2WayConditional
	data["HammockFalseNegative"] = hammockResult.FalseNegative2WayConditional
	data["HammockFalsePositive"] = hammockResult.FalsePositive2WayConditional
	data["IntervalTruePositive"] = intervalResult.TruePositive2WayConditional
	data["IntervalFalseNegative"] = intervalResult.FalseNegative2WayConditional
	data["IntervalFalsePositive"] = intervalResult.FalsePositive2WayConditional
	data["OptimumTruePositive"] = hammockResult.Total2WayConditional
	if err := outputPlot("2-way", data); err != nil {
		return errors.WithStack(err)
	}
	// Render plot of n-way.
	data = make(map[string]int)
	data["HammockTruePositive"] = hammockResult.TruePositiveNWayConditional
	data["HammockFalseNegative"] = hammockResult.FalseNegativeNWayConditional
	data["HammockFalsePositive"] = hammockResult.FalsePositiveNWayConditional
	data["IntervalTruePositive"] = intervalResult.TruePositiveNWayConditional
	data["IntervalFalseNegative"] = intervalResult.FalseNegativeNWayConditional
	data["IntervalFalsePositive"] = intervalResult.FalsePositiveNWayConditional
	data["OptimumTruePositive"] = hammockResult.TotalNWayConditional
	if err := outputPlot("n-way", data); err != nil {
		return errors.WithStack(err)
	}
	// Render plot of pre_loop.
	data = make(map[string]int)
	data["HammockTruePositive"] = hammockResult.TruePositivePreTestLoop
	data["HammockFalseNegative"] = hammockResult.FalseNegativePreTestLoop
	data["HammockFalsePositive"] = hammockResult.FalsePositivePreTestLoop
	data["IntervalTruePositive"] = intervalResult.TruePositivePreTestLoop
	data["IntervalFalseNegative"] = intervalResult.FalseNegativePreTestLoop
	data["IntervalFalsePositive"] = intervalResult.FalsePositivePreTestLoop
	data["OptimumTruePositive"] = hammockResult.TotalPreTestLoop
	if err := outputPlot("pre_loop", data); err != nil {
		return errors.WithStack(err)
	}
	// Render plot of post_loop.
	data = make(map[string]int)
	data["HammockTruePositive"] = hammockResult.TruePositivePostTestLoop
	data["HammockFalseNegative"] = hammockResult.FalseNegativePostTestLoop
	data["HammockFalsePositive"] = hammockResult.FalsePositivePostTestLoop
	data["IntervalTruePositive"] = intervalResult.TruePositivePostTestLoop
	data["IntervalFalseNegative"] = intervalResult.FalseNegativePostTestLoop
	data["IntervalFalsePositive"] = intervalResult.FalsePositivePostTestLoop
	data["OptimumTruePositive"] = hammockResult.TotalPostTestLoop
	if err := outputPlot("post_loop", data); err != nil {
		return errors.WithStack(err)
	}
	// Render plot of combined results.
	data = make(map[string]int)
	hammockTruePositive := hammockResult.TruePositive2WayConditional + hammockResult.TruePositiveNWayConditional + hammockResult.TruePositivePreTestLoop + hammockResult.TruePositivePostTestLoop
	hammockFalseNegative := hammockResult.FalseNegative2WayConditional + hammockResult.FalseNegativeNWayConditional + hammockResult.FalseNegativePreTestLoop + hammockResult.FalseNegativePostTestLoop
	hammockFalsePositive := hammockResult.FalsePositive2WayConditional + hammockResult.FalsePositiveNWayConditional + hammockResult.FalsePositivePreTestLoop + hammockResult.FalsePositivePostTestLoop
	intervalTruePositive := intervalResult.TruePositive2WayConditional + intervalResult.TruePositiveNWayConditional + intervalResult.TruePositivePreTestLoop + intervalResult.TruePositivePostTestLoop
	intervalFalseNegative := intervalResult.FalseNegative2WayConditional + intervalResult.FalseNegativeNWayConditional + intervalResult.FalseNegativePreTestLoop + intervalResult.FalseNegativePostTestLoop
	intervalFalsePositive := intervalResult.FalsePositive2WayConditional + intervalResult.FalsePositiveNWayConditional + intervalResult.FalsePositivePreTestLoop + intervalResult.FalsePositivePostTestLoop
	optimumTruePositive := hammockResult.Total2WayConditional + hammockResult.TotalNWayConditional + hammockResult.TotalPreTestLoop + hammockResult.TotalPostTestLoop
	data["HammockTruePositive"] = hammockTruePositive
	data["HammockFalseNegative"] = hammockFalseNegative
	data["HammockFalsePositive"] = hammockFalsePositive
	data["IntervalTruePositive"] = intervalTruePositive
	data["IntervalFalseNegative"] = intervalFalseNegative
	data["IntervalFalsePositive"] = intervalFalsePositive
	data["OptimumTruePositive"] = optimumTruePositive
	if err := outputPlot("combined", data); err != nil {
		return errors.WithStack(err)
	}
	return nil
}

const tmpl = `
# Method name	True positive	False negative	False positive
"Hammock method"	{{ .HammockTruePositive }}	{{ .HammockFalseNegative }}	{{ .HammockFalsePositive }}
"Interval method"	{{ .IntervalTruePositive }}	{{ .IntervalFalseNegative }}	{{ .IntervalFalsePositive }}
"Theoretical optimum"	{{ .OptimumTruePositive }}	0	0
`

// outputPlot outputs the control flow recovery result data in Gnuplot format.
func outputPlot(name string, data map[string]int) error {
	buf := &bytes.Buffer{}
	const padding = 3
	w := tabwriter.NewWriter(buf, 0, 0, padding, ' ', 0)
	t, err := template.New("plot").Parse(tmpl[1:])
	if err != nil {
		return errors.WithStack(err)
	}
	if err := t.Execute(w, data); err != nil {
		return errors.WithStack(err)
	}
	if err := w.Flush(); err != nil {
		return errors.WithStack(err)
	}
	dstPath := fmt.Sprintf("results_%s.dat", name)
	if err := ioutil.WriteFile(dstPath, buf.Bytes(), 0644); err != nil {
		return errors.WithStack(err)
	}
	return nil
}
