#!/bin/bash

# Copy LLVM IR files and generate DOT files for each function.
cp -r ../../coreutils/testdata run
cd run
for ll_path in *.ll; do
	echo -e "\n=== [ ${ll_path} ] =======================================\n"
	ll2dot ${ll_path}
done
