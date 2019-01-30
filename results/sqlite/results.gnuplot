# Canvas size and font.
set terminal pngcairo size 1280, 1024 font 'Verdana,20' enhanced

# Place legends in top-right corner, with a box around them.
set key top right box

# Add offsets so legends are not overlapping with the histogram bars.
set offset graph -0.10, graph -0.10, graph 0.10, graph 0

# Add dotted line for y-axis.
set grid y

# Output rowstacked histogram.
set style data histograms
set style histogram rowstacked

# Width of bars.
set boxwidth 0.4

# Opaque bars with 1 pixel black border.
set style fill solid 1.0 border -1

# --- [ 2-way ] ----------------------------------------------------------------

set title "{/:Bold Recovery of 2-way conditionals}"

# Y-axis label.
set ylabel "Number of recovered 2-way conditionals."

# Output file name.
set output 'results_2-way.png'

# Plot graph.
plot 'results_2-way.dat' using 2:xtic(1) lc rgb '#7ac36a' t "{/:Normal True positive}", \
   '' using 3 lc rgb '#b2182b' t "{/:Normal False negative}", \
   '' using 4 lc rgb '#feb24c' t "{/:Normal False positive}"

# --- [ n-way ] ----------------------------------------------------------------

set title "{/:Bold Recovery of n-way conditionals}"

# Y-axis label.
set ylabel "Number of recovered n-way conditionals."

# Output file name.
set output 'results_n-way.png'

# Plot graph.
plot 'results_n-way.dat' using 2:xtic(1) lc rgb '#7ac36a' t "{/:Normal True positive}", \
   '' using 3 lc rgb '#b2182b' t "{/:Normal False negative}", \
   '' using 4 lc rgb '#feb24c' t "{/:Normal False positive}"

# --- [ pre_loop ] -------------------------------------------------------------

set title "{/:Bold Recovery of pre-test loops}"

# Y-axis label.
set ylabel "Number of recovered pre-test loops."

# Output file name.
set output 'results_pre_loop.png'

# Plot graph.
plot 'results_pre_loop.dat' using 2:xtic(1) lc rgb '#7ac36a' t "{/:Normal True positive}", \
   '' using 3 lc rgb '#b2182b' t "{/:Normal False negative}", \
   '' using 4 lc rgb '#feb24c' t "{/:Normal False positive}"

# --- [ post_loop ] ------------------------------------------------------------

set title "{/:Bold Recovery of post-test loops}"

# Y-axis label.
set ylabel "Number of recovered post-test loops."

# Output file name.
set output 'results_post_loop.png'

# Plot graph.
plot 'results_post_loop.dat' using 2:xtic(1) lc rgb '#7ac36a' t "{/:Normal True positive}", \
   '' using 3 lc rgb '#b2182b' t "{/:Normal False negative}", \
   '' using 4 lc rgb '#feb24c' t "{/:Normal False positive}"

# --- [ combined ] -------------------------------------------------------------

set title "{/:Bold Recovery of control flow primitives}"

# Y-axis label.
set ylabel "Number of recovered control flow primitives."

# Output file name.
set output 'results_combined.png'

# Plot graph.
plot 'results_combined.dat' using 2:xtic(1) lc rgb '#7ac36a' t "{/:Normal True positive}", \
   '' using 3 lc rgb '#b2182b' t "{/:Normal False negative}", \
   '' using 4 lc rgb '#feb24c' t "{/:Normal False positive}"
