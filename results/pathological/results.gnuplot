# Canvas size and font.
set terminal png giant size 1280, 800 font 'Verdana,16'

# Place legends in top-right corner, with a box around them.
set key top right box

# Add offsets so legends are not overlapping with the histogram bars.
set offset graph 0, graph 0, graph 0.10, graph 0

# Add dotted line for y-axis.
set grid y

# Output rowstacked histogram.
set style data histograms
set style histogram rowstacked

# Width of bars.
set boxwidth 0.5

# Opaque bars with 1 pixel black border.
set style fill solid 1.0 border -1

# --- [ 2-way ] ----------------------------------------------------------------

# Y-axis label.
set ylabel "Number of recovered 2-way conditionals."

# Output file name.
set output 'results_2-way.png'

# Plot graph.
plot 'results_2-way.dat' using 2:xtic(1) lc rgb '#7ac36a' t "True positive", \
   '' using 3 lc rgb '#b2182b' t "False negative", \
   '' using 4 lc rgb '#feb24c' t "False positive"

# --- [ n-way ] ----------------------------------------------------------------

# Y-axis label.
set ylabel "Number of recovered n-way conditionals."

# Output file name.
set output 'results_n-way.png'

# Plot graph.
plot 'results_n-way.dat' using 2:xtic(1) lc rgb '#7ac36a' t "True positive", \
   '' using 3 lc rgb '#b2182b' t "False negative", \
   '' using 4 lc rgb '#feb24c' t "False positive"

# --- [ pre_loop ] -------------------------------------------------------------

# Y-axis label.
set ylabel "Number of recovered pre-test loops."

# Output file name.
set output 'results_pre_loop.png'

# Plot graph.
plot 'results_pre_loop.dat' using 2:xtic(1) lc rgb '#7ac36a' t "True positive", \
   '' using 3 lc rgb '#b2182b' t "False negative", \
   '' using 4 lc rgb '#feb24c' t "False positive"

# --- [ post_loop ] ------------------------------------------------------------

# Y-axis label.
set ylabel "Number of recovered post-test loops."

# Output file name.
set output 'results_post_loop.png'

# Plot graph.
plot 'results_post_loop.dat' using 2:xtic(1) lc rgb '#7ac36a' t "True positive", \
   '' using 3 lc rgb '#b2182b' t "False negative", \
   '' using 4 lc rgb '#feb24c' t "False positive"
