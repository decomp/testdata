# SQLite version.
VER=3200000

EXE=shell
C=shell.c sqlite3.c
BC=$(addsuffix .bc,$(EXE))
LL=$(BC:.bc=.ll)
JSON=$(LL:.ll=.json)
KEEP=$(addprefix sqlite-amalgamation-$(VER)/,$(EXE) $(BC))
TESTDATA=$(addprefix testdata/,$(LL) $(JSON))

all: $(KEEP) $(TESTDATA)

# Produce LLVM IR assembly files from LLVM IR bitcode.
testdata/%.ll: sqlite-amalgamation-$(VER)/%.bc | testdata
	llvm-dis -o $@ $<

# Produce JSON files from C source code.
testdata/%.json: $(addprefix sqlite-amalgamation-$(VER)/,$(C)) | testdata
	../_scripts_/dump_control_flow_stats.py $^ > $@

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
	wllvm -o $(EXE) $(C) -lpthread -ldl

# Fetch source code.
fetch: sqlite-amalgamation-$(VER)

sqlite-amalgamation-$(VER): | sqlite-amalgamation-$(VER).zip
	unzip sqlite-amalgamation-$(VER).zip

sqlite-amalgamation-$(VER).zip:
	wget https://www.sqlite.org/2017/sqlite-amalgamation-$(VER).zip

.PHONY: all fetch
