#!/bin/bash

# Generate control flow recovery results.
time ./prepare.sh
time ./run.sh -method hammock
time ./run.sh -method interval

# Generate plots.
echo "Generating plots."
./merge_results.sh
./gen_plot.sh
gnuplot results.gnuplot
