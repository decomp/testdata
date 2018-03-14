; ModuleID = 'coreutils-8.27/src/md5sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"\0A  -b, --binary         read in binary mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"  -c, --check          read %s sums from the FILEs and check them\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"      --tag            create a BSD-style checksum\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"  -t, --text           read in text mode (default)\0A\00", align 1
@.str.7 = private unnamed_addr constant [435 x i8] c"\0AThe following five options are useful only when verifying checksums:\0A      --ignore-missing  don't fail or report status for missing files\0A      --quiet          don't print OK for each successfully verified file\0A      --status         don't output anything, status code shows success\0A      --strict         exit non-zero for improperly formatted checksum lines\0A  -w, --warn           warn about improperly formatted checksum lines\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [297 x i8] c"\0AThe sums are computed as described in %s.  When checking, the input\0Ashould be a former output of this program.  The default mode is to print a\0Aline with checksum, a space, a character indicating input mode ('*' for binary,\0A' ' for text or where binary is insignificant), and name for each FILE.\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"RFC 1321\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"bctw\00", align 1
@long_options = internal constant [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@status_only = internal unnamed_addr global i1 false, align 1
@warn = internal unnamed_addr global i1 false, align 1
@quiet = internal unnamed_addr global i1 false, align 1
@ignore_missing = internal unnamed_addr global i1 false, align 1
@strict = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Scott Miller\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"David Madore\00", align 1
@min_digest_line_length = internal unnamed_addr global i1 false, align 8
@digest_hex_bytes = internal unnamed_addr global i1 false, align 8
@.str.21 = private unnamed_addr constant [35 x i8] c"--tag does not support --text mode\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"the --tag option is meaningless when verifying checksums\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"the --binary and --text options are meaningless when verifying checksums\00", align 1
@.str.24 = private unnamed_addr constant [72 x i8] c"the --ignore-missing option is meaningful only when verifying checksums\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"the --status option is meaningful only when verifying checksums\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"the --warn option is meaningful only when verifying checksums\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"the --quiet option is meaningful only when verifying checksums\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"the --strict option is meaningful only when verifying checksums\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.61 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"%s: too many checksum lines\00", align 1
@bsd_reversed = internal unnamed_addr global i32 -1, align 4, !dbg !210
@.str.64 = private unnamed_addr constant [47 x i8] c"%s: %lu: improperly formatted %s checksum line\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"FAILED open or read\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@digest_check.bin2hex = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16, !dbg !106
@.str.67 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"WARNING: %lu line is improperly formatted\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"WARNING: %lu lines are improperly formatted\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"WARNING: %lu listed file could not be read\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"WARNING: %lu listed files could not be read\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"WARNING: %lu computed checksum did NOT match\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"WARNING: %lu computed checksums did NOT match\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"%s: no file was verified\00", align 1
@.str.70 = private unnamed_addr constant [50 x i8] c"%s: no properly formatted %s checksum lines found\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"ignore-missing\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), align 8, !dbg !224
@.str.35 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !230
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !235
@.str.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal unnamed_addr constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !238
@exit_failure = global i32 1, align 4, !dbg !250
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !257
@.str.80 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.86, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.92, i32 0, i32 0), i8* null], align 16, !dbg !264
@.str.83 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.84 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.85 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.86 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.87 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.88 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.89 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.90 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.91 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.92 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !276
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !283
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !296
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.96 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.97 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.98 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.99 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !303
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !310
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !298
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !312
@.str.106 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.107 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.108 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.109 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.110 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.111 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.112 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.113 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.114 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.115 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.116 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.117 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.118 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.119 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.122 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.126 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.127 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !318
@.str.1.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !327
@.str.156 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.157 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.160 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !362
@.str.3.161 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.162 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.163 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.164 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.165 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.166 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !764 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !768, metadata !769), !dbg !770
  %2 = icmp eq i32 %0, 0, !dbg !771
  br i1 %2, label %8, label %3, !dbg !773

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !774, !tbaa !776
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !774
  %6 = load i8*, i8** @program_name, align 8, !dbg !774, !tbaa !776
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !774
  br label %52, !dbg !774

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !780
  %10 = load i8*, i8** @program_name, align 8, !dbg !780, !tbaa !776
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 128) #10, !dbg !780
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !782
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !782, !tbaa !776
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !782
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !787
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !787, !tbaa !776
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !787
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !789
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !789
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !790
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !790, !tbaa !776
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !790
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !791
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !791, !tbaa !776
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #10, !dbg !791
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !793
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !793, !tbaa !776
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #10, !dbg !793
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !794
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !794, !tbaa !776
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #10, !dbg !794
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !795
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !795, !tbaa !776
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !795
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !796
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !796
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !84, metadata !769) #10, !dbg !797
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i64 0, metadata !84, metadata !769) #10, !dbg !797
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !799
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !799
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !92, metadata !769) #10, !dbg !801
  %40 = icmp eq i8* %39, null, !dbg !802
  br i1 %40, label %47, label %41, !dbg !804

; <label>:41:                                     ; preds = %8
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 3) #14, !dbg !805
  %43 = icmp eq i32 %42, 0, !dbg !805
  br i1 %43, label %47, label %44, !dbg !806

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !807
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !807
  br label %47, !dbg !809

; <label>:47:                                     ; preds = %8, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !810
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !810
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !811
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !811
  br label %52

; <label>:52:                                     ; preds = %47, %3
  tail call void @exit(i32 %0) #15, !dbg !812
  unreachable, !dbg !812
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !813 {
  %3 = alloca [20 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !174, metadata !769), !dbg !842
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [20 x i8], align 16
  %8 = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !818, metadata !769), !dbg !844
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !819, metadata !769), !dbg !845
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0, !dbg !846
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #10, !dbg !846
  tail call void @llvm.dbg.declare(metadata [20 x i8]* %7, metadata !820, metadata !769), !dbg !847
  tail call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !848, metadata !769), !dbg !858
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 3, !dbg !860
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !857, metadata !769), !dbg !861
  %11 = ptrtoint i8* %10 to i64, !dbg !862
  %12 = and i64 %11, 3, !dbg !863
  %13 = sub nsw i64 0, %12, !dbg !864
  %14 = getelementptr inbounds i8, i8* %10, i64 %13, !dbg !864
  call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !821, metadata !769), !dbg !865
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !822, metadata !769), !dbg !866
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !824, metadata !769), !dbg !867
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !825, metadata !769), !dbg !868
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !826, metadata !769), !dbg !869
  %15 = load i8*, i8** %1, align 8, !dbg !870, !tbaa !776
  call void @set_program_name(i8* %15) #10, !dbg !871
  %16 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !872
  %17 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !873
  %18 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !874
  %19 = call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !875
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !876, !tbaa !776
  %21 = call i32 @setvbuf(%struct._IO_FILE* %20, i8* null, i32 1, i64 0) #10, !dbg !877
  br label %22, !dbg !878

; <label>:22:                                     ; preds = %27, %2
  %23 = phi i32 [ -1, %2 ], [ %28, %27 ]
  %24 = phi i8 [ 0, %2 ], [ %29, %27 ]
  %25 = phi i8 [ 0, %2 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !822, metadata !769), !dbg !866
  call void @llvm.dbg.value(metadata i8 %24, i64 0, metadata !826, metadata !769), !dbg !869
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !825, metadata !769), !dbg !868
  %26 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !879
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !823, metadata !769), !dbg !880
  switch i32 %26, label %43 [
    i32 -1, label %44
    i32 98, label %27
    i32 99, label %31
    i32 129, label %32
    i32 116, label %33
    i32 119, label %34
    i32 128, label %35
    i32 130, label %36
    i32 131, label %37
    i32 132, label %38
    i32 -130, label %39
    i32 -131, label %40
  ], !dbg !878

; <label>:27:                                     ; preds = %22, %38, %37, %36, %35, %34, %33, %32, %31
  %28 = phi i32 [ 1, %38 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ], [ 0, %33 ], [ %23, %32 ], [ %23, %31 ], [ 1, %22 ]
  %29 = phi i8 [ 1, %38 ], [ %24, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %22 ]
  %30 = phi i8 [ %25, %38 ], [ %25, %37 ], [ %25, %36 ], [ %25, %35 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ 1, %31 ], [ %25, %22 ]
  br label %22, !dbg !866, !llvm.loop !881

; <label>:31:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !822, metadata !769), !dbg !866
  br label %27, !dbg !883

; <label>:32:                                     ; preds = %22
  store i1 true, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %27, !dbg !885

; <label>:33:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !825, metadata !769), !dbg !868
  br label %27, !dbg !886

; <label>:34:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 true, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %27, !dbg !887

; <label>:35:                                     ; preds = %22
  store i1 true, i1* @ignore_missing, align 1
  br label %27, !dbg !888

; <label>:36:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 true, i1* @quiet, align 1
  br label %27, !dbg !889

; <label>:37:                                     ; preds = %22
  store i1 true, i1* @strict, align 1
  br label %27, !dbg !890

; <label>:38:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !826, metadata !769), !dbg !869
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !825, metadata !769), !dbg !868
  br label %27, !dbg !891

; <label>:39:                                     ; preds = %22
  call void @usage(i32 0) #16, !dbg !892
  unreachable, !dbg !892

; <label>:40:                                     ; preds = %22
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !893, !tbaa !776
  %42 = load i8*, i8** @Version, align 8, !dbg !893, !tbaa !776
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* null) #10, !dbg !893
  call void @exit(i32 0) #15, !dbg !893
  unreachable, !dbg !893

; <label>:43:                                     ; preds = %22
  call void @usage(i32 1) #16, !dbg !894
  unreachable, !dbg !894

; <label>:44:                                     ; preds = %22
  store i1 true, i1* @min_digest_line_length, align 8
  store i1 true, i1* @digest_hex_bytes, align 8
  %45 = icmp ne i8 %24, 0, !dbg !895
  %46 = xor i1 %45, true, !dbg !897
  %47 = icmp ne i32 %23, 0, !dbg !898
  %48 = or i1 %47, %46, !dbg !897
  br i1 %48, label %51, label %49, !dbg !897

; <label>:49:                                     ; preds = %44
  %50 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !899
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50) #10, !dbg !901
  call void @usage(i32 1) #16, !dbg !902
  unreachable, !dbg !902

; <label>:51:                                     ; preds = %44
  %52 = icmp eq i8 %25, 0, !dbg !903
  %53 = or i1 %52, %46, !dbg !905
  br i1 %53, label %56, label %54, !dbg !905

; <label>:54:                                     ; preds = %51
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !906
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55) #10, !dbg !908
  call void @usage(i32 1) #16, !dbg !909
  unreachable, !dbg !909

; <label>:56:                                     ; preds = %51
  %57 = icmp slt i32 %23, 0, !dbg !910
  %58 = or i1 %57, %52, !dbg !912
  br i1 %58, label %61, label %59, !dbg !912

; <label>:59:                                     ; preds = %56
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !913
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60) #10, !dbg !915
  call void @usage(i32 1) #16, !dbg !916
  unreachable, !dbg !916

; <label>:61:                                     ; preds = %56
  %62 = load i1, i1* @ignore_missing, align 1
  %63 = and i1 %52, %62, !dbg !917
  br i1 %63, label %64, label %66, !dbg !917

; <label>:64:                                     ; preds = %61
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !919
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65) #10, !dbg !921
  call void @usage(i32 1) #16, !dbg !922
  unreachable, !dbg !922

; <label>:66:                                     ; preds = %61
  %67 = load i1, i1* @status_only, align 1
  %68 = and i1 %52, %67, !dbg !923
  br i1 %68, label %69, label %71, !dbg !923

; <label>:69:                                     ; preds = %66
  %70 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !925
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %70) #10, !dbg !927
  call void @usage(i32 1) #16, !dbg !928
  unreachable, !dbg !928

; <label>:71:                                     ; preds = %66
  %72 = load i1, i1* @warn, align 1
  %73 = and i1 %52, %72, !dbg !929
  br i1 %73, label %74, label %76, !dbg !929

; <label>:74:                                     ; preds = %71
  %75 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !931
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75) #10, !dbg !933
  call void @usage(i32 1) #16, !dbg !934
  unreachable, !dbg !934

; <label>:76:                                     ; preds = %71
  %77 = load i1, i1* @quiet, align 1
  %78 = and i1 %52, %77, !dbg !935
  br i1 %78, label %79, label %81, !dbg !935

; <label>:79:                                     ; preds = %76
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !937
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !939
  call void @usage(i32 1) #16, !dbg !940
  unreachable, !dbg !940

; <label>:81:                                     ; preds = %76
  %82 = load i1, i1* @strict, align 1
  %83 = icmp ne i8 %25, 0, !dbg !941
  %84 = xor i1 %83, true, !dbg !943
  %85 = and i1 %82, %84, !dbg !944
  br i1 %85, label %86, label %88, !dbg !945

; <label>:86:                                     ; preds = %81
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !946
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #10, !dbg !948
  call void @usage(i32 1) #16, !dbg !949
  unreachable, !dbg !949

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !825, metadata !769), !dbg !868
  %89 = icmp slt i32 %23, 1, !dbg !950
  %90 = sext i32 %0 to i64, !dbg !951
  %91 = getelementptr inbounds i8*, i8** %1, i64 %90, !dbg !951
  call void @llvm.dbg.value(metadata i8** %91, i64 0, metadata !828, metadata !769), !dbg !952
  %92 = load i32, i32* @optind, align 4, !dbg !953, !tbaa !955
  %93 = icmp eq i32 %92, %0, !dbg !957
  br i1 %93, label %94, label %96, !dbg !958

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !959
  call void @llvm.dbg.value(metadata i8** %95, i64 0, metadata !828, metadata !769), !dbg !952
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** %91, align 8, !dbg !960, !tbaa !776
  br label %96, !dbg !961

; <label>:96:                                     ; preds = %94, %88
  %97 = phi i8** [ %95, %94 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i8** %97, i64 0, metadata !828, metadata !769), !dbg !952
  %98 = sext i32 %92 to i64, !dbg !962
  %99 = getelementptr inbounds i8*, i8** %1, i64 %98, !dbg !962
  call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !829, metadata !769), !dbg !963
  call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !829, metadata !769), !dbg !963
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !824, metadata !769), !dbg !867
  %100 = icmp ult i8** %99, %97, !dbg !964
  br i1 %100, label %101, label %112, !dbg !965

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %103 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 3
  %104 = ptrtoint i8* %103 to i64
  %105 = and i64 %104, 3
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = bitcast i8** %4 to i8*
  %109 = bitcast i64* %5 to i8*
  %110 = select i1 %89, i32 32, i32 42
  %111 = trunc i32 %110 to i8
  br label %115, !dbg !965

; <label>:112:                                    ; preds = %637, %96
  %113 = phi i8 [ 1, %96 ], [ %638, %637 ]
  %114 = load i1, i1* @have_read_stdin, align 1
  br i1 %114, label %641, label %649, !dbg !966

; <label>:115:                                    ; preds = %101, %637
  %116 = phi i8** [ %99, %101 ], [ %639, %637 ]
  %117 = phi i8 [ 1, %101 ], [ %638, %637 ]
  call void @llvm.dbg.value(metadata i8 %117, i64 0, metadata !824, metadata !769), !dbg !867
  call void @llvm.dbg.value(metadata i8** %116, i64 0, metadata !829, metadata !769), !dbg !963
  %118 = load i8*, i8** %116, align 8, !dbg !968, !tbaa !776
  call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !831, metadata !769), !dbg !969
  br i1 %83, label %119, label %546, !dbg !970

; <label>:119:                                    ; preds = %115
  call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !112, metadata !769) #10, !dbg !971
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !168, metadata !769) #10, !dbg !972
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !169, metadata !769) #10, !dbg !973
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !170, metadata !769) #10, !dbg !974
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !171, metadata !769) #10, !dbg !975
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !172, metadata !769) #10, !dbg !976
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !173, metadata !769) #10, !dbg !977
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %102) #10, !dbg !978
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !848, metadata !769) #10, !dbg !979
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !857, metadata !769) #10, !dbg !981
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !176, metadata !769) #10, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #10, !dbg !983
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109) #10, !dbg !984
  %120 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !985
  %121 = icmp eq i32 %120, 0, !dbg !985
  br i1 %121, label %122, label %125, !dbg !986

; <label>:122:                                    ; preds = %119
  store i1 true, i1* @have_read_stdin, align 1
  %123 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !987
  call void @llvm.dbg.value(metadata i8* %123, i64 0, metadata !112, metadata !769) #10, !dbg !971
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !990, !tbaa !776
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %124, i64 0, metadata !113, metadata !769) #10, !dbg !991
  br label %132, !dbg !992

; <label>:125:                                    ; preds = %119
  %126 = call %struct._IO_FILE* @fopen_safer(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !993
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %126, i64 0, metadata !113, metadata !769) #10, !dbg !991
  %127 = icmp eq %struct._IO_FILE* %126, null, !dbg !995
  br i1 %127, label %128, label %132, !dbg !997

; <label>:128:                                    ; preds = %125
  %129 = tail call i32* @__errno_location() #17, !dbg !998
  %130 = load i32, i32* %129, align 4, !dbg !998, !tbaa !955
  %131 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %118) #10, !dbg !1000
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %131) #10, !dbg !1001
  br label %542, !dbg !1002

; <label>:132:                                    ; preds = %125, %122
  %133 = phi %struct._IO_FILE* [ %124, %122 ], [ %126, %125 ]
  %134 = phi i8* [ %123, %122 ], [ %118, %125 ]
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !112, metadata !769) #10, !dbg !971
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !113, metadata !769) #10, !dbg !991
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !177, metadata !769) #10, !dbg !1003
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !178, metadata !769) #10, !dbg !1004
  store i8* null, i8** %4, align 8, !dbg !1005, !tbaa !776
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !179, metadata !769) #10, !dbg !1006
  store i64 0, i64* %5, align 8, !dbg !1007, !tbaa !1008
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %133, i64 0, i32 0
  br label %136, !dbg !1010, !llvm.loop !1011

; <label>:136:                                    ; preds = %469, %132
  %137 = phi i8 [ 0, %132 ], [ %470, %469 ]
  %138 = phi i64 [ 0, %132 ], [ %144, %469 ]
  %139 = phi i8 [ 0, %132 ], [ %471, %469 ]
  %140 = phi i64 [ 0, %132 ], [ %472, %469 ]
  %141 = phi i64 [ 0, %132 ], [ %473, %469 ]
  %142 = phi i64 [ 0, %132 ], [ %474, %469 ]
  %143 = phi i64 [ 0, %132 ], [ %475, %469 ]
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !168, metadata !769) #10, !dbg !972
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !169, metadata !769) #10, !dbg !973
  call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !170, metadata !769) #10, !dbg !974
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !171, metadata !769) #10, !dbg !975
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !172, metadata !769) #10, !dbg !976
  call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !177, metadata !769) #10, !dbg !1003
  call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !173, metadata !769) #10, !dbg !977
  %144 = add i64 %138, 1, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !177, metadata !769) #10, !dbg !1003
  %145 = icmp eq i64 %144, 0, !dbg !1015
  br i1 %145, label %146, label %149, !dbg !1017

; <label>:146:                                    ; preds = %136
  %147 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i32 5) #10, !dbg !1018
  %148 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1018
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %147, i8* %148) #10, !dbg !1018
  unreachable, !dbg !1018

; <label>:149:                                    ; preds = %136
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !178, metadata !769) #10, !dbg !1004
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !179, metadata !769) #10, !dbg !1006
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1019, metadata !769) #10, !dbg !1027
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !1025, metadata !769) #10, !dbg !1029
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !1026, metadata !769) #10, !dbg !1030
  %150 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %133) #10, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !185, metadata !769) #10, !dbg !1032
  %151 = icmp slt i64 %150, 1, !dbg !1033
  br i1 %151, label %479, label %152, !dbg !1035

; <label>:152:                                    ; preds = %149
  %153 = load i8*, i8** %4, align 8, !dbg !1036, !tbaa !776
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !178, metadata !769) #10, !dbg !1004
  %154 = load i8, i8* %153, align 1, !dbg !1036, !tbaa !1038
  %155 = icmp eq i8 %154, 35, !dbg !1039
  br i1 %155, label %469, label %156, !dbg !1040

; <label>:156:                                    ; preds = %152
  %157 = add nsw i64 %150, -1, !dbg !1041
  %158 = getelementptr inbounds i8, i8* %153, i64 %157, !dbg !1043
  %159 = load i8, i8* %158, align 1, !dbg !1043, !tbaa !1038
  %160 = icmp eq i8 %159, 10, !dbg !1044
  br i1 %160, label %161, label %163, !dbg !1045

; <label>:161:                                    ; preds = %156
  call void @llvm.dbg.value(metadata i64 %157, i64 0, metadata !185, metadata !769) #10, !dbg !1032
  store i8 0, i8* %158, align 1, !dbg !1046, !tbaa !1038
  %162 = load i8*, i8** %4, align 8, !dbg !1047, !tbaa !776
  br label %163, !dbg !1048

; <label>:163:                                    ; preds = %161, %156
  %164 = phi i8* [ %162, %161 ], [ %153, %156 ], !dbg !1047
  %165 = phi i64 [ %157, %161 ], [ %150, %156 ]
  call void @llvm.dbg.value(metadata i64 %165, i64 0, metadata !185, metadata !769) #10, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !178, metadata !769) #10, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !1049, metadata !769) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %165, i64 0, metadata !1055, metadata !769) #10, !dbg !1064
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1059, metadata !769) #10, !dbg !1065
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  br label %166, !dbg !1067

; <label>:166:                                    ; preds = %170, %163
  %167 = phi i64 [ 0, %163 ], [ %171, %170 ]
  call void @llvm.dbg.value(metadata i64 %167, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  %168 = getelementptr inbounds i8, i8* %164, i64 %167, !dbg !1068
  %169 = load i8, i8* %168, align 1, !dbg !1068, !tbaa !1038
  switch i8 %169, label %174 [
    i8 32, label %170
    i8 9, label %170
    i8 92, label %172
  ], !dbg !1068

; <label>:170:                                    ; preds = %166, %166
  %171 = add i64 %167, 1, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  br label %166, !dbg !1067, !llvm.loop !1070

; <label>:172:                                    ; preds = %166
  %173 = add i64 %167, 1, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1059, metadata !769) #10, !dbg !1065
  br label %174, !dbg !1076

; <label>:174:                                    ; preds = %166, %172
  %175 = phi i1 [ true, %172 ], [ false, %166 ]
  %176 = phi i64 [ %173, %172 ], [ %167, %166 ]
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1060, metadata !769) #10, !dbg !1077
  %177 = getelementptr inbounds i8, i8* %164, i64 %176, !dbg !1078
  %178 = call i32 @strncmp(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 3) #14, !dbg !1078
  %179 = icmp eq i32 %178, 0, !dbg !1078
  br i1 %179, label %180, label %257, !dbg !1080

; <label>:180:                                    ; preds = %174
  %181 = add i64 %176, 3, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  %182 = getelementptr inbounds i8, i8* %164, i64 %181, !dbg !1083
  %183 = load i8, i8* %182, align 1, !dbg !1083, !tbaa !1038
  %184 = icmp eq i8 %183, 32, !dbg !1085
  %185 = add i64 %176, 4, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %185, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  %186 = select i1 %184, i64 %185, i64 %181, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %186, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  %187 = getelementptr inbounds i8, i8* %164, i64 %186, !dbg !1088
  %188 = load i8, i8* %187, align 1, !dbg !1088, !tbaa !1038
  %189 = icmp eq i8 %188, 40, !dbg !1090
  br i1 %189, label %190, label %355, !dbg !1091

; <label>:190:                                    ; preds = %180
  %191 = add i64 %186, 1, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %191, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  %192 = getelementptr inbounds i8, i8* %164, i64 %191, !dbg !1094
  %193 = sub i64 %165, %191, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1096, metadata !769) #10, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !1101, metadata !769) #10, !dbg !1108
  call void @llvm.dbg.value(metadata i1 %175, i64 0, metadata !1104, metadata !769) #10, !dbg !1109
  %194 = icmp eq i64 %193, 0, !dbg !1110
  br i1 %194, label %355, label %195, !dbg !1112

; <label>:195:                                    ; preds = %190
  %196 = add i64 %193, -1
  call void @llvm.dbg.value(metadata i64 %196, i64 0, metadata !1105, metadata !769) #10, !dbg !1113
  %197 = icmp eq i64 %196, 0, !dbg !1114
  br i1 %197, label %208, label %198, !dbg !1115

; <label>:198:                                    ; preds = %195
  br label %202, !dbg !1116

; <label>:199:                                    ; preds = %202
  %200 = add i64 %203, -1
  call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !1105, metadata !769) #10, !dbg !1113
  %201 = icmp eq i64 %200, 0, !dbg !1114
  br i1 %201, label %208, label %202, !dbg !1115, !llvm.loop !1117

; <label>:202:                                    ; preds = %198, %199
  %203 = phi i64 [ %200, %199 ], [ %196, %198 ]
  %204 = phi i64 [ %203, %199 ], [ %193, %198 ]
  %205 = getelementptr inbounds i8, i8* %192, i64 %203, !dbg !1116
  %206 = load i8, i8* %205, align 1, !dbg !1116, !tbaa !1038
  %207 = icmp eq i8 %206, 41, !dbg !1120
  br i1 %207, label %208, label %199, !dbg !1121

; <label>:208:                                    ; preds = %202, %199, %195
  %209 = phi i64 [ 1, %195 ], [ 1, %199 ], [ %204, %202 ]
  %210 = phi i64 [ 0, %195 ], [ 0, %199 ], [ %203, %202 ]
  %211 = phi i1 [ true, %195 ], [ true, %199 ], [ false, %202 ]
  %212 = getelementptr inbounds i8, i8* %192, i64 %210, !dbg !1122
  %213 = load i8, i8* %212, align 1, !dbg !1122, !tbaa !1038
  %214 = icmp eq i8 %213, 41, !dbg !1124
  br i1 %214, label %215, label %355, !dbg !1125

; <label>:215:                                    ; preds = %208
  br i1 %175, label %216, label %243, !dbg !1126

; <label>:216:                                    ; preds = %215
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1128, metadata !769) #10, !dbg !1137
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1133, metadata !769) #10, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1134, metadata !769) #10, !dbg !1140
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1135, metadata !769) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1135, metadata !769) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1134, metadata !769) #10, !dbg !1140
  br i1 %211, label %239, label %217, !dbg !1142

; <label>:217:                                    ; preds = %216
  %218 = add i64 %209, -2
  br label %219, !dbg !1142

; <label>:219:                                    ; preds = %233, %217
  %220 = phi i64 [ 0, %217 ], [ %237, %233 ]
  %221 = phi i8* [ %192, %217 ], [ %236, %233 ]
  call void @llvm.dbg.value(metadata i8* %221, i64 0, metadata !1134, metadata !769) #10, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %220, i64 0, metadata !1135, metadata !769) #10, !dbg !1141
  %222 = getelementptr inbounds i8, i8* %192, i64 %220, !dbg !1143
  %223 = load i8, i8* %222, align 1, !dbg !1143, !tbaa !1038
  %224 = sext i8 %223 to i32, !dbg !1143
  switch i32 %224, label %233 [
    i32 92, label %225
    i32 0, label %355
  ], !dbg !1146

; <label>:225:                                    ; preds = %219
  %226 = icmp eq i64 %220, %218, !dbg !1147
  br i1 %226, label %355, label %227, !dbg !1150

; <label>:227:                                    ; preds = %225
  %228 = add i64 %220, 1, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %228, i64 0, metadata !1135, metadata !769) #10, !dbg !1141
  %229 = getelementptr inbounds i8, i8* %192, i64 %228, !dbg !1152
  %230 = load i8, i8* %229, align 1, !dbg !1152, !tbaa !1038
  %231 = sext i8 %230 to i32, !dbg !1152
  switch i32 %231, label %355 [
    i32 110, label %232
    i32 92, label %233
  ], !dbg !1153

; <label>:232:                                    ; preds = %227
  call void @llvm.dbg.value(metadata i8* %221, i64 0, metadata !1134, metadata !1154) #10, !dbg !1140
  br label %233, !dbg !1155

; <label>:233:                                    ; preds = %232, %227, %219
  %234 = phi i8 [ 10, %232 ], [ 92, %227 ], [ %223, %219 ]
  %235 = phi i64 [ %228, %232 ], [ %228, %227 ], [ %220, %219 ]
  store i8 %234, i8* %221, align 1, !tbaa !1038
  %236 = getelementptr inbounds i8, i8* %221, i64 1
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1135, metadata !769) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %236, i64 0, metadata !1134, metadata !769) #10, !dbg !1140
  %237 = add i64 %235, 1, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1135, metadata !769) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1135, metadata !769) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %236, i64 0, metadata !1134, metadata !769) #10, !dbg !1140
  %238 = icmp ult i64 %237, %210, !dbg !1158
  br i1 %238, label %219, label %239, !dbg !1142, !llvm.loop !1159

; <label>:239:                                    ; preds = %233, %216
  %240 = phi i8* [ %192, %216 ], [ %236, %233 ]
  %241 = icmp ult i8* %240, %212, !dbg !1162
  br i1 %241, label %242, label %243, !dbg !1164

; <label>:242:                                    ; preds = %239
  store i8 0, i8* %240, align 1, !dbg !1165, !tbaa !1038
  br label %243, !dbg !1166

; <label>:243:                                    ; preds = %242, %239, %215
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1105, metadata !769) #10, !dbg !1113
  store i8 0, i8* %212, align 1, !dbg !1167, !tbaa !1038
  br label %244, !dbg !1168

; <label>:244:                                    ; preds = %249, %243
  %245 = phi i64 [ %209, %243 ], [ %250, %249 ]
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1105, metadata !769) #10, !dbg !1113
  %246 = getelementptr inbounds i8, i8* %192, i64 %245, !dbg !1169
  %247 = load i8, i8* %246, align 1, !dbg !1169, !tbaa !1038
  switch i8 %247, label %355 [
    i8 32, label %249
    i8 9, label %249
    i8 61, label %248
  ], !dbg !1169

; <label>:248:                                    ; preds = %244
  br label %251

; <label>:249:                                    ; preds = %244, %244
  %250 = add i64 %245, 1, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %250, i64 0, metadata !1105, metadata !769) #10, !dbg !1113
  br label %244, !dbg !1168, !llvm.loop !1171

; <label>:251:                                    ; preds = %256, %248
  %252 = phi i64 [ %245, %248 ], [ %253, %256 ]
  %253 = add i64 %252, 1
  call void @llvm.dbg.value(metadata i64 %253, i64 0, metadata !1105, metadata !769) #10, !dbg !1113
  %254 = getelementptr inbounds i8, i8* %192, i64 %253, !dbg !1174
  %255 = load i8, i8* %254, align 1, !dbg !1174, !tbaa !1038
  switch i8 %255, label %323 [
    i8 32, label %256
    i8 9, label %256
  ], !dbg !1174

; <label>:256:                                    ; preds = %251, %251
  br label %251, !llvm.loop !1175

; <label>:257:                                    ; preds = %174
  %258 = sub i64 %165, %176, !dbg !1178
  %259 = load i1, i1* @min_digest_line_length, align 8
  %260 = select i1 %259, i64 34, i64 0
  %261 = load i8, i8* %177, align 1, !dbg !1180, !tbaa !1038
  %262 = icmp eq i8 %261, 92, !dbg !1181
  %263 = zext i1 %262 to i64, !dbg !1182
  %264 = or i64 %260, %263, !dbg !1183
  %265 = icmp ult i64 %258, %264, !dbg !1184
  br i1 %265, label %355, label %266, !dbg !1185

; <label>:266:                                    ; preds = %257
  %267 = load i1, i1* @digest_hex_bytes, align 8
  %268 = select i1 %267, i64 32, i64 0
  %269 = add i64 %268, %176, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %269, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  %270 = getelementptr inbounds i8, i8* %164, i64 %269, !dbg !1187
  %271 = load i8, i8* %270, align 1, !dbg !1187, !tbaa !1038
  switch i8 %271, label %355 [
    i8 32, label %272
    i8 9, label %272
  ], !dbg !1187

; <label>:272:                                    ; preds = %266, %266
  %273 = add i64 %269, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %273, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  store i8 0, i8* %270, align 1, !dbg !1190, !tbaa !1038
  %274 = sub i64 %165, %273, !dbg !1191
  %275 = icmp eq i64 %274, 1, !dbg !1193
  br i1 %275, label %279, label %276, !dbg !1194

; <label>:276:                                    ; preds = %272
  %277 = getelementptr inbounds i8, i8* %164, i64 %273, !dbg !1195
  %278 = load i8, i8* %277, align 1, !dbg !1195, !tbaa !1038
  switch i8 %278, label %279 [
    i8 32, label %283
    i8 42, label %283
  ], !dbg !1196

; <label>:279:                                    ; preds = %276, %272
  %280 = load i32, i32* @bsd_reversed, align 4, !dbg !1197, !tbaa !955
  %281 = icmp eq i32 %280, 0, !dbg !1200
  br i1 %281, label %355, label %282, !dbg !1201

; <label>:282:                                    ; preds = %279
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1202, !tbaa !955
  br label %288, !dbg !1203

; <label>:283:                                    ; preds = %276, %276
  %284 = load i32, i32* @bsd_reversed, align 4, !dbg !1204, !tbaa !955
  %285 = icmp eq i32 %284, 1, !dbg !1206
  br i1 %285, label %288, label %286, !dbg !1207

; <label>:286:                                    ; preds = %283
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1208, !tbaa !955
  %287 = add i64 %269, 2, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  br label %288, !dbg !1211

; <label>:288:                                    ; preds = %286, %283, %282
  %289 = phi i64 [ %273, %282 ], [ %287, %286 ], [ %273, %283 ]
  call void @llvm.dbg.value(metadata i64 %289, i64 0, metadata !1061, metadata !769) #10, !dbg !1066
  %290 = getelementptr inbounds i8, i8* %164, i64 %289, !dbg !1212
  br i1 %175, label %291, label %323, !dbg !1213

; <label>:291:                                    ; preds = %288
  %292 = sub i64 %165, %289, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !1128, metadata !769) #10, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1133, metadata !769) #10, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !1134, metadata !769) #10, !dbg !1219
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1135, metadata !769) #10, !dbg !1220
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1135, metadata !769) #10, !dbg !1220
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !1134, metadata !769) #10, !dbg !1219
  %293 = icmp eq i64 %292, 0, !dbg !1221
  br i1 %293, label %316, label %294, !dbg !1222

; <label>:294:                                    ; preds = %291
  %295 = add i64 %292, -1
  br label %296, !dbg !1222

; <label>:296:                                    ; preds = %310, %294
  %297 = phi i64 [ 0, %294 ], [ %314, %310 ]
  %298 = phi i8* [ %290, %294 ], [ %313, %310 ]
  call void @llvm.dbg.value(metadata i8* %298, i64 0, metadata !1134, metadata !769) #10, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1135, metadata !769) #10, !dbg !1220
  %299 = getelementptr inbounds i8, i8* %290, i64 %297, !dbg !1223
  %300 = load i8, i8* %299, align 1, !dbg !1223, !tbaa !1038
  %301 = sext i8 %300 to i32, !dbg !1223
  switch i32 %301, label %310 [
    i32 92, label %302
    i32 0, label %355
  ], !dbg !1224

; <label>:302:                                    ; preds = %296
  %303 = icmp eq i64 %297, %295, !dbg !1225
  br i1 %303, label %355, label %304, !dbg !1226

; <label>:304:                                    ; preds = %302
  %305 = add i64 %297, 1, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %305, i64 0, metadata !1135, metadata !769) #10, !dbg !1220
  %306 = getelementptr inbounds i8, i8* %290, i64 %305, !dbg !1228
  %307 = load i8, i8* %306, align 1, !dbg !1228, !tbaa !1038
  %308 = sext i8 %307 to i32, !dbg !1228
  switch i32 %308, label %355 [
    i32 110, label %309
    i32 92, label %310
  ], !dbg !1229

; <label>:309:                                    ; preds = %304
  call void @llvm.dbg.value(metadata i8* %298, i64 0, metadata !1134, metadata !1154) #10, !dbg !1219
  br label %310, !dbg !1230

; <label>:310:                                    ; preds = %309, %304, %296
  %311 = phi i8 [ 10, %309 ], [ 92, %304 ], [ %300, %296 ]
  %312 = phi i64 [ %305, %309 ], [ %305, %304 ], [ %297, %296 ]
  store i8 %311, i8* %298, align 1, !tbaa !1038
  %313 = getelementptr inbounds i8, i8* %298, i64 1
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1135, metadata !769) #10, !dbg !1220
  call void @llvm.dbg.value(metadata i8* %313, i64 0, metadata !1134, metadata !769) #10, !dbg !1219
  %314 = add i64 %312, 1, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1135, metadata !769) #10, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1135, metadata !769) #10, !dbg !1220
  call void @llvm.dbg.value(metadata i8* %313, i64 0, metadata !1134, metadata !769) #10, !dbg !1219
  %315 = icmp ult i64 %314, %292, !dbg !1221
  br i1 %315, label %296, label %316, !dbg !1222, !llvm.loop !1159

; <label>:316:                                    ; preds = %310, %291
  %317 = phi i8* [ %290, %291 ], [ %313, %310 ]
  %318 = getelementptr inbounds i8, i8* %164, i64 %165, !dbg !1232
  %319 = icmp ult i8* %317, %318, !dbg !1233
  br i1 %319, label %320, label %321, !dbg !1234

; <label>:320:                                    ; preds = %316
  store i8 0, i8* %317, align 1, !dbg !1235, !tbaa !1038
  br label %321, !dbg !1236

; <label>:321:                                    ; preds = %320, %316
  %322 = icmp eq i8* %290, null, !dbg !1237
  br i1 %322, label %355, label %323, !dbg !1238

; <label>:323:                                    ; preds = %251, %321, %288
  %324 = phi i8* [ %177, %321 ], [ %177, %288 ], [ %254, %251 ]
  %325 = phi i8* [ %290, %321 ], [ %290, %288 ], [ %192, %251 ]
  br i1 %121, label %326, label %329, !dbg !1239

; <label>:326:                                    ; preds = %323
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !181, metadata !769) #10, !dbg !1240
  %327 = call i32 @strcmp(i8* %325, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !1241
  %328 = icmp eq i32 %327, 0, !dbg !1241
  br i1 %328, label %355, label %329, !dbg !1242

; <label>:329:                                    ; preds = %326, %323
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !184, metadata !769) #10, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1250, metadata !769) #10, !dbg !1253
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1250, metadata !769) #10, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  %330 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %330, label %331, label %351, !dbg !1254

; <label>:331:                                    ; preds = %329
  %332 = tail call i16** @__ctype_b_loc() #17, !dbg !1256
  %333 = load i16*, i16** %332, align 8, !tbaa !776
  br label %334, !dbg !1254

; <label>:334:                                    ; preds = %669, %331
  %335 = phi i32 [ 0, %331 ], [ %671, %669 ]
  %336 = phi i8* [ %324, %331 ], [ %670, %669 ]
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !1250, metadata !769) #10, !dbg !1253
  %337 = load i8, i8* %336, align 1, !dbg !1256, !tbaa !1038
  %338 = zext i8 %337 to i64, !dbg !1256
  %339 = getelementptr inbounds i16, i16* %333, i64 %338, !dbg !1256
  %340 = load i16, i16* %339, align 2, !dbg !1256, !tbaa !1260
  %341 = and i16 %340, 4096, !dbg !1256
  %342 = icmp eq i16 %341, 0, !dbg !1256
  br i1 %342, label %355, label %343, !dbg !1262

; <label>:343:                                    ; preds = %334
  %344 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !1250, metadata !769) #10, !dbg !1253
  %345 = load i8, i8* %344, align 1, !dbg !1256, !tbaa !1038
  %346 = zext i8 %345 to i64, !dbg !1256
  %347 = getelementptr inbounds i16, i16* %333, i64 %346, !dbg !1256
  %348 = load i16, i16* %347, align 2, !dbg !1256, !tbaa !1260
  %349 = and i16 %348, 4096, !dbg !1256
  %350 = icmp eq i16 %349, 0, !dbg !1256
  br i1 %350, label %355, label %653, !dbg !1262

; <label>:351:                                    ; preds = %669, %329
  %352 = phi i8* [ %324, %329 ], [ %670, %669 ]
  %353 = load i8, i8* %352, align 1, !dbg !1264, !tbaa !1038
  %354 = icmp eq i8 %353, 0, !dbg !1265
  br i1 %354, label %363, label %355, !dbg !1266

; <label>:355:                                    ; preds = %304, %302, %296, %227, %225, %219, %244, %334, %343, %653, %661, %351, %326, %321, %279, %266, %257, %208, %190, %180
  %356 = add i64 %143, 1, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %356, i64 0, metadata !168, metadata !769) #10, !dbg !972
  %357 = load i1, i1* @warn, align 1
  br i1 %357, label %358, label %361, !dbg !1269

; <label>:358:                                    ; preds = %355
  %359 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i64 0, i64 0), i32 5) #10, !dbg !1270
  %360 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1273
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %359, i8* %360, i64 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1274
  br label %361, !dbg !1275

; <label>:361:                                    ; preds = %358, %355
  %362 = add i64 %142, 1, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %362, i64 0, metadata !169, metadata !769) #10, !dbg !973
  br label %469, !dbg !1277

; <label>:363:                                    ; preds = %351
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !192, metadata !769) #10, !dbg !1278
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #10, !dbg !1279
  %364 = load i1, i1* @status_only, align 1
  br i1 %364, label %368, label %365, !dbg !1280

; <label>:365:                                    ; preds = %363
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !181, metadata !769) #10, !dbg !1240
  %366 = call i8* @strchr(i8* %325, i32 10) #14, !dbg !1281
  %367 = icmp ne i8* %366, null, !dbg !1280
  br label %368

; <label>:368:                                    ; preds = %365, %363
  %369 = phi i1 [ false, %363 ], [ %367, %365 ]
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !172, metadata !769) #10, !dbg !976
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !181, metadata !769) #10, !dbg !1240
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !192, metadata !769) #10, !dbg !1278
  %370 = call fastcc zeroext i1 @digest_file(i8* %325, i8* %107, i8* nonnull %6) #10, !dbg !1282
  br i1 %370, label %389, label %371, !dbg !1283

; <label>:371:                                    ; preds = %368
  %372 = add i64 %140, 1, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !171, metadata !769) #10, !dbg !975
  %373 = load i1, i1* @status_only, align 1
  br i1 %373, label %465, label %374, !dbg !1286

; <label>:374:                                    ; preds = %371
  br i1 %369, label %375, label %386, !dbg !1287

; <label>:375:                                    ; preds = %374
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1290, metadata !769) #10, !dbg !1295
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1298, !tbaa !776
  %377 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %376, i64 0, i32 5, !dbg !1298
  %378 = load i8*, i8** %377, align 8, !dbg !1298, !tbaa !1299
  %379 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %376, i64 0, i32 6, !dbg !1298
  %380 = load i8*, i8** %379, align 8, !dbg !1298, !tbaa !1301
  %381 = icmp ult i8* %378, %380, !dbg !1298
  br i1 %381, label %384, label %382, !dbg !1298, !prof !1302

; <label>:382:                                    ; preds = %375
  %383 = call i32 @__overflow(%struct._IO_FILE* %376, i32 92) #10, !dbg !1298
  br label %386, !dbg !1298

; <label>:384:                                    ; preds = %375
  %385 = getelementptr inbounds i8, i8* %378, i64 1, !dbg !1298
  store i8* %385, i8** %377, align 8, !dbg !1298, !tbaa !1299
  store i8 92, i8* %378, align 1, !dbg !1298, !tbaa !1038
  br label %386, !dbg !1298

; <label>:386:                                    ; preds = %384, %382, %374
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !181, metadata !769) #10, !dbg !1240
  call fastcc void @print_filename(i8* %325, i1 zeroext %369) #10, !dbg !1303
  %387 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1304
  %388 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %387) #10, !dbg !1304
  br label %465, !dbg !1305

; <label>:389:                                    ; preds = %368
  %390 = load i1, i1* @ignore_missing, align 1
  %391 = xor i1 %390, true, !dbg !1306
  %392 = load i8, i8* %6, align 1, !dbg !1307
  %393 = icmp eq i8 %392, 0, !dbg !1307
  %394 = or i1 %393, %391, !dbg !1306
  br i1 %394, label %395, label %465, !dbg !1306

; <label>:395:                                    ; preds = %389
  %396 = load i1, i1* @digest_hex_bytes, align 8
  %397 = select i1 %396, i64 16, i64 0, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %397, i64 0, metadata !194, metadata !769) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !198, metadata !769) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !198, metadata !769) #10, !dbg !1310
  br i1 %396, label %398, label %434, !dbg !1311

; <label>:398:                                    ; preds = %395
  %399 = tail call i32** @__ctype_tolower_loc() #17, !dbg !1312
  %400 = load i32*, i32** %399, align 8, !tbaa !776
  br label %401, !dbg !1311

; <label>:401:                                    ; preds = %431, %398
  %402 = phi i64 [ 0, %398 ], [ %432, %431 ]
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !198, metadata !769) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !184, metadata !769) #10, !dbg !1243
  %403 = shl i64 %402, 1, !dbg !1312
  %404 = getelementptr inbounds i8, i8* %324, i64 %403, !dbg !1312
  %405 = load i8, i8* %404, align 1, !dbg !1312, !tbaa !1038
  %406 = zext i8 %405 to i64, !dbg !1312
  %407 = getelementptr inbounds i32, i32* %400, i64 %406, !dbg !1312
  %408 = load i32, i32* %407, align 4, !dbg !1312, !tbaa !955
  call void @llvm.dbg.value(metadata i32 %408, i64 0, metadata !199, metadata !769) #10, !dbg !1314
  %409 = getelementptr inbounds i8, i8* %107, i64 %402, !dbg !1315
  %410 = load i8, i8* %409, align 1, !dbg !1315, !tbaa !1038
  %411 = zext i8 %410 to i32, !dbg !1315
  %412 = lshr i32 %411, 4, !dbg !1316
  %413 = zext i32 %412 to i64, !dbg !1317
  %414 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %413, !dbg !1317
  %415 = load i8, i8* %414, align 1, !dbg !1317, !tbaa !1038
  %416 = sext i8 %415 to i32, !dbg !1317
  %417 = icmp eq i32 %408, %416, !dbg !1318
  br i1 %417, label %418, label %434, !dbg !1319

; <label>:418:                                    ; preds = %401
  %419 = or i64 %403, 1, !dbg !1320
  %420 = getelementptr inbounds i8, i8* %324, i64 %419, !dbg !1320
  %421 = load i8, i8* %420, align 1, !dbg !1320, !tbaa !1038
  %422 = zext i8 %421 to i64, !dbg !1320
  %423 = getelementptr inbounds i32, i32* %400, i64 %422, !dbg !1320
  %424 = load i32, i32* %423, align 4, !dbg !1320, !tbaa !955
  call void @llvm.dbg.value(metadata i32 %424, i64 0, metadata !205, metadata !769) #10, !dbg !1322
  %425 = and i32 %411, 15, !dbg !1323
  %426 = zext i32 %425 to i64, !dbg !1324
  %427 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %426, !dbg !1324
  %428 = load i8, i8* %427, align 1, !dbg !1324, !tbaa !1038
  %429 = sext i8 %428 to i32, !dbg !1325
  %430 = icmp eq i32 %424, %429, !dbg !1326
  br i1 %430, label %431, label %434, !dbg !1327

; <label>:431:                                    ; preds = %418
  %432 = add nuw nsw i64 %402, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %432, i64 0, metadata !198, metadata !769) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %432, i64 0, metadata !198, metadata !769) #10, !dbg !1310
  %433 = icmp ult i64 %432, %397, !dbg !1329
  br i1 %433, label %401, label %434, !dbg !1311, !llvm.loop !1330

; <label>:434:                                    ; preds = %431, %418, %401, %395
  %435 = phi i64 [ 0, %395 ], [ %432, %431 ], [ %402, %401 ], [ %402, %418 ]
  %436 = icmp ne i64 %435, %397, !dbg !1333
  %437 = add i64 %141, 1, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %437, i64 0, metadata !170, metadata !769) #10, !dbg !974
  %438 = select i1 %436, i8 %137, i8 1, !dbg !1336
  %439 = select i1 %436, i64 %437, i64 %141, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %439, i64 0, metadata !170, metadata !769) #10, !dbg !974
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !173, metadata !769) #10, !dbg !977
  %440 = load i1, i1* @status_only, align 1
  br i1 %440, label %465, label %441, !dbg !1337

; <label>:441:                                    ; preds = %434
  br i1 %436, label %444, label %442, !dbg !1338

; <label>:442:                                    ; preds = %441
  %443 = load i1, i1* @quiet, align 1
  br i1 %443, label %465, label %444, !dbg !1342

; <label>:444:                                    ; preds = %442, %441
  br i1 %369, label %445, label %456, !dbg !1343

; <label>:445:                                    ; preds = %444
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1290, metadata !769) #10, !dbg !1345
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1348, !tbaa !776
  %447 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %446, i64 0, i32 5, !dbg !1348
  %448 = load i8*, i8** %447, align 8, !dbg !1348, !tbaa !1299
  %449 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %446, i64 0, i32 6, !dbg !1348
  %450 = load i8*, i8** %449, align 8, !dbg !1348, !tbaa !1301
  %451 = icmp ult i8* %448, %450, !dbg !1348
  br i1 %451, label %454, label %452, !dbg !1348, !prof !1302

; <label>:452:                                    ; preds = %445
  %453 = call i32 @__overflow(%struct._IO_FILE* %446, i32 92) #10, !dbg !1348
  br label %456, !dbg !1348

; <label>:454:                                    ; preds = %445
  %455 = getelementptr inbounds i8, i8* %448, i64 1, !dbg !1348
  store i8* %455, i8** %447, align 8, !dbg !1348, !tbaa !1299
  store i8 92, i8* %448, align 1, !dbg !1348, !tbaa !1038
  br label %456, !dbg !1348

; <label>:456:                                    ; preds = %454, %452, %444
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !181, metadata !769) #10, !dbg !1240
  call fastcc void @print_filename(i8* %325, i1 zeroext %369) #10, !dbg !1349
  br i1 %436, label %457, label %460, !dbg !1350

; <label>:457:                                    ; preds = %456
  %458 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i32 5) #10, !dbg !1351
  %459 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %458) #10, !dbg !1351
  br label %465, !dbg !1351

; <label>:460:                                    ; preds = %456
  %461 = load i1, i1* @quiet, align 1
  br i1 %461, label %465, label %462, !dbg !1353

; <label>:462:                                    ; preds = %460
  %463 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32 5) #10, !dbg !1354
  %464 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %463) #10, !dbg !1354
  br label %465, !dbg !1354

; <label>:465:                                    ; preds = %462, %460, %457, %442, %434, %389, %386, %371
  %466 = phi i8 [ %137, %371 ], [ %137, %386 ], [ %137, %389 ], [ %137, %457 ], [ 1, %462 ], [ 1, %460 ], [ %438, %434 ], [ 1, %442 ]
  %467 = phi i64 [ %372, %371 ], [ %372, %386 ], [ %140, %389 ], [ %140, %457 ], [ %140, %462 ], [ %140, %460 ], [ %140, %434 ], [ %140, %442 ]
  %468 = phi i64 [ %141, %371 ], [ %141, %386 ], [ %141, %389 ], [ %437, %457 ], [ %141, %462 ], [ %141, %460 ], [ %439, %434 ], [ %141, %442 ]
  call void @llvm.dbg.value(metadata i64 %468, i64 0, metadata !170, metadata !769) #10, !dbg !974
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !171, metadata !769) #10, !dbg !975
  call void @llvm.dbg.value(metadata i8 %466, i64 0, metadata !173, metadata !769) #10, !dbg !977
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !192, metadata !769) #10, !dbg !1278
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #10, !dbg !1356
  br label %469

; <label>:469:                                    ; preds = %465, %361, %152
  %470 = phi i8 [ %466, %465 ], [ %137, %361 ], [ %137, %152 ]
  %471 = phi i8 [ 1, %465 ], [ %139, %361 ], [ %139, %152 ]
  %472 = phi i64 [ %467, %465 ], [ %140, %361 ], [ %140, %152 ]
  %473 = phi i64 [ %468, %465 ], [ %141, %361 ], [ %141, %152 ]
  %474 = phi i64 [ %142, %465 ], [ %362, %361 ], [ %142, %152 ]
  %475 = phi i64 [ %143, %465 ], [ %356, %361 ], [ %143, %152 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !1357, metadata !769) #10, !dbg !1362
  %476 = load i32, i32* %135, align 8, !dbg !1364, !tbaa !1365
  %477 = and i32 %476, 48, !dbg !1366
  %478 = icmp eq i32 %477, 0, !dbg !1366
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !1367, metadata !769) #10, !dbg !1370
  br i1 %478, label %136, label %479, !dbg !1366, !llvm.loop !1011

; <label>:479:                                    ; preds = %469, %149
  %480 = phi i64 [ %475, %469 ], [ %143, %149 ]
  %481 = phi i64 [ %474, %469 ], [ %142, %149 ]
  %482 = phi i64 [ %473, %469 ], [ %141, %149 ]
  %483 = phi i64 [ %472, %469 ], [ %140, %149 ]
  %484 = phi i8 [ %471, %469 ], [ %139, %149 ]
  %485 = phi i8 [ %470, %469 ], [ %137, %149 ]
  %486 = load i8*, i8** %4, align 8, !dbg !1372, !tbaa !776
  call void @llvm.dbg.value(metadata i8* %486, i64 0, metadata !178, metadata !769) #10, !dbg !1004
  call void @free(i8* %486) #10, !dbg !1373
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !1367, metadata !769) #10, !dbg !1374
  %487 = load i32, i32* %135, align 8, !dbg !1377, !tbaa !1365
  %488 = and i32 %487, 32, !dbg !1377
  %489 = icmp eq i32 %488, 0, !dbg !1378
  br i1 %489, label %493, label %490, !dbg !1379

; <label>:490:                                    ; preds = %479
  %491 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32 5) #10, !dbg !1380
  %492 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1382
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %491, i8* %492) #10, !dbg !1383
  br label %542, !dbg !1384

; <label>:493:                                    ; preds = %479
  br i1 %121, label %501, label %494, !dbg !1385

; <label>:494:                                    ; preds = %493
  %495 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %133) #10, !dbg !1387
  %496 = icmp eq i32 %495, 0, !dbg !1388
  br i1 %496, label %501, label %497, !dbg !1389

; <label>:497:                                    ; preds = %494
  %498 = tail call i32* @__errno_location() #17, !dbg !1390
  %499 = load i32, i32* %498, align 4, !dbg !1390, !tbaa !955
  %500 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1392
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %499, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %500) #10, !dbg !1393
  br label %542, !dbg !1394

; <label>:501:                                    ; preds = %494, %493
  %502 = and i8 %484, 1, !dbg !1395
  %503 = icmp eq i8 %502, 0, !dbg !1395
  br i1 %503, label %528, label %504, !dbg !1397

; <label>:504:                                    ; preds = %501
  %505 = load i1, i1* @status_only, align 1
  br i1 %505, label %506, label %508, !dbg !1398

; <label>:506:                                    ; preds = %504
  %507 = and i8 %485, 1, !dbg !1400
  br label %531, !dbg !1398

; <label>:508:                                    ; preds = %504
  %509 = icmp eq i64 %480, 0, !dbg !1401
  br i1 %509, label %512, label %510, !dbg !1405

; <label>:510:                                    ; preds = %508
  %511 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i64 0, i64 0), i64 %480, i32 5) #10, !dbg !1406
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %511, i64 %480) #10, !dbg !1407
  br label %512, !dbg !1407

; <label>:512:                                    ; preds = %510, %508
  %513 = icmp eq i64 %483, 0, !dbg !1408
  br i1 %513, label %516, label %514, !dbg !1410

; <label>:514:                                    ; preds = %512
  %515 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 %483, i32 5) #10, !dbg !1411
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %515, i64 %483) #10, !dbg !1412
  br label %516, !dbg !1412

; <label>:516:                                    ; preds = %514, %512
  %517 = icmp eq i64 %482, 0, !dbg !1413
  br i1 %517, label %520, label %518, !dbg !1415

; <label>:518:                                    ; preds = %516
  %519 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.76, i64 0, i64 0), i64 %482, i32 5) #10, !dbg !1416
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %519, i64 %482) #10, !dbg !1417
  br label %520, !dbg !1417

; <label>:520:                                    ; preds = %518, %516
  %521 = load i1, i1* @ignore_missing, align 1
  %522 = and i8 %485, 1, !dbg !1418
  %523 = icmp eq i8 %522, 0, !dbg !1418
  %524 = and i1 %523, %521, !dbg !1420
  br i1 %524, label %525, label %531, !dbg !1420

; <label>:525:                                    ; preds = %520
  %526 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i64 0, i64 0), i32 5) #10, !dbg !1421
  %527 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1422
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %526, i8* %527) #10, !dbg !1423
  br label %542, !dbg !1424

; <label>:528:                                    ; preds = %501
  %529 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.70, i64 0, i64 0), i32 5) #10, !dbg !1425
  %530 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1427
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %529, i8* %530, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1428
  br label %542

; <label>:531:                                    ; preds = %520, %506
  %532 = phi i8 [ %507, %506 ], [ %522, %520 ], !dbg !1400
  %533 = icmp ne i8 %532, 0, !dbg !1400
  %534 = or i64 %483, %482, !dbg !1424
  %535 = icmp eq i64 %534, 0, !dbg !1424
  %536 = and i1 %535, %533, !dbg !1424
  br i1 %536, label %537, label %542, !dbg !1424

; <label>:537:                                    ; preds = %531
  %538 = load i1, i1* @strict, align 1
  %539 = icmp eq i64 %481, 0, !dbg !1429
  %540 = xor i1 %538, true, !dbg !1430
  %541 = or i1 %539, %540, !dbg !1430
  br label %542, !dbg !1430

; <label>:542:                                    ; preds = %128, %490, %497, %525, %528, %531, %537
  %543 = phi i1 [ false, %490 ], [ false, %497 ], [ false, %128 ], [ false, %531 ], [ false, %528 ], [ %541, %537 ], [ false, %525 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #10, !dbg !1431
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #10, !dbg !1431
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %102) #10, !dbg !1431
  %544 = zext i1 %543 to i8, !dbg !1432
  %545 = and i8 %117, %544, !dbg !1433
  call void @llvm.dbg.value(metadata i8 %545, i64 0, metadata !824, metadata !769), !dbg !867
  br label %637, !dbg !1434

; <label>:546:                                    ; preds = %115
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !837, metadata !769), !dbg !1435
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #10, !dbg !1436
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !837, metadata !769), !dbg !1435
  %547 = call fastcc zeroext i1 @digest_file(i8* %118, i8* %14, i8* nonnull %8), !dbg !1437
  br i1 %547, label %548, label %635, !dbg !1438

; <label>:548:                                    ; preds = %546
  %549 = call i8* @strchr(i8* %118, i32 92) #14, !dbg !1439
  %550 = icmp eq i8* %549, null, !dbg !1439
  br i1 %550, label %551, label %554, !dbg !1440

; <label>:551:                                    ; preds = %548
  %552 = call i8* @strchr(i8* %118, i32 10) #14, !dbg !1441
  %553 = icmp ne i8* %552, null, !dbg !1440
  br label %554, !dbg !1440

; <label>:554:                                    ; preds = %548, %551
  %555 = phi i1 [ true, %548 ], [ %553, %551 ]
  br i1 %45, label %556, label %575, !dbg !1442

; <label>:556:                                    ; preds = %554
  br i1 %555, label %557, label %568, !dbg !1443

; <label>:557:                                    ; preds = %556
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1290, metadata !769) #10, !dbg !1446
  %558 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1449, !tbaa !776
  %559 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %558, i64 0, i32 5, !dbg !1449
  %560 = load i8*, i8** %559, align 8, !dbg !1449, !tbaa !1299
  %561 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %558, i64 0, i32 6, !dbg !1449
  %562 = load i8*, i8** %561, align 8, !dbg !1449, !tbaa !1301
  %563 = icmp ult i8* %560, %562, !dbg !1449
  br i1 %563, label %566, label %564, !dbg !1449, !prof !1302

; <label>:564:                                    ; preds = %557
  %565 = call i32 @__overflow(%struct._IO_FILE* %558, i32 92) #10, !dbg !1449
  br label %568, !dbg !1449

; <label>:566:                                    ; preds = %557
  %567 = getelementptr inbounds i8, i8* %560, i64 1, !dbg !1449
  store i8* %567, i8** %559, align 8, !dbg !1449, !tbaa !1299
  store i8 92, i8* %560, align 1, !dbg !1449, !tbaa !1038
  br label %568, !dbg !1449

; <label>:568:                                    ; preds = %566, %564, %556
  %569 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1450, !tbaa !776
  %570 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %569) #10, !dbg !1450
  %571 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1451, !tbaa !776
  %572 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %struct._IO_FILE* %571) #10, !dbg !1451
  call fastcc void @print_filename(i8* %118, i1 zeroext %555), !dbg !1452
  %573 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1453, !tbaa !776
  %574 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), %struct._IO_FILE* %573) #10, !dbg !1453
  br label %587, !dbg !1454

; <label>:575:                                    ; preds = %554
  br i1 %555, label %576, label %587, !dbg !1456

; <label>:576:                                    ; preds = %575
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1290, metadata !769) #10, !dbg !1457
  %577 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1459, !tbaa !776
  %578 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %577, i64 0, i32 5, !dbg !1459
  %579 = load i8*, i8** %578, align 8, !dbg !1459, !tbaa !1299
  %580 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %577, i64 0, i32 6, !dbg !1459
  %581 = load i8*, i8** %580, align 8, !dbg !1459, !tbaa !1301
  %582 = icmp ult i8* %579, %581, !dbg !1459
  br i1 %582, label %585, label %583, !dbg !1459, !prof !1302

; <label>:583:                                    ; preds = %576
  %584 = call i32 @__overflow(%struct._IO_FILE* %577, i32 92) #10, !dbg !1459
  br label %587, !dbg !1459

; <label>:585:                                    ; preds = %576
  %586 = getelementptr inbounds i8, i8* %579, i64 1, !dbg !1459
  store i8* %586, i8** %578, align 8, !dbg !1459, !tbaa !1299
  store i8 92, i8* %579, align 1, !dbg !1459, !tbaa !1038
  br label %587, !dbg !1459

; <label>:587:                                    ; preds = %585, %583, %568, %575
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !841, metadata !769), !dbg !1460
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !841, metadata !769), !dbg !1460
  %588 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %588, label %589, label %600, !dbg !1461

; <label>:589:                                    ; preds = %587
  br label %590, !dbg !1463

; <label>:590:                                    ; preds = %589, %590
  %591 = phi i64 [ %596, %590 ], [ 0, %589 ]
  call void @llvm.dbg.value(metadata i64 %591, i64 0, metadata !841, metadata !769), !dbg !1460
  %592 = getelementptr inbounds i8, i8* %14, i64 %591, !dbg !1463
  %593 = load i8, i8* %592, align 1, !dbg !1463, !tbaa !1038
  %594 = zext i8 %593 to i32, !dbg !1463
  %595 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %594) #10, !dbg !1463
  %596 = add i64 %591, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !841, metadata !769), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !841, metadata !769), !dbg !1460
  %597 = load i1, i1* @digest_hex_bytes, align 8
  %598 = select i1 %597, i64 16, i64 0, !dbg !1466
  %599 = icmp ult i64 %596, %598, !dbg !1467
  br i1 %599, label %590, label %600, !dbg !1461, !llvm.loop !1468

; <label>:600:                                    ; preds = %590, %587
  br i1 %45, label %624, label %601, !dbg !1470

; <label>:601:                                    ; preds = %600
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1290, metadata !769) #10, !dbg !1471
  %602 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1475, !tbaa !776
  %603 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %602, i64 0, i32 5, !dbg !1475
  %604 = load i8*, i8** %603, align 8, !dbg !1475, !tbaa !1299
  %605 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %602, i64 0, i32 6, !dbg !1475
  %606 = load i8*, i8** %605, align 8, !dbg !1475, !tbaa !1301
  %607 = icmp ult i8* %604, %606, !dbg !1475
  br i1 %607, label %610, label %608, !dbg !1475, !prof !1302

; <label>:608:                                    ; preds = %601
  %609 = call i32 @__overflow(%struct._IO_FILE* %602, i32 32) #10, !dbg !1475
  br label %612, !dbg !1475

; <label>:610:                                    ; preds = %601
  %611 = getelementptr inbounds i8, i8* %604, i64 1, !dbg !1475
  store i8* %611, i8** %603, align 8, !dbg !1475, !tbaa !1299
  store i8 32, i8* %604, align 1, !dbg !1475, !tbaa !1038
  br label %612, !dbg !1475

; <label>:612:                                    ; preds = %608, %610
  call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !1290, metadata !769) #10, !dbg !1476
  %613 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1478, !tbaa !776
  %614 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %613, i64 0, i32 5, !dbg !1478
  %615 = load i8*, i8** %614, align 8, !dbg !1478, !tbaa !1299
  %616 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %613, i64 0, i32 6, !dbg !1478
  %617 = load i8*, i8** %616, align 8, !dbg !1478, !tbaa !1301
  %618 = icmp ult i8* %615, %617, !dbg !1478
  br i1 %618, label %621, label %619, !dbg !1478, !prof !1302

; <label>:619:                                    ; preds = %612
  %620 = call i32 @__overflow(%struct._IO_FILE* %613, i32 %110) #10, !dbg !1478
  br label %623, !dbg !1478

; <label>:621:                                    ; preds = %612
  %622 = getelementptr inbounds i8, i8* %615, i64 1, !dbg !1478
  store i8* %622, i8** %614, align 8, !dbg !1478, !tbaa !1299
  store i8 %111, i8* %615, align 1, !dbg !1478, !tbaa !1038
  br label %623, !dbg !1478

; <label>:623:                                    ; preds = %619, %621
  call fastcc void @print_filename(i8* %118, i1 zeroext %555), !dbg !1479
  br label %624, !dbg !1480

; <label>:624:                                    ; preds = %623, %600
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1290, metadata !769) #10, !dbg !1481
  %625 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1483, !tbaa !776
  %626 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %625, i64 0, i32 5, !dbg !1483
  %627 = load i8*, i8** %626, align 8, !dbg !1483, !tbaa !1299
  %628 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %625, i64 0, i32 6, !dbg !1483
  %629 = load i8*, i8** %628, align 8, !dbg !1483, !tbaa !1301
  %630 = icmp ult i8* %627, %629, !dbg !1483
  br i1 %630, label %633, label %631, !dbg !1483, !prof !1302

; <label>:631:                                    ; preds = %624
  %632 = call i32 @__overflow(%struct._IO_FILE* %625, i32 10) #10, !dbg !1483
  br label %635, !dbg !1483

; <label>:633:                                    ; preds = %624
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1483
  store i8* %634, i8** %626, align 8, !dbg !1483, !tbaa !1299
  store i8 10, i8* %627, align 1, !dbg !1483, !tbaa !1038
  br label %635, !dbg !1483

; <label>:635:                                    ; preds = %633, %631, %546
  %636 = phi i8 [ 0, %546 ], [ %117, %631 ], [ %117, %633 ]
  call void @llvm.dbg.value(metadata i8 %636, i64 0, metadata !824, metadata !769), !dbg !867
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !837, metadata !769), !dbg !1435
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #10, !dbg !1484
  br label %637

; <label>:637:                                    ; preds = %635, %542
  %638 = phi i8 [ %545, %542 ], [ %636, %635 ]
  call void @llvm.dbg.value(metadata i8 %638, i64 0, metadata !824, metadata !769), !dbg !867
  %639 = getelementptr inbounds i8*, i8** %116, i64 1, !dbg !1485
  call void @llvm.dbg.value(metadata i8** %639, i64 0, metadata !829, metadata !769), !dbg !963
  call void @llvm.dbg.value(metadata i8** %639, i64 0, metadata !829, metadata !769), !dbg !963
  call void @llvm.dbg.value(metadata i8 %638, i64 0, metadata !824, metadata !769), !dbg !867
  %640 = icmp ult i8** %639, %97, !dbg !964
  br i1 %640, label %115, label %112, !dbg !965, !llvm.loop !1486

; <label>:641:                                    ; preds = %112
  %642 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1488, !tbaa !776
  %643 = call i32 @rpl_fclose(%struct._IO_FILE* %642) #10, !dbg !1489
  %644 = icmp eq i32 %643, -1, !dbg !1490
  br i1 %644, label %645, label %649, !dbg !1491

; <label>:645:                                    ; preds = %641
  %646 = tail call i32* @__errno_location() #17, !dbg !1492
  %647 = load i32, i32* %646, align 4, !dbg !1492, !tbaa !955
  %648 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !1492
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %647, i8* %648) #10, !dbg !1492
  unreachable, !dbg !1492

; <label>:649:                                    ; preds = %641, %112
  %650 = and i8 %113, 1, !dbg !1493
  %651 = xor i8 %650, 1, !dbg !1493
  %652 = zext i8 %651 to i32, !dbg !1493
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #10, !dbg !1494
  ret i32 %652, !dbg !1494

; <label>:653:                                    ; preds = %343
  %654 = getelementptr inbounds i8, i8* %336, i64 2, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !1250, metadata !769) #10, !dbg !1253
  %655 = load i8, i8* %654, align 1, !dbg !1256, !tbaa !1038
  %656 = zext i8 %655 to i64, !dbg !1256
  %657 = getelementptr inbounds i16, i16* %333, i64 %656, !dbg !1256
  %658 = load i16, i16* %657, align 2, !dbg !1256, !tbaa !1260
  %659 = and i16 %658, 4096, !dbg !1256
  %660 = icmp eq i16 %659, 0, !dbg !1256
  br i1 %660, label %355, label %661, !dbg !1262

; <label>:661:                                    ; preds = %653
  %662 = getelementptr inbounds i8, i8* %336, i64 3, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !1250, metadata !769) #10, !dbg !1253
  %663 = load i8, i8* %662, align 1, !dbg !1256, !tbaa !1038
  %664 = zext i8 %663 to i64, !dbg !1256
  %665 = getelementptr inbounds i16, i16* %333, i64 %664, !dbg !1256
  %666 = load i16, i16* %665, align 2, !dbg !1256, !tbaa !1260
  %667 = and i16 %666, 4096, !dbg !1256
  %668 = icmp eq i16 %667, 0, !dbg !1256
  br i1 %668, label %355, label %669, !dbg !1262

; <label>:669:                                    ; preds = %661
  %670 = getelementptr inbounds i8, i8* %336, i64 4, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  %671 = add nsw i32 %335, 4, !dbg !1495
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1244, metadata !769) #10, !dbg !1251
  %672 = icmp ult i32 %671, 32, !dbg !1496
  br i1 %672, label %334, label %351, !dbg !1254, !llvm.loop !1497
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @digest_file(i8*, i8*, i8* nocapture) unnamed_addr #6 !dbg !1500 {
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1506, metadata !769), !dbg !1512
  %4 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !1513
  %5 = icmp eq i32 %4, 0, !dbg !1513
  store i8 0, i8* %2, align 1, !dbg !1514, !tbaa !1515
  br i1 %5, label %6, label %8, !dbg !1517

; <label>:6:                                      ; preds = %3
  store i1 true, i1* @have_read_stdin, align 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1518, !tbaa !776
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, i64 0, metadata !1509, metadata !769), !dbg !1521
  br label %21, !dbg !1522

; <label>:8:                                      ; preds = %3
  %9 = tail call %struct._IO_FILE* @fopen_safer(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !1523
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, i64 0, metadata !1509, metadata !769), !dbg !1521
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !1525
  br i1 %10, label %11, label %21, !dbg !1527

; <label>:11:                                     ; preds = %8
  %12 = load i1, i1* @ignore_missing, align 1
  %13 = tail call i32* @__errno_location() #17, !dbg !1528
  br i1 %12, label %14, label %18, !dbg !1531

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %13, align 4, !dbg !1528, !tbaa !955
  %16 = icmp eq i32 %15, 2, !dbg !1532
  br i1 %16, label %17, label %18, !dbg !1533

; <label>:17:                                     ; preds = %14
  store i8 1, i8* %2, align 1, !dbg !1534, !tbaa !1515
  br label %41, !dbg !1536

; <label>:18:                                     ; preds = %11, %14
  %19 = load i32, i32* %13, align 4, !dbg !1537, !tbaa !955
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1538
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %20) #10, !dbg !1539
  br label %41, !dbg !1540

; <label>:21:                                     ; preds = %8, %6
  %22 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, i64 0, metadata !1509, metadata !769), !dbg !1521
  tail call void @fadvise(%struct._IO_FILE* %22, i32 2) #10, !dbg !1541
  %23 = tail call i32 @md5_stream(%struct._IO_FILE* %22, i8* %1) #10, !dbg !1542
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !1510, metadata !769), !dbg !1543
  %24 = icmp eq i32 %23, 0, !dbg !1544
  br i1 %24, label %33, label %25, !dbg !1546

; <label>:25:                                     ; preds = %21
  %26 = tail call i32* @__errno_location() #17, !dbg !1547
  %27 = load i32, i32* %26, align 4, !dbg !1547, !tbaa !955
  %28 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1549
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %28) #10, !dbg !1550
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1551, !tbaa !776
  %30 = icmp eq %struct._IO_FILE* %22, %29, !dbg !1553
  br i1 %30, label %41, label %31, !dbg !1554

; <label>:31:                                     ; preds = %25
  %32 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #10, !dbg !1555
  br label %41, !dbg !1555

; <label>:33:                                     ; preds = %21
  br i1 %5, label %41, label %34, !dbg !1556

; <label>:34:                                     ; preds = %33
  %35 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #10, !dbg !1558
  %36 = icmp eq i32 %35, 0, !dbg !1559
  br i1 %36, label %41, label %37, !dbg !1560

; <label>:37:                                     ; preds = %34
  %38 = tail call i32* @__errno_location() #17, !dbg !1561
  %39 = load i32, i32* %38, align 4, !dbg !1561, !tbaa !955
  %40 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1563
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %40) #10, !dbg !1564
  br label %41, !dbg !1565

; <label>:41:                                     ; preds = %33, %34, %31, %25, %37, %18, %17
  %42 = phi i1 [ false, %37 ], [ true, %17 ], [ false, %18 ], [ false, %25 ], [ false, %31 ], [ true, %34 ], [ true, %33 ]
  ret i1 %42, !dbg !1566
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8*, i1 zeroext) unnamed_addr #6 !dbg !1567 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1571, metadata !769), !dbg !1573
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1572, metadata !769), !dbg !1574
  br i1 %1, label %6, label %3, !dbg !1575

; <label>:3:                                      ; preds = %2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1576, !tbaa !776
  %5 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %4) #10, !dbg !1576
  br label %36, !dbg !1579

; <label>:6:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1571, metadata !769), !dbg !1573
  %7 = load i8, i8* %0, align 1, !dbg !1580, !tbaa !1038
  %8 = icmp eq i8 %7, 0, !dbg !1581
  br i1 %8, label %36, label %9, !dbg !1581

; <label>:9:                                      ; preds = %6
  br label %10, !dbg !1582

; <label>:10:                                     ; preds = %9, %32
  %11 = phi i8 [ %34, %32 ], [ %7, %9 ]
  %12 = phi i8* [ %33, %32 ], [ %0, %9 ]
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1571, metadata !769), !dbg !1573
  %13 = sext i8 %11 to i32, !dbg !1582
  switch i32 %13, label %20 [
    i32 10, label %14
    i32 92, label %17
  ], !dbg !1584

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1585, !tbaa !776
  %16 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), %struct._IO_FILE* %15) #10, !dbg !1585
  br label %32, !dbg !1587

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1588, !tbaa !776
  %19 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), %struct._IO_FILE* %18) #10, !dbg !1588
  br label %32, !dbg !1589

; <label>:20:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1290, metadata !769) #10, !dbg !1590
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1592, !tbaa !776
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 5, !dbg !1592
  %23 = load i8*, i8** %22, align 8, !dbg !1592, !tbaa !1299
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 6, !dbg !1592
  %25 = load i8*, i8** %24, align 8, !dbg !1592, !tbaa !1301
  %26 = icmp ult i8* %23, %25, !dbg !1592
  br i1 %26, label %30, label %27, !dbg !1592, !prof !1302

; <label>:27:                                     ; preds = %20
  %28 = and i32 %13, 255, !dbg !1592
  %29 = tail call i32 @__overflow(%struct._IO_FILE* %21, i32 %28) #10, !dbg !1592
  br label %32, !dbg !1592

; <label>:30:                                     ; preds = %20
  %31 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1592
  store i8* %31, i8** %22, align 8, !dbg !1592, !tbaa !1299
  store i8 %11, i8* %23, align 1, !dbg !1592, !tbaa !1038
  br label %32, !dbg !1592

; <label>:32:                                     ; preds = %30, %27, %17, %14
  %33 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1593
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1571, metadata !769), !dbg !1573
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1571, metadata !769), !dbg !1573
  %34 = load i8, i8* %33, align 1, !dbg !1580, !tbaa !1038
  %35 = icmp eq i8 %34, 0, !dbg !1581
  br i1 %35, label %36, label %10, !dbg !1581, !llvm.loop !1594

; <label>:36:                                     ; preds = %32, %6, %3
  ret void, !dbg !1596
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1597 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1599, metadata !769), !dbg !1600
  store i8* %0, i8** @file_name, align 8, !dbg !1601, !tbaa !776
  ret void, !dbg !1602
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1603 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1607, metadata !769), !dbg !1608
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1609, !tbaa !1515
  ret void, !dbg !1610
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1611 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1616, !tbaa !776
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1617
  %3 = icmp eq i32 %2, 0, !dbg !1618
  br i1 %3, label %21, label %4, !dbg !1619

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1620, !tbaa !1515, !range !1621
  %6 = icmp eq i8 %5, 0, !dbg !1620
  %7 = tail call i32* @__errno_location() #17, !dbg !1622
  br i1 %6, label %11, label %8, !dbg !1624

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1625, !tbaa !955
  %10 = icmp eq i32 %9, 32, !dbg !1626
  br i1 %10, label %21, label %11, !dbg !1627

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i32 5) #10, !dbg !1628
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1613, metadata !769), !dbg !1629
  %13 = load i8*, i8** @file_name, align 8, !dbg !1630, !tbaa !776
  %14 = icmp eq i8* %13, null, !dbg !1630
  %15 = load i32, i32* %7, align 4, !tbaa !955
  br i1 %14, label %18, label %16, !dbg !1631

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1632
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.39, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1633
  br label %19, !dbg !1633

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.40, i64 0, i64 0), i8* %12) #10, !dbg !1634
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1635, !tbaa !955
  tail call void @_exit(i32 %20) #15, !dbg !1636
  unreachable, !dbg !1636

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1637, !tbaa !776
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1639
  %24 = icmp eq i32 %23, 0, !dbg !1640
  br i1 %24, label %27, label %25, !dbg !1641

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1642, !tbaa !955
  tail call void @_exit(i32 %26) #15, !dbg !1643
  unreachable, !dbg !1643

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1644
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @md5_init_ctx(%struct.md5_ctx* nocapture) local_unnamed_addr #6 !dbg !1645 {
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, i64 0, metadata !1669, metadata !769), !dbg !1670
  %2 = bitcast %struct.md5_ctx* %0 to <4 x i32>*, !dbg !1671
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !1671, !tbaa !955
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1, !dbg !1672
  store i32 0, i32* %3, align 4, !dbg !1673, !tbaa !955
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !1674
  store i32 0, i32* %4, align 4, !dbg !1675, !tbaa !955
  %5 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !1676
  store i32 0, i32* %5, align 4, !dbg !1677, !tbaa !1678
  ret void, !dbg !1680
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @md5_read_ctx(%struct.md5_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 !dbg !1681 {
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, i64 0, metadata !1687, metadata !769), !dbg !1690
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1688, metadata !769), !dbg !1691
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1689, metadata !769), !dbg !1692
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !1693
  %4 = load i32, i32* %3, align 4, !dbg !1693, !tbaa !1694
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1695, metadata !769), !dbg !1701
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1700, metadata !769), !dbg !1703
  %5 = bitcast i8* %1 to i32*, !dbg !1704
  store i32 %4, i32* %5, align 1, !dbg !1704
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1705
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !1706
  %8 = load i32, i32* %7, align 4, !dbg !1706, !tbaa !1707
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1695, metadata !769), !dbg !1708
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1700, metadata !769), !dbg !1710
  %9 = bitcast i8* %6 to i32*, !dbg !1711
  store i32 %8, i32* %9, align 1, !dbg !1711
  %10 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1712
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !1713
  %12 = load i32, i32* %11, align 4, !dbg !1713, !tbaa !1714
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1695, metadata !769), !dbg !1715
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1700, metadata !769), !dbg !1717
  %13 = bitcast i8* %10 to i32*, !dbg !1718
  store i32 %12, i32* %13, align 1, !dbg !1718
  %14 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1719
  %15 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !1720
  %16 = load i32, i32* %15, align 4, !dbg !1720, !tbaa !1721
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1695, metadata !769), !dbg !1722
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1700, metadata !769), !dbg !1724
  %17 = bitcast i8* %14 to i32*, !dbg !1725
  store i32 %16, i32* %17, align 1, !dbg !1725
  ret i8* %1, !dbg !1726
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @md5_finish_ctx(%struct.md5_ctx*, i8* returned) local_unnamed_addr #6 !dbg !1727 {
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, i64 0, metadata !1731, metadata !769), !dbg !1735
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1732, metadata !769), !dbg !1736
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !1737
  %4 = load i32, i32* %3, align 4, !dbg !1737, !tbaa !1678
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1733, metadata !769), !dbg !1738
  %5 = icmp ult i32 %4, 56, !dbg !1739
  %6 = select i1 %5, i64 16, i64 32, !dbg !1740
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1734, metadata !769), !dbg !1741
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !1742
  %8 = load i32, i32* %7, align 4, !dbg !1743, !tbaa !955
  %9 = add i32 %8, %4, !dbg !1743
  store i32 %9, i32* %7, align 4, !dbg !1743, !tbaa !955
  %10 = icmp ult i32 %9, %4, !dbg !1744
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1
  br i1 %10, label %12, label %15, !dbg !1746

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %11, align 4, !dbg !1747, !tbaa !955
  %14 = add i32 %13, 1, !dbg !1747
  store i32 %14, i32* %11, align 4, !dbg !1747, !tbaa !955
  br label %15, !dbg !1747

; <label>:15:                                     ; preds = %2, %12
  %16 = shl i32 %9, 3, !dbg !1748
  %17 = add nsw i64 %6, -2, !dbg !1749
  %18 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %17, !dbg !1750
  store i32 %16, i32* %18, align 4, !dbg !1751, !tbaa !955
  %19 = load i32, i32* %11, align 4, !dbg !1752, !tbaa !955
  %20 = shl i32 %19, 3, !dbg !1752
  %21 = lshr i32 %9, 29, !dbg !1752
  %22 = or i32 %20, %21, !dbg !1752
  %23 = add nsw i64 %6, -1, !dbg !1753
  %24 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %23, !dbg !1754
  store i32 %22, i32* %24, align 4, !dbg !1755, !tbaa !955
  %25 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 0, !dbg !1756
  %26 = bitcast i32* %25 to i8*, !dbg !1756
  %27 = zext i32 %4 to i64, !dbg !1756
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !1756
  %29 = shl nsw i64 %17, 2, !dbg !1757
  %30 = sub nsw i64 %29, %27, !dbg !1758
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %30, i32 1, i1 false), !dbg !1759
  %31 = shl nuw nsw i64 %6, 2, !dbg !1760
  tail call void @md5_process_block(i8* %26, i64 %31, %struct.md5_ctx* nonnull %0) #10, !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, i64 0, metadata !1687, metadata !769), !dbg !1762
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1688, metadata !769), !dbg !1764
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1689, metadata !769), !dbg !1765
  %32 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !1766
  %33 = load i32, i32* %32, align 4, !dbg !1766, !tbaa !1694
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1695, metadata !769), !dbg !1767
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !1700, metadata !769), !dbg !1769
  %34 = bitcast i8* %1 to i32*, !dbg !1770
  store i32 %33, i32* %34, align 1, !dbg !1770
  %35 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1771
  %36 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !1772
  %37 = load i32, i32* %36, align 4, !dbg !1772, !tbaa !1707
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1695, metadata !769), !dbg !1773
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1700, metadata !769), !dbg !1775
  %38 = bitcast i8* %35 to i32*, !dbg !1776
  store i32 %37, i32* %38, align 1, !dbg !1776
  %39 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1777
  %40 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !1778
  %41 = load i32, i32* %40, align 4, !dbg !1778, !tbaa !1714
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1695, metadata !769), !dbg !1779
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !1700, metadata !769), !dbg !1781
  %42 = bitcast i8* %39 to i32*, !dbg !1782
  store i32 %41, i32* %42, align 1, !dbg !1782
  %43 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1783
  %44 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !1784
  %45 = load i32, i32* %44, align 4, !dbg !1784, !tbaa !1721
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1695, metadata !769), !dbg !1785
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !1700, metadata !769), !dbg !1787
  %46 = bitcast i8* %43 to i32*, !dbg !1788
  store i32 %45, i32* %46, align 1, !dbg !1788
  ret i8* %1, !dbg !1789
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @md5_process_block(i8* readonly, i64, %struct.md5_ctx* nocapture) local_unnamed_addr #6 !dbg !1790 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1794, metadata !769), !dbg !1816
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1795, metadata !769), !dbg !1817
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, i64 0, metadata !1796, metadata !769), !dbg !1818
  tail call void @llvm.dbg.declare(metadata [16 x i32]* undef, metadata !1797, metadata !769), !dbg !1819
  %4 = bitcast i8* %0 to i32*, !dbg !1820
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1799, metadata !769), !dbg !1821
  %5 = lshr i64 %1, 2, !dbg !1822
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1802, metadata !769), !dbg !1823
  %6 = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !1824
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1803, metadata !769), !dbg !1825
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 0, !dbg !1826
  %8 = load i32, i32* %7, align 4, !dbg !1826, !tbaa !1694
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1804, metadata !769), !dbg !1827
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 1, !dbg !1828
  %10 = load i32, i32* %9, align 4, !dbg !1828, !tbaa !1707
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1805, metadata !769), !dbg !1829
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 2, !dbg !1830
  %12 = load i32, i32* %11, align 4, !dbg !1830, !tbaa !1714
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1806, metadata !769), !dbg !1831
  %13 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 3, !dbg !1832
  %14 = load i32, i32* %13, align 4, !dbg !1832, !tbaa !1721
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1807, metadata !769), !dbg !1833
  %15 = trunc i64 %1 to i32, !dbg !1834
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1808, metadata !769), !dbg !1835
  %16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 0, !dbg !1836
  %17 = load i32, i32* %16, align 4, !dbg !1837, !tbaa !955
  %18 = add i32 %17, %15, !dbg !1837
  store i32 %18, i32* %16, align 4, !dbg !1837, !tbaa !955
  %19 = lshr i64 %1, 32, !dbg !1838
  %20 = icmp ult i32 %18, %15, !dbg !1839
  %21 = zext i1 %20 to i64, !dbg !1840
  %22 = add nuw nsw i64 %19, %21, !dbg !1841
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 1, !dbg !1842
  %24 = load i32, i32* %23, align 4, !dbg !1843, !tbaa !955
  %25 = zext i32 %24 to i64, !dbg !1843
  %26 = add nuw nsw i64 %22, %25, !dbg !1843
  %27 = trunc i64 %26 to i32, !dbg !1843
  store i32 %27, i32* %23, align 4, !dbg !1843, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1799, metadata !769), !dbg !1821
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1804, metadata !769), !dbg !1827
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1805, metadata !769), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1806, metadata !769), !dbg !1831
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1807, metadata !769), !dbg !1833
  %28 = icmp ugt i32* %6, %4, !dbg !1844
  br i1 %28, label %29, label %696, !dbg !1845

; <label>:29:                                     ; preds = %3
  br label %30, !dbg !1846

; <label>:30:                                     ; preds = %29, %30
  %31 = phi i32* [ %223, %30 ], [ %4, %29 ]
  %32 = phi i32 [ %690, %30 ], [ %8, %29 ]
  %33 = phi i32 [ %692, %30 ], [ %10, %29 ]
  %34 = phi i32 [ %693, %30 ], [ %12, %29 ]
  %35 = phi i32 [ %694, %30 ], [ %14, %29 ]
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !1812, metadata !769), !dbg !1849
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !1813, metadata !769), !dbg !1850
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !1814, metadata !769), !dbg !1851
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !1815, metadata !769), !dbg !1852
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !1807, metadata !769), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !1806, metadata !769), !dbg !1831
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !1805, metadata !769), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !1804, metadata !769), !dbg !1827
  tail call void @llvm.dbg.value(metadata i32* %31, i64 0, metadata !1799, metadata !769), !dbg !1821
  %36 = xor i32 %34, %35, !dbg !1846
  %37 = and i32 %33, %36, !dbg !1846
  %38 = xor i32 %37, %35, !dbg !1846
  %39 = load i32, i32* %31, align 4, !dbg !1846, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !1797, metadata !1853), !dbg !1819
  %40 = add i32 %32, -680876936, !dbg !1846
  %41 = add i32 %40, %38, !dbg !1846
  %42 = add i32 %41, %39, !dbg !1846
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1804, metadata !769), !dbg !1827
  %43 = getelementptr inbounds i32, i32* %31, i64 1, !dbg !1846
  tail call void @llvm.dbg.value(metadata i32* %43, i64 0, metadata !1799, metadata !769), !dbg !1821
  %44 = shl i32 %42, 7, !dbg !1846
  %45 = lshr i32 %42, 25, !dbg !1846
  %46 = or i32 %44, %45, !dbg !1846
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !1804, metadata !769), !dbg !1827
  %47 = add i32 %46, %33, !dbg !1846
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !1804, metadata !769), !dbg !1827
  %48 = xor i32 %33, %34, !dbg !1854
  %49 = and i32 %47, %48, !dbg !1854
  %50 = xor i32 %49, %34, !dbg !1854
  %51 = load i32, i32* %43, align 4, !dbg !1854, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1797, metadata !1856), !dbg !1819
  %52 = add i32 %35, -389564586, !dbg !1854
  %53 = add i32 %52, %51, !dbg !1854
  %54 = add i32 %53, %50, !dbg !1854
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !1807, metadata !769), !dbg !1833
  %55 = getelementptr inbounds i32, i32* %31, i64 2, !dbg !1854
  tail call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !1799, metadata !769), !dbg !1821
  %56 = shl i32 %54, 12, !dbg !1854
  %57 = lshr i32 %54, 20, !dbg !1854
  %58 = or i32 %56, %57, !dbg !1854
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !1807, metadata !769), !dbg !1833
  %59 = add i32 %58, %47, !dbg !1854
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !1807, metadata !769), !dbg !1833
  %60 = xor i32 %47, %33, !dbg !1857
  %61 = and i32 %59, %60, !dbg !1857
  %62 = xor i32 %61, %33, !dbg !1857
  %63 = load i32, i32* %55, align 4, !dbg !1857, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !1797, metadata !1859), !dbg !1819
  %64 = add i32 %34, 606105819, !dbg !1857
  %65 = add i32 %64, %63, !dbg !1857
  %66 = add i32 %65, %62, !dbg !1857
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !1806, metadata !769), !dbg !1831
  %67 = getelementptr inbounds i32, i32* %31, i64 3, !dbg !1857
  tail call void @llvm.dbg.value(metadata i32* %67, i64 0, metadata !1799, metadata !769), !dbg !1821
  %68 = shl i32 %66, 17, !dbg !1857
  %69 = lshr i32 %66, 15, !dbg !1857
  %70 = or i32 %68, %69, !dbg !1857
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !1806, metadata !769), !dbg !1831
  %71 = add i32 %70, %59, !dbg !1857
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !1806, metadata !769), !dbg !1831
  %72 = xor i32 %59, %47, !dbg !1860
  %73 = and i32 %71, %72, !dbg !1860
  %74 = xor i32 %73, %47, !dbg !1860
  %75 = load i32, i32* %67, align 4, !dbg !1860, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1797, metadata !1862), !dbg !1819
  %76 = add i32 %33, -1044525330, !dbg !1860
  %77 = add i32 %76, %75, !dbg !1860
  %78 = add i32 %77, %74, !dbg !1860
  tail call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !1805, metadata !769), !dbg !1829
  %79 = getelementptr inbounds i32, i32* %31, i64 4, !dbg !1860
  tail call void @llvm.dbg.value(metadata i32* %79, i64 0, metadata !1799, metadata !769), !dbg !1821
  %80 = shl i32 %78, 22, !dbg !1860
  %81 = lshr i32 %78, 10, !dbg !1860
  %82 = or i32 %80, %81, !dbg !1860
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !1805, metadata !769), !dbg !1829
  %83 = add i32 %82, %71, !dbg !1860
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !1805, metadata !769), !dbg !1829
  %84 = xor i32 %71, %59, !dbg !1863
  %85 = and i32 %83, %84, !dbg !1863
  %86 = xor i32 %85, %59, !dbg !1863
  %87 = load i32, i32* %79, align 4, !dbg !1863, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !1797, metadata !1865), !dbg !1819
  %88 = add i32 %87, -176418897, !dbg !1863
  %89 = add i32 %88, %47, !dbg !1863
  %90 = add i32 %89, %86, !dbg !1863
  tail call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !1804, metadata !769), !dbg !1827
  %91 = getelementptr inbounds i32, i32* %31, i64 5, !dbg !1863
  tail call void @llvm.dbg.value(metadata i32* %91, i64 0, metadata !1799, metadata !769), !dbg !1821
  %92 = shl i32 %90, 7, !dbg !1863
  %93 = lshr i32 %90, 25, !dbg !1863
  %94 = or i32 %92, %93, !dbg !1863
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !1804, metadata !769), !dbg !1827
  %95 = add i32 %94, %83, !dbg !1863
  tail call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1804, metadata !769), !dbg !1827
  %96 = xor i32 %83, %71, !dbg !1866
  %97 = and i32 %95, %96, !dbg !1866
  %98 = xor i32 %97, %71, !dbg !1866
  %99 = load i32, i32* %91, align 4, !dbg !1866, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !1797, metadata !1868), !dbg !1819
  %100 = add i32 %99, 1200080426, !dbg !1866
  %101 = add i32 %100, %59, !dbg !1866
  %102 = add i32 %101, %98, !dbg !1866
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !1807, metadata !769), !dbg !1833
  %103 = getelementptr inbounds i32, i32* %31, i64 6, !dbg !1866
  tail call void @llvm.dbg.value(metadata i32* %103, i64 0, metadata !1799, metadata !769), !dbg !1821
  %104 = shl i32 %102, 12, !dbg !1866
  %105 = lshr i32 %102, 20, !dbg !1866
  %106 = or i32 %104, %105, !dbg !1866
  tail call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !1807, metadata !769), !dbg !1833
  %107 = add i32 %106, %95, !dbg !1866
  tail call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !1807, metadata !769), !dbg !1833
  %108 = xor i32 %95, %83, !dbg !1869
  %109 = and i32 %107, %108, !dbg !1869
  %110 = xor i32 %109, %83, !dbg !1869
  %111 = load i32, i32* %103, align 4, !dbg !1869, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !1797, metadata !1871), !dbg !1819
  %112 = add i32 %111, -1473231341, !dbg !1869
  %113 = add i32 %112, %71, !dbg !1869
  %114 = add i32 %113, %110, !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !1806, metadata !769), !dbg !1831
  %115 = getelementptr inbounds i32, i32* %31, i64 7, !dbg !1869
  tail call void @llvm.dbg.value(metadata i32* %115, i64 0, metadata !1799, metadata !769), !dbg !1821
  %116 = shl i32 %114, 17, !dbg !1869
  %117 = lshr i32 %114, 15, !dbg !1869
  %118 = or i32 %116, %117, !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !1806, metadata !769), !dbg !1831
  %119 = add i32 %118, %107, !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 %119, i64 0, metadata !1806, metadata !769), !dbg !1831
  %120 = xor i32 %107, %95, !dbg !1872
  %121 = and i32 %119, %120, !dbg !1872
  %122 = xor i32 %121, %95, !dbg !1872
  %123 = load i32, i32* %115, align 4, !dbg !1872, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !1797, metadata !1874), !dbg !1819
  %124 = add i32 %123, -45705983, !dbg !1872
  %125 = add i32 %124, %83, !dbg !1872
  %126 = add i32 %125, %122, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !1805, metadata !769), !dbg !1829
  %127 = getelementptr inbounds i32, i32* %31, i64 8, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32* %127, i64 0, metadata !1799, metadata !769), !dbg !1821
  %128 = shl i32 %126, 22, !dbg !1872
  %129 = lshr i32 %126, 10, !dbg !1872
  %130 = or i32 %128, %129, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !1805, metadata !769), !dbg !1829
  %131 = add i32 %130, %119, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !1805, metadata !769), !dbg !1829
  %132 = xor i32 %119, %107, !dbg !1875
  %133 = and i32 %131, %132, !dbg !1875
  %134 = xor i32 %133, %107, !dbg !1875
  %135 = load i32, i32* %127, align 4, !dbg !1875, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !1797, metadata !1877), !dbg !1819
  %136 = add i32 %135, 1770035416, !dbg !1875
  %137 = add i32 %136, %95, !dbg !1875
  %138 = add i32 %137, %134, !dbg !1875
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !1804, metadata !769), !dbg !1827
  %139 = getelementptr inbounds i32, i32* %31, i64 9, !dbg !1875
  tail call void @llvm.dbg.value(metadata i32* %139, i64 0, metadata !1799, metadata !769), !dbg !1821
  %140 = shl i32 %138, 7, !dbg !1875
  %141 = lshr i32 %138, 25, !dbg !1875
  %142 = or i32 %140, %141, !dbg !1875
  tail call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !1804, metadata !769), !dbg !1827
  %143 = add i32 %142, %131, !dbg !1875
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !1804, metadata !769), !dbg !1827
  %144 = xor i32 %131, %119, !dbg !1878
  %145 = and i32 %143, %144, !dbg !1878
  %146 = xor i32 %145, %119, !dbg !1878
  %147 = load i32, i32* %139, align 4, !dbg !1878, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !1797, metadata !1880), !dbg !1819
  %148 = add i32 %147, -1958414417, !dbg !1878
  %149 = add i32 %148, %107, !dbg !1878
  %150 = add i32 %149, %146, !dbg !1878
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !1807, metadata !769), !dbg !1833
  %151 = getelementptr inbounds i32, i32* %31, i64 10, !dbg !1878
  tail call void @llvm.dbg.value(metadata i32* %151, i64 0, metadata !1799, metadata !769), !dbg !1821
  %152 = shl i32 %150, 12, !dbg !1878
  %153 = lshr i32 %150, 20, !dbg !1878
  %154 = or i32 %152, %153, !dbg !1878
  tail call void @llvm.dbg.value(metadata i32 %154, i64 0, metadata !1807, metadata !769), !dbg !1833
  %155 = add i32 %154, %143, !dbg !1878
  tail call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !1807, metadata !769), !dbg !1833
  %156 = xor i32 %143, %131, !dbg !1881
  %157 = and i32 %155, %156, !dbg !1881
  %158 = xor i32 %157, %131, !dbg !1881
  %159 = load i32, i32* %151, align 4, !dbg !1881, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !1797, metadata !1883), !dbg !1819
  %160 = add i32 %159, -42063, !dbg !1881
  %161 = add i32 %160, %119, !dbg !1881
  %162 = add i32 %161, %158, !dbg !1881
  tail call void @llvm.dbg.value(metadata i32 %162, i64 0, metadata !1806, metadata !769), !dbg !1831
  %163 = getelementptr inbounds i32, i32* %31, i64 11, !dbg !1881
  tail call void @llvm.dbg.value(metadata i32* %163, i64 0, metadata !1799, metadata !769), !dbg !1821
  %164 = shl i32 %162, 17, !dbg !1881
  %165 = lshr i32 %162, 15, !dbg !1881
  %166 = or i32 %164, %165, !dbg !1881
  tail call void @llvm.dbg.value(metadata i32 %166, i64 0, metadata !1806, metadata !769), !dbg !1831
  %167 = add i32 %166, %155, !dbg !1881
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !1806, metadata !769), !dbg !1831
  %168 = xor i32 %155, %143, !dbg !1884
  %169 = and i32 %167, %168, !dbg !1884
  %170 = xor i32 %169, %143, !dbg !1884
  %171 = load i32, i32* %163, align 4, !dbg !1884, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %171, i64 0, metadata !1797, metadata !1886), !dbg !1819
  %172 = add i32 %171, -1990404162, !dbg !1884
  %173 = add i32 %172, %131, !dbg !1884
  %174 = add i32 %173, %170, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %174, i64 0, metadata !1805, metadata !769), !dbg !1829
  %175 = getelementptr inbounds i32, i32* %31, i64 12, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32* %175, i64 0, metadata !1799, metadata !769), !dbg !1821
  %176 = shl i32 %174, 22, !dbg !1884
  %177 = lshr i32 %174, 10, !dbg !1884
  %178 = or i32 %176, %177, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %178, i64 0, metadata !1805, metadata !769), !dbg !1829
  %179 = add i32 %178, %167, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %179, i64 0, metadata !1805, metadata !769), !dbg !1829
  %180 = xor i32 %167, %155, !dbg !1887
  %181 = and i32 %179, %180, !dbg !1887
  %182 = xor i32 %181, %155, !dbg !1887
  %183 = load i32, i32* %175, align 4, !dbg !1887, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %183, i64 0, metadata !1797, metadata !1889), !dbg !1819
  %184 = add i32 %183, 1804603682, !dbg !1887
  %185 = add i32 %184, %143, !dbg !1887
  %186 = add i32 %185, %182, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !1804, metadata !769), !dbg !1827
  %187 = getelementptr inbounds i32, i32* %31, i64 13, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32* %187, i64 0, metadata !1799, metadata !769), !dbg !1821
  %188 = shl i32 %186, 7, !dbg !1887
  %189 = lshr i32 %186, 25, !dbg !1887
  %190 = or i32 %188, %189, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %190, i64 0, metadata !1804, metadata !769), !dbg !1827
  %191 = add i32 %190, %179, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !1804, metadata !769), !dbg !1827
  %192 = xor i32 %179, %167, !dbg !1890
  %193 = and i32 %191, %192, !dbg !1890
  %194 = xor i32 %193, %167, !dbg !1890
  %195 = load i32, i32* %187, align 4, !dbg !1890, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !1797, metadata !1892), !dbg !1819
  %196 = add i32 %195, -40341101, !dbg !1890
  %197 = add i32 %196, %155, !dbg !1890
  %198 = add i32 %197, %194, !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %198, i64 0, metadata !1807, metadata !769), !dbg !1833
  %199 = getelementptr inbounds i32, i32* %31, i64 14, !dbg !1890
  tail call void @llvm.dbg.value(metadata i32* %199, i64 0, metadata !1799, metadata !769), !dbg !1821
  %200 = shl i32 %198, 12, !dbg !1890
  %201 = lshr i32 %198, 20, !dbg !1890
  %202 = or i32 %200, %201, !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %202, i64 0, metadata !1807, metadata !769), !dbg !1833
  %203 = add i32 %202, %191, !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %203, i64 0, metadata !1807, metadata !769), !dbg !1833
  %204 = xor i32 %191, %179, !dbg !1893
  %205 = and i32 %203, %204, !dbg !1893
  %206 = xor i32 %205, %179, !dbg !1893
  %207 = load i32, i32* %199, align 4, !dbg !1893, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %207, i64 0, metadata !1797, metadata !1895), !dbg !1819
  %208 = add i32 %207, -1502002290, !dbg !1893
  %209 = add i32 %208, %167, !dbg !1893
  %210 = add i32 %209, %206, !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %210, i64 0, metadata !1806, metadata !769), !dbg !1831
  %211 = getelementptr inbounds i32, i32* %31, i64 15, !dbg !1893
  tail call void @llvm.dbg.value(metadata i32* %211, i64 0, metadata !1799, metadata !769), !dbg !1821
  %212 = shl i32 %210, 17, !dbg !1893
  %213 = lshr i32 %210, 15, !dbg !1893
  %214 = or i32 %212, %213, !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !1806, metadata !769), !dbg !1831
  %215 = add i32 %214, %203, !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !1806, metadata !769), !dbg !1831
  %216 = xor i32 %203, %191, !dbg !1896
  %217 = and i32 %215, %216, !dbg !1896
  %218 = xor i32 %217, %191, !dbg !1896
  %219 = load i32, i32* %211, align 4, !dbg !1896, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1809, metadata !769), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %219, i64 0, metadata !1797, metadata !1898), !dbg !1819
  %220 = add i32 %219, 1236535329, !dbg !1896
  %221 = add i32 %220, %179, !dbg !1896
  %222 = add i32 %221, %218, !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %222, i64 0, metadata !1805, metadata !769), !dbg !1829
  %223 = getelementptr inbounds i32, i32* %31, i64 16, !dbg !1896
  tail call void @llvm.dbg.value(metadata i32* %223, i64 0, metadata !1799, metadata !769), !dbg !1821
  %224 = shl i32 %222, 22, !dbg !1896
  %225 = lshr i32 %222, 10, !dbg !1896
  %226 = or i32 %224, %225, !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !1805, metadata !769), !dbg !1829
  %227 = add i32 %226, %215, !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %227, i64 0, metadata !1805, metadata !769), !dbg !1829
  %228 = xor i32 %227, %215, !dbg !1899
  %229 = and i32 %228, %203, !dbg !1899
  %230 = xor i32 %229, %215, !dbg !1899
  %231 = add i32 %51, -165796510, !dbg !1899
  %232 = add i32 %231, %191, !dbg !1899
  %233 = add i32 %232, %230, !dbg !1899
  tail call void @llvm.dbg.value(metadata i32 %233, i64 0, metadata !1804, metadata !769), !dbg !1827
  %234 = shl i32 %233, 5, !dbg !1899
  %235 = lshr i32 %233, 27, !dbg !1899
  %236 = or i32 %234, %235, !dbg !1899
  tail call void @llvm.dbg.value(metadata i32 %236, i64 0, metadata !1804, metadata !769), !dbg !1827
  %237 = add i32 %236, %227, !dbg !1899
  tail call void @llvm.dbg.value(metadata i32 %237, i64 0, metadata !1804, metadata !769), !dbg !1827
  %238 = xor i32 %237, %227, !dbg !1901
  %239 = and i32 %238, %215, !dbg !1901
  %240 = xor i32 %239, %227, !dbg !1901
  %241 = add i32 %111, -1069501632, !dbg !1901
  %242 = add i32 %241, %203, !dbg !1901
  %243 = add i32 %242, %240, !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %243, i64 0, metadata !1807, metadata !769), !dbg !1833
  %244 = shl i32 %243, 9, !dbg !1901
  %245 = lshr i32 %243, 23, !dbg !1901
  %246 = or i32 %244, %245, !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %246, i64 0, metadata !1807, metadata !769), !dbg !1833
  %247 = add i32 %246, %237, !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %247, i64 0, metadata !1807, metadata !769), !dbg !1833
  %248 = xor i32 %247, %237, !dbg !1903
  %249 = and i32 %248, %227, !dbg !1903
  %250 = xor i32 %249, %237, !dbg !1903
  %251 = add i32 %171, 643717713, !dbg !1903
  %252 = add i32 %251, %215, !dbg !1903
  %253 = add i32 %252, %250, !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %253, i64 0, metadata !1806, metadata !769), !dbg !1831
  %254 = shl i32 %253, 14, !dbg !1903
  %255 = lshr i32 %253, 18, !dbg !1903
  %256 = or i32 %254, %255, !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !1806, metadata !769), !dbg !1831
  %257 = add i32 %256, %247, !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %257, i64 0, metadata !1806, metadata !769), !dbg !1831
  %258 = xor i32 %257, %247, !dbg !1905
  %259 = and i32 %258, %237, !dbg !1905
  %260 = xor i32 %259, %247, !dbg !1905
  %261 = add i32 %39, -373897302, !dbg !1905
  %262 = add i32 %261, %227, !dbg !1905
  %263 = add i32 %262, %260, !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 %263, i64 0, metadata !1805, metadata !769), !dbg !1829
  %264 = shl i32 %263, 20, !dbg !1905
  %265 = lshr i32 %263, 12, !dbg !1905
  %266 = or i32 %264, %265, !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 %266, i64 0, metadata !1805, metadata !769), !dbg !1829
  %267 = add i32 %266, %257, !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 %267, i64 0, metadata !1805, metadata !769), !dbg !1829
  %268 = xor i32 %267, %257, !dbg !1907
  %269 = and i32 %268, %247, !dbg !1907
  %270 = xor i32 %269, %257, !dbg !1907
  %271 = add i32 %99, -701558691, !dbg !1907
  %272 = add i32 %271, %237, !dbg !1907
  %273 = add i32 %272, %270, !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 %273, i64 0, metadata !1804, metadata !769), !dbg !1827
  %274 = shl i32 %273, 5, !dbg !1907
  %275 = lshr i32 %273, 27, !dbg !1907
  %276 = or i32 %274, %275, !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 %276, i64 0, metadata !1804, metadata !769), !dbg !1827
  %277 = add i32 %276, %267, !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 %277, i64 0, metadata !1804, metadata !769), !dbg !1827
  %278 = xor i32 %277, %267, !dbg !1909
  %279 = and i32 %278, %257, !dbg !1909
  %280 = xor i32 %279, %267, !dbg !1909
  %281 = add i32 %159, 38016083, !dbg !1909
  %282 = add i32 %281, %247, !dbg !1909
  %283 = add i32 %282, %280, !dbg !1909
  tail call void @llvm.dbg.value(metadata i32 %283, i64 0, metadata !1807, metadata !769), !dbg !1833
  %284 = shl i32 %283, 9, !dbg !1909
  %285 = lshr i32 %283, 23, !dbg !1909
  %286 = or i32 %284, %285, !dbg !1909
  tail call void @llvm.dbg.value(metadata i32 %286, i64 0, metadata !1807, metadata !769), !dbg !1833
  %287 = add i32 %286, %277, !dbg !1909
  tail call void @llvm.dbg.value(metadata i32 %287, i64 0, metadata !1807, metadata !769), !dbg !1833
  %288 = xor i32 %287, %277, !dbg !1911
  %289 = and i32 %288, %267, !dbg !1911
  %290 = xor i32 %289, %277, !dbg !1911
  %291 = add i32 %219, -660478335, !dbg !1911
  %292 = add i32 %291, %257, !dbg !1911
  %293 = add i32 %292, %290, !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %293, i64 0, metadata !1806, metadata !769), !dbg !1831
  %294 = shl i32 %293, 14, !dbg !1911
  %295 = lshr i32 %293, 18, !dbg !1911
  %296 = or i32 %294, %295, !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %296, i64 0, metadata !1806, metadata !769), !dbg !1831
  %297 = add i32 %296, %287, !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %297, i64 0, metadata !1806, metadata !769), !dbg !1831
  %298 = xor i32 %297, %287, !dbg !1913
  %299 = and i32 %298, %277, !dbg !1913
  %300 = xor i32 %299, %287, !dbg !1913
  %301 = add i32 %87, -405537848, !dbg !1913
  %302 = add i32 %301, %267, !dbg !1913
  %303 = add i32 %302, %300, !dbg !1913
  tail call void @llvm.dbg.value(metadata i32 %303, i64 0, metadata !1805, metadata !769), !dbg !1829
  %304 = shl i32 %303, 20, !dbg !1913
  %305 = lshr i32 %303, 12, !dbg !1913
  %306 = or i32 %304, %305, !dbg !1913
  tail call void @llvm.dbg.value(metadata i32 %306, i64 0, metadata !1805, metadata !769), !dbg !1829
  %307 = add i32 %306, %297, !dbg !1913
  tail call void @llvm.dbg.value(metadata i32 %307, i64 0, metadata !1805, metadata !769), !dbg !1829
  %308 = xor i32 %307, %297, !dbg !1915
  %309 = and i32 %308, %287, !dbg !1915
  %310 = xor i32 %309, %297, !dbg !1915
  %311 = add i32 %147, 568446438, !dbg !1915
  %312 = add i32 %311, %277, !dbg !1915
  %313 = add i32 %312, %310, !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %313, i64 0, metadata !1804, metadata !769), !dbg !1827
  %314 = shl i32 %313, 5, !dbg !1915
  %315 = lshr i32 %313, 27, !dbg !1915
  %316 = or i32 %314, %315, !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %316, i64 0, metadata !1804, metadata !769), !dbg !1827
  %317 = add i32 %316, %307, !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %317, i64 0, metadata !1804, metadata !769), !dbg !1827
  %318 = xor i32 %317, %307, !dbg !1917
  %319 = and i32 %318, %297, !dbg !1917
  %320 = xor i32 %319, %307, !dbg !1917
  %321 = add i32 %207, -1019803690, !dbg !1917
  %322 = add i32 %321, %287, !dbg !1917
  %323 = add i32 %322, %320, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %323, i64 0, metadata !1807, metadata !769), !dbg !1833
  %324 = shl i32 %323, 9, !dbg !1917
  %325 = lshr i32 %323, 23, !dbg !1917
  %326 = or i32 %324, %325, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %326, i64 0, metadata !1807, metadata !769), !dbg !1833
  %327 = add i32 %326, %317, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %327, i64 0, metadata !1807, metadata !769), !dbg !1833
  %328 = xor i32 %327, %317, !dbg !1919
  %329 = and i32 %328, %307, !dbg !1919
  %330 = xor i32 %329, %317, !dbg !1919
  %331 = add i32 %75, -187363961, !dbg !1919
  %332 = add i32 %331, %297, !dbg !1919
  %333 = add i32 %332, %330, !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 %333, i64 0, metadata !1806, metadata !769), !dbg !1831
  %334 = shl i32 %333, 14, !dbg !1919
  %335 = lshr i32 %333, 18, !dbg !1919
  %336 = or i32 %334, %335, !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 %336, i64 0, metadata !1806, metadata !769), !dbg !1831
  %337 = add i32 %336, %327, !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 %337, i64 0, metadata !1806, metadata !769), !dbg !1831
  %338 = xor i32 %337, %327, !dbg !1921
  %339 = and i32 %338, %317, !dbg !1921
  %340 = xor i32 %339, %327, !dbg !1921
  %341 = add i32 %135, 1163531501, !dbg !1921
  %342 = add i32 %341, %307, !dbg !1921
  %343 = add i32 %342, %340, !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 %343, i64 0, metadata !1805, metadata !769), !dbg !1829
  %344 = shl i32 %343, 20, !dbg !1921
  %345 = lshr i32 %343, 12, !dbg !1921
  %346 = or i32 %344, %345, !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 %346, i64 0, metadata !1805, metadata !769), !dbg !1829
  %347 = add i32 %346, %337, !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 %347, i64 0, metadata !1805, metadata !769), !dbg !1829
  %348 = xor i32 %347, %337, !dbg !1923
  %349 = and i32 %348, %327, !dbg !1923
  %350 = xor i32 %349, %337, !dbg !1923
  %351 = add i32 %195, -1444681467, !dbg !1923
  %352 = add i32 %351, %317, !dbg !1923
  %353 = add i32 %352, %350, !dbg !1923
  tail call void @llvm.dbg.value(metadata i32 %353, i64 0, metadata !1804, metadata !769), !dbg !1827
  %354 = shl i32 %353, 5, !dbg !1923
  %355 = lshr i32 %353, 27, !dbg !1923
  %356 = or i32 %354, %355, !dbg !1923
  tail call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1804, metadata !769), !dbg !1827
  %357 = add i32 %356, %347, !dbg !1923
  tail call void @llvm.dbg.value(metadata i32 %357, i64 0, metadata !1804, metadata !769), !dbg !1827
  %358 = xor i32 %357, %347, !dbg !1925
  %359 = and i32 %358, %337, !dbg !1925
  %360 = xor i32 %359, %347, !dbg !1925
  %361 = add i32 %63, -51403784, !dbg !1925
  %362 = add i32 %361, %327, !dbg !1925
  %363 = add i32 %362, %360, !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %363, i64 0, metadata !1807, metadata !769), !dbg !1833
  %364 = shl i32 %363, 9, !dbg !1925
  %365 = lshr i32 %363, 23, !dbg !1925
  %366 = or i32 %364, %365, !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %366, i64 0, metadata !1807, metadata !769), !dbg !1833
  %367 = add i32 %366, %357, !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %367, i64 0, metadata !1807, metadata !769), !dbg !1833
  %368 = xor i32 %367, %357, !dbg !1927
  %369 = and i32 %368, %347, !dbg !1927
  %370 = xor i32 %369, %357, !dbg !1927
  %371 = add i32 %123, 1735328473, !dbg !1927
  %372 = add i32 %371, %337, !dbg !1927
  %373 = add i32 %372, %370, !dbg !1927
  tail call void @llvm.dbg.value(metadata i32 %373, i64 0, metadata !1806, metadata !769), !dbg !1831
  %374 = shl i32 %373, 14, !dbg !1927
  %375 = lshr i32 %373, 18, !dbg !1927
  %376 = or i32 %374, %375, !dbg !1927
  tail call void @llvm.dbg.value(metadata i32 %376, i64 0, metadata !1806, metadata !769), !dbg !1831
  %377 = add i32 %376, %367, !dbg !1927
  tail call void @llvm.dbg.value(metadata i32 %377, i64 0, metadata !1806, metadata !769), !dbg !1831
  %378 = xor i32 %377, %367, !dbg !1929
  %379 = and i32 %378, %357, !dbg !1929
  %380 = xor i32 %379, %367, !dbg !1929
  %381 = add i32 %183, -1926607734, !dbg !1929
  %382 = add i32 %381, %347, !dbg !1929
  %383 = add i32 %382, %380, !dbg !1929
  tail call void @llvm.dbg.value(metadata i32 %383, i64 0, metadata !1805, metadata !769), !dbg !1829
  %384 = shl i32 %383, 20, !dbg !1929
  %385 = lshr i32 %383, 12, !dbg !1929
  %386 = or i32 %384, %385, !dbg !1929
  tail call void @llvm.dbg.value(metadata i32 %386, i64 0, metadata !1805, metadata !769), !dbg !1829
  %387 = add i32 %386, %377, !dbg !1929
  tail call void @llvm.dbg.value(metadata i32 %387, i64 0, metadata !1805, metadata !769), !dbg !1829
  %388 = xor i32 %378, %387, !dbg !1931
  %389 = add i32 %99, -378558, !dbg !1931
  %390 = add i32 %389, %357, !dbg !1931
  %391 = add i32 %390, %388, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %391, i64 0, metadata !1804, metadata !769), !dbg !1827
  %392 = shl i32 %391, 4, !dbg !1931
  %393 = lshr i32 %391, 28, !dbg !1931
  %394 = or i32 %392, %393, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %394, i64 0, metadata !1804, metadata !769), !dbg !1827
  %395 = add i32 %394, %387, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %395, i64 0, metadata !1804, metadata !769), !dbg !1827
  %396 = xor i32 %387, %377, !dbg !1933
  %397 = xor i32 %396, %395, !dbg !1933
  %398 = add i32 %135, -2022574463, !dbg !1933
  %399 = add i32 %398, %367, !dbg !1933
  %400 = add i32 %399, %397, !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %400, i64 0, metadata !1807, metadata !769), !dbg !1833
  %401 = shl i32 %400, 11, !dbg !1933
  %402 = lshr i32 %400, 21, !dbg !1933
  %403 = or i32 %401, %402, !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %403, i64 0, metadata !1807, metadata !769), !dbg !1833
  %404 = add i32 %403, %395, !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %404, i64 0, metadata !1807, metadata !769), !dbg !1833
  %405 = xor i32 %395, %387, !dbg !1935
  %406 = xor i32 %405, %404, !dbg !1935
  %407 = add i32 %171, 1839030562, !dbg !1935
  %408 = add i32 %407, %377, !dbg !1935
  %409 = add i32 %408, %406, !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %409, i64 0, metadata !1806, metadata !769), !dbg !1831
  %410 = shl i32 %409, 16, !dbg !1935
  %411 = lshr i32 %409, 16, !dbg !1935
  %412 = or i32 %410, %411, !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %412, i64 0, metadata !1806, metadata !769), !dbg !1831
  %413 = add i32 %412, %404, !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %413, i64 0, metadata !1806, metadata !769), !dbg !1831
  %414 = xor i32 %404, %395, !dbg !1937
  %415 = xor i32 %414, %413, !dbg !1937
  %416 = add i32 %207, -35309556, !dbg !1937
  %417 = add i32 %416, %387, !dbg !1937
  %418 = add i32 %417, %415, !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 %418, i64 0, metadata !1805, metadata !769), !dbg !1829
  %419 = shl i32 %418, 23, !dbg !1937
  %420 = lshr i32 %418, 9, !dbg !1937
  %421 = or i32 %419, %420, !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 %421, i64 0, metadata !1805, metadata !769), !dbg !1829
  %422 = add i32 %421, %413, !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 %422, i64 0, metadata !1805, metadata !769), !dbg !1829
  %423 = xor i32 %413, %404, !dbg !1939
  %424 = xor i32 %423, %422, !dbg !1939
  %425 = add i32 %51, -1530992060, !dbg !1939
  %426 = add i32 %425, %395, !dbg !1939
  %427 = add i32 %426, %424, !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %427, i64 0, metadata !1804, metadata !769), !dbg !1827
  %428 = shl i32 %427, 4, !dbg !1939
  %429 = lshr i32 %427, 28, !dbg !1939
  %430 = or i32 %428, %429, !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %430, i64 0, metadata !1804, metadata !769), !dbg !1827
  %431 = add i32 %430, %422, !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %431, i64 0, metadata !1804, metadata !769), !dbg !1827
  %432 = xor i32 %422, %413, !dbg !1941
  %433 = xor i32 %432, %431, !dbg !1941
  %434 = add i32 %87, 1272893353, !dbg !1941
  %435 = add i32 %434, %404, !dbg !1941
  %436 = add i32 %435, %433, !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %436, i64 0, metadata !1807, metadata !769), !dbg !1833
  %437 = shl i32 %436, 11, !dbg !1941
  %438 = lshr i32 %436, 21, !dbg !1941
  %439 = or i32 %437, %438, !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %439, i64 0, metadata !1807, metadata !769), !dbg !1833
  %440 = add i32 %439, %431, !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %440, i64 0, metadata !1807, metadata !769), !dbg !1833
  %441 = xor i32 %431, %422, !dbg !1943
  %442 = xor i32 %441, %440, !dbg !1943
  %443 = add i32 %123, -155497632, !dbg !1943
  %444 = add i32 %443, %413, !dbg !1943
  %445 = add i32 %444, %442, !dbg !1943
  tail call void @llvm.dbg.value(metadata i32 %445, i64 0, metadata !1806, metadata !769), !dbg !1831
  %446 = shl i32 %445, 16, !dbg !1943
  %447 = lshr i32 %445, 16, !dbg !1943
  %448 = or i32 %446, %447, !dbg !1943
  tail call void @llvm.dbg.value(metadata i32 %448, i64 0, metadata !1806, metadata !769), !dbg !1831
  %449 = add i32 %448, %440, !dbg !1943
  tail call void @llvm.dbg.value(metadata i32 %449, i64 0, metadata !1806, metadata !769), !dbg !1831
  %450 = xor i32 %440, %431, !dbg !1945
  %451 = xor i32 %450, %449, !dbg !1945
  %452 = add i32 %159, -1094730640, !dbg !1945
  %453 = add i32 %452, %422, !dbg !1945
  %454 = add i32 %453, %451, !dbg !1945
  tail call void @llvm.dbg.value(metadata i32 %454, i64 0, metadata !1805, metadata !769), !dbg !1829
  %455 = shl i32 %454, 23, !dbg !1945
  %456 = lshr i32 %454, 9, !dbg !1945
  %457 = or i32 %455, %456, !dbg !1945
  tail call void @llvm.dbg.value(metadata i32 %457, i64 0, metadata !1805, metadata !769), !dbg !1829
  %458 = add i32 %457, %449, !dbg !1945
  tail call void @llvm.dbg.value(metadata i32 %458, i64 0, metadata !1805, metadata !769), !dbg !1829
  %459 = xor i32 %449, %440, !dbg !1947
  %460 = xor i32 %459, %458, !dbg !1947
  %461 = add i32 %195, 681279174, !dbg !1947
  %462 = add i32 %461, %431, !dbg !1947
  %463 = add i32 %462, %460, !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %463, i64 0, metadata !1804, metadata !769), !dbg !1827
  %464 = shl i32 %463, 4, !dbg !1947
  %465 = lshr i32 %463, 28, !dbg !1947
  %466 = or i32 %464, %465, !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %466, i64 0, metadata !1804, metadata !769), !dbg !1827
  %467 = add i32 %466, %458, !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %467, i64 0, metadata !1804, metadata !769), !dbg !1827
  %468 = xor i32 %458, %449, !dbg !1949
  %469 = xor i32 %468, %467, !dbg !1949
  %470 = add i32 %39, -358537222, !dbg !1949
  %471 = add i32 %470, %440, !dbg !1949
  %472 = add i32 %471, %469, !dbg !1949
  tail call void @llvm.dbg.value(metadata i32 %472, i64 0, metadata !1807, metadata !769), !dbg !1833
  %473 = shl i32 %472, 11, !dbg !1949
  %474 = lshr i32 %472, 21, !dbg !1949
  %475 = or i32 %473, %474, !dbg !1949
  tail call void @llvm.dbg.value(metadata i32 %475, i64 0, metadata !1807, metadata !769), !dbg !1833
  %476 = add i32 %475, %467, !dbg !1949
  tail call void @llvm.dbg.value(metadata i32 %476, i64 0, metadata !1807, metadata !769), !dbg !1833
  %477 = xor i32 %467, %458, !dbg !1951
  %478 = xor i32 %477, %476, !dbg !1951
  %479 = add i32 %75, -722521979, !dbg !1951
  %480 = add i32 %479, %449, !dbg !1951
  %481 = add i32 %480, %478, !dbg !1951
  tail call void @llvm.dbg.value(metadata i32 %481, i64 0, metadata !1806, metadata !769), !dbg !1831
  %482 = shl i32 %481, 16, !dbg !1951
  %483 = lshr i32 %481, 16, !dbg !1951
  %484 = or i32 %482, %483, !dbg !1951
  tail call void @llvm.dbg.value(metadata i32 %484, i64 0, metadata !1806, metadata !769), !dbg !1831
  %485 = add i32 %484, %476, !dbg !1951
  tail call void @llvm.dbg.value(metadata i32 %485, i64 0, metadata !1806, metadata !769), !dbg !1831
  %486 = xor i32 %476, %467, !dbg !1953
  %487 = xor i32 %486, %485, !dbg !1953
  %488 = add i32 %111, 76029189, !dbg !1953
  %489 = add i32 %488, %458, !dbg !1953
  %490 = add i32 %489, %487, !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %490, i64 0, metadata !1805, metadata !769), !dbg !1829
  %491 = shl i32 %490, 23, !dbg !1953
  %492 = lshr i32 %490, 9, !dbg !1953
  %493 = or i32 %491, %492, !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %493, i64 0, metadata !1805, metadata !769), !dbg !1829
  %494 = add i32 %493, %485, !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %494, i64 0, metadata !1805, metadata !769), !dbg !1829
  %495 = xor i32 %485, %476, !dbg !1955
  %496 = xor i32 %495, %494, !dbg !1955
  %497 = add i32 %147, -640364487, !dbg !1955
  %498 = add i32 %497, %467, !dbg !1955
  %499 = add i32 %498, %496, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %499, i64 0, metadata !1804, metadata !769), !dbg !1827
  %500 = shl i32 %499, 4, !dbg !1955
  %501 = lshr i32 %499, 28, !dbg !1955
  %502 = or i32 %500, %501, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %502, i64 0, metadata !1804, metadata !769), !dbg !1827
  %503 = add i32 %502, %494, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %503, i64 0, metadata !1804, metadata !769), !dbg !1827
  %504 = xor i32 %494, %485, !dbg !1957
  %505 = xor i32 %504, %503, !dbg !1957
  %506 = add i32 %183, -421815835, !dbg !1957
  %507 = add i32 %506, %476, !dbg !1957
  %508 = add i32 %507, %505, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %508, i64 0, metadata !1807, metadata !769), !dbg !1833
  %509 = shl i32 %508, 11, !dbg !1957
  %510 = lshr i32 %508, 21, !dbg !1957
  %511 = or i32 %509, %510, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %511, i64 0, metadata !1807, metadata !769), !dbg !1833
  %512 = add i32 %511, %503, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %512, i64 0, metadata !1807, metadata !769), !dbg !1833
  %513 = xor i32 %503, %494, !dbg !1959
  %514 = xor i32 %513, %512, !dbg !1959
  %515 = add i32 %219, 530742520, !dbg !1959
  %516 = add i32 %515, %485, !dbg !1959
  %517 = add i32 %516, %514, !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %517, i64 0, metadata !1806, metadata !769), !dbg !1831
  %518 = shl i32 %517, 16, !dbg !1959
  %519 = lshr i32 %517, 16, !dbg !1959
  %520 = or i32 %518, %519, !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %520, i64 0, metadata !1806, metadata !769), !dbg !1831
  %521 = add i32 %520, %512, !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %521, i64 0, metadata !1806, metadata !769), !dbg !1831
  %522 = xor i32 %512, %503, !dbg !1961
  %523 = xor i32 %522, %521, !dbg !1961
  %524 = add i32 %63, -995338651, !dbg !1961
  %525 = add i32 %524, %494, !dbg !1961
  %526 = add i32 %525, %523, !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 %526, i64 0, metadata !1805, metadata !769), !dbg !1829
  %527 = shl i32 %526, 23, !dbg !1961
  %528 = lshr i32 %526, 9, !dbg !1961
  %529 = or i32 %527, %528, !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 %529, i64 0, metadata !1805, metadata !769), !dbg !1829
  %530 = add i32 %529, %521, !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 %530, i64 0, metadata !1805, metadata !769), !dbg !1829
  %531 = xor i32 %512, -1, !dbg !1963
  %532 = or i32 %530, %531, !dbg !1963
  %533 = xor i32 %532, %521, !dbg !1963
  %534 = add i32 %39, -198630844, !dbg !1963
  %535 = add i32 %534, %503, !dbg !1963
  %536 = add i32 %535, %533, !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 %536, i64 0, metadata !1804, metadata !769), !dbg !1827
  %537 = shl i32 %536, 6, !dbg !1963
  %538 = lshr i32 %536, 26, !dbg !1963
  %539 = or i32 %537, %538, !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 %539, i64 0, metadata !1804, metadata !769), !dbg !1827
  %540 = add i32 %539, %530, !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 %540, i64 0, metadata !1804, metadata !769), !dbg !1827
  %541 = xor i32 %521, -1, !dbg !1965
  %542 = or i32 %540, %541, !dbg !1965
  %543 = xor i32 %542, %530, !dbg !1965
  %544 = add i32 %123, 1126891415, !dbg !1965
  %545 = add i32 %544, %512, !dbg !1965
  %546 = add i32 %545, %543, !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 %546, i64 0, metadata !1807, metadata !769), !dbg !1833
  %547 = shl i32 %546, 10, !dbg !1965
  %548 = lshr i32 %546, 22, !dbg !1965
  %549 = or i32 %547, %548, !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 %549, i64 0, metadata !1807, metadata !769), !dbg !1833
  %550 = add i32 %549, %540, !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 %550, i64 0, metadata !1807, metadata !769), !dbg !1833
  %551 = xor i32 %530, -1, !dbg !1967
  %552 = or i32 %550, %551, !dbg !1967
  %553 = xor i32 %552, %540, !dbg !1967
  %554 = add i32 %207, -1416354905, !dbg !1967
  %555 = add i32 %554, %521, !dbg !1967
  %556 = add i32 %555, %553, !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %556, i64 0, metadata !1806, metadata !769), !dbg !1831
  %557 = shl i32 %556, 15, !dbg !1967
  %558 = lshr i32 %556, 17, !dbg !1967
  %559 = or i32 %557, %558, !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %559, i64 0, metadata !1806, metadata !769), !dbg !1831
  %560 = add i32 %559, %550, !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %560, i64 0, metadata !1806, metadata !769), !dbg !1831
  %561 = xor i32 %540, -1, !dbg !1969
  %562 = or i32 %560, %561, !dbg !1969
  %563 = xor i32 %562, %550, !dbg !1969
  %564 = add i32 %99, -57434055, !dbg !1969
  %565 = add i32 %564, %530, !dbg !1969
  %566 = add i32 %565, %563, !dbg !1969
  tail call void @llvm.dbg.value(metadata i32 %566, i64 0, metadata !1805, metadata !769), !dbg !1829
  %567 = shl i32 %566, 21, !dbg !1969
  %568 = lshr i32 %566, 11, !dbg !1969
  %569 = or i32 %567, %568, !dbg !1969
  tail call void @llvm.dbg.value(metadata i32 %569, i64 0, metadata !1805, metadata !769), !dbg !1829
  %570 = add i32 %569, %560, !dbg !1969
  tail call void @llvm.dbg.value(metadata i32 %570, i64 0, metadata !1805, metadata !769), !dbg !1829
  %571 = xor i32 %550, -1, !dbg !1971
  %572 = or i32 %570, %571, !dbg !1971
  %573 = xor i32 %572, %560, !dbg !1971
  %574 = add i32 %183, 1700485571, !dbg !1971
  %575 = add i32 %574, %540, !dbg !1971
  %576 = add i32 %575, %573, !dbg !1971
  tail call void @llvm.dbg.value(metadata i32 %576, i64 0, metadata !1804, metadata !769), !dbg !1827
  %577 = shl i32 %576, 6, !dbg !1971
  %578 = lshr i32 %576, 26, !dbg !1971
  %579 = or i32 %577, %578, !dbg !1971
  tail call void @llvm.dbg.value(metadata i32 %579, i64 0, metadata !1804, metadata !769), !dbg !1827
  %580 = add i32 %579, %570, !dbg !1971
  tail call void @llvm.dbg.value(metadata i32 %580, i64 0, metadata !1804, metadata !769), !dbg !1827
  %581 = xor i32 %560, -1, !dbg !1973
  %582 = or i32 %580, %581, !dbg !1973
  %583 = xor i32 %582, %570, !dbg !1973
  %584 = add i32 %75, -1894986606, !dbg !1973
  %585 = add i32 %584, %550, !dbg !1973
  %586 = add i32 %585, %583, !dbg !1973
  tail call void @llvm.dbg.value(metadata i32 %586, i64 0, metadata !1807, metadata !769), !dbg !1833
  %587 = shl i32 %586, 10, !dbg !1973
  %588 = lshr i32 %586, 22, !dbg !1973
  %589 = or i32 %587, %588, !dbg !1973
  tail call void @llvm.dbg.value(metadata i32 %589, i64 0, metadata !1807, metadata !769), !dbg !1833
  %590 = add i32 %589, %580, !dbg !1973
  tail call void @llvm.dbg.value(metadata i32 %590, i64 0, metadata !1807, metadata !769), !dbg !1833
  %591 = xor i32 %570, -1, !dbg !1975
  %592 = or i32 %590, %591, !dbg !1975
  %593 = xor i32 %592, %580, !dbg !1975
  %594 = add i32 %159, -1051523, !dbg !1975
  %595 = add i32 %594, %560, !dbg !1975
  %596 = add i32 %595, %593, !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 %596, i64 0, metadata !1806, metadata !769), !dbg !1831
  %597 = shl i32 %596, 15, !dbg !1975
  %598 = lshr i32 %596, 17, !dbg !1975
  %599 = or i32 %597, %598, !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 %599, i64 0, metadata !1806, metadata !769), !dbg !1831
  %600 = add i32 %599, %590, !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 %600, i64 0, metadata !1806, metadata !769), !dbg !1831
  %601 = xor i32 %580, -1, !dbg !1977
  %602 = or i32 %600, %601, !dbg !1977
  %603 = xor i32 %602, %590, !dbg !1977
  %604 = add i32 %51, -2054922799, !dbg !1977
  %605 = add i32 %604, %570, !dbg !1977
  %606 = add i32 %605, %603, !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %606, i64 0, metadata !1805, metadata !769), !dbg !1829
  %607 = shl i32 %606, 21, !dbg !1977
  %608 = lshr i32 %606, 11, !dbg !1977
  %609 = or i32 %607, %608, !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %609, i64 0, metadata !1805, metadata !769), !dbg !1829
  %610 = add i32 %609, %600, !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %610, i64 0, metadata !1805, metadata !769), !dbg !1829
  %611 = xor i32 %590, -1, !dbg !1979
  %612 = or i32 %610, %611, !dbg !1979
  %613 = xor i32 %612, %600, !dbg !1979
  %614 = add i32 %135, 1873313359, !dbg !1979
  %615 = add i32 %614, %580, !dbg !1979
  %616 = add i32 %615, %613, !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 %616, i64 0, metadata !1804, metadata !769), !dbg !1827
  %617 = shl i32 %616, 6, !dbg !1979
  %618 = lshr i32 %616, 26, !dbg !1979
  %619 = or i32 %617, %618, !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 %619, i64 0, metadata !1804, metadata !769), !dbg !1827
  %620 = add i32 %619, %610, !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 %620, i64 0, metadata !1804, metadata !769), !dbg !1827
  %621 = xor i32 %600, -1, !dbg !1981
  %622 = or i32 %620, %621, !dbg !1981
  %623 = xor i32 %622, %610, !dbg !1981
  %624 = add i32 %219, -30611744, !dbg !1981
  %625 = add i32 %624, %590, !dbg !1981
  %626 = add i32 %625, %623, !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %626, i64 0, metadata !1807, metadata !769), !dbg !1833
  %627 = shl i32 %626, 10, !dbg !1981
  %628 = lshr i32 %626, 22, !dbg !1981
  %629 = or i32 %627, %628, !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %629, i64 0, metadata !1807, metadata !769), !dbg !1833
  %630 = add i32 %629, %620, !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %630, i64 0, metadata !1807, metadata !769), !dbg !1833
  %631 = xor i32 %610, -1, !dbg !1983
  %632 = or i32 %630, %631, !dbg !1983
  %633 = xor i32 %632, %620, !dbg !1983
  %634 = add i32 %111, -1560198380, !dbg !1983
  %635 = add i32 %634, %600, !dbg !1983
  %636 = add i32 %635, %633, !dbg !1983
  tail call void @llvm.dbg.value(metadata i32 %636, i64 0, metadata !1806, metadata !769), !dbg !1831
  %637 = shl i32 %636, 15, !dbg !1983
  %638 = lshr i32 %636, 17, !dbg !1983
  %639 = or i32 %637, %638, !dbg !1983
  tail call void @llvm.dbg.value(metadata i32 %639, i64 0, metadata !1806, metadata !769), !dbg !1831
  %640 = add i32 %639, %630, !dbg !1983
  tail call void @llvm.dbg.value(metadata i32 %640, i64 0, metadata !1806, metadata !769), !dbg !1831
  %641 = xor i32 %620, -1, !dbg !1985
  %642 = or i32 %640, %641, !dbg !1985
  %643 = xor i32 %642, %630, !dbg !1985
  %644 = add i32 %195, 1309151649, !dbg !1985
  %645 = add i32 %644, %610, !dbg !1985
  %646 = add i32 %645, %643, !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %646, i64 0, metadata !1805, metadata !769), !dbg !1829
  %647 = shl i32 %646, 21, !dbg !1985
  %648 = lshr i32 %646, 11, !dbg !1985
  %649 = or i32 %647, %648, !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %649, i64 0, metadata !1805, metadata !769), !dbg !1829
  %650 = add i32 %649, %640, !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %650, i64 0, metadata !1805, metadata !769), !dbg !1829
  %651 = xor i32 %630, -1, !dbg !1987
  %652 = or i32 %650, %651, !dbg !1987
  %653 = xor i32 %652, %640, !dbg !1987
  %654 = add i32 %87, -145523070, !dbg !1987
  %655 = add i32 %654, %620, !dbg !1987
  %656 = add i32 %655, %653, !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1804, metadata !769), !dbg !1827
  %657 = shl i32 %656, 6, !dbg !1987
  %658 = lshr i32 %656, 26, !dbg !1987
  %659 = or i32 %657, %658, !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 %659, i64 0, metadata !1804, metadata !769), !dbg !1827
  %660 = add i32 %659, %650, !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 %660, i64 0, metadata !1804, metadata !769), !dbg !1827
  %661 = xor i32 %640, -1, !dbg !1989
  %662 = or i32 %660, %661, !dbg !1989
  %663 = xor i32 %662, %650, !dbg !1989
  %664 = add i32 %171, -1120210379, !dbg !1989
  %665 = add i32 %664, %630, !dbg !1989
  %666 = add i32 %665, %663, !dbg !1989
  tail call void @llvm.dbg.value(metadata i32 %666, i64 0, metadata !1807, metadata !769), !dbg !1833
  %667 = shl i32 %666, 10, !dbg !1989
  %668 = lshr i32 %666, 22, !dbg !1989
  %669 = or i32 %667, %668, !dbg !1989
  tail call void @llvm.dbg.value(metadata i32 %669, i64 0, metadata !1807, metadata !769), !dbg !1833
  %670 = add i32 %669, %660, !dbg !1989
  tail call void @llvm.dbg.value(metadata i32 %670, i64 0, metadata !1807, metadata !769), !dbg !1833
  %671 = xor i32 %650, -1, !dbg !1991
  %672 = or i32 %670, %671, !dbg !1991
  %673 = xor i32 %672, %660, !dbg !1991
  %674 = add i32 %63, 718787259, !dbg !1991
  %675 = add i32 %674, %640, !dbg !1991
  %676 = add i32 %675, %673, !dbg !1991
  tail call void @llvm.dbg.value(metadata i32 %676, i64 0, metadata !1806, metadata !769), !dbg !1831
  %677 = shl i32 %676, 15, !dbg !1991
  %678 = lshr i32 %676, 17, !dbg !1991
  %679 = or i32 %677, %678, !dbg !1991
  tail call void @llvm.dbg.value(metadata i32 %679, i64 0, metadata !1806, metadata !769), !dbg !1831
  %680 = add i32 %679, %670, !dbg !1991
  tail call void @llvm.dbg.value(metadata i32 %680, i64 0, metadata !1806, metadata !769), !dbg !1831
  %681 = xor i32 %660, -1, !dbg !1993
  %682 = or i32 %680, %681, !dbg !1993
  %683 = xor i32 %682, %670, !dbg !1993
  %684 = add i32 %147, -343485551, !dbg !1993
  %685 = add i32 %684, %650, !dbg !1993
  %686 = add i32 %685, %683, !dbg !1993
  tail call void @llvm.dbg.value(metadata i32 %686, i64 0, metadata !1805, metadata !769), !dbg !1829
  %687 = shl i32 %686, 21, !dbg !1993
  %688 = lshr i32 %686, 11, !dbg !1993
  %689 = or i32 %687, %688, !dbg !1993
  tail call void @llvm.dbg.value(metadata i32 %689, i64 0, metadata !1805, metadata !769), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %691, i64 0, metadata !1805, metadata !769), !dbg !1829
  %690 = add i32 %660, %32, !dbg !1995
  tail call void @llvm.dbg.value(metadata i32 %690, i64 0, metadata !1804, metadata !769), !dbg !1827
  %691 = add i32 %680, %33, !dbg !1993
  %692 = add i32 %691, %689, !dbg !1996
  tail call void @llvm.dbg.value(metadata i32 %692, i64 0, metadata !1805, metadata !769), !dbg !1829
  %693 = add i32 %680, %34, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 %693, i64 0, metadata !1806, metadata !769), !dbg !1831
  %694 = add i32 %670, %35, !dbg !1998
  tail call void @llvm.dbg.value(metadata i32 %694, i64 0, metadata !1807, metadata !769), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32* %223, i64 0, metadata !1799, metadata !769), !dbg !1821
  tail call void @llvm.dbg.value(metadata i32 %690, i64 0, metadata !1804, metadata !769), !dbg !1827
  tail call void @llvm.dbg.value(metadata i32 %692, i64 0, metadata !1805, metadata !769), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %693, i64 0, metadata !1806, metadata !769), !dbg !1831
  tail call void @llvm.dbg.value(metadata i32 %694, i64 0, metadata !1807, metadata !769), !dbg !1833
  %695 = icmp ult i32* %223, %6, !dbg !1844
  br i1 %695, label %30, label %696, !dbg !1845, !llvm.loop !1999

; <label>:696:                                    ; preds = %30, %3
  %697 = phi i32 [ %14, %3 ], [ %694, %30 ]
  %698 = phi i32 [ %12, %3 ], [ %693, %30 ]
  %699 = phi i32 [ %10, %3 ], [ %692, %30 ]
  %700 = phi i32 [ %8, %3 ], [ %690, %30 ]
  store i32 %700, i32* %7, align 4, !dbg !2001, !tbaa !1694
  store i32 %699, i32* %9, align 4, !dbg !2002, !tbaa !1707
  store i32 %698, i32* %11, align 4, !dbg !2003, !tbaa !1714
  store i32 %697, i32* %13, align 4, !dbg !2004, !tbaa !1721
  ret void, !dbg !2005
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @md5_stream(%struct._IO_FILE*, i8* nocapture) local_unnamed_addr #6 !dbg !2006 {
  %3 = alloca %struct.md5_ctx, align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2050, metadata !769), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2051, metadata !769), !dbg !2058
  %4 = bitcast %struct.md5_ctx* %3 to i8*, !dbg !2059
  call void @llvm.lifetime.start.p0i8(i64 156, i8* nonnull %4) #10, !dbg !2059
  %5 = tail call noalias i8* @malloc(i64 32840) #10, !dbg !2060
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2054, metadata !769), !dbg !2061
  %6 = icmp eq i8* %5, null, !dbg !2062
  br i1 %6, label %69, label %7, !dbg !2064

; <label>:7:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !2052, metadata !769), !dbg !2065
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !1669, metadata !769), !dbg !2066
  %8 = bitcast %struct.md5_ctx* %3 to <4 x i32>*, !dbg !2068
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2068, !tbaa !955
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 1, !dbg !2069
  store i32 0, i32* %9, align 4, !dbg !2070, !tbaa !955
  %10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 0, !dbg !2071
  store i32 0, i32* %10, align 16, !dbg !2072, !tbaa !955
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 5, !dbg !2073
  store i32 0, i32* %11, align 8, !dbg !2074, !tbaa !1678
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %13, !dbg !2075

; <label>:13:                                     ; preds = %35, %7
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2053, metadata !769), !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2053, metadata !769), !dbg !2076
  %14 = tail call i64 @fread_unlocked(i8* nonnull %5, i64 1, i64 32768, %struct._IO_FILE* %0) #10, !dbg !2077
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2055, metadata !769), !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2053, metadata !769), !dbg !2076
  %15 = icmp eq i64 %14, 32768, !dbg !2080
  br i1 %15, label %35, label %16, !dbg !2082

; <label>:16:                                     ; preds = %13
  br label %23, !dbg !2083

; <label>:17:                                     ; preds = %32
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2053, metadata !769), !dbg !2076
  %18 = getelementptr inbounds i8, i8* %5, i64 %24, !dbg !2077
  %19 = sub i64 32768, %24, !dbg !2077
  %20 = tail call i64 @fread_unlocked(i8* %18, i64 1, i64 %19, %struct._IO_FILE* nonnull %0) #10, !dbg !2077
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !2055, metadata !769), !dbg !2079
  %21 = add i64 %20, %24, !dbg !2085
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !2053, metadata !769), !dbg !2076
  %22 = icmp eq i64 %21, 32768, !dbg !2080
  br i1 %22, label %35, label %23, !dbg !2082, !llvm.loop !2086

; <label>:23:                                     ; preds = %16, %17
  %24 = phi i64 [ %21, %17 ], [ %14, %16 ]
  %25 = phi i64 [ %20, %17 ], [ %14, %16 ]
  %26 = icmp eq i64 %25, 0, !dbg !2083
  %27 = load i32, i32* %12, align 8, !tbaa !1365
  br i1 %26, label %28, label %32, !dbg !2089

; <label>:28:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2090, metadata !769), !dbg !2095
  %29 = and i32 %27, 32, !dbg !2099
  %30 = icmp eq i32 %29, 0, !dbg !2100
  br i1 %30, label %36, label %31, !dbg !2101

; <label>:31:                                     ; preds = %28
  tail call void @free(i8* %5) #10, !dbg !2102
  br label %69

; <label>:32:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2104, metadata !769), !dbg !2107
  %33 = and i32 %27, 16, !dbg !2110
  %34 = icmp eq i32 %33, 0, !dbg !2111
  br i1 %34, label %17, label %36, !dbg !2112

; <label>:35:                                     ; preds = %17, %13
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !2052, metadata !769), !dbg !2065
  call void @md5_process_block(i8* nonnull %5, i64 32768, %struct.md5_ctx* nonnull %3) #10, !dbg !2113
  br label %13, !dbg !2075, !llvm.loop !2114

; <label>:36:                                     ; preds = %32, %28
  %37 = icmp eq i64 %24, 0, !dbg !2116
  br i1 %37, label %39, label %38, !dbg !2118

; <label>:38:                                     ; preds = %36
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !2052, metadata !769), !dbg !2065
  call void @md5_process_bytes(i8* nonnull %5, i64 %24, %struct.md5_ctx* nonnull %3) #10, !dbg !2119
  br label %39, !dbg !2119

; <label>:39:                                     ; preds = %36, %38
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !2052, metadata !769), !dbg !2065
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !1731, metadata !769) #10, !dbg !2120
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1732, metadata !769) #10, !dbg !2122
  %40 = load i32, i32* %11, align 8, !dbg !2123, !tbaa !1678
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1733, metadata !769) #10, !dbg !2124
  %41 = icmp ult i32 %40, 56, !dbg !2125
  %42 = select i1 %41, i64 16, i64 32, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1734, metadata !769) #10, !dbg !2127
  %43 = load i32, i32* %10, align 16, !dbg !2128, !tbaa !955
  %44 = add i32 %43, %40, !dbg !2128
  store i32 %44, i32* %10, align 16, !dbg !2128, !tbaa !955
  %45 = icmp ult i32 %44, %40, !dbg !2129
  %46 = load i32, i32* %9, align 4, !tbaa !955
  br i1 %45, label %47, label %49, !dbg !2130

; <label>:47:                                     ; preds = %39
  %48 = add i32 %46, 1, !dbg !2131
  store i32 %48, i32* %9, align 4, !dbg !2131, !tbaa !955
  br label %49, !dbg !2131

; <label>:49:                                     ; preds = %39, %47
  %50 = phi i32 [ %48, %47 ], [ %46, %39 ], !dbg !2132
  %51 = shl i32 %44, 3, !dbg !2133
  %52 = add nsw i64 %42, -2, !dbg !2134
  %53 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 %52, !dbg !2135
  store i32 %51, i32* %53, align 4, !dbg !2136, !tbaa !955
  %54 = shl i32 %50, 3, !dbg !2132
  %55 = lshr i32 %44, 29, !dbg !2132
  %56 = or i32 %54, %55, !dbg !2132
  %57 = add nsw i64 %42, -1, !dbg !2137
  %58 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 %57, !dbg !2138
  store i32 %56, i32* %58, align 4, !dbg !2139, !tbaa !955
  %59 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 0, !dbg !2140
  %60 = bitcast i32* %59 to i8*, !dbg !2140
  %61 = zext i32 %40 to i64, !dbg !2140
  %62 = getelementptr inbounds i8, i8* %60, i64 %61, !dbg !2140
  %63 = shl nsw i64 %52, 2, !dbg !2141
  %64 = sub nsw i64 %63, %61, !dbg !2142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %64, i32 1, i1 false) #10, !dbg !2143
  %65 = shl nuw nsw i64 %42, 2, !dbg !2144
  call void @md5_process_block(i8* %60, i64 %65, %struct.md5_ctx* nonnull %3) #10, !dbg !2145
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !1687, metadata !769) #10, !dbg !2146
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1688, metadata !769) #10, !dbg !2148
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1689, metadata !769) #10, !dbg !2149
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1695, metadata !769) #10, !dbg !2150
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1700, metadata !769) #10, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1695, metadata !2153) #10, !dbg !2154
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1700, metadata !769) #10, !dbg !2156
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1695, metadata !2157) #10, !dbg !2158
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1700, metadata !769) #10, !dbg !2160
  %66 = bitcast %struct.md5_ctx* %3 to <4 x i32>*, !dbg !2161
  %67 = load <4 x i32>, <4 x i32>* %66, align 16, !dbg !2161, !tbaa !955
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1695, metadata !2162) #10, !dbg !2163
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1700, metadata !769) #10, !dbg !2165
  %68 = bitcast i8* %1 to <4 x i32>*, !dbg !2166
  store <4 x i32> %67, <4 x i32>* %68, align 1, !dbg !2166
  call void @free(i8* %5) #10, !dbg !2167
  br label %69, !dbg !2168

; <label>:69:                                     ; preds = %31, %2, %49
  %70 = phi i32 [ 0, %49 ], [ 1, %2 ], [ 1, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 156, i8* nonnull %4) #10, !dbg !2169
  ret i32 %70, !dbg !2169
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @md5_process_bytes(i8*, i64, %struct.md5_ctx*) local_unnamed_addr #6 !dbg !2170 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2172, metadata !769), !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2173, metadata !769), !dbg !2183
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, i64 0, metadata !2174, metadata !769), !dbg !2184
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 5, !dbg !2185
  %5 = load i32, i32* %4, align 4, !dbg !2185, !tbaa !1678
  %6 = icmp eq i32 %5, 0, !dbg !2186
  br i1 %6, label %28, label %7, !dbg !2187

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2175, metadata !769), !dbg !2189
  %9 = sub nsw i64 128, %8, !dbg !2190
  %10 = icmp ugt i64 %9, %1, !dbg !2191
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2178, metadata !769), !dbg !2193
  %12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0, !dbg !2194
  %13 = bitcast i32* %12 to i8*, !dbg !2194
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2194
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %0, i64 %11, i32 1, i1 false), !dbg !2195
  %15 = add i64 %11, %8, !dbg !2196
  %16 = trunc i64 %15 to i32, !dbg !2196
  store i32 %16, i32* %4, align 4, !dbg !2196, !tbaa !1678
  %17 = icmp ugt i32 %16, 64, !dbg !2197
  br i1 %17, label %18, label %25, !dbg !2199

; <label>:18:                                     ; preds = %7
  %19 = and i64 %15, 4294967232, !dbg !2200
  tail call void @md5_process_block(i8* %13, i64 %19, %struct.md5_ctx* nonnull %2) #10, !dbg !2202
  %20 = load i32, i32* %4, align 4, !dbg !2203, !tbaa !1678
  %21 = and i32 %20, 63, !dbg !2203
  store i32 %21, i32* %4, align 4, !dbg !2203, !tbaa !1678
  %22 = and i64 %15, -64, !dbg !2204
  %23 = getelementptr inbounds i8, i8* %13, i64 %22, !dbg !2205
  %24 = zext i32 %21 to i64, !dbg !2206
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %23, i64 %24, i32 1, i1 false), !dbg !2207
  br label %25, !dbg !2208

; <label>:25:                                     ; preds = %18, %7
  %26 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2209
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !2172, metadata !769), !dbg !2182
  %27 = sub i64 %1, %11, !dbg !2210
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !2173, metadata !769), !dbg !2183
  br label %28, !dbg !2211

; <label>:28:                                     ; preds = %3, %25
  %29 = phi i64 [ %27, %25 ], [ %1, %3 ]
  %30 = phi i8* [ %26, %25 ], [ %0, %3 ]
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2172, metadata !769), !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !2173, metadata !769), !dbg !2183
  %31 = icmp ugt i64 %29, 63, !dbg !2212
  br i1 %31, label %32, label %55, !dbg !2214

; <label>:32:                                     ; preds = %28
  %33 = ptrtoint i8* %30 to i64, !dbg !2215
  %34 = and i64 %33, 3, !dbg !2215
  %35 = icmp eq i64 %34, 0, !dbg !2215
  br i1 %35, label %51, label %36, !dbg !2218

; <label>:36:                                     ; preds = %32
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2172, metadata !769), !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !2173, metadata !769), !dbg !2183
  %37 = icmp ugt i64 %29, 64, !dbg !2219
  br i1 %37, label %38, label %62, !dbg !2220

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0
  %40 = bitcast i32* %39 to i8*
  %41 = add i64 %29, -65, !dbg !2220
  %42 = and i64 %41, -64, !dbg !2220
  %43 = add i64 %42, 64, !dbg !2220
  %44 = add i64 %29, -64, !dbg !2220
  br label %45, !dbg !2220

; <label>:45:                                     ; preds = %38, %45
  %46 = phi i8* [ %30, %38 ], [ %48, %45 ]
  %47 = phi i64 [ %29, %38 ], [ %49, %45 ]
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !2173, metadata !769), !dbg !2183
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !2172, metadata !769), !dbg !2182
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %46, i64 64, i32 1, i1 false), !dbg !2221
  tail call void @md5_process_block(i8* %40, i64 64, %struct.md5_ctx* nonnull %2) #10, !dbg !2223
  %48 = getelementptr inbounds i8, i8* %46, i64 64, !dbg !2224
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !2172, metadata !769), !dbg !2182
  %49 = add i64 %47, -64, !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2173, metadata !769), !dbg !2183
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !2172, metadata !769), !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2173, metadata !769), !dbg !2183
  %50 = icmp ugt i64 %49, 64, !dbg !2219
  br i1 %50, label %45, label %59, !dbg !2220, !llvm.loop !2226

; <label>:51:                                     ; preds = %32
  %52 = and i64 %29, -64, !dbg !2228
  tail call void @md5_process_block(i8* %30, i64 %52, %struct.md5_ctx* nonnull %2) #10, !dbg !2230
  %53 = getelementptr inbounds i8, i8* %30, i64 %52, !dbg !2231
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2172, metadata !769), !dbg !2182
  %54 = and i64 %29, 63, !dbg !2232
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2173, metadata !769), !dbg !2183
  br label %55

; <label>:55:                                     ; preds = %51, %28
  %56 = phi i64 [ %54, %51 ], [ %29, %28 ]
  %57 = phi i8* [ %53, %51 ], [ %30, %28 ]
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !2172, metadata !769), !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !2173, metadata !769), !dbg !2183
  %58 = icmp eq i64 %56, 0, !dbg !2233
  br i1 %58, label %79, label %62, !dbg !2234

; <label>:59:                                     ; preds = %45
  %60 = getelementptr i8, i8* %30, i64 %43, !dbg !2220
  %61 = sub i64 %44, %42, !dbg !2220
  br label %62, !dbg !2235

; <label>:62:                                     ; preds = %59, %36, %55
  %63 = phi i8* [ %57, %55 ], [ %30, %36 ], [ %60, %59 ]
  %64 = phi i64 [ %56, %55 ], [ 64, %36 ], [ %61, %59 ]
  %65 = load i32, i32* %4, align 4, !dbg !2235, !tbaa !1678
  %66 = zext i32 %65 to i64, !dbg !2236
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !2179, metadata !769), !dbg !2237
  %67 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, !dbg !2238
  %68 = bitcast [32 x i32]* %67 to i8*, !dbg !2239
  %69 = getelementptr inbounds i8, i8* %68, i64 %66, !dbg !2239
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %63, i64 %64, i32 1, i1 false), !dbg !2240
  %70 = add i64 %64, %66, !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !2179, metadata !769), !dbg !2237
  %71 = icmp ugt i64 %70, 63, !dbg !2242
  br i1 %71, label %72, label %76, !dbg !2244

; <label>:72:                                     ; preds = %62
  tail call void @md5_process_block(i8* %68, i64 64, %struct.md5_ctx* nonnull %2) #10, !dbg !2245
  %73 = add i64 %70, -64, !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2179, metadata !769), !dbg !2237
  %74 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 16, !dbg !2248
  %75 = bitcast i32* %74 to i8*, !dbg !2249
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %75, i64 %73, i32 4, i1 false), !dbg !2249
  br label %76, !dbg !2250

; <label>:76:                                     ; preds = %72, %62
  %77 = phi i64 [ %73, %72 ], [ %70, %62 ]
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !2179, metadata !769), !dbg !2237
  %78 = trunc i64 %77 to i32, !dbg !2251
  store i32 %78, i32* %4, align 4, !dbg !2252, !tbaa !1678
  br label %79, !dbg !2253

; <label>:79:                                     ; preds = %55, %76
  ret void, !dbg !2254
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @md5_buffer(i8*, i64, i8* returned) local_unnamed_addr #6 !dbg !2255 {
  %4 = alloca %struct.md5_ctx, align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2259, metadata !769), !dbg !2263
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2260, metadata !769), !dbg !2264
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2261, metadata !769), !dbg !2265
  %5 = bitcast %struct.md5_ctx* %4 to i8*, !dbg !2266
  call void @llvm.lifetime.start.p0i8(i64 156, i8* nonnull %5) #10, !dbg !2266
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !2262, metadata !769), !dbg !2267
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !1669, metadata !769), !dbg !2268
  %6 = bitcast %struct.md5_ctx* %4 to <4 x i32>*, !dbg !2270
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2270, !tbaa !955
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 1, !dbg !2271
  store i32 0, i32* %7, align 4, !dbg !2272, !tbaa !955
  %8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 0, !dbg !2273
  store i32 0, i32* %8, align 16, !dbg !2274, !tbaa !955
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 5, !dbg !2275
  store i32 0, i32* %9, align 8, !dbg !2276, !tbaa !1678
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !2262, metadata !769), !dbg !2267
  call void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* nonnull %4) #10, !dbg !2277
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !2262, metadata !769), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !1731, metadata !769) #10, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1732, metadata !769) #10, !dbg !2280
  %10 = load i32, i32* %9, align 8, !dbg !2281, !tbaa !1678
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1733, metadata !769) #10, !dbg !2282
  %11 = icmp ult i32 %10, 56, !dbg !2283
  %12 = select i1 %11, i64 16, i64 32, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !1734, metadata !769) #10, !dbg !2285
  %13 = load i32, i32* %8, align 16, !dbg !2286, !tbaa !955
  %14 = add i32 %13, %10, !dbg !2286
  store i32 %14, i32* %8, align 16, !dbg !2286, !tbaa !955
  %15 = icmp ult i32 %14, %10, !dbg !2287
  %16 = load i32, i32* %7, align 4, !tbaa !955
  br i1 %15, label %17, label %19, !dbg !2288

; <label>:17:                                     ; preds = %3
  %18 = add i32 %16, 1, !dbg !2289
  store i32 %18, i32* %7, align 4, !dbg !2289, !tbaa !955
  br label %19, !dbg !2289

; <label>:19:                                     ; preds = %3, %17
  %20 = phi i32 [ %18, %17 ], [ %16, %3 ], !dbg !2290
  %21 = shl i32 %14, 3, !dbg !2291
  %22 = add nsw i64 %12, -2, !dbg !2292
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 %22, !dbg !2293
  store i32 %21, i32* %23, align 4, !dbg !2294, !tbaa !955
  %24 = shl i32 %20, 3, !dbg !2290
  %25 = lshr i32 %14, 29, !dbg !2290
  %26 = or i32 %24, %25, !dbg !2290
  %27 = add nsw i64 %12, -1, !dbg !2295
  %28 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 %27, !dbg !2296
  store i32 %26, i32* %28, align 4, !dbg !2297, !tbaa !955
  %29 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 0, !dbg !2298
  %30 = bitcast i32* %29 to i8*, !dbg !2298
  %31 = zext i32 %10 to i64, !dbg !2298
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !2298
  %33 = shl nsw i64 %22, 2, !dbg !2299
  %34 = sub nsw i64 %33, %31, !dbg !2300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %34, i32 1, i1 false) #10, !dbg !2301
  %35 = shl nuw nsw i64 %12, 2, !dbg !2302
  call void @md5_process_block(i8* %30, i64 %35, %struct.md5_ctx* nonnull %4) #10, !dbg !2303
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !1687, metadata !769) #10, !dbg !2304
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1688, metadata !769) #10, !dbg !2306
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1689, metadata !769) #10, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1695, metadata !769) #10, !dbg !2308
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1700, metadata !769) #10, !dbg !2310
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1695, metadata !2153) #10, !dbg !2311
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1700, metadata !769) #10, !dbg !2313
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1695, metadata !2157) #10, !dbg !2314
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1700, metadata !769) #10, !dbg !2316
  %36 = bitcast %struct.md5_ctx* %4 to <4 x i32>*, !dbg !2317
  %37 = load <4 x i32>, <4 x i32>* %36, align 16, !dbg !2317, !tbaa !955
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1695, metadata !2162) #10, !dbg !2318
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1700, metadata !769) #10, !dbg !2320
  %38 = bitcast i8* %2 to <4 x i32>*, !dbg !2321
  store <4 x i32> %37, <4 x i32>* %38, align 1, !dbg !2321
  call void @llvm.lifetime.end.p0i8(i64 156, i8* nonnull %5) #10, !dbg !2322
  ret i8* %2, !dbg !2323
}

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !2324 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2332, metadata !769), !dbg !2338
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2333, metadata !769), !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2334, metadata !769), !dbg !2340
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2335, metadata !769), !dbg !2341
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !2342
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2336, metadata !769), !dbg !2342
  ret void, !dbg !2343
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !2344 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2388, metadata !769), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2389, metadata !769), !dbg !2391
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2392
  br i1 %3, label %7, label %4, !dbg !2394

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !2395
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2332, metadata !769) #10, !dbg !2396
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2333, metadata !769) #10, !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2334, metadata !769) #10, !dbg !2399
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2335, metadata !769) #10, !dbg !2400
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !2401
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2336, metadata !769) #10, !dbg !2401
  br label %7, !dbg !2402

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2403
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !2404 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2449, metadata !769), !dbg !2464
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2450, metadata !769), !dbg !2465
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2466
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !2451, metadata !769), !dbg !2467
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2468
  br i1 %4, label %25, label %5, !dbg !2469

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10, !dbg !2470
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2452, metadata !769), !dbg !2471
  %7 = icmp ult i32 %6, 3, !dbg !2472
  br i1 %7, label %8, label %25, !dbg !2472

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #10, !dbg !2473
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2455, metadata !769), !dbg !2474
  %10 = icmp slt i32 %9, 0, !dbg !2475
  br i1 %10, label %11, label %15, !dbg !2476

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !2477
  %13 = load i32, i32* %12, align 4, !dbg !2477, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2458, metadata !769), !dbg !2478
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2479
  store i32 %13, i32* %12, align 4, !dbg !2480, !tbaa !955
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2481
  %17 = icmp eq i32 %16, 0, !dbg !2482
  br i1 %17, label %18, label %21, !dbg !2483

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10, !dbg !2484
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !2451, metadata !769), !dbg !2467
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2485
  br i1 %20, label %21, label %25, !dbg !2486

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !2487
  %23 = load i32, i32* %22, align 4, !dbg !2487, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !2461, metadata !769), !dbg !2488
  %24 = tail call i32 @close(i32 %9) #10, !dbg !2489
  store i32 %23, i32* %22, align 4, !dbg !2490, !tbaa !955
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !2491
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2492 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2494, metadata !769), !dbg !2497
  %2 = icmp eq i8* %0, null, !dbg !2498
  br i1 %2, label %3, label %6, !dbg !2500

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2501, !tbaa !776
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.80, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2503
  tail call void @abort() #15, !dbg !2504
  unreachable, !dbg !2504

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2505
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2495, metadata !769), !dbg !2506
  %8 = icmp eq i8* %7, null, !dbg !2507
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2508
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2509
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2496, metadata !769), !dbg !2510
  %11 = ptrtoint i8* %10 to i64, !dbg !2511
  %12 = ptrtoint i8* %0 to i64, !dbg !2511
  %13 = sub i64 %11, %12, !dbg !2511
  %14 = icmp sgt i64 %13, 6, !dbg !2513
  br i1 %14, label %15, label %24, !dbg !2514

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2515
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.81, i64 0, i64 0), i64 7) #14, !dbg !2516
  %18 = icmp eq i32 %17, 0, !dbg !2517
  br i1 %18, label %19, label %24, !dbg !2518

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2494, metadata !769), !dbg !2497
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i64 3) #14, !dbg !2519
  %21 = icmp eq i32 %20, 0, !dbg !2522
  br i1 %21, label %22, label %24, !dbg !2523

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2524
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2494, metadata !769), !dbg !2497
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2526, !tbaa !776
  br label %24, !dbg !2527

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2494, metadata !769), !dbg !2497
  store i8* %25, i8** @program_name, align 8, !dbg !2528, !tbaa !776
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2529, !tbaa !776
  ret void, !dbg !2530
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2531 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2536, metadata !769), !dbg !2539
  %2 = tail call i32* @__errno_location() #17, !dbg !2540
  %3 = load i32, i32* %2, align 4, !dbg !2540, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2537, metadata !769), !dbg !2541
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2542
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2542
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2542
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2543
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2543
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2538, metadata !769), !dbg !2544
  store i32 %3, i32* %2, align 4, !dbg !2545, !tbaa !955
  ret %struct.quoting_options* %8, !dbg !2546
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2547 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2553, metadata !769), !dbg !2554
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2555
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2555
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2556
  %5 = load i32, i32* %4, align 8, !dbg !2556, !tbaa !2557
  ret i32 %5, !dbg !2559
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2560 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2564, metadata !769), !dbg !2566
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2565, metadata !769), !dbg !2567
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2568
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2568
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2569
  store i32 %1, i32* %5, align 8, !dbg !2570, !tbaa !2557
  ret void, !dbg !2571
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2572 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2576, metadata !769), !dbg !2584
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2577, metadata !769), !dbg !2585
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2578, metadata !769), !dbg !2586
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2579, metadata !769), !dbg !2587
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2588
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2588
  %6 = lshr i8 %1, 5, !dbg !2589
  %7 = zext i8 %6 to i64, !dbg !2589
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2590
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2580, metadata !769), !dbg !2591
  %9 = and i8 %1, 31, !dbg !2592
  %10 = zext i8 %9 to i32, !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2582, metadata !769), !dbg !2594
  %11 = load i32, i32* %8, align 4, !dbg !2595, !tbaa !955
  %12 = lshr i32 %11, %10, !dbg !2596
  %13 = and i32 %12, 1, !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2583, metadata !769), !dbg !2598
  %14 = and i32 %2, 1, !dbg !2599
  %15 = xor i32 %13, %14, !dbg !2600
  %16 = shl i32 %15, %10, !dbg !2601
  %17 = xor i32 %16, %11, !dbg !2602
  store i32 %17, i32* %8, align 4, !dbg !2602, !tbaa !955
  ret i32 %13, !dbg !2603
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2604 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2608, metadata !769), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2609, metadata !769), !dbg !2612
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2608, metadata !769), !dbg !2611
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2608, metadata !769), !dbg !2611
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2616
  %6 = load i32, i32* %5, align 4, !dbg !2616, !tbaa !2617
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2610, metadata !769), !dbg !2618
  store i32 %1, i32* %5, align 4, !dbg !2619, !tbaa !2617
  ret i32 %6, !dbg !2620
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2621 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2625, metadata !769), !dbg !2628
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2626, metadata !769), !dbg !2629
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2627, metadata !769), !dbg !2630
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2631
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2625, metadata !769), !dbg !2628
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !769), !dbg !2628
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2634
  store i32 10, i32* %6, align 8, !dbg !2635, !tbaa !2557
  %7 = icmp ne i8* %1, null, !dbg !2636
  %8 = icmp ne i8* %2, null, !dbg !2638
  %9 = and i1 %7, %8, !dbg !2639
  br i1 %9, label %11, label %10, !dbg !2639

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2640
  unreachable, !dbg !2640

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2641
  store i8* %1, i8** %12, align 8, !dbg !2642, !tbaa !2643
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2644
  store i8* %2, i8** %13, align 8, !dbg !2645, !tbaa !2646
  ret void, !dbg !2647
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2648 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2652, metadata !769), !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2653, metadata !769), !dbg !2661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2654, metadata !769), !dbg !2662
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2655, metadata !769), !dbg !2663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2656, metadata !769), !dbg !2664
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2665
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2665
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2657, metadata !769), !dbg !2666
  %8 = tail call i32* @__errno_location() #17, !dbg !2667
  %9 = load i32, i32* %8, align 4, !dbg !2667, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2658, metadata !769), !dbg !2668
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2669
  %11 = load i32, i32* %10, align 8, !dbg !2669, !tbaa !2557
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2670
  %13 = load i32, i32* %12, align 4, !dbg !2670, !tbaa !2617
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2671
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2672
  %16 = load i8*, i8** %15, align 8, !dbg !2672, !tbaa !2643
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2673
  %18 = load i8*, i8** %17, align 8, !dbg !2673, !tbaa !2646
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2674
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2659, metadata !769), !dbg !2675
  store i32 %9, i32* %8, align 4, !dbg !2676, !tbaa !955
  ret i64 %19, !dbg !2677
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2678 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2684, metadata !769), !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2685, metadata !769), !dbg !2749
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2686, metadata !769), !dbg !2750
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2687, metadata !769), !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2688, metadata !769), !dbg !2752
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2689, metadata !769), !dbg !2753
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2690, metadata !769), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2691, metadata !769), !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2692, metadata !769), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2694, metadata !769), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2695, metadata !769), !dbg !2758
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2696, metadata !769), !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2697, metadata !769), !dbg !2760
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2698, metadata !769), !dbg !2761
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2762
  %14 = icmp eq i64 %13, 1, !dbg !2763
  %15 = lshr i32 %5, 1, !dbg !2764
  %16 = trunc i32 %15 to i8, !dbg !2764
  %17 = and i8 %16, 1, !dbg !2764
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2700, metadata !769), !dbg !2764
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2701, metadata !769), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2702, metadata !769), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2703, metadata !769), !dbg !2767
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2768

; <label>:27:                                     ; preds = %607, %9
  %28 = phi i32 [ %4, %9 ], [ %95, %607 ]
  %29 = phi i8* [ %7, %9 ], [ %96, %607 ]
  %30 = phi i8* [ %8, %9 ], [ %97, %607 ]
  %31 = phi i64 [ 0, %9 ], [ %125, %607 ]
  %32 = phi i8* [ null, %9 ], [ %99, %607 ]
  %33 = phi i64 [ 0, %9 ], [ %100, %607 ]
  %34 = phi i8 [ 0, %9 ], [ %101, %607 ]
  %35 = phi i64 [ %3, %9 ], [ %591, %607 ]
  %36 = phi i8 [ %17, %9 ], [ %102, %607 ]
  %37 = phi i8 [ 0, %9 ], [ %127, %607 ]
  %38 = phi i8 [ 0, %9 ], [ %128, %607 ]
  %39 = phi i8 [ 1, %9 ], [ %129, %607 ]
  %40 = phi i64 [ %1, %9 ], [ %125, %607 ]
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2703, metadata !769), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2702, metadata !769), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2700, metadata !769), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2687, metadata !769), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2698, metadata !769), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2697, metadata !769), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2696, metadata !769), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2695, metadata !769), !dbg !2758
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2692, metadata !769), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2691, metadata !769), !dbg !2755
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2688, metadata !769), !dbg !2752
  switch i32 %28, label %93 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %94
    i32 0, label %92
    i32 2, label %84
    i32 4, label %78
    i32 3, label %75
    i32 1, label %76
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !2769

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2688, metadata !769), !dbg !2752
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2700, metadata !769), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2700, metadata !769), !dbg !2764
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2688, metadata !769), !dbg !2752
  br label %94, !dbg !2770

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2700, metadata !769), !dbg !2764
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2688, metadata !769), !dbg !2752
  %43 = and i8 %36, 1, !dbg !2772
  %44 = icmp eq i8 %43, 0, !dbg !2772
  br i1 %44, label %45, label %94, !dbg !2770

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2774
  br i1 %46, label %94, label %47, !dbg !2777

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2774, !tbaa !1038
  br label %94, !dbg !2774

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.93, i64 0, i64 0), i32 %28), !dbg !2778
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2691, metadata !769), !dbg !2755
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i32 %28), !dbg !2782
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2692, metadata !769), !dbg !2756
  br label %51, !dbg !2783

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2692, metadata !769), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2691, metadata !769), !dbg !2755
  %54 = and i8 %36, 1, !dbg !2784
  %55 = icmp eq i8 %54, 0, !dbg !2784
  br i1 %55, label %56, label %72, !dbg !2786

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2696, metadata !769), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2696, metadata !769), !dbg !2759
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2694, metadata !769), !dbg !2757
  %57 = load i8, i8* %52, align 1, !dbg !2787, !tbaa !1038
  %58 = icmp eq i8 %57, 0, !dbg !2790
  br i1 %58, label %72, label %59, !dbg !2790

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2791

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2696, metadata !769), !dbg !2759
  %64 = icmp ult i64 %63, %40, !dbg !2791
  br i1 %64, label %65, label %67, !dbg !2794

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2791
  store i8 %61, i8* %66, align 1, !dbg !2791, !tbaa !1038
  br label %67, !dbg !2791

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2694, metadata !769), !dbg !2757
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2795
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2696, metadata !769), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2696, metadata !769), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2694, metadata !769), !dbg !2757
  %70 = load i8, i8* %69, align 1, !dbg !2787, !tbaa !1038
  %71 = icmp eq i8 %70, 0, !dbg !2790
  br i1 %71, label %72, label %60, !dbg !2790, !llvm.loop !2796

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2698, metadata !769), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2696, metadata !769), !dbg !2759
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2697, metadata !769), !dbg !2760
  br label %94, !dbg !2799

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2698, metadata !769), !dbg !2761
  br label %76, !dbg !2800

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2698, metadata !769), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2700, metadata !769), !dbg !2764
  br label %78, !dbg !2801

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2700, metadata !769), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2698, metadata !769), !dbg !2761
  %81 = and i8 %80, 1, !dbg !2802
  %82 = icmp eq i8 %81, 0, !dbg !2802
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2698, metadata !769), !dbg !2761
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2804
  br label %84, !dbg !2804

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2700, metadata !769), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2698, metadata !769), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2688, metadata !769), !dbg !2752
  %87 = and i8 %86, 1, !dbg !2805
  %88 = icmp eq i8 %87, 0, !dbg !2805
  br i1 %88, label %89, label %94, !dbg !2807

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2808
  br i1 %90, label %94, label %91, !dbg !2811

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2808, !tbaa !1038
  br label %94, !dbg !2808

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2700, metadata !769), !dbg !2764
  br label %94, !dbg !2812

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2813
  unreachable, !dbg !2813

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2700, metadata !769), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2698, metadata !769), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2697, metadata !769), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2696, metadata !769), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2692, metadata !769), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2691, metadata !769), !dbg !2755
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2688, metadata !769), !dbg !2752
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2693, metadata !769), !dbg !2814
  %103 = and i8 %101, 1
  %104 = icmp ne i8 %103, 0
  %105 = icmp ne i32 %95, 2
  %106 = and i1 %105, %104
  %107 = icmp ne i64 %100, 0
  %108 = and i1 %107, %106
  %109 = icmp ugt i64 %100, 1
  %110 = and i8 %102, 1
  %111 = icmp eq i8 %110, 0
  %112 = xor i1 %104, true
  %113 = icmp eq i32 %95, 2
  %114 = icmp ne i8 %110, 0
  %115 = and i1 %113, %114
  %116 = and i1 %21, %114
  %117 = or i1 %105, %111
  %118 = and i8 %101, %102
  %119 = and i8 %118, 1
  %120 = icmp ne i8 %119, 0
  %121 = and i1 %120, %107
  br label %122, !dbg !2815

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2703, metadata !769), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2702, metadata !769), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2687, metadata !769), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2695, metadata !769), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2693, metadata !769), !dbg !2814
  %131 = icmp eq i64 %126, -1, !dbg !2816
  br i1 %131, label %134, label %132, !dbg !2817

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2818
  br i1 %133, label %590, label %138, !dbg !2819

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2820
  %136 = load i8, i8* %135, align 1, !dbg !2820, !tbaa !1038
  %137 = icmp eq i8 %136, 0, !dbg !2821
  br i1 %137, label %590, label %138, !dbg !2819

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2709, metadata !769), !dbg !2822
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2710, metadata !769), !dbg !2823
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2711, metadata !769), !dbg !2824
  br i1 %108, label %139, label %154, !dbg !2825

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2827
  %141 = and i1 %109, %131, !dbg !2828
  br i1 %141, label %142, label %144, !dbg !2828

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2687, metadata !769), !dbg !2751
  br label %144, !dbg !2830

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2687, metadata !769), !dbg !2751
  %146 = icmp ugt i64 %140, %145, !dbg !2831
  br i1 %146, label %154, label %147, !dbg !2832

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2833
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2834
  %150 = icmp ne i32 %149, 0, !dbg !2835
  %151 = or i1 %150, %111, !dbg !2836
  %152 = xor i1 %150, true, !dbg !2836
  %153 = zext i1 %152 to i8, !dbg !2836
  br i1 %151, label %154, label %635, !dbg !2836

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2709, metadata !769), !dbg !2822
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2687, metadata !769), !dbg !2751
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2837
  %158 = load i8, i8* %157, align 1, !dbg !2837, !tbaa !1038
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2704, metadata !769), !dbg !2838
  switch i8 %158, label %297 [
    i8 0, label %159
    i8 63, label %209
    i8 7, label %256
    i8 8, label %246
    i8 12, label %247
    i8 10, label %254
    i8 13, label %248
    i8 9, label %249
    i8 11, label %250
    i8 92, label %251
    i8 123, label %258
    i8 125, label %258
    i8 35, label %269
    i8 126, label %269
    i8 32, label %271
    i8 33, label %272
    i8 34, label %272
    i8 36, label %272
    i8 38, label %272
    i8 40, label %272
    i8 41, label %272
    i8 42, label %272
    i8 59, label %272
    i8 60, label %272
    i8 61, label %272
    i8 62, label %272
    i8 91, label %272
    i8 94, label %272
    i8 96, label %272
    i8 124, label %272
    i8 39, label %274
    i8 37, label %470
    i8 43, label %470
    i8 44, label %470
    i8 45, label %470
    i8 46, label %470
    i8 47, label %470
    i8 48, label %470
    i8 49, label %470
    i8 50, label %470
    i8 51, label %470
    i8 52, label %470
    i8 53, label %470
    i8 54, label %470
    i8 55, label %470
    i8 56, label %470
    i8 57, label %470
    i8 58, label %470
    i8 65, label %470
    i8 66, label %470
    i8 67, label %470
    i8 68, label %470
    i8 69, label %470
    i8 70, label %470
    i8 71, label %470
    i8 72, label %470
    i8 73, label %470
    i8 74, label %470
    i8 75, label %470
    i8 76, label %470
    i8 77, label %470
    i8 78, label %470
    i8 79, label %470
    i8 80, label %470
    i8 81, label %470
    i8 82, label %470
    i8 83, label %470
    i8 84, label %470
    i8 85, label %470
    i8 86, label %470
    i8 87, label %470
    i8 88, label %470
    i8 89, label %470
    i8 90, label %470
    i8 93, label %470
    i8 95, label %470
    i8 97, label %470
    i8 98, label %470
    i8 99, label %470
    i8 100, label %470
    i8 101, label %470
    i8 102, label %470
    i8 103, label %470
    i8 104, label %470
    i8 105, label %470
    i8 106, label %470
    i8 107, label %470
    i8 108, label %470
    i8 109, label %470
    i8 110, label %470
    i8 111, label %470
    i8 112, label %470
    i8 113, label %470
    i8 114, label %470
    i8 115, label %470
    i8 116, label %470
    i8 117, label %470
    i8 118, label %470
    i8 119, label %470
    i8 120, label %470
    i8 121, label %470
    i8 122, label %470
  ], !dbg !2839

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2840

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2841

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2710, metadata !769), !dbg !2823
  %162 = and i8 %127, 1, !dbg !2845
  %163 = icmp eq i8 %162, 0, !dbg !2845
  %164 = and i1 %113, %163, !dbg !2845
  br i1 %164, label %165, label %181, !dbg !2845

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2847
  br i1 %166, label %167, label %169, !dbg !2851

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2847
  store i8 39, i8* %168, align 1, !dbg !2847, !tbaa !1038
  br label %169, !dbg !2847

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2694, metadata !769), !dbg !2757
  %171 = icmp ult i64 %170, %130, !dbg !2852
  br i1 %171, label %172, label %174, !dbg !2855

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2852
  store i8 36, i8* %173, align 1, !dbg !2852, !tbaa !1038
  br label %174, !dbg !2852

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2694, metadata !769), !dbg !2757
  %176 = icmp ult i64 %175, %130, !dbg !2856
  br i1 %176, label %177, label %179, !dbg !2859

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2856
  store i8 39, i8* %178, align 1, !dbg !2856, !tbaa !1038
  br label %179, !dbg !2856

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2701, metadata !769), !dbg !2765
  br label %181, !dbg !2860

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2694, metadata !769), !dbg !2757
  %184 = icmp ult i64 %182, %130, !dbg !2861
  br i1 %184, label %185, label %187, !dbg !2864

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2861
  store i8 92, i8* %186, align 1, !dbg !2861, !tbaa !1038
  br label %187, !dbg !2861

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2694, metadata !769), !dbg !2757
  br i1 %105, label %189, label %470, !dbg !2865

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2867
  %191 = icmp ult i64 %190, %155, !dbg !2868
  br i1 %191, label %192, label %470, !dbg !2869

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2870
  %194 = load i8, i8* %193, align 1, !dbg !2870, !tbaa !1038
  %195 = add i8 %194, -48, !dbg !2871
  %196 = icmp ult i8 %195, 10, !dbg !2871
  br i1 %196, label %197, label %470, !dbg !2871

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2872
  br i1 %198, label %199, label %201, !dbg !2876

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2872
  store i8 48, i8* %200, align 1, !dbg !2872, !tbaa !1038
  br label %201, !dbg !2872

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2694, metadata !769), !dbg !2757
  %203 = icmp ult i64 %202, %130, !dbg !2877
  br i1 %203, label %204, label %206, !dbg !2880

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2877
  store i8 48, i8* %205, align 1, !dbg !2877, !tbaa !1038
  br label %206, !dbg !2877

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2694, metadata !769), !dbg !2757
  br label %470, !dbg !2881

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2882

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2883

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2884

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2886

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2888
  %214 = icmp ult i64 %213, %155, !dbg !2889
  br i1 %214, label %215, label %470, !dbg !2890

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2891
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2892
  %218 = load i8, i8* %217, align 1, !dbg !2892, !tbaa !1038
  %219 = icmp eq i8 %218, 63, !dbg !2893
  br i1 %219, label %220, label %470, !dbg !2894

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2895
  %222 = load i8, i8* %221, align 1, !dbg !2895, !tbaa !1038
  %223 = sext i8 %222 to i32, !dbg !2895
  switch i32 %223, label %470 [
    i32 33, label %224
    i32 39, label %224
    i32 40, label %224
    i32 41, label %224
    i32 45, label %224
    i32 47, label %224
    i32 60, label %224
    i32 61, label %224
    i32 62, label %224
  ], !dbg !2896

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2897

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2704, metadata !769), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2693, metadata !769), !dbg !2814
  %226 = icmp ult i64 %124, %130, !dbg !2899
  br i1 %226, label %227, label %229, !dbg !2902

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2899
  store i8 63, i8* %228, align 1, !dbg !2899, !tbaa !1038
  br label %229, !dbg !2899

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2694, metadata !769), !dbg !2757
  %231 = icmp ult i64 %230, %130, !dbg !2903
  br i1 %231, label %232, label %234, !dbg !2906

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2903
  store i8 34, i8* %233, align 1, !dbg !2903, !tbaa !1038
  br label %234, !dbg !2903

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2694, metadata !769), !dbg !2757
  %236 = icmp ult i64 %235, %130, !dbg !2907
  br i1 %236, label %237, label %239, !dbg !2910

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2907
  store i8 34, i8* %238, align 1, !dbg !2907, !tbaa !1038
  br label %239, !dbg !2907

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2694, metadata !769), !dbg !2757
  %241 = icmp ult i64 %240, %130, !dbg !2911
  br i1 %241, label %242, label %244, !dbg !2914

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2911
  store i8 63, i8* %243, align 1, !dbg !2911, !tbaa !1038
  br label %244, !dbg !2911

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2694, metadata !769), !dbg !2757
  br label %470, !dbg !2915

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2708, metadata !769), !dbg !2916
  br label %256, !dbg !2917

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2708, metadata !769), !dbg !2916
  br label %256, !dbg !2918

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2708, metadata !769), !dbg !2916
  br label %254, !dbg !2919

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2708, metadata !769), !dbg !2916
  br label %254, !dbg !2920

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2708, metadata !769), !dbg !2916
  br label %256, !dbg !2921

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2708, metadata !769), !dbg !2916
  br i1 %113, label %252, label %253, !dbg !2922

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2923

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2926

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2708, metadata !769), !dbg !2916
  br i1 %117, label %256, label %635, !dbg !2928

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2708, metadata !769), !dbg !2916
  br i1 %104, label %497, label %470, !dbg !2930

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2931
  br i1 %259, label %260, label %265, !dbg !2933

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2934, !tbaa !1038
  %262 = icmp ne i8 %261, 0, !dbg !2935
  %263 = icmp ne i64 %123, 0, !dbg !2936
  %264 = or i1 %263, %262, !dbg !2938
  br i1 %264, label %470, label %271, !dbg !2938

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2939
  %267 = icmp ne i64 %123, 0, !dbg !2936
  %268 = or i1 %267, %266, !dbg !2933
  br i1 %268, label %470, label %271, !dbg !2933

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2936
  br i1 %270, label %271, label %470, !dbg !2940

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2711, metadata !769), !dbg !2824
  br label %272, !dbg !2941

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2711, metadata !769), !dbg !2824
  br i1 %117, label %470, label %635, !dbg !2942

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2702, metadata !769), !dbg !2766
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2711, metadata !769), !dbg !2824
  br i1 %113, label %275, label %470, !dbg !2944

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2945

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2948
  %278 = icmp ne i64 %125, 0, !dbg !2950
  %279 = or i1 %278, %277, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2695, metadata !769), !dbg !2758
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2685, metadata !769), !dbg !2749
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2951
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2695, metadata !769), !dbg !2758
  %282 = icmp ult i64 %124, %281, !dbg !2952
  br i1 %282, label %283, label %285, !dbg !2955

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2952
  store i8 39, i8* %284, align 1, !dbg !2952, !tbaa !1038
  br label %285, !dbg !2952

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2694, metadata !769), !dbg !2757
  %287 = icmp ult i64 %286, %281, !dbg !2956
  br i1 %287, label %288, label %290, !dbg !2959

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2956
  store i8 92, i8* %289, align 1, !dbg !2956, !tbaa !1038
  br label %290, !dbg !2956

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2694, metadata !769), !dbg !2757
  %292 = icmp ult i64 %291, %281, !dbg !2960
  br i1 %292, label %293, label %295, !dbg !2963

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2960
  store i8 39, i8* %294, align 1, !dbg !2960, !tbaa !1038
  br label %295, !dbg !2960

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2701, metadata !769), !dbg !2765
  br label %470, !dbg !2964

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2965

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2712, metadata !769), !dbg !2966
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2967
  %300 = load i16*, i16** %299, align 8, !dbg !2967, !tbaa !776
  %301 = zext i8 %158 to i64, !dbg !2967
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2967
  %303 = load i16, i16* %302, align 2, !dbg !2967, !tbaa !1260
  %304 = lshr i16 %303, 14, !dbg !2969
  %305 = trunc i16 %304 to i8, !dbg !2969
  %306 = and i8 %305, 1, !dbg !2969
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2715, metadata !769), !dbg !2970
  br label %362, !dbg !2971

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2972
  store i64 0, i64* %10, align 8, !dbg !2973
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2712, metadata !769), !dbg !2966
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2715, metadata !769), !dbg !2970
  %308 = icmp eq i64 %155, -1, !dbg !2974
  br i1 %308, label %309, label %311, !dbg !2976

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2687, metadata !769), !dbg !2751
  br label %311, !dbg !2978

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2687, metadata !769), !dbg !2751
  br label %313, !dbg !2979, !llvm.loop !2980

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2715, metadata !769), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2712, metadata !769), !dbg !2966
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2982
  %316 = add i64 %314, %123, !dbg !2983
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2984
  %318 = sub i64 %312, %316, !dbg !2985
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2716, metadata !769), !dbg !2986
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2734, metadata !769), !dbg !2987
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2737, metadata !769), !dbg !2989
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2990

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2715, metadata !769), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2712, metadata !769), !dbg !2966
  %321 = icmp ugt i64 %312, %316, !dbg !2991
  br i1 %321, label %322, label %347, !dbg !2993

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2994

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2712, metadata !769), !dbg !2966
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2994
  %327 = load i8, i8* %326, align 1, !dbg !2994, !tbaa !1038
  %328 = icmp eq i8 %327, 0, !dbg !2993
  br i1 %328, label %347, label %329, !dbg !2995

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2996
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2712, metadata !769), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2712, metadata !769), !dbg !2966
  %331 = add i64 %330, %123, !dbg !2997
  %332 = icmp ult i64 %331, %312, !dbg !2991
  br i1 %332, label %323, label %347, !dbg !2993, !llvm.loop !2998

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2999
  %335 = and i1 %115, %334, !dbg !3002
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2738, metadata !769), !dbg !3003
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2738, metadata !769), !dbg !3003
  br i1 %335, label %336, label %350, !dbg !3002

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !3004

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2738, metadata !769), !dbg !3003
  %339 = add i64 %338, %316, !dbg !3004
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !3005
  %341 = load i8, i8* %340, align 1, !dbg !3005, !tbaa !1038
  %342 = sext i8 %341 to i32, !dbg !3005
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !3006

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2738, metadata !769), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2738, metadata !769), !dbg !3003
  %345 = icmp ult i64 %344, %319, !dbg !2999
  br i1 %345, label %337, label %350, !dbg !3008, !llvm.loop !3009

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !3011

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2715, metadata !769), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2712, metadata !769), !dbg !2966
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !3011
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !3012, !tbaa !955
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2734, metadata !769), !dbg !2987
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !3014
  %353 = icmp eq i32 %352, 0, !dbg !3014
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2715, metadata !769), !dbg !2970
  %354 = select i1 %353, i8 0, i8 %315, !dbg !3015
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2715, metadata !769), !dbg !2970
  %355 = add i64 %319, %314, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2712, metadata !769), !dbg !2966
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2715, metadata !769), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2712, metadata !769), !dbg !2966
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !3011
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2716, metadata !769), !dbg !2986
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !3017
  %357 = icmp eq i32 %356, 0, !dbg !3018
  br i1 %357, label %313, label %358, !dbg !3019, !llvm.loop !2980

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !3020
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2715, metadata !769), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2712, metadata !769), !dbg !2966
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !3011
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !3020
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2715, metadata !769), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2712, metadata !769), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2687, metadata !769), !dbg !2751
  %366 = and i8 %365, 1, !dbg !3021
  %367 = icmp ne i8 %366, 0, !dbg !3021
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2711, metadata !769), !dbg !2824
  %368 = icmp ult i64 %364, 2, !dbg !3022
  %369 = or i1 %367, %112, !dbg !3023
  %370 = and i1 %368, %369, !dbg !3024
  br i1 %370, label %470, label %371, !dbg !3024

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2745, metadata !769), !dbg !3026
  br label %373, !dbg !3027

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2710, metadata !769), !dbg !2823
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2709, metadata !769), !dbg !2822
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2704, metadata !769), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2693, metadata !769), !dbg !2814
  br i1 %369, label %426, label %380, !dbg !3028

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !3033

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2710, metadata !769), !dbg !2823
  %382 = and i8 %376, 1, !dbg !3036
  %383 = icmp eq i8 %382, 0, !dbg !3036
  %384 = and i1 %113, %383, !dbg !3036
  br i1 %384, label %385, label %401, !dbg !3036

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !3038
  br i1 %386, label %387, label %389, !dbg !3042

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !3038
  store i8 39, i8* %388, align 1, !dbg !3038, !tbaa !1038
  br label %389, !dbg !3038

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2694, metadata !769), !dbg !2757
  %391 = icmp ult i64 %390, %130, !dbg !3043
  br i1 %391, label %392, label %394, !dbg !3046

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !3043
  store i8 36, i8* %393, align 1, !dbg !3043, !tbaa !1038
  br label %394, !dbg !3043

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2694, metadata !769), !dbg !2757
  %396 = icmp ult i64 %395, %130, !dbg !3047
  br i1 %396, label %397, label %399, !dbg !3050

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3047
  store i8 39, i8* %398, align 1, !dbg !3047, !tbaa !1038
  br label %399, !dbg !3047

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2701, metadata !769), !dbg !2765
  br label %401, !dbg !3051

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2694, metadata !769), !dbg !2757
  %404 = icmp ult i64 %402, %130, !dbg !3052
  br i1 %404, label %405, label %407, !dbg !3055

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !3052
  store i8 92, i8* %406, align 1, !dbg !3052, !tbaa !1038
  br label %407, !dbg !3052

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2694, metadata !769), !dbg !2757
  %409 = icmp ult i64 %408, %130, !dbg !3056
  br i1 %409, label %410, label %414, !dbg !3059

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !3056
  %412 = or i8 %411, 48, !dbg !3056
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3056
  store i8 %412, i8* %413, align 1, !dbg !3056, !tbaa !1038
  br label %414, !dbg !3056

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2694, metadata !769), !dbg !2757
  %416 = icmp ult i64 %415, %130, !dbg !3060
  br i1 %416, label %417, label %422, !dbg !3063

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !3060
  %419 = and i8 %418, 7, !dbg !3060
  %420 = or i8 %419, 48, !dbg !3060
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !3060
  store i8 %420, i8* %421, align 1, !dbg !3060, !tbaa !1038
  br label %422, !dbg !3060

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2694, metadata !769), !dbg !2757
  %424 = and i8 %377, 7, !dbg !3064
  %425 = or i8 %424, 48, !dbg !3065
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2704, metadata !769), !dbg !2838
  br label %435, !dbg !3066

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !3067
  %428 = icmp eq i8 %427, 0, !dbg !3067
  br i1 %428, label %435, label %429, !dbg !3069

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !3070
  br i1 %430, label %431, label %433, !dbg !3074

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !3070
  store i8 92, i8* %432, align 1, !dbg !3070, !tbaa !1038
  br label %433, !dbg !3070

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2709, metadata !769), !dbg !2822
  br label %435, !dbg !3075

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2710, metadata !769), !dbg !2823
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2709, metadata !769), !dbg !2822
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2704, metadata !769), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2694, metadata !769), !dbg !2757
  %441 = add i64 %374, 1, !dbg !3076
  %442 = icmp ugt i64 %372, %441, !dbg !3078
  br i1 %442, label %443, label %535, !dbg !3079

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !3080
  %445 = icmp ne i8 %444, 0, !dbg !3080
  %446 = and i8 %440, 1, !dbg !3080
  %447 = icmp eq i8 %446, 0, !dbg !3080
  %448 = and i1 %445, %447, !dbg !3080
  br i1 %448, label %449, label %460, !dbg !3080

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !3083
  br i1 %450, label %451, label %453, !dbg !3087

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !3083
  store i8 39, i8* %452, align 1, !dbg !3083, !tbaa !1038
  br label %453, !dbg !3083

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2694, metadata !769), !dbg !2757
  %455 = icmp ult i64 %454, %130, !dbg !3088
  br i1 %455, label %456, label %458, !dbg !3091

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3088
  store i8 39, i8* %457, align 1, !dbg !3088, !tbaa !1038
  br label %458, !dbg !3088

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2701, metadata !769), !dbg !2765
  br label %460, !dbg !3092

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2694, metadata !769), !dbg !2757
  %463 = icmp ult i64 %461, %130, !dbg !3093
  br i1 %463, label %464, label %466, !dbg !3096

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !3093
  store i8 %438, i8* %465, align 1, !dbg !3093, !tbaa !1038
  br label %466, !dbg !3093

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2693, metadata !769), !dbg !2814
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !3097
  %469 = load i8, i8* %468, align 1, !dbg !3097, !tbaa !1038
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2704, metadata !769), !dbg !2838
  br label %373, !dbg !3098, !llvm.loop !3099

; <label>:470:                                    ; preds = %362, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %272, %187, %189, %192, %206, %208, %210, %211, %269, %265, %260, %274, %295, %256, %244, %220, %215, %212, %209
  %471 = phi i64 [ %123, %295 ], [ %123, %274 ], [ %123, %272 ], [ %123, %269 ], [ %123, %260 ], [ %123, %265 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %362 ]
  %472 = phi i64 [ %296, %295 ], [ %124, %274 ], [ %124, %272 ], [ %124, %269 ], [ %124, %260 ], [ %124, %265 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %362 ]
  %473 = phi i64 [ %280, %295 ], [ %125, %274 ], [ %125, %272 ], [ %125, %269 ], [ %125, %260 ], [ %125, %265 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %362 ]
  %474 = phi i64 [ %155, %295 ], [ %155, %274 ], [ %155, %272 ], [ %155, %269 ], [ -1, %260 ], [ %155, %265 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %363, %362 ]
  %475 = phi i8 [ 0, %295 ], [ %127, %274 ], [ %127, %272 ], [ %127, %269 ], [ %127, %260 ], [ %127, %265 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %362 ]
  %476 = phi i8 [ 1, %295 ], [ 1, %274 ], [ %128, %272 ], [ %128, %269 ], [ %128, %260 ], [ %128, %265 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %362 ]
  %477 = phi i8 [ 39, %295 ], [ 39, %274 ], [ %158, %272 ], [ %158, %269 ], [ %158, %260 ], [ %158, %265 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %362 ]
  %478 = phi i8 [ 0, %295 ], [ 0, %274 ], [ 0, %272 ], [ 0, %269 ], [ 0, %260 ], [ 0, %265 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %362 ]
  %479 = phi i8 [ 1, %295 ], [ 1, %274 ], [ %273, %272 ], [ 0, %269 ], [ 0, %260 ], [ 0, %265 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %366, %362 ]
  %480 = phi i64 [ %281, %295 ], [ %130, %274 ], [ %130, %272 ], [ %130, %269 ], [ %130, %260 ], [ %130, %265 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %362 ]
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2711, metadata !769), !dbg !2824
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2710, metadata !769), !dbg !2823
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2709, metadata !769), !dbg !2822
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2704, metadata !769), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2702, metadata !769), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2687, metadata !769), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2695, metadata !769), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2693, metadata !769), !dbg !2814
  br i1 %106, label %482, label %481, !dbg !3102

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !3104

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !3105

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !3106
  %485 = zext i8 %484 to i64, !dbg !3106
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !3107
  %487 = load i32, i32* %486, align 4, !dbg !3107, !tbaa !955
  %488 = and i8 %477, 31, !dbg !3108
  %489 = zext i8 %488 to i32, !dbg !3109
  %490 = shl i32 1, %489, !dbg !3110
  %491 = and i32 %487, %490, !dbg !3110
  %492 = icmp eq i32 %491, 0, !dbg !3110
  %493 = icmp eq i8 %156, 0, !dbg !3111
  %494 = and i1 %493, %492, !dbg !3112
  br i1 %494, label %535, label %497, !dbg !3112

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !3111
  br i1 %496, label %535, label %497, !dbg !3113

; <label>:497:                                    ; preds = %256, %483, %495
  %498 = phi i64 [ %471, %483 ], [ %471, %495 ], [ %123, %256 ]
  %499 = phi i64 [ %472, %483 ], [ %472, %495 ], [ %124, %256 ]
  %500 = phi i64 [ %473, %483 ], [ %473, %495 ], [ %125, %256 ]
  %501 = phi i64 [ %474, %483 ], [ %474, %495 ], [ %155, %256 ]
  %502 = phi i8 [ %475, %483 ], [ %475, %495 ], [ %127, %256 ]
  %503 = phi i8 [ %476, %483 ], [ %476, %495 ], [ %128, %256 ]
  %504 = phi i8 [ %477, %483 ], [ %477, %495 ], [ %257, %256 ]
  %505 = phi i8 [ %479, %483 ], [ %479, %495 ], [ 0, %256 ]
  %506 = phi i64 [ %480, %483 ], [ %480, %495 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2711, metadata !769), !dbg !2824
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2704, metadata !769), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2702, metadata !769), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2687, metadata !769), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2695, metadata !769), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2693, metadata !769), !dbg !2814
  br i1 %111, label %507, label %635, !dbg !3114

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2710, metadata !769), !dbg !2823
  %508 = and i8 %502, 1, !dbg !3116
  %509 = icmp eq i8 %508, 0, !dbg !3116
  %510 = and i1 %113, %509, !dbg !3116
  br i1 %510, label %511, label %527, !dbg !3116

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !3118
  br i1 %512, label %513, label %515, !dbg !3122

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !3118
  store i8 39, i8* %514, align 1, !dbg !3118, !tbaa !1038
  br label %515, !dbg !3118

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2694, metadata !769), !dbg !2757
  %517 = icmp ult i64 %516, %506, !dbg !3123
  br i1 %517, label %518, label %520, !dbg !3126

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !3123
  store i8 36, i8* %519, align 1, !dbg !3123, !tbaa !1038
  br label %520, !dbg !3123

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2694, metadata !769), !dbg !2757
  %522 = icmp ult i64 %521, %506, !dbg !3127
  br i1 %522, label %523, label %525, !dbg !3130

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !3127
  store i8 39, i8* %524, align 1, !dbg !3127, !tbaa !1038
  br label %525, !dbg !3127

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2701, metadata !769), !dbg !2765
  br label %527, !dbg !3131

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2694, metadata !769), !dbg !2757
  %530 = icmp ult i64 %528, %506, !dbg !3132
  br i1 %530, label %531, label %533, !dbg !3135

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3132
  store i8 92, i8* %532, align 1, !dbg !3132, !tbaa !1038
  br label %533, !dbg !3132

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2711, metadata !769), !dbg !2824
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2710, metadata !769), !dbg !2823
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2704, metadata !769), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2702, metadata !769), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2687, metadata !769), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2695, metadata !769), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2693, metadata !769), !dbg !2814
  br label %562, !dbg !3136

; <label>:535:                                    ; preds = %435, %253, %483, %252, %495
  %536 = phi i64 [ %471, %495 ], [ %123, %252 ], [ %471, %483 ], [ %123, %253 ], [ %374, %435 ]
  %537 = phi i64 [ %472, %495 ], [ %124, %252 ], [ %472, %483 ], [ %124, %253 ], [ %436, %435 ]
  %538 = phi i64 [ %473, %495 ], [ %125, %252 ], [ %473, %483 ], [ %125, %253 ], [ %125, %435 ]
  %539 = phi i64 [ %474, %495 ], [ %155, %252 ], [ %474, %483 ], [ %155, %253 ], [ %363, %435 ]
  %540 = phi i8 [ %475, %495 ], [ %127, %252 ], [ %475, %483 ], [ %127, %253 ], [ %437, %435 ]
  %541 = phi i8 [ %476, %495 ], [ %128, %252 ], [ %476, %483 ], [ %128, %253 ], [ %128, %435 ]
  %542 = phi i8 [ %477, %495 ], [ 92, %252 ], [ %477, %483 ], [ 92, %253 ], [ %438, %435 ]
  %543 = phi i8 [ %478, %495 ], [ 0, %252 ], [ %478, %483 ], [ 0, %253 ], [ %440, %435 ]
  %544 = phi i8 [ %479, %495 ], [ 0, %252 ], [ %479, %483 ], [ 0, %253 ], [ %366, %435 ]
  %545 = phi i64 [ %480, %495 ], [ %130, %252 ], [ %480, %483 ], [ %130, %253 ], [ %130, %435 ]
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2711, metadata !769), !dbg !2824
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2710, metadata !769), !dbg !2823
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2704, metadata !769), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2702, metadata !769), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2687, metadata !769), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2695, metadata !769), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2693, metadata !769), !dbg !2814
  %546 = and i8 %540, 1, !dbg !3136
  %547 = icmp ne i8 %546, 0, !dbg !3136
  %548 = and i8 %543, 1, !dbg !3136
  %549 = icmp eq i8 %548, 0, !dbg !3136
  %550 = and i1 %547, %549, !dbg !3136
  br i1 %550, label %551, label %562, !dbg !3136

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !3139
  br i1 %552, label %553, label %555, !dbg !3143

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !3139
  store i8 39, i8* %554, align 1, !dbg !3139, !tbaa !1038
  br label %555, !dbg !3139

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2694, metadata !769), !dbg !2757
  %557 = icmp ult i64 %556, %545, !dbg !3144
  br i1 %557, label %558, label %560, !dbg !3147

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !3144
  store i8 39, i8* %559, align 1, !dbg !3144, !tbaa !1038
  br label %560, !dbg !3144

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2701, metadata !769), !dbg !2765
  br label %562, !dbg !3148

; <label>:562:                                    ; preds = %533, %535, %560
  %563 = phi i64 [ %545, %560 ], [ %545, %535 ], [ %506, %533 ]
  %564 = phi i8 [ %544, %560 ], [ %544, %535 ], [ %505, %533 ]
  %565 = phi i8 [ %542, %560 ], [ %542, %535 ], [ %504, %533 ]
  %566 = phi i8 [ %541, %560 ], [ %541, %535 ], [ %503, %533 ]
  %567 = phi i64 [ %539, %560 ], [ %539, %535 ], [ %501, %533 ]
  %568 = phi i64 [ %538, %560 ], [ %538, %535 ], [ %500, %533 ]
  %569 = phi i64 [ %536, %560 ], [ %536, %535 ], [ %498, %533 ]
  %570 = phi i64 [ %561, %560 ], [ %537, %535 ], [ %534, %533 ]
  %571 = phi i8 [ 0, %560 ], [ %540, %535 ], [ %529, %533 ]
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2694, metadata !769), !dbg !2757
  %572 = icmp ult i64 %570, %563, !dbg !3149
  br i1 %572, label %573, label %575, !dbg !3152

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !3149
  store i8 %565, i8* %574, align 1, !dbg !3149, !tbaa !1038
  br label %575, !dbg !3149

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2694, metadata !769), !dbg !2757
  %577 = and i8 %564, 1, !dbg !3153
  %578 = icmp eq i8 %577, 0, !dbg !3153
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2703, metadata !769), !dbg !2767
  %579 = select i1 %578, i8 0, i8 %129, !dbg !3155
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2703, metadata !769), !dbg !2767
  br label %580, !dbg !3156

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2703, metadata !769), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2702, metadata !769), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2701, metadata !769), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2687, metadata !769), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2695, metadata !769), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2693, metadata !769), !dbg !2814
  %589 = add i64 %581, 1, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2693, metadata !769), !dbg !2814
  br label %122, !dbg !3158, !llvm.loop !3159

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !3161
  %593 = and i1 %113, %592, !dbg !3163
  %594 = xor i1 %593, true, !dbg !3163
  %595 = or i1 %111, %594, !dbg !3163
  br i1 %595, label %596, label %635, !dbg !3163

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !3164
  %598 = xor i1 %597, true, !dbg !3164
  %599 = and i8 %128, 1, !dbg !3166
  %600 = icmp eq i8 %599, 0, !dbg !3166
  %601 = or i1 %600, %598, !dbg !3164
  br i1 %601, label %611, label %602, !dbg !3164

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !3167
  %604 = icmp eq i8 %603, 0, !dbg !3167
  br i1 %604, label %607, label %605, !dbg !3170

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !3171
  br label %645, !dbg !3172

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !3173
  %609 = icmp ne i64 %125, 0, !dbg !3175
  %610 = and i1 %609, %608, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2694, metadata !769), !dbg !2757
  br i1 %610, label %27, label %611, !dbg !3176

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !3177
  %613 = and i1 %612, %111, !dbg !3179
  br i1 %613, label %614, label %630, !dbg !3179

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2696, metadata !769), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2694, metadata !769), !dbg !2757
  %615 = load i8, i8* %99, align 1, !dbg !3180, !tbaa !1038
  %616 = icmp eq i8 %615, 0, !dbg !3183
  br i1 %616, label %630, label %617, !dbg !3183

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !3184

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2694, metadata !769), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2696, metadata !769), !dbg !2759
  %622 = icmp ult i64 %621, %130, !dbg !3184
  br i1 %622, label %623, label %625, !dbg !3187

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3184
  store i8 %619, i8* %624, align 1, !dbg !3184, !tbaa !1038
  br label %625, !dbg !3184

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2694, metadata !769), !dbg !2757
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2696, metadata !769), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2696, metadata !769), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2694, metadata !769), !dbg !2757
  %628 = load i8, i8* %627, align 1, !dbg !3180, !tbaa !1038
  %629 = icmp eq i8 %628, 0, !dbg !3183
  br i1 %629, label %630, label %618, !dbg !3183, !llvm.loop !3189

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2694, metadata !769), !dbg !2757
  %632 = icmp ult i64 %631, %130, !dbg !3191
  br i1 %632, label %633, label %645, !dbg !3193

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !3194
  store i8 0, i8* %634, align 1, !dbg !3195, !tbaa !1038
  br label %645, !dbg !3194

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2685, metadata !769), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2687, metadata !769), !dbg !2751
  %639 = icmp ne i32 %636, 2, !dbg !3196
  %640 = icmp eq i8 %103, 0, !dbg !3198
  %641 = or i1 %639, %640, !dbg !3199
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2688, metadata !769), !dbg !2752
  %642 = select i1 %641, i32 %636, i32 4, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2688, metadata !769), !dbg !2752
  %643 = and i32 %5, -3, !dbg !3200
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !3201
  br label %645, !dbg !3202

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !3203
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3204 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3208, metadata !769), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3209, metadata !769), !dbg !3213
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3210, metadata !769), !dbg !3215
  %4 = icmp eq i8* %3, %0, !dbg !3216
  br i1 %4, label %5, label %75, !dbg !3218

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3211, metadata !769), !dbg !3220
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3221, metadata !769), !dbg !3237
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3235, metadata !769), !dbg !3240
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3236, metadata !769), !dbg !3241
  %7 = load i8, i8* %6, align 1, !dbg !3242, !tbaa !1038
  %8 = sext i8 %7 to i32, !dbg !3242
  %9 = and i32 %8, -33, !dbg !3242
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3242

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3244, metadata !769), !dbg !3258
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3256, metadata !769), !dbg !3262
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3257, metadata !769), !dbg !3263
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3264
  %12 = load i8, i8* %11, align 1, !dbg !3264, !tbaa !1038
  %13 = sext i8 %12 to i32, !dbg !3264
  %14 = and i32 %13, -33, !dbg !3264
  %15 = icmp eq i32 %14, 84, !dbg !3264
  br i1 %15, label %16, label %72, !dbg !3264

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3266, metadata !769), !dbg !3279
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3277, metadata !769), !dbg !3283
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3278, metadata !769), !dbg !3284
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3285
  %18 = load i8, i8* %17, align 1, !dbg !3285, !tbaa !1038
  %19 = sext i8 %18 to i32, !dbg !3285
  %20 = and i32 %19, -33, !dbg !3285
  %21 = icmp eq i32 %20, 70, !dbg !3285
  br i1 %21, label %22, label %72, !dbg !3285

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3287, metadata !769), !dbg !3299
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3297, metadata !769), !dbg !3303
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3298, metadata !769), !dbg !3304
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3305
  %24 = load i8, i8* %23, align 1, !dbg !3305, !tbaa !1038
  %25 = icmp eq i8 %24, 45, !dbg !3305
  br i1 %25, label %26, label %72, !dbg !3307

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3308, metadata !769), !dbg !3319
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3317, metadata !769), !dbg !3323
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3318, metadata !769), !dbg !3324
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3325
  %28 = load i8, i8* %27, align 1, !dbg !3325, !tbaa !1038
  %29 = icmp eq i8 %28, 56, !dbg !3325
  br i1 %29, label %30, label %72, !dbg !3327

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3328, metadata !769), !dbg !3338
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3336, metadata !769), !dbg !3342
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3337, metadata !769), !dbg !3343
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3344
  %32 = load i8, i8* %31, align 1, !dbg !3344, !tbaa !1038
  %33 = icmp eq i8 %32, 0, !dbg !3344
  br i1 %33, label %34, label %72, !dbg !3346

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3347, !tbaa !1038
  %36 = icmp eq i8 %35, 96, !dbg !3348
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.96, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.97, i64 0, i64 0), !dbg !3347
  br label %75, !dbg !3349

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3244, metadata !769), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3256, metadata !769), !dbg !3354
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3257, metadata !769), !dbg !3355
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3356
  %40 = load i8, i8* %39, align 1, !dbg !3356, !tbaa !1038
  %41 = sext i8 %40 to i32, !dbg !3356
  %42 = and i32 %41, -33, !dbg !3356
  %43 = icmp eq i32 %42, 66, !dbg !3356
  br i1 %43, label %44, label %72, !dbg !3356

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3266, metadata !769), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3277, metadata !769), !dbg !3359
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3278, metadata !769), !dbg !3360
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3361
  %46 = load i8, i8* %45, align 1, !dbg !3361, !tbaa !1038
  %47 = icmp eq i8 %46, 49, !dbg !3361
  br i1 %47, label %48, label %72, !dbg !3362

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3287, metadata !769), !dbg !3363
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3297, metadata !769), !dbg !3365
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3298, metadata !769), !dbg !3366
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3367
  %50 = load i8, i8* %49, align 1, !dbg !3367, !tbaa !1038
  %51 = icmp eq i8 %50, 56, !dbg !3367
  br i1 %51, label %52, label %72, !dbg !3368

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3308, metadata !769), !dbg !3369
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3317, metadata !769), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3318, metadata !769), !dbg !3372
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3373
  %54 = load i8, i8* %53, align 1, !dbg !3373, !tbaa !1038
  %55 = icmp eq i8 %54, 48, !dbg !3373
  br i1 %55, label %56, label %72, !dbg !3374

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3328, metadata !769), !dbg !3375
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3336, metadata !769), !dbg !3377
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3337, metadata !769), !dbg !3378
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3379
  %58 = load i8, i8* %57, align 1, !dbg !3379, !tbaa !1038
  %59 = icmp eq i8 %58, 51, !dbg !3379
  br i1 %59, label %60, label %72, !dbg !3380

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3381, metadata !769), !dbg !3390
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3388, metadata !769), !dbg !3394
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3389, metadata !769), !dbg !3395
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3396
  %62 = load i8, i8* %61, align 1, !dbg !3396, !tbaa !1038
  %63 = icmp eq i8 %62, 48, !dbg !3396
  br i1 %63, label %64, label %72, !dbg !3398

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3399, metadata !769), !dbg !3407
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3405, metadata !769), !dbg !3411
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3406, metadata !769), !dbg !3412
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3413
  %66 = load i8, i8* %65, align 1, !dbg !3413, !tbaa !1038
  %67 = icmp eq i8 %66, 0, !dbg !3413
  br i1 %67, label %68, label %72, !dbg !3415

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3416, !tbaa !1038
  %70 = icmp eq i8 %69, 96, !dbg !3417
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.98, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.99, i64 0, i64 0), !dbg !3416
  br label %75, !dbg !3418

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3419
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), !dbg !3420
  br label %75, !dbg !3421

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3422
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3423 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3427, metadata !769), !dbg !3430
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3428, metadata !769), !dbg !3431
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3429, metadata !769), !dbg !3432
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !769) #10, !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3438, metadata !769) #10, !dbg !3448
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3439, metadata !769) #10, !dbg !3449
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3440, metadata !769) #10, !dbg !3450
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3451
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3441, metadata !769) #10, !dbg !3452
  %6 = tail call i32* @__errno_location() #17, !dbg !3453
  %7 = load i32, i32* %6, align 4, !dbg !3453, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3442, metadata !769) #10, !dbg !3454
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3455
  %9 = load i32, i32* %8, align 4, !dbg !3455, !tbaa !2617
  %10 = or i32 %9, 1, !dbg !3456
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3443, metadata !769) #10, !dbg !3457
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3458
  %12 = load i32, i32* %11, align 8, !dbg !3458, !tbaa !2557
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3459
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3460
  %15 = load i8*, i8** %14, align 8, !dbg !3460, !tbaa !2643
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3461
  %17 = load i8*, i8** %16, align 8, !dbg !3461, !tbaa !2646
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3462
  %19 = add i64 %18, 1, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3444, metadata !769) #10, !dbg !3464
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3465, metadata !769) #10, !dbg !3470
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3472
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3445, metadata !769) #10, !dbg !3473
  %21 = load i32, i32* %11, align 8, !dbg !3474, !tbaa !2557
  %22 = load i8*, i8** %14, align 8, !dbg !3475, !tbaa !2643
  %23 = load i8*, i8** %16, align 8, !dbg !3476, !tbaa !2646
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3477
  store i32 %7, i32* %6, align 4, !dbg !3478, !tbaa !955
  ret i8* %20, !dbg !3479
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !769), !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3438, metadata !769), !dbg !3481
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3439, metadata !769), !dbg !3482
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3440, metadata !769), !dbg !3483
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3484
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3484
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3441, metadata !769), !dbg !3485
  %7 = tail call i32* @__errno_location() #17, !dbg !3486
  %8 = load i32, i32* %7, align 4, !dbg !3486, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3442, metadata !769), !dbg !3487
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3488
  %10 = load i32, i32* %9, align 4, !dbg !3488, !tbaa !2617
  %11 = icmp ne i64* %2, null, !dbg !3489
  %12 = xor i1 %11, true, !dbg !3489
  %13 = zext i1 %12 to i32, !dbg !3489
  %14 = or i32 %10, %13, !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3443, metadata !769), !dbg !3491
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3492
  %16 = load i32, i32* %15, align 8, !dbg !3492, !tbaa !2557
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3493
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3494
  %19 = load i8*, i8** %18, align 8, !dbg !3494, !tbaa !2643
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3495
  %21 = load i8*, i8** %20, align 8, !dbg !3495, !tbaa !2646
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3496
  %23 = add i64 %22, 1, !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3444, metadata !769), !dbg !3498
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3465, metadata !769) #10, !dbg !3499
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3501
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3445, metadata !769), !dbg !3502
  %25 = load i32, i32* %15, align 8, !dbg !3503, !tbaa !2557
  %26 = load i8*, i8** %18, align 8, !dbg !3504, !tbaa !2643
  %27 = load i8*, i8** %20, align 8, !dbg !3505, !tbaa !2646
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3506
  store i32 %8, i32* %7, align 4, !dbg !3507, !tbaa !955
  br i1 %11, label %29, label %30, !dbg !3508

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3509, !tbaa !1008
  br label %30, !dbg !3511

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3512
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3513 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3517, !tbaa !776
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3515, metadata !769), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3516, metadata !769), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3516, metadata !769), !dbg !3519
  %2 = load i32, i32* @nslots, align 4, !dbg !3520, !tbaa !955
  %3 = icmp sgt i32 %2, 1, !dbg !3523
  br i1 %3, label %4, label %13, !dbg !3524

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3525

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3516, metadata !769), !dbg !3519
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3525
  %8 = load i8*, i8** %7, align 8, !dbg !3525, !tbaa !3526
  tail call void @free(i8* %8) #10, !dbg !3528
  %9 = add nuw i64 %6, 1, !dbg !3529
  %10 = load i32, i32* @nslots, align 4, !dbg !3520, !tbaa !955
  %11 = sext i32 %10 to i64, !dbg !3523
  %12 = icmp slt i64 %9, %11, !dbg !3523
  br i1 %12, label %5, label %13, !dbg !3524, !llvm.loop !3530

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3532
  %15 = load i8*, i8** %14, align 8, !dbg !3532, !tbaa !3526
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3534
  br i1 %16, label %18, label %17, !dbg !3535

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !3536
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3538, !tbaa !3539
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3540, !tbaa !3526
  br label %18, !dbg !3541

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3542
  br i1 %19, label %22, label %20, !dbg !3544

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3545
  tail call void @free(i8* %21) #10, !dbg !3547
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3548, !tbaa !776
  br label %22, !dbg !3549

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !3550, !tbaa !955
  ret void, !dbg !3551
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3552 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3556, metadata !769), !dbg !3558
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3557, metadata !769), !dbg !3559
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3560
  ret i8* %3, !dbg !3561
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3562 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3566, metadata !769), !dbg !3580
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3567, metadata !769), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3568, metadata !769), !dbg !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3569, metadata !769), !dbg !3583
  %5 = tail call i32* @__errno_location() #17, !dbg !3584
  %6 = load i32, i32* %5, align 4, !dbg !3584, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3570, metadata !769), !dbg !3585
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3586, !tbaa !776
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3571, metadata !769), !dbg !3587
  %8 = icmp slt i32 %0, 0, !dbg !3588
  br i1 %8, label %9, label %10, !dbg !3590

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3591
  unreachable, !dbg !3591

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3592, !tbaa !955
  %12 = icmp sgt i32 %11, %0, !dbg !3593
  br i1 %12, label %34, label %13, !dbg !3594

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3595
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3596
  br i1 %15, label %16, label %17, !dbg !3598

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3599
  unreachable, !dbg !3599

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3600
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3600
  %20 = add nsw i32 %0, 1, !dbg !3601
  %21 = sext i32 %20 to i64, !dbg !3602
  %22 = shl nsw i64 %21, 4, !dbg !3603
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3604
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3604
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3571, metadata !769), !dbg !3587
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3605, !tbaa !776
  br i1 %14, label %25, label %26, !dbg !3606

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3607, !tbaa.struct !3609
  br label %26, !dbg !3610

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3611, !tbaa !955
  %28 = sext i32 %27 to i64, !dbg !3612
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3612
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3613
  %31 = sub nsw i32 %20, %27, !dbg !3614
  %32 = sext i32 %31 to i64, !dbg !3615
  %33 = shl nsw i64 %32, 4, !dbg !3616
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3613
  store i32 %20, i32* @nslots, align 4, !dbg !3617, !tbaa !955
  br label %34, !dbg !3618

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3571, metadata !769), !dbg !3587
  %36 = sext i32 %0 to i64, !dbg !3619
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3620
  %38 = load i64, i64* %37, align 8, !dbg !3620, !tbaa !3539
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3575, metadata !769), !dbg !3621
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3622
  %40 = load i8*, i8** %39, align 8, !dbg !3622, !tbaa !3526
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3577, metadata !769), !dbg !3623
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3624
  %42 = load i32, i32* %41, align 4, !dbg !3624, !tbaa !2617
  %43 = or i32 %42, 1, !dbg !3625
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3578, metadata !769), !dbg !3626
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3627
  %45 = load i32, i32* %44, align 8, !dbg !3627, !tbaa !2557
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3628
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3629
  %48 = load i8*, i8** %47, align 8, !dbg !3629, !tbaa !2643
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3630
  %50 = load i8*, i8** %49, align 8, !dbg !3630, !tbaa !2646
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3579, metadata !769), !dbg !3632
  %52 = icmp ugt i64 %38, %51, !dbg !3633
  br i1 %52, label %63, label %53, !dbg !3635

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3575, metadata !769), !dbg !3621
  store i64 %54, i64* %37, align 8, !dbg !3638, !tbaa !3539
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3639
  br i1 %55, label %57, label %56, !dbg !3641

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3642
  br label %57, !dbg !3642

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3465, metadata !769) #10, !dbg !3643
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3645
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3577, metadata !769), !dbg !3623
  store i8* %58, i8** %39, align 8, !dbg !3646, !tbaa !3526
  %59 = load i32, i32* %44, align 8, !dbg !3647, !tbaa !2557
  %60 = load i8*, i8** %47, align 8, !dbg !3648, !tbaa !2643
  %61 = load i8*, i8** %49, align 8, !dbg !3649, !tbaa !2646
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3650
  br label %63, !dbg !3651

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3577, metadata !769), !dbg !3623
  store i32 %6, i32* %5, align 4, !dbg !3652, !tbaa !955
  ret i8* %64, !dbg !3653
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3654 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3658, metadata !769), !dbg !3661
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3659, metadata !769), !dbg !3662
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3660, metadata !769), !dbg !3663
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3664
  ret i8* %4, !dbg !3665
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3670, metadata !769), !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3556, metadata !769) #10, !dbg !3672
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3557, metadata !769) #10, !dbg !3674
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3675
  ret i8* %2, !dbg !3676
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3677 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3681, metadata !769), !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3682, metadata !769), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3658, metadata !769) #10, !dbg !3685
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3659, metadata !769) #10, !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3660, metadata !769) #10, !dbg !3688
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3689
  ret i8* %3, !dbg !3690
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3691 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3699, metadata !3705), !dbg !3706
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3695, metadata !769), !dbg !3708
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3696, metadata !769), !dbg !3709
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3697, metadata !769), !dbg !3710
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3711
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3711
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3698, metadata !769), !dbg !3712
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3704, metadata !769) #10, !dbg !3713
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3714
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3714
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3699, metadata !769) #10, !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3699, metadata !1853) #10, !dbg !3706
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3706
  %8 = icmp eq i32 %1, 10, !dbg !3715
  br i1 %8, label %9, label %10, !dbg !3717

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3718, !noalias !3719
  unreachable, !dbg !3718

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3699, metadata !1853) #10, !dbg !3706
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3722
  store i32 %1, i32* %11, align 8, !dbg !3722, !alias.scope !3719
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3722
  %13 = bitcast i32* %12 to i8*, !dbg !3722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3722
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3698, metadata !769), !dbg !3712
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3724
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3725
  ret i8* %14, !dbg !3726
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3727 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3699, metadata !3705), !dbg !3736
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3731, metadata !769), !dbg !3738
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3732, metadata !769), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3733, metadata !769), !dbg !3740
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3734, metadata !769), !dbg !3741
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3742
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3735, metadata !769), !dbg !3743
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3704, metadata !769) #10, !dbg !3744
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3745
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3745
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3699, metadata !769) #10, !dbg !3736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3699, metadata !1853) #10, !dbg !3736
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3736
  %9 = icmp eq i32 %1, 10, !dbg !3746
  br i1 %9, label %10, label %11, !dbg !3747

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3748, !noalias !3749
  unreachable, !dbg !3748

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3699, metadata !1853) #10, !dbg !3736
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3752
  store i32 %1, i32* %12, align 8, !dbg !3752, !alias.scope !3749
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3752
  %14 = bitcast i32* %13 to i8*, !dbg !3752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3752
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3753
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3735, metadata !769), !dbg !3743
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3754
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3755
  ret i8* %15, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3757 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3699, metadata !3705), !dbg !3763
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3761, metadata !769), !dbg !3766
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3762, metadata !769), !dbg !3767
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3695, metadata !769) #10, !dbg !3768
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3696, metadata !769) #10, !dbg !3769
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3697, metadata !769) #10, !dbg !3770
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3771
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3771
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3698, metadata !769) #10, !dbg !3772
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3704, metadata !769) #10, !dbg !3773
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3774
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3774
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3699, metadata !769) #10, !dbg !3763
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3699, metadata !1853) #10, !dbg !3763
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3763
  %7 = icmp eq i32 %0, 10, !dbg !3775
  br i1 %7, label %8, label %9, !dbg !3776

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3777, !noalias !3778
  unreachable, !dbg !3777

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3699, metadata !1853) #10, !dbg !3763
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3781
  store i32 %0, i32* %10, align 8, !dbg !3781, !alias.scope !3778
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3781
  %12 = bitcast i32* %11 to i8*, !dbg !3781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3781
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3698, metadata !769) #10, !dbg !3772
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3783
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3784
  ret i8* %13, !dbg !3785
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3786 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3699, metadata !3705), !dbg !3793
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3790, metadata !769), !dbg !3796
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3791, metadata !769), !dbg !3797
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3792, metadata !769), !dbg !3798
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3731, metadata !769) #10, !dbg !3799
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3732, metadata !769) #10, !dbg !3800
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3733, metadata !769) #10, !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3734, metadata !769) #10, !dbg !3802
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3803
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3803
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3735, metadata !769) #10, !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3704, metadata !769) #10, !dbg !3805
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3806
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3806
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3699, metadata !769) #10, !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3699, metadata !1853) #10, !dbg !3793
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3793
  %8 = icmp eq i32 %0, 10, !dbg !3807
  br i1 %8, label %9, label %10, !dbg !3808

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3809, !noalias !3810
  unreachable, !dbg !3809

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3699, metadata !1853) #10, !dbg !3793
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3813
  store i32 %0, i32* %11, align 8, !dbg !3813, !alias.scope !3810
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3813
  %13 = bitcast i32* %12 to i8*, !dbg !3813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3813
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3814
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3735, metadata !769) #10, !dbg !3804
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3815
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3816
  ret i8* %14, !dbg !3817
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3818 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3822, metadata !769), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3823, metadata !769), !dbg !3827
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3824, metadata !769), !dbg !3828
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3829
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3829
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3830, !tbaa.struct !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3825, metadata !769), !dbg !3832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2576, metadata !769), !dbg !3833
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2577, metadata !769), !dbg !3835
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2578, metadata !769), !dbg !3836
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2579, metadata !769), !dbg !3837
  %6 = lshr i8 %2, 5, !dbg !3838
  %7 = zext i8 %6 to i64, !dbg !3838
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3839
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2580, metadata !769), !dbg !3840
  %9 = and i8 %2, 31, !dbg !3841
  %10 = zext i8 %9 to i32, !dbg !3842
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2582, metadata !769), !dbg !3843
  %11 = load i32, i32* %8, align 4, !dbg !3844, !tbaa !955
  %12 = lshr i32 %11, %10, !dbg !3845
  %13 = and i32 %12, 1, !dbg !3846
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2583, metadata !769), !dbg !3847
  %14 = xor i32 %13, 1, !dbg !3848
  %15 = shl i32 %14, %10, !dbg !3849
  %16 = xor i32 %15, %11, !dbg !3850
  store i32 %16, i32* %8, align 4, !dbg !3850, !tbaa !955
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3825, metadata !769), !dbg !3832
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3851
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3852
  ret i8* %17, !dbg !3853
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3854 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3858, metadata !769), !dbg !3860
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3859, metadata !769), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3822, metadata !769) #10, !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3823, metadata !769) #10, !dbg !3864
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3824, metadata !769) #10, !dbg !3865
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3866
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3867, !tbaa.struct !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3825, metadata !769) #10, !dbg !3868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2576, metadata !769) #10, !dbg !3869
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2577, metadata !769) #10, !dbg !3871
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2578, metadata !769) #10, !dbg !3872
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2579, metadata !769) #10, !dbg !3873
  %5 = lshr i8 %1, 5, !dbg !3874
  %6 = zext i8 %5 to i64, !dbg !3874
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3875
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2580, metadata !769) #10, !dbg !3876
  %8 = and i8 %1, 31, !dbg !3877
  %9 = zext i8 %8 to i32, !dbg !3878
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2582, metadata !769) #10, !dbg !3879
  %10 = load i32, i32* %7, align 4, !dbg !3880, !tbaa !955
  %11 = lshr i32 %10, %9, !dbg !3881
  %12 = and i32 %11, 1, !dbg !3882
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2583, metadata !769) #10, !dbg !3883
  %13 = xor i32 %12, 1, !dbg !3884
  %14 = shl i32 %13, %9, !dbg !3885
  %15 = xor i32 %14, %10, !dbg !3886
  store i32 %15, i32* %7, align 4, !dbg !3886, !tbaa !955
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3825, metadata !769) #10, !dbg !3868
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3887
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3888
  ret i8* %16, !dbg !3889
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3890 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3892, metadata !769), !dbg !3893
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3858, metadata !769) #10, !dbg !3894
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3859, metadata !769) #10, !dbg !3896
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3822, metadata !769) #10, !dbg !3897
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3823, metadata !769) #10, !dbg !3899
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3824, metadata !769) #10, !dbg !3900
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3901
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3901
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3902, !tbaa.struct !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3825, metadata !769) #10, !dbg !3903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2576, metadata !769) #10, !dbg !3904
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2577, metadata !769) #10, !dbg !3906
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2578, metadata !769) #10, !dbg !3907
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2579, metadata !769) #10, !dbg !3908
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3909
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2580, metadata !769) #10, !dbg !3910
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2582, metadata !769) #10, !dbg !3911
  %5 = load i32, i32* %4, align 4, !dbg !3912, !tbaa !955
  %6 = or i32 %5, 67108864, !dbg !3913
  store i32 %6, i32* %4, align 4, !dbg !3913, !tbaa !955
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3825, metadata !769) #10, !dbg !3903
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3914
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3915
  ret i8* %7, !dbg !3916
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3917 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3919, metadata !769), !dbg !3921
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3920, metadata !769), !dbg !3922
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3822, metadata !769) #10, !dbg !3923
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3823, metadata !769) #10, !dbg !3925
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3824, metadata !769) #10, !dbg !3926
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3927
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3928, !tbaa.struct !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3825, metadata !769) #10, !dbg !3929
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2576, metadata !769) #10, !dbg !3930
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2577, metadata !769) #10, !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2578, metadata !769) #10, !dbg !3933
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2579, metadata !769) #10, !dbg !3934
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3935
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2580, metadata !769) #10, !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2582, metadata !769) #10, !dbg !3937
  %6 = load i32, i32* %5, align 4, !dbg !3938, !tbaa !955
  %7 = or i32 %6, 67108864, !dbg !3939
  store i32 %7, i32* %5, align 4, !dbg !3939, !tbaa !955
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3825, metadata !769) #10, !dbg !3929
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3940
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3941
  ret i8* %8, !dbg !3942
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3943 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3699, metadata !3705), !dbg !3949
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3945, metadata !769), !dbg !3951
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3946, metadata !769), !dbg !3952
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3947, metadata !769), !dbg !3953
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3954
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3954
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3704, metadata !769) #10, !dbg !3955
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3956
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3956
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3699, metadata !769) #10, !dbg !3949
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3699, metadata !1853) #10, !dbg !3949
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3949
  %9 = icmp eq i32 %1, 10, !dbg !3957
  br i1 %9, label %10, label %11, !dbg !3958

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3959, !noalias !3960
  unreachable, !dbg !3959

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3699, metadata !1853) #10, !dbg !3949
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3963
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3963
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3964
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3965
  store i32 %1, i32* %13, align 8, !dbg !3965
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3965
  %15 = bitcast i32* %14 to i8*, !dbg !3965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3948, metadata !769), !dbg !3966
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2576, metadata !769), !dbg !3967
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2577, metadata !769), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2578, metadata !769), !dbg !3970
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2579, metadata !769), !dbg !3971
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3972
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2580, metadata !769), !dbg !3973
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2582, metadata !769), !dbg !3974
  %17 = load i32, i32* %16, align 4, !dbg !3975, !tbaa !955
  %18 = or i32 %17, 67108864, !dbg !3976
  store i32 %18, i32* %16, align 4, !dbg !3976, !tbaa !955
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3948, metadata !769), !dbg !3966
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3977
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3978
  ret i8* %19, !dbg !3979
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3980 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3984, metadata !769), !dbg !3988
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3985, metadata !769), !dbg !3989
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3986, metadata !769), !dbg !3990
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3987, metadata !769), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3992, metadata !769) #10, !dbg !4002
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3997, metadata !769) #10, !dbg !4004
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3998, metadata !769) #10, !dbg !4005
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3999, metadata !769) #10, !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4000, metadata !769) #10, !dbg !4007
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4008
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4008
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4009, !tbaa.struct !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4001, metadata !769) #10, !dbg !4010
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !769) #10, !dbg !4011
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2626, metadata !769) #10, !dbg !4013
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2627, metadata !769) #10, !dbg !4014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2625, metadata !769) #10, !dbg !4011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !769) #10, !dbg !4011
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4015
  store i32 10, i32* %7, align 8, !dbg !4016, !tbaa !2557
  %8 = icmp ne i8* %1, null, !dbg !4017
  %9 = icmp ne i8* %2, null, !dbg !4018
  %10 = and i1 %8, %9, !dbg !4019
  br i1 %10, label %12, label %11, !dbg !4019

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4020
  unreachable, !dbg !4020

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4021
  store i8* %1, i8** %13, align 8, !dbg !4022, !tbaa !2643
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4023
  store i8* %2, i8** %14, align 8, !dbg !4024, !tbaa !2646
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4001, metadata !769) #10, !dbg !4010
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4025
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4026
  ret i8* %15, !dbg !4027
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3993 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3992, metadata !769), !dbg !4028
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3997, metadata !769), !dbg !4029
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3998, metadata !769), !dbg !4030
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3999, metadata !769), !dbg !4031
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4000, metadata !769), !dbg !4032
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4033
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !4033
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4034, !tbaa.struct !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4001, metadata !769), !dbg !4035
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2625, metadata !769) #10, !dbg !4036
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2626, metadata !769) #10, !dbg !4038
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2627, metadata !769) #10, !dbg !4039
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2625, metadata !769) #10, !dbg !4036
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2625, metadata !769) #10, !dbg !4036
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4040
  store i32 10, i32* %8, align 8, !dbg !4041, !tbaa !2557
  %9 = icmp ne i8* %1, null, !dbg !4042
  %10 = icmp ne i8* %2, null, !dbg !4043
  %11 = and i1 %9, %10, !dbg !4044
  br i1 %11, label %13, label %12, !dbg !4044

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !4045
  unreachable, !dbg !4045

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4046
  store i8* %1, i8** %14, align 8, !dbg !4047, !tbaa !2643
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4048
  store i8* %2, i8** %15, align 8, !dbg !4049, !tbaa !2646
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4001, metadata !769), !dbg !4035
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4050
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !4051
  ret i8* %16, !dbg !4052
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4053 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4057, metadata !769), !dbg !4060
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4058, metadata !769), !dbg !4061
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4059, metadata !769), !dbg !4062
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3984, metadata !769) #10, !dbg !4063
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3985, metadata !769) #10, !dbg !4065
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3986, metadata !769) #10, !dbg !4066
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3987, metadata !769) #10, !dbg !4067
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3992, metadata !769) #10, !dbg !4068
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3997, metadata !769) #10, !dbg !4070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3998, metadata !769) #10, !dbg !4071
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3999, metadata !769) #10, !dbg !4072
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4000, metadata !769) #10, !dbg !4073
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4074
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4075, !tbaa.struct !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4001, metadata !769) #10, !dbg !4076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2625, metadata !769) #10, !dbg !4077
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2626, metadata !769) #10, !dbg !4079
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2627, metadata !769) #10, !dbg !4080
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2625, metadata !769) #10, !dbg !4077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2625, metadata !769) #10, !dbg !4077
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4081
  store i32 10, i32* %6, align 8, !dbg !4082, !tbaa !2557
  %7 = icmp ne i8* %0, null, !dbg !4083
  %8 = icmp ne i8* %1, null, !dbg !4084
  %9 = and i1 %7, %8, !dbg !4085
  br i1 %9, label %11, label %10, !dbg !4085

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !4086
  unreachable, !dbg !4086

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4087
  store i8* %0, i8** %12, align 8, !dbg !4088, !tbaa !2643
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4089
  store i8* %1, i8** %13, align 8, !dbg !4090, !tbaa !2646
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4001, metadata !769) #10, !dbg !4076
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4091
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4092
  ret i8* %14, !dbg !4093
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4094 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4098, metadata !769), !dbg !4102
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4099, metadata !769), !dbg !4103
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4100, metadata !769), !dbg !4104
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4101, metadata !769), !dbg !4105
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3992, metadata !769) #10, !dbg !4106
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3997, metadata !769) #10, !dbg !4108
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3998, metadata !769) #10, !dbg !4109
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3999, metadata !769) #10, !dbg !4110
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4000, metadata !769) #10, !dbg !4111
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4112
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4113, !tbaa.struct !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4001, metadata !769) #10, !dbg !4114
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !769) #10, !dbg !4115
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2626, metadata !769) #10, !dbg !4117
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2627, metadata !769) #10, !dbg !4118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2625, metadata !769) #10, !dbg !4115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2625, metadata !769) #10, !dbg !4115
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4119
  store i32 10, i32* %7, align 8, !dbg !4120, !tbaa !2557
  %8 = icmp ne i8* %0, null, !dbg !4121
  %9 = icmp ne i8* %1, null, !dbg !4122
  %10 = and i1 %8, %9, !dbg !4123
  br i1 %10, label %12, label %11, !dbg !4123

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4124
  unreachable, !dbg !4124

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4125
  store i8* %0, i8** %13, align 8, !dbg !4126, !tbaa !2643
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4127
  store i8* %1, i8** %14, align 8, !dbg !4128, !tbaa !2646
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4001, metadata !769) #10, !dbg !4114
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !4129
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4130
  ret i8* %15, !dbg !4131
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4132 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4136, metadata !769), !dbg !4139
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4137, metadata !769), !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4138, metadata !769), !dbg !4141
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4142
  ret i8* %4, !dbg !4143
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4144 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4148, metadata !769), !dbg !4150
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4149, metadata !769), !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4136, metadata !769) #10, !dbg !4152
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4137, metadata !769) #10, !dbg !4154
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4138, metadata !769) #10, !dbg !4155
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4156
  ret i8* %3, !dbg !4157
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4158 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4162, metadata !769), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4163, metadata !769), !dbg !4165
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4136, metadata !769) #10, !dbg !4166
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4137, metadata !769) #10, !dbg !4168
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4138, metadata !769) #10, !dbg !4169
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4170
  ret i8* %3, !dbg !4171
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4172 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4176, metadata !769), !dbg !4177
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4162, metadata !769) #10, !dbg !4178
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4163, metadata !769) #10, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4136, metadata !769) #10, !dbg !4181
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4137, metadata !769) #10, !dbg !4183
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4138, metadata !769) #10, !dbg !4184
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4185
  ret i8* %2, !dbg !4186
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !4187 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4190, metadata !769), !dbg !4191
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !4192
  ret i32 %2, !dbg !4193
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4194 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4239, metadata !769), !dbg !4245
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4240, metadata !769), !dbg !4246
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4241, metadata !769), !dbg !4247
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4242, metadata !769), !dbg !4248
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4243, metadata !769), !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4244, metadata !769), !dbg !4250
  %7 = icmp eq i8* %1, null, !dbg !4251
  br i1 %7, label %10, label %8, !dbg !4253

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4254
  br label %12, !dbg !4254

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.107, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4255
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.108, i64 0, i64 0), i32 5) #10, !dbg !4256
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !4256
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.109, i64 0, i64 0), i32 5) #10, !dbg !4257
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !4257
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ], !dbg !4258

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4259
  unreachable, !dbg !4259

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.110, i64 0, i64 0), i32 5) #10, !dbg !4261
  %20 = load i8*, i8** %4, align 8, !dbg !4261, !tbaa !776
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4261
  br label %146, !dbg !4262

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.111, i64 0, i64 0), i32 5) #10, !dbg !4263
  %24 = load i8*, i8** %4, align 8, !dbg !4263, !tbaa !776
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4263
  %26 = load i8*, i8** %25, align 8, !dbg !4263, !tbaa !776
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4263
  br label %146, !dbg !4264

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.112, i64 0, i64 0), i32 5) #10, !dbg !4265
  %30 = load i8*, i8** %4, align 8, !dbg !4265, !tbaa !776
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4265
  %32 = load i8*, i8** %31, align 8, !dbg !4265, !tbaa !776
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4265
  %34 = load i8*, i8** %33, align 8, !dbg !4265, !tbaa !776
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4265
  br label %146, !dbg !4266

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.113, i64 0, i64 0), i32 5) #10, !dbg !4267
  %38 = load i8*, i8** %4, align 8, !dbg !4267, !tbaa !776
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4267
  %40 = load i8*, i8** %39, align 8, !dbg !4267, !tbaa !776
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4267
  %42 = load i8*, i8** %41, align 8, !dbg !4267, !tbaa !776
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4267
  %44 = load i8*, i8** %43, align 8, !dbg !4267, !tbaa !776
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4267
  br label %146, !dbg !4268

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.114, i64 0, i64 0), i32 5) #10, !dbg !4269
  %48 = load i8*, i8** %4, align 8, !dbg !4269, !tbaa !776
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4269
  %50 = load i8*, i8** %49, align 8, !dbg !4269, !tbaa !776
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4269
  %52 = load i8*, i8** %51, align 8, !dbg !4269, !tbaa !776
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4269
  %54 = load i8*, i8** %53, align 8, !dbg !4269, !tbaa !776
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4269
  %56 = load i8*, i8** %55, align 8, !dbg !4269, !tbaa !776
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4269
  br label %146, !dbg !4270

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.115, i64 0, i64 0), i32 5) #10, !dbg !4271
  %60 = load i8*, i8** %4, align 8, !dbg !4271, !tbaa !776
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4271
  %62 = load i8*, i8** %61, align 8, !dbg !4271, !tbaa !776
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4271
  %64 = load i8*, i8** %63, align 8, !dbg !4271, !tbaa !776
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4271
  %66 = load i8*, i8** %65, align 8, !dbg !4271, !tbaa !776
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4271
  %68 = load i8*, i8** %67, align 8, !dbg !4271, !tbaa !776
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4271
  %70 = load i8*, i8** %69, align 8, !dbg !4271, !tbaa !776
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4271
  br label %146, !dbg !4272

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.116, i64 0, i64 0), i32 5) #10, !dbg !4273
  %74 = load i8*, i8** %4, align 8, !dbg !4273, !tbaa !776
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4273
  %76 = load i8*, i8** %75, align 8, !dbg !4273, !tbaa !776
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4273
  %78 = load i8*, i8** %77, align 8, !dbg !4273, !tbaa !776
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4273
  %80 = load i8*, i8** %79, align 8, !dbg !4273, !tbaa !776
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4273
  %82 = load i8*, i8** %81, align 8, !dbg !4273, !tbaa !776
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4273
  %84 = load i8*, i8** %83, align 8, !dbg !4273, !tbaa !776
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4273
  %86 = load i8*, i8** %85, align 8, !dbg !4273, !tbaa !776
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4273
  br label %146, !dbg !4274

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.117, i64 0, i64 0), i32 5) #10, !dbg !4275
  %90 = load i8*, i8** %4, align 8, !dbg !4275, !tbaa !776
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4275
  %92 = load i8*, i8** %91, align 8, !dbg !4275, !tbaa !776
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4275
  %94 = load i8*, i8** %93, align 8, !dbg !4275, !tbaa !776
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4275
  %96 = load i8*, i8** %95, align 8, !dbg !4275, !tbaa !776
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4275
  %98 = load i8*, i8** %97, align 8, !dbg !4275, !tbaa !776
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4275
  %100 = load i8*, i8** %99, align 8, !dbg !4275, !tbaa !776
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4275
  %102 = load i8*, i8** %101, align 8, !dbg !4275, !tbaa !776
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4275
  %104 = load i8*, i8** %103, align 8, !dbg !4275, !tbaa !776
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4275
  br label %146, !dbg !4276

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.118, i64 0, i64 0), i32 5) #10, !dbg !4277
  %108 = load i8*, i8** %4, align 8, !dbg !4277, !tbaa !776
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4277
  %110 = load i8*, i8** %109, align 8, !dbg !4277, !tbaa !776
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4277
  %112 = load i8*, i8** %111, align 8, !dbg !4277, !tbaa !776
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4277
  %114 = load i8*, i8** %113, align 8, !dbg !4277, !tbaa !776
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4277
  %116 = load i8*, i8** %115, align 8, !dbg !4277, !tbaa !776
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4277
  %118 = load i8*, i8** %117, align 8, !dbg !4277, !tbaa !776
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4277
  %120 = load i8*, i8** %119, align 8, !dbg !4277, !tbaa !776
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4277
  %122 = load i8*, i8** %121, align 8, !dbg !4277, !tbaa !776
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4277
  %124 = load i8*, i8** %123, align 8, !dbg !4277, !tbaa !776
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4277
  br label %146, !dbg !4278

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.119, i64 0, i64 0), i32 5) #10, !dbg !4279
  %128 = load i8*, i8** %4, align 8, !dbg !4279, !tbaa !776
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4279
  %130 = load i8*, i8** %129, align 8, !dbg !4279, !tbaa !776
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4279
  %132 = load i8*, i8** %131, align 8, !dbg !4279, !tbaa !776
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4279
  %134 = load i8*, i8** %133, align 8, !dbg !4279, !tbaa !776
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4279
  %136 = load i8*, i8** %135, align 8, !dbg !4279, !tbaa !776
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4279
  %138 = load i8*, i8** %137, align 8, !dbg !4279, !tbaa !776
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4279
  %140 = load i8*, i8** %139, align 8, !dbg !4279, !tbaa !776
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4279
  %142 = load i8*, i8** %141, align 8, !dbg !4279, !tbaa !776
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4279
  %144 = load i8*, i8** %143, align 8, !dbg !4279, !tbaa !776
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4279
  br label %146, !dbg !4280

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4281
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4282 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4286, metadata !769), !dbg !4292
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4287, metadata !769), !dbg !4293
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4288, metadata !769), !dbg !4294
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4289, metadata !769), !dbg !4295
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4290, metadata !769), !dbg !4296
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4291, metadata !769), !dbg !4297
  br label %6, !dbg !4298

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4291, metadata !769), !dbg !4297
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4300
  %9 = load i8*, i8** %8, align 8, !dbg !4300, !tbaa !776
  %10 = icmp eq i8* %9, null, !dbg !4302
  %11 = add i64 %7, 1, !dbg !4303
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4291, metadata !769), !dbg !4297
  br i1 %10, label %12, label %6, !dbg !4302, !llvm.loop !4304

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4306
  ret void, !dbg !4307
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4308 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4319, metadata !769), !dbg !4327
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4320, metadata !769), !dbg !4328
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4321, metadata !769), !dbg !4329
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4322, metadata !769), !dbg !4330
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4323, metadata !769), !dbg !4331
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4332
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4332
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4325, metadata !769), !dbg !4333
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %11 = load i32, i32* %8, align 8, !dbg !4335
  %12 = icmp ult i32 %11, 41, !dbg !4335
  br i1 %12, label %13, label %18, !dbg !4335

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4335
  %15 = sext i32 %11 to i64, !dbg !4335
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4335
  %17 = add i32 %11, 8, !dbg !4335
  store i32 %17, i32* %8, align 8, !dbg !4335
  br label %21, !dbg !4335

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4335
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4335
  store i8* %20, i8** %10, align 8, !dbg !4335
  br label %21, !dbg !4335

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4335
  %25 = load i8*, i8** %24, align 8, !dbg !4335
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4338
  store i8* %25, i8** %26, align 16, !dbg !4339, !tbaa !776
  %27 = icmp eq i8* %25, null, !dbg !4340
  br i1 %27, label %30, label %28, !dbg !4341

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %29 = icmp ult i32 %22, 41, !dbg !4335
  br i1 %29, label %35, label %32, !dbg !4335

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4342
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4343
  ret void, !dbg !4343

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4335
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4335
  store i8* %34, i8** %10, align 8, !dbg !4335
  br label %40, !dbg !4335

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4335
  %37 = sext i32 %22 to i64, !dbg !4335
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4335
  %39 = add i32 %22, 8, !dbg !4335
  store i32 %39, i32* %8, align 8, !dbg !4335
  br label %40, !dbg !4335

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4335
  %44 = load i8*, i8** %43, align 8, !dbg !4335
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4338
  store i8* %44, i8** %45, align 8, !dbg !4339, !tbaa !776
  %46 = icmp eq i8* %44, null, !dbg !4340
  br i1 %46, label %30, label %47, !dbg !4341

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %48 = icmp ult i32 %41, 41, !dbg !4335
  br i1 %48, label %52, label %49, !dbg !4335

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4335
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4335
  store i8* %51, i8** %10, align 8, !dbg !4335
  br label %57, !dbg !4335

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4335
  %54 = sext i32 %41 to i64, !dbg !4335
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4335
  %56 = add i32 %41, 8, !dbg !4335
  store i32 %56, i32* %8, align 8, !dbg !4335
  br label %57, !dbg !4335

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4335
  %61 = load i8*, i8** %60, align 8, !dbg !4335
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4338
  store i8* %61, i8** %62, align 16, !dbg !4339, !tbaa !776
  %63 = icmp eq i8* %61, null, !dbg !4340
  br i1 %63, label %30, label %64, !dbg !4341

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %65 = icmp ult i32 %58, 41, !dbg !4335
  br i1 %65, label %69, label %66, !dbg !4335

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4335
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4335
  store i8* %68, i8** %10, align 8, !dbg !4335
  br label %74, !dbg !4335

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4335
  %71 = sext i32 %58 to i64, !dbg !4335
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4335
  %73 = add i32 %58, 8, !dbg !4335
  store i32 %73, i32* %8, align 8, !dbg !4335
  br label %74, !dbg !4335

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4335
  %78 = load i8*, i8** %77, align 8, !dbg !4335
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4338
  store i8* %78, i8** %79, align 8, !dbg !4339, !tbaa !776
  %80 = icmp eq i8* %78, null, !dbg !4340
  br i1 %80, label %30, label %81, !dbg !4341

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %82 = icmp ult i32 %75, 41, !dbg !4335
  br i1 %82, label %86, label %83, !dbg !4335

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4335
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4335
  store i8* %85, i8** %10, align 8, !dbg !4335
  br label %91, !dbg !4335

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4335
  %88 = sext i32 %75 to i64, !dbg !4335
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4335
  %90 = add i32 %75, 8, !dbg !4335
  store i32 %90, i32* %8, align 8, !dbg !4335
  br label %91, !dbg !4335

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4335
  %95 = load i8*, i8** %94, align 8, !dbg !4335
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4338
  store i8* %95, i8** %96, align 16, !dbg !4339, !tbaa !776
  %97 = icmp eq i8* %95, null, !dbg !4340
  br i1 %97, label %30, label %98, !dbg !4341

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %99 = icmp ult i32 %92, 41, !dbg !4335
  br i1 %99, label %103, label %100, !dbg !4335

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4335
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4335
  store i8* %102, i8** %10, align 8, !dbg !4335
  br label %108, !dbg !4335

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4335
  %105 = sext i32 %92 to i64, !dbg !4335
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4335
  %107 = add i32 %92, 8, !dbg !4335
  store i32 %107, i32* %8, align 8, !dbg !4335
  br label %108, !dbg !4335

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4335
  %111 = load i8*, i8** %110, align 8, !dbg !4335
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4338
  store i8* %111, i8** %112, align 8, !dbg !4339, !tbaa !776
  %113 = icmp eq i8* %111, null, !dbg !4340
  br i1 %113, label %30, label %114, !dbg !4341

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %115 = load i8*, i8** %10, align 8, !dbg !4335
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4335
  store i8* %116, i8** %10, align 8, !dbg !4335
  %117 = bitcast i8* %115 to i8**, !dbg !4335
  %118 = load i8*, i8** %117, align 8, !dbg !4335
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4338
  store i8* %118, i8** %119, align 16, !dbg !4339, !tbaa !776
  %120 = icmp eq i8* %118, null, !dbg !4340
  br i1 %120, label %30, label %121, !dbg !4341

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %122 = load i8*, i8** %10, align 8, !dbg !4335
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4335
  store i8* %123, i8** %10, align 8, !dbg !4335
  %124 = bitcast i8* %122 to i8**, !dbg !4335
  %125 = load i8*, i8** %124, align 8, !dbg !4335
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4338
  store i8* %125, i8** %126, align 8, !dbg !4339, !tbaa !776
  %127 = icmp eq i8* %125, null, !dbg !4340
  br i1 %127, label %30, label %128, !dbg !4341

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %129 = load i8*, i8** %10, align 8, !dbg !4335
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4335
  store i8* %130, i8** %10, align 8, !dbg !4335
  %131 = bitcast i8* %129 to i8**, !dbg !4335
  %132 = load i8*, i8** %131, align 8, !dbg !4335
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4338
  store i8* %132, i8** %133, align 16, !dbg !4339, !tbaa !776
  %134 = icmp eq i8* %132, null, !dbg !4340
  br i1 %134, label %30, label %135, !dbg !4341

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4324, metadata !769), !dbg !4334
  %136 = load i8*, i8** %10, align 8, !dbg !4335
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4335
  store i8* %137, i8** %10, align 8, !dbg !4335
  %138 = bitcast i8* %136 to i8**, !dbg !4335
  %139 = load i8*, i8** %138, align 8, !dbg !4335
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4338
  store i8* %139, i8** %140, align 8, !dbg !4339, !tbaa !776
  %141 = icmp eq i8* %139, null, !dbg !4340
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4324, metadata !769), !dbg !4334
  %142 = select i1 %141, i64 9, i64 10, !dbg !4341
  br label %30, !dbg !4341
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4344 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4348, metadata !769), !dbg !4357
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4349, metadata !769), !dbg !4358
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4350, metadata !769), !dbg !4359
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4351, metadata !769), !dbg !4360
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4361
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4361
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4352, metadata !769), !dbg !4362
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4363
  call void @llvm.va_start(i8* nonnull %6), !dbg !4363
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4364
  call void @llvm.va_end(i8* nonnull %6), !dbg !4365
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4366
  ret void, !dbg !4366
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4367 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.122, i64 0, i64 0), i32 5) #10, !dbg !4368
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.123, i64 0, i64 0)) #10, !dbg !4368
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.124, i64 0, i64 0), i32 5) #10, !dbg !4369
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.125, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.126, i64 0, i64 0)) #10, !dbg !4369
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.127, i64 0, i64 0), i32 5) #10, !dbg !4370
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4370, !tbaa !776
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4370
  ret void, !dbg !4371
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4372 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4376, metadata !769), !dbg !4378
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4377, metadata !769), !dbg !4379
  %3 = udiv i64 9223372036854775807, %1, !dbg !4380
  %4 = icmp ult i64 %3, %0, !dbg !4380
  br i1 %4, label %5, label %6, !dbg !4382

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4383
  unreachable, !dbg !4383

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4384
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4385, metadata !769) #10, !dbg !4392
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4394
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4391, metadata !769) #10, !dbg !4395
  %9 = icmp eq i8* %8, null, !dbg !4396
  %10 = icmp ne i64 %7, 0, !dbg !4398
  %11 = and i1 %10, %9, !dbg !4399
  br i1 %11, label %12, label %13, !dbg !4399

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4400
  unreachable, !dbg !4400

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4401
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4386 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4385, metadata !769), !dbg !4402
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4403
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4391, metadata !769), !dbg !4404
  %3 = icmp eq i8* %2, null, !dbg !4405
  %4 = icmp ne i64 %0, 0, !dbg !4406
  %5 = and i1 %4, %3, !dbg !4407
  br i1 %5, label %6, label %7, !dbg !4407

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4408
  unreachable, !dbg !4408

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4409
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4410 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4414, metadata !769), !dbg !4417
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4415, metadata !769), !dbg !4418
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4416, metadata !769), !dbg !4419
  %4 = udiv i64 9223372036854775807, %2, !dbg !4420
  %5 = icmp ult i64 %4, %1, !dbg !4420
  br i1 %5, label %6, label %7, !dbg !4422

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4423
  unreachable, !dbg !4423

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4424
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4425, metadata !769) #10, !dbg !4431
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4430, metadata !769) #10, !dbg !4433
  %9 = icmp eq i64 %8, 0, !dbg !4434
  %10 = icmp ne i8* %0, null, !dbg !4436
  %11 = and i1 %10, %9, !dbg !4437
  br i1 %11, label %12, label %13, !dbg !4437

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4438
  br label %19, !dbg !4440

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4441
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4425, metadata !769) #10, !dbg !4431
  %15 = icmp eq i8* %14, null, !dbg !4442
  %16 = icmp ne i64 %8, 0, !dbg !4444
  %17 = and i1 %16, %15, !dbg !4445
  br i1 %17, label %18, label %19, !dbg !4445

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4446
  unreachable, !dbg !4446

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4447
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4426 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4425, metadata !769), !dbg !4448
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4430, metadata !769), !dbg !4449
  %3 = icmp eq i64 %1, 0, !dbg !4450
  %4 = icmp ne i8* %0, null, !dbg !4451
  %5 = and i1 %4, %3, !dbg !4452
  br i1 %5, label %6, label %7, !dbg !4452

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4453
  br label %13, !dbg !4454

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4455
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4425, metadata !769), !dbg !4448
  %9 = icmp eq i8* %8, null, !dbg !4456
  %10 = icmp ne i64 %1, 0, !dbg !4457
  %11 = and i1 %10, %9, !dbg !4458
  br i1 %11, label %12, label %13, !dbg !4458

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4459
  unreachable, !dbg !4459

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4460
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !729 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !734, metadata !769), !dbg !4461
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !735, metadata !769), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !736, metadata !769), !dbg !4463
  %4 = load i64, i64* %1, align 8, !dbg !4464, !tbaa !1008
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !737, metadata !769), !dbg !4465
  %5 = icmp eq i8* %0, null, !dbg !4466
  br i1 %5, label %6, label %13, !dbg !4468

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4469
  br i1 %7, label %8, label %17, !dbg !4472

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4473
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !737, metadata !769), !dbg !4465
  %10 = icmp ugt i64 %2, 128, !dbg !4475
  %11 = zext i1 %10 to i64, !dbg !4475
  %12 = add nuw nsw i64 %9, %11, !dbg !4476
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !737, metadata !769), !dbg !4465
  br label %17, !dbg !4477

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4478
  %15 = icmp ugt i64 %14, %4, !dbg !4481
  br i1 %15, label %20, label %16, !dbg !4482

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4483
  unreachable, !dbg !4483

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !737, metadata !769), !dbg !4465
  store i64 %18, i64* %1, align 8, !dbg !4484, !tbaa !1008
  %19 = mul i64 %18, %2, !dbg !4485
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4425, metadata !769) #10, !dbg !4486
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4430, metadata !769) #10, !dbg !4488
  br label %27, !dbg !4489

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4490
  %22 = add i64 %4, 1, !dbg !4491
  %23 = add i64 %22, %21, !dbg !4492
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !737, metadata !769), !dbg !4465
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !737, metadata !769), !dbg !4465
  store i64 %23, i64* %1, align 8, !dbg !4484, !tbaa !1008
  %24 = mul i64 %23, %2, !dbg !4485
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4425, metadata !769) #10, !dbg !4486
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4430, metadata !769) #10, !dbg !4488
  %25 = icmp eq i64 %24, 0, !dbg !4493
  br i1 %25, label %26, label %27, !dbg !4489

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4494
  br label %34, !dbg !4495

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4496
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4425, metadata !769) #10, !dbg !4486
  %30 = icmp eq i8* %29, null, !dbg !4497
  %31 = icmp ne i64 %28, 0, !dbg !4498
  %32 = and i1 %31, %30, !dbg !4499
  br i1 %32, label %33, label %34, !dbg !4499

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4500
  unreachable, !dbg !4500

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4501
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4502 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4504, metadata !769), !dbg !4505
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4385, metadata !769) #10, !dbg !4506
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4508
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4391, metadata !769) #10, !dbg !4509
  %3 = icmp eq i8* %2, null, !dbg !4510
  %4 = icmp ne i64 %0, 0, !dbg !4511
  %5 = and i1 %4, %3, !dbg !4512
  br i1 %5, label %6, label %7, !dbg !4512

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4513
  unreachable, !dbg !4513

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4514
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4515 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4519, metadata !769), !dbg !4521
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4520, metadata !769), !dbg !4522
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !734, metadata !769) #10, !dbg !4523
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !735, metadata !769) #10, !dbg !4525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !736, metadata !769) #10, !dbg !4526
  %3 = load i64, i64* %1, align 8, !dbg !4527, !tbaa !1008
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !737, metadata !769) #10, !dbg !4528
  %4 = icmp eq i8* %0, null, !dbg !4529
  br i1 %4, label %5, label %8, !dbg !4530

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4531
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !737, metadata !769) #10, !dbg !4528
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !737, metadata !769) #10, !dbg !4528
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4532
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !737, metadata !769) #10, !dbg !4528
  store i64 %7, i64* %1, align 8, !dbg !4533, !tbaa !1008
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4425, metadata !769) #10, !dbg !4534
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4430, metadata !769) #10, !dbg !4536
  br label %17, !dbg !4537

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4538
  br i1 %9, label %11, label %10, !dbg !4539

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4540
  unreachable, !dbg !4540

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4541
  %13 = add i64 %3, 1, !dbg !4542
  %14 = add i64 %13, %12, !dbg !4543
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !737, metadata !769) #10, !dbg !4528
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !737, metadata !769) #10, !dbg !4528
  store i64 %14, i64* %1, align 8, !dbg !4533, !tbaa !1008
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4425, metadata !769) #10, !dbg !4534
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4430, metadata !769) #10, !dbg !4536
  %15 = icmp eq i64 %14, 0, !dbg !4544
  br i1 %15, label %16, label %17, !dbg !4537

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4545
  br label %24, !dbg !4546

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4547
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4425, metadata !769) #10, !dbg !4534
  %20 = icmp eq i8* %19, null, !dbg !4548
  %21 = icmp ne i64 %18, 0, !dbg !4549
  %22 = and i1 %21, %20, !dbg !4550
  br i1 %22, label %23, label %24, !dbg !4550

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4551
  unreachable, !dbg !4551

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4552
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4553 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4555, metadata !769), !dbg !4556
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4385, metadata !769) #10, !dbg !4557
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4559
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4391, metadata !769) #10, !dbg !4560
  %3 = icmp eq i8* %2, null, !dbg !4561
  %4 = icmp ne i64 %0, 0, !dbg !4562
  %5 = and i1 %4, %3, !dbg !4563
  br i1 %5, label %6, label %7, !dbg !4563

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4564
  unreachable, !dbg !4564

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4565
  ret i8* %2, !dbg !4566
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4567 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4569, metadata !769), !dbg !4572
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4570, metadata !769), !dbg !4573
  %3 = udiv i64 9223372036854775807, %1, !dbg !4574
  %4 = icmp ult i64 %3, %0, !dbg !4574
  br i1 %4, label %8, label %5, !dbg !4576

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4577
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4571, metadata !769), !dbg !4578
  %7 = icmp eq i8* %6, null, !dbg !4579
  br i1 %7, label %8, label %9, !dbg !4580

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4581
  unreachable, !dbg !4581

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4582
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4583 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4585, metadata !769), !dbg !4587
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4586, metadata !769), !dbg !4588
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4385, metadata !769) #10, !dbg !4589
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4591
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4391, metadata !769) #10, !dbg !4592
  %4 = icmp eq i8* %3, null, !dbg !4593
  %5 = icmp ne i64 %1, 0, !dbg !4594
  %6 = and i1 %5, %4, !dbg !4595
  br i1 %6, label %7, label %8, !dbg !4595

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4596
  unreachable, !dbg !4596

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4597
  ret i8* %3, !dbg !4598
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4599 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4601, metadata !769), !dbg !4602
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4603
  %3 = add i64 %2, 1, !dbg !4604
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4585, metadata !769) #10, !dbg !4605
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4586, metadata !769) #10, !dbg !4607
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4385, metadata !769) #10, !dbg !4608
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4610
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4391, metadata !769) #10, !dbg !4611
  %5 = icmp eq i8* %4, null, !dbg !4612
  %6 = icmp ne i64 %3, 0, !dbg !4613
  %7 = and i1 %6, %5, !dbg !4614
  br i1 %7, label %8, label %9, !dbg !4614

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4615
  unreachable, !dbg !4615

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4616
  ret i8* %4, !dbg !4617
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4618 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4620, !tbaa !955
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.138, i64 0, i64 0), i32 5) #10, !dbg !4621
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* %2) #10, !dbg !4622
  tail call void @abort() #15, !dbg !4623
  unreachable, !dbg !4623
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4624 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4627, metadata !769), !dbg !4633
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4628, metadata !769), !dbg !4634
  %3 = icmp eq i64 %0, 0, !dbg !4635
  %4 = icmp eq i64 %1, 0, !dbg !4636
  %5 = or i1 %3, %4, !dbg !4637
  br i1 %5, label %12, label %6, !dbg !4637

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4638
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4630, metadata !769), !dbg !4639
  %8 = udiv i64 %7, %1, !dbg !4640
  %9 = icmp eq i64 %8, %0, !dbg !4642
  br i1 %9, label %12, label %10, !dbg !4643

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4644
  store i32 12, i32* %11, align 4, !dbg !4646, !tbaa !955
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4627, metadata !769), !dbg !4633
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4628, metadata !769), !dbg !4634
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4647
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4629, metadata !769), !dbg !4648
  br label %16, !dbg !4649

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4650
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4651 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4696, metadata !769), !dbg !4700
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4697, metadata !769), !dbg !4701
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4699, metadata !769), !dbg !4702
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4703
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4698, metadata !769), !dbg !4704
  %3 = icmp slt i32 %2, 0, !dbg !4705
  br i1 %3, label %4, label %6, !dbg !4707

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4708
  br label %24, !dbg !4709

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4710
  %8 = icmp eq i32 %7, 0, !dbg !4710
  br i1 %8, label %13, label %9, !dbg !4712

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4713
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4714
  %12 = icmp eq i64 %11, -1, !dbg !4715
  br i1 %12, label %16, label %13, !dbg !4716

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4717
  %15 = icmp eq i32 %14, 0, !dbg !4717
  br i1 %15, label %16, label %18, !dbg !4718

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4697, metadata !769), !dbg !4701
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4719
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4699, metadata !769), !dbg !4702
  br label %24, !dbg !4720

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4721
  %20 = load i32, i32* %19, align 4, !dbg !4721, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4697, metadata !769), !dbg !4701
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4697, metadata !769), !dbg !4701
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4719
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4699, metadata !769), !dbg !4702
  %22 = icmp eq i32 %20, 0, !dbg !4722
  br i1 %22, label %24, label %23, !dbg !4720

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4724, !tbaa !955
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4699, metadata !769), !dbg !4702
  br label %24, !dbg !4726

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4727
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !329 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !337, metadata !769), !dbg !4728
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !338, metadata !769), !dbg !4729
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4730
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10, !dbg !4730
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !339, metadata !769), !dbg !4731
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !350, metadata !769), !dbg !4732
  call void @llvm.va_start(i8* nonnull %4), !dbg !4733
  %5 = icmp eq i32 %1, 1030, !dbg !4734
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !4734

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !4735

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4735
  %12 = load i8*, i8** %11, align 16, !dbg !4735
  %13 = sext i32 %7 to i64, !dbg !4735
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !4735
  %15 = add i32 %7, 8, !dbg !4735
  store i32 %15, i32* %6, align 16, !dbg !4735
  br label %20, !dbg !4735

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4735
  %18 = load i8*, i8** %17, align 8, !dbg !4735
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !4735
  store i8* %19, i8** %17, align 8, !dbg !4735
  br label %20, !dbg !4735

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !4735
  %23 = load i32, i32* %22, align 4, !dbg !4735
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !351, metadata !769), !dbg !4736
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4737, !tbaa !955
  %25 = icmp sgt i32 %24, -1, !dbg !4739
  br i1 %25, label %26, label %39, !dbg !4740

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !4741
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !350, metadata !769), !dbg !4732
  %28 = icmp sgt i32 %27, -1, !dbg !4743
  br i1 %28, label %36, label %29, !dbg !4745

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !4746
  %31 = load i32, i32* %30, align 4, !dbg !4746, !tbaa !955
  %32 = icmp eq i32 %31, 22, !dbg !4747
  br i1 %32, label %33, label %36, !dbg !4748

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4749
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !350, metadata !769), !dbg !4732
  %35 = icmp slt i32 %34, 0, !dbg !4751
  br i1 %35, label %75, label %36, !dbg !4753

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !350, metadata !769), !dbg !4732
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !955
  br label %42, !dbg !4754

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4755
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !350, metadata !769), !dbg !4732
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4756
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !4756
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !350, metadata !769), !dbg !4732
  %45 = icmp sgt i32 %44, -1, !dbg !4757
  %46 = icmp eq i32 %43, -1, !dbg !4758
  %47 = and i1 %45, %46, !dbg !4759
  br i1 %47, label %48, label %75, !dbg !4759

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !4760
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !354, metadata !769), !dbg !4761
  %50 = icmp slt i32 %49, 0, !dbg !4762
  br i1 %50, label %55, label %51, !dbg !4763

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !4764
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10, !dbg !4765
  %54 = icmp eq i32 %53, -1, !dbg !4766
  br i1 %54, label %55, label %75, !dbg !4767

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #17, !dbg !4768
  %57 = load i32, i32* %56, align 4, !dbg !4768, !tbaa !955
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !357, metadata !769), !dbg !4769
  %58 = call i32 @close(i32 %44) #10, !dbg !4770
  store i32 %57, i32* %56, align 4, !dbg !4771, !tbaa !955
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !350, metadata !769), !dbg !4732
  br label %75, !dbg !4772

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !4773

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4773
  %62 = load i8*, i8** %61, align 16, !dbg !4773
  %63 = sext i32 %7 to i64, !dbg !4773
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !4773
  %65 = add i32 %7, 8, !dbg !4773
  store i32 %65, i32* %6, align 16, !dbg !4773
  br label %70, !dbg !4773

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4773
  %68 = load i8*, i8** %67, align 8, !dbg !4773
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !4773
  store i8* %69, i8** %67, align 8, !dbg !4773
  br label %70, !dbg !4773

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !4773
  %73 = load i8*, i8** %72, align 8, !dbg !4773
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !360, metadata !769), !dbg !4774
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10, !dbg !4775
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !350, metadata !769), !dbg !4732
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !350, metadata !769), !dbg !4732
  call void @llvm.va_end(i8* nonnull %4), !dbg !4776
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10, !dbg !4777
  ret i32 %76, !dbg !4778
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4779 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4824, metadata !769), !dbg !4825
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4826
  br i1 %2, label %6, label %3, !dbg !4828

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4829
  %5 = icmp eq i32 %4, 0, !dbg !4829
  br i1 %5, label %6, label %8, !dbg !4830

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4831
  br label %17, !dbg !4832

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4833, metadata !769) #10, !dbg !4838
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4840
  %10 = load i32, i32* %9, align 8, !dbg !4840, !tbaa !1365
  %11 = and i32 %10, 256, !dbg !4842
  %12 = icmp eq i32 %11, 0, !dbg !4842
  br i1 %12, label %15, label %13, !dbg !4843

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4844
  br label %15, !dbg !4844

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4845
  br label %17, !dbg !4846

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4847
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4848 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4893, metadata !769), !dbg !4899
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4894, metadata !769), !dbg !4900
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4895, metadata !769), !dbg !4901
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4902
  %5 = load i8*, i8** %4, align 8, !dbg !4902, !tbaa !4903
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4904
  %7 = load i8*, i8** %6, align 8, !dbg !4904, !tbaa !4905
  %8 = icmp eq i8* %5, %7, !dbg !4906
  br i1 %8, label %9, label %28, !dbg !4907

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4908
  %11 = load i8*, i8** %10, align 8, !dbg !4908, !tbaa !1299
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4909
  %13 = load i8*, i8** %12, align 8, !dbg !4909, !tbaa !4910
  %14 = icmp eq i8* %11, %13, !dbg !4911
  br i1 %14, label %15, label %28, !dbg !4912

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4913
  %17 = load i8*, i8** %16, align 8, !dbg !4913, !tbaa !4914
  %18 = icmp eq i8* %17, null, !dbg !4915
  br i1 %18, label %19, label %28, !dbg !4916

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4917
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4918
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4896, metadata !769), !dbg !4919
  %22 = icmp eq i64 %21, -1, !dbg !4920
  br i1 %22, label %30, label %23, !dbg !4922

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4923
  %25 = load i32, i32* %24, align 8, !dbg !4924, !tbaa !1365
  %26 = and i32 %25, -17, !dbg !4924
  store i32 %26, i32* %24, align 8, !dbg !4924, !tbaa !1365
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4925
  store i64 %21, i64* %27, align 8, !dbg !4926, !tbaa !4927
  br label %30, !dbg !4928

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4929
  br label %30, !dbg !4930

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4931
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4932 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4949, metadata !769), !dbg !4958
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4950, metadata !769), !dbg !4959
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4951, metadata !769), !dbg !4960
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4952, metadata !769), !dbg !4961
  %6 = bitcast i32* %5 to i8*, !dbg !4962
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4962
  %7 = icmp eq i32* %0, null, !dbg !4963
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4949, metadata !769), !dbg !4958
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4965
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4949, metadata !769), !dbg !4958
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4966
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4953, metadata !769), !dbg !4967
  %10 = icmp ugt i64 %9, -3, !dbg !4968
  %11 = icmp ne i64 %2, 0, !dbg !4969
  %12 = and i1 %11, %10, !dbg !4970
  br i1 %12, label %13, label %18, !dbg !4970

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4971
  br i1 %14, label %18, label %15, !dbg !4972

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4973, !tbaa !1038
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4955, metadata !769), !dbg !4974
  %17 = zext i8 %16 to i32, !dbg !4975
  store i32 %17, i32* %8, align 4, !dbg !4976, !tbaa !955
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4977
  ret i64 %19, !dbg !4977
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4978 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5023, metadata !769), !dbg !5028
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5029
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5030, metadata !769), !dbg !5033
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5035
  %4 = load i32, i32* %3, align 8, !dbg !5035, !tbaa !1365
  %5 = and i32 %4, 32, !dbg !5035
  %6 = icmp eq i32 %5, 0, !dbg !5036
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5037
  %8 = icmp ne i32 %7, 0, !dbg !5038
  br i1 %6, label %9, label %19, !dbg !5039

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5041
  %11 = xor i1 %8, true, !dbg !5042
  %12 = or i1 %10, %11, !dbg !5042
  %13 = sext i1 %8 to i32, !dbg !5042
  br i1 %12, label %22, label %14, !dbg !5042

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !5043
  %16 = load i32, i32* %15, align 4, !dbg !5043, !tbaa !955
  %17 = icmp ne i32 %16, 9, !dbg !5044
  %18 = sext i1 %17 to i32, !dbg !5045
  br label %22, !dbg !5045

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5046

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !5048
  store i32 0, i32* %21, align 4, !dbg !5050, !tbaa !955
  br label %22, !dbg !5048

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5051
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5052 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5057, metadata !769), !dbg !5060
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5058, metadata !769), !dbg !5061
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5062
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5059, metadata !769), !dbg !5063
  %3 = icmp eq i8* %2, null, !dbg !5064
  br i1 %3, label %11, label %4, !dbg !5066

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i64 0, i64 0)) #14, !dbg !5067
  %6 = icmp eq i32 %5, 0, !dbg !5072
  br i1 %6, label %10, label %7, !dbg !5073

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0)) #14, !dbg !5074
  %9 = icmp eq i32 %8, 0, !dbg !5075
  br i1 %9, label %10, label %11, !dbg !5076

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5058, metadata !769), !dbg !5061
  br label %11, !dbg !5077

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5078
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5079 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5085, metadata !769), !dbg !5159
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5152, metadata !769), !dbg !5162
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5163
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5083, metadata !769), !dbg !5164
  %4 = icmp eq i8* %3, null, !dbg !5165
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), i8* %3, !dbg !5167
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5083, metadata !769), !dbg !5164
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5168, !tbaa !776
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5099, metadata !769) #10, !dbg !5169
  %7 = icmp eq i8* %6, null, !dbg !5170
  br i1 %7, label %8, label %123, !dbg !5171

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.161, i64 0, i64 0)) #10, !dbg !5172
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5100, metadata !769) #10, !dbg !5173
  %10 = icmp eq i8* %9, null, !dbg !5174
  br i1 %10, label %14, label %11, !dbg !5176

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5177, !tbaa !1038
  %13 = icmp eq i8 %12, 0, !dbg !5178
  br i1 %13, label %14, label %15, !dbg !5179

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5180

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.162, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5100, metadata !769) #10, !dbg !5173
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !5181
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5103, metadata !769) #10, !dbg !5182
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5105, metadata !769) #10, !dbg !5183
  %18 = icmp eq i64 %17, 0, !dbg !5184
  br i1 %18, label %24, label %19, !dbg !5185

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5186
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5186
  %22 = load i8, i8* %21, align 1, !dbg !5186, !tbaa !1038
  %23 = icmp ne i8 %22, 47, !dbg !5186
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5187
  %27 = add i64 %17, 14, !dbg !5188
  %28 = add i64 %27, %26, !dbg !5189
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5190
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5102, metadata !769) #10, !dbg !5191
  %30 = icmp eq i8* %29, null, !dbg !5192
  br i1 %30, label %121, label %31, !dbg !5192

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5193
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5196

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5197, !tbaa !1038
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5199
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.163, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5200
  br label %37, !dbg !5201

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5199
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.163, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5200
  br label %37, !dbg !5201

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5202
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5107, metadata !769) #10, !dbg !5203
  %39 = icmp slt i32 %38, 0, !dbg !5204
  br i1 %39, label %119, label %40, !dbg !5205

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.164, i64 0, i64 0)) #10, !dbg !5206
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5108, metadata !769) #10, !dbg !5207
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5208
  br i1 %42, label %43, label %45, !dbg !5209

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !5210
  br label %119, !dbg !5212

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5149, metadata !769) #10, !dbg !5213
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5150, metadata !769) #10, !dbg !5214
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5215

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !5216

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5149, metadata !769) #10, !dbg !5213
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5150, metadata !769) #10, !dbg !5214
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !5216
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !5217
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5218, metadata !769) #10, !dbg !5223
  %54 = load i8*, i8** %48, align 8, !dbg !5225, !tbaa !4905
  %55 = load i8*, i8** %49, align 8, !dbg !5225, !tbaa !4903
  %56 = icmp ult i8* %54, %55, !dbg !5225
  br i1 %56, label %59, label %57, !dbg !5225, !prof !1302

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5225
  br label %63, !dbg !5225

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !5225
  store i8* %60, i8** %48, align 8, !dbg !5225, !tbaa !4905
  %61 = load i8, i8* %54, align 1, !dbg !5225, !tbaa !1038
  %62 = zext i8 %61 to i32, !dbg !5225
  br label %63, !dbg !5225

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !5225
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !5151, metadata !769) #10, !dbg !5226
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !5227, !llvm.loop !5228

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !5233

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5218, metadata !769) #10, !dbg !5235
  %67 = load i8*, i8** %48, align 8, !dbg !5233, !tbaa !4905
  %68 = load i8*, i8** %49, align 8, !dbg !5233, !tbaa !4903
  %69 = icmp ult i8* %67, %68, !dbg !5233
  br i1 %69, label %72, label %70, !dbg !5233, !prof !1302

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5233
  br label %76, !dbg !5233

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !5233
  store i8* %73, i8** %48, align 8, !dbg !5233, !tbaa !4905
  %74 = load i8, i8* %67, align 1, !dbg !5233, !tbaa !1038
  %75 = zext i8 %74 to i32, !dbg !5233
  br label %76, !dbg !5233

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !5233
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !5151, metadata !769) #10, !dbg !5226
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !5236, !llvm.loop !5237

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !5240
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.165, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !5241
  %81 = icmp slt i32 %80, 2, !dbg !5243
  br i1 %81, label %112, label %82, !dbg !5244

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !5245
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5156, metadata !769) #10, !dbg !5246
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !5247
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !5157, metadata !769) #10, !dbg !5248
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5158, metadata !769) #10, !dbg !5249
  %85 = icmp eq i64 %51, 0, !dbg !5250
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !5252

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !5150, metadata !769) #10, !dbg !5214
  %90 = add i64 %87, 2, !dbg !5253
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !5255
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !5149, metadata !769) #10, !dbg !5213
  br label %96, !dbg !5256

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !5257
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !5150, metadata !769) #10, !dbg !5214
  %94 = add i64 %93, 1, !dbg !5259
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !5260
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !5149, metadata !769) #10, !dbg !5213
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5149, metadata !769) #10, !dbg !5213
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5150, metadata !769) #10, !dbg !5214
  %99 = icmp eq i8* %98, null, !dbg !5261
  br i1 %99, label %100, label %102, !dbg !5263

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5150, metadata !769) #10, !dbg !5214
  call void @free(i8* %52) #10, !dbg !5264
  br label %112, !dbg !5266

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !5267
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !5267
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !5268
  %104 = xor i64 %84, -1, !dbg !5269
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5269
  %106 = xor i64 %83, -1, !dbg !5270
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !5270
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !5271, metadata !769) #10, !dbg !5280
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5279, metadata !769) #10, !dbg !5280
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !5282
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !5283
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5271, metadata !769) #10, !dbg !5284
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !5279, metadata !769) #10, !dbg !5284
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !5286
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !5287
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5149, metadata !769) #10, !dbg !5213
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5150, metadata !769) #10, !dbg !5214
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !5267
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !5267
  br label %50, !dbg !5288, !llvm.loop !5237

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !5267
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !5267
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5289
  %116 = icmp eq i64 %113, 0, !dbg !5290
  br i1 %116, label %119, label %117, !dbg !5292

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !5293
  store i8 0, i8* %118, align 1, !dbg !5295, !tbaa !1038
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !5099, metadata !769) #10, !dbg !5169
  call void @free(i8* %29) #10, !dbg !5296
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !5099, metadata !769) #10, !dbg !5169
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !5297, !tbaa !776
  br label %123, !dbg !5298

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5099, metadata !769) #10, !dbg !5169
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5084, metadata !769), !dbg !5299
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5084, metadata !769), !dbg !5299
  %125 = load i8, i8* %124, align 1, !dbg !5300, !tbaa !1038
  %126 = icmp eq i8 %125, 0, !dbg !5302
  br i1 %126, label %152, label %127, !dbg !5303

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !5304

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !5084, metadata !769), !dbg !5299
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !5304
  %132 = icmp eq i32 %131, 0, !dbg !5306
  br i1 %132, label %139, label %133, !dbg !5307

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !5308
  br i1 %134, label %135, label %143, !dbg !5309

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !5310
  %137 = load i8, i8* %136, align 1, !dbg !5310, !tbaa !1038
  %138 = icmp eq i8 %137, 0, !dbg !5311
  br i1 %138, label %139, label %143, !dbg !5312

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !5313
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !5315
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !5316
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !5083, metadata !769), !dbg !5164
  br label %152, !dbg !5317

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !5318
  %145 = add i64 %144, 1, !dbg !5319
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !5320
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5084, metadata !769), !dbg !5299
  %147 = call i64 @strlen(i8* %146) #14, !dbg !5321
  %148 = add i64 %147, 1, !dbg !5322
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !5323
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5084, metadata !769), !dbg !5299
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5084, metadata !769), !dbg !5299
  %150 = load i8, i8* %149, align 1, !dbg !5300, !tbaa !1038
  %151 = icmp eq i8 %150, 0, !dbg !5302
  br i1 %151, label %152, label %128, !dbg !5303, !llvm.loop !5324

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5083, metadata !769), !dbg !5164
  %154 = load i8, i8* %153, align 1, !dbg !5326, !tbaa !1038
  %155 = icmp eq i8 %154, 0, !dbg !5328
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.166, i64 0, i64 0), i8* %153, !dbg !5329
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !5083, metadata !769), !dbg !5164
  ret i8* %156, !dbg !5330
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !226, !232, !240, !252, !709, !712, !259, !266, !714, !716, !320, !724, !741, !743, !745, !333, !747, !749, !751, !754, !756, !364}
!llvm.ident = !{!758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758, !758}
!llvm.module.flags = !{!759, !760, !761, !762, !763}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 203, type: !212, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !67)
!3 = !DIFile(filename: "src/md5sum.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !34, !48}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!8 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!9 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!10 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!11 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!12 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!13 = !DIEnumerator(name: "c_quoting_style", value: 5)
!14 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!15 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!16 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!17 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!18 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 46, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256)
!23 = !DIEnumerator(name: "_ISlower", value: 512)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!27 = !DIEnumerator(name: "_ISspace", value: 8192)
!28 = !DIEnumerator(name: "_ISprint", value: 16384)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768)
!30 = !DIEnumerator(name: "_ISblank", value: 1)
!31 = !DIEnumerator(name: "_IScntrl", value: 2)
!32 = !DIEnumerator(name: "_ISpunct", value: 4)
!33 = !DIEnumerator(name: "_ISalnum", value: 8)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !36, file: !35, line: 187, size: 32, elements: !46)
!35 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = distinct !DISubprogram(name: "select_plural", scope: !35, file: !35, line: 183, type: !37, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !44)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !40}
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !41, line: 112, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !43, line: 62, baseType: !39)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!44 = !{!45}
!45 = !DILocalVariable(name: "n", arg: 1, scope: !36, file: !35, line: 183, type: !40)
!46 = !{!47}
!47 = !DIEnumerator(name: "PLURAL_REDUCER", value: 1000000)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 45, size: 32, elements: !50)
!49 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!52 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!53 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!54 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!55 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!56 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!57 = !{!58, !60, !61, !63, !64, !66, !65}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 62, baseType: !39)
!62 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!67 = !{!68, !71, !73, !75, !0, !96, !98, !100, !102, !104, !106, !210}
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 131, type: !70, isLocal: true, isDefinition: true)
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "min_digest_line_length", scope: !2, file: !3, line: 134, type: !61, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "digest_hex_bytes", scope: !2, file: !3, line: 137, type: !61, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "infomap", scope: !77, file: !35, line: 632, type: !93, isLocal: true, isDefinition: true)
!77 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !35, file: !35, line: 630, type: !78, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !82)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!82 = !{!83, !84, !85, !92}
!83 = !DILocalVariable(name: "program", arg: 1, scope: !77, file: !35, line: 630, type: !80)
!84 = !DILocalVariable(name: "node", scope: !77, file: !35, line: 642, type: !80)
!85 = !DILocalVariable(name: "map_prog", scope: !77, file: !35, line: 643, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !77, file: !35, line: 632, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !88, file: !35, line: 632, baseType: !80, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !35, line: 632, baseType: !80, size: 64, offset: 64)
!92 = !DILocalVariable(name: "lc_messages", scope: !77, file: !35, line: 655, type: !80)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 896, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 7)
!96 = !DIGlobalVariableExpression(var: !97)
!97 = distinct !DIGlobalVariable(name: "status_only", scope: !2, file: !3, line: 141, type: !70, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "warn", scope: !2, file: !3, line: 145, type: !70, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "quiet", scope: !2, file: !3, line: 151, type: !70, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "ignore_missing", scope: !2, file: !3, line: 148, type: !70, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105)
!105 = distinct !DIGlobalVariable(name: "strict", scope: !2, file: !3, line: 155, type: !70, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107)
!107 = distinct !DIGlobalVariable(name: "bin2hex", scope: !108, file: !3, line: 723, type: !207, isLocal: true, isDefinition: true)
!108 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 644, type: !109, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{!70, !80}
!111 = !{!112, !113, !168, !169, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !181, !183, !184, !185, !189, !192, !193, !194, !198, !199, !205}
!112 = !DILocalVariable(name: "checkfile_name", arg: 1, scope: !108, file: !3, line: 644, type: !80)
!113 = !DILocalVariable(name: "checkfile_stream", scope: !108, file: !3, line: 646, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !117)
!116 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !119)
!118 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !140, !141, !142, !143, !146, !147, !149, !153, !156, !158, !159, !160, !161, !162, !163, !164}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !117, file: !118, line: 242, baseType: !63, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !117, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !117, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !117, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !117, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !117, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !117, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !117, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !117, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !117, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !117, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !117, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !117, file: !118, line: 260, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !135)
!135 = !{!136, !137, !139}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !134, file: !118, line: 157, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !134, file: !118, line: 158, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !134, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !117, file: !118, line: 262, baseType: !138, size: 64, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !117, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !117, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !117, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 140, baseType: !145)
!145 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !117, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !117, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!148 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !117, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 8, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 1)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !117, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !118, line: 150, baseType: null)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !117, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 141, baseType: !145)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !117, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !117, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !117, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !117, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !117, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !117, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !117, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 160, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 20)
!168 = !DILocalVariable(name: "n_misformatted_lines", scope: !108, file: !3, line: 647, type: !40)
!169 = !DILocalVariable(name: "n_improperly_formatted_lines", scope: !108, file: !3, line: 648, type: !40)
!170 = !DILocalVariable(name: "n_mismatched_checksums", scope: !108, file: !3, line: 649, type: !40)
!171 = !DILocalVariable(name: "n_open_or_read_failures", scope: !108, file: !3, line: 650, type: !40)
!172 = !DILocalVariable(name: "properly_formatted_lines", scope: !108, file: !3, line: 651, type: !70)
!173 = !DILocalVariable(name: "matched_checksums", scope: !108, file: !3, line: 652, type: !70)
!174 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !108, file: !3, line: 653, type: !175)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 160, elements: !166)
!176 = !DILocalVariable(name: "bin_buffer", scope: !108, file: !3, line: 655, type: !64)
!177 = !DILocalVariable(name: "line_number", scope: !108, file: !3, line: 656, type: !40)
!178 = !DILocalVariable(name: "line", scope: !108, file: !3, line: 657, type: !58)
!179 = !DILocalVariable(name: "line_chars_allocated", scope: !108, file: !3, line: 658, type: !61)
!180 = !DILocalVariable(name: "is_stdin", scope: !108, file: !3, line: 659, type: !70)
!181 = !DILocalVariable(name: "filename", scope: !182, file: !3, line: 682, type: !58)
!182 = distinct !DILexicalBlock(scope: !108, file: !3, line: 681, column: 5)
!183 = !DILocalVariable(name: "binary", scope: !182, file: !3, line: 683, type: !63)
!184 = !DILocalVariable(name: "hex_digest", scope: !182, file: !3, line: 684, type: !64)
!185 = !DILocalVariable(name: "line_length", scope: !182, file: !3, line: 685, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !187, line: 109, baseType: !188)
!187 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 181, baseType: !145)
!189 = !DILocalVariable(name: "ok", scope: !190, file: !3, line: 727, type: !70)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 722, column: 9)
!191 = distinct !DILexicalBlock(scope: !182, file: !3, line: 704, column: 11)
!192 = !DILocalVariable(name: "missing", scope: !190, file: !3, line: 728, type: !70)
!193 = !DILocalVariable(name: "needs_escape", scope: !190, file: !3, line: 731, type: !70)
!194 = !DILocalVariable(name: "digest_bin_bytes", scope: !195, file: !3, line: 755, type: !61)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 754, column: 13)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 748, column: 20)
!197 = distinct !DILexicalBlock(scope: !190, file: !3, line: 737, column: 15)
!198 = !DILocalVariable(name: "cnt", scope: !195, file: !3, line: 756, type: !61)
!199 = !DILocalVariable(name: "__res", scope: !200, file: !3, line: 762, type: !63)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 762, column: 23)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 762, column: 23)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 761, column: 17)
!203 = distinct !DILexicalBlock(scope: !204, file: !3, line: 760, column: 15)
!204 = distinct !DILexicalBlock(scope: !195, file: !3, line: 760, column: 15)
!205 = !DILocalVariable(name: "__res", scope: !206, file: !3, line: 764, type: !63)
!206 = distinct !DILexicalBlock(scope: !201, file: !3, line: 764, column: 27)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 16)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "bsd_reversed", scope: !2, file: !3, line: 158, type: !63, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 3072, elements: !222)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !215, line: 50, size: 256, elements: !216)
!215 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!216 = !{!217, !218, !219, !221}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !215, line: 52, baseType: !80, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !214, file: !215, line: 55, baseType: !63, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !214, file: !215, line: 56, baseType: !220, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !214, file: !215, line: 57, baseType: !63, size: 32, offset: 192)
!222 = !{!223}
!223 = !DISubrange(count: 12)
!224 = !DIGlobalVariableExpression(var: !225)
!225 = distinct !DIGlobalVariable(name: "Version", scope: !226, file: !227, line: 2, type: !80, isLocal: false, isDefinition: true)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, globals: !229)
!227 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!228 = !{}
!229 = !{!224}
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "file_name", scope: !232, file: !237, line: 36, type: !80, isLocal: true, isDefinition: true)
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, globals: !234)
!233 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!234 = !{!230, !235}
!235 = !DIGlobalVariableExpression(var: !236)
!236 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !232, file: !237, line: 46, type: !70, isLocal: true, isDefinition: true)
!237 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "fillbuf", scope: !240, file: !245, line: 70, type: !246, isLocal: true, isDefinition: true)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !242, globals: !244)
!241 = !DIFile(filename: "./lib/md5.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !{!58, !80, !243}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !41, line: 100, baseType: !39)
!244 = !{!238}
!245 = !DIFile(filename: "lib/md5.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 512, elements: !248)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!248 = !{!249}
!249 = !DISubrange(count: 64)
!250 = !DIGlobalVariableExpression(var: !251)
!251 = distinct !DIGlobalVariable(name: "exit_failure", scope: !252, file: !255, line: 24, type: !256, isLocal: false, isDefinition: true)
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, globals: !254)
!253 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!254 = !{!250}
!255 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!256 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!257 = !DIGlobalVariableExpression(var: !258)
!258 = distinct !DIGlobalVariable(name: "program_name", scope: !259, file: !263, line: 33, type: !80, isLocal: false, isDefinition: true)
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !261, globals: !262)
!260 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!261 = !{!60, !58}
!262 = !{!257}
!263 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!264 = !DIGlobalVariableExpression(var: !265)
!265 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !266, file: !278, line: 77, type: !314, isLocal: false, isDefinition: true)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !268, retainedTypes: !274, globals: !275)
!267 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!268 = !{!5, !269, !19}
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !270)
!270 = !{!271, !272, !273}
!271 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!272 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!273 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!274 = !{!63, !66, !61, !58}
!275 = !{!264, !276, !283, !296, !298, !303, !310, !312}
!276 = !DIGlobalVariableExpression(var: !277)
!277 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !266, file: !278, line: 93, type: !279, isLocal: false, isDefinition: true)
!278 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 320, elements: !281)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!281 = !{!282}
!282 = !DISubrange(count: 10)
!283 = !DIGlobalVariableExpression(var: !284)
!284 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !266, file: !278, line: 1043, type: !285, isLocal: false, isDefinition: true)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !278, line: 57, size: 448, elements: !286)
!286 = !{!287, !288, !289, !294, !295}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !285, file: !278, line: 60, baseType: !5, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !278, line: 63, baseType: !63, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !285, file: !278, line: 67, baseType: !290, size: 256, offset: 64)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !292)
!291 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!292 = !{!293}
!293 = !DISubrange(count: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !285, file: !278, line: 70, baseType: !80, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !285, file: !278, line: 73, baseType: !80, size: 64, offset: 384)
!296 = !DIGlobalVariableExpression(var: !297)
!297 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !266, file: !278, line: 108, type: !285, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299)
!299 = distinct !DIGlobalVariable(name: "slot0", scope: !266, file: !278, line: 834, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 256)
!303 = !DIGlobalVariableExpression(var: !304)
!304 = distinct !DIGlobalVariable(name: "slotvec", scope: !266, file: !278, line: 837, type: !305, isLocal: true, isDefinition: true)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !278, line: 826, size: 128, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !306, file: !278, line: 828, baseType: !61, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !306, file: !278, line: 829, baseType: !58, size: 64, offset: 64)
!310 = !DIGlobalVariableExpression(var: !311)
!311 = distinct !DIGlobalVariable(name: "nslots", scope: !266, file: !278, line: 835, type: !63, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313)
!313 = distinct !DIGlobalVariable(name: "slotvec0", scope: !266, file: !278, line: 836, type: !306, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 704, elements: !316)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!316 = !{!317}
!317 = !DISubrange(count: 11)
!318 = !DIGlobalVariableExpression(var: !319)
!319 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !320, file: !323, line: 26, type: !324, isLocal: false, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, globals: !322)
!321 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!322 = !{!318}
!323 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 47)
!327 = !DIGlobalVariableExpression(var: !328)
!328 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !329, file: !330, line: 335, type: !63, isLocal: true, isDefinition: true)
!329 = distinct !DISubprogram(name: "rpl_fcntl", scope: !330, file: !330, line: 272, type: !331, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !333, variables: !336)
!330 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!331 = !DISubroutineType(types: !332)
!332 = !{!63, !63, !63, null}
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, globals: !335)
!334 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!335 = !{!327}
!336 = !{!337, !338, !339, !350, !351, !354, !357, !360}
!337 = !DILocalVariable(name: "fd", arg: 1, scope: !329, file: !330, line: 272, type: !63)
!338 = !DILocalVariable(name: "action", arg: 2, scope: !329, file: !330, line: 272, type: !63)
!339 = !DILocalVariable(name: "arg", scope: !329, file: !330, line: 274, type: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !341, line: 30, baseType: !342)
!341 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !334, line: 274, baseType: !343)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 192, elements: !151)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !334, line: 274, size: 192, elements: !345)
!345 = !{!346, !347, !348, !349}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !344, file: !334, line: 274, baseType: !291, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !344, file: !334, line: 274, baseType: !291, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !344, file: !334, line: 274, baseType: !60, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !344, file: !334, line: 274, baseType: !60, size: 64, offset: 128)
!350 = !DILocalVariable(name: "result", scope: !329, file: !330, line: 275, type: !63)
!351 = !DILocalVariable(name: "target", scope: !352, file: !330, line: 322, type: !63)
!352 = distinct !DILexicalBlock(scope: !353, file: !330, line: 321, column: 7)
!353 = distinct !DILexicalBlock(scope: !329, file: !330, line: 278, column: 5)
!354 = !DILocalVariable(name: "flags", scope: !355, file: !330, line: 359, type: !63)
!355 = distinct !DILexicalBlock(scope: !356, file: !330, line: 358, column: 11)
!356 = distinct !DILexicalBlock(scope: !352, file: !330, line: 357, column: 13)
!357 = !DILocalVariable(name: "saved_errno", scope: !358, file: !330, line: 362, type: !63)
!358 = distinct !DILexicalBlock(scope: !359, file: !330, line: 361, column: 15)
!359 = distinct !DILexicalBlock(scope: !355, file: !330, line: 360, column: 17)
!360 = !DILocalVariable(name: "p", scope: !361, file: !330, line: 404, type: !60)
!361 = distinct !DILexicalBlock(scope: !353, file: !330, line: 402, column: 7)
!362 = !DIGlobalVariableExpression(var: !363)
!363 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !364, file: !707, line: 120, type: !708, isLocal: true, isDefinition: true)
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !366, retainedTypes: !705, globals: !706)
!365 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!366 = !{!367}
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !368, line: 41, size: 32, elements: !369)
!368 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!370 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!371 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!372 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!373 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!374 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!375 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!376 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!377 = !DIEnumerator(name: "DAY_1", value: 131079)
!378 = !DIEnumerator(name: "DAY_2", value: 131080)
!379 = !DIEnumerator(name: "DAY_3", value: 131081)
!380 = !DIEnumerator(name: "DAY_4", value: 131082)
!381 = !DIEnumerator(name: "DAY_5", value: 131083)
!382 = !DIEnumerator(name: "DAY_6", value: 131084)
!383 = !DIEnumerator(name: "DAY_7", value: 131085)
!384 = !DIEnumerator(name: "ABMON_1", value: 131086)
!385 = !DIEnumerator(name: "ABMON_2", value: 131087)
!386 = !DIEnumerator(name: "ABMON_3", value: 131088)
!387 = !DIEnumerator(name: "ABMON_4", value: 131089)
!388 = !DIEnumerator(name: "ABMON_5", value: 131090)
!389 = !DIEnumerator(name: "ABMON_6", value: 131091)
!390 = !DIEnumerator(name: "ABMON_7", value: 131092)
!391 = !DIEnumerator(name: "ABMON_8", value: 131093)
!392 = !DIEnumerator(name: "ABMON_9", value: 131094)
!393 = !DIEnumerator(name: "ABMON_10", value: 131095)
!394 = !DIEnumerator(name: "ABMON_11", value: 131096)
!395 = !DIEnumerator(name: "ABMON_12", value: 131097)
!396 = !DIEnumerator(name: "MON_1", value: 131098)
!397 = !DIEnumerator(name: "MON_2", value: 131099)
!398 = !DIEnumerator(name: "MON_3", value: 131100)
!399 = !DIEnumerator(name: "MON_4", value: 131101)
!400 = !DIEnumerator(name: "MON_5", value: 131102)
!401 = !DIEnumerator(name: "MON_6", value: 131103)
!402 = !DIEnumerator(name: "MON_7", value: 131104)
!403 = !DIEnumerator(name: "MON_8", value: 131105)
!404 = !DIEnumerator(name: "MON_9", value: 131106)
!405 = !DIEnumerator(name: "MON_10", value: 131107)
!406 = !DIEnumerator(name: "MON_11", value: 131108)
!407 = !DIEnumerator(name: "MON_12", value: 131109)
!408 = !DIEnumerator(name: "AM_STR", value: 131110)
!409 = !DIEnumerator(name: "PM_STR", value: 131111)
!410 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!411 = !DIEnumerator(name: "D_FMT", value: 131113)
!412 = !DIEnumerator(name: "T_FMT", value: 131114)
!413 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!414 = !DIEnumerator(name: "ERA", value: 131116)
!415 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!416 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!417 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!418 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!419 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!420 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!421 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!422 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!423 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!424 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!425 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!426 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!427 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!428 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!429 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!430 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!431 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!432 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!433 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!434 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!435 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!436 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!437 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!438 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!439 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!440 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!441 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!442 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!443 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!444 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!445 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!446 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!447 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!448 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!449 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!450 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!451 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!452 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!453 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!454 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!455 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!456 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!457 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!458 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!459 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!460 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!461 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!462 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!463 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!464 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!465 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!466 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!467 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!468 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!469 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!470 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!471 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!472 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!473 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!474 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!475 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!476 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!477 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!478 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!479 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!480 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!481 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!482 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!483 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!484 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!485 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!486 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!487 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!488 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!489 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!490 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!491 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!492 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!493 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!494 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!495 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!496 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!497 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!498 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!499 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!500 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!501 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!502 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!503 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!504 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!505 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!506 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!507 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!508 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!509 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!510 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!511 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!512 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!513 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!514 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!515 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!516 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!517 = !DIEnumerator(name: "CODESET", value: 14)
!518 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!519 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!520 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!521 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!543 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!561 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!563 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!564 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!565 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!566 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!567 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!568 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!569 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!570 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!571 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!572 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!573 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!574 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!575 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!576 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!584 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!585 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!586 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!587 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!588 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!589 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!590 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!591 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!592 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!593 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!594 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!595 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!596 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!597 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!598 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!599 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!600 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!601 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!602 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!603 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!604 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!605 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!606 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!607 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!608 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!609 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!610 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!611 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!623 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!624 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!627 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!628 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!629 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!630 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!631 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!632 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!633 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!634 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!635 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!636 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!637 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!638 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!639 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!640 = !DIEnumerator(name: "THOUSEP", value: 65537)
!641 = !DIEnumerator(name: "__GROUPING", value: 65538)
!642 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!643 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!644 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!645 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!646 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!647 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!648 = !DIEnumerator(name: "__YESSTR", value: 327682)
!649 = !DIEnumerator(name: "__NOSTR", value: 327683)
!650 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!651 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!652 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!653 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!654 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!655 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!656 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!657 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!658 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!659 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!660 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!661 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!662 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!663 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!664 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!665 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!666 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!667 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!668 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!669 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!670 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!671 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!672 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!673 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!674 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!675 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!676 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!677 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!678 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!679 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!680 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!681 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!682 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!683 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!684 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!685 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!686 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!698 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!699 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!700 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!701 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!702 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!703 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!704 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!705 = !{!60, !58, !64}
!706 = !{!362}
!707 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!708 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !711)
!710 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!711 = !{!48}
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228)
!713 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !715, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228)
!715 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!716 = distinct !DICompileUnit(language: DW_LANG_C99, file: !717, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !718, retainedTypes: !723)
!717 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!718 = !{!719}
!719 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !720, line: 41, size: 32, elements: !721)
!720 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!721 = !{!722}
!722 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!723 = !{!60}
!724 = distinct !DICompileUnit(language: DW_LANG_C99, file: !725, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !726, retainedTypes: !740)
!725 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!726 = !{!727}
!727 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !729, file: !728, line: 192, size: 32, elements: !738)
!728 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!729 = distinct !DISubprogram(name: "x2nrealloc", scope: !728, file: !728, line: 180, type: !730, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !733)
!730 = !DISubroutineType(types: !731)
!731 = !{!60, !60, !732, !61}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!733 = !{!734, !735, !736, !737}
!734 = !DILocalVariable(name: "p", arg: 1, scope: !729, file: !728, line: 180, type: !60)
!735 = !DILocalVariable(name: "pn", arg: 2, scope: !729, file: !728, line: 180, type: !732)
!736 = !DILocalVariable(name: "s", arg: 3, scope: !729, file: !728, line: 180, type: !61)
!737 = !DILocalVariable(name: "n", scope: !729, file: !728, line: 182, type: !61)
!738 = !{!739}
!739 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!740 = !{!61, !58, !60}
!741 = distinct !DICompileUnit(language: DW_LANG_C99, file: !742, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228)
!742 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!743 = distinct !DICompileUnit(language: DW_LANG_C99, file: !744, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !723)
!744 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!745 = distinct !DICompileUnit(language: DW_LANG_C99, file: !746, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228)
!746 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!747 = distinct !DICompileUnit(language: DW_LANG_C99, file: !748, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !723)
!748 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!749 = distinct !DICompileUnit(language: DW_LANG_C99, file: !750, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !723)
!750 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!751 = distinct !DICompileUnit(language: DW_LANG_C99, file: !752, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !753)
!752 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!753 = !{!61}
!754 = distinct !DICompileUnit(language: DW_LANG_C99, file: !755, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228)
!755 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!756 = distinct !DICompileUnit(language: DW_LANG_C99, file: !757, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228)
!757 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!758 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!759 = !{i32 2, !"Dwarf Version", i32 4}
!760 = !{i32 2, !"Debug Info Version", i32 3}
!761 = !{i32 1, !"wchar_size", i32 4}
!762 = !{i32 7, !"PIC Level", i32 2}
!763 = !{i32 7, !"PIE Level", i32 2}
!764 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !765, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !63}
!767 = !{!768}
!768 = !DILocalVariable(name: "status", arg: 1, scope: !764, file: !3, line: 223, type: !63)
!769 = !DIExpression()
!770 = !DILocation(line: 223, column: 12, scope: !764)
!771 = !DILocation(line: 225, column: 14, scope: !772)
!772 = distinct !DILexicalBlock(scope: !764, file: !3, line: 225, column: 7)
!773 = !DILocation(line: 225, column: 7, scope: !764)
!774 = !DILocation(line: 226, column: 5, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !3, line: 226, column: 5)
!776 = !{!777, !777, i64 0}
!777 = !{!"any pointer", !778, i64 0}
!778 = !{!"omnipotent char", !779, i64 0}
!779 = !{!"Simple C/C++ TBAA"}
!780 = !DILocation(line: 229, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !772, file: !3, line: 228, column: 5)
!782 = !DILocation(line: 580, column: 3, scope: !783, inlinedAt: !786)
!783 = distinct !DISubprogram(name: "emit_stdin_note", scope: !35, file: !35, line: 578, type: !784, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !228)
!784 = !DISubroutineType(types: !785)
!785 = !{null}
!786 = distinct !DILocation(line: 237, column: 7, scope: !781)
!787 = !DILocation(line: 244, column: 9, scope: !788)
!788 = distinct !DILexicalBlock(scope: !781, file: !3, line: 238, column: 11)
!789 = !DILocation(line: 249, column: 7, scope: !781)
!790 = !DILocation(line: 258, column: 7, scope: !781)
!791 = !DILocation(line: 266, column: 9, scope: !792)
!792 = distinct !DILexicalBlock(scope: !781, file: !3, line: 261, column: 11)
!793 = !DILocation(line: 269, column: 7, scope: !781)
!794 = !DILocation(line: 279, column: 7, scope: !781)
!795 = !DILocation(line: 280, column: 7, scope: !781)
!796 = !DILocation(line: 281, column: 7, scope: !781)
!797 = !DILocation(line: 642, column: 15, scope: !77, inlinedAt: !798)
!798 = distinct !DILocation(line: 288, column: 7, scope: !781)
!799 = !DILocation(line: 651, column: 3, scope: !77, inlinedAt: !798)
!800 = !DILocation(line: 655, column: 29, scope: !77, inlinedAt: !798)
!801 = !DILocation(line: 655, column: 15, scope: !77, inlinedAt: !798)
!802 = !DILocation(line: 656, column: 7, scope: !803, inlinedAt: !798)
!803 = distinct !DILexicalBlock(scope: !77, file: !35, line: 656, column: 7)
!804 = !DILocation(line: 656, column: 19, scope: !803, inlinedAt: !798)
!805 = !DILocation(line: 656, column: 22, scope: !803, inlinedAt: !798)
!806 = !DILocation(line: 656, column: 7, scope: !77, inlinedAt: !798)
!807 = !DILocation(line: 662, column: 7, scope: !808, inlinedAt: !798)
!808 = distinct !DILexicalBlock(scope: !803, file: !35, line: 657, column: 5)
!809 = !DILocation(line: 664, column: 5, scope: !808, inlinedAt: !798)
!810 = !DILocation(line: 665, column: 3, scope: !77, inlinedAt: !798)
!811 = !DILocation(line: 667, column: 3, scope: !77, inlinedAt: !798)
!812 = !DILocation(line: 291, column: 3, scope: !764)
!813 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 854, type: !814, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !817)
!814 = !DISubroutineType(types: !815)
!815 = !{!63, !63, !816}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !831, !834, !837, !838, !841}
!818 = !DILocalVariable(name: "argc", arg: 1, scope: !813, file: !3, line: 854, type: !63)
!819 = !DILocalVariable(name: "argv", arg: 2, scope: !813, file: !3, line: 854, type: !816)
!820 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !813, file: !3, line: 856, type: !175)
!821 = !DILocalVariable(name: "bin_buffer", scope: !813, file: !3, line: 858, type: !64)
!822 = !DILocalVariable(name: "do_check", scope: !813, file: !3, line: 859, type: !70)
!823 = !DILocalVariable(name: "opt", scope: !813, file: !3, line: 860, type: !63)
!824 = !DILocalVariable(name: "ok", scope: !813, file: !3, line: 861, type: !70)
!825 = !DILocalVariable(name: "binary", scope: !813, file: !3, line: 862, type: !63)
!826 = !DILocalVariable(name: "prefix_tag", scope: !813, file: !3, line: 863, type: !70)
!827 = !DILocalVariable(name: "short_opts", scope: !813, file: !3, line: 882, type: !80)
!828 = !DILocalVariable(name: "operand_lim", scope: !813, file: !3, line: 1021, type: !816)
!829 = !DILocalVariable(name: "operandp", scope: !830, file: !3, line: 1025, type: !816)
!830 = distinct !DILexicalBlock(scope: !813, file: !3, line: 1025, column: 3)
!831 = !DILocalVariable(name: "file", scope: !832, file: !3, line: 1027, type: !58)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 1026, column: 5)
!833 = distinct !DILexicalBlock(scope: !830, file: !3, line: 1025, column: 3)
!834 = !DILocalVariable(name: "file_is_binary", scope: !835, file: !3, line: 1033, type: !63)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 1032, column: 9)
!836 = distinct !DILexicalBlock(scope: !832, file: !3, line: 1029, column: 11)
!837 = !DILocalVariable(name: "missing", scope: !835, file: !3, line: 1034, type: !70)
!838 = !DILocalVariable(name: "needs_escape", scope: !839, file: !3, line: 1047, type: !70)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 1039, column: 13)
!840 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1036, column: 15)
!841 = !DILocalVariable(name: "i", scope: !839, file: !3, line: 1066, type: !61)
!842 = !DILocation(line: 653, column: 17, scope: !108, inlinedAt: !843)
!843 = distinct !DILocation(line: 1030, column: 15, scope: !836)
!844 = !DILocation(line: 854, column: 11, scope: !813)
!845 = !DILocation(line: 854, column: 24, scope: !813)
!846 = !DILocation(line: 856, column: 3, scope: !813)
!847 = !DILocation(line: 856, column: 17, scope: !813)
!848 = !DILocalVariable(name: "alignment", arg: 2, scope: !849, file: !35, line: 498, type: !61)
!849 = distinct !DISubprogram(name: "ptr_align", scope: !35, file: !35, line: 498, type: !850, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !854)
!850 = !DISubroutineType(types: !851)
!851 = !{!60, !852, !61}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!854 = !{!855, !848, !856, !857}
!855 = !DILocalVariable(name: "ptr", arg: 1, scope: !849, file: !35, line: 498, type: !852)
!856 = !DILocalVariable(name: "p0", scope: !849, file: !35, line: 500, type: !80)
!857 = !DILocalVariable(name: "p1", scope: !849, file: !35, line: 501, type: !80)
!858 = !DILocation(line: 498, column: 36, scope: !849, inlinedAt: !859)
!859 = distinct !DILocation(line: 858, column: 31, scope: !813)
!860 = !DILocation(line: 501, column: 35, scope: !849, inlinedAt: !859)
!861 = !DILocation(line: 501, column: 15, scope: !849, inlinedAt: !859)
!862 = !DILocation(line: 502, column: 25, scope: !849, inlinedAt: !859)
!863 = !DILocation(line: 502, column: 37, scope: !849, inlinedAt: !859)
!864 = !DILocation(line: 502, column: 23, scope: !849, inlinedAt: !859)
!865 = !DILocation(line: 858, column: 18, scope: !813)
!866 = !DILocation(line: 859, column: 8, scope: !813)
!867 = !DILocation(line: 861, column: 8, scope: !813)
!868 = !DILocation(line: 862, column: 7, scope: !813)
!869 = !DILocation(line: 863, column: 8, scope: !813)
!870 = !DILocation(line: 867, column: 21, scope: !813)
!871 = !DILocation(line: 867, column: 3, scope: !813)
!872 = !DILocation(line: 868, column: 3, scope: !813)
!873 = !DILocation(line: 869, column: 3, scope: !813)
!874 = !DILocation(line: 870, column: 3, scope: !813)
!875 = !DILocation(line: 872, column: 3, scope: !813)
!876 = !DILocation(line: 876, column: 12, scope: !813)
!877 = !DILocation(line: 876, column: 3, scope: !813)
!878 = !DILocation(line: 885, column: 3, scope: !813)
!879 = !DILocation(line: 885, column: 17, scope: !813)
!880 = !DILocation(line: 860, column: 7, scope: !813)
!881 = distinct !{!881, !878, !882}
!882 = !DILocation(line: 938, column: 7, scope: !813)
!883 = !DILocation(line: 905, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !813, file: !3, line: 887, column: 7)
!885 = !DILocation(line: 910, column: 9, scope: !884)
!886 = !DILocation(line: 913, column: 9, scope: !884)
!887 = !DILocation(line: 918, column: 9, scope: !884)
!888 = !DILocation(line: 921, column: 9, scope: !884)
!889 = !DILocation(line: 926, column: 9, scope: !884)
!890 = !DILocation(line: 929, column: 9, scope: !884)
!891 = !DILocation(line: 933, column: 9, scope: !884)
!892 = !DILocation(line: 934, column: 7, scope: !884)
!893 = !DILocation(line: 935, column: 7, scope: !884)
!894 = !DILocation(line: 937, column: 9, scope: !884)
!895 = !DILocation(line: 957, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !813, file: !3, line: 957, column: 7)
!897 = !DILocation(line: 957, column: 18, scope: !896)
!898 = !DILocation(line: 957, column: 22, scope: !896)
!899 = !DILocation(line: 964, column: 19, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !3, line: 958, column: 4)
!901 = !DILocation(line: 964, column: 6, scope: !900)
!902 = !DILocation(line: 965, column: 6, scope: !900)
!903 = !DILocation(line: 968, column: 21, scope: !904)
!904 = distinct !DILexicalBlock(scope: !813, file: !3, line: 968, column: 7)
!905 = !DILocation(line: 968, column: 18, scope: !904)
!906 = !DILocation(line: 970, column: 20, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 969, column: 5)
!908 = !DILocation(line: 970, column: 7, scope: !907)
!909 = !DILocation(line: 972, column: 7, scope: !907)
!910 = !DILocation(line: 975, column: 9, scope: !911)
!911 = distinct !DILexicalBlock(scope: !813, file: !3, line: 975, column: 7)
!912 = !DILocation(line: 975, column: 19, scope: !911)
!913 = !DILocation(line: 977, column: 20, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 976, column: 5)
!915 = !DILocation(line: 977, column: 7, scope: !914)
!916 = !DILocation(line: 979, column: 7, scope: !914)
!917 = !DILocation(line: 982, column: 22, scope: !918)
!918 = distinct !DILexicalBlock(scope: !813, file: !3, line: 982, column: 7)
!919 = !DILocation(line: 985, column: 14, scope: !920)
!920 = distinct !DILexicalBlock(scope: !918, file: !3, line: 983, column: 5)
!921 = !DILocation(line: 984, column: 7, scope: !920)
!922 = !DILocation(line: 987, column: 7, scope: !920)
!923 = !DILocation(line: 990, column: 19, scope: !924)
!924 = distinct !DILexicalBlock(scope: !813, file: !3, line: 990, column: 7)
!925 = !DILocation(line: 993, column: 8, scope: !926)
!926 = distinct !DILexicalBlock(scope: !924, file: !3, line: 991, column: 5)
!927 = !DILocation(line: 992, column: 7, scope: !926)
!928 = !DILocation(line: 994, column: 7, scope: !926)
!929 = !DILocation(line: 997, column: 12, scope: !930)
!930 = distinct !DILexicalBlock(scope: !813, file: !3, line: 997, column: 7)
!931 = !DILocation(line: 1000, column: 8, scope: !932)
!932 = distinct !DILexicalBlock(scope: !930, file: !3, line: 998, column: 5)
!933 = !DILocation(line: 999, column: 7, scope: !932)
!934 = !DILocation(line: 1001, column: 7, scope: !932)
!935 = !DILocation(line: 1004, column: 13, scope: !936)
!936 = distinct !DILexicalBlock(scope: !813, file: !3, line: 1004, column: 7)
!937 = !DILocation(line: 1007, column: 8, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !3, line: 1005, column: 5)
!939 = !DILocation(line: 1006, column: 7, scope: !938)
!940 = !DILocation(line: 1008, column: 7, scope: !938)
!941 = !DILocation(line: 1011, column: 17, scope: !942)
!942 = distinct !DILexicalBlock(scope: !813, file: !3, line: 1011, column: 7)
!943 = !DILocation(line: 1011, column: 16, scope: !942)
!944 = !DILocation(line: 1011, column: 14, scope: !942)
!945 = !DILocation(line: 1011, column: 7, scope: !813)
!946 = !DILocation(line: 1014, column: 9, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !3, line: 1012, column: 4)
!948 = !DILocation(line: 1013, column: 6, scope: !947)
!949 = !DILocation(line: 1015, column: 6, scope: !947)
!950 = !DILocation(line: 1018, column: 7, scope: !813)
!951 = !DILocation(line: 1021, column: 29, scope: !813)
!952 = !DILocation(line: 1021, column: 10, scope: !813)
!953 = !DILocation(line: 1022, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !813, file: !3, line: 1022, column: 7)
!955 = !{!956, !956, i64 0}
!956 = !{!"int", !778, i64 0}
!957 = !DILocation(line: 1022, column: 14, scope: !954)
!958 = !DILocation(line: 1022, column: 7, scope: !813)
!959 = !DILocation(line: 1023, column: 17, scope: !954)
!960 = !DILocation(line: 1023, column: 20, scope: !954)
!961 = !DILocation(line: 1023, column: 5, scope: !954)
!962 = !DILocation(line: 1025, column: 31, scope: !830)
!963 = !DILocation(line: 1025, column: 15, scope: !830)
!964 = !DILocation(line: 1025, column: 50, scope: !833)
!965 = !DILocation(line: 1025, column: 3, scope: !830)
!966 = !DILocation(line: 1090, column: 23, scope: !967)
!967 = distinct !DILexicalBlock(scope: !813, file: !3, line: 1090, column: 7)
!968 = !DILocation(line: 1027, column: 20, scope: !832)
!969 = !DILocation(line: 1027, column: 13, scope: !832)
!970 = !DILocation(line: 1029, column: 11, scope: !832)
!971 = !DILocation(line: 644, column: 27, scope: !108, inlinedAt: !843)
!972 = !DILocation(line: 647, column: 13, scope: !108, inlinedAt: !843)
!973 = !DILocation(line: 648, column: 13, scope: !108, inlinedAt: !843)
!974 = !DILocation(line: 649, column: 13, scope: !108, inlinedAt: !843)
!975 = !DILocation(line: 650, column: 13, scope: !108, inlinedAt: !843)
!976 = !DILocation(line: 651, column: 8, scope: !108, inlinedAt: !843)
!977 = !DILocation(line: 652, column: 8, scope: !108, inlinedAt: !843)
!978 = !DILocation(line: 653, column: 3, scope: !108, inlinedAt: !843)
!979 = !DILocation(line: 498, column: 36, scope: !849, inlinedAt: !980)
!980 = distinct !DILocation(line: 655, column: 31, scope: !108, inlinedAt: !843)
!981 = !DILocation(line: 501, column: 15, scope: !849, inlinedAt: !980)
!982 = !DILocation(line: 655, column: 18, scope: !108, inlinedAt: !843)
!983 = !DILocation(line: 657, column: 3, scope: !108, inlinedAt: !843)
!984 = !DILocation(line: 658, column: 3, scope: !108, inlinedAt: !843)
!985 = !DILocation(line: 659, column: 19, scope: !108, inlinedAt: !843)
!986 = !DILocation(line: 661, column: 7, scope: !108, inlinedAt: !843)
!987 = !DILocation(line: 664, column: 24, scope: !988, inlinedAt: !843)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 662, column: 5)
!989 = distinct !DILexicalBlock(scope: !108, file: !3, line: 661, column: 7)
!990 = !DILocation(line: 665, column: 26, scope: !988, inlinedAt: !843)
!991 = !DILocation(line: 646, column: 9, scope: !108, inlinedAt: !843)
!992 = !DILocation(line: 666, column: 5, scope: !988, inlinedAt: !843)
!993 = !DILocation(line: 669, column: 26, scope: !994, inlinedAt: !843)
!994 = distinct !DILexicalBlock(scope: !989, file: !3, line: 668, column: 5)
!995 = !DILocation(line: 670, column: 28, scope: !996, inlinedAt: !843)
!996 = distinct !DILexicalBlock(scope: !994, file: !3, line: 670, column: 11)
!997 = !DILocation(line: 670, column: 11, scope: !994, inlinedAt: !843)
!998 = !DILocation(line: 672, column: 21, scope: !999, inlinedAt: !843)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 671, column: 9)
!1000 = !DILocation(line: 672, column: 34, scope: !999, inlinedAt: !843)
!1001 = !DILocation(line: 672, column: 11, scope: !999, inlinedAt: !843)
!1002 = !DILocation(line: 673, column: 11, scope: !999, inlinedAt: !843)
!1003 = !DILocation(line: 656, column: 13, scope: !108, inlinedAt: !843)
!1004 = !DILocation(line: 657, column: 9, scope: !108, inlinedAt: !843)
!1005 = !DILocation(line: 678, column: 8, scope: !108, inlinedAt: !843)
!1006 = !DILocation(line: 658, column: 10, scope: !108, inlinedAt: !843)
!1007 = !DILocation(line: 679, column: 24, scope: !108, inlinedAt: !843)
!1008 = !{!1009, !1009, i64 0}
!1009 = !{!"long", !778, i64 0}
!1010 = !DILocation(line: 680, column: 3, scope: !108, inlinedAt: !843)
!1011 = distinct !{!1011, !1012, !1013}
!1012 = !DILocation(line: 680, column: 3, scope: !108)
!1013 = !DILocation(line: 790, column: 64, scope: !108)
!1014 = !DILocation(line: 687, column: 7, scope: !182, inlinedAt: !843)
!1015 = !DILocation(line: 688, column: 23, scope: !1016, inlinedAt: !843)
!1016 = distinct !DILexicalBlock(scope: !182, file: !3, line: 688, column: 11)
!1017 = !DILocation(line: 688, column: 11, scope: !182, inlinedAt: !843)
!1018 = !DILocation(line: 689, column: 9, scope: !1016, inlinedAt: !843)
!1019 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1020, file: !1021, line: 115, type: !816)
!1020 = distinct !DISubprogram(name: "getline", scope: !1021, file: !1021, line: 115, type: !1022, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1024)
!1021 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!188, !816, !732, !114}
!1024 = !{!1019, !1025, !1026}
!1025 = !DILocalVariable(name: "__n", arg: 2, scope: !1020, file: !1021, line: 115, type: !732)
!1026 = !DILocalVariable(name: "__stream", arg: 3, scope: !1020, file: !1021, line: 115, type: !114)
!1027 = !DILocation(line: 115, column: 17, scope: !1020, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 692, column: 21, scope: !182, inlinedAt: !843)
!1029 = !DILocation(line: 115, column: 36, scope: !1020, inlinedAt: !1028)
!1030 = !DILocation(line: 115, column: 47, scope: !1020, inlinedAt: !1028)
!1031 = !DILocation(line: 117, column: 10, scope: !1020, inlinedAt: !1028)
!1032 = !DILocation(line: 685, column: 15, scope: !182, inlinedAt: !843)
!1033 = !DILocation(line: 693, column: 23, scope: !1034, inlinedAt: !843)
!1034 = distinct !DILexicalBlock(scope: !182, file: !3, line: 693, column: 11)
!1035 = !DILocation(line: 693, column: 11, scope: !182, inlinedAt: !843)
!1036 = !DILocation(line: 697, column: 11, scope: !1037, inlinedAt: !843)
!1037 = distinct !DILexicalBlock(scope: !182, file: !3, line: 697, column: 11)
!1038 = !{!778, !778, i64 0}
!1039 = !DILocation(line: 697, column: 19, scope: !1037, inlinedAt: !843)
!1040 = !DILocation(line: 697, column: 11, scope: !182, inlinedAt: !843)
!1041 = !DILocation(line: 701, column: 28, scope: !1042, inlinedAt: !843)
!1042 = distinct !DILexicalBlock(scope: !182, file: !3, line: 701, column: 11)
!1043 = !DILocation(line: 701, column: 11, scope: !1042, inlinedAt: !843)
!1044 = !DILocation(line: 701, column: 33, scope: !1042, inlinedAt: !843)
!1045 = !DILocation(line: 701, column: 11, scope: !182, inlinedAt: !843)
!1046 = !DILocation(line: 702, column: 29, scope: !1042, inlinedAt: !843)
!1047 = !DILocation(line: 704, column: 23, scope: !191, inlinedAt: !843)
!1048 = !DILocation(line: 702, column: 9, scope: !1042, inlinedAt: !843)
!1049 = !DILocalVariable(name: "s", arg: 1, scope: !1050, file: !3, line: 397, type: !58)
!1050 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 397, type: !1051, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1054)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!70, !58, !61, !1053, !220, !816}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1054 = !{!1049, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1055 = !DILocalVariable(name: "s_len", arg: 2, scope: !1050, file: !3, line: 397, type: !61)
!1056 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1050, file: !3, line: 398, type: !1053)
!1057 = !DILocalVariable(name: "binary", arg: 4, scope: !1050, file: !3, line: 398, type: !220)
!1058 = !DILocalVariable(name: "file_name", arg: 5, scope: !1050, file: !3, line: 398, type: !816)
!1059 = !DILocalVariable(name: "escaped_filename", scope: !1050, file: !3, line: 400, type: !70)
!1060 = !DILocalVariable(name: "algo_name_len", scope: !1050, file: !3, line: 401, type: !61)
!1061 = !DILocalVariable(name: "i", scope: !1050, file: !3, line: 403, type: !61)
!1062 = !DILocation(line: 397, column: 16, scope: !1050, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 704, column: 14, scope: !191, inlinedAt: !843)
!1064 = !DILocation(line: 397, column: 26, scope: !1050, inlinedAt: !1063)
!1065 = !DILocation(line: 400, column: 8, scope: !1050, inlinedAt: !1063)
!1066 = !DILocation(line: 403, column: 10, scope: !1050, inlinedAt: !1063)
!1067 = !DILocation(line: 404, column: 3, scope: !1050, inlinedAt: !1063)
!1068 = !DILocation(line: 404, column: 10, scope: !1050, inlinedAt: !1063)
!1069 = !DILocation(line: 405, column: 5, scope: !1050, inlinedAt: !1063)
!1070 = distinct !{!1070, !1071, !1072}
!1071 = !DILocation(line: 404, column: 3, scope: !1050)
!1072 = !DILocation(line: 405, column: 7, scope: !1050)
!1073 = !DILocation(line: 409, column: 7, scope: !1074, inlinedAt: !1063)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 408, column: 5)
!1075 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 407, column: 7)
!1076 = !DILocation(line: 411, column: 5, scope: !1074, inlinedAt: !1063)
!1077 = !DILocation(line: 401, column: 10, scope: !1050, inlinedAt: !1063)
!1078 = !DILocation(line: 416, column: 7, scope: !1079, inlinedAt: !1063)
!1079 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 416, column: 7)
!1080 = !DILocation(line: 416, column: 7, scope: !1050, inlinedAt: !1063)
!1081 = !DILocation(line: 418, column: 9, scope: !1082, inlinedAt: !1063)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 417, column: 5)
!1083 = !DILocation(line: 453, column: 11, scope: !1084, inlinedAt: !1063)
!1084 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 453, column: 11)
!1085 = !DILocation(line: 453, column: 16, scope: !1084, inlinedAt: !1063)
!1086 = !DILocation(line: 454, column: 9, scope: !1084, inlinedAt: !1063)
!1087 = !DILocation(line: 453, column: 11, scope: !1082, inlinedAt: !1063)
!1088 = !DILocation(line: 455, column: 11, scope: !1089, inlinedAt: !1063)
!1089 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 455, column: 11)
!1090 = !DILocation(line: 455, column: 16, scope: !1089, inlinedAt: !1063)
!1091 = !DILocation(line: 455, column: 11, scope: !1082, inlinedAt: !1063)
!1092 = !DILocation(line: 457, column: 11, scope: !1093, inlinedAt: !1063)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 456, column: 9)
!1094 = !DILocation(line: 459, column: 33, scope: !1093, inlinedAt: !1063)
!1095 = !DILocation(line: 459, column: 44, scope: !1093, inlinedAt: !1063)
!1096 = !DILocalVariable(name: "s", arg: 1, scope: !1097, file: !3, line: 354, type: !58)
!1097 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 354, type: !1098, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!70, !58, !61, !1053, !816, !70}
!1100 = !{!1096, !1101, !1102, !1103, !1104, !1105}
!1101 = !DILocalVariable(name: "s_len", arg: 2, scope: !1097, file: !3, line: 354, type: !61)
!1102 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1097, file: !3, line: 354, type: !1053)
!1103 = !DILocalVariable(name: "file_name", arg: 4, scope: !1097, file: !3, line: 355, type: !816)
!1104 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1097, file: !3, line: 355, type: !70)
!1105 = !DILocalVariable(name: "i", scope: !1097, file: !3, line: 357, type: !61)
!1106 = !DILocation(line: 354, column: 20, scope: !1097, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 459, column: 18, scope: !1093, inlinedAt: !1063)
!1108 = !DILocation(line: 354, column: 30, scope: !1097, inlinedAt: !1107)
!1109 = !DILocation(line: 355, column: 37, scope: !1097, inlinedAt: !1107)
!1110 = !DILocation(line: 359, column: 13, scope: !1111, inlinedAt: !1107)
!1111 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 359, column: 7)
!1112 = !DILocation(line: 359, column: 7, scope: !1097, inlinedAt: !1107)
!1113 = !DILocation(line: 357, column: 10, scope: !1097, inlinedAt: !1107)
!1114 = !DILocation(line: 364, column: 10, scope: !1097, inlinedAt: !1107)
!1115 = !DILocation(line: 364, column: 12, scope: !1097, inlinedAt: !1107)
!1116 = !DILocation(line: 364, column: 15, scope: !1097, inlinedAt: !1107)
!1117 = distinct !{!1117, !1118, !1119}
!1118 = !DILocation(line: 364, column: 3, scope: !1097)
!1119 = !DILocation(line: 365, column: 6, scope: !1097)
!1120 = !DILocation(line: 364, column: 20, scope: !1097, inlinedAt: !1107)
!1121 = !DILocation(line: 364, column: 3, scope: !1097, inlinedAt: !1107)
!1122 = !DILocation(line: 367, column: 7, scope: !1123, inlinedAt: !1107)
!1123 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 367, column: 7)
!1124 = !DILocation(line: 367, column: 12, scope: !1123, inlinedAt: !1107)
!1125 = !DILocation(line: 367, column: 7, scope: !1097, inlinedAt: !1107)
!1126 = !DILocation(line: 372, column: 24, scope: !1127, inlinedAt: !1107)
!1127 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 372, column: 7)
!1128 = !DILocalVariable(name: "s", arg: 1, scope: !1129, file: !3, line: 305, type: !58)
!1129 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 305, type: !1130, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!58, !58, !61}
!1132 = !{!1128, !1133, !1134, !1135}
!1133 = !DILocalVariable(name: "s_len", arg: 2, scope: !1129, file: !3, line: 305, type: !61)
!1134 = !DILocalVariable(name: "dst", scope: !1129, file: !3, line: 307, type: !58)
!1135 = !DILocalVariable(name: "i", scope: !1136, file: !3, line: 309, type: !61)
!1136 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 309, column: 3)
!1137 = !DILocation(line: 305, column: 26, scope: !1129, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 372, column: 27, scope: !1127, inlinedAt: !1107)
!1139 = !DILocation(line: 305, column: 36, scope: !1129, inlinedAt: !1138)
!1140 = !DILocation(line: 307, column: 9, scope: !1129, inlinedAt: !1138)
!1141 = !DILocation(line: 309, column: 15, scope: !1136, inlinedAt: !1138)
!1142 = !DILocation(line: 309, column: 3, scope: !1136, inlinedAt: !1138)
!1143 = !DILocation(line: 311, column: 15, scope: !1144, inlinedAt: !1138)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 310, column: 5)
!1145 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 309, column: 3)
!1146 = !DILocation(line: 311, column: 7, scope: !1144, inlinedAt: !1138)
!1147 = !DILocation(line: 314, column: 17, scope: !1148, inlinedAt: !1138)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 314, column: 15)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 312, column: 9)
!1150 = !DILocation(line: 314, column: 15, scope: !1149, inlinedAt: !1138)
!1151 = !DILocation(line: 319, column: 11, scope: !1149, inlinedAt: !1138)
!1152 = !DILocation(line: 320, column: 19, scope: !1149, inlinedAt: !1138)
!1153 = !DILocation(line: 320, column: 11, scope: !1149, inlinedAt: !1138)
!1154 = !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)
!1155 = !DILocation(line: 324, column: 15, scope: !1156, inlinedAt: !1138)
!1156 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 321, column: 13)
!1157 = !DILocation(line: 309, column: 34, scope: !1145, inlinedAt: !1138)
!1158 = !DILocation(line: 309, column: 24, scope: !1145, inlinedAt: !1138)
!1159 = distinct !{!1159, !1160, !1161}
!1160 = !DILocation(line: 309, column: 3, scope: !1136)
!1161 = !DILocation(line: 342, column: 5, scope: !1136)
!1162 = !DILocation(line: 343, column: 11, scope: !1163, inlinedAt: !1138)
!1163 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 343, column: 7)
!1164 = !DILocation(line: 343, column: 7, scope: !1129, inlinedAt: !1138)
!1165 = !DILocation(line: 344, column: 10, scope: !1163, inlinedAt: !1138)
!1166 = !DILocation(line: 344, column: 5, scope: !1163, inlinedAt: !1138)
!1167 = !DILocation(line: 375, column: 10, scope: !1097, inlinedAt: !1107)
!1168 = !DILocation(line: 377, column: 3, scope: !1097, inlinedAt: !1107)
!1169 = !DILocation(line: 377, column: 10, scope: !1097, inlinedAt: !1107)
!1170 = !DILocation(line: 378, column: 6, scope: !1097, inlinedAt: !1107)
!1171 = distinct !{!1171, !1172, !1173}
!1172 = !DILocation(line: 377, column: 3, scope: !1097)
!1173 = !DILocation(line: 378, column: 6, scope: !1097)
!1174 = !DILocation(line: 385, column: 10, scope: !1097, inlinedAt: !1107)
!1175 = distinct !{!1175, !1176, !1177}
!1176 = !DILocation(line: 385, column: 3, scope: !1097)
!1177 = !DILocation(line: 386, column: 6, scope: !1097)
!1178 = !DILocation(line: 469, column: 13, scope: !1179, inlinedAt: !1063)
!1179 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 469, column: 7)
!1180 = !DILocation(line: 469, column: 45, scope: !1179, inlinedAt: !1063)
!1181 = !DILocation(line: 469, column: 50, scope: !1179, inlinedAt: !1063)
!1182 = !DILocation(line: 469, column: 44, scope: !1179, inlinedAt: !1063)
!1183 = !DILocation(line: 469, column: 42, scope: !1179, inlinedAt: !1063)
!1184 = !DILocation(line: 469, column: 17, scope: !1179, inlinedAt: !1063)
!1185 = !DILocation(line: 469, column: 7, scope: !1050, inlinedAt: !1063)
!1186 = !DILocation(line: 489, column: 5, scope: !1050, inlinedAt: !1063)
!1187 = !DILocation(line: 490, column: 8, scope: !1188, inlinedAt: !1063)
!1188 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 490, column: 7)
!1189 = !DILocation(line: 493, column: 6, scope: !1050, inlinedAt: !1063)
!1190 = !DILocation(line: 493, column: 10, scope: !1050, inlinedAt: !1063)
!1191 = !DILocation(line: 496, column: 14, scope: !1192, inlinedAt: !1063)
!1192 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 496, column: 7)
!1193 = !DILocation(line: 496, column: 18, scope: !1192, inlinedAt: !1063)
!1194 = !DILocation(line: 496, column: 24, scope: !1192, inlinedAt: !1063)
!1195 = !DILocation(line: 496, column: 28, scope: !1192, inlinedAt: !1063)
!1196 = !DILocation(line: 496, column: 40, scope: !1192, inlinedAt: !1063)
!1197 = !DILocation(line: 504, column: 11, scope: !1198, inlinedAt: !1063)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 504, column: 11)
!1199 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 497, column: 5)
!1200 = !DILocation(line: 504, column: 24, scope: !1198, inlinedAt: !1063)
!1201 = !DILocation(line: 504, column: 11, scope: !1199, inlinedAt: !1063)
!1202 = !DILocation(line: 506, column: 20, scope: !1199, inlinedAt: !1063)
!1203 = !DILocation(line: 507, column: 5, scope: !1199, inlinedAt: !1063)
!1204 = !DILocation(line: 508, column: 12, scope: !1205, inlinedAt: !1063)
!1205 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 508, column: 12)
!1206 = !DILocation(line: 508, column: 25, scope: !1205, inlinedAt: !1063)
!1207 = !DILocation(line: 508, column: 12, scope: !1192, inlinedAt: !1063)
!1208 = !DILocation(line: 510, column: 20, scope: !1209, inlinedAt: !1063)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 509, column: 5)
!1210 = !DILocation(line: 511, column: 21, scope: !1209, inlinedAt: !1063)
!1211 = !DILocation(line: 512, column: 5, scope: !1209, inlinedAt: !1063)
!1212 = !DILocation(line: 516, column: 17, scope: !1050, inlinedAt: !1063)
!1213 = !DILocation(line: 518, column: 7, scope: !1050, inlinedAt: !1063)
!1214 = !DILocation(line: 519, column: 44, scope: !1215, inlinedAt: !1063)
!1215 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 518, column: 7)
!1216 = !DILocation(line: 305, column: 26, scope: !1129, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 519, column: 12, scope: !1215, inlinedAt: !1063)
!1218 = !DILocation(line: 305, column: 36, scope: !1129, inlinedAt: !1217)
!1219 = !DILocation(line: 307, column: 9, scope: !1129, inlinedAt: !1217)
!1220 = !DILocation(line: 309, column: 15, scope: !1136, inlinedAt: !1217)
!1221 = !DILocation(line: 309, column: 24, scope: !1145, inlinedAt: !1217)
!1222 = !DILocation(line: 309, column: 3, scope: !1136, inlinedAt: !1217)
!1223 = !DILocation(line: 311, column: 15, scope: !1144, inlinedAt: !1217)
!1224 = !DILocation(line: 311, column: 7, scope: !1144, inlinedAt: !1217)
!1225 = !DILocation(line: 314, column: 17, scope: !1148, inlinedAt: !1217)
!1226 = !DILocation(line: 314, column: 15, scope: !1149, inlinedAt: !1217)
!1227 = !DILocation(line: 319, column: 11, scope: !1149, inlinedAt: !1217)
!1228 = !DILocation(line: 320, column: 19, scope: !1149, inlinedAt: !1217)
!1229 = !DILocation(line: 320, column: 11, scope: !1149, inlinedAt: !1217)
!1230 = !DILocation(line: 324, column: 15, scope: !1156, inlinedAt: !1217)
!1231 = !DILocation(line: 309, column: 34, scope: !1145, inlinedAt: !1217)
!1232 = !DILocation(line: 343, column: 15, scope: !1163, inlinedAt: !1217)
!1233 = !DILocation(line: 343, column: 11, scope: !1163, inlinedAt: !1217)
!1234 = !DILocation(line: 343, column: 7, scope: !1129, inlinedAt: !1217)
!1235 = !DILocation(line: 344, column: 10, scope: !1163, inlinedAt: !1217)
!1236 = !DILocation(line: 344, column: 5, scope: !1163, inlinedAt: !1217)
!1237 = !DILocation(line: 519, column: 49, scope: !1215, inlinedAt: !1063)
!1238 = !DILocation(line: 705, column: 14, scope: !191, inlinedAt: !843)
!1239 = !DILocation(line: 705, column: 29, scope: !191, inlinedAt: !843)
!1240 = !DILocation(line: 682, column: 13, scope: !182, inlinedAt: !843)
!1241 = !DILocation(line: 705, column: 32, scope: !191, inlinedAt: !843)
!1242 = !DILocation(line: 706, column: 14, scope: !191, inlinedAt: !843)
!1243 = !DILocation(line: 684, column: 22, scope: !182, inlinedAt: !843)
!1244 = !DILocalVariable(name: "s", arg: 1, scope: !1245, file: !3, line: 527, type: !1248)
!1245 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 527, type: !1246, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1249)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!70, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1249 = !{!1244, !1250}
!1250 = !DILocalVariable(name: "i", scope: !1245, file: !3, line: 529, type: !291)
!1251 = !DILocation(line: 527, column: 34, scope: !1245, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 706, column: 17, scope: !191, inlinedAt: !843)
!1253 = !DILocation(line: 529, column: 16, scope: !1245, inlinedAt: !1252)
!1254 = !DILocation(line: 530, column: 3, scope: !1255, inlinedAt: !1252)
!1255 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 530, column: 3)
!1256 = !DILocation(line: 532, column: 12, scope: !1257, inlinedAt: !1252)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 532, column: 11)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 531, column: 5)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 530, column: 3)
!1260 = !{!1261, !1261, i64 0}
!1261 = !{!"short", !778, i64 0}
!1262 = !DILocation(line: 532, column: 11, scope: !1258, inlinedAt: !1252)
!1263 = !DILocation(line: 534, column: 7, scope: !1258, inlinedAt: !1252)
!1264 = !DILocation(line: 536, column: 10, scope: !1245, inlinedAt: !1252)
!1265 = !DILocation(line: 536, column: 13, scope: !1245, inlinedAt: !1252)
!1266 = !DILocation(line: 704, column: 11, scope: !182, inlinedAt: !843)
!1267 = !DILocation(line: 708, column: 11, scope: !1268, inlinedAt: !843)
!1268 = distinct !DILexicalBlock(scope: !191, file: !3, line: 707, column: 9)
!1269 = !DILocation(line: 710, column: 15, scope: !1268, inlinedAt: !843)
!1270 = !DILocation(line: 713, column: 22, scope: !1271, inlinedAt: !843)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 711, column: 13)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 710, column: 15)
!1273 = !DILocation(line: 715, column: 22, scope: !1271, inlinedAt: !843)
!1274 = !DILocation(line: 712, column: 15, scope: !1271, inlinedAt: !843)
!1275 = !DILocation(line: 717, column: 13, scope: !1271, inlinedAt: !843)
!1276 = !DILocation(line: 719, column: 11, scope: !1268, inlinedAt: !843)
!1277 = !DILocation(line: 720, column: 9, scope: !1268, inlinedAt: !843)
!1278 = !DILocation(line: 728, column: 16, scope: !190, inlinedAt: !843)
!1279 = !DILocation(line: 728, column: 11, scope: !190, inlinedAt: !843)
!1280 = !DILocation(line: 731, column: 45, scope: !190, inlinedAt: !843)
!1281 = !DILocation(line: 731, column: 48, scope: !190, inlinedAt: !843)
!1282 = !DILocation(line: 735, column: 16, scope: !190, inlinedAt: !843)
!1283 = !DILocation(line: 737, column: 15, scope: !190, inlinedAt: !843)
!1284 = !DILocation(line: 739, column: 15, scope: !1285, inlinedAt: !843)
!1285 = distinct !DILexicalBlock(scope: !197, file: !3, line: 738, column: 13)
!1286 = !DILocation(line: 740, column: 19, scope: !1285, inlinedAt: !843)
!1287 = !DILocation(line: 742, column: 23, scope: !1288, inlinedAt: !843)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 741, column: 17)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 740, column: 19)
!1290 = !DILocalVariable(name: "__c", arg: 1, scope: !1291, file: !1021, line: 105, type: !63)
!1291 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1021, file: !1021, line: 105, type: !1292, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!63, !63}
!1294 = !{!1290}
!1295 = !DILocation(line: 105, column: 23, scope: !1291, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 743, column: 21, scope: !1297, inlinedAt: !843)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 742, column: 23)
!1298 = !DILocation(line: 107, column: 10, scope: !1291, inlinedAt: !1296)
!1299 = !{!1300, !777, i64 40}
!1300 = !{!"_IO_FILE", !956, i64 0, !777, i64 8, !777, i64 16, !777, i64 24, !777, i64 32, !777, i64 40, !777, i64 48, !777, i64 56, !777, i64 64, !777, i64 72, !777, i64 80, !777, i64 88, !777, i64 96, !777, i64 104, !956, i64 112, !956, i64 116, !1009, i64 120, !1261, i64 128, !778, i64 130, !778, i64 131, !777, i64 136, !1009, i64 144, !777, i64 152, !777, i64 160, !777, i64 168, !777, i64 176, !1009, i64 184, !956, i64 192, !778, i64 196}
!1301 = !{!1300, !777, i64 48}
!1302 = !{!"branch_weights", i32 2000, i32 1}
!1303 = !DILocation(line: 744, column: 19, scope: !1288, inlinedAt: !843)
!1304 = !DILocation(line: 745, column: 19, scope: !1288, inlinedAt: !843)
!1305 = !DILocation(line: 746, column: 17, scope: !1288, inlinedAt: !843)
!1306 = !DILocation(line: 748, column: 35, scope: !196, inlinedAt: !843)
!1307 = !DILocation(line: 748, column: 38, scope: !196, inlinedAt: !843)
!1308 = !DILocation(line: 755, column: 58, scope: !195, inlinedAt: !843)
!1309 = !DILocation(line: 755, column: 22, scope: !195, inlinedAt: !843)
!1310 = !DILocation(line: 756, column: 22, scope: !195, inlinedAt: !843)
!1311 = !DILocation(line: 760, column: 15, scope: !204, inlinedAt: !843)
!1312 = !DILocation(line: 762, column: 23, scope: !1313, inlinedAt: !843)
!1313 = distinct !DILexicalBlock(scope: !200, file: !3, line: 762, column: 23)
!1314 = !DILocation(line: 762, column: 23, scope: !200, inlinedAt: !843)
!1315 = !DILocation(line: 763, column: 34, scope: !201, inlinedAt: !843)
!1316 = !DILocation(line: 763, column: 50, scope: !201, inlinedAt: !843)
!1317 = !DILocation(line: 763, column: 26, scope: !201, inlinedAt: !843)
!1318 = !DILocation(line: 763, column: 23, scope: !201, inlinedAt: !843)
!1319 = !DILocation(line: 764, column: 23, scope: !201, inlinedAt: !843)
!1320 = !DILocation(line: 764, column: 27, scope: !1321, inlinedAt: !843)
!1321 = distinct !DILexicalBlock(scope: !206, file: !3, line: 764, column: 27)
!1322 = !DILocation(line: 764, column: 27, scope: !206, inlinedAt: !843)
!1323 = !DILocation(line: 765, column: 55, scope: !201, inlinedAt: !843)
!1324 = !DILocation(line: 765, column: 31, scope: !201, inlinedAt: !843)
!1325 = !DILocation(line: 765, column: 30, scope: !201, inlinedAt: !843)
!1326 = !DILocation(line: 765, column: 27, scope: !201, inlinedAt: !843)
!1327 = !DILocation(line: 762, column: 23, scope: !202, inlinedAt: !843)
!1328 = !DILocation(line: 760, column: 53, scope: !203, inlinedAt: !843)
!1329 = !DILocation(line: 760, column: 33, scope: !203, inlinedAt: !843)
!1330 = distinct !{!1330, !1331, !1332}
!1331 = !DILocation(line: 760, column: 15, scope: !204)
!1332 = !DILocation(line: 767, column: 17, scope: !204)
!1333 = !DILocation(line: 768, column: 23, scope: !1334, inlinedAt: !843)
!1334 = distinct !DILexicalBlock(scope: !195, file: !3, line: 768, column: 19)
!1335 = !DILocation(line: 769, column: 17, scope: !1334, inlinedAt: !843)
!1336 = !DILocation(line: 768, column: 19, scope: !195, inlinedAt: !843)
!1337 = !DILocation(line: 773, column: 19, scope: !195, inlinedAt: !843)
!1338 = !DILocation(line: 775, column: 47, scope: !1339, inlinedAt: !843)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 775, column: 23)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 774, column: 17)
!1341 = distinct !DILexicalBlock(scope: !195, file: !3, line: 773, column: 19)
!1342 = !DILocation(line: 775, column: 23, scope: !1340, inlinedAt: !843)
!1343 = !DILocation(line: 777, column: 27, scope: !1344, inlinedAt: !843)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 776, column: 21)
!1345 = !DILocation(line: 105, column: 23, scope: !1291, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 778, column: 25, scope: !1347, inlinedAt: !843)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 777, column: 27)
!1348 = !DILocation(line: 107, column: 10, scope: !1291, inlinedAt: !1346)
!1349 = !DILocation(line: 779, column: 23, scope: !1344, inlinedAt: !843)
!1350 = !DILocation(line: 782, column: 23, scope: !1340, inlinedAt: !843)
!1351 = !DILocation(line: 783, column: 21, scope: !1352, inlinedAt: !843)
!1352 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 782, column: 23)
!1353 = !DILocation(line: 784, column: 28, scope: !1352, inlinedAt: !843)
!1354 = !DILocation(line: 785, column: 21, scope: !1355, inlinedAt: !843)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 784, column: 28)
!1356 = !DILocation(line: 788, column: 9, scope: !191, inlinedAt: !843)
!1357 = !DILocalVariable(name: "__stream", arg: 1, scope: !1358, file: !1021, line: 125, type: !114)
!1358 = distinct !DISubprogram(name: "feof_unlocked", scope: !1021, file: !1021, line: 125, type: !1359, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!63, !114}
!1361 = !{!1357}
!1362 = !DILocation(line: 125, column: 1, scope: !1358, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 790, column: 11, scope: !108, inlinedAt: !843)
!1364 = !DILocation(line: 127, column: 10, scope: !1358, inlinedAt: !1363)
!1365 = !{!1300, !956, i64 0}
!1366 = !DILocation(line: 790, column: 35, scope: !108, inlinedAt: !843)
!1367 = !DILocalVariable(name: "__stream", arg: 1, scope: !1368, file: !1021, line: 132, type: !114)
!1368 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1021, file: !1021, line: 132, type: !1359, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1369)
!1369 = !{!1367}
!1370 = !DILocation(line: 132, column: 1, scope: !1368, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 790, column: 39, scope: !108, inlinedAt: !843)
!1372 = !DILocation(line: 792, column: 9, scope: !108, inlinedAt: !843)
!1373 = !DILocation(line: 792, column: 3, scope: !108, inlinedAt: !843)
!1374 = !DILocation(line: 132, column: 1, scope: !1368, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 794, column: 7, scope: !1376, inlinedAt: !843)
!1376 = distinct !DILexicalBlock(scope: !108, file: !3, line: 794, column: 7)
!1377 = !DILocation(line: 134, column: 10, scope: !1368, inlinedAt: !1375)
!1378 = !DILocation(line: 794, column: 7, scope: !1376, inlinedAt: !843)
!1379 = !DILocation(line: 794, column: 7, scope: !108, inlinedAt: !843)
!1380 = !DILocation(line: 796, column: 20, scope: !1381, inlinedAt: !843)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 795, column: 5)
!1382 = !DILocation(line: 796, column: 41, scope: !1381, inlinedAt: !843)
!1383 = !DILocation(line: 796, column: 7, scope: !1381, inlinedAt: !843)
!1384 = !DILocation(line: 797, column: 7, scope: !1381, inlinedAt: !843)
!1385 = !DILocation(line: 800, column: 17, scope: !1386, inlinedAt: !843)
!1386 = distinct !DILexicalBlock(scope: !108, file: !3, line: 800, column: 7)
!1387 = !DILocation(line: 800, column: 20, scope: !1386, inlinedAt: !843)
!1388 = !DILocation(line: 800, column: 46, scope: !1386, inlinedAt: !843)
!1389 = !DILocation(line: 800, column: 7, scope: !108, inlinedAt: !843)
!1390 = !DILocation(line: 802, column: 17, scope: !1391, inlinedAt: !843)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 801, column: 5)
!1392 = !DILocation(line: 802, column: 30, scope: !1391, inlinedAt: !843)
!1393 = !DILocation(line: 802, column: 7, scope: !1391, inlinedAt: !843)
!1394 = !DILocation(line: 803, column: 7, scope: !1391, inlinedAt: !843)
!1395 = !DILocation(line: 806, column: 9, scope: !1396, inlinedAt: !843)
!1396 = distinct !DILexicalBlock(scope: !108, file: !3, line: 806, column: 7)
!1397 = !DILocation(line: 806, column: 7, scope: !108, inlinedAt: !843)
!1398 = !DILocation(line: 814, column: 11, scope: !1399, inlinedAt: !843)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 813, column: 5)
!1400 = !DILocation(line: 847, column: 14, scope: !108, inlinedAt: !843)
!1401 = !DILocation(line: 816, column: 36, scope: !1402, inlinedAt: !843)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 816, column: 15)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 815, column: 9)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 814, column: 11)
!1405 = !DILocation(line: 816, column: 15, scope: !1403, inlinedAt: !843)
!1406 = !DILocation(line: 818, column: 21, scope: !1402, inlinedAt: !843)
!1407 = !DILocation(line: 817, column: 13, scope: !1402, inlinedAt: !843)
!1408 = !DILocation(line: 824, column: 39, scope: !1409, inlinedAt: !843)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 824, column: 15)
!1410 = !DILocation(line: 824, column: 15, scope: !1403, inlinedAt: !843)
!1411 = !DILocation(line: 826, column: 21, scope: !1409, inlinedAt: !843)
!1412 = !DILocation(line: 825, column: 13, scope: !1409, inlinedAt: !843)
!1413 = !DILocation(line: 832, column: 38, scope: !1414, inlinedAt: !843)
!1414 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 832, column: 15)
!1415 = !DILocation(line: 832, column: 15, scope: !1403, inlinedAt: !843)
!1416 = !DILocation(line: 834, column: 21, scope: !1414, inlinedAt: !843)
!1417 = !DILocation(line: 833, column: 13, scope: !1414, inlinedAt: !843)
!1418 = !DILocation(line: 840, column: 35, scope: !1419, inlinedAt: !843)
!1419 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 840, column: 15)
!1420 = !DILocation(line: 840, column: 30, scope: !1419, inlinedAt: !843)
!1421 = !DILocation(line: 841, column: 26, scope: !1419, inlinedAt: !843)
!1422 = !DILocation(line: 842, column: 20, scope: !1419, inlinedAt: !843)
!1423 = !DILocation(line: 841, column: 13, scope: !1419, inlinedAt: !843)
!1424 = !DILocation(line: 848, column: 11, scope: !108, inlinedAt: !843)
!1425 = !DILocation(line: 809, column: 20, scope: !1426, inlinedAt: !843)
!1426 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 807, column: 5)
!1427 = !DILocation(line: 810, column: 14, scope: !1426, inlinedAt: !843)
!1428 = !DILocation(line: 809, column: 7, scope: !1426, inlinedAt: !843)
!1429 = !DILocation(line: 850, column: 55, scope: !108, inlinedAt: !843)
!1430 = !DILocation(line: 850, column: 23, scope: !108, inlinedAt: !843)
!1431 = !DILocation(line: 851, column: 1, scope: !108, inlinedAt: !843)
!1432 = !DILocation(line: 1030, column: 15, scope: !836)
!1433 = !DILocation(line: 1030, column: 12, scope: !836)
!1434 = !DILocation(line: 1030, column: 9, scope: !836)
!1435 = !DILocation(line: 1034, column: 16, scope: !835)
!1436 = !DILocation(line: 1034, column: 11, scope: !835)
!1437 = !DILocation(line: 1036, column: 17, scope: !840)
!1438 = !DILocation(line: 1036, column: 15, scope: !835)
!1439 = !DILocation(line: 1047, column: 35, scope: !839)
!1440 = !DILocation(line: 1047, column: 55, scope: !839)
!1441 = !DILocation(line: 1047, column: 58, scope: !839)
!1442 = !DILocation(line: 1049, column: 19, scope: !839)
!1443 = !DILocation(line: 1051, column: 23, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1050, column: 17)
!1445 = distinct !DILexicalBlock(scope: !839, file: !3, line: 1049, column: 19)
!1446 = !DILocation(line: 105, column: 23, scope: !1291, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 1052, column: 21, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 1051, column: 23)
!1449 = !DILocation(line: 107, column: 10, scope: !1291, inlinedAt: !1447)
!1450 = !DILocation(line: 1059, column: 19, scope: !1444)
!1451 = !DILocation(line: 1061, column: 19, scope: !1444)
!1452 = !DILocation(line: 1062, column: 19, scope: !1444)
!1453 = !DILocation(line: 1063, column: 19, scope: !1444)
!1454 = !DILocation(line: 1070, column: 31, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !839, file: !3, line: 1070, column: 19)
!1456 = !DILocation(line: 1070, column: 19, scope: !839)
!1457 = !DILocation(line: 105, column: 23, scope: !1291, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 1071, column: 17, scope: !1455)
!1459 = !DILocation(line: 107, column: 10, scope: !1291, inlinedAt: !1458)
!1460 = !DILocation(line: 1066, column: 22, scope: !839)
!1461 = !DILocation(line: 1073, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !839, file: !3, line: 1073, column: 15)
!1463 = !DILocation(line: 1074, column: 17, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 1073, column: 15)
!1465 = !DILocation(line: 1073, column: 55, scope: !1464)
!1466 = !DILocation(line: 1073, column: 49, scope: !1464)
!1467 = !DILocation(line: 1073, column: 29, scope: !1464)
!1468 = distinct !{!1468, !1461, !1469}
!1469 = !DILocation(line: 1074, column: 17, scope: !1462)
!1470 = !DILocation(line: 1076, column: 19, scope: !839)
!1471 = !DILocation(line: 105, column: 23, scope: !1291, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 1078, column: 19, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 1077, column: 17)
!1474 = distinct !DILexicalBlock(scope: !839, file: !3, line: 1076, column: 19)
!1475 = !DILocation(line: 107, column: 10, scope: !1291, inlinedAt: !1472)
!1476 = !DILocation(line: 105, column: 23, scope: !1291, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 1080, column: 19, scope: !1473)
!1478 = !DILocation(line: 107, column: 10, scope: !1291, inlinedAt: !1477)
!1479 = !DILocation(line: 1082, column: 19, scope: !1473)
!1480 = !DILocation(line: 1083, column: 17, scope: !1473)
!1481 = !DILocation(line: 105, column: 23, scope: !1291, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 1085, column: 15, scope: !839)
!1483 = !DILocation(line: 107, column: 10, scope: !1291, inlinedAt: !1482)
!1484 = !DILocation(line: 1087, column: 9, scope: !836)
!1485 = !DILocation(line: 1025, column: 73, scope: !833)
!1486 = distinct !{!1486, !965, !1487}
!1487 = !DILocation(line: 1088, column: 5, scope: !830)
!1488 = !DILocation(line: 1090, column: 34, scope: !967)
!1489 = !DILocation(line: 1090, column: 26, scope: !967)
!1490 = !DILocation(line: 1090, column: 41, scope: !967)
!1491 = !DILocation(line: 1090, column: 7, scope: !813)
!1492 = !DILocation(line: 1091, column: 5, scope: !967)
!1493 = !DILocation(line: 1093, column: 10, scope: !813)
!1494 = !DILocation(line: 1094, column: 1, scope: !813)
!1495 = !DILocation(line: 530, column: 38, scope: !1259, inlinedAt: !1252)
!1496 = !DILocation(line: 530, column: 17, scope: !1259, inlinedAt: !1252)
!1497 = distinct !{!1497, !1498, !1499}
!1498 = !DILocation(line: 530, column: 3, scope: !1255)
!1499 = !DILocation(line: 535, column: 5, scope: !1255)
!1500 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 583, type: !1501, isLocal: true, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1504)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!70, !80, !220, !64, !1503}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511}
!1505 = !DILocalVariable(name: "filename", arg: 1, scope: !1500, file: !3, line: 583, type: !80)
!1506 = !DILocalVariable(name: "binary", arg: 2, scope: !1500, file: !3, line: 583, type: !220)
!1507 = !DILocalVariable(name: "bin_result", arg: 3, scope: !1500, file: !3, line: 583, type: !64)
!1508 = !DILocalVariable(name: "missing", arg: 4, scope: !1500, file: !3, line: 584, type: !1503)
!1509 = !DILocalVariable(name: "fp", scope: !1500, file: !3, line: 586, type: !114)
!1510 = !DILocalVariable(name: "err", scope: !1500, file: !3, line: 587, type: !63)
!1511 = !DILocalVariable(name: "is_stdin", scope: !1500, file: !3, line: 588, type: !70)
!1512 = !DILocation(line: 583, column: 41, scope: !1500)
!1513 = !DILocation(line: 588, column: 19, scope: !1500)
!1514 = !DILocation(line: 590, column: 12, scope: !1500)
!1515 = !{!1516, !1516, i64 0}
!1516 = !{!"_Bool", !778, i64 0}
!1517 = !DILocation(line: 592, column: 7, scope: !1500)
!1518 = !DILocation(line: 595, column: 12, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 593, column: 5)
!1520 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 592, column: 7)
!1521 = !DILocation(line: 586, column: 9, scope: !1500)
!1522 = !DILocation(line: 603, column: 5, scope: !1519)
!1523 = !DILocation(line: 606, column: 12, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 605, column: 5)
!1525 = !DILocation(line: 607, column: 14, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 607, column: 11)
!1527 = !DILocation(line: 607, column: 11, scope: !1524)
!1528 = !DILocation(line: 609, column: 33, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 609, column: 15)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 608, column: 9)
!1531 = !DILocation(line: 609, column: 30, scope: !1529)
!1532 = !DILocation(line: 609, column: 39, scope: !1529)
!1533 = !DILocation(line: 609, column: 15, scope: !1530)
!1534 = !DILocation(line: 611, column: 24, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 610, column: 13)
!1536 = !DILocation(line: 612, column: 15, scope: !1535)
!1537 = !DILocation(line: 614, column: 21, scope: !1530)
!1538 = !DILocation(line: 614, column: 34, scope: !1530)
!1539 = !DILocation(line: 614, column: 11, scope: !1530)
!1540 = !DILocation(line: 615, column: 11, scope: !1530)
!1541 = !DILocation(line: 619, column: 3, scope: !1500)
!1542 = !DILocation(line: 624, column: 9, scope: !1500)
!1543 = !DILocation(line: 587, column: 7, scope: !1500)
!1544 = !DILocation(line: 626, column: 7, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 626, column: 7)
!1546 = !DILocation(line: 626, column: 7, scope: !1500)
!1547 = !DILocation(line: 628, column: 17, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 627, column: 5)
!1549 = !DILocation(line: 628, column: 30, scope: !1548)
!1550 = !DILocation(line: 628, column: 7, scope: !1548)
!1551 = !DILocation(line: 629, column: 17, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 629, column: 11)
!1553 = !DILocation(line: 629, column: 14, scope: !1552)
!1554 = !DILocation(line: 629, column: 11, scope: !1548)
!1555 = !DILocation(line: 630, column: 9, scope: !1552)
!1556 = !DILocation(line: 634, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 634, column: 7)
!1558 = !DILocation(line: 634, column: 20, scope: !1557)
!1559 = !DILocation(line: 634, column: 32, scope: !1557)
!1560 = !DILocation(line: 634, column: 7, scope: !1500)
!1561 = !DILocation(line: 636, column: 17, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 635, column: 5)
!1563 = !DILocation(line: 636, column: 30, scope: !1562)
!1564 = !DILocation(line: 636, column: 7, scope: !1562)
!1565 = !DILocation(line: 637, column: 7, scope: !1562)
!1566 = !DILocation(line: 641, column: 1, scope: !1500)
!1567 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 542, type: !1568, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !80, !70}
!1570 = !{!1571, !1572}
!1571 = !DILocalVariable(name: "file", arg: 1, scope: !1567, file: !3, line: 542, type: !80)
!1572 = !DILocalVariable(name: "escape", arg: 2, scope: !1567, file: !3, line: 542, type: !70)
!1573 = !DILocation(line: 542, column: 29, scope: !1567)
!1574 = !DILocation(line: 542, column: 40, scope: !1567)
!1575 = !DILocation(line: 544, column: 7, scope: !1567)
!1576 = !DILocation(line: 546, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 545, column: 5)
!1578 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 544, column: 7)
!1579 = !DILocation(line: 547, column: 7, scope: !1577)
!1580 = !DILocation(line: 550, column: 10, scope: !1567)
!1581 = !DILocation(line: 550, column: 3, scope: !1567)
!1582 = !DILocation(line: 552, column: 15, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 551, column: 5)
!1584 = !DILocation(line: 552, column: 7, scope: !1583)
!1585 = !DILocation(line: 555, column: 11, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 553, column: 9)
!1587 = !DILocation(line: 556, column: 11, scope: !1586)
!1588 = !DILocation(line: 559, column: 11, scope: !1586)
!1589 = !DILocation(line: 560, column: 11, scope: !1586)
!1590 = !DILocation(line: 105, column: 23, scope: !1291, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 563, column: 11, scope: !1586)
!1592 = !DILocation(line: 107, column: 10, scope: !1291, inlinedAt: !1591)
!1593 = !DILocation(line: 566, column: 11, scope: !1583)
!1594 = distinct !{!1594, !1581, !1595}
!1595 = !DILocation(line: 567, column: 5, scope: !1567)
!1596 = !DILocation(line: 568, column: 1, scope: !1567)
!1597 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !237, file: !237, line: 41, type: !78, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1598)
!1598 = !{!1599}
!1599 = !DILocalVariable(name: "file", arg: 1, scope: !1597, file: !237, line: 41, type: !80)
!1600 = !DILocation(line: 41, column: 41, scope: !1597)
!1601 = !DILocation(line: 43, column: 13, scope: !1597)
!1602 = !DILocation(line: 44, column: 1, scope: !1597)
!1603 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !237, file: !237, line: 78, type: !1604, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !70}
!1606 = !{!1607}
!1607 = !DILocalVariable(name: "ignore", arg: 1, scope: !1603, file: !237, line: 78, type: !70)
!1608 = !DILocation(line: 78, column: 37, scope: !1603)
!1609 = !DILocation(line: 80, column: 16, scope: !1603)
!1610 = !DILocation(line: 81, column: 1, scope: !1603)
!1611 = distinct !DISubprogram(name: "close_stdout", scope: !237, file: !237, line: 107, type: !784, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1612)
!1612 = !{!1613}
!1613 = !DILocalVariable(name: "write_error", scope: !1614, file: !237, line: 112, type: !80)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !237, line: 111, column: 5)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !237, line: 109, column: 7)
!1616 = !DILocation(line: 109, column: 21, scope: !1615)
!1617 = !DILocation(line: 109, column: 7, scope: !1615)
!1618 = !DILocation(line: 109, column: 29, scope: !1615)
!1619 = !DILocation(line: 110, column: 7, scope: !1615)
!1620 = !DILocation(line: 110, column: 12, scope: !1615)
!1621 = !{i8 0, i8 2}
!1622 = !DILocation(line: 114, column: 19, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1614, file: !237, line: 113, column: 11)
!1624 = !DILocation(line: 110, column: 25, scope: !1615)
!1625 = !DILocation(line: 110, column: 28, scope: !1615)
!1626 = !DILocation(line: 110, column: 34, scope: !1615)
!1627 = !DILocation(line: 109, column: 7, scope: !1611)
!1628 = !DILocation(line: 112, column: 33, scope: !1614)
!1629 = !DILocation(line: 112, column: 19, scope: !1614)
!1630 = !DILocation(line: 113, column: 11, scope: !1623)
!1631 = !DILocation(line: 113, column: 11, scope: !1614)
!1632 = !DILocation(line: 114, column: 36, scope: !1623)
!1633 = !DILocation(line: 114, column: 9, scope: !1623)
!1634 = !DILocation(line: 117, column: 9, scope: !1623)
!1635 = !DILocation(line: 119, column: 14, scope: !1614)
!1636 = !DILocation(line: 119, column: 7, scope: !1614)
!1637 = !DILocation(line: 122, column: 22, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1611, file: !237, line: 122, column: 8)
!1639 = !DILocation(line: 122, column: 8, scope: !1638)
!1640 = !DILocation(line: 122, column: 30, scope: !1638)
!1641 = !DILocation(line: 122, column: 8, scope: !1611)
!1642 = !DILocation(line: 123, column: 13, scope: !1638)
!1643 = !DILocation(line: 123, column: 6, scope: !1638)
!1644 = !DILocation(line: 124, column: 1, scope: !1611)
!1645 = distinct !DISubprogram(name: "md5_init_ctx", scope: !245, file: !245, line: 76, type: !1646, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !1668)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "md5_ctx", file: !1650, line: 69, size: 1248, elements: !1651)
!1650 = !DIFile(filename: "./lib/md5.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1651 = !{!1652, !1656, !1657, !1658, !1659, !1663, !1664}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1649, file: !1650, line: 71, baseType: !1653, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1654, line: 26, baseType: !1655)
!1654 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !43, line: 41, baseType: !291)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1649, file: !1650, line: 72, baseType: !1653, size: 32, offset: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1649, file: !1650, line: 73, baseType: !1653, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !1649, file: !1650, line: 74, baseType: !1653, size: 32, offset: 96)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1649, file: !1650, line: 76, baseType: !1660, size: 64, offset: 128)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1653, size: 64, elements: !1661)
!1661 = !{!1662}
!1662 = !DISubrange(count: 2)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1649, file: !1650, line: 77, baseType: !1653, size: 32, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1649, file: !1650, line: 78, baseType: !1665, size: 1024, offset: 224)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1653, size: 1024, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 32)
!1668 = !{!1669}
!1669 = !DILocalVariable(name: "ctx", arg: 1, scope: !1645, file: !245, line: 76, type: !1648)
!1670 = !DILocation(line: 76, column: 31, scope: !1645)
!1671 = !DILocation(line: 78, column: 10, scope: !1645)
!1672 = !DILocation(line: 83, column: 19, scope: !1645)
!1673 = !DILocation(line: 83, column: 33, scope: !1645)
!1674 = !DILocation(line: 83, column: 3, scope: !1645)
!1675 = !DILocation(line: 83, column: 17, scope: !1645)
!1676 = !DILocation(line: 84, column: 8, scope: !1645)
!1677 = !DILocation(line: 84, column: 15, scope: !1645)
!1678 = !{!1679, !956, i64 24}
!1679 = !{!"md5_ctx", !956, i64 0, !956, i64 4, !956, i64 8, !956, i64 12, !778, i64 16, !956, i64 24, !778, i64 28}
!1680 = !DILocation(line: 85, column: 1, scope: !1645)
!1681 = distinct !DISubprogram(name: "md5_read_ctx", scope: !245, file: !245, line: 99, type: !1682, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !1686)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!60, !1684, !60}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1686 = !{!1687, !1688, !1689}
!1687 = !DILocalVariable(name: "ctx", arg: 1, scope: !1681, file: !245, line: 99, type: !1684)
!1688 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1681, file: !245, line: 99, type: !60)
!1689 = !DILocalVariable(name: "r", scope: !1681, file: !245, line: 101, type: !58)
!1690 = !DILocation(line: 99, column: 37, scope: !1681)
!1691 = !DILocation(line: 99, column: 48, scope: !1681)
!1692 = !DILocation(line: 101, column: 9, scope: !1681)
!1693 = !DILocation(line: 102, column: 38, scope: !1681)
!1694 = !{!1679, !956, i64 0}
!1695 = !DILocalVariable(name: "cp", arg: 1, scope: !1696, file: !245, line: 91, type: !58)
!1696 = distinct !DISubprogram(name: "set_uint32", scope: !245, file: !245, line: 91, type: !1697, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !1699)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !58, !1653}
!1699 = !{!1695, !1700}
!1700 = !DILocalVariable(name: "v", arg: 2, scope: !1696, file: !245, line: 91, type: !1653)
!1701 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 102, column: 3, scope: !1681)
!1703 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !1702)
!1704 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !1702)
!1705 = !DILocation(line: 103, column: 17, scope: !1681)
!1706 = !DILocation(line: 103, column: 38, scope: !1681)
!1707 = !{!1679, !956, i64 4}
!1708 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 103, column: 3, scope: !1681)
!1710 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !1709)
!1711 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !1709)
!1712 = !DILocation(line: 104, column: 17, scope: !1681)
!1713 = !DILocation(line: 104, column: 38, scope: !1681)
!1714 = !{!1679, !956, i64 8}
!1715 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 104, column: 3, scope: !1681)
!1717 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !1716)
!1718 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !1716)
!1719 = !DILocation(line: 105, column: 17, scope: !1681)
!1720 = !DILocation(line: 105, column: 38, scope: !1681)
!1721 = !{!1679, !956, i64 12}
!1722 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 105, column: 3, scope: !1681)
!1724 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !1723)
!1725 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !1723)
!1726 = !DILocation(line: 107, column: 3, scope: !1681)
!1727 = distinct !DISubprogram(name: "md5_finish_ctx", scope: !245, file: !245, line: 113, type: !1728, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!60, !1648, !60}
!1730 = !{!1731, !1732, !1733, !1734}
!1731 = !DILocalVariable(name: "ctx", arg: 1, scope: !1727, file: !245, line: 113, type: !1648)
!1732 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1727, file: !245, line: 113, type: !60)
!1733 = !DILocalVariable(name: "bytes", scope: !1727, file: !245, line: 116, type: !1653)
!1734 = !DILocalVariable(name: "size", scope: !1727, file: !245, line: 117, type: !61)
!1735 = !DILocation(line: 113, column: 33, scope: !1727)
!1736 = !DILocation(line: 113, column: 44, scope: !1727)
!1737 = !DILocation(line: 116, column: 25, scope: !1727)
!1738 = !DILocation(line: 116, column: 12, scope: !1727)
!1739 = !DILocation(line: 117, column: 24, scope: !1727)
!1740 = !DILocation(line: 117, column: 17, scope: !1727)
!1741 = !DILocation(line: 117, column: 10, scope: !1727)
!1742 = !DILocation(line: 120, column: 3, scope: !1727)
!1743 = !DILocation(line: 120, column: 17, scope: !1727)
!1744 = !DILocation(line: 121, column: 21, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1727, file: !245, line: 121, column: 7)
!1746 = !DILocation(line: 121, column: 7, scope: !1727)
!1747 = !DILocation(line: 122, column: 5, scope: !1745)
!1748 = !DILocation(line: 125, column: 27, scope: !1727)
!1749 = !DILocation(line: 125, column: 20, scope: !1727)
!1750 = !DILocation(line: 125, column: 3, scope: !1727)
!1751 = !DILocation(line: 125, column: 25, scope: !1727)
!1752 = !DILocation(line: 126, column: 27, scope: !1727)
!1753 = !DILocation(line: 126, column: 20, scope: !1727)
!1754 = !DILocation(line: 126, column: 3, scope: !1727)
!1755 = !DILocation(line: 126, column: 25, scope: !1727)
!1756 = !DILocation(line: 128, column: 12, scope: !1727)
!1757 = !DILocation(line: 128, column: 63, scope: !1727)
!1758 = !DILocation(line: 128, column: 67, scope: !1727)
!1759 = !DILocation(line: 128, column: 3, scope: !1727)
!1760 = !DILocation(line: 131, column: 40, scope: !1727)
!1761 = !DILocation(line: 131, column: 3, scope: !1727)
!1762 = !DILocation(line: 99, column: 37, scope: !1681, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 133, column: 10, scope: !1727)
!1764 = !DILocation(line: 99, column: 48, scope: !1681, inlinedAt: !1763)
!1765 = !DILocation(line: 101, column: 9, scope: !1681, inlinedAt: !1763)
!1766 = !DILocation(line: 102, column: 38, scope: !1681, inlinedAt: !1763)
!1767 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 102, column: 3, scope: !1681, inlinedAt: !1763)
!1769 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !1768)
!1770 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !1768)
!1771 = !DILocation(line: 103, column: 17, scope: !1681, inlinedAt: !1763)
!1772 = !DILocation(line: 103, column: 38, scope: !1681, inlinedAt: !1763)
!1773 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 103, column: 3, scope: !1681, inlinedAt: !1763)
!1775 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !1774)
!1776 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !1774)
!1777 = !DILocation(line: 104, column: 17, scope: !1681, inlinedAt: !1763)
!1778 = !DILocation(line: 104, column: 38, scope: !1681, inlinedAt: !1763)
!1779 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 104, column: 3, scope: !1681, inlinedAt: !1763)
!1781 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !1780)
!1782 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !1780)
!1783 = !DILocation(line: 105, column: 17, scope: !1681, inlinedAt: !1763)
!1784 = !DILocation(line: 105, column: 38, scope: !1681, inlinedAt: !1763)
!1785 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 105, column: 3, scope: !1681, inlinedAt: !1763)
!1787 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !1786)
!1788 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !1786)
!1789 = !DILocation(line: 133, column: 3, scope: !1727)
!1790 = distinct !DISubprogram(name: "md5_process_block", scope: !245, file: !245, line: 311, type: !1791, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !852, !61, !1648}
!1793 = !{!1794, !1795, !1796, !1797, !1799, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1812, !1813, !1814, !1815}
!1794 = !DILocalVariable(name: "buffer", arg: 1, scope: !1790, file: !245, line: 311, type: !852)
!1795 = !DILocalVariable(name: "len", arg: 2, scope: !1790, file: !245, line: 311, type: !61)
!1796 = !DILocalVariable(name: "ctx", arg: 3, scope: !1790, file: !245, line: 311, type: !1648)
!1797 = !DILocalVariable(name: "correct_words", scope: !1790, file: !245, line: 313, type: !1798)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1653, size: 512, elements: !208)
!1799 = !DILocalVariable(name: "words", scope: !1790, file: !245, line: 314, type: !1800)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1802 = !DILocalVariable(name: "nwords", scope: !1790, file: !245, line: 315, type: !61)
!1803 = !DILocalVariable(name: "endp", scope: !1790, file: !245, line: 316, type: !1800)
!1804 = !DILocalVariable(name: "A", scope: !1790, file: !245, line: 317, type: !1653)
!1805 = !DILocalVariable(name: "B", scope: !1790, file: !245, line: 318, type: !1653)
!1806 = !DILocalVariable(name: "C", scope: !1790, file: !245, line: 319, type: !1653)
!1807 = !DILocalVariable(name: "D", scope: !1790, file: !245, line: 320, type: !1653)
!1808 = !DILocalVariable(name: "lolen", scope: !1790, file: !245, line: 321, type: !1653)
!1809 = !DILocalVariable(name: "cwp", scope: !1810, file: !245, line: 333, type: !1811)
!1810 = distinct !DILexicalBlock(scope: !1790, file: !245, line: 332, column: 5)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1812 = !DILocalVariable(name: "A_save", scope: !1810, file: !245, line: 334, type: !1653)
!1813 = !DILocalVariable(name: "B_save", scope: !1810, file: !245, line: 335, type: !1653)
!1814 = !DILocalVariable(name: "C_save", scope: !1810, file: !245, line: 336, type: !1653)
!1815 = !DILocalVariable(name: "D_save", scope: !1810, file: !245, line: 337, type: !1653)
!1816 = !DILocation(line: 311, column: 32, scope: !1790)
!1817 = !DILocation(line: 311, column: 47, scope: !1790)
!1818 = !DILocation(line: 311, column: 68, scope: !1790)
!1819 = !DILocation(line: 313, column: 12, scope: !1790)
!1820 = !DILocation(line: 314, column: 27, scope: !1790)
!1821 = !DILocation(line: 314, column: 19, scope: !1790)
!1822 = !DILocation(line: 315, column: 23, scope: !1790)
!1823 = !DILocation(line: 315, column: 10, scope: !1790)
!1824 = !DILocation(line: 316, column: 32, scope: !1790)
!1825 = !DILocation(line: 316, column: 19, scope: !1790)
!1826 = !DILocation(line: 317, column: 21, scope: !1790)
!1827 = !DILocation(line: 317, column: 12, scope: !1790)
!1828 = !DILocation(line: 318, column: 21, scope: !1790)
!1829 = !DILocation(line: 318, column: 12, scope: !1790)
!1830 = !DILocation(line: 319, column: 21, scope: !1790)
!1831 = !DILocation(line: 319, column: 12, scope: !1790)
!1832 = !DILocation(line: 320, column: 21, scope: !1790)
!1833 = !DILocation(line: 320, column: 12, scope: !1790)
!1834 = !DILocation(line: 321, column: 20, scope: !1790)
!1835 = !DILocation(line: 321, column: 12, scope: !1790)
!1836 = !DILocation(line: 326, column: 3, scope: !1790)
!1837 = !DILocation(line: 326, column: 17, scope: !1790)
!1838 = !DILocation(line: 327, column: 25, scope: !1790)
!1839 = !DILocation(line: 327, column: 54, scope: !1790)
!1840 = !DILocation(line: 327, column: 39, scope: !1790)
!1841 = !DILocation(line: 327, column: 37, scope: !1790)
!1842 = !DILocation(line: 327, column: 3, scope: !1790)
!1843 = !DILocation(line: 327, column: 17, scope: !1790)
!1844 = !DILocation(line: 331, column: 16, scope: !1790)
!1845 = !DILocation(line: 331, column: 3, scope: !1790)
!1846 = !DILocation(line: 371, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 371, column: 7)
!1848 = !DILocation(line: 333, column: 17, scope: !1810)
!1849 = !DILocation(line: 334, column: 16, scope: !1810)
!1850 = !DILocation(line: 335, column: 16, scope: !1810)
!1851 = !DILocation(line: 336, column: 16, scope: !1810)
!1852 = !DILocation(line: 337, column: 16, scope: !1810)
!1853 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!1854 = !DILocation(line: 372, column: 7, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 372, column: 7)
!1856 = !DIExpression(DW_OP_LLVM_fragment, 32, 32)
!1857 = !DILocation(line: 373, column: 7, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 373, column: 7)
!1859 = !DIExpression(DW_OP_LLVM_fragment, 64, 32)
!1860 = !DILocation(line: 374, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 374, column: 7)
!1862 = !DIExpression(DW_OP_LLVM_fragment, 96, 32)
!1863 = !DILocation(line: 375, column: 7, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 375, column: 7)
!1865 = !DIExpression(DW_OP_LLVM_fragment, 128, 32)
!1866 = !DILocation(line: 376, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 376, column: 7)
!1868 = !DIExpression(DW_OP_LLVM_fragment, 160, 32)
!1869 = !DILocation(line: 377, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 377, column: 7)
!1871 = !DIExpression(DW_OP_LLVM_fragment, 192, 32)
!1872 = !DILocation(line: 378, column: 7, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 378, column: 7)
!1874 = !DIExpression(DW_OP_LLVM_fragment, 224, 32)
!1875 = !DILocation(line: 379, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 379, column: 7)
!1877 = !DIExpression(DW_OP_LLVM_fragment, 256, 32)
!1878 = !DILocation(line: 380, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 380, column: 7)
!1880 = !DIExpression(DW_OP_LLVM_fragment, 288, 32)
!1881 = !DILocation(line: 381, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 381, column: 7)
!1883 = !DIExpression(DW_OP_LLVM_fragment, 320, 32)
!1884 = !DILocation(line: 382, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 382, column: 7)
!1886 = !DIExpression(DW_OP_LLVM_fragment, 352, 32)
!1887 = !DILocation(line: 383, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 383, column: 7)
!1889 = !DIExpression(DW_OP_LLVM_fragment, 384, 32)
!1890 = !DILocation(line: 384, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 384, column: 7)
!1892 = !DIExpression(DW_OP_LLVM_fragment, 416, 32)
!1893 = !DILocation(line: 385, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 385, column: 7)
!1895 = !DIExpression(DW_OP_LLVM_fragment, 448, 32)
!1896 = !DILocation(line: 386, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 386, column: 7)
!1898 = !DIExpression(DW_OP_LLVM_fragment, 480, 32)
!1899 = !DILocation(line: 402, column: 7, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 402, column: 7)
!1901 = !DILocation(line: 403, column: 7, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 403, column: 7)
!1903 = !DILocation(line: 404, column: 7, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 404, column: 7)
!1905 = !DILocation(line: 405, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 405, column: 7)
!1907 = !DILocation(line: 406, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 406, column: 7)
!1909 = !DILocation(line: 407, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 407, column: 7)
!1911 = !DILocation(line: 408, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 408, column: 7)
!1913 = !DILocation(line: 409, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 409, column: 7)
!1915 = !DILocation(line: 410, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 410, column: 7)
!1917 = !DILocation(line: 411, column: 7, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 411, column: 7)
!1919 = !DILocation(line: 412, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 412, column: 7)
!1921 = !DILocation(line: 413, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 413, column: 7)
!1923 = !DILocation(line: 414, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 414, column: 7)
!1925 = !DILocation(line: 415, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 415, column: 7)
!1927 = !DILocation(line: 416, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 416, column: 7)
!1929 = !DILocation(line: 417, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 417, column: 7)
!1931 = !DILocation(line: 420, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 420, column: 7)
!1933 = !DILocation(line: 421, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 421, column: 7)
!1935 = !DILocation(line: 422, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 422, column: 7)
!1937 = !DILocation(line: 423, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 423, column: 7)
!1939 = !DILocation(line: 424, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 424, column: 7)
!1941 = !DILocation(line: 425, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 425, column: 7)
!1943 = !DILocation(line: 426, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 426, column: 7)
!1945 = !DILocation(line: 427, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 427, column: 7)
!1947 = !DILocation(line: 428, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 428, column: 7)
!1949 = !DILocation(line: 429, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 429, column: 7)
!1951 = !DILocation(line: 430, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 430, column: 7)
!1953 = !DILocation(line: 431, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 431, column: 7)
!1955 = !DILocation(line: 432, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 432, column: 7)
!1957 = !DILocation(line: 433, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 433, column: 7)
!1959 = !DILocation(line: 434, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 434, column: 7)
!1961 = !DILocation(line: 435, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 435, column: 7)
!1963 = !DILocation(line: 438, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 438, column: 7)
!1965 = !DILocation(line: 439, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 439, column: 7)
!1967 = !DILocation(line: 440, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 440, column: 7)
!1969 = !DILocation(line: 441, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 441, column: 7)
!1971 = !DILocation(line: 442, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 442, column: 7)
!1973 = !DILocation(line: 443, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 443, column: 7)
!1975 = !DILocation(line: 444, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 444, column: 7)
!1977 = !DILocation(line: 445, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 445, column: 7)
!1979 = !DILocation(line: 446, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 446, column: 7)
!1981 = !DILocation(line: 447, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 447, column: 7)
!1983 = !DILocation(line: 448, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 448, column: 7)
!1985 = !DILocation(line: 449, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 449, column: 7)
!1987 = !DILocation(line: 450, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 450, column: 7)
!1989 = !DILocation(line: 451, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 451, column: 7)
!1991 = !DILocation(line: 452, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 452, column: 7)
!1993 = !DILocation(line: 453, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 453, column: 7)
!1995 = !DILocation(line: 456, column: 9, scope: !1810)
!1996 = !DILocation(line: 457, column: 9, scope: !1810)
!1997 = !DILocation(line: 458, column: 9, scope: !1810)
!1998 = !DILocation(line: 459, column: 9, scope: !1810)
!1999 = distinct !{!1999, !1845, !2000}
!2000 = !DILocation(line: 460, column: 5, scope: !1790)
!2001 = !DILocation(line: 463, column: 10, scope: !1790)
!2002 = !DILocation(line: 464, column: 10, scope: !1790)
!2003 = !DILocation(line: 465, column: 10, scope: !1790)
!2004 = !DILocation(line: 466, column: 10, scope: !1790)
!2005 = !DILocation(line: 467, column: 1, scope: !1790)
!2006 = distinct !DISubprogram(name: "md5_stream", scope: !245, file: !245, line: 141, type: !2007, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !2049)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!63, !2009, !60}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2011, file: !118, line: 242, baseType: !63, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2011, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2011, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2011, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2011, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2011, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2011, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2011, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2011, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2011, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2011, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2011, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2011, file: !118, line: 260, baseType: !2026, size: 64, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !2028)
!2028 = !{!2029, !2030, !2032}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2027, file: !118, line: 157, baseType: !2026, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2027, file: !118, line: 158, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2027, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2011, file: !118, line: 262, baseType: !2031, size: 64, offset: 832)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2011, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2011, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2011, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2011, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2011, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2011, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2011, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2011, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2011, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2011, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2011, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2011, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2011, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2011, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2011, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055}
!2050 = !DILocalVariable(name: "stream", arg: 1, scope: !2006, file: !245, line: 141, type: !2009)
!2051 = !DILocalVariable(name: "resblock", arg: 2, scope: !2006, file: !245, line: 141, type: !60)
!2052 = !DILocalVariable(name: "ctx", scope: !2006, file: !245, line: 143, type: !1649)
!2053 = !DILocalVariable(name: "sum", scope: !2006, file: !245, line: 144, type: !61)
!2054 = !DILocalVariable(name: "buffer", scope: !2006, file: !245, line: 146, type: !58)
!2055 = !DILocalVariable(name: "n", scope: !2056, file: !245, line: 159, type: !61)
!2056 = distinct !DILexicalBlock(scope: !2006, file: !245, line: 155, column: 5)
!2057 = !DILocation(line: 141, column: 19, scope: !2006)
!2058 = !DILocation(line: 141, column: 33, scope: !2006)
!2059 = !DILocation(line: 143, column: 3, scope: !2006)
!2060 = !DILocation(line: 146, column: 18, scope: !2006)
!2061 = !DILocation(line: 146, column: 9, scope: !2006)
!2062 = !DILocation(line: 147, column: 8, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2006, file: !245, line: 147, column: 7)
!2064 = !DILocation(line: 147, column: 7, scope: !2006)
!2065 = !DILocation(line: 143, column: 18, scope: !2006)
!2066 = !DILocation(line: 76, column: 31, scope: !1645, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 151, column: 3, scope: !2006)
!2068 = !DILocation(line: 78, column: 10, scope: !1645, inlinedAt: !2067)
!2069 = !DILocation(line: 83, column: 19, scope: !1645, inlinedAt: !2067)
!2070 = !DILocation(line: 83, column: 33, scope: !1645, inlinedAt: !2067)
!2071 = !DILocation(line: 83, column: 3, scope: !1645, inlinedAt: !2067)
!2072 = !DILocation(line: 83, column: 17, scope: !1645, inlinedAt: !2067)
!2073 = !DILocation(line: 84, column: 8, scope: !1645, inlinedAt: !2067)
!2074 = !DILocation(line: 84, column: 15, scope: !1645, inlinedAt: !2067)
!2075 = !DILocation(line: 154, column: 3, scope: !2006)
!2076 = !DILocation(line: 144, column: 10, scope: !2006)
!2077 = !DILocation(line: 165, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2056, file: !245, line: 164, column: 9)
!2079 = !DILocation(line: 159, column: 14, scope: !2056)
!2080 = !DILocation(line: 169, column: 19, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !245, line: 169, column: 15)
!2082 = !DILocation(line: 169, column: 15, scope: !2078)
!2083 = !DILocation(line: 172, column: 17, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2078, file: !245, line: 172, column: 15)
!2085 = !DILocation(line: 167, column: 15, scope: !2078)
!2086 = distinct !{!2086, !2087, !2088}
!2087 = !DILocation(line: 163, column: 7, scope: !2056)
!2088 = !DILocation(line: 190, column: 9, scope: !2056)
!2089 = !DILocation(line: 172, column: 15, scope: !2078)
!2090 = !DILocalVariable(name: "__stream", arg: 1, scope: !2091, file: !1021, line: 132, type: !2009)
!2091 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1021, file: !1021, line: 132, type: !2092, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!63, !2009}
!2094 = !{!2090}
!2095 = !DILocation(line: 132, column: 1, scope: !2091, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 177, column: 19, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !245, line: 177, column: 19)
!2098 = distinct !DILexicalBlock(scope: !2084, file: !245, line: 173, column: 13)
!2099 = !DILocation(line: 134, column: 10, scope: !2091, inlinedAt: !2096)
!2100 = !DILocation(line: 177, column: 19, scope: !2097)
!2101 = !DILocation(line: 177, column: 19, scope: !2098)
!2102 = !DILocation(line: 179, column: 19, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2097, file: !245, line: 178, column: 17)
!2104 = !DILocalVariable(name: "__stream", arg: 1, scope: !2105, file: !1021, line: 125, type: !2009)
!2105 = distinct !DISubprogram(name: "feof_unlocked", scope: !1021, file: !1021, line: 125, type: !2092, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !2106)
!2106 = !{!2104}
!2107 = !DILocation(line: 125, column: 1, scope: !2105, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 188, column: 15, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2078, file: !245, line: 188, column: 15)
!2110 = !DILocation(line: 127, column: 10, scope: !2105, inlinedAt: !2108)
!2111 = !DILocation(line: 188, column: 15, scope: !2109)
!2112 = !DILocation(line: 188, column: 15, scope: !2078)
!2113 = !DILocation(line: 195, column: 7, scope: !2056)
!2114 = distinct !{!2114, !2075, !2115}
!2115 = !DILocation(line: 196, column: 5, scope: !2006)
!2116 = !DILocation(line: 201, column: 11, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2006, file: !245, line: 201, column: 7)
!2118 = !DILocation(line: 201, column: 7, scope: !2006)
!2119 = !DILocation(line: 202, column: 5, scope: !2117)
!2120 = !DILocation(line: 113, column: 33, scope: !1727, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 205, column: 3, scope: !2006)
!2122 = !DILocation(line: 113, column: 44, scope: !1727, inlinedAt: !2121)
!2123 = !DILocation(line: 116, column: 25, scope: !1727, inlinedAt: !2121)
!2124 = !DILocation(line: 116, column: 12, scope: !1727, inlinedAt: !2121)
!2125 = !DILocation(line: 117, column: 24, scope: !1727, inlinedAt: !2121)
!2126 = !DILocation(line: 117, column: 17, scope: !1727, inlinedAt: !2121)
!2127 = !DILocation(line: 117, column: 10, scope: !1727, inlinedAt: !2121)
!2128 = !DILocation(line: 120, column: 17, scope: !1727, inlinedAt: !2121)
!2129 = !DILocation(line: 121, column: 21, scope: !1745, inlinedAt: !2121)
!2130 = !DILocation(line: 121, column: 7, scope: !1727, inlinedAt: !2121)
!2131 = !DILocation(line: 122, column: 5, scope: !1745, inlinedAt: !2121)
!2132 = !DILocation(line: 126, column: 27, scope: !1727, inlinedAt: !2121)
!2133 = !DILocation(line: 125, column: 27, scope: !1727, inlinedAt: !2121)
!2134 = !DILocation(line: 125, column: 20, scope: !1727, inlinedAt: !2121)
!2135 = !DILocation(line: 125, column: 3, scope: !1727, inlinedAt: !2121)
!2136 = !DILocation(line: 125, column: 25, scope: !1727, inlinedAt: !2121)
!2137 = !DILocation(line: 126, column: 20, scope: !1727, inlinedAt: !2121)
!2138 = !DILocation(line: 126, column: 3, scope: !1727, inlinedAt: !2121)
!2139 = !DILocation(line: 126, column: 25, scope: !1727, inlinedAt: !2121)
!2140 = !DILocation(line: 128, column: 12, scope: !1727, inlinedAt: !2121)
!2141 = !DILocation(line: 128, column: 63, scope: !1727, inlinedAt: !2121)
!2142 = !DILocation(line: 128, column: 67, scope: !1727, inlinedAt: !2121)
!2143 = !DILocation(line: 128, column: 3, scope: !1727, inlinedAt: !2121)
!2144 = !DILocation(line: 131, column: 40, scope: !1727, inlinedAt: !2121)
!2145 = !DILocation(line: 131, column: 3, scope: !1727, inlinedAt: !2121)
!2146 = !DILocation(line: 99, column: 37, scope: !1681, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 133, column: 10, scope: !1727, inlinedAt: !2121)
!2148 = !DILocation(line: 99, column: 48, scope: !1681, inlinedAt: !2147)
!2149 = !DILocation(line: 101, column: 9, scope: !1681, inlinedAt: !2147)
!2150 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 102, column: 3, scope: !1681, inlinedAt: !2147)
!2152 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !2151)
!2153 = !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)
!2154 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 103, column: 3, scope: !1681, inlinedAt: !2147)
!2156 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !2155)
!2157 = !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)
!2158 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 104, column: 3, scope: !1681, inlinedAt: !2147)
!2160 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !2159)
!2161 = !DILocation(line: 102, column: 38, scope: !1681, inlinedAt: !2147)
!2162 = !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)
!2163 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 105, column: 3, scope: !1681, inlinedAt: !2147)
!2165 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !2164)
!2166 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !2151)
!2167 = !DILocation(line: 206, column: 3, scope: !2006)
!2168 = !DILocation(line: 207, column: 3, scope: !2006)
!2169 = !DILocation(line: 208, column: 1, scope: !2006)
!2170 = distinct !DISubprogram(name: "md5_process_bytes", scope: !245, file: !245, line: 232, type: !1791, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !2171)
!2171 = !{!2172, !2173, !2174, !2175, !2178, !2179}
!2172 = !DILocalVariable(name: "buffer", arg: 1, scope: !2170, file: !245, line: 232, type: !852)
!2173 = !DILocalVariable(name: "len", arg: 2, scope: !2170, file: !245, line: 232, type: !61)
!2174 = !DILocalVariable(name: "ctx", arg: 3, scope: !2170, file: !245, line: 232, type: !1648)
!2175 = !DILocalVariable(name: "left_over", scope: !2176, file: !245, line: 238, type: !61)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !245, line: 237, column: 5)
!2177 = distinct !DILexicalBlock(scope: !2170, file: !245, line: 236, column: 7)
!2178 = !DILocalVariable(name: "add", scope: !2176, file: !245, line: 239, type: !61)
!2179 = !DILocalVariable(name: "left_over", scope: !2180, file: !245, line: 283, type: !61)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !245, line: 282, column: 5)
!2181 = distinct !DILexicalBlock(scope: !2170, file: !245, line: 281, column: 7)
!2182 = !DILocation(line: 232, column: 32, scope: !2170)
!2183 = !DILocation(line: 232, column: 47, scope: !2170)
!2184 = !DILocation(line: 232, column: 68, scope: !2170)
!2185 = !DILocation(line: 236, column: 12, scope: !2177)
!2186 = !DILocation(line: 236, column: 19, scope: !2177)
!2187 = !DILocation(line: 236, column: 7, scope: !2170)
!2188 = !DILocation(line: 238, column: 26, scope: !2176)
!2189 = !DILocation(line: 238, column: 14, scope: !2176)
!2190 = !DILocation(line: 239, column: 24, scope: !2176)
!2191 = !DILocation(line: 239, column: 36, scope: !2176)
!2192 = !DILocation(line: 239, column: 20, scope: !2176)
!2193 = !DILocation(line: 239, column: 14, scope: !2176)
!2194 = !DILocation(line: 241, column: 16, scope: !2176)
!2195 = !DILocation(line: 241, column: 7, scope: !2176)
!2196 = !DILocation(line: 242, column: 19, scope: !2176)
!2197 = !DILocation(line: 244, column: 23, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2176, file: !245, line: 244, column: 11)
!2199 = !DILocation(line: 244, column: 11, scope: !2176)
!2200 = !DILocation(line: 246, column: 55, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !245, line: 245, column: 9)
!2202 = !DILocation(line: 246, column: 11, scope: !2201)
!2203 = !DILocation(line: 248, column: 23, scope: !2201)
!2204 = !DILocation(line: 251, column: 61, scope: !2201)
!2205 = !DILocation(line: 251, column: 20, scope: !2201)
!2206 = !DILocation(line: 252, column: 19, scope: !2201)
!2207 = !DILocation(line: 250, column: 11, scope: !2201)
!2208 = !DILocation(line: 253, column: 9, scope: !2201)
!2209 = !DILocation(line: 255, column: 38, scope: !2176)
!2210 = !DILocation(line: 256, column: 11, scope: !2176)
!2211 = !DILocation(line: 257, column: 5, scope: !2176)
!2212 = !DILocation(line: 260, column: 11, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2170, file: !245, line: 260, column: 7)
!2214 = !DILocation(line: 260, column: 7, scope: !2170)
!2215 = !DILocation(line: 264, column: 11, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !245, line: 264, column: 11)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !245, line: 261, column: 5)
!2218 = !DILocation(line: 264, column: 11, scope: !2217)
!2219 = !DILocation(line: 265, column: 20, scope: !2216)
!2220 = !DILocation(line: 265, column: 9, scope: !2216)
!2221 = !DILocation(line: 267, column: 32, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2216, file: !245, line: 266, column: 11)
!2223 = !DILocation(line: 267, column: 13, scope: !2222)
!2224 = !DILocation(line: 268, column: 44, scope: !2222)
!2225 = !DILocation(line: 269, column: 17, scope: !2222)
!2226 = distinct !{!2226, !2220, !2227}
!2227 = !DILocation(line: 270, column: 11, scope: !2216)
!2228 = !DILocation(line: 274, column: 42, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2216, file: !245, line: 273, column: 9)
!2230 = !DILocation(line: 274, column: 11, scope: !2229)
!2231 = !DILocation(line: 275, column: 42, scope: !2229)
!2232 = !DILocation(line: 276, column: 15, scope: !2229)
!2233 = !DILocation(line: 281, column: 11, scope: !2181)
!2234 = !DILocation(line: 281, column: 7, scope: !2170)
!2235 = !DILocation(line: 283, column: 31, scope: !2180)
!2236 = !DILocation(line: 283, column: 26, scope: !2180)
!2237 = !DILocation(line: 283, column: 14, scope: !2180)
!2238 = !DILocation(line: 285, column: 31, scope: !2180)
!2239 = !DILocation(line: 285, column: 16, scope: !2180)
!2240 = !DILocation(line: 285, column: 7, scope: !2180)
!2241 = !DILocation(line: 286, column: 17, scope: !2180)
!2242 = !DILocation(line: 287, column: 21, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2180, file: !245, line: 287, column: 11)
!2244 = !DILocation(line: 287, column: 11, scope: !2180)
!2245 = !DILocation(line: 289, column: 11, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !245, line: 288, column: 9)
!2247 = !DILocation(line: 290, column: 21, scope: !2246)
!2248 = !DILocation(line: 291, column: 33, scope: !2246)
!2249 = !DILocation(line: 291, column: 11, scope: !2246)
!2250 = !DILocation(line: 292, column: 9, scope: !2246)
!2251 = !DILocation(line: 293, column: 21, scope: !2180)
!2252 = !DILocation(line: 293, column: 19, scope: !2180)
!2253 = !DILocation(line: 294, column: 5, scope: !2180)
!2254 = !DILocation(line: 295, column: 1, scope: !2170)
!2255 = distinct !DISubprogram(name: "md5_buffer", scope: !245, file: !245, line: 216, type: !2256, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!60, !80, !61, !60}
!2258 = !{!2259, !2260, !2261, !2262}
!2259 = !DILocalVariable(name: "buffer", arg: 1, scope: !2255, file: !245, line: 216, type: !80)
!2260 = !DILocalVariable(name: "len", arg: 2, scope: !2255, file: !245, line: 216, type: !61)
!2261 = !DILocalVariable(name: "resblock", arg: 3, scope: !2255, file: !245, line: 216, type: !60)
!2262 = !DILocalVariable(name: "ctx", scope: !2255, file: !245, line: 218, type: !1649)
!2263 = !DILocation(line: 216, column: 25, scope: !2255)
!2264 = !DILocation(line: 216, column: 40, scope: !2255)
!2265 = !DILocation(line: 216, column: 51, scope: !2255)
!2266 = !DILocation(line: 218, column: 3, scope: !2255)
!2267 = !DILocation(line: 218, column: 18, scope: !2255)
!2268 = !DILocation(line: 76, column: 31, scope: !1645, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 221, column: 3, scope: !2255)
!2270 = !DILocation(line: 78, column: 10, scope: !1645, inlinedAt: !2269)
!2271 = !DILocation(line: 83, column: 19, scope: !1645, inlinedAt: !2269)
!2272 = !DILocation(line: 83, column: 33, scope: !1645, inlinedAt: !2269)
!2273 = !DILocation(line: 83, column: 3, scope: !1645, inlinedAt: !2269)
!2274 = !DILocation(line: 83, column: 17, scope: !1645, inlinedAt: !2269)
!2275 = !DILocation(line: 84, column: 8, scope: !1645, inlinedAt: !2269)
!2276 = !DILocation(line: 84, column: 15, scope: !1645, inlinedAt: !2269)
!2277 = !DILocation(line: 224, column: 3, scope: !2255)
!2278 = !DILocation(line: 113, column: 33, scope: !1727, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 227, column: 10, scope: !2255)
!2280 = !DILocation(line: 113, column: 44, scope: !1727, inlinedAt: !2279)
!2281 = !DILocation(line: 116, column: 25, scope: !1727, inlinedAt: !2279)
!2282 = !DILocation(line: 116, column: 12, scope: !1727, inlinedAt: !2279)
!2283 = !DILocation(line: 117, column: 24, scope: !1727, inlinedAt: !2279)
!2284 = !DILocation(line: 117, column: 17, scope: !1727, inlinedAt: !2279)
!2285 = !DILocation(line: 117, column: 10, scope: !1727, inlinedAt: !2279)
!2286 = !DILocation(line: 120, column: 17, scope: !1727, inlinedAt: !2279)
!2287 = !DILocation(line: 121, column: 21, scope: !1745, inlinedAt: !2279)
!2288 = !DILocation(line: 121, column: 7, scope: !1727, inlinedAt: !2279)
!2289 = !DILocation(line: 122, column: 5, scope: !1745, inlinedAt: !2279)
!2290 = !DILocation(line: 126, column: 27, scope: !1727, inlinedAt: !2279)
!2291 = !DILocation(line: 125, column: 27, scope: !1727, inlinedAt: !2279)
!2292 = !DILocation(line: 125, column: 20, scope: !1727, inlinedAt: !2279)
!2293 = !DILocation(line: 125, column: 3, scope: !1727, inlinedAt: !2279)
!2294 = !DILocation(line: 125, column: 25, scope: !1727, inlinedAt: !2279)
!2295 = !DILocation(line: 126, column: 20, scope: !1727, inlinedAt: !2279)
!2296 = !DILocation(line: 126, column: 3, scope: !1727, inlinedAt: !2279)
!2297 = !DILocation(line: 126, column: 25, scope: !1727, inlinedAt: !2279)
!2298 = !DILocation(line: 128, column: 12, scope: !1727, inlinedAt: !2279)
!2299 = !DILocation(line: 128, column: 63, scope: !1727, inlinedAt: !2279)
!2300 = !DILocation(line: 128, column: 67, scope: !1727, inlinedAt: !2279)
!2301 = !DILocation(line: 128, column: 3, scope: !1727, inlinedAt: !2279)
!2302 = !DILocation(line: 131, column: 40, scope: !1727, inlinedAt: !2279)
!2303 = !DILocation(line: 131, column: 3, scope: !1727, inlinedAt: !2279)
!2304 = !DILocation(line: 99, column: 37, scope: !1681, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 133, column: 10, scope: !1727, inlinedAt: !2279)
!2306 = !DILocation(line: 99, column: 48, scope: !1681, inlinedAt: !2305)
!2307 = !DILocation(line: 101, column: 9, scope: !1681, inlinedAt: !2305)
!2308 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 102, column: 3, scope: !1681, inlinedAt: !2305)
!2310 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !2309)
!2311 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 103, column: 3, scope: !1681, inlinedAt: !2305)
!2313 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !2312)
!2314 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 104, column: 3, scope: !1681, inlinedAt: !2305)
!2316 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !2315)
!2317 = !DILocation(line: 102, column: 38, scope: !1681, inlinedAt: !2305)
!2318 = !DILocation(line: 91, column: 19, scope: !1696, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 105, column: 3, scope: !1681, inlinedAt: !2305)
!2320 = !DILocation(line: 91, column: 32, scope: !1696, inlinedAt: !2319)
!2321 = !DILocation(line: 93, column: 3, scope: !1696, inlinedAt: !2309)
!2322 = !DILocation(line: 228, column: 1, scope: !2255)
!2323 = !DILocation(line: 227, column: 3, scope: !2255)
!2324 = distinct !DISubprogram(name: "fdadvise", scope: !2325, file: !2325, line: 31, type: !2326, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !709, variables: !2331)
!2325 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !63, !2328, !2328, !2330}
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2329, line: 57, baseType: !144)
!2329 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !49, line: 52, baseType: !48)
!2331 = !{!2332, !2333, !2334, !2335, !2336}
!2332 = !DILocalVariable(name: "fd", arg: 1, scope: !2324, file: !2325, line: 31, type: !63)
!2333 = !DILocalVariable(name: "offset", arg: 2, scope: !2324, file: !2325, line: 31, type: !2328)
!2334 = !DILocalVariable(name: "len", arg: 3, scope: !2324, file: !2325, line: 31, type: !2328)
!2335 = !DILocalVariable(name: "advice", arg: 4, scope: !2324, file: !2325, line: 31, type: !2330)
!2336 = !DILocalVariable(name: "__x", scope: !2337, file: !2325, line: 34, type: !63)
!2337 = distinct !DILexicalBlock(scope: !2324, file: !2325, line: 34, column: 3)
!2338 = !DILocation(line: 31, column: 15, scope: !2324)
!2339 = !DILocation(line: 31, column: 25, scope: !2324)
!2340 = !DILocation(line: 31, column: 39, scope: !2324)
!2341 = !DILocation(line: 31, column: 54, scope: !2324)
!2342 = !DILocation(line: 34, column: 3, scope: !2337)
!2343 = !DILocation(line: 36, column: 1, scope: !2324)
!2344 = distinct !DISubprogram(name: "fadvise", scope: !2325, file: !2325, line: 39, type: !2345, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !709, variables: !2387)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2347, !2330}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !2349)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2349, file: !118, line: 242, baseType: !63, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2349, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2349, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2349, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2349, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2349, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2349, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2349, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2349, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2349, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2349, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2349, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2349, file: !118, line: 260, baseType: !2364, size: 64, offset: 768)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !2366)
!2366 = !{!2367, !2368, !2370}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2365, file: !118, line: 157, baseType: !2364, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2365, file: !118, line: 158, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2365, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2349, file: !118, line: 262, baseType: !2369, size: 64, offset: 832)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2349, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2349, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2349, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2349, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2349, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2349, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2349, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2349, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2349, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2349, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2349, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2349, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2349, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2349, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2349, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "fp", arg: 1, scope: !2344, file: !2325, line: 39, type: !2347)
!2389 = !DILocalVariable(name: "advice", arg: 2, scope: !2344, file: !2325, line: 39, type: !2330)
!2390 = !DILocation(line: 39, column: 16, scope: !2344)
!2391 = !DILocation(line: 39, column: 30, scope: !2344)
!2392 = !DILocation(line: 41, column: 7, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2344, file: !2325, line: 41, column: 7)
!2394 = !DILocation(line: 41, column: 7, scope: !2344)
!2395 = !DILocation(line: 42, column: 15, scope: !2393)
!2396 = !DILocation(line: 31, column: 15, scope: !2324, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 42, column: 5, scope: !2393)
!2398 = !DILocation(line: 31, column: 25, scope: !2324, inlinedAt: !2397)
!2399 = !DILocation(line: 31, column: 39, scope: !2324, inlinedAt: !2397)
!2400 = !DILocation(line: 31, column: 54, scope: !2324, inlinedAt: !2397)
!2401 = !DILocation(line: 34, column: 3, scope: !2337, inlinedAt: !2397)
!2402 = !DILocation(line: 42, column: 5, scope: !2393)
!2403 = !DILocation(line: 43, column: 1, scope: !2344)
!2404 = distinct !DISubprogram(name: "fopen_safer", scope: !2405, file: !2405, line: 31, type: !2406, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !712, variables: !2448)
!2405 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!2408, !80, !80}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !2410)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2410, file: !118, line: 242, baseType: !63, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2410, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2410, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2410, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2410, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2410, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2410, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2410, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2410, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2410, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2410, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2410, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2410, file: !118, line: 260, baseType: !2425, size: 64, offset: 768)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !2427)
!2427 = !{!2428, !2429, !2431}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2426, file: !118, line: 157, baseType: !2425, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2426, file: !118, line: 158, baseType: !2430, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2426, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2410, file: !118, line: 262, baseType: !2430, size: 64, offset: 832)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2410, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2410, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2410, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2410, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2410, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2410, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2410, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2410, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2410, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2410, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2410, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2410, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2410, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2410, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2410, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!2448 = !{!2449, !2450, !2451, !2452, !2455, !2458, !2461}
!2449 = !DILocalVariable(name: "file", arg: 1, scope: !2404, file: !2405, line: 31, type: !80)
!2450 = !DILocalVariable(name: "mode", arg: 2, scope: !2404, file: !2405, line: 31, type: !80)
!2451 = !DILocalVariable(name: "fp", scope: !2404, file: !2405, line: 33, type: !2408)
!2452 = !DILocalVariable(name: "fd", scope: !2453, file: !2405, line: 37, type: !63)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !2405, line: 36, column: 5)
!2454 = distinct !DILexicalBlock(scope: !2404, file: !2405, line: 35, column: 7)
!2455 = !DILocalVariable(name: "f", scope: !2456, file: !2405, line: 41, type: !63)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !2405, line: 40, column: 9)
!2457 = distinct !DILexicalBlock(scope: !2453, file: !2405, line: 39, column: 11)
!2458 = !DILocalVariable(name: "e", scope: !2459, file: !2405, line: 45, type: !63)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !2405, line: 44, column: 13)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !2405, line: 43, column: 15)
!2461 = !DILocalVariable(name: "e", scope: !2462, file: !2405, line: 54, type: !63)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !2405, line: 53, column: 13)
!2463 = distinct !DILexicalBlock(scope: !2456, file: !2405, line: 51, column: 15)
!2464 = !DILocation(line: 31, column: 26, scope: !2404)
!2465 = !DILocation(line: 31, column: 44, scope: !2404)
!2466 = !DILocation(line: 33, column: 14, scope: !2404)
!2467 = !DILocation(line: 33, column: 9, scope: !2404)
!2468 = !DILocation(line: 35, column: 7, scope: !2454)
!2469 = !DILocation(line: 35, column: 7, scope: !2404)
!2470 = !DILocation(line: 37, column: 16, scope: !2453)
!2471 = !DILocation(line: 37, column: 11, scope: !2453)
!2472 = !DILocation(line: 39, column: 19, scope: !2457)
!2473 = !DILocation(line: 41, column: 19, scope: !2456)
!2474 = !DILocation(line: 41, column: 15, scope: !2456)
!2475 = !DILocation(line: 43, column: 17, scope: !2460)
!2476 = !DILocation(line: 43, column: 15, scope: !2456)
!2477 = !DILocation(line: 45, column: 23, scope: !2459)
!2478 = !DILocation(line: 45, column: 19, scope: !2459)
!2479 = !DILocation(line: 46, column: 15, scope: !2459)
!2480 = !DILocation(line: 47, column: 21, scope: !2459)
!2481 = !DILocation(line: 51, column: 15, scope: !2463)
!2482 = !DILocation(line: 51, column: 27, scope: !2463)
!2483 = !DILocation(line: 52, column: 15, scope: !2463)
!2484 = !DILocation(line: 52, column: 26, scope: !2463)
!2485 = !DILocation(line: 52, column: 24, scope: !2463)
!2486 = !DILocation(line: 51, column: 15, scope: !2456)
!2487 = !DILocation(line: 54, column: 23, scope: !2462)
!2488 = !DILocation(line: 54, column: 19, scope: !2462)
!2489 = !DILocation(line: 55, column: 15, scope: !2462)
!2490 = !DILocation(line: 56, column: 21, scope: !2462)
!2491 = !DILocation(line: 63, column: 1, scope: !2404)
!2492 = distinct !DISubprogram(name: "set_program_name", scope: !263, file: !263, line: 39, type: !78, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !259, variables: !2493)
!2493 = !{!2494, !2495, !2496}
!2494 = !DILocalVariable(name: "argv0", arg: 1, scope: !2492, file: !263, line: 39, type: !80)
!2495 = !DILocalVariable(name: "slash", scope: !2492, file: !263, line: 46, type: !80)
!2496 = !DILocalVariable(name: "base", scope: !2492, file: !263, line: 47, type: !80)
!2497 = !DILocation(line: 39, column: 31, scope: !2492)
!2498 = !DILocation(line: 51, column: 13, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2492, file: !263, line: 51, column: 7)
!2500 = !DILocation(line: 51, column: 7, scope: !2492)
!2501 = !DILocation(line: 55, column: 14, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2499, file: !263, line: 52, column: 5)
!2503 = !DILocation(line: 54, column: 7, scope: !2502)
!2504 = !DILocation(line: 56, column: 7, scope: !2502)
!2505 = !DILocation(line: 59, column: 11, scope: !2492)
!2506 = !DILocation(line: 46, column: 15, scope: !2492)
!2507 = !DILocation(line: 60, column: 17, scope: !2492)
!2508 = !DILocation(line: 60, column: 33, scope: !2492)
!2509 = !DILocation(line: 60, column: 11, scope: !2492)
!2510 = !DILocation(line: 47, column: 15, scope: !2492)
!2511 = !DILocation(line: 61, column: 12, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2492, file: !263, line: 61, column: 7)
!2513 = !DILocation(line: 61, column: 20, scope: !2512)
!2514 = !DILocation(line: 61, column: 25, scope: !2512)
!2515 = !DILocation(line: 61, column: 42, scope: !2512)
!2516 = !DILocation(line: 61, column: 28, scope: !2512)
!2517 = !DILocation(line: 61, column: 61, scope: !2512)
!2518 = !DILocation(line: 61, column: 7, scope: !2492)
!2519 = !DILocation(line: 64, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !263, line: 64, column: 11)
!2521 = distinct !DILexicalBlock(scope: !2512, file: !263, line: 62, column: 5)
!2522 = !DILocation(line: 64, column: 36, scope: !2520)
!2523 = !DILocation(line: 64, column: 11, scope: !2521)
!2524 = !DILocation(line: 66, column: 24, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !263, line: 65, column: 9)
!2526 = !DILocation(line: 70, column: 41, scope: !2525)
!2527 = !DILocation(line: 72, column: 9, scope: !2525)
!2528 = !DILocation(line: 84, column: 16, scope: !2492)
!2529 = !DILocation(line: 90, column: 27, scope: !2492)
!2530 = !DILocation(line: 92, column: 1, scope: !2492)
!2531 = distinct !DISubprogram(name: "clone_quoting_options", scope: !278, file: !278, line: 114, type: !2532, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2535)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2534, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!2535 = !{!2536, !2537, !2538}
!2536 = !DILocalVariable(name: "o", arg: 1, scope: !2531, file: !278, line: 114, type: !2534)
!2537 = !DILocalVariable(name: "e", scope: !2531, file: !278, line: 116, type: !63)
!2538 = !DILocalVariable(name: "p", scope: !2531, file: !278, line: 117, type: !2534)
!2539 = !DILocation(line: 114, column: 48, scope: !2531)
!2540 = !DILocation(line: 116, column: 11, scope: !2531)
!2541 = !DILocation(line: 116, column: 7, scope: !2531)
!2542 = !DILocation(line: 117, column: 40, scope: !2531)
!2543 = !DILocation(line: 117, column: 31, scope: !2531)
!2544 = !DILocation(line: 117, column: 27, scope: !2531)
!2545 = !DILocation(line: 119, column: 9, scope: !2531)
!2546 = !DILocation(line: 120, column: 3, scope: !2531)
!2547 = distinct !DISubprogram(name: "get_quoting_style", scope: !278, file: !278, line: 125, type: !2548, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2552)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!5, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!2552 = !{!2553}
!2553 = !DILocalVariable(name: "o", arg: 1, scope: !2547, file: !278, line: 125, type: !2550)
!2554 = !DILocation(line: 125, column: 50, scope: !2547)
!2555 = !DILocation(line: 127, column: 11, scope: !2547)
!2556 = !DILocation(line: 127, column: 46, scope: !2547)
!2557 = !{!2558, !778, i64 0}
!2558 = !{!"quoting_options", !778, i64 0, !956, i64 4, !778, i64 8, !777, i64 40, !777, i64 48}
!2559 = !DILocation(line: 127, column: 3, scope: !2547)
!2560 = distinct !DISubprogram(name: "set_quoting_style", scope: !278, file: !278, line: 133, type: !2561, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !2534, !5}
!2563 = !{!2564, !2565}
!2564 = !DILocalVariable(name: "o", arg: 1, scope: !2560, file: !278, line: 133, type: !2534)
!2565 = !DILocalVariable(name: "s", arg: 2, scope: !2560, file: !278, line: 133, type: !5)
!2566 = !DILocation(line: 133, column: 44, scope: !2560)
!2567 = !DILocation(line: 133, column: 66, scope: !2560)
!2568 = !DILocation(line: 135, column: 4, scope: !2560)
!2569 = !DILocation(line: 135, column: 39, scope: !2560)
!2570 = !DILocation(line: 135, column: 45, scope: !2560)
!2571 = !DILocation(line: 136, column: 1, scope: !2560)
!2572 = distinct !DISubprogram(name: "set_char_quoting", scope: !278, file: !278, line: 144, type: !2573, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!63, !2534, !59, !63}
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2582, !2583}
!2576 = !DILocalVariable(name: "o", arg: 1, scope: !2572, file: !278, line: 144, type: !2534)
!2577 = !DILocalVariable(name: "c", arg: 2, scope: !2572, file: !278, line: 144, type: !59)
!2578 = !DILocalVariable(name: "i", arg: 3, scope: !2572, file: !278, line: 144, type: !63)
!2579 = !DILocalVariable(name: "uc", scope: !2572, file: !278, line: 146, type: !65)
!2580 = !DILocalVariable(name: "p", scope: !2572, file: !278, line: 147, type: !2581)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!2582 = !DILocalVariable(name: "shift", scope: !2572, file: !278, line: 149, type: !63)
!2583 = !DILocalVariable(name: "r", scope: !2572, file: !278, line: 150, type: !63)
!2584 = !DILocation(line: 144, column: 43, scope: !2572)
!2585 = !DILocation(line: 144, column: 51, scope: !2572)
!2586 = !DILocation(line: 144, column: 58, scope: !2572)
!2587 = !DILocation(line: 146, column: 17, scope: !2572)
!2588 = !DILocation(line: 148, column: 6, scope: !2572)
!2589 = !DILocation(line: 148, column: 62, scope: !2572)
!2590 = !DILocation(line: 148, column: 57, scope: !2572)
!2591 = !DILocation(line: 147, column: 17, scope: !2572)
!2592 = !DILocation(line: 149, column: 18, scope: !2572)
!2593 = !DILocation(line: 149, column: 15, scope: !2572)
!2594 = !DILocation(line: 149, column: 7, scope: !2572)
!2595 = !DILocation(line: 150, column: 12, scope: !2572)
!2596 = !DILocation(line: 150, column: 15, scope: !2572)
!2597 = !DILocation(line: 150, column: 25, scope: !2572)
!2598 = !DILocation(line: 150, column: 7, scope: !2572)
!2599 = !DILocation(line: 151, column: 13, scope: !2572)
!2600 = !DILocation(line: 151, column: 18, scope: !2572)
!2601 = !DILocation(line: 151, column: 23, scope: !2572)
!2602 = !DILocation(line: 151, column: 6, scope: !2572)
!2603 = !DILocation(line: 152, column: 3, scope: !2572)
!2604 = distinct !DISubprogram(name: "set_quoting_flags", scope: !278, file: !278, line: 160, type: !2605, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!63, !2534, !63}
!2607 = !{!2608, !2609, !2610}
!2608 = !DILocalVariable(name: "o", arg: 1, scope: !2604, file: !278, line: 160, type: !2534)
!2609 = !DILocalVariable(name: "i", arg: 2, scope: !2604, file: !278, line: 160, type: !63)
!2610 = !DILocalVariable(name: "r", scope: !2604, file: !278, line: 162, type: !63)
!2611 = !DILocation(line: 160, column: 44, scope: !2604)
!2612 = !DILocation(line: 160, column: 51, scope: !2604)
!2613 = !DILocation(line: 163, column: 8, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2604, file: !278, line: 163, column: 7)
!2615 = !DILocation(line: 163, column: 7, scope: !2604)
!2616 = !DILocation(line: 165, column: 10, scope: !2604)
!2617 = !{!2558, !956, i64 4}
!2618 = !DILocation(line: 162, column: 7, scope: !2604)
!2619 = !DILocation(line: 166, column: 12, scope: !2604)
!2620 = !DILocation(line: 167, column: 3, scope: !2604)
!2621 = distinct !DISubprogram(name: "set_custom_quoting", scope: !278, file: !278, line: 171, type: !2622, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2534, !80, !80}
!2624 = !{!2625, !2626, !2627}
!2625 = !DILocalVariable(name: "o", arg: 1, scope: !2621, file: !278, line: 171, type: !2534)
!2626 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2621, file: !278, line: 172, type: !80)
!2627 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2621, file: !278, line: 172, type: !80)
!2628 = !DILocation(line: 171, column: 45, scope: !2621)
!2629 = !DILocation(line: 172, column: 33, scope: !2621)
!2630 = !DILocation(line: 172, column: 57, scope: !2621)
!2631 = !DILocation(line: 174, column: 8, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2621, file: !278, line: 174, column: 7)
!2633 = !DILocation(line: 174, column: 7, scope: !2621)
!2634 = !DILocation(line: 176, column: 6, scope: !2621)
!2635 = !DILocation(line: 176, column: 12, scope: !2621)
!2636 = !DILocation(line: 177, column: 8, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2621, file: !278, line: 177, column: 7)
!2638 = !DILocation(line: 177, column: 23, scope: !2637)
!2639 = !DILocation(line: 177, column: 19, scope: !2637)
!2640 = !DILocation(line: 178, column: 5, scope: !2637)
!2641 = !DILocation(line: 179, column: 6, scope: !2621)
!2642 = !DILocation(line: 179, column: 17, scope: !2621)
!2643 = !{!2558, !777, i64 40}
!2644 = !DILocation(line: 180, column: 6, scope: !2621)
!2645 = !DILocation(line: 180, column: 18, scope: !2621)
!2646 = !{!2558, !777, i64 48}
!2647 = !DILocation(line: 181, column: 1, scope: !2621)
!2648 = distinct !DISubprogram(name: "quotearg_buffer", scope: !278, file: !278, line: 776, type: !2649, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!61, !58, !61, !80, !61, !2550}
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2652 = !DILocalVariable(name: "buffer", arg: 1, scope: !2648, file: !278, line: 776, type: !58)
!2653 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2648, file: !278, line: 776, type: !61)
!2654 = !DILocalVariable(name: "arg", arg: 3, scope: !2648, file: !278, line: 777, type: !80)
!2655 = !DILocalVariable(name: "argsize", arg: 4, scope: !2648, file: !278, line: 777, type: !61)
!2656 = !DILocalVariable(name: "o", arg: 5, scope: !2648, file: !278, line: 778, type: !2550)
!2657 = !DILocalVariable(name: "p", scope: !2648, file: !278, line: 780, type: !2550)
!2658 = !DILocalVariable(name: "e", scope: !2648, file: !278, line: 781, type: !63)
!2659 = !DILocalVariable(name: "r", scope: !2648, file: !278, line: 782, type: !61)
!2660 = !DILocation(line: 776, column: 24, scope: !2648)
!2661 = !DILocation(line: 776, column: 39, scope: !2648)
!2662 = !DILocation(line: 777, column: 30, scope: !2648)
!2663 = !DILocation(line: 777, column: 42, scope: !2648)
!2664 = !DILocation(line: 778, column: 48, scope: !2648)
!2665 = !DILocation(line: 780, column: 37, scope: !2648)
!2666 = !DILocation(line: 780, column: 33, scope: !2648)
!2667 = !DILocation(line: 781, column: 11, scope: !2648)
!2668 = !DILocation(line: 781, column: 7, scope: !2648)
!2669 = !DILocation(line: 783, column: 43, scope: !2648)
!2670 = !DILocation(line: 783, column: 53, scope: !2648)
!2671 = !DILocation(line: 783, column: 60, scope: !2648)
!2672 = !DILocation(line: 784, column: 43, scope: !2648)
!2673 = !DILocation(line: 784, column: 58, scope: !2648)
!2674 = !DILocation(line: 782, column: 14, scope: !2648)
!2675 = !DILocation(line: 782, column: 10, scope: !2648)
!2676 = !DILocation(line: 785, column: 9, scope: !2648)
!2677 = !DILocation(line: 786, column: 3, scope: !2648)
!2678 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !278, file: !278, line: 248, type: !2679, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2683)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!61, !58, !61, !80, !61, !5, !63, !2681, !80, !80}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!2683 = !{!2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2708, !2709, !2710, !2711, !2712, !2715, !2716, !2734, !2737, !2738, !2745}
!2684 = !DILocalVariable(name: "buffer", arg: 1, scope: !2678, file: !278, line: 248, type: !58)
!2685 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2678, file: !278, line: 248, type: !61)
!2686 = !DILocalVariable(name: "arg", arg: 3, scope: !2678, file: !278, line: 249, type: !80)
!2687 = !DILocalVariable(name: "argsize", arg: 4, scope: !2678, file: !278, line: 249, type: !61)
!2688 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2678, file: !278, line: 250, type: !5)
!2689 = !DILocalVariable(name: "flags", arg: 6, scope: !2678, file: !278, line: 250, type: !63)
!2690 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2678, file: !278, line: 251, type: !2681)
!2691 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2678, file: !278, line: 252, type: !80)
!2692 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2678, file: !278, line: 253, type: !80)
!2693 = !DILocalVariable(name: "i", scope: !2678, file: !278, line: 255, type: !61)
!2694 = !DILocalVariable(name: "len", scope: !2678, file: !278, line: 256, type: !61)
!2695 = !DILocalVariable(name: "orig_buffersize", scope: !2678, file: !278, line: 257, type: !61)
!2696 = !DILocalVariable(name: "quote_string", scope: !2678, file: !278, line: 258, type: !80)
!2697 = !DILocalVariable(name: "quote_string_len", scope: !2678, file: !278, line: 259, type: !61)
!2698 = !DILocalVariable(name: "backslash_escapes", scope: !2678, file: !278, line: 260, type: !70)
!2699 = !DILocalVariable(name: "unibyte_locale", scope: !2678, file: !278, line: 261, type: !70)
!2700 = !DILocalVariable(name: "elide_outer_quotes", scope: !2678, file: !278, line: 262, type: !70)
!2701 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2678, file: !278, line: 263, type: !70)
!2702 = !DILocalVariable(name: "encountered_single_quote", scope: !2678, file: !278, line: 264, type: !70)
!2703 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2678, file: !278, line: 265, type: !70)
!2704 = !DILocalVariable(name: "c", scope: !2705, file: !278, line: 394, type: !65)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !278, line: 393, column: 5)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !278, line: 392, column: 3)
!2707 = distinct !DILexicalBlock(scope: !2678, file: !278, line: 392, column: 3)
!2708 = !DILocalVariable(name: "esc", scope: !2705, file: !278, line: 395, type: !65)
!2709 = !DILocalVariable(name: "is_right_quote", scope: !2705, file: !278, line: 396, type: !70)
!2710 = !DILocalVariable(name: "escaping", scope: !2705, file: !278, line: 397, type: !70)
!2711 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2705, file: !278, line: 398, type: !70)
!2712 = !DILocalVariable(name: "m", scope: !2713, file: !278, line: 602, type: !61)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 600, column: 11)
!2714 = distinct !DILexicalBlock(scope: !2705, file: !278, line: 418, column: 9)
!2715 = !DILocalVariable(name: "printable", scope: !2713, file: !278, line: 604, type: !70)
!2716 = !DILocalVariable(name: "mbstate", scope: !2717, file: !278, line: 613, type: !2719)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !278, line: 612, column: 15)
!2718 = distinct !DILexicalBlock(scope: !2713, file: !278, line: 606, column: 17)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2720, line: 6, baseType: !2721)
!2720 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2722, line: 21, baseType: !2723)
!2722 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2722, line: 13, size: 64, elements: !2724)
!2724 = !{!2725, !2726}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2723, file: !2722, line: 15, baseType: !63, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2723, file: !2722, line: 20, baseType: !2727, size: 32, offset: 32)
!2727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2723, file: !2722, line: 16, size: 32, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2727, file: !2722, line: 18, baseType: !291, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2727, file: !2722, line: 19, baseType: !2731, size: 32)
!2731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !2732)
!2732 = !{!2733}
!2733 = !DISubrange(count: 4)
!2734 = !DILocalVariable(name: "w", scope: !2735, file: !278, line: 623, type: !2736)
!2735 = distinct !DILexicalBlock(scope: !2717, file: !278, line: 622, column: 19)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !62, line: 90, baseType: !63)
!2737 = !DILocalVariable(name: "bytes", scope: !2735, file: !278, line: 624, type: !61)
!2738 = !DILocalVariable(name: "j", scope: !2739, file: !278, line: 649, type: !61)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !278, line: 648, column: 27)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !278, line: 646, column: 29)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !278, line: 641, column: 23)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !278, line: 633, column: 30)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !278, line: 628, column: 30)
!2744 = distinct !DILexicalBlock(scope: !2735, file: !278, line: 626, column: 25)
!2745 = !DILocalVariable(name: "ilim", scope: !2746, file: !278, line: 676, type: !61)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !278, line: 673, column: 15)
!2747 = distinct !DILexicalBlock(scope: !2713, file: !278, line: 672, column: 17)
!2748 = !DILocation(line: 248, column: 33, scope: !2678)
!2749 = !DILocation(line: 248, column: 48, scope: !2678)
!2750 = !DILocation(line: 249, column: 39, scope: !2678)
!2751 = !DILocation(line: 249, column: 51, scope: !2678)
!2752 = !DILocation(line: 250, column: 46, scope: !2678)
!2753 = !DILocation(line: 250, column: 65, scope: !2678)
!2754 = !DILocation(line: 251, column: 47, scope: !2678)
!2755 = !DILocation(line: 252, column: 39, scope: !2678)
!2756 = !DILocation(line: 253, column: 39, scope: !2678)
!2757 = !DILocation(line: 256, column: 10, scope: !2678)
!2758 = !DILocation(line: 257, column: 10, scope: !2678)
!2759 = !DILocation(line: 258, column: 15, scope: !2678)
!2760 = !DILocation(line: 259, column: 10, scope: !2678)
!2761 = !DILocation(line: 260, column: 8, scope: !2678)
!2762 = !DILocation(line: 261, column: 25, scope: !2678)
!2763 = !DILocation(line: 261, column: 36, scope: !2678)
!2764 = !DILocation(line: 262, column: 8, scope: !2678)
!2765 = !DILocation(line: 263, column: 8, scope: !2678)
!2766 = !DILocation(line: 264, column: 8, scope: !2678)
!2767 = !DILocation(line: 265, column: 8, scope: !2678)
!2768 = !DILocation(line: 265, column: 3, scope: !2678)
!2769 = !DILocation(line: 308, column: 3, scope: !2678)
!2770 = !DILocation(line: 315, column: 11, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2678, file: !278, line: 309, column: 5)
!2772 = !DILocation(line: 315, column: 12, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2771, file: !278, line: 315, column: 11)
!2774 = !DILocation(line: 316, column: 9, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !278, line: 316, column: 9)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !278, line: 316, column: 9)
!2777 = !DILocation(line: 316, column: 9, scope: !2776)
!2778 = !DILocation(line: 354, column: 26, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !278, line: 332, column: 11)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !278, line: 331, column: 13)
!2781 = distinct !DILexicalBlock(scope: !2771, file: !278, line: 330, column: 7)
!2782 = !DILocation(line: 355, column: 27, scope: !2779)
!2783 = !DILocation(line: 356, column: 11, scope: !2779)
!2784 = !DILocation(line: 357, column: 14, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !278, line: 357, column: 13)
!2786 = !DILocation(line: 357, column: 13, scope: !2781)
!2787 = !DILocation(line: 358, column: 43, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !278, line: 358, column: 11)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !278, line: 358, column: 11)
!2790 = !DILocation(line: 358, column: 11, scope: !2789)
!2791 = !DILocation(line: 359, column: 13, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !278, line: 359, column: 13)
!2793 = distinct !DILexicalBlock(scope: !2788, file: !278, line: 359, column: 13)
!2794 = !DILocation(line: 359, column: 13, scope: !2793)
!2795 = !DILocation(line: 358, column: 70, scope: !2788)
!2796 = distinct !{!2796, !2790, !2797}
!2797 = !DILocation(line: 359, column: 13, scope: !2789)
!2798 = !DILocation(line: 362, column: 28, scope: !2781)
!2799 = !DILocation(line: 364, column: 7, scope: !2771)
!2800 = !DILocation(line: 367, column: 7, scope: !2771)
!2801 = !DILocation(line: 370, column: 7, scope: !2771)
!2802 = !DILocation(line: 373, column: 12, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2771, file: !278, line: 373, column: 11)
!2804 = !DILocation(line: 373, column: 11, scope: !2771)
!2805 = !DILocation(line: 378, column: 12, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2771, file: !278, line: 378, column: 11)
!2807 = !DILocation(line: 378, column: 11, scope: !2771)
!2808 = !DILocation(line: 379, column: 9, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !278, line: 379, column: 9)
!2810 = distinct !DILexicalBlock(scope: !2806, file: !278, line: 379, column: 9)
!2811 = !DILocation(line: 379, column: 9, scope: !2810)
!2812 = !DILocation(line: 386, column: 7, scope: !2771)
!2813 = !DILocation(line: 389, column: 7, scope: !2771)
!2814 = !DILocation(line: 255, column: 10, scope: !2678)
!2815 = !DILocation(line: 392, column: 8, scope: !2707)
!2816 = !DILocation(line: 392, column: 27, scope: !2706)
!2817 = !DILocation(line: 392, column: 19, scope: !2706)
!2818 = !DILocation(line: 392, column: 60, scope: !2706)
!2819 = !DILocation(line: 392, column: 3, scope: !2707)
!2820 = !DILocation(line: 392, column: 41, scope: !2706)
!2821 = !DILocation(line: 392, column: 48, scope: !2706)
!2822 = !DILocation(line: 396, column: 12, scope: !2705)
!2823 = !DILocation(line: 397, column: 12, scope: !2705)
!2824 = !DILocation(line: 398, column: 12, scope: !2705)
!2825 = !DILocation(line: 401, column: 11, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2705, file: !278, line: 400, column: 11)
!2827 = !DILocation(line: 403, column: 17, scope: !2826)
!2828 = !DILocation(line: 404, column: 39, scope: !2826)
!2829 = !DILocation(line: 408, column: 32, scope: !2826)
!2830 = !DILocation(line: 404, column: 19, scope: !2826)
!2831 = !DILocation(line: 404, column: 15, scope: !2826)
!2832 = !DILocation(line: 409, column: 11, scope: !2826)
!2833 = !DILocation(line: 409, column: 26, scope: !2826)
!2834 = !DILocation(line: 409, column: 14, scope: !2826)
!2835 = !DILocation(line: 409, column: 63, scope: !2826)
!2836 = !DILocation(line: 400, column: 11, scope: !2705)
!2837 = !DILocation(line: 416, column: 11, scope: !2705)
!2838 = !DILocation(line: 394, column: 21, scope: !2705)
!2839 = !DILocation(line: 417, column: 7, scope: !2705)
!2840 = !DILocation(line: 420, column: 15, scope: !2714)
!2841 = !DILocation(line: 422, column: 15, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !278, line: 422, column: 15)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !278, line: 421, column: 13)
!2844 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 420, column: 15)
!2845 = !DILocation(line: 422, column: 15, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !278, line: 422, column: 15)
!2847 = !DILocation(line: 422, column: 15, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !278, line: 422, column: 15)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !278, line: 422, column: 15)
!2850 = distinct !DILexicalBlock(scope: !2846, file: !278, line: 422, column: 15)
!2851 = !DILocation(line: 422, column: 15, scope: !2849)
!2852 = !DILocation(line: 422, column: 15, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !278, line: 422, column: 15)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !278, line: 422, column: 15)
!2855 = !DILocation(line: 422, column: 15, scope: !2854)
!2856 = !DILocation(line: 422, column: 15, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !278, line: 422, column: 15)
!2858 = distinct !DILexicalBlock(scope: !2850, file: !278, line: 422, column: 15)
!2859 = !DILocation(line: 422, column: 15, scope: !2858)
!2860 = !DILocation(line: 422, column: 15, scope: !2850)
!2861 = !DILocation(line: 422, column: 15, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !278, line: 422, column: 15)
!2863 = distinct !DILexicalBlock(scope: !2842, file: !278, line: 422, column: 15)
!2864 = !DILocation(line: 422, column: 15, scope: !2863)
!2865 = !DILocation(line: 430, column: 19, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2843, file: !278, line: 429, column: 19)
!2867 = !DILocation(line: 430, column: 24, scope: !2866)
!2868 = !DILocation(line: 430, column: 28, scope: !2866)
!2869 = !DILocation(line: 430, column: 38, scope: !2866)
!2870 = !DILocation(line: 430, column: 48, scope: !2866)
!2871 = !DILocation(line: 430, column: 59, scope: !2866)
!2872 = !DILocation(line: 432, column: 19, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !278, line: 432, column: 19)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !278, line: 432, column: 19)
!2875 = distinct !DILexicalBlock(scope: !2866, file: !278, line: 431, column: 17)
!2876 = !DILocation(line: 432, column: 19, scope: !2874)
!2877 = !DILocation(line: 433, column: 19, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !278, line: 433, column: 19)
!2879 = distinct !DILexicalBlock(scope: !2875, file: !278, line: 433, column: 19)
!2880 = !DILocation(line: 433, column: 19, scope: !2879)
!2881 = !DILocation(line: 434, column: 17, scope: !2875)
!2882 = !DILocation(line: 441, column: 20, scope: !2844)
!2883 = !DILocation(line: 446, column: 11, scope: !2714)
!2884 = !DILocation(line: 449, column: 19, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 447, column: 13)
!2886 = !DILocation(line: 455, column: 19, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2885, file: !278, line: 454, column: 19)
!2888 = !DILocation(line: 455, column: 24, scope: !2887)
!2889 = !DILocation(line: 455, column: 28, scope: !2887)
!2890 = !DILocation(line: 455, column: 38, scope: !2887)
!2891 = !DILocation(line: 455, column: 47, scope: !2887)
!2892 = !DILocation(line: 455, column: 41, scope: !2887)
!2893 = !DILocation(line: 455, column: 52, scope: !2887)
!2894 = !DILocation(line: 454, column: 19, scope: !2885)
!2895 = !DILocation(line: 456, column: 25, scope: !2887)
!2896 = !DILocation(line: 456, column: 17, scope: !2887)
!2897 = !DILocation(line: 463, column: 25, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2887, file: !278, line: 457, column: 19)
!2899 = !DILocation(line: 467, column: 21, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !278, line: 467, column: 21)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !278, line: 467, column: 21)
!2902 = !DILocation(line: 467, column: 21, scope: !2901)
!2903 = !DILocation(line: 468, column: 21, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !278, line: 468, column: 21)
!2905 = distinct !DILexicalBlock(scope: !2898, file: !278, line: 468, column: 21)
!2906 = !DILocation(line: 468, column: 21, scope: !2905)
!2907 = !DILocation(line: 469, column: 21, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !278, line: 469, column: 21)
!2909 = distinct !DILexicalBlock(scope: !2898, file: !278, line: 469, column: 21)
!2910 = !DILocation(line: 469, column: 21, scope: !2909)
!2911 = !DILocation(line: 470, column: 21, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !278, line: 470, column: 21)
!2913 = distinct !DILexicalBlock(scope: !2898, file: !278, line: 470, column: 21)
!2914 = !DILocation(line: 470, column: 21, scope: !2913)
!2915 = !DILocation(line: 471, column: 21, scope: !2898)
!2916 = !DILocation(line: 395, column: 21, scope: !2705)
!2917 = !DILocation(line: 484, column: 31, scope: !2714)
!2918 = !DILocation(line: 485, column: 31, scope: !2714)
!2919 = !DILocation(line: 487, column: 31, scope: !2714)
!2920 = !DILocation(line: 488, column: 31, scope: !2714)
!2921 = !DILocation(line: 489, column: 31, scope: !2714)
!2922 = !DILocation(line: 492, column: 15, scope: !2714)
!2923 = !DILocation(line: 494, column: 19, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !278, line: 493, column: 13)
!2925 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 492, column: 15)
!2926 = !DILocation(line: 501, column: 33, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 501, column: 15)
!2928 = !DILocation(line: 506, column: 15, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 505, column: 15)
!2930 = !DILocation(line: 510, column: 15, scope: !2714)
!2931 = !DILocation(line: 518, column: 26, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 518, column: 15)
!2933 = !DILocation(line: 518, column: 15, scope: !2714)
!2934 = !DILocation(line: 518, column: 40, scope: !2932)
!2935 = !DILocation(line: 518, column: 47, scope: !2932)
!2936 = !DILocation(line: 522, column: 17, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 522, column: 15)
!2938 = !DILocation(line: 518, column: 18, scope: !2932)
!2939 = !DILocation(line: 518, column: 65, scope: !2932)
!2940 = !DILocation(line: 522, column: 15, scope: !2714)
!2941 = !DILocation(line: 526, column: 11, scope: !2714)
!2942 = !DILocation(line: 541, column: 15, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 540, column: 15)
!2944 = !DILocation(line: 548, column: 15, scope: !2714)
!2945 = !DILocation(line: 550, column: 19, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !278, line: 549, column: 13)
!2947 = distinct !DILexicalBlock(scope: !2714, file: !278, line: 548, column: 15)
!2948 = !DILocation(line: 553, column: 19, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !278, line: 553, column: 19)
!2950 = !DILocation(line: 553, column: 35, scope: !2949)
!2951 = !DILocation(line: 553, column: 30, scope: !2949)
!2952 = !DILocation(line: 562, column: 15, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !278, line: 562, column: 15)
!2954 = distinct !DILexicalBlock(scope: !2946, file: !278, line: 562, column: 15)
!2955 = !DILocation(line: 562, column: 15, scope: !2954)
!2956 = !DILocation(line: 563, column: 15, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !278, line: 563, column: 15)
!2958 = distinct !DILexicalBlock(scope: !2946, file: !278, line: 563, column: 15)
!2959 = !DILocation(line: 563, column: 15, scope: !2958)
!2960 = !DILocation(line: 564, column: 15, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !278, line: 564, column: 15)
!2962 = distinct !DILexicalBlock(scope: !2946, file: !278, line: 564, column: 15)
!2963 = !DILocation(line: 564, column: 15, scope: !2962)
!2964 = !DILocation(line: 566, column: 13, scope: !2946)
!2965 = !DILocation(line: 606, column: 17, scope: !2713)
!2966 = !DILocation(line: 602, column: 20, scope: !2713)
!2967 = !DILocation(line: 609, column: 29, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2718, file: !278, line: 607, column: 15)
!2969 = !DILocation(line: 609, column: 27, scope: !2968)
!2970 = !DILocation(line: 604, column: 18, scope: !2713)
!2971 = !DILocation(line: 610, column: 15, scope: !2968)
!2972 = !DILocation(line: 613, column: 17, scope: !2717)
!2973 = !DILocation(line: 614, column: 17, scope: !2717)
!2974 = !DILocation(line: 618, column: 29, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2717, file: !278, line: 618, column: 21)
!2976 = !DILocation(line: 618, column: 21, scope: !2717)
!2977 = !DILocation(line: 619, column: 29, scope: !2975)
!2978 = !DILocation(line: 619, column: 19, scope: !2975)
!2979 = !DILocation(line: 621, column: 17, scope: !2717)
!2980 = distinct !{!2980, !2979, !2981}
!2981 = !DILocation(line: 667, column: 44, scope: !2717)
!2982 = !DILocation(line: 623, column: 21, scope: !2735)
!2983 = !DILocation(line: 624, column: 56, scope: !2735)
!2984 = !DILocation(line: 624, column: 50, scope: !2735)
!2985 = !DILocation(line: 625, column: 53, scope: !2735)
!2986 = !DILocation(line: 613, column: 27, scope: !2717)
!2987 = !DILocation(line: 623, column: 29, scope: !2735)
!2988 = !DILocation(line: 624, column: 36, scope: !2735)
!2989 = !DILocation(line: 624, column: 28, scope: !2735)
!2990 = !DILocation(line: 626, column: 25, scope: !2735)
!2991 = !DILocation(line: 636, column: 38, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2742, file: !278, line: 634, column: 23)
!2993 = !DILocation(line: 636, column: 48, scope: !2992)
!2994 = !DILocation(line: 636, column: 51, scope: !2992)
!2995 = !DILocation(line: 636, column: 25, scope: !2992)
!2996 = !DILocation(line: 637, column: 28, scope: !2992)
!2997 = !DILocation(line: 636, column: 34, scope: !2992)
!2998 = distinct !{!2998, !2995, !2996}
!2999 = !DILocation(line: 650, column: 43, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !278, line: 650, column: 29)
!3001 = distinct !DILexicalBlock(scope: !2739, file: !278, line: 650, column: 29)
!3002 = !DILocation(line: 647, column: 29, scope: !2740)
!3003 = !DILocation(line: 649, column: 36, scope: !2739)
!3004 = !DILocation(line: 651, column: 49, scope: !3000)
!3005 = !DILocation(line: 651, column: 39, scope: !3000)
!3006 = !DILocation(line: 651, column: 31, scope: !3000)
!3007 = !DILocation(line: 650, column: 53, scope: !3000)
!3008 = !DILocation(line: 650, column: 29, scope: !3001)
!3009 = distinct !{!3009, !3008, !3010}
!3010 = !DILocation(line: 659, column: 33, scope: !3001)
!3011 = !DILocation(line: 666, column: 19, scope: !2717)
!3012 = !DILocation(line: 662, column: 41, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2741, file: !278, line: 662, column: 29)
!3014 = !DILocation(line: 662, column: 31, scope: !3013)
!3015 = !DILocation(line: 662, column: 29, scope: !2741)
!3016 = !DILocation(line: 664, column: 27, scope: !2741)
!3017 = !DILocation(line: 667, column: 26, scope: !2717)
!3018 = !DILocation(line: 667, column: 24, scope: !2717)
!3019 = !DILocation(line: 666, column: 19, scope: !2735)
!3020 = !DILocation(line: 668, column: 15, scope: !2718)
!3021 = !DILocation(line: 670, column: 40, scope: !2713)
!3022 = !DILocation(line: 672, column: 19, scope: !2747)
!3023 = !DILocation(line: 672, column: 45, scope: !2747)
!3024 = !DILocation(line: 672, column: 23, scope: !2747)
!3025 = !DILocation(line: 676, column: 33, scope: !2746)
!3026 = !DILocation(line: 676, column: 24, scope: !2746)
!3027 = !DILocation(line: 678, column: 17, scope: !2746)
!3028 = !DILocation(line: 680, column: 43, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !278, line: 680, column: 25)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !278, line: 679, column: 19)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !278, line: 678, column: 17)
!3032 = distinct !DILexicalBlock(scope: !2746, file: !278, line: 678, column: 17)
!3033 = !DILocation(line: 682, column: 25, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !278, line: 682, column: 25)
!3035 = distinct !DILexicalBlock(scope: !3029, file: !278, line: 681, column: 23)
!3036 = !DILocation(line: 682, column: 25, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3034, file: !278, line: 682, column: 25)
!3038 = !DILocation(line: 682, column: 25, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !278, line: 682, column: 25)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !278, line: 682, column: 25)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !278, line: 682, column: 25)
!3042 = !DILocation(line: 682, column: 25, scope: !3040)
!3043 = !DILocation(line: 682, column: 25, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !278, line: 682, column: 25)
!3045 = distinct !DILexicalBlock(scope: !3041, file: !278, line: 682, column: 25)
!3046 = !DILocation(line: 682, column: 25, scope: !3045)
!3047 = !DILocation(line: 682, column: 25, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !278, line: 682, column: 25)
!3049 = distinct !DILexicalBlock(scope: !3041, file: !278, line: 682, column: 25)
!3050 = !DILocation(line: 682, column: 25, scope: !3049)
!3051 = !DILocation(line: 682, column: 25, scope: !3041)
!3052 = !DILocation(line: 682, column: 25, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !278, line: 682, column: 25)
!3054 = distinct !DILexicalBlock(scope: !3034, file: !278, line: 682, column: 25)
!3055 = !DILocation(line: 682, column: 25, scope: !3054)
!3056 = !DILocation(line: 683, column: 25, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !278, line: 683, column: 25)
!3058 = distinct !DILexicalBlock(scope: !3035, file: !278, line: 683, column: 25)
!3059 = !DILocation(line: 683, column: 25, scope: !3058)
!3060 = !DILocation(line: 684, column: 25, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !278, line: 684, column: 25)
!3062 = distinct !DILexicalBlock(scope: !3035, file: !278, line: 684, column: 25)
!3063 = !DILocation(line: 684, column: 25, scope: !3062)
!3064 = !DILocation(line: 685, column: 38, scope: !3035)
!3065 = !DILocation(line: 685, column: 33, scope: !3035)
!3066 = !DILocation(line: 686, column: 23, scope: !3035)
!3067 = !DILocation(line: 687, column: 30, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3029, file: !278, line: 687, column: 30)
!3069 = !DILocation(line: 687, column: 30, scope: !3029)
!3070 = !DILocation(line: 689, column: 25, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !278, line: 689, column: 25)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !278, line: 689, column: 25)
!3073 = distinct !DILexicalBlock(scope: !3068, file: !278, line: 688, column: 23)
!3074 = !DILocation(line: 689, column: 25, scope: !3072)
!3075 = !DILocation(line: 691, column: 23, scope: !3073)
!3076 = !DILocation(line: 692, column: 35, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3030, file: !278, line: 692, column: 25)
!3078 = !DILocation(line: 692, column: 30, scope: !3077)
!3079 = !DILocation(line: 692, column: 25, scope: !3030)
!3080 = !DILocation(line: 694, column: 21, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !278, line: 694, column: 21)
!3082 = distinct !DILexicalBlock(scope: !3030, file: !278, line: 694, column: 21)
!3083 = !DILocation(line: 694, column: 21, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !278, line: 694, column: 21)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !278, line: 694, column: 21)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !278, line: 694, column: 21)
!3087 = !DILocation(line: 694, column: 21, scope: !3085)
!3088 = !DILocation(line: 694, column: 21, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !278, line: 694, column: 21)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !278, line: 694, column: 21)
!3091 = !DILocation(line: 694, column: 21, scope: !3090)
!3092 = !DILocation(line: 694, column: 21, scope: !3086)
!3093 = !DILocation(line: 695, column: 21, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !278, line: 695, column: 21)
!3095 = distinct !DILexicalBlock(scope: !3030, file: !278, line: 695, column: 21)
!3096 = !DILocation(line: 695, column: 21, scope: !3095)
!3097 = !DILocation(line: 696, column: 25, scope: !3030)
!3098 = !DILocation(line: 678, column: 17, scope: !3031)
!3099 = distinct !{!3099, !3100, !3101}
!3100 = !DILocation(line: 678, column: 17, scope: !3032)
!3101 = !DILocation(line: 697, column: 19, scope: !3032)
!3102 = !DILocation(line: 704, column: 34, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !2705, file: !278, line: 704, column: 11)
!3104 = !DILocation(line: 706, column: 14, scope: !3103)
!3105 = !DILocation(line: 707, column: 14, scope: !3103)
!3106 = !DILocation(line: 707, column: 35, scope: !3103)
!3107 = !DILocation(line: 707, column: 17, scope: !3103)
!3108 = !DILocation(line: 707, column: 53, scope: !3103)
!3109 = !DILocation(line: 707, column: 47, scope: !3103)
!3110 = !DILocation(line: 707, column: 65, scope: !3103)
!3111 = !DILocation(line: 708, column: 15, scope: !3103)
!3112 = !DILocation(line: 708, column: 11, scope: !3103)
!3113 = !DILocation(line: 704, column: 11, scope: !2705)
!3114 = !DILocation(line: 712, column: 7, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !2705, file: !278, line: 712, column: 7)
!3116 = !DILocation(line: 712, column: 7, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3115, file: !278, line: 712, column: 7)
!3118 = !DILocation(line: 712, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !278, line: 712, column: 7)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !278, line: 712, column: 7)
!3121 = distinct !DILexicalBlock(scope: !3117, file: !278, line: 712, column: 7)
!3122 = !DILocation(line: 712, column: 7, scope: !3120)
!3123 = !DILocation(line: 712, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !278, line: 712, column: 7)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !278, line: 712, column: 7)
!3126 = !DILocation(line: 712, column: 7, scope: !3125)
!3127 = !DILocation(line: 712, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !278, line: 712, column: 7)
!3129 = distinct !DILexicalBlock(scope: !3121, file: !278, line: 712, column: 7)
!3130 = !DILocation(line: 712, column: 7, scope: !3129)
!3131 = !DILocation(line: 712, column: 7, scope: !3121)
!3132 = !DILocation(line: 712, column: 7, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !278, line: 712, column: 7)
!3134 = distinct !DILexicalBlock(scope: !3115, file: !278, line: 712, column: 7)
!3135 = !DILocation(line: 712, column: 7, scope: !3134)
!3136 = !DILocation(line: 715, column: 7, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !278, line: 715, column: 7)
!3138 = distinct !DILexicalBlock(scope: !2705, file: !278, line: 715, column: 7)
!3139 = !DILocation(line: 715, column: 7, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !278, line: 715, column: 7)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !278, line: 715, column: 7)
!3142 = distinct !DILexicalBlock(scope: !3137, file: !278, line: 715, column: 7)
!3143 = !DILocation(line: 715, column: 7, scope: !3141)
!3144 = !DILocation(line: 715, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !278, line: 715, column: 7)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !278, line: 715, column: 7)
!3147 = !DILocation(line: 715, column: 7, scope: !3146)
!3148 = !DILocation(line: 715, column: 7, scope: !3142)
!3149 = !DILocation(line: 716, column: 7, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !278, line: 716, column: 7)
!3151 = distinct !DILexicalBlock(scope: !2705, file: !278, line: 716, column: 7)
!3152 = !DILocation(line: 716, column: 7, scope: !3151)
!3153 = !DILocation(line: 718, column: 13, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !2705, file: !278, line: 718, column: 11)
!3155 = !DILocation(line: 718, column: 11, scope: !2705)
!3156 = !DILocation(line: 720, column: 5, scope: !2706)
!3157 = !DILocation(line: 392, column: 75, scope: !2706)
!3158 = !DILocation(line: 392, column: 3, scope: !2706)
!3159 = distinct !{!3159, !2819, !3160}
!3160 = !DILocation(line: 720, column: 5, scope: !2707)
!3161 = !DILocation(line: 722, column: 11, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !2678, file: !278, line: 722, column: 7)
!3163 = !DILocation(line: 722, column: 16, scope: !3162)
!3164 = !DILocation(line: 730, column: 51, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !2678, file: !278, line: 730, column: 7)
!3166 = !DILocation(line: 731, column: 10, scope: !3165)
!3167 = !DILocation(line: 733, column: 11, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !278, line: 733, column: 11)
!3169 = distinct !DILexicalBlock(scope: !3165, file: !278, line: 732, column: 5)
!3170 = !DILocation(line: 733, column: 11, scope: !3169)
!3171 = !DILocation(line: 734, column: 16, scope: !3168)
!3172 = !DILocation(line: 734, column: 9, scope: !3168)
!3173 = !DILocation(line: 738, column: 18, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3168, file: !278, line: 738, column: 16)
!3175 = !DILocation(line: 738, column: 32, scope: !3174)
!3176 = !DILocation(line: 738, column: 29, scope: !3174)
!3177 = !DILocation(line: 747, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !2678, file: !278, line: 747, column: 7)
!3179 = !DILocation(line: 747, column: 20, scope: !3178)
!3180 = !DILocation(line: 748, column: 12, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !278, line: 748, column: 5)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !278, line: 748, column: 5)
!3183 = !DILocation(line: 748, column: 5, scope: !3182)
!3184 = !DILocation(line: 749, column: 7, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !278, line: 749, column: 7)
!3186 = distinct !DILexicalBlock(scope: !3181, file: !278, line: 749, column: 7)
!3187 = !DILocation(line: 749, column: 7, scope: !3186)
!3188 = !DILocation(line: 748, column: 39, scope: !3181)
!3189 = distinct !{!3189, !3183, !3190}
!3190 = !DILocation(line: 749, column: 7, scope: !3182)
!3191 = !DILocation(line: 751, column: 11, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !2678, file: !278, line: 751, column: 7)
!3193 = !DILocation(line: 751, column: 7, scope: !2678)
!3194 = !DILocation(line: 752, column: 5, scope: !3192)
!3195 = !DILocation(line: 752, column: 17, scope: !3192)
!3196 = !DILocation(line: 758, column: 21, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !2678, file: !278, line: 758, column: 7)
!3198 = !DILocation(line: 758, column: 54, scope: !3197)
!3199 = !DILocation(line: 758, column: 51, scope: !3197)
!3200 = !DILocation(line: 762, column: 42, scope: !2678)
!3201 = !DILocation(line: 760, column: 10, scope: !2678)
!3202 = !DILocation(line: 760, column: 3, scope: !2678)
!3203 = !DILocation(line: 764, column: 1, scope: !2678)
!3204 = distinct !DISubprogram(name: "gettext_quote", scope: !278, file: !278, line: 199, type: !3205, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!80, !80, !5}
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DILocalVariable(name: "msgid", arg: 1, scope: !3204, file: !278, line: 199, type: !80)
!3209 = !DILocalVariable(name: "s", arg: 2, scope: !3204, file: !278, line: 199, type: !5)
!3210 = !DILocalVariable(name: "translation", scope: !3204, file: !278, line: 201, type: !80)
!3211 = !DILocalVariable(name: "locale_code", scope: !3204, file: !278, line: 202, type: !80)
!3212 = !DILocation(line: 199, column: 28, scope: !3204)
!3213 = !DILocation(line: 199, column: 54, scope: !3204)
!3214 = !DILocation(line: 201, column: 29, scope: !3204)
!3215 = !DILocation(line: 201, column: 15, scope: !3204)
!3216 = !DILocation(line: 204, column: 19, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3204, file: !278, line: 204, column: 7)
!3218 = !DILocation(line: 204, column: 7, scope: !3204)
!3219 = !DILocation(line: 225, column: 17, scope: !3204)
!3220 = !DILocation(line: 202, column: 15, scope: !3204)
!3221 = !DILocalVariable(name: "s2", arg: 2, scope: !3222, file: !3223, line: 160, type: !80)
!3222 = distinct !DISubprogram(name: "strcaseeq0", scope: !3223, file: !3223, line: 160, type: !3224, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3226)
!3223 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!63, !80, !80, !59, !59, !59, !59, !59, !59, !59, !59, !59}
!3226 = !{!3227, !3221, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236}
!3227 = !DILocalVariable(name: "s1", arg: 1, scope: !3222, file: !3223, line: 160, type: !80)
!3228 = !DILocalVariable(name: "s20", arg: 3, scope: !3222, file: !3223, line: 160, type: !59)
!3229 = !DILocalVariable(name: "s21", arg: 4, scope: !3222, file: !3223, line: 160, type: !59)
!3230 = !DILocalVariable(name: "s22", arg: 5, scope: !3222, file: !3223, line: 160, type: !59)
!3231 = !DILocalVariable(name: "s23", arg: 6, scope: !3222, file: !3223, line: 160, type: !59)
!3232 = !DILocalVariable(name: "s24", arg: 7, scope: !3222, file: !3223, line: 160, type: !59)
!3233 = !DILocalVariable(name: "s25", arg: 8, scope: !3222, file: !3223, line: 160, type: !59)
!3234 = !DILocalVariable(name: "s26", arg: 9, scope: !3222, file: !3223, line: 160, type: !59)
!3235 = !DILocalVariable(name: "s27", arg: 10, scope: !3222, file: !3223, line: 160, type: !59)
!3236 = !DILocalVariable(name: "s28", arg: 11, scope: !3222, file: !3223, line: 160, type: !59)
!3237 = !DILocation(line: 160, column: 41, scope: !3222, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 226, column: 7, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3204, file: !278, line: 226, column: 7)
!3240 = !DILocation(line: 160, column: 120, scope: !3222, inlinedAt: !3238)
!3241 = !DILocation(line: 160, column: 130, scope: !3222, inlinedAt: !3238)
!3242 = !DILocation(line: 162, column: 7, scope: !3243, inlinedAt: !3238)
!3243 = distinct !DILexicalBlock(scope: !3222, file: !3223, line: 162, column: 7)
!3244 = !DILocalVariable(name: "s2", arg: 2, scope: !3245, file: !3223, line: 146, type: !80)
!3245 = distinct !DISubprogram(name: "strcaseeq1", scope: !3223, file: !3223, line: 146, type: !3246, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!63, !80, !80, !59, !59, !59, !59, !59, !59, !59, !59}
!3248 = !{!3249, !3244, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257}
!3249 = !DILocalVariable(name: "s1", arg: 1, scope: !3245, file: !3223, line: 146, type: !80)
!3250 = !DILocalVariable(name: "s21", arg: 3, scope: !3245, file: !3223, line: 146, type: !59)
!3251 = !DILocalVariable(name: "s22", arg: 4, scope: !3245, file: !3223, line: 146, type: !59)
!3252 = !DILocalVariable(name: "s23", arg: 5, scope: !3245, file: !3223, line: 146, type: !59)
!3253 = !DILocalVariable(name: "s24", arg: 6, scope: !3245, file: !3223, line: 146, type: !59)
!3254 = !DILocalVariable(name: "s25", arg: 7, scope: !3245, file: !3223, line: 146, type: !59)
!3255 = !DILocalVariable(name: "s26", arg: 8, scope: !3245, file: !3223, line: 146, type: !59)
!3256 = !DILocalVariable(name: "s27", arg: 9, scope: !3245, file: !3223, line: 146, type: !59)
!3257 = !DILocalVariable(name: "s28", arg: 10, scope: !3245, file: !3223, line: 146, type: !59)
!3258 = !DILocation(line: 146, column: 41, scope: !3245, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 167, column: 16, scope: !3260, inlinedAt: !3238)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3223, line: 164, column: 11)
!3261 = distinct !DILexicalBlock(scope: !3243, file: !3223, line: 163, column: 5)
!3262 = !DILocation(line: 146, column: 110, scope: !3245, inlinedAt: !3259)
!3263 = !DILocation(line: 146, column: 120, scope: !3245, inlinedAt: !3259)
!3264 = !DILocation(line: 148, column: 7, scope: !3265, inlinedAt: !3259)
!3265 = distinct !DILexicalBlock(scope: !3245, file: !3223, line: 148, column: 7)
!3266 = !DILocalVariable(name: "s2", arg: 2, scope: !3267, file: !3223, line: 132, type: !80)
!3267 = distinct !DISubprogram(name: "strcaseeq2", scope: !3223, file: !3223, line: 132, type: !3268, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!63, !80, !80, !59, !59, !59, !59, !59, !59, !59}
!3270 = !{!3271, !3266, !3272, !3273, !3274, !3275, !3276, !3277, !3278}
!3271 = !DILocalVariable(name: "s1", arg: 1, scope: !3267, file: !3223, line: 132, type: !80)
!3272 = !DILocalVariable(name: "s22", arg: 3, scope: !3267, file: !3223, line: 132, type: !59)
!3273 = !DILocalVariable(name: "s23", arg: 4, scope: !3267, file: !3223, line: 132, type: !59)
!3274 = !DILocalVariable(name: "s24", arg: 5, scope: !3267, file: !3223, line: 132, type: !59)
!3275 = !DILocalVariable(name: "s25", arg: 6, scope: !3267, file: !3223, line: 132, type: !59)
!3276 = !DILocalVariable(name: "s26", arg: 7, scope: !3267, file: !3223, line: 132, type: !59)
!3277 = !DILocalVariable(name: "s27", arg: 8, scope: !3267, file: !3223, line: 132, type: !59)
!3278 = !DILocalVariable(name: "s28", arg: 9, scope: !3267, file: !3223, line: 132, type: !59)
!3279 = !DILocation(line: 132, column: 41, scope: !3267, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 153, column: 16, scope: !3281, inlinedAt: !3259)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !3223, line: 150, column: 11)
!3282 = distinct !DILexicalBlock(scope: !3265, file: !3223, line: 149, column: 5)
!3283 = !DILocation(line: 132, column: 100, scope: !3267, inlinedAt: !3280)
!3284 = !DILocation(line: 132, column: 110, scope: !3267, inlinedAt: !3280)
!3285 = !DILocation(line: 134, column: 7, scope: !3286, inlinedAt: !3280)
!3286 = distinct !DILexicalBlock(scope: !3267, file: !3223, line: 134, column: 7)
!3287 = !DILocalVariable(name: "s2", arg: 2, scope: !3288, file: !3223, line: 118, type: !80)
!3288 = distinct !DISubprogram(name: "strcaseeq3", scope: !3223, file: !3223, line: 118, type: !3289, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!63, !80, !80, !59, !59, !59, !59, !59, !59}
!3291 = !{!3292, !3287, !3293, !3294, !3295, !3296, !3297, !3298}
!3292 = !DILocalVariable(name: "s1", arg: 1, scope: !3288, file: !3223, line: 118, type: !80)
!3293 = !DILocalVariable(name: "s23", arg: 3, scope: !3288, file: !3223, line: 118, type: !59)
!3294 = !DILocalVariable(name: "s24", arg: 4, scope: !3288, file: !3223, line: 118, type: !59)
!3295 = !DILocalVariable(name: "s25", arg: 5, scope: !3288, file: !3223, line: 118, type: !59)
!3296 = !DILocalVariable(name: "s26", arg: 6, scope: !3288, file: !3223, line: 118, type: !59)
!3297 = !DILocalVariable(name: "s27", arg: 7, scope: !3288, file: !3223, line: 118, type: !59)
!3298 = !DILocalVariable(name: "s28", arg: 8, scope: !3288, file: !3223, line: 118, type: !59)
!3299 = !DILocation(line: 118, column: 41, scope: !3288, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 139, column: 16, scope: !3301, inlinedAt: !3280)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !3223, line: 136, column: 11)
!3302 = distinct !DILexicalBlock(scope: !3286, file: !3223, line: 135, column: 5)
!3303 = !DILocation(line: 118, column: 90, scope: !3288, inlinedAt: !3300)
!3304 = !DILocation(line: 118, column: 100, scope: !3288, inlinedAt: !3300)
!3305 = !DILocation(line: 120, column: 7, scope: !3306, inlinedAt: !3300)
!3306 = distinct !DILexicalBlock(scope: !3288, file: !3223, line: 120, column: 7)
!3307 = !DILocation(line: 120, column: 7, scope: !3288, inlinedAt: !3300)
!3308 = !DILocalVariable(name: "s2", arg: 2, scope: !3309, file: !3223, line: 104, type: !80)
!3309 = distinct !DISubprogram(name: "strcaseeq4", scope: !3223, file: !3223, line: 104, type: !3310, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!63, !80, !80, !59, !59, !59, !59, !59}
!3312 = !{!3313, !3308, !3314, !3315, !3316, !3317, !3318}
!3313 = !DILocalVariable(name: "s1", arg: 1, scope: !3309, file: !3223, line: 104, type: !80)
!3314 = !DILocalVariable(name: "s24", arg: 3, scope: !3309, file: !3223, line: 104, type: !59)
!3315 = !DILocalVariable(name: "s25", arg: 4, scope: !3309, file: !3223, line: 104, type: !59)
!3316 = !DILocalVariable(name: "s26", arg: 5, scope: !3309, file: !3223, line: 104, type: !59)
!3317 = !DILocalVariable(name: "s27", arg: 6, scope: !3309, file: !3223, line: 104, type: !59)
!3318 = !DILocalVariable(name: "s28", arg: 7, scope: !3309, file: !3223, line: 104, type: !59)
!3319 = !DILocation(line: 104, column: 41, scope: !3309, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 125, column: 16, scope: !3321, inlinedAt: !3300)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !3223, line: 122, column: 11)
!3322 = distinct !DILexicalBlock(scope: !3306, file: !3223, line: 121, column: 5)
!3323 = !DILocation(line: 104, column: 80, scope: !3309, inlinedAt: !3320)
!3324 = !DILocation(line: 104, column: 90, scope: !3309, inlinedAt: !3320)
!3325 = !DILocation(line: 106, column: 7, scope: !3326, inlinedAt: !3320)
!3326 = distinct !DILexicalBlock(scope: !3309, file: !3223, line: 106, column: 7)
!3327 = !DILocation(line: 106, column: 7, scope: !3309, inlinedAt: !3320)
!3328 = !DILocalVariable(name: "s2", arg: 2, scope: !3329, file: !3223, line: 90, type: !80)
!3329 = distinct !DISubprogram(name: "strcaseeq5", scope: !3223, file: !3223, line: 90, type: !3330, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!63, !80, !80, !59, !59, !59, !59}
!3332 = !{!3333, !3328, !3334, !3335, !3336, !3337}
!3333 = !DILocalVariable(name: "s1", arg: 1, scope: !3329, file: !3223, line: 90, type: !80)
!3334 = !DILocalVariable(name: "s25", arg: 3, scope: !3329, file: !3223, line: 90, type: !59)
!3335 = !DILocalVariable(name: "s26", arg: 4, scope: !3329, file: !3223, line: 90, type: !59)
!3336 = !DILocalVariable(name: "s27", arg: 5, scope: !3329, file: !3223, line: 90, type: !59)
!3337 = !DILocalVariable(name: "s28", arg: 6, scope: !3329, file: !3223, line: 90, type: !59)
!3338 = !DILocation(line: 90, column: 41, scope: !3329, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 111, column: 16, scope: !3340, inlinedAt: !3320)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3223, line: 108, column: 11)
!3341 = distinct !DILexicalBlock(scope: !3326, file: !3223, line: 107, column: 5)
!3342 = !DILocation(line: 90, column: 70, scope: !3329, inlinedAt: !3339)
!3343 = !DILocation(line: 90, column: 80, scope: !3329, inlinedAt: !3339)
!3344 = !DILocation(line: 92, column: 7, scope: !3345, inlinedAt: !3339)
!3345 = distinct !DILexicalBlock(scope: !3329, file: !3223, line: 92, column: 7)
!3346 = !DILocation(line: 92, column: 7, scope: !3329, inlinedAt: !3339)
!3347 = !DILocation(line: 227, column: 12, scope: !3239)
!3348 = !DILocation(line: 227, column: 21, scope: !3239)
!3349 = !DILocation(line: 227, column: 5, scope: !3239)
!3350 = !DILocation(line: 146, column: 41, scope: !3245, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 167, column: 16, scope: !3260, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 228, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3204, file: !278, line: 228, column: 7)
!3354 = !DILocation(line: 146, column: 110, scope: !3245, inlinedAt: !3351)
!3355 = !DILocation(line: 146, column: 120, scope: !3245, inlinedAt: !3351)
!3356 = !DILocation(line: 148, column: 7, scope: !3265, inlinedAt: !3351)
!3357 = !DILocation(line: 132, column: 41, scope: !3267, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 153, column: 16, scope: !3281, inlinedAt: !3351)
!3359 = !DILocation(line: 132, column: 100, scope: !3267, inlinedAt: !3358)
!3360 = !DILocation(line: 132, column: 110, scope: !3267, inlinedAt: !3358)
!3361 = !DILocation(line: 134, column: 7, scope: !3286, inlinedAt: !3358)
!3362 = !DILocation(line: 134, column: 7, scope: !3267, inlinedAt: !3358)
!3363 = !DILocation(line: 118, column: 41, scope: !3288, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 139, column: 16, scope: !3301, inlinedAt: !3358)
!3365 = !DILocation(line: 118, column: 90, scope: !3288, inlinedAt: !3364)
!3366 = !DILocation(line: 118, column: 100, scope: !3288, inlinedAt: !3364)
!3367 = !DILocation(line: 120, column: 7, scope: !3306, inlinedAt: !3364)
!3368 = !DILocation(line: 120, column: 7, scope: !3288, inlinedAt: !3364)
!3369 = !DILocation(line: 104, column: 41, scope: !3309, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 125, column: 16, scope: !3321, inlinedAt: !3364)
!3371 = !DILocation(line: 104, column: 80, scope: !3309, inlinedAt: !3370)
!3372 = !DILocation(line: 104, column: 90, scope: !3309, inlinedAt: !3370)
!3373 = !DILocation(line: 106, column: 7, scope: !3326, inlinedAt: !3370)
!3374 = !DILocation(line: 106, column: 7, scope: !3309, inlinedAt: !3370)
!3375 = !DILocation(line: 90, column: 41, scope: !3329, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 111, column: 16, scope: !3340, inlinedAt: !3370)
!3377 = !DILocation(line: 90, column: 70, scope: !3329, inlinedAt: !3376)
!3378 = !DILocation(line: 90, column: 80, scope: !3329, inlinedAt: !3376)
!3379 = !DILocation(line: 92, column: 7, scope: !3345, inlinedAt: !3376)
!3380 = !DILocation(line: 92, column: 7, scope: !3329, inlinedAt: !3376)
!3381 = !DILocalVariable(name: "s2", arg: 2, scope: !3382, file: !3223, line: 76, type: !80)
!3382 = distinct !DISubprogram(name: "strcaseeq6", scope: !3223, file: !3223, line: 76, type: !3383, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!63, !80, !80, !59, !59, !59}
!3385 = !{!3386, !3381, !3387, !3388, !3389}
!3386 = !DILocalVariable(name: "s1", arg: 1, scope: !3382, file: !3223, line: 76, type: !80)
!3387 = !DILocalVariable(name: "s26", arg: 3, scope: !3382, file: !3223, line: 76, type: !59)
!3388 = !DILocalVariable(name: "s27", arg: 4, scope: !3382, file: !3223, line: 76, type: !59)
!3389 = !DILocalVariable(name: "s28", arg: 5, scope: !3382, file: !3223, line: 76, type: !59)
!3390 = !DILocation(line: 76, column: 41, scope: !3382, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 97, column: 16, scope: !3392, inlinedAt: !3376)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !3223, line: 94, column: 11)
!3393 = distinct !DILexicalBlock(scope: !3345, file: !3223, line: 93, column: 5)
!3394 = !DILocation(line: 76, column: 60, scope: !3382, inlinedAt: !3391)
!3395 = !DILocation(line: 76, column: 70, scope: !3382, inlinedAt: !3391)
!3396 = !DILocation(line: 78, column: 7, scope: !3397, inlinedAt: !3391)
!3397 = distinct !DILexicalBlock(scope: !3382, file: !3223, line: 78, column: 7)
!3398 = !DILocation(line: 78, column: 7, scope: !3382, inlinedAt: !3391)
!3399 = !DILocalVariable(name: "s2", arg: 2, scope: !3400, file: !3223, line: 62, type: !80)
!3400 = distinct !DISubprogram(name: "strcaseeq7", scope: !3223, file: !3223, line: 62, type: !3401, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!63, !80, !80, !59, !59}
!3403 = !{!3404, !3399, !3405, !3406}
!3404 = !DILocalVariable(name: "s1", arg: 1, scope: !3400, file: !3223, line: 62, type: !80)
!3405 = !DILocalVariable(name: "s27", arg: 3, scope: !3400, file: !3223, line: 62, type: !59)
!3406 = !DILocalVariable(name: "s28", arg: 4, scope: !3400, file: !3223, line: 62, type: !59)
!3407 = !DILocation(line: 62, column: 41, scope: !3400, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 83, column: 16, scope: !3409, inlinedAt: !3391)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3223, line: 80, column: 11)
!3410 = distinct !DILexicalBlock(scope: !3397, file: !3223, line: 79, column: 5)
!3411 = !DILocation(line: 62, column: 50, scope: !3400, inlinedAt: !3408)
!3412 = !DILocation(line: 62, column: 60, scope: !3400, inlinedAt: !3408)
!3413 = !DILocation(line: 64, column: 7, scope: !3414, inlinedAt: !3408)
!3414 = distinct !DILexicalBlock(scope: !3400, file: !3223, line: 64, column: 7)
!3415 = !DILocation(line: 228, column: 7, scope: !3204)
!3416 = !DILocation(line: 229, column: 12, scope: !3353)
!3417 = !DILocation(line: 229, column: 21, scope: !3353)
!3418 = !DILocation(line: 229, column: 5, scope: !3353)
!3419 = !DILocation(line: 231, column: 13, scope: !3204)
!3420 = !DILocation(line: 231, column: 11, scope: !3204)
!3421 = !DILocation(line: 231, column: 3, scope: !3204)
!3422 = !DILocation(line: 232, column: 1, scope: !3204)
!3423 = distinct !DISubprogram(name: "quotearg_alloc", scope: !278, file: !278, line: 791, type: !3424, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!58, !80, !61, !2550}
!3426 = !{!3427, !3428, !3429}
!3427 = !DILocalVariable(name: "arg", arg: 1, scope: !3423, file: !278, line: 791, type: !80)
!3428 = !DILocalVariable(name: "argsize", arg: 2, scope: !3423, file: !278, line: 791, type: !61)
!3429 = !DILocalVariable(name: "o", arg: 3, scope: !3423, file: !278, line: 792, type: !2550)
!3430 = !DILocation(line: 791, column: 29, scope: !3423)
!3431 = !DILocation(line: 791, column: 41, scope: !3423)
!3432 = !DILocation(line: 792, column: 47, scope: !3423)
!3433 = !DILocalVariable(name: "arg", arg: 1, scope: !3434, file: !278, line: 804, type: !80)
!3434 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !278, file: !278, line: 804, type: !3435, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!58, !80, !61, !732, !2550}
!3437 = !{!3433, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3438 = !DILocalVariable(name: "argsize", arg: 2, scope: !3434, file: !278, line: 804, type: !61)
!3439 = !DILocalVariable(name: "size", arg: 3, scope: !3434, file: !278, line: 804, type: !732)
!3440 = !DILocalVariable(name: "o", arg: 4, scope: !3434, file: !278, line: 805, type: !2550)
!3441 = !DILocalVariable(name: "p", scope: !3434, file: !278, line: 807, type: !2550)
!3442 = !DILocalVariable(name: "e", scope: !3434, file: !278, line: 808, type: !63)
!3443 = !DILocalVariable(name: "flags", scope: !3434, file: !278, line: 810, type: !63)
!3444 = !DILocalVariable(name: "bufsize", scope: !3434, file: !278, line: 811, type: !61)
!3445 = !DILocalVariable(name: "buf", scope: !3434, file: !278, line: 815, type: !58)
!3446 = !DILocation(line: 804, column: 33, scope: !3434, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 794, column: 10, scope: !3423)
!3448 = !DILocation(line: 804, column: 45, scope: !3434, inlinedAt: !3447)
!3449 = !DILocation(line: 804, column: 62, scope: !3434, inlinedAt: !3447)
!3450 = !DILocation(line: 805, column: 51, scope: !3434, inlinedAt: !3447)
!3451 = !DILocation(line: 807, column: 37, scope: !3434, inlinedAt: !3447)
!3452 = !DILocation(line: 807, column: 33, scope: !3434, inlinedAt: !3447)
!3453 = !DILocation(line: 808, column: 11, scope: !3434, inlinedAt: !3447)
!3454 = !DILocation(line: 808, column: 7, scope: !3434, inlinedAt: !3447)
!3455 = !DILocation(line: 810, column: 18, scope: !3434, inlinedAt: !3447)
!3456 = !DILocation(line: 810, column: 24, scope: !3434, inlinedAt: !3447)
!3457 = !DILocation(line: 810, column: 7, scope: !3434, inlinedAt: !3447)
!3458 = !DILocation(line: 811, column: 69, scope: !3434, inlinedAt: !3447)
!3459 = !DILocation(line: 812, column: 53, scope: !3434, inlinedAt: !3447)
!3460 = !DILocation(line: 813, column: 49, scope: !3434, inlinedAt: !3447)
!3461 = !DILocation(line: 814, column: 49, scope: !3434, inlinedAt: !3447)
!3462 = !DILocation(line: 811, column: 20, scope: !3434, inlinedAt: !3447)
!3463 = !DILocation(line: 814, column: 62, scope: !3434, inlinedAt: !3447)
!3464 = !DILocation(line: 811, column: 10, scope: !3434, inlinedAt: !3447)
!3465 = !DILocalVariable(name: "n", arg: 1, scope: !3466, file: !728, line: 220, type: !61)
!3466 = distinct !DISubprogram(name: "xcharalloc", scope: !728, file: !728, line: 220, type: !3467, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!58, !61}
!3469 = !{!3465}
!3470 = !DILocation(line: 220, column: 20, scope: !3466, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 815, column: 15, scope: !3434, inlinedAt: !3447)
!3472 = !DILocation(line: 222, column: 10, scope: !3466, inlinedAt: !3471)
!3473 = !DILocation(line: 815, column: 9, scope: !3434, inlinedAt: !3447)
!3474 = !DILocation(line: 816, column: 60, scope: !3434, inlinedAt: !3447)
!3475 = !DILocation(line: 818, column: 32, scope: !3434, inlinedAt: !3447)
!3476 = !DILocation(line: 818, column: 47, scope: !3434, inlinedAt: !3447)
!3477 = !DILocation(line: 816, column: 3, scope: !3434, inlinedAt: !3447)
!3478 = !DILocation(line: 819, column: 9, scope: !3434, inlinedAt: !3447)
!3479 = !DILocation(line: 794, column: 3, scope: !3423)
!3480 = !DILocation(line: 804, column: 33, scope: !3434)
!3481 = !DILocation(line: 804, column: 45, scope: !3434)
!3482 = !DILocation(line: 804, column: 62, scope: !3434)
!3483 = !DILocation(line: 805, column: 51, scope: !3434)
!3484 = !DILocation(line: 807, column: 37, scope: !3434)
!3485 = !DILocation(line: 807, column: 33, scope: !3434)
!3486 = !DILocation(line: 808, column: 11, scope: !3434)
!3487 = !DILocation(line: 808, column: 7, scope: !3434)
!3488 = !DILocation(line: 810, column: 18, scope: !3434)
!3489 = !DILocation(line: 810, column: 27, scope: !3434)
!3490 = !DILocation(line: 810, column: 24, scope: !3434)
!3491 = !DILocation(line: 810, column: 7, scope: !3434)
!3492 = !DILocation(line: 811, column: 69, scope: !3434)
!3493 = !DILocation(line: 812, column: 53, scope: !3434)
!3494 = !DILocation(line: 813, column: 49, scope: !3434)
!3495 = !DILocation(line: 814, column: 49, scope: !3434)
!3496 = !DILocation(line: 811, column: 20, scope: !3434)
!3497 = !DILocation(line: 814, column: 62, scope: !3434)
!3498 = !DILocation(line: 811, column: 10, scope: !3434)
!3499 = !DILocation(line: 220, column: 20, scope: !3466, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 815, column: 15, scope: !3434)
!3501 = !DILocation(line: 222, column: 10, scope: !3466, inlinedAt: !3500)
!3502 = !DILocation(line: 815, column: 9, scope: !3434)
!3503 = !DILocation(line: 816, column: 60, scope: !3434)
!3504 = !DILocation(line: 818, column: 32, scope: !3434)
!3505 = !DILocation(line: 818, column: 47, scope: !3434)
!3506 = !DILocation(line: 816, column: 3, scope: !3434)
!3507 = !DILocation(line: 819, column: 9, scope: !3434)
!3508 = !DILocation(line: 820, column: 7, scope: !3434)
!3509 = !DILocation(line: 821, column: 11, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3434, file: !278, line: 820, column: 7)
!3511 = !DILocation(line: 821, column: 5, scope: !3510)
!3512 = !DILocation(line: 822, column: 3, scope: !3434)
!3513 = distinct !DISubprogram(name: "quotearg_free", scope: !278, file: !278, line: 840, type: !784, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3514)
!3514 = !{!3515, !3516}
!3515 = !DILocalVariable(name: "sv", scope: !3513, file: !278, line: 842, type: !305)
!3516 = !DILocalVariable(name: "i", scope: !3513, file: !278, line: 843, type: !63)
!3517 = !DILocation(line: 842, column: 24, scope: !3513)
!3518 = !DILocation(line: 842, column: 19, scope: !3513)
!3519 = !DILocation(line: 843, column: 7, scope: !3513)
!3520 = !DILocation(line: 844, column: 19, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !278, line: 844, column: 3)
!3522 = distinct !DILexicalBlock(scope: !3513, file: !278, line: 844, column: 3)
!3523 = !DILocation(line: 844, column: 17, scope: !3521)
!3524 = !DILocation(line: 844, column: 3, scope: !3522)
!3525 = !DILocation(line: 845, column: 17, scope: !3521)
!3526 = !{!3527, !777, i64 8}
!3527 = !{!"slotvec", !1009, i64 0, !777, i64 8}
!3528 = !DILocation(line: 845, column: 5, scope: !3521)
!3529 = !DILocation(line: 844, column: 28, scope: !3521)
!3530 = distinct !{!3530, !3524, !3531}
!3531 = !DILocation(line: 845, column: 20, scope: !3522)
!3532 = !DILocation(line: 846, column: 13, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3513, file: !278, line: 846, column: 7)
!3534 = !DILocation(line: 846, column: 17, scope: !3533)
!3535 = !DILocation(line: 846, column: 7, scope: !3513)
!3536 = !DILocation(line: 848, column: 7, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !278, line: 847, column: 5)
!3538 = !DILocation(line: 849, column: 21, scope: !3537)
!3539 = !{!3527, !1009, i64 0}
!3540 = !DILocation(line: 850, column: 20, scope: !3537)
!3541 = !DILocation(line: 851, column: 5, scope: !3537)
!3542 = !DILocation(line: 852, column: 10, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3513, file: !278, line: 852, column: 7)
!3544 = !DILocation(line: 852, column: 7, scope: !3513)
!3545 = !DILocation(line: 854, column: 13, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3543, file: !278, line: 853, column: 5)
!3547 = !DILocation(line: 854, column: 7, scope: !3546)
!3548 = !DILocation(line: 855, column: 15, scope: !3546)
!3549 = !DILocation(line: 856, column: 5, scope: !3546)
!3550 = !DILocation(line: 857, column: 10, scope: !3513)
!3551 = !DILocation(line: 858, column: 1, scope: !3513)
!3552 = distinct !DISubprogram(name: "quotearg_n", scope: !278, file: !278, line: 922, type: !3553, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!58, !63, !80}
!3555 = !{!3556, !3557}
!3556 = !DILocalVariable(name: "n", arg: 1, scope: !3552, file: !278, line: 922, type: !63)
!3557 = !DILocalVariable(name: "arg", arg: 2, scope: !3552, file: !278, line: 922, type: !80)
!3558 = !DILocation(line: 922, column: 17, scope: !3552)
!3559 = !DILocation(line: 922, column: 32, scope: !3552)
!3560 = !DILocation(line: 924, column: 10, scope: !3552)
!3561 = !DILocation(line: 924, column: 3, scope: !3552)
!3562 = distinct !DISubprogram(name: "quotearg_n_options", scope: !278, file: !278, line: 869, type: !3563, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!58, !63, !80, !61, !2550}
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3575, !3577, !3578, !3579}
!3566 = !DILocalVariable(name: "n", arg: 1, scope: !3562, file: !278, line: 869, type: !63)
!3567 = !DILocalVariable(name: "arg", arg: 2, scope: !3562, file: !278, line: 869, type: !80)
!3568 = !DILocalVariable(name: "argsize", arg: 3, scope: !3562, file: !278, line: 869, type: !61)
!3569 = !DILocalVariable(name: "options", arg: 4, scope: !3562, file: !278, line: 870, type: !2550)
!3570 = !DILocalVariable(name: "e", scope: !3562, file: !278, line: 872, type: !63)
!3571 = !DILocalVariable(name: "sv", scope: !3562, file: !278, line: 874, type: !305)
!3572 = !DILocalVariable(name: "preallocated", scope: !3573, file: !278, line: 881, type: !70)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !278, line: 880, column: 5)
!3574 = distinct !DILexicalBlock(scope: !3562, file: !278, line: 879, column: 7)
!3575 = !DILocalVariable(name: "size", scope: !3576, file: !278, line: 894, type: !61)
!3576 = distinct !DILexicalBlock(scope: !3562, file: !278, line: 893, column: 3)
!3577 = !DILocalVariable(name: "val", scope: !3576, file: !278, line: 895, type: !58)
!3578 = !DILocalVariable(name: "flags", scope: !3576, file: !278, line: 897, type: !63)
!3579 = !DILocalVariable(name: "qsize", scope: !3576, file: !278, line: 898, type: !61)
!3580 = !DILocation(line: 869, column: 25, scope: !3562)
!3581 = !DILocation(line: 869, column: 40, scope: !3562)
!3582 = !DILocation(line: 869, column: 52, scope: !3562)
!3583 = !DILocation(line: 870, column: 51, scope: !3562)
!3584 = !DILocation(line: 872, column: 11, scope: !3562)
!3585 = !DILocation(line: 872, column: 7, scope: !3562)
!3586 = !DILocation(line: 874, column: 24, scope: !3562)
!3587 = !DILocation(line: 874, column: 19, scope: !3562)
!3588 = !DILocation(line: 876, column: 9, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3562, file: !278, line: 876, column: 7)
!3590 = !DILocation(line: 876, column: 7, scope: !3562)
!3591 = !DILocation(line: 877, column: 5, scope: !3589)
!3592 = !DILocation(line: 879, column: 7, scope: !3574)
!3593 = !DILocation(line: 879, column: 14, scope: !3574)
!3594 = !DILocation(line: 879, column: 7, scope: !3562)
!3595 = !DILocation(line: 881, column: 31, scope: !3573)
!3596 = !DILocation(line: 883, column: 67, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3573, file: !278, line: 883, column: 11)
!3598 = !DILocation(line: 883, column: 11, scope: !3573)
!3599 = !DILocation(line: 884, column: 9, scope: !3597)
!3600 = !DILocation(line: 886, column: 32, scope: !3573)
!3601 = !DILocation(line: 886, column: 61, scope: !3573)
!3602 = !DILocation(line: 886, column: 58, scope: !3573)
!3603 = !DILocation(line: 886, column: 66, scope: !3573)
!3604 = !DILocation(line: 886, column: 22, scope: !3573)
!3605 = !DILocation(line: 886, column: 15, scope: !3573)
!3606 = !DILocation(line: 887, column: 11, scope: !3573)
!3607 = !DILocation(line: 888, column: 15, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3573, file: !278, line: 887, column: 11)
!3609 = !{i64 0, i64 8, !1008, i64 8, i64 8, !776}
!3610 = !DILocation(line: 888, column: 9, scope: !3608)
!3611 = !DILocation(line: 889, column: 20, scope: !3573)
!3612 = !DILocation(line: 889, column: 18, scope: !3573)
!3613 = !DILocation(line: 889, column: 7, scope: !3573)
!3614 = !DILocation(line: 889, column: 38, scope: !3573)
!3615 = !DILocation(line: 889, column: 31, scope: !3573)
!3616 = !DILocation(line: 889, column: 48, scope: !3573)
!3617 = !DILocation(line: 890, column: 14, scope: !3573)
!3618 = !DILocation(line: 891, column: 5, scope: !3573)
!3619 = !DILocation(line: 894, column: 19, scope: !3576)
!3620 = !DILocation(line: 894, column: 25, scope: !3576)
!3621 = !DILocation(line: 894, column: 12, scope: !3576)
!3622 = !DILocation(line: 895, column: 23, scope: !3576)
!3623 = !DILocation(line: 895, column: 11, scope: !3576)
!3624 = !DILocation(line: 897, column: 26, scope: !3576)
!3625 = !DILocation(line: 897, column: 32, scope: !3576)
!3626 = !DILocation(line: 897, column: 9, scope: !3576)
!3627 = !DILocation(line: 899, column: 55, scope: !3576)
!3628 = !DILocation(line: 900, column: 46, scope: !3576)
!3629 = !DILocation(line: 901, column: 55, scope: !3576)
!3630 = !DILocation(line: 902, column: 55, scope: !3576)
!3631 = !DILocation(line: 898, column: 20, scope: !3576)
!3632 = !DILocation(line: 898, column: 12, scope: !3576)
!3633 = !DILocation(line: 904, column: 14, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3576, file: !278, line: 904, column: 9)
!3635 = !DILocation(line: 904, column: 9, scope: !3576)
!3636 = !DILocation(line: 906, column: 35, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3634, file: !278, line: 905, column: 7)
!3638 = !DILocation(line: 906, column: 20, scope: !3637)
!3639 = !DILocation(line: 907, column: 17, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3637, file: !278, line: 907, column: 13)
!3641 = !DILocation(line: 907, column: 13, scope: !3637)
!3642 = !DILocation(line: 908, column: 11, scope: !3640)
!3643 = !DILocation(line: 220, column: 20, scope: !3466, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 909, column: 27, scope: !3637)
!3645 = !DILocation(line: 222, column: 10, scope: !3466, inlinedAt: !3644)
!3646 = !DILocation(line: 909, column: 19, scope: !3637)
!3647 = !DILocation(line: 910, column: 69, scope: !3637)
!3648 = !DILocation(line: 912, column: 44, scope: !3637)
!3649 = !DILocation(line: 913, column: 44, scope: !3637)
!3650 = !DILocation(line: 910, column: 9, scope: !3637)
!3651 = !DILocation(line: 914, column: 7, scope: !3637)
!3652 = !DILocation(line: 916, column: 11, scope: !3576)
!3653 = !DILocation(line: 917, column: 5, scope: !3576)
!3654 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !278, file: !278, line: 928, type: !3655, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!58, !63, !80, !61}
!3657 = !{!3658, !3659, !3660}
!3658 = !DILocalVariable(name: "n", arg: 1, scope: !3654, file: !278, line: 928, type: !63)
!3659 = !DILocalVariable(name: "arg", arg: 2, scope: !3654, file: !278, line: 928, type: !80)
!3660 = !DILocalVariable(name: "argsize", arg: 3, scope: !3654, file: !278, line: 928, type: !61)
!3661 = !DILocation(line: 928, column: 21, scope: !3654)
!3662 = !DILocation(line: 928, column: 36, scope: !3654)
!3663 = !DILocation(line: 928, column: 48, scope: !3654)
!3664 = !DILocation(line: 930, column: 10, scope: !3654)
!3665 = !DILocation(line: 930, column: 3, scope: !3654)
!3666 = distinct !DISubprogram(name: "quotearg", scope: !278, file: !278, line: 934, type: !3667, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!58, !80}
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "arg", arg: 1, scope: !3666, file: !278, line: 934, type: !80)
!3671 = !DILocation(line: 934, column: 23, scope: !3666)
!3672 = !DILocation(line: 922, column: 17, scope: !3552, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 936, column: 10, scope: !3666)
!3674 = !DILocation(line: 922, column: 32, scope: !3552, inlinedAt: !3673)
!3675 = !DILocation(line: 924, column: 10, scope: !3552, inlinedAt: !3673)
!3676 = !DILocation(line: 936, column: 3, scope: !3666)
!3677 = distinct !DISubprogram(name: "quotearg_mem", scope: !278, file: !278, line: 940, type: !3678, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!58, !80, !61}
!3680 = !{!3681, !3682}
!3681 = !DILocalVariable(name: "arg", arg: 1, scope: !3677, file: !278, line: 940, type: !80)
!3682 = !DILocalVariable(name: "argsize", arg: 2, scope: !3677, file: !278, line: 940, type: !61)
!3683 = !DILocation(line: 940, column: 27, scope: !3677)
!3684 = !DILocation(line: 940, column: 39, scope: !3677)
!3685 = !DILocation(line: 928, column: 21, scope: !3654, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 942, column: 10, scope: !3677)
!3687 = !DILocation(line: 928, column: 36, scope: !3654, inlinedAt: !3686)
!3688 = !DILocation(line: 928, column: 48, scope: !3654, inlinedAt: !3686)
!3689 = !DILocation(line: 930, column: 10, scope: !3654, inlinedAt: !3686)
!3690 = !DILocation(line: 942, column: 3, scope: !3677)
!3691 = distinct !DISubprogram(name: "quotearg_n_style", scope: !278, file: !278, line: 946, type: !3692, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!58, !63, !5, !80}
!3694 = !{!3695, !3696, !3697, !3698}
!3695 = !DILocalVariable(name: "n", arg: 1, scope: !3691, file: !278, line: 946, type: !63)
!3696 = !DILocalVariable(name: "s", arg: 2, scope: !3691, file: !278, line: 946, type: !5)
!3697 = !DILocalVariable(name: "arg", arg: 3, scope: !3691, file: !278, line: 946, type: !80)
!3698 = !DILocalVariable(name: "o", scope: !3691, file: !278, line: 948, type: !2551)
!3699 = !DILocalVariable(name: "o", scope: !3700, file: !278, line: 187, type: !285)
!3700 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !278, file: !278, line: 185, type: !3701, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!285, !5}
!3703 = !{!3704, !3699}
!3704 = !DILocalVariable(name: "style", arg: 1, scope: !3700, file: !278, line: 185, type: !5)
!3705 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3706 = !DILocation(line: 187, column: 26, scope: !3700, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 948, column: 36, scope: !3691)
!3708 = !DILocation(line: 946, column: 23, scope: !3691)
!3709 = !DILocation(line: 946, column: 45, scope: !3691)
!3710 = !DILocation(line: 946, column: 60, scope: !3691)
!3711 = !DILocation(line: 948, column: 3, scope: !3691)
!3712 = !DILocation(line: 948, column: 32, scope: !3691)
!3713 = !DILocation(line: 185, column: 48, scope: !3700, inlinedAt: !3707)
!3714 = !DILocation(line: 187, column: 3, scope: !3700, inlinedAt: !3707)
!3715 = !DILocation(line: 188, column: 13, scope: !3716, inlinedAt: !3707)
!3716 = distinct !DILexicalBlock(scope: !3700, file: !278, line: 188, column: 7)
!3717 = !DILocation(line: 188, column: 7, scope: !3700, inlinedAt: !3707)
!3718 = !DILocation(line: 189, column: 5, scope: !3716, inlinedAt: !3707)
!3719 = !{!3720}
!3720 = distinct !{!3720, !3721, !"quoting_options_from_style: argument 0"}
!3721 = distinct !{!3721, !"quoting_options_from_style"}
!3722 = !DILocation(line: 191, column: 10, scope: !3700, inlinedAt: !3707)
!3723 = !DILocation(line: 192, column: 1, scope: !3700, inlinedAt: !3707)
!3724 = !DILocation(line: 949, column: 10, scope: !3691)
!3725 = !DILocation(line: 950, column: 1, scope: !3691)
!3726 = !DILocation(line: 949, column: 3, scope: !3691)
!3727 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !278, file: !278, line: 953, type: !3728, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!58, !63, !5, !80, !61}
!3730 = !{!3731, !3732, !3733, !3734, !3735}
!3731 = !DILocalVariable(name: "n", arg: 1, scope: !3727, file: !278, line: 953, type: !63)
!3732 = !DILocalVariable(name: "s", arg: 2, scope: !3727, file: !278, line: 953, type: !5)
!3733 = !DILocalVariable(name: "arg", arg: 3, scope: !3727, file: !278, line: 954, type: !80)
!3734 = !DILocalVariable(name: "argsize", arg: 4, scope: !3727, file: !278, line: 954, type: !61)
!3735 = !DILocalVariable(name: "o", scope: !3727, file: !278, line: 956, type: !2551)
!3736 = !DILocation(line: 187, column: 26, scope: !3700, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 956, column: 36, scope: !3727)
!3738 = !DILocation(line: 953, column: 27, scope: !3727)
!3739 = !DILocation(line: 953, column: 49, scope: !3727)
!3740 = !DILocation(line: 954, column: 35, scope: !3727)
!3741 = !DILocation(line: 954, column: 47, scope: !3727)
!3742 = !DILocation(line: 956, column: 3, scope: !3727)
!3743 = !DILocation(line: 956, column: 32, scope: !3727)
!3744 = !DILocation(line: 185, column: 48, scope: !3700, inlinedAt: !3737)
!3745 = !DILocation(line: 187, column: 3, scope: !3700, inlinedAt: !3737)
!3746 = !DILocation(line: 188, column: 13, scope: !3716, inlinedAt: !3737)
!3747 = !DILocation(line: 188, column: 7, scope: !3700, inlinedAt: !3737)
!3748 = !DILocation(line: 189, column: 5, scope: !3716, inlinedAt: !3737)
!3749 = !{!3750}
!3750 = distinct !{!3750, !3751, !"quoting_options_from_style: argument 0"}
!3751 = distinct !{!3751, !"quoting_options_from_style"}
!3752 = !DILocation(line: 191, column: 10, scope: !3700, inlinedAt: !3737)
!3753 = !DILocation(line: 192, column: 1, scope: !3700, inlinedAt: !3737)
!3754 = !DILocation(line: 957, column: 10, scope: !3727)
!3755 = !DILocation(line: 958, column: 1, scope: !3727)
!3756 = !DILocation(line: 957, column: 3, scope: !3727)
!3757 = distinct !DISubprogram(name: "quotearg_style", scope: !278, file: !278, line: 961, type: !3758, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!58, !5, !80}
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "s", arg: 1, scope: !3757, file: !278, line: 961, type: !5)
!3762 = !DILocalVariable(name: "arg", arg: 2, scope: !3757, file: !278, line: 961, type: !80)
!3763 = !DILocation(line: 187, column: 26, scope: !3700, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 948, column: 36, scope: !3691, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 963, column: 10, scope: !3757)
!3766 = !DILocation(line: 961, column: 36, scope: !3757)
!3767 = !DILocation(line: 961, column: 51, scope: !3757)
!3768 = !DILocation(line: 946, column: 23, scope: !3691, inlinedAt: !3765)
!3769 = !DILocation(line: 946, column: 45, scope: !3691, inlinedAt: !3765)
!3770 = !DILocation(line: 946, column: 60, scope: !3691, inlinedAt: !3765)
!3771 = !DILocation(line: 948, column: 3, scope: !3691, inlinedAt: !3765)
!3772 = !DILocation(line: 948, column: 32, scope: !3691, inlinedAt: !3765)
!3773 = !DILocation(line: 185, column: 48, scope: !3700, inlinedAt: !3764)
!3774 = !DILocation(line: 187, column: 3, scope: !3700, inlinedAt: !3764)
!3775 = !DILocation(line: 188, column: 13, scope: !3716, inlinedAt: !3764)
!3776 = !DILocation(line: 188, column: 7, scope: !3700, inlinedAt: !3764)
!3777 = !DILocation(line: 189, column: 5, scope: !3716, inlinedAt: !3764)
!3778 = !{!3779}
!3779 = distinct !{!3779, !3780, !"quoting_options_from_style: argument 0"}
!3780 = distinct !{!3780, !"quoting_options_from_style"}
!3781 = !DILocation(line: 191, column: 10, scope: !3700, inlinedAt: !3764)
!3782 = !DILocation(line: 192, column: 1, scope: !3700, inlinedAt: !3764)
!3783 = !DILocation(line: 949, column: 10, scope: !3691, inlinedAt: !3765)
!3784 = !DILocation(line: 950, column: 1, scope: !3691, inlinedAt: !3765)
!3785 = !DILocation(line: 963, column: 3, scope: !3757)
!3786 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !278, file: !278, line: 967, type: !3787, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3789)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!58, !5, !80, !61}
!3789 = !{!3790, !3791, !3792}
!3790 = !DILocalVariable(name: "s", arg: 1, scope: !3786, file: !278, line: 967, type: !5)
!3791 = !DILocalVariable(name: "arg", arg: 2, scope: !3786, file: !278, line: 967, type: !80)
!3792 = !DILocalVariable(name: "argsize", arg: 3, scope: !3786, file: !278, line: 967, type: !61)
!3793 = !DILocation(line: 187, column: 26, scope: !3700, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 956, column: 36, scope: !3727, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 969, column: 10, scope: !3786)
!3796 = !DILocation(line: 967, column: 40, scope: !3786)
!3797 = !DILocation(line: 967, column: 55, scope: !3786)
!3798 = !DILocation(line: 967, column: 67, scope: !3786)
!3799 = !DILocation(line: 953, column: 27, scope: !3727, inlinedAt: !3795)
!3800 = !DILocation(line: 953, column: 49, scope: !3727, inlinedAt: !3795)
!3801 = !DILocation(line: 954, column: 35, scope: !3727, inlinedAt: !3795)
!3802 = !DILocation(line: 954, column: 47, scope: !3727, inlinedAt: !3795)
!3803 = !DILocation(line: 956, column: 3, scope: !3727, inlinedAt: !3795)
!3804 = !DILocation(line: 956, column: 32, scope: !3727, inlinedAt: !3795)
!3805 = !DILocation(line: 185, column: 48, scope: !3700, inlinedAt: !3794)
!3806 = !DILocation(line: 187, column: 3, scope: !3700, inlinedAt: !3794)
!3807 = !DILocation(line: 188, column: 13, scope: !3716, inlinedAt: !3794)
!3808 = !DILocation(line: 188, column: 7, scope: !3700, inlinedAt: !3794)
!3809 = !DILocation(line: 189, column: 5, scope: !3716, inlinedAt: !3794)
!3810 = !{!3811}
!3811 = distinct !{!3811, !3812, !"quoting_options_from_style: argument 0"}
!3812 = distinct !{!3812, !"quoting_options_from_style"}
!3813 = !DILocation(line: 191, column: 10, scope: !3700, inlinedAt: !3794)
!3814 = !DILocation(line: 192, column: 1, scope: !3700, inlinedAt: !3794)
!3815 = !DILocation(line: 957, column: 10, scope: !3727, inlinedAt: !3795)
!3816 = !DILocation(line: 958, column: 1, scope: !3727, inlinedAt: !3795)
!3817 = !DILocation(line: 969, column: 3, scope: !3786)
!3818 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !278, file: !278, line: 973, type: !3819, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3821)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!58, !80, !61, !59}
!3821 = !{!3822, !3823, !3824, !3825}
!3822 = !DILocalVariable(name: "arg", arg: 1, scope: !3818, file: !278, line: 973, type: !80)
!3823 = !DILocalVariable(name: "argsize", arg: 2, scope: !3818, file: !278, line: 973, type: !61)
!3824 = !DILocalVariable(name: "ch", arg: 3, scope: !3818, file: !278, line: 973, type: !59)
!3825 = !DILocalVariable(name: "options", scope: !3818, file: !278, line: 975, type: !285)
!3826 = !DILocation(line: 973, column: 32, scope: !3818)
!3827 = !DILocation(line: 973, column: 44, scope: !3818)
!3828 = !DILocation(line: 973, column: 58, scope: !3818)
!3829 = !DILocation(line: 975, column: 3, scope: !3818)
!3830 = !DILocation(line: 976, column: 13, scope: !3818)
!3831 = !{i64 0, i64 4, !1038, i64 4, i64 4, !955, i64 8, i64 32, !1038, i64 40, i64 8, !776, i64 48, i64 8, !776}
!3832 = !DILocation(line: 975, column: 26, scope: !3818)
!3833 = !DILocation(line: 144, column: 43, scope: !2572, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 977, column: 3, scope: !3818)
!3835 = !DILocation(line: 144, column: 51, scope: !2572, inlinedAt: !3834)
!3836 = !DILocation(line: 144, column: 58, scope: !2572, inlinedAt: !3834)
!3837 = !DILocation(line: 146, column: 17, scope: !2572, inlinedAt: !3834)
!3838 = !DILocation(line: 148, column: 62, scope: !2572, inlinedAt: !3834)
!3839 = !DILocation(line: 148, column: 57, scope: !2572, inlinedAt: !3834)
!3840 = !DILocation(line: 147, column: 17, scope: !2572, inlinedAt: !3834)
!3841 = !DILocation(line: 149, column: 18, scope: !2572, inlinedAt: !3834)
!3842 = !DILocation(line: 149, column: 15, scope: !2572, inlinedAt: !3834)
!3843 = !DILocation(line: 149, column: 7, scope: !2572, inlinedAt: !3834)
!3844 = !DILocation(line: 150, column: 12, scope: !2572, inlinedAt: !3834)
!3845 = !DILocation(line: 150, column: 15, scope: !2572, inlinedAt: !3834)
!3846 = !DILocation(line: 150, column: 25, scope: !2572, inlinedAt: !3834)
!3847 = !DILocation(line: 150, column: 7, scope: !2572, inlinedAt: !3834)
!3848 = !DILocation(line: 151, column: 18, scope: !2572, inlinedAt: !3834)
!3849 = !DILocation(line: 151, column: 23, scope: !2572, inlinedAt: !3834)
!3850 = !DILocation(line: 151, column: 6, scope: !2572, inlinedAt: !3834)
!3851 = !DILocation(line: 978, column: 10, scope: !3818)
!3852 = !DILocation(line: 979, column: 1, scope: !3818)
!3853 = !DILocation(line: 978, column: 3, scope: !3818)
!3854 = distinct !DISubprogram(name: "quotearg_char", scope: !278, file: !278, line: 982, type: !3855, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!58, !80, !59}
!3857 = !{!3858, !3859}
!3858 = !DILocalVariable(name: "arg", arg: 1, scope: !3854, file: !278, line: 982, type: !80)
!3859 = !DILocalVariable(name: "ch", arg: 2, scope: !3854, file: !278, line: 982, type: !59)
!3860 = !DILocation(line: 982, column: 28, scope: !3854)
!3861 = !DILocation(line: 982, column: 38, scope: !3854)
!3862 = !DILocation(line: 973, column: 32, scope: !3818, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 984, column: 10, scope: !3854)
!3864 = !DILocation(line: 973, column: 44, scope: !3818, inlinedAt: !3863)
!3865 = !DILocation(line: 973, column: 58, scope: !3818, inlinedAt: !3863)
!3866 = !DILocation(line: 975, column: 3, scope: !3818, inlinedAt: !3863)
!3867 = !DILocation(line: 976, column: 13, scope: !3818, inlinedAt: !3863)
!3868 = !DILocation(line: 975, column: 26, scope: !3818, inlinedAt: !3863)
!3869 = !DILocation(line: 144, column: 43, scope: !2572, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 977, column: 3, scope: !3818, inlinedAt: !3863)
!3871 = !DILocation(line: 144, column: 51, scope: !2572, inlinedAt: !3870)
!3872 = !DILocation(line: 144, column: 58, scope: !2572, inlinedAt: !3870)
!3873 = !DILocation(line: 146, column: 17, scope: !2572, inlinedAt: !3870)
!3874 = !DILocation(line: 148, column: 62, scope: !2572, inlinedAt: !3870)
!3875 = !DILocation(line: 148, column: 57, scope: !2572, inlinedAt: !3870)
!3876 = !DILocation(line: 147, column: 17, scope: !2572, inlinedAt: !3870)
!3877 = !DILocation(line: 149, column: 18, scope: !2572, inlinedAt: !3870)
!3878 = !DILocation(line: 149, column: 15, scope: !2572, inlinedAt: !3870)
!3879 = !DILocation(line: 149, column: 7, scope: !2572, inlinedAt: !3870)
!3880 = !DILocation(line: 150, column: 12, scope: !2572, inlinedAt: !3870)
!3881 = !DILocation(line: 150, column: 15, scope: !2572, inlinedAt: !3870)
!3882 = !DILocation(line: 150, column: 25, scope: !2572, inlinedAt: !3870)
!3883 = !DILocation(line: 150, column: 7, scope: !2572, inlinedAt: !3870)
!3884 = !DILocation(line: 151, column: 18, scope: !2572, inlinedAt: !3870)
!3885 = !DILocation(line: 151, column: 23, scope: !2572, inlinedAt: !3870)
!3886 = !DILocation(line: 151, column: 6, scope: !2572, inlinedAt: !3870)
!3887 = !DILocation(line: 978, column: 10, scope: !3818, inlinedAt: !3863)
!3888 = !DILocation(line: 979, column: 1, scope: !3818, inlinedAt: !3863)
!3889 = !DILocation(line: 984, column: 3, scope: !3854)
!3890 = distinct !DISubprogram(name: "quotearg_colon", scope: !278, file: !278, line: 988, type: !3667, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3891)
!3891 = !{!3892}
!3892 = !DILocalVariable(name: "arg", arg: 1, scope: !3890, file: !278, line: 988, type: !80)
!3893 = !DILocation(line: 988, column: 29, scope: !3890)
!3894 = !DILocation(line: 982, column: 28, scope: !3854, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 990, column: 10, scope: !3890)
!3896 = !DILocation(line: 982, column: 38, scope: !3854, inlinedAt: !3895)
!3897 = !DILocation(line: 973, column: 32, scope: !3818, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 984, column: 10, scope: !3854, inlinedAt: !3895)
!3899 = !DILocation(line: 973, column: 44, scope: !3818, inlinedAt: !3898)
!3900 = !DILocation(line: 973, column: 58, scope: !3818, inlinedAt: !3898)
!3901 = !DILocation(line: 975, column: 3, scope: !3818, inlinedAt: !3898)
!3902 = !DILocation(line: 976, column: 13, scope: !3818, inlinedAt: !3898)
!3903 = !DILocation(line: 975, column: 26, scope: !3818, inlinedAt: !3898)
!3904 = !DILocation(line: 144, column: 43, scope: !2572, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 977, column: 3, scope: !3818, inlinedAt: !3898)
!3906 = !DILocation(line: 144, column: 51, scope: !2572, inlinedAt: !3905)
!3907 = !DILocation(line: 144, column: 58, scope: !2572, inlinedAt: !3905)
!3908 = !DILocation(line: 146, column: 17, scope: !2572, inlinedAt: !3905)
!3909 = !DILocation(line: 148, column: 57, scope: !2572, inlinedAt: !3905)
!3910 = !DILocation(line: 147, column: 17, scope: !2572, inlinedAt: !3905)
!3911 = !DILocation(line: 149, column: 7, scope: !2572, inlinedAt: !3905)
!3912 = !DILocation(line: 150, column: 12, scope: !2572, inlinedAt: !3905)
!3913 = !DILocation(line: 151, column: 6, scope: !2572, inlinedAt: !3905)
!3914 = !DILocation(line: 978, column: 10, scope: !3818, inlinedAt: !3898)
!3915 = !DILocation(line: 979, column: 1, scope: !3818, inlinedAt: !3898)
!3916 = !DILocation(line: 990, column: 3, scope: !3890)
!3917 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !278, file: !278, line: 994, type: !3678, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3918)
!3918 = !{!3919, !3920}
!3919 = !DILocalVariable(name: "arg", arg: 1, scope: !3917, file: !278, line: 994, type: !80)
!3920 = !DILocalVariable(name: "argsize", arg: 2, scope: !3917, file: !278, line: 994, type: !61)
!3921 = !DILocation(line: 994, column: 33, scope: !3917)
!3922 = !DILocation(line: 994, column: 45, scope: !3917)
!3923 = !DILocation(line: 973, column: 32, scope: !3818, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 996, column: 10, scope: !3917)
!3925 = !DILocation(line: 973, column: 44, scope: !3818, inlinedAt: !3924)
!3926 = !DILocation(line: 973, column: 58, scope: !3818, inlinedAt: !3924)
!3927 = !DILocation(line: 975, column: 3, scope: !3818, inlinedAt: !3924)
!3928 = !DILocation(line: 976, column: 13, scope: !3818, inlinedAt: !3924)
!3929 = !DILocation(line: 975, column: 26, scope: !3818, inlinedAt: !3924)
!3930 = !DILocation(line: 144, column: 43, scope: !2572, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 977, column: 3, scope: !3818, inlinedAt: !3924)
!3932 = !DILocation(line: 144, column: 51, scope: !2572, inlinedAt: !3931)
!3933 = !DILocation(line: 144, column: 58, scope: !2572, inlinedAt: !3931)
!3934 = !DILocation(line: 146, column: 17, scope: !2572, inlinedAt: !3931)
!3935 = !DILocation(line: 148, column: 57, scope: !2572, inlinedAt: !3931)
!3936 = !DILocation(line: 147, column: 17, scope: !2572, inlinedAt: !3931)
!3937 = !DILocation(line: 149, column: 7, scope: !2572, inlinedAt: !3931)
!3938 = !DILocation(line: 150, column: 12, scope: !2572, inlinedAt: !3931)
!3939 = !DILocation(line: 151, column: 6, scope: !2572, inlinedAt: !3931)
!3940 = !DILocation(line: 978, column: 10, scope: !3818, inlinedAt: !3924)
!3941 = !DILocation(line: 979, column: 1, scope: !3818, inlinedAt: !3924)
!3942 = !DILocation(line: 996, column: 3, scope: !3917)
!3943 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !278, file: !278, line: 1000, type: !3692, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3944)
!3944 = !{!3945, !3946, !3947, !3948}
!3945 = !DILocalVariable(name: "n", arg: 1, scope: !3943, file: !278, line: 1000, type: !63)
!3946 = !DILocalVariable(name: "s", arg: 2, scope: !3943, file: !278, line: 1000, type: !5)
!3947 = !DILocalVariable(name: "arg", arg: 3, scope: !3943, file: !278, line: 1000, type: !80)
!3948 = !DILocalVariable(name: "options", scope: !3943, file: !278, line: 1002, type: !285)
!3949 = !DILocation(line: 187, column: 26, scope: !3700, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 1003, column: 13, scope: !3943)
!3951 = !DILocation(line: 1000, column: 29, scope: !3943)
!3952 = !DILocation(line: 1000, column: 51, scope: !3943)
!3953 = !DILocation(line: 1000, column: 66, scope: !3943)
!3954 = !DILocation(line: 1002, column: 3, scope: !3943)
!3955 = !DILocation(line: 185, column: 48, scope: !3700, inlinedAt: !3950)
!3956 = !DILocation(line: 187, column: 3, scope: !3700, inlinedAt: !3950)
!3957 = !DILocation(line: 188, column: 13, scope: !3716, inlinedAt: !3950)
!3958 = !DILocation(line: 188, column: 7, scope: !3700, inlinedAt: !3950)
!3959 = !DILocation(line: 189, column: 5, scope: !3716, inlinedAt: !3950)
!3960 = !{!3961}
!3961 = distinct !{!3961, !3962, !"quoting_options_from_style: argument 0"}
!3962 = distinct !{!3962, !"quoting_options_from_style"}
!3963 = !DILocation(line: 191, column: 10, scope: !3700, inlinedAt: !3950)
!3964 = !DILocation(line: 192, column: 1, scope: !3700, inlinedAt: !3950)
!3965 = !DILocation(line: 1003, column: 13, scope: !3943)
!3966 = !DILocation(line: 1002, column: 26, scope: !3943)
!3967 = !DILocation(line: 144, column: 43, scope: !2572, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 1004, column: 3, scope: !3943)
!3969 = !DILocation(line: 144, column: 51, scope: !2572, inlinedAt: !3968)
!3970 = !DILocation(line: 144, column: 58, scope: !2572, inlinedAt: !3968)
!3971 = !DILocation(line: 146, column: 17, scope: !2572, inlinedAt: !3968)
!3972 = !DILocation(line: 148, column: 57, scope: !2572, inlinedAt: !3968)
!3973 = !DILocation(line: 147, column: 17, scope: !2572, inlinedAt: !3968)
!3974 = !DILocation(line: 149, column: 7, scope: !2572, inlinedAt: !3968)
!3975 = !DILocation(line: 150, column: 12, scope: !2572, inlinedAt: !3968)
!3976 = !DILocation(line: 151, column: 6, scope: !2572, inlinedAt: !3968)
!3977 = !DILocation(line: 1005, column: 10, scope: !3943)
!3978 = !DILocation(line: 1006, column: 1, scope: !3943)
!3979 = !DILocation(line: 1005, column: 3, scope: !3943)
!3980 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !278, file: !278, line: 1009, type: !3981, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!58, !63, !80, !80, !80}
!3983 = !{!3984, !3985, !3986, !3987}
!3984 = !DILocalVariable(name: "n", arg: 1, scope: !3980, file: !278, line: 1009, type: !63)
!3985 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3980, file: !278, line: 1009, type: !80)
!3986 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3980, file: !278, line: 1010, type: !80)
!3987 = !DILocalVariable(name: "arg", arg: 4, scope: !3980, file: !278, line: 1010, type: !80)
!3988 = !DILocation(line: 1009, column: 24, scope: !3980)
!3989 = !DILocation(line: 1009, column: 39, scope: !3980)
!3990 = !DILocation(line: 1010, column: 32, scope: !3980)
!3991 = !DILocation(line: 1010, column: 57, scope: !3980)
!3992 = !DILocalVariable(name: "n", arg: 1, scope: !3993, file: !278, line: 1017, type: !63)
!3993 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !278, file: !278, line: 1017, type: !3994, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!58, !63, !80, !80, !80, !61}
!3996 = !{!3992, !3997, !3998, !3999, !4000, !4001}
!3997 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3993, file: !278, line: 1017, type: !80)
!3998 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3993, file: !278, line: 1018, type: !80)
!3999 = !DILocalVariable(name: "arg", arg: 4, scope: !3993, file: !278, line: 1019, type: !80)
!4000 = !DILocalVariable(name: "argsize", arg: 5, scope: !3993, file: !278, line: 1019, type: !61)
!4001 = !DILocalVariable(name: "o", scope: !3993, file: !278, line: 1021, type: !285)
!4002 = !DILocation(line: 1017, column: 28, scope: !3993, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 1012, column: 10, scope: !3980)
!4004 = !DILocation(line: 1017, column: 43, scope: !3993, inlinedAt: !4003)
!4005 = !DILocation(line: 1018, column: 36, scope: !3993, inlinedAt: !4003)
!4006 = !DILocation(line: 1019, column: 36, scope: !3993, inlinedAt: !4003)
!4007 = !DILocation(line: 1019, column: 48, scope: !3993, inlinedAt: !4003)
!4008 = !DILocation(line: 1021, column: 3, scope: !3993, inlinedAt: !4003)
!4009 = !DILocation(line: 1021, column: 30, scope: !3993, inlinedAt: !4003)
!4010 = !DILocation(line: 1021, column: 26, scope: !3993, inlinedAt: !4003)
!4011 = !DILocation(line: 171, column: 45, scope: !2621, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 1022, column: 3, scope: !3993, inlinedAt: !4003)
!4013 = !DILocation(line: 172, column: 33, scope: !2621, inlinedAt: !4012)
!4014 = !DILocation(line: 172, column: 57, scope: !2621, inlinedAt: !4012)
!4015 = !DILocation(line: 176, column: 6, scope: !2621, inlinedAt: !4012)
!4016 = !DILocation(line: 176, column: 12, scope: !2621, inlinedAt: !4012)
!4017 = !DILocation(line: 177, column: 8, scope: !2637, inlinedAt: !4012)
!4018 = !DILocation(line: 177, column: 23, scope: !2637, inlinedAt: !4012)
!4019 = !DILocation(line: 177, column: 19, scope: !2637, inlinedAt: !4012)
!4020 = !DILocation(line: 178, column: 5, scope: !2637, inlinedAt: !4012)
!4021 = !DILocation(line: 179, column: 6, scope: !2621, inlinedAt: !4012)
!4022 = !DILocation(line: 179, column: 17, scope: !2621, inlinedAt: !4012)
!4023 = !DILocation(line: 180, column: 6, scope: !2621, inlinedAt: !4012)
!4024 = !DILocation(line: 180, column: 18, scope: !2621, inlinedAt: !4012)
!4025 = !DILocation(line: 1023, column: 10, scope: !3993, inlinedAt: !4003)
!4026 = !DILocation(line: 1024, column: 1, scope: !3993, inlinedAt: !4003)
!4027 = !DILocation(line: 1012, column: 3, scope: !3980)
!4028 = !DILocation(line: 1017, column: 28, scope: !3993)
!4029 = !DILocation(line: 1017, column: 43, scope: !3993)
!4030 = !DILocation(line: 1018, column: 36, scope: !3993)
!4031 = !DILocation(line: 1019, column: 36, scope: !3993)
!4032 = !DILocation(line: 1019, column: 48, scope: !3993)
!4033 = !DILocation(line: 1021, column: 3, scope: !3993)
!4034 = !DILocation(line: 1021, column: 30, scope: !3993)
!4035 = !DILocation(line: 1021, column: 26, scope: !3993)
!4036 = !DILocation(line: 171, column: 45, scope: !2621, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 1022, column: 3, scope: !3993)
!4038 = !DILocation(line: 172, column: 33, scope: !2621, inlinedAt: !4037)
!4039 = !DILocation(line: 172, column: 57, scope: !2621, inlinedAt: !4037)
!4040 = !DILocation(line: 176, column: 6, scope: !2621, inlinedAt: !4037)
!4041 = !DILocation(line: 176, column: 12, scope: !2621, inlinedAt: !4037)
!4042 = !DILocation(line: 177, column: 8, scope: !2637, inlinedAt: !4037)
!4043 = !DILocation(line: 177, column: 23, scope: !2637, inlinedAt: !4037)
!4044 = !DILocation(line: 177, column: 19, scope: !2637, inlinedAt: !4037)
!4045 = !DILocation(line: 178, column: 5, scope: !2637, inlinedAt: !4037)
!4046 = !DILocation(line: 179, column: 6, scope: !2621, inlinedAt: !4037)
!4047 = !DILocation(line: 179, column: 17, scope: !2621, inlinedAt: !4037)
!4048 = !DILocation(line: 180, column: 6, scope: !2621, inlinedAt: !4037)
!4049 = !DILocation(line: 180, column: 18, scope: !2621, inlinedAt: !4037)
!4050 = !DILocation(line: 1023, column: 10, scope: !3993)
!4051 = !DILocation(line: 1024, column: 1, scope: !3993)
!4052 = !DILocation(line: 1023, column: 3, scope: !3993)
!4053 = distinct !DISubprogram(name: "quotearg_custom", scope: !278, file: !278, line: 1027, type: !4054, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !4056)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!58, !80, !80, !80}
!4056 = !{!4057, !4058, !4059}
!4057 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4053, file: !278, line: 1027, type: !80)
!4058 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4053, file: !278, line: 1027, type: !80)
!4059 = !DILocalVariable(name: "arg", arg: 3, scope: !4053, file: !278, line: 1028, type: !80)
!4060 = !DILocation(line: 1027, column: 30, scope: !4053)
!4061 = !DILocation(line: 1027, column: 54, scope: !4053)
!4062 = !DILocation(line: 1028, column: 30, scope: !4053)
!4063 = !DILocation(line: 1009, column: 24, scope: !3980, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 1030, column: 10, scope: !4053)
!4065 = !DILocation(line: 1009, column: 39, scope: !3980, inlinedAt: !4064)
!4066 = !DILocation(line: 1010, column: 32, scope: !3980, inlinedAt: !4064)
!4067 = !DILocation(line: 1010, column: 57, scope: !3980, inlinedAt: !4064)
!4068 = !DILocation(line: 1017, column: 28, scope: !3993, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 1012, column: 10, scope: !3980, inlinedAt: !4064)
!4070 = !DILocation(line: 1017, column: 43, scope: !3993, inlinedAt: !4069)
!4071 = !DILocation(line: 1018, column: 36, scope: !3993, inlinedAt: !4069)
!4072 = !DILocation(line: 1019, column: 36, scope: !3993, inlinedAt: !4069)
!4073 = !DILocation(line: 1019, column: 48, scope: !3993, inlinedAt: !4069)
!4074 = !DILocation(line: 1021, column: 3, scope: !3993, inlinedAt: !4069)
!4075 = !DILocation(line: 1021, column: 30, scope: !3993, inlinedAt: !4069)
!4076 = !DILocation(line: 1021, column: 26, scope: !3993, inlinedAt: !4069)
!4077 = !DILocation(line: 171, column: 45, scope: !2621, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 1022, column: 3, scope: !3993, inlinedAt: !4069)
!4079 = !DILocation(line: 172, column: 33, scope: !2621, inlinedAt: !4078)
!4080 = !DILocation(line: 172, column: 57, scope: !2621, inlinedAt: !4078)
!4081 = !DILocation(line: 176, column: 6, scope: !2621, inlinedAt: !4078)
!4082 = !DILocation(line: 176, column: 12, scope: !2621, inlinedAt: !4078)
!4083 = !DILocation(line: 177, column: 8, scope: !2637, inlinedAt: !4078)
!4084 = !DILocation(line: 177, column: 23, scope: !2637, inlinedAt: !4078)
!4085 = !DILocation(line: 177, column: 19, scope: !2637, inlinedAt: !4078)
!4086 = !DILocation(line: 178, column: 5, scope: !2637, inlinedAt: !4078)
!4087 = !DILocation(line: 179, column: 6, scope: !2621, inlinedAt: !4078)
!4088 = !DILocation(line: 179, column: 17, scope: !2621, inlinedAt: !4078)
!4089 = !DILocation(line: 180, column: 6, scope: !2621, inlinedAt: !4078)
!4090 = !DILocation(line: 180, column: 18, scope: !2621, inlinedAt: !4078)
!4091 = !DILocation(line: 1023, column: 10, scope: !3993, inlinedAt: !4069)
!4092 = !DILocation(line: 1024, column: 1, scope: !3993, inlinedAt: !4069)
!4093 = !DILocation(line: 1030, column: 3, scope: !4053)
!4094 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !278, file: !278, line: 1034, type: !4095, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !4097)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!58, !80, !80, !80, !61}
!4097 = !{!4098, !4099, !4100, !4101}
!4098 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4094, file: !278, line: 1034, type: !80)
!4099 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4094, file: !278, line: 1034, type: !80)
!4100 = !DILocalVariable(name: "arg", arg: 3, scope: !4094, file: !278, line: 1035, type: !80)
!4101 = !DILocalVariable(name: "argsize", arg: 4, scope: !4094, file: !278, line: 1035, type: !61)
!4102 = !DILocation(line: 1034, column: 34, scope: !4094)
!4103 = !DILocation(line: 1034, column: 58, scope: !4094)
!4104 = !DILocation(line: 1035, column: 34, scope: !4094)
!4105 = !DILocation(line: 1035, column: 46, scope: !4094)
!4106 = !DILocation(line: 1017, column: 28, scope: !3993, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 1037, column: 10, scope: !4094)
!4108 = !DILocation(line: 1017, column: 43, scope: !3993, inlinedAt: !4107)
!4109 = !DILocation(line: 1018, column: 36, scope: !3993, inlinedAt: !4107)
!4110 = !DILocation(line: 1019, column: 36, scope: !3993, inlinedAt: !4107)
!4111 = !DILocation(line: 1019, column: 48, scope: !3993, inlinedAt: !4107)
!4112 = !DILocation(line: 1021, column: 3, scope: !3993, inlinedAt: !4107)
!4113 = !DILocation(line: 1021, column: 30, scope: !3993, inlinedAt: !4107)
!4114 = !DILocation(line: 1021, column: 26, scope: !3993, inlinedAt: !4107)
!4115 = !DILocation(line: 171, column: 45, scope: !2621, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 1022, column: 3, scope: !3993, inlinedAt: !4107)
!4117 = !DILocation(line: 172, column: 33, scope: !2621, inlinedAt: !4116)
!4118 = !DILocation(line: 172, column: 57, scope: !2621, inlinedAt: !4116)
!4119 = !DILocation(line: 176, column: 6, scope: !2621, inlinedAt: !4116)
!4120 = !DILocation(line: 176, column: 12, scope: !2621, inlinedAt: !4116)
!4121 = !DILocation(line: 177, column: 8, scope: !2637, inlinedAt: !4116)
!4122 = !DILocation(line: 177, column: 23, scope: !2637, inlinedAt: !4116)
!4123 = !DILocation(line: 177, column: 19, scope: !2637, inlinedAt: !4116)
!4124 = !DILocation(line: 178, column: 5, scope: !2637, inlinedAt: !4116)
!4125 = !DILocation(line: 179, column: 6, scope: !2621, inlinedAt: !4116)
!4126 = !DILocation(line: 179, column: 17, scope: !2621, inlinedAt: !4116)
!4127 = !DILocation(line: 180, column: 6, scope: !2621, inlinedAt: !4116)
!4128 = !DILocation(line: 180, column: 18, scope: !2621, inlinedAt: !4116)
!4129 = !DILocation(line: 1023, column: 10, scope: !3993, inlinedAt: !4107)
!4130 = !DILocation(line: 1024, column: 1, scope: !3993, inlinedAt: !4107)
!4131 = !DILocation(line: 1037, column: 3, scope: !4094)
!4132 = distinct !DISubprogram(name: "quote_n_mem", scope: !278, file: !278, line: 1052, type: !4133, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!80, !63, !80, !61}
!4135 = !{!4136, !4137, !4138}
!4136 = !DILocalVariable(name: "n", arg: 1, scope: !4132, file: !278, line: 1052, type: !63)
!4137 = !DILocalVariable(name: "arg", arg: 2, scope: !4132, file: !278, line: 1052, type: !80)
!4138 = !DILocalVariable(name: "argsize", arg: 3, scope: !4132, file: !278, line: 1052, type: !61)
!4139 = !DILocation(line: 1052, column: 18, scope: !4132)
!4140 = !DILocation(line: 1052, column: 33, scope: !4132)
!4141 = !DILocation(line: 1052, column: 45, scope: !4132)
!4142 = !DILocation(line: 1054, column: 10, scope: !4132)
!4143 = !DILocation(line: 1054, column: 3, scope: !4132)
!4144 = distinct !DISubprogram(name: "quote_mem", scope: !278, file: !278, line: 1058, type: !4145, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!80, !80, !61}
!4147 = !{!4148, !4149}
!4148 = !DILocalVariable(name: "arg", arg: 1, scope: !4144, file: !278, line: 1058, type: !80)
!4149 = !DILocalVariable(name: "argsize", arg: 2, scope: !4144, file: !278, line: 1058, type: !61)
!4150 = !DILocation(line: 1058, column: 24, scope: !4144)
!4151 = !DILocation(line: 1058, column: 36, scope: !4144)
!4152 = !DILocation(line: 1052, column: 18, scope: !4132, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 1060, column: 10, scope: !4144)
!4154 = !DILocation(line: 1052, column: 33, scope: !4132, inlinedAt: !4153)
!4155 = !DILocation(line: 1052, column: 45, scope: !4132, inlinedAt: !4153)
!4156 = !DILocation(line: 1054, column: 10, scope: !4132, inlinedAt: !4153)
!4157 = !DILocation(line: 1060, column: 3, scope: !4144)
!4158 = distinct !DISubprogram(name: "quote_n", scope: !278, file: !278, line: 1064, type: !4159, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!80, !63, !80}
!4161 = !{!4162, !4163}
!4162 = !DILocalVariable(name: "n", arg: 1, scope: !4158, file: !278, line: 1064, type: !63)
!4163 = !DILocalVariable(name: "arg", arg: 2, scope: !4158, file: !278, line: 1064, type: !80)
!4164 = !DILocation(line: 1064, column: 14, scope: !4158)
!4165 = !DILocation(line: 1064, column: 29, scope: !4158)
!4166 = !DILocation(line: 1052, column: 18, scope: !4132, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 1066, column: 10, scope: !4158)
!4168 = !DILocation(line: 1052, column: 33, scope: !4132, inlinedAt: !4167)
!4169 = !DILocation(line: 1052, column: 45, scope: !4132, inlinedAt: !4167)
!4170 = !DILocation(line: 1054, column: 10, scope: !4132, inlinedAt: !4167)
!4171 = !DILocation(line: 1066, column: 3, scope: !4158)
!4172 = distinct !DISubprogram(name: "quote", scope: !278, file: !278, line: 1070, type: !4173, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!80, !80}
!4175 = !{!4176}
!4176 = !DILocalVariable(name: "arg", arg: 1, scope: !4172, file: !278, line: 1070, type: !80)
!4177 = !DILocation(line: 1070, column: 20, scope: !4172)
!4178 = !DILocation(line: 1064, column: 14, scope: !4158, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 1072, column: 10, scope: !4172)
!4180 = !DILocation(line: 1064, column: 29, scope: !4158, inlinedAt: !4179)
!4181 = !DILocation(line: 1052, column: 18, scope: !4132, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 1066, column: 10, scope: !4158, inlinedAt: !4179)
!4183 = !DILocation(line: 1052, column: 33, scope: !4132, inlinedAt: !4182)
!4184 = !DILocation(line: 1052, column: 45, scope: !4132, inlinedAt: !4182)
!4185 = !DILocation(line: 1054, column: 10, scope: !4132, inlinedAt: !4182)
!4186 = !DILocation(line: 1072, column: 3, scope: !4172)
!4187 = distinct !DISubprogram(name: "dup_safer", scope: !4188, file: !4188, line: 31, type: !1292, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !714, variables: !4189)
!4188 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4189 = !{!4190}
!4190 = !DILocalVariable(name: "fd", arg: 1, scope: !4187, file: !4188, line: 31, type: !63)
!4191 = !DILocation(line: 31, column: 16, scope: !4187)
!4192 = !DILocation(line: 33, column: 10, scope: !4187)
!4193 = !DILocation(line: 33, column: 3, scope: !4187)
!4194 = distinct !DISubprogram(name: "version_etc_arn", scope: !720, file: !720, line: 62, type: !4195, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !716, variables: !4238)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4197, !80, !80, !80, !4237, !61}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4199, file: !118, line: 242, baseType: !63, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4199, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4199, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4199, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4199, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4199, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4199, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4199, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4199, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4199, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4199, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4199, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4199, file: !118, line: 260, baseType: !4214, size: 64, offset: 768)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !4216)
!4216 = !{!4217, !4218, !4220}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4215, file: !118, line: 157, baseType: !4214, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4215, file: !118, line: 158, baseType: !4219, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4215, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4199, file: !118, line: 262, baseType: !4219, size: 64, offset: 832)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4199, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4199, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4199, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4199, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4199, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4199, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4199, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4199, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4199, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4199, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4199, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4199, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4199, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4199, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4199, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244}
!4239 = !DILocalVariable(name: "stream", arg: 1, scope: !4194, file: !720, line: 62, type: !4197)
!4240 = !DILocalVariable(name: "command_name", arg: 2, scope: !4194, file: !720, line: 63, type: !80)
!4241 = !DILocalVariable(name: "package", arg: 3, scope: !4194, file: !720, line: 63, type: !80)
!4242 = !DILocalVariable(name: "version", arg: 4, scope: !4194, file: !720, line: 64, type: !80)
!4243 = !DILocalVariable(name: "authors", arg: 5, scope: !4194, file: !720, line: 65, type: !4237)
!4244 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4194, file: !720, line: 65, type: !61)
!4245 = !DILocation(line: 62, column: 24, scope: !4194)
!4246 = !DILocation(line: 63, column: 30, scope: !4194)
!4247 = !DILocation(line: 63, column: 56, scope: !4194)
!4248 = !DILocation(line: 64, column: 30, scope: !4194)
!4249 = !DILocation(line: 65, column: 39, scope: !4194)
!4250 = !DILocation(line: 65, column: 55, scope: !4194)
!4251 = !DILocation(line: 67, column: 7, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4194, file: !720, line: 67, column: 7)
!4253 = !DILocation(line: 67, column: 7, scope: !4194)
!4254 = !DILocation(line: 68, column: 5, scope: !4252)
!4255 = !DILocation(line: 70, column: 5, scope: !4252)
!4256 = !DILocation(line: 84, column: 3, scope: !4194)
!4257 = !DILocation(line: 86, column: 3, scope: !4194)
!4258 = !DILocation(line: 95, column: 3, scope: !4194)
!4259 = !DILocation(line: 99, column: 7, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4194, file: !720, line: 96, column: 5)
!4261 = !DILocation(line: 102, column: 7, scope: !4260)
!4262 = !DILocation(line: 103, column: 7, scope: !4260)
!4263 = !DILocation(line: 106, column: 7, scope: !4260)
!4264 = !DILocation(line: 107, column: 7, scope: !4260)
!4265 = !DILocation(line: 110, column: 7, scope: !4260)
!4266 = !DILocation(line: 112, column: 7, scope: !4260)
!4267 = !DILocation(line: 117, column: 7, scope: !4260)
!4268 = !DILocation(line: 119, column: 7, scope: !4260)
!4269 = !DILocation(line: 124, column: 7, scope: !4260)
!4270 = !DILocation(line: 126, column: 7, scope: !4260)
!4271 = !DILocation(line: 131, column: 7, scope: !4260)
!4272 = !DILocation(line: 134, column: 7, scope: !4260)
!4273 = !DILocation(line: 139, column: 7, scope: !4260)
!4274 = !DILocation(line: 142, column: 7, scope: !4260)
!4275 = !DILocation(line: 147, column: 7, scope: !4260)
!4276 = !DILocation(line: 151, column: 7, scope: !4260)
!4277 = !DILocation(line: 156, column: 7, scope: !4260)
!4278 = !DILocation(line: 160, column: 7, scope: !4260)
!4279 = !DILocation(line: 167, column: 7, scope: !4260)
!4280 = !DILocation(line: 171, column: 7, scope: !4260)
!4281 = !DILocation(line: 173, column: 1, scope: !4194)
!4282 = distinct !DISubprogram(name: "version_etc_ar", scope: !720, file: !720, line: 180, type: !4283, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !716, variables: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{null, !4197, !80, !80, !80, !4237}
!4285 = !{!4286, !4287, !4288, !4289, !4290, !4291}
!4286 = !DILocalVariable(name: "stream", arg: 1, scope: !4282, file: !720, line: 180, type: !4197)
!4287 = !DILocalVariable(name: "command_name", arg: 2, scope: !4282, file: !720, line: 181, type: !80)
!4288 = !DILocalVariable(name: "package", arg: 3, scope: !4282, file: !720, line: 181, type: !80)
!4289 = !DILocalVariable(name: "version", arg: 4, scope: !4282, file: !720, line: 182, type: !80)
!4290 = !DILocalVariable(name: "authors", arg: 5, scope: !4282, file: !720, line: 182, type: !4237)
!4291 = !DILocalVariable(name: "n_authors", scope: !4282, file: !720, line: 184, type: !61)
!4292 = !DILocation(line: 180, column: 23, scope: !4282)
!4293 = !DILocation(line: 181, column: 29, scope: !4282)
!4294 = !DILocation(line: 181, column: 55, scope: !4282)
!4295 = !DILocation(line: 182, column: 29, scope: !4282)
!4296 = !DILocation(line: 182, column: 59, scope: !4282)
!4297 = !DILocation(line: 184, column: 10, scope: !4282)
!4298 = !DILocation(line: 186, column: 8, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4282, file: !720, line: 186, column: 3)
!4300 = !DILocation(line: 186, column: 23, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4299, file: !720, line: 186, column: 3)
!4302 = !DILocation(line: 186, column: 3, scope: !4299)
!4303 = !DILocation(line: 186, column: 52, scope: !4301)
!4304 = distinct !{!4304, !4302, !4305}
!4305 = !DILocation(line: 187, column: 5, scope: !4299)
!4306 = !DILocation(line: 188, column: 3, scope: !4282)
!4307 = !DILocation(line: 189, column: 1, scope: !4282)
!4308 = distinct !DISubprogram(name: "version_etc_va", scope: !720, file: !720, line: 196, type: !4309, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !716, variables: !4318)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{null, !4197, !80, !80, !80, !4311}
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !717, line: 189, size: 192, elements: !4313)
!4313 = !{!4314, !4315, !4316, !4317}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4312, file: !717, line: 189, baseType: !291, size: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4312, file: !717, line: 189, baseType: !291, size: 32, offset: 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4312, file: !717, line: 189, baseType: !60, size: 64, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4312, file: !717, line: 189, baseType: !60, size: 64, offset: 128)
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325}
!4319 = !DILocalVariable(name: "stream", arg: 1, scope: !4308, file: !720, line: 196, type: !4197)
!4320 = !DILocalVariable(name: "command_name", arg: 2, scope: !4308, file: !720, line: 197, type: !80)
!4321 = !DILocalVariable(name: "package", arg: 3, scope: !4308, file: !720, line: 197, type: !80)
!4322 = !DILocalVariable(name: "version", arg: 4, scope: !4308, file: !720, line: 198, type: !80)
!4323 = !DILocalVariable(name: "authors", arg: 5, scope: !4308, file: !720, line: 198, type: !4311)
!4324 = !DILocalVariable(name: "n_authors", scope: !4308, file: !720, line: 200, type: !61)
!4325 = !DILocalVariable(name: "authtab", scope: !4308, file: !720, line: 201, type: !4326)
!4326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !281)
!4327 = !DILocation(line: 196, column: 23, scope: !4308)
!4328 = !DILocation(line: 197, column: 29, scope: !4308)
!4329 = !DILocation(line: 197, column: 55, scope: !4308)
!4330 = !DILocation(line: 198, column: 29, scope: !4308)
!4331 = !DILocation(line: 198, column: 46, scope: !4308)
!4332 = !DILocation(line: 201, column: 3, scope: !4308)
!4333 = !DILocation(line: 201, column: 15, scope: !4308)
!4334 = !DILocation(line: 200, column: 10, scope: !4308)
!4335 = !DILocation(line: 205, column: 35, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !720, line: 203, column: 3)
!4337 = distinct !DILexicalBlock(scope: !4308, file: !720, line: 203, column: 3)
!4338 = !DILocation(line: 205, column: 14, scope: !4336)
!4339 = !DILocation(line: 205, column: 33, scope: !4336)
!4340 = !DILocation(line: 205, column: 67, scope: !4336)
!4341 = !DILocation(line: 203, column: 3, scope: !4337)
!4342 = !DILocation(line: 208, column: 3, scope: !4308)
!4343 = !DILocation(line: 210, column: 1, scope: !4308)
!4344 = distinct !DISubprogram(name: "version_etc", scope: !720, file: !720, line: 227, type: !4345, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !716, variables: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{null, !4197, !80, !80, !80, null}
!4347 = !{!4348, !4349, !4350, !4351, !4352}
!4348 = !DILocalVariable(name: "stream", arg: 1, scope: !4344, file: !720, line: 227, type: !4197)
!4349 = !DILocalVariable(name: "command_name", arg: 2, scope: !4344, file: !720, line: 228, type: !80)
!4350 = !DILocalVariable(name: "package", arg: 3, scope: !4344, file: !720, line: 228, type: !80)
!4351 = !DILocalVariable(name: "version", arg: 4, scope: !4344, file: !720, line: 229, type: !80)
!4352 = !DILocalVariable(name: "authors", scope: !4344, file: !720, line: 231, type: !4353)
!4353 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2329, line: 46, baseType: !4354)
!4354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !341, line: 48, baseType: !4355)
!4355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !717, line: 231, baseType: !4356)
!4356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4312, size: 192, elements: !151)
!4357 = !DILocation(line: 227, column: 20, scope: !4344)
!4358 = !DILocation(line: 228, column: 26, scope: !4344)
!4359 = !DILocation(line: 228, column: 52, scope: !4344)
!4360 = !DILocation(line: 229, column: 26, scope: !4344)
!4361 = !DILocation(line: 231, column: 3, scope: !4344)
!4362 = !DILocation(line: 231, column: 11, scope: !4344)
!4363 = !DILocation(line: 233, column: 3, scope: !4344)
!4364 = !DILocation(line: 234, column: 3, scope: !4344)
!4365 = !DILocation(line: 235, column: 3, scope: !4344)
!4366 = !DILocation(line: 236, column: 1, scope: !4344)
!4367 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !720, file: !720, line: 239, type: !784, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !716, variables: !228)
!4368 = !DILocation(line: 245, column: 3, scope: !4367)
!4369 = !DILocation(line: 251, column: 3, scope: !4367)
!4370 = !DILocation(line: 256, column: 3, scope: !4367)
!4371 = !DILocation(line: 258, column: 1, scope: !4367)
!4372 = distinct !DISubprogram(name: "xnmalloc", scope: !728, file: !728, line: 105, type: !4373, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!60, !61, !61}
!4375 = !{!4376, !4377}
!4376 = !DILocalVariable(name: "n", arg: 1, scope: !4372, file: !728, line: 105, type: !61)
!4377 = !DILocalVariable(name: "s", arg: 2, scope: !4372, file: !728, line: 105, type: !61)
!4378 = !DILocation(line: 105, column: 18, scope: !4372)
!4379 = !DILocation(line: 105, column: 28, scope: !4372)
!4380 = !DILocation(line: 107, column: 7, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4372, file: !728, line: 107, column: 7)
!4382 = !DILocation(line: 107, column: 7, scope: !4372)
!4383 = !DILocation(line: 108, column: 5, scope: !4381)
!4384 = !DILocation(line: 109, column: 21, scope: !4372)
!4385 = !DILocalVariable(name: "n", arg: 1, scope: !4386, file: !4387, line: 39, type: !61)
!4386 = distinct !DISubprogram(name: "xmalloc", scope: !4387, file: !4387, line: 39, type: !4388, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4390)
!4387 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!60, !61}
!4390 = !{!4385, !4391}
!4391 = !DILocalVariable(name: "p", scope: !4386, file: !4387, line: 41, type: !60)
!4392 = !DILocation(line: 39, column: 17, scope: !4386, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 109, column: 10, scope: !4372)
!4394 = !DILocation(line: 41, column: 13, scope: !4386, inlinedAt: !4393)
!4395 = !DILocation(line: 41, column: 9, scope: !4386, inlinedAt: !4393)
!4396 = !DILocation(line: 42, column: 8, scope: !4397, inlinedAt: !4393)
!4397 = distinct !DILexicalBlock(scope: !4386, file: !4387, line: 42, column: 7)
!4398 = !DILocation(line: 42, column: 15, scope: !4397, inlinedAt: !4393)
!4399 = !DILocation(line: 42, column: 10, scope: !4397, inlinedAt: !4393)
!4400 = !DILocation(line: 43, column: 5, scope: !4397, inlinedAt: !4393)
!4401 = !DILocation(line: 109, column: 3, scope: !4372)
!4402 = !DILocation(line: 39, column: 17, scope: !4386)
!4403 = !DILocation(line: 41, column: 13, scope: !4386)
!4404 = !DILocation(line: 41, column: 9, scope: !4386)
!4405 = !DILocation(line: 42, column: 8, scope: !4397)
!4406 = !DILocation(line: 42, column: 15, scope: !4397)
!4407 = !DILocation(line: 42, column: 10, scope: !4397)
!4408 = !DILocation(line: 43, column: 5, scope: !4397)
!4409 = !DILocation(line: 44, column: 3, scope: !4386)
!4410 = distinct !DISubprogram(name: "xnrealloc", scope: !728, file: !728, line: 118, type: !4411, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4413)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!60, !60, !61, !61}
!4413 = !{!4414, !4415, !4416}
!4414 = !DILocalVariable(name: "p", arg: 1, scope: !4410, file: !728, line: 118, type: !60)
!4415 = !DILocalVariable(name: "n", arg: 2, scope: !4410, file: !728, line: 118, type: !61)
!4416 = !DILocalVariable(name: "s", arg: 3, scope: !4410, file: !728, line: 118, type: !61)
!4417 = !DILocation(line: 118, column: 18, scope: !4410)
!4418 = !DILocation(line: 118, column: 28, scope: !4410)
!4419 = !DILocation(line: 118, column: 38, scope: !4410)
!4420 = !DILocation(line: 120, column: 7, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4410, file: !728, line: 120, column: 7)
!4422 = !DILocation(line: 120, column: 7, scope: !4410)
!4423 = !DILocation(line: 121, column: 5, scope: !4421)
!4424 = !DILocation(line: 122, column: 25, scope: !4410)
!4425 = !DILocalVariable(name: "p", arg: 1, scope: !4426, file: !4387, line: 51, type: !60)
!4426 = distinct !DISubprogram(name: "xrealloc", scope: !4387, file: !4387, line: 51, type: !4427, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4429)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!60, !60, !61}
!4429 = !{!4425, !4430}
!4430 = !DILocalVariable(name: "n", arg: 2, scope: !4426, file: !4387, line: 51, type: !61)
!4431 = !DILocation(line: 51, column: 17, scope: !4426, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 122, column: 10, scope: !4410)
!4433 = !DILocation(line: 51, column: 27, scope: !4426, inlinedAt: !4432)
!4434 = !DILocation(line: 53, column: 8, scope: !4435, inlinedAt: !4432)
!4435 = distinct !DILexicalBlock(scope: !4426, file: !4387, line: 53, column: 7)
!4436 = !DILocation(line: 53, column: 13, scope: !4435, inlinedAt: !4432)
!4437 = !DILocation(line: 53, column: 10, scope: !4435, inlinedAt: !4432)
!4438 = !DILocation(line: 57, column: 7, scope: !4439, inlinedAt: !4432)
!4439 = distinct !DILexicalBlock(scope: !4435, file: !4387, line: 54, column: 5)
!4440 = !DILocation(line: 58, column: 7, scope: !4439, inlinedAt: !4432)
!4441 = !DILocation(line: 61, column: 7, scope: !4426, inlinedAt: !4432)
!4442 = !DILocation(line: 62, column: 8, scope: !4443, inlinedAt: !4432)
!4443 = distinct !DILexicalBlock(scope: !4426, file: !4387, line: 62, column: 7)
!4444 = !DILocation(line: 62, column: 13, scope: !4443, inlinedAt: !4432)
!4445 = !DILocation(line: 62, column: 10, scope: !4443, inlinedAt: !4432)
!4446 = !DILocation(line: 63, column: 5, scope: !4443, inlinedAt: !4432)
!4447 = !DILocation(line: 122, column: 3, scope: !4410)
!4448 = !DILocation(line: 51, column: 17, scope: !4426)
!4449 = !DILocation(line: 51, column: 27, scope: !4426)
!4450 = !DILocation(line: 53, column: 8, scope: !4435)
!4451 = !DILocation(line: 53, column: 13, scope: !4435)
!4452 = !DILocation(line: 53, column: 10, scope: !4435)
!4453 = !DILocation(line: 57, column: 7, scope: !4439)
!4454 = !DILocation(line: 58, column: 7, scope: !4439)
!4455 = !DILocation(line: 61, column: 7, scope: !4426)
!4456 = !DILocation(line: 62, column: 8, scope: !4443)
!4457 = !DILocation(line: 62, column: 13, scope: !4443)
!4458 = !DILocation(line: 62, column: 10, scope: !4443)
!4459 = !DILocation(line: 63, column: 5, scope: !4443)
!4460 = !DILocation(line: 65, column: 1, scope: !4426)
!4461 = !DILocation(line: 180, column: 19, scope: !729)
!4462 = !DILocation(line: 180, column: 30, scope: !729)
!4463 = !DILocation(line: 180, column: 41, scope: !729)
!4464 = !DILocation(line: 182, column: 14, scope: !729)
!4465 = !DILocation(line: 182, column: 10, scope: !729)
!4466 = !DILocation(line: 184, column: 9, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !729, file: !728, line: 184, column: 7)
!4468 = !DILocation(line: 184, column: 7, scope: !729)
!4469 = !DILocation(line: 186, column: 13, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !728, line: 186, column: 11)
!4471 = distinct !DILexicalBlock(scope: !4467, file: !728, line: 185, column: 5)
!4472 = !DILocation(line: 186, column: 11, scope: !4471)
!4473 = !DILocation(line: 194, column: 30, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4470, file: !728, line: 187, column: 9)
!4475 = !DILocation(line: 195, column: 16, scope: !4474)
!4476 = !DILocation(line: 195, column: 13, scope: !4474)
!4477 = !DILocation(line: 196, column: 9, scope: !4474)
!4478 = !DILocation(line: 204, column: 69, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !728, line: 204, column: 11)
!4480 = distinct !DILexicalBlock(scope: !4467, file: !728, line: 199, column: 5)
!4481 = !DILocation(line: 205, column: 11, scope: !4479)
!4482 = !DILocation(line: 204, column: 11, scope: !4480)
!4483 = !DILocation(line: 206, column: 9, scope: !4479)
!4484 = !DILocation(line: 210, column: 7, scope: !729)
!4485 = !DILocation(line: 211, column: 25, scope: !729)
!4486 = !DILocation(line: 51, column: 17, scope: !4426, inlinedAt: !4487)
!4487 = distinct !DILocation(line: 211, column: 10, scope: !729)
!4488 = !DILocation(line: 51, column: 27, scope: !4426, inlinedAt: !4487)
!4489 = !DILocation(line: 53, column: 10, scope: !4435, inlinedAt: !4487)
!4490 = !DILocation(line: 207, column: 14, scope: !4480)
!4491 = !DILocation(line: 207, column: 18, scope: !4480)
!4492 = !DILocation(line: 207, column: 9, scope: !4480)
!4493 = !DILocation(line: 53, column: 8, scope: !4435, inlinedAt: !4487)
!4494 = !DILocation(line: 57, column: 7, scope: !4439, inlinedAt: !4487)
!4495 = !DILocation(line: 58, column: 7, scope: !4439, inlinedAt: !4487)
!4496 = !DILocation(line: 61, column: 7, scope: !4426, inlinedAt: !4487)
!4497 = !DILocation(line: 62, column: 8, scope: !4443, inlinedAt: !4487)
!4498 = !DILocation(line: 62, column: 13, scope: !4443, inlinedAt: !4487)
!4499 = !DILocation(line: 62, column: 10, scope: !4443, inlinedAt: !4487)
!4500 = !DILocation(line: 63, column: 5, scope: !4443, inlinedAt: !4487)
!4501 = !DILocation(line: 211, column: 3, scope: !729)
!4502 = distinct !DISubprogram(name: "xcharalloc", scope: !728, file: !728, line: 220, type: !3467, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4503)
!4503 = !{!4504}
!4504 = !DILocalVariable(name: "n", arg: 1, scope: !4502, file: !728, line: 220, type: !61)
!4505 = !DILocation(line: 220, column: 20, scope: !4502)
!4506 = !DILocation(line: 39, column: 17, scope: !4386, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 222, column: 10, scope: !4502)
!4508 = !DILocation(line: 41, column: 13, scope: !4386, inlinedAt: !4507)
!4509 = !DILocation(line: 41, column: 9, scope: !4386, inlinedAt: !4507)
!4510 = !DILocation(line: 42, column: 8, scope: !4397, inlinedAt: !4507)
!4511 = !DILocation(line: 42, column: 15, scope: !4397, inlinedAt: !4507)
!4512 = !DILocation(line: 42, column: 10, scope: !4397, inlinedAt: !4507)
!4513 = !DILocation(line: 43, column: 5, scope: !4397, inlinedAt: !4507)
!4514 = !DILocation(line: 222, column: 3, scope: !4502)
!4515 = distinct !DISubprogram(name: "x2realloc", scope: !4387, file: !4387, line: 74, type: !4516, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4518)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!60, !60, !732}
!4518 = !{!4519, !4520}
!4519 = !DILocalVariable(name: "p", arg: 1, scope: !4515, file: !4387, line: 74, type: !60)
!4520 = !DILocalVariable(name: "pn", arg: 2, scope: !4515, file: !4387, line: 74, type: !732)
!4521 = !DILocation(line: 74, column: 18, scope: !4515)
!4522 = !DILocation(line: 74, column: 29, scope: !4515)
!4523 = !DILocation(line: 180, column: 19, scope: !729, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 76, column: 10, scope: !4515)
!4525 = !DILocation(line: 180, column: 30, scope: !729, inlinedAt: !4524)
!4526 = !DILocation(line: 180, column: 41, scope: !729, inlinedAt: !4524)
!4527 = !DILocation(line: 182, column: 14, scope: !729, inlinedAt: !4524)
!4528 = !DILocation(line: 182, column: 10, scope: !729, inlinedAt: !4524)
!4529 = !DILocation(line: 184, column: 9, scope: !4467, inlinedAt: !4524)
!4530 = !DILocation(line: 184, column: 7, scope: !729, inlinedAt: !4524)
!4531 = !DILocation(line: 186, column: 13, scope: !4470, inlinedAt: !4524)
!4532 = !DILocation(line: 186, column: 11, scope: !4471, inlinedAt: !4524)
!4533 = !DILocation(line: 210, column: 7, scope: !729, inlinedAt: !4524)
!4534 = !DILocation(line: 51, column: 17, scope: !4426, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 211, column: 10, scope: !729, inlinedAt: !4524)
!4536 = !DILocation(line: 51, column: 27, scope: !4426, inlinedAt: !4535)
!4537 = !DILocation(line: 53, column: 10, scope: !4435, inlinedAt: !4535)
!4538 = !DILocation(line: 205, column: 11, scope: !4479, inlinedAt: !4524)
!4539 = !DILocation(line: 204, column: 11, scope: !4480, inlinedAt: !4524)
!4540 = !DILocation(line: 206, column: 9, scope: !4479, inlinedAt: !4524)
!4541 = !DILocation(line: 207, column: 14, scope: !4480, inlinedAt: !4524)
!4542 = !DILocation(line: 207, column: 18, scope: !4480, inlinedAt: !4524)
!4543 = !DILocation(line: 207, column: 9, scope: !4480, inlinedAt: !4524)
!4544 = !DILocation(line: 53, column: 8, scope: !4435, inlinedAt: !4535)
!4545 = !DILocation(line: 57, column: 7, scope: !4439, inlinedAt: !4535)
!4546 = !DILocation(line: 58, column: 7, scope: !4439, inlinedAt: !4535)
!4547 = !DILocation(line: 61, column: 7, scope: !4426, inlinedAt: !4535)
!4548 = !DILocation(line: 62, column: 8, scope: !4443, inlinedAt: !4535)
!4549 = !DILocation(line: 62, column: 13, scope: !4443, inlinedAt: !4535)
!4550 = !DILocation(line: 62, column: 10, scope: !4443, inlinedAt: !4535)
!4551 = !DILocation(line: 63, column: 5, scope: !4443, inlinedAt: !4535)
!4552 = !DILocation(line: 76, column: 3, scope: !4515)
!4553 = distinct !DISubprogram(name: "xzalloc", scope: !4387, file: !4387, line: 84, type: !4388, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4554)
!4554 = !{!4555}
!4555 = !DILocalVariable(name: "s", arg: 1, scope: !4553, file: !4387, line: 84, type: !61)
!4556 = !DILocation(line: 84, column: 17, scope: !4553)
!4557 = !DILocation(line: 39, column: 17, scope: !4386, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 86, column: 18, scope: !4553)
!4559 = !DILocation(line: 41, column: 13, scope: !4386, inlinedAt: !4558)
!4560 = !DILocation(line: 41, column: 9, scope: !4386, inlinedAt: !4558)
!4561 = !DILocation(line: 42, column: 8, scope: !4397, inlinedAt: !4558)
!4562 = !DILocation(line: 42, column: 15, scope: !4397, inlinedAt: !4558)
!4563 = !DILocation(line: 42, column: 10, scope: !4397, inlinedAt: !4558)
!4564 = !DILocation(line: 43, column: 5, scope: !4397, inlinedAt: !4558)
!4565 = !DILocation(line: 86, column: 10, scope: !4553)
!4566 = !DILocation(line: 86, column: 3, scope: !4553)
!4567 = distinct !DISubprogram(name: "xcalloc", scope: !4387, file: !4387, line: 93, type: !4373, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4568)
!4568 = !{!4569, !4570, !4571}
!4569 = !DILocalVariable(name: "n", arg: 1, scope: !4567, file: !4387, line: 93, type: !61)
!4570 = !DILocalVariable(name: "s", arg: 2, scope: !4567, file: !4387, line: 93, type: !61)
!4571 = !DILocalVariable(name: "p", scope: !4567, file: !4387, line: 95, type: !60)
!4572 = !DILocation(line: 93, column: 17, scope: !4567)
!4573 = !DILocation(line: 93, column: 27, scope: !4567)
!4574 = !DILocation(line: 100, column: 7, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4567, file: !4387, line: 100, column: 7)
!4576 = !DILocation(line: 101, column: 7, scope: !4575)
!4577 = !DILocation(line: 101, column: 18, scope: !4575)
!4578 = !DILocation(line: 95, column: 9, scope: !4567)
!4579 = !DILocation(line: 101, column: 16, scope: !4575)
!4580 = !DILocation(line: 100, column: 7, scope: !4567)
!4581 = !DILocation(line: 102, column: 5, scope: !4575)
!4582 = !DILocation(line: 103, column: 3, scope: !4567)
!4583 = distinct !DISubprogram(name: "xmemdup", scope: !4387, file: !4387, line: 111, type: !850, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4584)
!4584 = !{!4585, !4586}
!4585 = !DILocalVariable(name: "p", arg: 1, scope: !4583, file: !4387, line: 111, type: !852)
!4586 = !DILocalVariable(name: "s", arg: 2, scope: !4583, file: !4387, line: 111, type: !61)
!4587 = !DILocation(line: 111, column: 22, scope: !4583)
!4588 = !DILocation(line: 111, column: 32, scope: !4583)
!4589 = !DILocation(line: 39, column: 17, scope: !4386, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 113, column: 18, scope: !4583)
!4591 = !DILocation(line: 41, column: 13, scope: !4386, inlinedAt: !4590)
!4592 = !DILocation(line: 41, column: 9, scope: !4386, inlinedAt: !4590)
!4593 = !DILocation(line: 42, column: 8, scope: !4397, inlinedAt: !4590)
!4594 = !DILocation(line: 42, column: 15, scope: !4397, inlinedAt: !4590)
!4595 = !DILocation(line: 42, column: 10, scope: !4397, inlinedAt: !4590)
!4596 = !DILocation(line: 43, column: 5, scope: !4397, inlinedAt: !4590)
!4597 = !DILocation(line: 113, column: 10, scope: !4583)
!4598 = !DILocation(line: 113, column: 3, scope: !4583)
!4599 = distinct !DISubprogram(name: "xstrdup", scope: !4387, file: !4387, line: 119, type: !3667, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4600)
!4600 = !{!4601}
!4601 = !DILocalVariable(name: "string", arg: 1, scope: !4599, file: !4387, line: 119, type: !80)
!4602 = !DILocation(line: 119, column: 22, scope: !4599)
!4603 = !DILocation(line: 121, column: 27, scope: !4599)
!4604 = !DILocation(line: 121, column: 43, scope: !4599)
!4605 = !DILocation(line: 111, column: 22, scope: !4583, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 121, column: 10, scope: !4599)
!4607 = !DILocation(line: 111, column: 32, scope: !4583, inlinedAt: !4606)
!4608 = !DILocation(line: 39, column: 17, scope: !4386, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 113, column: 18, scope: !4583, inlinedAt: !4606)
!4610 = !DILocation(line: 41, column: 13, scope: !4386, inlinedAt: !4609)
!4611 = !DILocation(line: 41, column: 9, scope: !4386, inlinedAt: !4609)
!4612 = !DILocation(line: 42, column: 8, scope: !4397, inlinedAt: !4609)
!4613 = !DILocation(line: 42, column: 15, scope: !4397, inlinedAt: !4609)
!4614 = !DILocation(line: 42, column: 10, scope: !4397, inlinedAt: !4609)
!4615 = !DILocation(line: 43, column: 5, scope: !4397, inlinedAt: !4609)
!4616 = !DILocation(line: 113, column: 10, scope: !4583, inlinedAt: !4606)
!4617 = !DILocation(line: 121, column: 3, scope: !4599)
!4618 = distinct !DISubprogram(name: "xalloc_die", scope: !4619, file: !4619, line: 32, type: !784, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !741, variables: !228)
!4619 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4620 = !DILocation(line: 34, column: 10, scope: !4618)
!4621 = !DILocation(line: 34, column: 33, scope: !4618)
!4622 = !DILocation(line: 34, column: 3, scope: !4618)
!4623 = !DILocation(line: 40, column: 3, scope: !4618)
!4624 = distinct !DISubprogram(name: "rpl_calloc", scope: !4625, file: !4625, line: 42, type: !4373, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !743, variables: !4626)
!4625 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4626 = !{!4627, !4628, !4629, !4630}
!4627 = !DILocalVariable(name: "n", arg: 1, scope: !4624, file: !4625, line: 42, type: !61)
!4628 = !DILocalVariable(name: "s", arg: 2, scope: !4624, file: !4625, line: 42, type: !61)
!4629 = !DILocalVariable(name: "result", scope: !4624, file: !4625, line: 44, type: !60)
!4630 = !DILocalVariable(name: "bytes", scope: !4631, file: !4625, line: 56, type: !61)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !4625, line: 53, column: 5)
!4632 = distinct !DILexicalBlock(scope: !4624, file: !4625, line: 47, column: 7)
!4633 = !DILocation(line: 42, column: 20, scope: !4624)
!4634 = !DILocation(line: 42, column: 30, scope: !4624)
!4635 = !DILocation(line: 47, column: 9, scope: !4632)
!4636 = !DILocation(line: 47, column: 19, scope: !4632)
!4637 = !DILocation(line: 47, column: 14, scope: !4632)
!4638 = !DILocation(line: 56, column: 24, scope: !4631)
!4639 = !DILocation(line: 56, column: 14, scope: !4631)
!4640 = !DILocation(line: 57, column: 17, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4631, file: !4625, line: 57, column: 11)
!4642 = !DILocation(line: 57, column: 21, scope: !4641)
!4643 = !DILocation(line: 57, column: 11, scope: !4631)
!4644 = !DILocation(line: 59, column: 11, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4641, file: !4625, line: 58, column: 9)
!4646 = !DILocation(line: 59, column: 17, scope: !4645)
!4647 = !DILocation(line: 65, column: 12, scope: !4624)
!4648 = !DILocation(line: 44, column: 9, scope: !4624)
!4649 = !DILocation(line: 72, column: 3, scope: !4624)
!4650 = !DILocation(line: 73, column: 1, scope: !4624)
!4651 = distinct !DISubprogram(name: "rpl_fclose", scope: !4652, file: !4652, line: 56, type: !4653, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !745, variables: !4695)
!4652 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!63, !4655}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4657)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4658)
!4658 = !{!4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4657, file: !118, line: 242, baseType: !63, size: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4657, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4657, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4657, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4657, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4657, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4657, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4657, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4657, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4657, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4657, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4657, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4657, file: !118, line: 260, baseType: !4672, size: 64, offset: 768)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !4674)
!4674 = !{!4675, !4676, !4678}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4673, file: !118, line: 157, baseType: !4672, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4673, file: !118, line: 158, baseType: !4677, size: 64, offset: 64)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4673, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4657, file: !118, line: 262, baseType: !4677, size: 64, offset: 832)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4657, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4657, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4657, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4657, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4657, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4657, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4657, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4657, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4657, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4657, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4657, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4657, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4657, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4657, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4657, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!4695 = !{!4696, !4697, !4698, !4699}
!4696 = !DILocalVariable(name: "fp", arg: 1, scope: !4651, file: !4652, line: 56, type: !4655)
!4697 = !DILocalVariable(name: "saved_errno", scope: !4651, file: !4652, line: 58, type: !63)
!4698 = !DILocalVariable(name: "fd", scope: !4651, file: !4652, line: 59, type: !63)
!4699 = !DILocalVariable(name: "result", scope: !4651, file: !4652, line: 60, type: !63)
!4700 = !DILocation(line: 56, column: 19, scope: !4651)
!4701 = !DILocation(line: 58, column: 7, scope: !4651)
!4702 = !DILocation(line: 60, column: 7, scope: !4651)
!4703 = !DILocation(line: 63, column: 8, scope: !4651)
!4704 = !DILocation(line: 59, column: 7, scope: !4651)
!4705 = !DILocation(line: 64, column: 10, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4651, file: !4652, line: 64, column: 7)
!4707 = !DILocation(line: 64, column: 7, scope: !4651)
!4708 = !DILocation(line: 65, column: 12, scope: !4706)
!4709 = !DILocation(line: 65, column: 5, scope: !4706)
!4710 = !DILocation(line: 70, column: 9, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4651, file: !4652, line: 70, column: 7)
!4712 = !DILocation(line: 70, column: 23, scope: !4711)
!4713 = !DILocation(line: 70, column: 33, scope: !4711)
!4714 = !DILocation(line: 70, column: 26, scope: !4711)
!4715 = !DILocation(line: 70, column: 59, scope: !4711)
!4716 = !DILocation(line: 71, column: 7, scope: !4711)
!4717 = !DILocation(line: 71, column: 10, scope: !4711)
!4718 = !DILocation(line: 70, column: 7, scope: !4651)
!4719 = !DILocation(line: 98, column: 12, scope: !4651)
!4720 = !DILocation(line: 103, column: 7, scope: !4651)
!4721 = !DILocation(line: 72, column: 19, scope: !4711)
!4722 = !DILocation(line: 103, column: 19, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4651, file: !4652, line: 103, column: 7)
!4724 = !DILocation(line: 105, column: 13, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4723, file: !4652, line: 104, column: 5)
!4726 = !DILocation(line: 107, column: 5, scope: !4725)
!4727 = !DILocation(line: 110, column: 1, scope: !4651)
!4728 = !DILocation(line: 272, column: 16, scope: !329)
!4729 = !DILocation(line: 272, column: 24, scope: !329)
!4730 = !DILocation(line: 274, column: 3, scope: !329)
!4731 = !DILocation(line: 274, column: 11, scope: !329)
!4732 = !DILocation(line: 275, column: 7, scope: !329)
!4733 = !DILocation(line: 276, column: 3, scope: !329)
!4734 = !DILocation(line: 277, column: 3, scope: !329)
!4735 = !DILocation(line: 322, column: 22, scope: !352)
!4736 = !DILocation(line: 322, column: 13, scope: !352)
!4737 = !DILocation(line: 336, column: 18, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !352, file: !330, line: 336, column: 13)
!4739 = !DILocation(line: 336, column: 15, scope: !4738)
!4740 = !DILocation(line: 336, column: 13, scope: !352)
!4741 = !DILocation(line: 338, column: 22, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4738, file: !330, line: 337, column: 11)
!4743 = !DILocation(line: 339, column: 19, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4742, file: !330, line: 339, column: 17)
!4745 = !DILocation(line: 339, column: 29, scope: !4744)
!4746 = !DILocation(line: 339, column: 32, scope: !4744)
!4747 = !DILocation(line: 339, column: 38, scope: !4744)
!4748 = !DILocation(line: 339, column: 17, scope: !4742)
!4749 = !DILocation(line: 349, column: 26, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4744, file: !330, line: 348, column: 15)
!4751 = !DILocation(line: 350, column: 28, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4750, file: !330, line: 350, column: 21)
!4753 = !DILocation(line: 350, column: 21, scope: !4750)
!4754 = !DILocation(line: 354, column: 11, scope: !4742)
!4755 = !DILocation(line: 356, column: 20, scope: !4738)
!4756 = !DILocation(line: 357, column: 28, scope: !356)
!4757 = !DILocation(line: 357, column: 15, scope: !356)
!4758 = !DILocation(line: 357, column: 47, scope: !356)
!4759 = !DILocation(line: 357, column: 25, scope: !356)
!4760 = !DILocation(line: 359, column: 25, scope: !355)
!4761 = !DILocation(line: 359, column: 17, scope: !355)
!4762 = !DILocation(line: 360, column: 23, scope: !359)
!4763 = !DILocation(line: 360, column: 27, scope: !359)
!4764 = !DILocation(line: 360, column: 60, scope: !359)
!4765 = !DILocation(line: 360, column: 30, scope: !359)
!4766 = !DILocation(line: 360, column: 74, scope: !359)
!4767 = !DILocation(line: 360, column: 17, scope: !355)
!4768 = !DILocation(line: 362, column: 35, scope: !358)
!4769 = !DILocation(line: 362, column: 21, scope: !358)
!4770 = !DILocation(line: 363, column: 17, scope: !358)
!4771 = !DILocation(line: 364, column: 23, scope: !358)
!4772 = !DILocation(line: 366, column: 15, scope: !358)
!4773 = !DILocation(line: 404, column: 19, scope: !361)
!4774 = !DILocation(line: 404, column: 15, scope: !361)
!4775 = !DILocation(line: 405, column: 18, scope: !361)
!4776 = !DILocation(line: 412, column: 3, scope: !329)
!4777 = !DILocation(line: 414, column: 1, scope: !329)
!4778 = !DILocation(line: 413, column: 3, scope: !329)
!4779 = distinct !DISubprogram(name: "rpl_fflush", scope: !4780, file: !4780, line: 127, type: !4781, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !4823)
!4780 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!63, !4783}
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4785)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4786)
!4786 = !{!4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4785, file: !118, line: 242, baseType: !63, size: 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4785, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4785, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4785, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4785, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4785, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4785, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4785, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4785, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4785, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4785, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4785, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4785, file: !118, line: 260, baseType: !4800, size: 64, offset: 768)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !4802)
!4802 = !{!4803, !4804, !4806}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4801, file: !118, line: 157, baseType: !4800, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4801, file: !118, line: 158, baseType: !4805, size: 64, offset: 64)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4801, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4785, file: !118, line: 262, baseType: !4805, size: 64, offset: 832)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4785, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4785, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4785, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4785, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4785, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4785, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4785, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4785, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4785, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4785, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4785, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4785, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4785, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4785, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4785, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!4823 = !{!4824}
!4824 = !DILocalVariable(name: "stream", arg: 1, scope: !4779, file: !4780, line: 127, type: !4783)
!4825 = !DILocation(line: 127, column: 19, scope: !4779)
!4826 = !DILocation(line: 148, column: 14, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4779, file: !4780, line: 148, column: 7)
!4828 = !DILocation(line: 148, column: 22, scope: !4827)
!4829 = !DILocation(line: 148, column: 27, scope: !4827)
!4830 = !DILocation(line: 148, column: 7, scope: !4779)
!4831 = !DILocation(line: 149, column: 12, scope: !4827)
!4832 = !DILocation(line: 149, column: 5, scope: !4827)
!4833 = !DILocalVariable(name: "fp", arg: 1, scope: !4834, file: !4780, line: 40, type: !4783)
!4834 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4780, file: !4780, line: 40, type: !4835, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !747, variables: !4837)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{null, !4783}
!4837 = !{!4833}
!4838 = !DILocation(line: 40, column: 48, scope: !4834, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 153, column: 3, scope: !4779)
!4840 = !DILocation(line: 42, column: 11, scope: !4841, inlinedAt: !4839)
!4841 = distinct !DILexicalBlock(scope: !4834, file: !4780, line: 42, column: 7)
!4842 = !DILocation(line: 42, column: 18, scope: !4841, inlinedAt: !4839)
!4843 = !DILocation(line: 42, column: 7, scope: !4834, inlinedAt: !4839)
!4844 = !DILocation(line: 44, column: 5, scope: !4841, inlinedAt: !4839)
!4845 = !DILocation(line: 155, column: 10, scope: !4779)
!4846 = !DILocation(line: 155, column: 3, scope: !4779)
!4847 = !DILocation(line: 229, column: 1, scope: !4779)
!4848 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4849, file: !4849, line: 28, type: !4850, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !749, variables: !4892)
!4849 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!63, !4852, !2328, !63}
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4854)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4855)
!4855 = !{!4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4854, file: !118, line: 242, baseType: !63, size: 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4854, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4854, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4854, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4854, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4854, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4854, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4854, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4854, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4854, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4854, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4854, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4854, file: !118, line: 260, baseType: !4869, size: 64, offset: 768)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !4871)
!4871 = !{!4872, !4873, !4875}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4870, file: !118, line: 157, baseType: !4869, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4870, file: !118, line: 158, baseType: !4874, size: 64, offset: 64)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4870, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4854, file: !118, line: 262, baseType: !4874, size: 64, offset: 832)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4854, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4854, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4854, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4854, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4854, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4854, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4854, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4854, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4854, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4854, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4854, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4854, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4854, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4854, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4854, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!4892 = !{!4893, !4894, !4895, !4896}
!4893 = !DILocalVariable(name: "fp", arg: 1, scope: !4848, file: !4849, line: 28, type: !4852)
!4894 = !DILocalVariable(name: "offset", arg: 2, scope: !4848, file: !4849, line: 28, type: !2328)
!4895 = !DILocalVariable(name: "whence", arg: 3, scope: !4848, file: !4849, line: 28, type: !63)
!4896 = !DILocalVariable(name: "pos", scope: !4897, file: !4849, line: 116, type: !2328)
!4897 = distinct !DILexicalBlock(scope: !4898, file: !4849, line: 112, column: 5)
!4898 = distinct !DILexicalBlock(scope: !4848, file: !4849, line: 51, column: 7)
!4899 = !DILocation(line: 28, column: 15, scope: !4848)
!4900 = !DILocation(line: 28, column: 25, scope: !4848)
!4901 = !DILocation(line: 28, column: 37, scope: !4848)
!4902 = !DILocation(line: 51, column: 11, scope: !4898)
!4903 = !{!1300, !777, i64 16}
!4904 = !DILocation(line: 51, column: 31, scope: !4898)
!4905 = !{!1300, !777, i64 8}
!4906 = !DILocation(line: 51, column: 24, scope: !4898)
!4907 = !DILocation(line: 52, column: 7, scope: !4898)
!4908 = !DILocation(line: 52, column: 14, scope: !4898)
!4909 = !DILocation(line: 52, column: 35, scope: !4898)
!4910 = !{!1300, !777, i64 32}
!4911 = !DILocation(line: 52, column: 28, scope: !4898)
!4912 = !DILocation(line: 53, column: 7, scope: !4898)
!4913 = !DILocation(line: 53, column: 14, scope: !4898)
!4914 = !{!1300, !777, i64 72}
!4915 = !DILocation(line: 53, column: 28, scope: !4898)
!4916 = !DILocation(line: 51, column: 7, scope: !4848)
!4917 = !DILocation(line: 116, column: 26, scope: !4897)
!4918 = !DILocation(line: 116, column: 19, scope: !4897)
!4919 = !DILocation(line: 116, column: 13, scope: !4897)
!4920 = !DILocation(line: 117, column: 15, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4897, file: !4849, line: 117, column: 11)
!4922 = !DILocation(line: 117, column: 11, scope: !4897)
!4923 = !DILocation(line: 127, column: 11, scope: !4897)
!4924 = !DILocation(line: 127, column: 18, scope: !4897)
!4925 = !DILocation(line: 128, column: 11, scope: !4897)
!4926 = !DILocation(line: 128, column: 19, scope: !4897)
!4927 = !{!1300, !1009, i64 144}
!4928 = !DILocation(line: 159, column: 7, scope: !4897)
!4929 = !DILocation(line: 161, column: 10, scope: !4848)
!4930 = !DILocation(line: 161, column: 3, scope: !4848)
!4931 = !DILocation(line: 162, column: 1, scope: !4848)
!4932 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4933, file: !4933, line: 334, type: !4934, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !4948)
!4933 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!61, !4936, !80, !61, !4937}
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2720, line: 6, baseType: !4939)
!4939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2722, line: 21, baseType: !4940)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2722, line: 13, size: 64, elements: !4941)
!4941 = !{!4942, !4943}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4940, file: !2722, line: 15, baseType: !63, size: 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4940, file: !2722, line: 20, baseType: !4944, size: 32, offset: 32)
!4944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4940, file: !2722, line: 16, size: 32, elements: !4945)
!4945 = !{!4946, !4947}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4944, file: !2722, line: 18, baseType: !291, size: 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4944, file: !2722, line: 19, baseType: !2731, size: 32)
!4948 = !{!4949, !4950, !4951, !4952, !4953, !4954, !4955}
!4949 = !DILocalVariable(name: "pwc", arg: 1, scope: !4932, file: !4933, line: 334, type: !4936)
!4950 = !DILocalVariable(name: "s", arg: 2, scope: !4932, file: !4933, line: 334, type: !80)
!4951 = !DILocalVariable(name: "n", arg: 3, scope: !4932, file: !4933, line: 334, type: !61)
!4952 = !DILocalVariable(name: "ps", arg: 4, scope: !4932, file: !4933, line: 334, type: !4937)
!4953 = !DILocalVariable(name: "ret", scope: !4932, file: !4933, line: 336, type: !61)
!4954 = !DILocalVariable(name: "wc", scope: !4932, file: !4933, line: 337, type: !2736)
!4955 = !DILocalVariable(name: "uc", scope: !4956, file: !4933, line: 398, type: !65)
!4956 = distinct !DILexicalBlock(scope: !4957, file: !4933, line: 397, column: 5)
!4957 = distinct !DILexicalBlock(scope: !4932, file: !4933, line: 396, column: 7)
!4958 = !DILocation(line: 334, column: 23, scope: !4932)
!4959 = !DILocation(line: 334, column: 40, scope: !4932)
!4960 = !DILocation(line: 334, column: 50, scope: !4932)
!4961 = !DILocation(line: 334, column: 64, scope: !4932)
!4962 = !DILocation(line: 337, column: 3, scope: !4932)
!4963 = !DILocation(line: 353, column: 9, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4932, file: !4933, line: 353, column: 7)
!4965 = !DILocation(line: 353, column: 7, scope: !4932)
!4966 = !DILocation(line: 388, column: 9, scope: !4932)
!4967 = !DILocation(line: 336, column: 10, scope: !4932)
!4968 = !DILocation(line: 396, column: 19, scope: !4957)
!4969 = !DILocation(line: 396, column: 31, scope: !4957)
!4970 = !DILocation(line: 396, column: 26, scope: !4957)
!4971 = !DILocation(line: 396, column: 41, scope: !4957)
!4972 = !DILocation(line: 396, column: 7, scope: !4932)
!4973 = !DILocation(line: 398, column: 26, scope: !4956)
!4974 = !DILocation(line: 398, column: 21, scope: !4956)
!4975 = !DILocation(line: 399, column: 14, scope: !4956)
!4976 = !DILocation(line: 399, column: 12, scope: !4956)
!4977 = !DILocation(line: 405, column: 1, scope: !4932)
!4978 = distinct !DISubprogram(name: "close_stream", scope: !4979, file: !4979, line: 56, type: !4980, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !5022)
!4979 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!63, !4982}
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4984)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4985)
!4985 = !{!4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4984, file: !118, line: 242, baseType: !63, size: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4984, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4984, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4984, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4984, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4984, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4984, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4984, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4984, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4984, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4984, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4984, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4984, file: !118, line: 260, baseType: !4999, size: 64, offset: 768)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !5001)
!5001 = !{!5002, !5003, !5005}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5000, file: !118, line: 157, baseType: !4999, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5000, file: !118, line: 158, baseType: !5004, size: 64, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5000, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4984, file: !118, line: 262, baseType: !5004, size: 64, offset: 832)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4984, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4984, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4984, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4984, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4984, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4984, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4984, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4984, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4984, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4984, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4984, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4984, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4984, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4984, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4984, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!5022 = !{!5023, !5024, !5026, !5027}
!5023 = !DILocalVariable(name: "stream", arg: 1, scope: !4978, file: !4979, line: 56, type: !4982)
!5024 = !DILocalVariable(name: "some_pending", scope: !4978, file: !4979, line: 58, type: !5025)
!5025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!5026 = !DILocalVariable(name: "prev_fail", scope: !4978, file: !4979, line: 59, type: !5025)
!5027 = !DILocalVariable(name: "fclose_fail", scope: !4978, file: !4979, line: 60, type: !5025)
!5028 = !DILocation(line: 56, column: 21, scope: !4978)
!5029 = !DILocation(line: 58, column: 30, scope: !4978)
!5030 = !DILocalVariable(name: "__stream", arg: 1, scope: !5031, file: !1021, line: 132, type: !4982)
!5031 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1021, file: !1021, line: 132, type: !4980, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !5032)
!5032 = !{!5030}
!5033 = !DILocation(line: 132, column: 1, scope: !5031, inlinedAt: !5034)
!5034 = distinct !DILocation(line: 59, column: 27, scope: !4978)
!5035 = !DILocation(line: 134, column: 10, scope: !5031, inlinedAt: !5034)
!5036 = !DILocation(line: 59, column: 43, scope: !4978)
!5037 = !DILocation(line: 60, column: 29, scope: !4978)
!5038 = !DILocation(line: 60, column: 45, scope: !4978)
!5039 = !DILocation(line: 70, column: 17, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !4978, file: !4979, line: 70, column: 7)
!5041 = !DILocation(line: 58, column: 50, scope: !4978)
!5042 = !DILocation(line: 70, column: 33, scope: !5040)
!5043 = !DILocation(line: 70, column: 53, scope: !5040)
!5044 = !DILocation(line: 70, column: 59, scope: !5040)
!5045 = !DILocation(line: 70, column: 7, scope: !4978)
!5046 = !DILocation(line: 72, column: 11, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5040, file: !4979, line: 71, column: 5)
!5048 = !DILocation(line: 73, column: 9, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5047, file: !4979, line: 72, column: 11)
!5050 = !DILocation(line: 73, column: 15, scope: !5049)
!5051 = !DILocation(line: 78, column: 1, scope: !4978)
!5052 = distinct !DISubprogram(name: "hard_locale", scope: !5053, file: !5053, line: 38, type: !5054, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !756, variables: !5056)
!5053 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!70, !63}
!5056 = !{!5057, !5058, !5059}
!5057 = !DILocalVariable(name: "category", arg: 1, scope: !5052, file: !5053, line: 38, type: !63)
!5058 = !DILocalVariable(name: "hard", scope: !5052, file: !5053, line: 40, type: !70)
!5059 = !DILocalVariable(name: "p", scope: !5052, file: !5053, line: 41, type: !80)
!5060 = !DILocation(line: 38, column: 18, scope: !5052)
!5061 = !DILocation(line: 40, column: 8, scope: !5052)
!5062 = !DILocation(line: 41, column: 19, scope: !5052)
!5063 = !DILocation(line: 41, column: 15, scope: !5052)
!5064 = !DILocation(line: 43, column: 7, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5052, file: !5053, line: 43, column: 7)
!5066 = !DILocation(line: 43, column: 7, scope: !5052)
!5067 = !DILocation(line: 47, column: 15, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !5053, line: 47, column: 15)
!5069 = distinct !DILexicalBlock(scope: !5070, file: !5053, line: 46, column: 9)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !5053, line: 45, column: 11)
!5071 = distinct !DILexicalBlock(scope: !5065, file: !5053, line: 44, column: 5)
!5072 = !DILocation(line: 47, column: 31, scope: !5068)
!5073 = !DILocation(line: 47, column: 36, scope: !5068)
!5074 = !DILocation(line: 47, column: 39, scope: !5068)
!5075 = !DILocation(line: 47, column: 59, scope: !5068)
!5076 = !DILocation(line: 47, column: 15, scope: !5069)
!5077 = !DILocation(line: 48, column: 13, scope: !5068)
!5078 = !DILocation(line: 71, column: 3, scope: !5052)
!5079 = distinct !DISubprogram(name: "locale_charset", scope: !707, file: !707, line: 393, type: !5080, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !364, variables: !5082)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!80}
!5082 = !{!5083, !5084}
!5083 = !DILocalVariable(name: "codeset", scope: !5079, file: !707, line: 395, type: !80)
!5084 = !DILocalVariable(name: "aliases", scope: !5079, file: !707, line: 396, type: !80)
!5085 = !DILocalVariable(name: "buf1", scope: !5086, file: !707, line: 196, type: !5153)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !707, line: 194, column: 21)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !707, line: 193, column: 19)
!5088 = distinct !DILexicalBlock(scope: !5089, file: !707, line: 193, column: 19)
!5089 = distinct !DILexicalBlock(scope: !5090, file: !707, line: 188, column: 17)
!5090 = distinct !DILexicalBlock(scope: !5091, file: !707, line: 181, column: 19)
!5091 = distinct !DILexicalBlock(scope: !5092, file: !707, line: 177, column: 13)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !707, line: 173, column: 15)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !707, line: 161, column: 9)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !707, line: 157, column: 11)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !707, line: 130, column: 5)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !707, line: 129, column: 7)
!5097 = distinct !DISubprogram(name: "get_charset_aliases", scope: !707, file: !707, line: 124, type: !5080, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !364, variables: !5098)
!5098 = !{!5099, !5100, !5101, !5102, !5103, !5105, !5106, !5107, !5108, !5149, !5150, !5151, !5085, !5152, !5156, !5157, !5158}
!5099 = !DILocalVariable(name: "cp", scope: !5097, file: !707, line: 126, type: !80)
!5100 = !DILocalVariable(name: "dir", scope: !5095, file: !707, line: 132, type: !80)
!5101 = !DILocalVariable(name: "base", scope: !5095, file: !707, line: 133, type: !80)
!5102 = !DILocalVariable(name: "file_name", scope: !5095, file: !707, line: 134, type: !58)
!5103 = !DILocalVariable(name: "dir_len", scope: !5104, file: !707, line: 144, type: !61)
!5104 = distinct !DILexicalBlock(scope: !5095, file: !707, line: 143, column: 7)
!5105 = !DILocalVariable(name: "base_len", scope: !5104, file: !707, line: 145, type: !61)
!5106 = !DILocalVariable(name: "add_slash", scope: !5104, file: !707, line: 146, type: !63)
!5107 = !DILocalVariable(name: "fd", scope: !5093, file: !707, line: 162, type: !63)
!5108 = !DILocalVariable(name: "fp", scope: !5091, file: !707, line: 178, type: !5109)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !5111)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !5112)
!5112 = !{!5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5111, file: !118, line: 242, baseType: !63, size: 32)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5111, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5111, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5111, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5111, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5111, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5111, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5111, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5111, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5111, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5111, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5111, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5111, file: !118, line: 260, baseType: !5126, size: 64, offset: 768)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !5128)
!5128 = !{!5129, !5130, !5132}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5127, file: !118, line: 157, baseType: !5126, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5127, file: !118, line: 158, baseType: !5131, size: 64, offset: 64)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5127, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5111, file: !118, line: 262, baseType: !5131, size: 64, offset: 832)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5111, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5111, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5111, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5111, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5111, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5111, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5111, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5111, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5111, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5111, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5111, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5111, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5111, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5111, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5111, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!5149 = !DILocalVariable(name: "res_ptr", scope: !5089, file: !707, line: 190, type: !58)
!5150 = !DILocalVariable(name: "res_size", scope: !5089, file: !707, line: 191, type: !61)
!5151 = !DILocalVariable(name: "c", scope: !5086, file: !707, line: 195, type: !63)
!5152 = !DILocalVariable(name: "buf2", scope: !5086, file: !707, line: 197, type: !5153)
!5153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 408, elements: !5154)
!5154 = !{!5155}
!5155 = !DISubrange(count: 51)
!5156 = !DILocalVariable(name: "l1", scope: !5086, file: !707, line: 198, type: !61)
!5157 = !DILocalVariable(name: "l2", scope: !5086, file: !707, line: 198, type: !61)
!5158 = !DILocalVariable(name: "old_res_ptr", scope: !5086, file: !707, line: 199, type: !58)
!5159 = !DILocation(line: 196, column: 28, scope: !5086, inlinedAt: !5160)
!5160 = distinct !DILocation(line: 589, column: 18, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5079, file: !707, line: 589, column: 3)
!5162 = !DILocation(line: 197, column: 28, scope: !5086, inlinedAt: !5160)
!5163 = !DILocation(line: 403, column: 13, scope: !5079)
!5164 = !DILocation(line: 395, column: 15, scope: !5079)
!5165 = !DILocation(line: 584, column: 15, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5079, file: !707, line: 584, column: 7)
!5167 = !DILocation(line: 584, column: 7, scope: !5079)
!5168 = !DILocation(line: 128, column: 8, scope: !5097, inlinedAt: !5160)
!5169 = !DILocation(line: 126, column: 15, scope: !5097, inlinedAt: !5160)
!5170 = !DILocation(line: 129, column: 10, scope: !5096, inlinedAt: !5160)
!5171 = !DILocation(line: 129, column: 7, scope: !5097, inlinedAt: !5160)
!5172 = !DILocation(line: 138, column: 13, scope: !5095, inlinedAt: !5160)
!5173 = !DILocation(line: 132, column: 19, scope: !5095, inlinedAt: !5160)
!5174 = !DILocation(line: 139, column: 15, scope: !5175, inlinedAt: !5160)
!5175 = distinct !DILexicalBlock(scope: !5095, file: !707, line: 139, column: 11)
!5176 = !DILocation(line: 139, column: 23, scope: !5175, inlinedAt: !5160)
!5177 = !DILocation(line: 139, column: 26, scope: !5175, inlinedAt: !5160)
!5178 = !DILocation(line: 139, column: 33, scope: !5175, inlinedAt: !5160)
!5179 = !DILocation(line: 139, column: 11, scope: !5095, inlinedAt: !5160)
!5180 = !DILocation(line: 140, column: 9, scope: !5175, inlinedAt: !5160)
!5181 = !DILocation(line: 144, column: 26, scope: !5104, inlinedAt: !5160)
!5182 = !DILocation(line: 144, column: 16, scope: !5104, inlinedAt: !5160)
!5183 = !DILocation(line: 145, column: 16, scope: !5104, inlinedAt: !5160)
!5184 = !DILocation(line: 146, column: 34, scope: !5104, inlinedAt: !5160)
!5185 = !DILocation(line: 146, column: 38, scope: !5104, inlinedAt: !5160)
!5186 = !DILocation(line: 146, column: 42, scope: !5104, inlinedAt: !5160)
!5187 = !DILocation(line: 147, column: 48, scope: !5104, inlinedAt: !5160)
!5188 = !DILocation(line: 147, column: 46, scope: !5104, inlinedAt: !5160)
!5189 = !DILocation(line: 147, column: 69, scope: !5104, inlinedAt: !5160)
!5190 = !DILocation(line: 147, column: 30, scope: !5104, inlinedAt: !5160)
!5191 = !DILocation(line: 134, column: 13, scope: !5095, inlinedAt: !5160)
!5192 = !DILocation(line: 148, column: 13, scope: !5104, inlinedAt: !5160)
!5193 = !DILocation(line: 150, column: 13, scope: !5194, inlinedAt: !5160)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !707, line: 149, column: 11)
!5195 = distinct !DILexicalBlock(scope: !5104, file: !707, line: 148, column: 13)
!5196 = !DILocation(line: 151, column: 17, scope: !5194, inlinedAt: !5160)
!5197 = !DILocation(line: 152, column: 34, scope: !5198, inlinedAt: !5160)
!5198 = distinct !DILexicalBlock(scope: !5194, file: !707, line: 151, column: 17)
!5199 = !DILocation(line: 153, column: 41, scope: !5194, inlinedAt: !5160)
!5200 = !DILocation(line: 153, column: 13, scope: !5194, inlinedAt: !5160)
!5201 = !DILocation(line: 157, column: 11, scope: !5095, inlinedAt: !5160)
!5202 = !DILocation(line: 171, column: 16, scope: !5093, inlinedAt: !5160)
!5203 = !DILocation(line: 162, column: 15, scope: !5093, inlinedAt: !5160)
!5204 = !DILocation(line: 173, column: 18, scope: !5092, inlinedAt: !5160)
!5205 = !DILocation(line: 173, column: 15, scope: !5093, inlinedAt: !5160)
!5206 = !DILocation(line: 180, column: 20, scope: !5091, inlinedAt: !5160)
!5207 = !DILocation(line: 178, column: 21, scope: !5091, inlinedAt: !5160)
!5208 = !DILocation(line: 181, column: 22, scope: !5090, inlinedAt: !5160)
!5209 = !DILocation(line: 181, column: 19, scope: !5091, inlinedAt: !5160)
!5210 = !DILocation(line: 184, column: 19, scope: !5211, inlinedAt: !5160)
!5211 = distinct !DILexicalBlock(scope: !5090, file: !707, line: 182, column: 17)
!5212 = !DILocation(line: 186, column: 17, scope: !5211, inlinedAt: !5160)
!5213 = !DILocation(line: 190, column: 25, scope: !5089, inlinedAt: !5160)
!5214 = !DILocation(line: 191, column: 26, scope: !5089, inlinedAt: !5160)
!5215 = !DILocation(line: 193, column: 19, scope: !5089, inlinedAt: !5160)
!5216 = !DILocation(line: 196, column: 23, scope: !5086, inlinedAt: !5160)
!5217 = !DILocation(line: 197, column: 23, scope: !5086, inlinedAt: !5160)
!5218 = !DILocalVariable(name: "__fp", arg: 1, scope: !5219, file: !1021, line: 63, type: !5109)
!5219 = distinct !DISubprogram(name: "getc_unlocked", scope: !1021, file: !1021, line: 63, type: !5220, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !364, variables: !5222)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!63, !5109}
!5222 = !{!5218}
!5223 = !DILocation(line: 63, column: 22, scope: !5219, inlinedAt: !5224)
!5224 = distinct !DILocation(line: 201, column: 27, scope: !5086, inlinedAt: !5160)
!5225 = !DILocation(line: 65, column: 10, scope: !5219, inlinedAt: !5224)
!5226 = !DILocation(line: 195, column: 27, scope: !5086, inlinedAt: !5160)
!5227 = !DILocation(line: 202, column: 27, scope: !5086, inlinedAt: !5160)
!5228 = distinct !{!5228, !5229, !5232}
!5229 = !DILocation(line: 209, column: 27, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5231, file: !707, line: 207, column: 25)
!5231 = distinct !DILexicalBlock(scope: !5086, file: !707, line: 206, column: 27)
!5232 = !DILocation(line: 211, column: 58, scope: !5230)
!5233 = !DILocation(line: 65, column: 10, scope: !5219, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 210, column: 33, scope: !5230, inlinedAt: !5160)
!5235 = !DILocation(line: 63, column: 22, scope: !5219, inlinedAt: !5234)
!5236 = !DILocation(line: 210, column: 29, scope: !5230, inlinedAt: !5160)
!5237 = distinct !{!5237, !5238, !5239}
!5238 = !DILocation(line: 193, column: 19, scope: !5088)
!5239 = !DILocation(line: 241, column: 21, scope: !5088)
!5240 = !DILocation(line: 216, column: 23, scope: !5086, inlinedAt: !5160)
!5241 = !DILocation(line: 217, column: 27, scope: !5242, inlinedAt: !5160)
!5242 = distinct !DILexicalBlock(scope: !5086, file: !707, line: 217, column: 27)
!5243 = !DILocation(line: 217, column: 64, scope: !5242, inlinedAt: !5160)
!5244 = !DILocation(line: 217, column: 27, scope: !5086, inlinedAt: !5160)
!5245 = !DILocation(line: 219, column: 28, scope: !5086, inlinedAt: !5160)
!5246 = !DILocation(line: 198, column: 30, scope: !5086, inlinedAt: !5160)
!5247 = !DILocation(line: 220, column: 28, scope: !5086, inlinedAt: !5160)
!5248 = !DILocation(line: 198, column: 34, scope: !5086, inlinedAt: !5160)
!5249 = !DILocation(line: 199, column: 29, scope: !5086, inlinedAt: !5160)
!5250 = !DILocation(line: 222, column: 36, scope: !5251, inlinedAt: !5160)
!5251 = distinct !DILexicalBlock(scope: !5086, file: !707, line: 222, column: 27)
!5252 = !DILocation(line: 222, column: 27, scope: !5086, inlinedAt: !5160)
!5253 = !DILocation(line: 225, column: 63, scope: !5254, inlinedAt: !5160)
!5254 = distinct !DILexicalBlock(scope: !5251, file: !707, line: 223, column: 25)
!5255 = !DILocation(line: 225, column: 46, scope: !5254, inlinedAt: !5160)
!5256 = !DILocation(line: 226, column: 25, scope: !5254, inlinedAt: !5160)
!5257 = !DILocation(line: 229, column: 36, scope: !5258, inlinedAt: !5160)
!5258 = distinct !DILexicalBlock(scope: !5251, file: !707, line: 228, column: 25)
!5259 = !DILocation(line: 230, column: 73, scope: !5258, inlinedAt: !5160)
!5260 = !DILocation(line: 230, column: 46, scope: !5258, inlinedAt: !5160)
!5261 = !DILocation(line: 232, column: 35, scope: !5262, inlinedAt: !5160)
!5262 = distinct !DILexicalBlock(scope: !5086, file: !707, line: 232, column: 27)
!5263 = !DILocation(line: 232, column: 27, scope: !5086, inlinedAt: !5160)
!5264 = !DILocation(line: 236, column: 27, scope: !5265, inlinedAt: !5160)
!5265 = distinct !DILexicalBlock(scope: !5262, file: !707, line: 233, column: 25)
!5266 = !DILocation(line: 237, column: 27, scope: !5265, inlinedAt: !5160)
!5267 = !DILocation(line: 241, column: 21, scope: !5087, inlinedAt: !5160)
!5268 = !DILocation(line: 239, column: 39, scope: !5086, inlinedAt: !5160)
!5269 = !DILocation(line: 239, column: 50, scope: !5086, inlinedAt: !5160)
!5270 = !DILocation(line: 239, column: 61, scope: !5086, inlinedAt: !5160)
!5271 = !DILocalVariable(name: "__dest", arg: 1, scope: !5272, file: !5273, line: 88, type: !5276)
!5272 = distinct !DISubprogram(name: "strcpy", scope: !5273, file: !5273, line: 88, type: !5274, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !364, variables: !5278)
!5273 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!58, !5276, !5277}
!5276 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!5277 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!5278 = !{!5271, !5279}
!5279 = !DILocalVariable(name: "__src", arg: 2, scope: !5272, file: !5273, line: 88, type: !5277)
!5280 = !DILocation(line: 88, column: 1, scope: !5272, inlinedAt: !5281)
!5281 = distinct !DILocation(line: 239, column: 23, scope: !5086, inlinedAt: !5160)
!5282 = !DILocation(line: 90, column: 49, scope: !5272, inlinedAt: !5281)
!5283 = !DILocation(line: 90, column: 10, scope: !5272, inlinedAt: !5281)
!5284 = !DILocation(line: 88, column: 1, scope: !5272, inlinedAt: !5285)
!5285 = distinct !DILocation(line: 240, column: 23, scope: !5086, inlinedAt: !5160)
!5286 = !DILocation(line: 90, column: 49, scope: !5272, inlinedAt: !5285)
!5287 = !DILocation(line: 90, column: 10, scope: !5272, inlinedAt: !5285)
!5288 = !DILocation(line: 193, column: 19, scope: !5087, inlinedAt: !5160)
!5289 = !DILocation(line: 242, column: 19, scope: !5089, inlinedAt: !5160)
!5290 = !DILocation(line: 243, column: 32, scope: !5291, inlinedAt: !5160)
!5291 = distinct !DILexicalBlock(scope: !5089, file: !707, line: 243, column: 23)
!5292 = !DILocation(line: 243, column: 23, scope: !5089, inlinedAt: !5160)
!5293 = !DILocation(line: 247, column: 33, scope: !5294, inlinedAt: !5160)
!5294 = distinct !DILexicalBlock(scope: !5291, file: !707, line: 246, column: 21)
!5295 = !DILocation(line: 247, column: 45, scope: !5294, inlinedAt: !5160)
!5296 = !DILocation(line: 253, column: 11, scope: !5093, inlinedAt: !5160)
!5297 = !DILocation(line: 377, column: 23, scope: !5095, inlinedAt: !5160)
!5298 = !DILocation(line: 378, column: 5, scope: !5095, inlinedAt: !5160)
!5299 = !DILocation(line: 396, column: 15, scope: !5079)
!5300 = !DILocation(line: 590, column: 8, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5161, file: !707, line: 589, column: 3)
!5302 = !DILocation(line: 590, column: 17, scope: !5301)
!5303 = !DILocation(line: 589, column: 3, scope: !5161)
!5304 = !DILocation(line: 592, column: 9, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !707, line: 592, column: 9)
!5306 = !DILocation(line: 592, column: 35, scope: !5305)
!5307 = !DILocation(line: 593, column: 9, scope: !5305)
!5308 = !DILocation(line: 593, column: 24, scope: !5305)
!5309 = !DILocation(line: 593, column: 31, scope: !5305)
!5310 = !DILocation(line: 593, column: 34, scope: !5305)
!5311 = !DILocation(line: 593, column: 45, scope: !5305)
!5312 = !DILocation(line: 592, column: 9, scope: !5301)
!5313 = !DILocation(line: 595, column: 29, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5305, file: !707, line: 594, column: 7)
!5315 = !DILocation(line: 595, column: 27, scope: !5314)
!5316 = !DILocation(line: 595, column: 46, scope: !5314)
!5317 = !DILocation(line: 596, column: 9, scope: !5314)
!5318 = !DILocation(line: 591, column: 19, scope: !5301)
!5319 = !DILocation(line: 591, column: 36, scope: !5301)
!5320 = !DILocation(line: 591, column: 16, scope: !5301)
!5321 = !DILocation(line: 591, column: 52, scope: !5301)
!5322 = !DILocation(line: 591, column: 69, scope: !5301)
!5323 = !DILocation(line: 591, column: 49, scope: !5301)
!5324 = distinct !{!5324, !5303, !5325}
!5325 = !DILocation(line: 597, column: 7, scope: !5161)
!5326 = !DILocation(line: 602, column: 7, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5079, file: !707, line: 602, column: 7)
!5328 = !DILocation(line: 602, column: 18, scope: !5327)
!5329 = !DILocation(line: 602, column: 7, scope: !5079)
!5330 = !DILocation(line: 612, column: 3, scope: !5079)
