# GNU Coreutils version.
VER=8.27

# List of programs retrieved with:
#
#    find . -type f -executable | grep -v dcgen | sort
EXE=[ b2sum base32 base64 basename cat chcon chgrp chmod chown chroot cksum comm cp csplit cut date dd df dir dircolors dirname du echo env expand expr factor false fmt fold getlimits ginstall groups head hostid id join kill libstdbuf.so link ln logname ls make-prime-list md5sum mkdir mkfifo mknod mktemp mv nice nl nohup nproc numfmt od paste pathchk pinky pr printenv printf ptx pwd readlink realpath rm rmdir runcon seq sha1sum sha224sum sha256sum sha384sum sha512sum shred shuf sleep sort split stat stdbuf stty sum sync tac tail tee test timeout touch tr true truncate tsort tty uname unexpand uniq unlink uptime users vdir wc who whoami yes
BC=$(addsuffix .bc,$(EXE))
LL=$(BC:.bc=.ll)
KEEP=$(addprefix coreutils-$(VER)/src/,$(EXE) $(BC))
TESTDATA=$(addprefix testdata/,$(LL))

all: $(KEEP) $(TESTDATA)

# Produce LLVM IR assembly files from LLVM IR bitcode.
testdata/%.ll: coreutils-$(VER)/src/%.bc testdata
	llvm-dis -o $@ $<

testdata:
	mkdir -p testdata

# Extract LLVM IR bitcode from executables.
coreutils-$(VER)/src/%.bc: coreutils-$(VER)/src/%
	extract-bc $<

# Compile executables using WLLVM.
.ONESHELL:
coreutils-$(VER)/src/$(EXE): coreutils-$(VER)
	cd $<
	export LLVM_COMPILER=clang
	CC=wllvm ./configure
	make

# Fetch source code.
fetch: coreutils-$(VER)

coreutils-$(VER):
	tar -xJf coreutils-$(VER).tar.xz

coreutils-$(VER).tar.xz:
	wget http://ftp.gnu.org/gnu/coreutils/coreutils-$(VER).tar.xz

.PHONY: all fetch
