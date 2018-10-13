#!/bin/bash
mkdir -p src
mkdir -p testdata
for n in 16 32 64 128 256 512 1024 2048; do
	# If-statements.
	go run ../_scripts_/gen_nested.go -prim "if" -n ${n} > src/if_n${n}.c
	clang -fbracket-depth=-1 -S -emit-llvm -o testdata/if_n${n}.ll src/if_n${n}.c
	# If-else statements.
	go run ../_scripts_/gen_nested.go -prim "if-else" -n ${n} > src/if_n${n}.c
	clang -fbracket-depth=-1 -S -emit-llvm -o testdata/if_n${n}.ll src/if_n${n}.c
	# Switch statements.
	go run ../_scripts_/gen_nested.go -prim "switch" -n ${n} > src/if_n${n}.c
	clang -fbracket-depth=-1 -S -emit-llvm -o testdata/if_n${n}.ll src/if_n${n}.c
	# For statements.
	go run ../_scripts_/gen_nested.go -prim "for" -n ${n} > src/if_n${n}.c
	clang -fbracket-depth=-1 -S -emit-llvm -o testdata/if_n${n}.ll src/if_n${n}.c
	# While statements.
	go run ../_scripts_/gen_nested.go -prim "while" -n ${n} > src/if_n${n}.c
	clang -fbracket-depth=-1 -S -emit-llvm -o testdata/if_n${n}.ll src/if_n${n}.c
	# Do-while statements.
	go run ../_scripts_/gen_nested.go -prim "do-while" -n ${n} > src/if_n${n}.c
	clang -fbracket-depth=-1 -S -emit-llvm -o testdata/if_n${n}.ll src/if_n${n}.c
done
