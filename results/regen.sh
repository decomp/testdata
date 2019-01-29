#!/bin/bash

cd ./coreutils
./regen.sh
cd ..

cd ./sqlite
./regen.sh
cd ..

# Generate plots.
echo "Generating plots."
./merge_results.sh
./gen_plot.sh
gnuplot results.gnuplot
