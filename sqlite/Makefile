# SQLite version.
VER=3200000

EXE=shell
BC=$(addsuffix .bc,$(EXE))
LL=$(BC:.bc=.ll)
KEEP=$(addprefix sqlite-amalgamation-$(VER)/,$(EXE) $(BC))
TESTDATA=$(addprefix testdata/,$(LL))

all: $(KEEP) $(TESTDATA)

# Produce LLVM IR assembly files from LLVM IR bitcode.
testdata/%.ll: sqlite-amalgamation-$(VER)/%.bc | testdata
	llvm-dis -o $@ $<

testdata:
	mkdir -p testdata

# Extract LLVM IR bitcode from executables.
sqlite-amalgamation-$(VER)/%.bc: sqlite-amalgamation-$(VER)/%
	extract-bc $<

# Compile executables using WLLVM.
.ONESHELL:
sqlite-amalgamation-$(VER)/$(EXE): | sqlite-amalgamation-$(VER)
	cd sqlite-amalgamation-$(VER)
	export LLVM_COMPILER=clang
	wllvm -o shell shell.c sqlite3.c -lpthread -ldl

# Fetch source code.
fetch: sqlite-amalgamation-$(VER)

sqlite-amalgamation-$(VER): | sqlite-amalgamation-$(VER).zip
	unzip sqlite-amalgamation-$(VER).zip

sqlite-amalgamation-$(VER).zip:
	wget https://www.sqlite.org/2017/sqlite-amalgamation-$(VER).zip

.PHONY: all fetch
