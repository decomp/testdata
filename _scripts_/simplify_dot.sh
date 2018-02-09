#!/bin/bash

# This script is a hack, converting control flow graphs produced by opt into the
# format expected by restructure. Most notably the entry node is labelled
# "entry", and the true and false edges are labelled with "true" and "false",
# respectively.

# Parse command line arguments.
if [ $# -ne 1 ]; then
	echo "Usage: simplify_dot.sh FILE.dot"
	exit 1
fi
dot_file=$1

# Label first node as entry node.
sar -i '\n\n\t(Node0x[0-9a-f]+) [[]shape=record,label=[^\n]+[\n]' '\n\n\t${1} [label=\"entry\"]\n' ${dot_file}

# Label true edges.
sar -i '\t(Node0x[0-9a-f]+):s0 -> (Node0x[0-9a-f]+);[\n]' '\t${1} -> ${2} [label=\"true\" color=\"darkgreen\"]\n' ${dot_file}

# Label false edges.
sar -i '\t(Node0x[0-9a-f]+):s1 -> (Node0x[0-9a-f]+);[\n]' '\t${1} -> ${2} [label=\"false\" color=\"red\"]\n' ${dot_file}

# Label nodes with basic block name.
sar -i '\t(Node0x[0-9a-f]+) [[]shape=record,label=\"{%([0-9]+):[^\n]+[\n]' '\t${1} [label=\"${2}\"]\n' ${dot_file}

# Remove graph label.
sar -i '\tlabel=[^\n]+[\n][\n]' '' ${dot_file}
