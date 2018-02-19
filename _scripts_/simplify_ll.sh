#!/bin/bash

# This script is a hack, converting LLVM IR assembly files produced by Clang
# into the format expected by ll2dot and ll2go. Most notably the metadata nodes
# are stripped.

# Parse command line arguments.
if [ $# -ne 1 ]; then
	echo "Usage: simplify_ll.sh FILE.ll"
	exit 1
fi
ll_file=$1

sar -i ', ![a-z.]+ ![0-9]+' '' ${ll_file}
sar -i ' !dbg ![0-9]+ {[\n]' ' {\n' ${ll_file}
sar -i '  (tail )?call void @llvm.dbg.value[^\n]+[\n]' '' ${ll_file}
sar -i '  (tail )?call void @llvm.dbg.declare[^\n]+[\n]' '' ${ll_file}
sar -i '[\n]!(.|[\n])*' '' ${ll_file}
