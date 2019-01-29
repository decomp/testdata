#!/bin/bash

# Copy LLVM IR files and generate DOT files for each function.
cp -r ../../pathological/testdata run
cd run
for ll_path in *.ll; do
	echo -e "\n=== [ ${ll_path} ] =======================================\n"
	ll2dot2 ${ll_path}
done
