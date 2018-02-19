#!/bin/bash

simplify_ll=`realpath ../../_scripts_/simplify_ll.sh`

# Copy LLVM IR files and generate DOT files for each function.
cp -r ../../coreutils/testdata run
cd run
for ll_path in *.ll; do
	echo -e "\n=== [ ${ll_path} ] =======================================\n"
	${simplify_ll} ${ll_path}
	ll2dot ${ll_path}
done
