# SQLite version.
VER=3200000

EXE=shell
BC=$(addsuffix .bc,$(EXE))
LL=$(BC:.bc=.ll)
JSON=$(LL:.ll=.json)
JSON_filenames=$(LL:.ll=.filenames.json)
KEEP=$(addprefix sqlite-amalgamation-$(VER)/,$(EXE) $(BC))
TESTDATA=$(addprefix testdata/,$(LL) $(JSON) $(JSON_filenames))

all: $(KEEP) $(TESTDATA)

# Produce LLVM IR assembly files from LLVM IR bitcode.
testdata/%.ll: sqlite-amalgamation-$(VER)/%.bc | testdata
	llvm-dis -o $@ $<

# Produce JSON files from C source code.
testdata/%.json: testdata/%.filenames.json | testdata
	../_scripts_/dump_control_flow_stats.py $^ > $@

# Get filenames for each C function.
testdata/%.filenames.json: testdata/%.ll | testdata
	go run ../_scripts_/get_source_filenames.go $^ > $@

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
	wllvm -g -o $(EXE) $(C) -lpthread -ldl

# Fetch source code.
fetch: sqlite-amalgamation-$(VER)

sqlite-amalgamation-$(VER): | sqlite-amalgamation-$(VER).zip
	unzip sqlite-amalgamation-$(VER).zip

sqlite-amalgamation-$(VER).zip:
	wget https://www.sqlite.org/2017/sqlite-amalgamation-$(VER).zip

.PHONY: all fetch
