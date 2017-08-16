# SQLite version.
VER=3200000

LL=sqlite3.ll
TESTDATA=$(addprefix testdata/,$(LL))

all: $(TESTDATA)

# Produce LLVM IR assembly files from C source code.
testdata/%.ll: sqlite-amalgamation-$(VER)/%.c testdata
	clang -emit-llvm -S -o $@ $<

testdata:
	mkdir -p testdata

sqlite-amalgamation-$(VER)/sqlite3.c: sqlite-amalgamation-$(VER)

# Fetch source code.
fetch: sqlite-amalgamation-$(VER)

sqlite-amalgamation-$(VER): sqlite-amalgamation-$(VER).zip
	unzip sqlite-amalgamation-$(VER).zip

sqlite-amalgamation-$(VER).zip:
	wget https://www.sqlite.org/2017/sqlite-amalgamation-$(VER).zip

.PHONY: all fetch
