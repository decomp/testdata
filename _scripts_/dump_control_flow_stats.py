#!/usr/bin/env python3
""" Usage: dump_control_flow_stats.py FILE.json
"""

import sys
import clang.cindex
import asciitree
import json
from os import path
from pprint import pprint

# traverse traverses the AST starting from node, invoking f(n) for each visited
# node n.
def traverse(node, f):
	for child in node.get_children():
		traverse(child, f)
	f(node)

# debug pretty prints the AST starting from node.
def debug(node):
	s = asciitree.draw_tree(
		node,
		lambda n: list(n.get_children()),
		lambda n: "%s (%s)" % (n.spelling or n.displayname, str(n.kind).split(".")[1])
	)
	print(s)

# sort_funcs sorts the given list of functions in alphabetical order.
def sort_funcs(funcs):
	def key(n):
		return n.spelling
	funcs.sort(key=key)

# compound_stmt_count returns the number of compound statements present in the
# AST starting from node.
def compound_stmt_count(node):
	# In Python 3 `nonlocal` may be used for closures. For compatability with
	# both Python 2 and 3, classes and dictionaries may be used as a workaround.
	class context:
		total = 0
	def f(n):
		if n.kind == clang.cindex.CursorKind.COMPOUND_STMT:
			context.total += 1
	traverse(node, f)
	return context.total

# is_func_def reports whether the given node is a function definition.
def is_func_def(node):
	if node.kind != clang.cindex.CursorKind.FUNCTION_DECL:
		return False
	return compound_stmt_count(node) > 0

# func_defs returns the function definitions present in the AST.
def func_defs(node):
	class context:
		funcs = []
	def record_func_def(n):
		if is_func_def(n):
			context.funcs.append(n)
	traverse(node, record_func_def)
	return context.funcs

# is_if_stmt reports whether the given node is an if-statement.
#
#    if-stmt (1-way conditional)
#       IF_STMT (1 COMPOUND_STMT)
def is_if_stmt(node):
	if node.kind != clang.cindex.CursorKind.IF_STMT:
		return False
	return compound_stmt_count(node) == 1

# is_if_else_stmt reports whether the given node is an if-else-statement.
#
#    if-else-stmt (2-way conditional)
#       IF_STMT (2 COMPOUND_STMT)
def is_if_else_stmt(node):
	if node.kind != clang.cindex.CursorKind.IF_STMT:
		return False
	return compound_stmt_count(node) == 2

# is_switch_stmt reports whether the given node is a switch-statement.
#
#    switch-stmt (n-way conditional)
#       SWITCH_STMT
def is_switch_stmt(node):
	return node.kind == clang.cindex.CursorKind.SWITCH_STMT

# is_for_loop reports whether the given node is a for-loop.
#
#    for-loop (pre-test loop with init and post statements)
#       FOR_STMT
def is_for_loop(node):
	return node.kind == clang.cindex.CursorKind.FOR_STMT

# is_while_loop reports whether the given node is a while-loop.
#
#    while-loop (pre-test loop)
#       WHILE_STMT
def is_while_loop(node):
	return node.kind == clang.cindex.CursorKind.WHILE_STMT

# is_do_while_loop reports whether the given node is a do-while-loop.
#
#    do-while-loop (post-test loop)
#       DO_STMT
def is_do_while_loop(node):
	return node.kind == clang.cindex.CursorKind.DO_STMT

# is_goto_stmt reports whether the given node is a goto-statement.
#
#    goto_stmt (direct jump)
#       GOTO_STMT
def is_goto_stmt(node):
	return node.kind == clang.cindex.CursorKind.GOTO_STMT

# control_flow_stats returns control flow statistics for the given function.
def control_flow_stats(node):
	d = {
		'if_stmts': 0,
		'if_else_stmts': 0,
		'switch_stmts': 0,
		'for_loops': 0,
		'while_loops': 0,
		'do_while_loops': 0,
		'goto_stmts': 0,
	}
	def f(n):
		if is_if_stmt(n):
			d['if_stmts'] += 1
		elif is_if_else_stmt(n):
			d['if_else_stmts'] += 1
		elif is_switch_stmt(n):
			d['switch_stmts'] += 1
		elif is_for_loop(n):
			d['for_loops'] += 1
		elif is_while_loop(n):
			d['while_loops'] += 1
		elif is_do_while_loop(n):
			d['do_while_loops'] += 1
		elif is_goto_stmt(n):
			d['goto_stmts'] += 1
	traverse(node, f)
	data = {
		'name': node.spelling,
		'stats': d,
	}
	return data

if len(sys.argv[1:]) != 1:
	print("Usage: dump_control_flow_stats.py FILE.json")
	sys.exit()

jsonPath = sys.argv[1]
data = json.load(open(jsonPath))
cFuncs = {}
for fn in data:
	cPath = path.normpath(path.join(fn['Dir'], fn['Filename']))
	x = []
	if cPath in cFuncs:
		x = cFuncs[cPath]
	x.append(fn['CName'])
	cFuncs[cPath] = x

clang_flags = ['-I', '/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27', '-I', '/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27/lib', '-I', '/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27/src']

# Parse input files to locate function definitions.
rows = {}
for cPath in cFuncs:
	if cPath.endswith(".y") or cPath.endswith("parse-datetime.c"):
		continue
	index = clang.cindex.Index.create()
	tu = index.parse(cPath, args=clang_flags)
	root = tu.cursor
	fs = func_defs(root)
	cFuncList = cFuncs[cPath]
	funcs = {}
	for f in fs:
		if f.spelling in cFuncList:
			funcs[f.spelling] = f
	fs = []
	for name in funcs:
		fs.append(funcs[name])
	sort_funcs(fs)

	# Output control flow statistics in JSON format.
	stats = []
	for f in fs:
		data = control_flow_stats(f)
		stats.append(data)
	rows[cPath] = stats

print(json.dumps(rows, indent="\t", sort_keys=True))
