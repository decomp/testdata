; ModuleID = 'coreutils-8.27/src/sha1sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.sha1_ctx = type { i32, i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
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
@.str.11 = private unnamed_addr constant [11 x i8] c"FIPS-180-1\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
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
@bsd_reversed = internal unnamed_addr global i32 -1, align 4, !dbg !212
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
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), align 8, !dbg !226
@.str.35 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !232
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !237
@.str.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal unnamed_addr constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !240
@exit_failure = global i32 1, align 4, !dbg !256
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !263
@.str.80 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.86, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.92, i32 0, i32 0), i8* null], align 16, !dbg !270
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !282
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !289
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !301
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.96 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.97 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.98 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.99 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !308
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !315
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !303
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !317
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !323
@.str.1.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !332
@.str.156 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.157 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.160 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !367
@.str.3.161 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.162 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.163 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.164 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.165 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.166 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !769 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !773, metadata !774), !dbg !775
  %2 = icmp eq i32 %0, 0, !dbg !776
  br i1 %2, label %8, label %3, !dbg !778

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !779, !tbaa !781
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !779
  %6 = load i8*, i8** @program_name, align 8, !dbg !779, !tbaa !781
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !779
  br label %52, !dbg !779

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !785
  %10 = load i8*, i8** @program_name, align 8, !dbg !785, !tbaa !781
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 160) #10, !dbg !785
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !787
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !787, !tbaa !781
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !787
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !792
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !792, !tbaa !781
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !792
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !794
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !794
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !795
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !795, !tbaa !781
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !795
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !796
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !796, !tbaa !781
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #10, !dbg !796
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !798
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !798, !tbaa !781
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #10, !dbg !798
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !799
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !799, !tbaa !781
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #10, !dbg !799
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !800
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !800, !tbaa !781
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !800
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !801
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !801
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !84, metadata !774) #10, !dbg !802
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 0, metadata !84, metadata !774) #10, !dbg !802
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !804
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !804
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !805
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !92, metadata !774) #10, !dbg !806
  %40 = icmp eq i8* %39, null, !dbg !807
  br i1 %40, label %47, label %41, !dbg !809

; <label>:41:                                     ; preds = %8
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 3) #14, !dbg !810
  %43 = icmp eq i32 %42, 0, !dbg !810
  br i1 %43, label %47, label %44, !dbg !811

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !812
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !812
  br label %47, !dbg !814

; <label>:47:                                     ; preds = %8, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !815
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !815
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !816
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !816
  br label %52

; <label>:52:                                     ; preds = %47, %3
  tail call void @exit(i32 %0) #15, !dbg !817
  unreachable, !dbg !817
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !818 {
  %3 = alloca [24 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [24 x i8]* %3, metadata !174, metadata !774), !dbg !847
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [24 x i8], align 16
  %8 = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !823, metadata !774), !dbg !849
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !824, metadata !774), !dbg !850
  %9 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0, !dbg !851
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #10, !dbg !851
  tail call void @llvm.dbg.declare(metadata [24 x i8]* %7, metadata !825, metadata !774), !dbg !852
  tail call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !853, metadata !774), !dbg !863
  %10 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 3, !dbg !865
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !862, metadata !774), !dbg !866
  %11 = ptrtoint i8* %10 to i64, !dbg !867
  %12 = and i64 %11, 3, !dbg !868
  %13 = sub nsw i64 0, %12, !dbg !869
  %14 = getelementptr inbounds i8, i8* %10, i64 %13, !dbg !869
  call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !826, metadata !774), !dbg !870
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !827, metadata !774), !dbg !871
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !829, metadata !774), !dbg !872
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !830, metadata !774), !dbg !873
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !831, metadata !774), !dbg !874
  %15 = load i8*, i8** %1, align 8, !dbg !875, !tbaa !781
  call void @set_program_name(i8* %15) #10, !dbg !876
  %16 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !877
  %17 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !878
  %18 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !879
  %19 = call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !880
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !881, !tbaa !781
  %21 = call i32 @setvbuf(%struct._IO_FILE* %20, i8* null, i32 1, i64 0) #10, !dbg !882
  br label %22, !dbg !883

; <label>:22:                                     ; preds = %27, %2
  %23 = phi i32 [ -1, %2 ], [ %28, %27 ]
  %24 = phi i8 [ 0, %2 ], [ %29, %27 ]
  %25 = phi i8 [ 0, %2 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !827, metadata !774), !dbg !871
  call void @llvm.dbg.value(metadata i8 %24, i64 0, metadata !831, metadata !774), !dbg !874
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !830, metadata !774), !dbg !873
  %26 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !884
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !828, metadata !774), !dbg !885
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
  ], !dbg !883

; <label>:27:                                     ; preds = %22, %38, %37, %36, %35, %34, %33, %32, %31
  %28 = phi i32 [ 1, %38 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ], [ 0, %33 ], [ %23, %32 ], [ %23, %31 ], [ 1, %22 ]
  %29 = phi i8 [ 1, %38 ], [ %24, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %22 ]
  %30 = phi i8 [ %25, %38 ], [ %25, %37 ], [ %25, %36 ], [ %25, %35 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ 1, %31 ], [ %25, %22 ]
  br label %22, !dbg !871, !llvm.loop !886

; <label>:31:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !827, metadata !774), !dbg !871
  br label %27, !dbg !888

; <label>:32:                                     ; preds = %22
  store i1 true, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %27, !dbg !890

; <label>:33:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !830, metadata !774), !dbg !873
  br label %27, !dbg !891

; <label>:34:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 true, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %27, !dbg !892

; <label>:35:                                     ; preds = %22
  store i1 true, i1* @ignore_missing, align 1
  br label %27, !dbg !893

; <label>:36:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 true, i1* @quiet, align 1
  br label %27, !dbg !894

; <label>:37:                                     ; preds = %22
  store i1 true, i1* @strict, align 1
  br label %27, !dbg !895

; <label>:38:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !831, metadata !774), !dbg !874
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !830, metadata !774), !dbg !873
  br label %27, !dbg !896

; <label>:39:                                     ; preds = %22
  call void @usage(i32 0) #16, !dbg !897
  unreachable, !dbg !897

; <label>:40:                                     ; preds = %22
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !898, !tbaa !781
  %42 = load i8*, i8** @Version, align 8, !dbg !898, !tbaa !781
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* null) #10, !dbg !898
  call void @exit(i32 0) #15, !dbg !898
  unreachable, !dbg !898

; <label>:43:                                     ; preds = %22
  call void @usage(i32 1) #16, !dbg !899
  unreachable, !dbg !899

; <label>:44:                                     ; preds = %22
  store i1 true, i1* @min_digest_line_length, align 8
  store i1 true, i1* @digest_hex_bytes, align 8
  %45 = icmp ne i8 %24, 0, !dbg !900
  %46 = xor i1 %45, true, !dbg !902
  %47 = icmp ne i32 %23, 0, !dbg !903
  %48 = or i1 %47, %46, !dbg !902
  br i1 %48, label %51, label %49, !dbg !902

; <label>:49:                                     ; preds = %44
  %50 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !904
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50) #10, !dbg !906
  call void @usage(i32 1) #16, !dbg !907
  unreachable, !dbg !907

; <label>:51:                                     ; preds = %44
  %52 = icmp eq i8 %25, 0, !dbg !908
  %53 = or i1 %52, %46, !dbg !910
  br i1 %53, label %56, label %54, !dbg !910

; <label>:54:                                     ; preds = %51
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !911
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55) #10, !dbg !913
  call void @usage(i32 1) #16, !dbg !914
  unreachable, !dbg !914

; <label>:56:                                     ; preds = %51
  %57 = icmp slt i32 %23, 0, !dbg !915
  %58 = or i1 %57, %52, !dbg !917
  br i1 %58, label %61, label %59, !dbg !917

; <label>:59:                                     ; preds = %56
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !918
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60) #10, !dbg !920
  call void @usage(i32 1) #16, !dbg !921
  unreachable, !dbg !921

; <label>:61:                                     ; preds = %56
  %62 = load i1, i1* @ignore_missing, align 1
  %63 = and i1 %52, %62, !dbg !922
  br i1 %63, label %64, label %66, !dbg !922

; <label>:64:                                     ; preds = %61
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !924
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65) #10, !dbg !926
  call void @usage(i32 1) #16, !dbg !927
  unreachable, !dbg !927

; <label>:66:                                     ; preds = %61
  %67 = load i1, i1* @status_only, align 1
  %68 = and i1 %52, %67, !dbg !928
  br i1 %68, label %69, label %71, !dbg !928

; <label>:69:                                     ; preds = %66
  %70 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !930
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %70) #10, !dbg !932
  call void @usage(i32 1) #16, !dbg !933
  unreachable, !dbg !933

; <label>:71:                                     ; preds = %66
  %72 = load i1, i1* @warn, align 1
  %73 = and i1 %52, %72, !dbg !934
  br i1 %73, label %74, label %76, !dbg !934

; <label>:74:                                     ; preds = %71
  %75 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !936
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75) #10, !dbg !938
  call void @usage(i32 1) #16, !dbg !939
  unreachable, !dbg !939

; <label>:76:                                     ; preds = %71
  %77 = load i1, i1* @quiet, align 1
  %78 = and i1 %52, %77, !dbg !940
  br i1 %78, label %79, label %81, !dbg !940

; <label>:79:                                     ; preds = %76
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !942
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !944
  call void @usage(i32 1) #16, !dbg !945
  unreachable, !dbg !945

; <label>:81:                                     ; preds = %76
  %82 = load i1, i1* @strict, align 1
  %83 = icmp ne i8 %25, 0, !dbg !946
  %84 = xor i1 %83, true, !dbg !948
  %85 = and i1 %82, %84, !dbg !949
  br i1 %85, label %86, label %88, !dbg !950

; <label>:86:                                     ; preds = %81
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !951
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #10, !dbg !953
  call void @usage(i32 1) #16, !dbg !954
  unreachable, !dbg !954

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !830, metadata !774), !dbg !873
  %89 = icmp slt i32 %23, 1, !dbg !955
  %90 = sext i32 %0 to i64, !dbg !956
  %91 = getelementptr inbounds i8*, i8** %1, i64 %90, !dbg !956
  call void @llvm.dbg.value(metadata i8** %91, i64 0, metadata !833, metadata !774), !dbg !957
  %92 = load i32, i32* @optind, align 4, !dbg !958, !tbaa !960
  %93 = icmp eq i32 %92, %0, !dbg !962
  br i1 %93, label %94, label %96, !dbg !963

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !964
  call void @llvm.dbg.value(metadata i8** %95, i64 0, metadata !833, metadata !774), !dbg !957
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** %91, align 8, !dbg !965, !tbaa !781
  br label %96, !dbg !966

; <label>:96:                                     ; preds = %94, %88
  %97 = phi i8** [ %95, %94 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i8** %97, i64 0, metadata !833, metadata !774), !dbg !957
  %98 = sext i32 %92 to i64, !dbg !967
  %99 = getelementptr inbounds i8*, i8** %1, i64 %98, !dbg !967
  call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !834, metadata !774), !dbg !968
  call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !834, metadata !774), !dbg !968
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !829, metadata !774), !dbg !872
  %100 = icmp ult i8** %99, %97, !dbg !969
  br i1 %100, label %101, label %112, !dbg !970

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 0
  %103 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 3
  %104 = ptrtoint i8* %103 to i64
  %105 = and i64 %104, 3
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = bitcast i8** %4 to i8*
  %109 = bitcast i64* %5 to i8*
  %110 = select i1 %89, i32 32, i32 42
  %111 = trunc i32 %110 to i8
  br label %115, !dbg !970

; <label>:112:                                    ; preds = %637, %96
  %113 = phi i8 [ 1, %96 ], [ %638, %637 ]
  %114 = load i1, i1* @have_read_stdin, align 1
  br i1 %114, label %641, label %649, !dbg !971

; <label>:115:                                    ; preds = %101, %637
  %116 = phi i8** [ %99, %101 ], [ %639, %637 ]
  %117 = phi i8 [ 1, %101 ], [ %638, %637 ]
  call void @llvm.dbg.value(metadata i8 %117, i64 0, metadata !829, metadata !774), !dbg !872
  call void @llvm.dbg.value(metadata i8** %116, i64 0, metadata !834, metadata !774), !dbg !968
  %118 = load i8*, i8** %116, align 8, !dbg !973, !tbaa !781
  call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !836, metadata !774), !dbg !974
  br i1 %83, label %119, label %546, !dbg !975

; <label>:119:                                    ; preds = %115
  call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !112, metadata !774) #10, !dbg !976
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !168, metadata !774) #10, !dbg !977
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !169, metadata !774) #10, !dbg !978
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !170, metadata !774) #10, !dbg !979
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !171, metadata !774) #10, !dbg !980
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !172, metadata !774) #10, !dbg !981
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !173, metadata !774) #10, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %102) #10, !dbg !983
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !853, metadata !774) #10, !dbg !984
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !862, metadata !774) #10, !dbg !986
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !178, metadata !774) #10, !dbg !987
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #10, !dbg !988
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109) #10, !dbg !989
  %120 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !990
  %121 = icmp eq i32 %120, 0, !dbg !990
  br i1 %121, label %122, label %125, !dbg !991

; <label>:122:                                    ; preds = %119
  store i1 true, i1* @have_read_stdin, align 1
  %123 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !992
  call void @llvm.dbg.value(metadata i8* %123, i64 0, metadata !112, metadata !774) #10, !dbg !976
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !995, !tbaa !781
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %124, i64 0, metadata !113, metadata !774) #10, !dbg !996
  br label %132, !dbg !997

; <label>:125:                                    ; preds = %119
  %126 = call %struct._IO_FILE* @fopen_safer(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !998
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %126, i64 0, metadata !113, metadata !774) #10, !dbg !996
  %127 = icmp eq %struct._IO_FILE* %126, null, !dbg !1000
  br i1 %127, label %128, label %132, !dbg !1002

; <label>:128:                                    ; preds = %125
  %129 = tail call i32* @__errno_location() #17, !dbg !1003
  %130 = load i32, i32* %129, align 4, !dbg !1003, !tbaa !960
  %131 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %118) #10, !dbg !1005
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %131) #10, !dbg !1006
  br label %542, !dbg !1007

; <label>:132:                                    ; preds = %125, %122
  %133 = phi %struct._IO_FILE* [ %124, %122 ], [ %126, %125 ]
  %134 = phi i8* [ %123, %122 ], [ %118, %125 ]
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !112, metadata !774) #10, !dbg !976
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !113, metadata !774) #10, !dbg !996
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !179, metadata !774) #10, !dbg !1008
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !180, metadata !774) #10, !dbg !1009
  store i8* null, i8** %4, align 8, !dbg !1010, !tbaa !781
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !181, metadata !774) #10, !dbg !1011
  store i64 0, i64* %5, align 8, !dbg !1012, !tbaa !1013
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %133, i64 0, i32 0
  br label %136, !dbg !1015, !llvm.loop !1016

; <label>:136:                                    ; preds = %469, %132
  %137 = phi i8 [ 0, %132 ], [ %470, %469 ]
  %138 = phi i64 [ 0, %132 ], [ %144, %469 ]
  %139 = phi i8 [ 0, %132 ], [ %471, %469 ]
  %140 = phi i64 [ 0, %132 ], [ %472, %469 ]
  %141 = phi i64 [ 0, %132 ], [ %473, %469 ]
  %142 = phi i64 [ 0, %132 ], [ %474, %469 ]
  %143 = phi i64 [ 0, %132 ], [ %475, %469 ]
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !168, metadata !774) #10, !dbg !977
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !169, metadata !774) #10, !dbg !978
  call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !170, metadata !774) #10, !dbg !979
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !171, metadata !774) #10, !dbg !980
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !172, metadata !774) #10, !dbg !981
  call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !179, metadata !774) #10, !dbg !1008
  call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !173, metadata !774) #10, !dbg !982
  %144 = add i64 %138, 1, !dbg !1019
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !179, metadata !774) #10, !dbg !1008
  %145 = icmp eq i64 %144, 0, !dbg !1020
  br i1 %145, label %146, label %149, !dbg !1022

; <label>:146:                                    ; preds = %136
  %147 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i32 5) #10, !dbg !1023
  %148 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1023
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %147, i8* %148) #10, !dbg !1023
  unreachable, !dbg !1023

; <label>:149:                                    ; preds = %136
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !180, metadata !774) #10, !dbg !1009
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !181, metadata !774) #10, !dbg !1011
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1024, metadata !774) #10, !dbg !1032
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !1030, metadata !774) #10, !dbg !1034
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !1031, metadata !774) #10, !dbg !1035
  %150 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %133) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !187, metadata !774) #10, !dbg !1037
  %151 = icmp slt i64 %150, 1, !dbg !1038
  br i1 %151, label %479, label %152, !dbg !1040

; <label>:152:                                    ; preds = %149
  %153 = load i8*, i8** %4, align 8, !dbg !1041, !tbaa !781
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !180, metadata !774) #10, !dbg !1009
  %154 = load i8, i8* %153, align 1, !dbg !1041, !tbaa !1043
  %155 = icmp eq i8 %154, 35, !dbg !1044
  br i1 %155, label %469, label %156, !dbg !1045

; <label>:156:                                    ; preds = %152
  %157 = add nsw i64 %150, -1, !dbg !1046
  %158 = getelementptr inbounds i8, i8* %153, i64 %157, !dbg !1048
  %159 = load i8, i8* %158, align 1, !dbg !1048, !tbaa !1043
  %160 = icmp eq i8 %159, 10, !dbg !1049
  br i1 %160, label %161, label %163, !dbg !1050

; <label>:161:                                    ; preds = %156
  call void @llvm.dbg.value(metadata i64 %157, i64 0, metadata !187, metadata !774) #10, !dbg !1037
  store i8 0, i8* %158, align 1, !dbg !1051, !tbaa !1043
  %162 = load i8*, i8** %4, align 8, !dbg !1052, !tbaa !781
  br label %163, !dbg !1053

; <label>:163:                                    ; preds = %161, %156
  %164 = phi i8* [ %162, %161 ], [ %153, %156 ], !dbg !1052
  %165 = phi i64 [ %157, %161 ], [ %150, %156 ]
  call void @llvm.dbg.value(metadata i64 %165, i64 0, metadata !187, metadata !774) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !180, metadata !774) #10, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !1054, metadata !774) #10, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %165, i64 0, metadata !1060, metadata !774) #10, !dbg !1069
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1064, metadata !774) #10, !dbg !1070
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  br label %166, !dbg !1072

; <label>:166:                                    ; preds = %170, %163
  %167 = phi i64 [ 0, %163 ], [ %171, %170 ]
  call void @llvm.dbg.value(metadata i64 %167, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  %168 = getelementptr inbounds i8, i8* %164, i64 %167, !dbg !1073
  %169 = load i8, i8* %168, align 1, !dbg !1073, !tbaa !1043
  switch i8 %169, label %174 [
    i8 32, label %170
    i8 9, label %170
    i8 92, label %172
  ], !dbg !1073

; <label>:170:                                    ; preds = %166, %166
  %171 = add i64 %167, 1, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  br label %166, !dbg !1072, !llvm.loop !1075

; <label>:172:                                    ; preds = %166
  %173 = add i64 %167, 1, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1064, metadata !774) #10, !dbg !1070
  br label %174, !dbg !1081

; <label>:174:                                    ; preds = %166, %172
  %175 = phi i1 [ true, %172 ], [ false, %166 ]
  %176 = phi i64 [ %173, %172 ], [ %167, %166 ]
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !1065, metadata !774) #10, !dbg !1082
  %177 = getelementptr inbounds i8, i8* %164, i64 %176, !dbg !1083
  %178 = call i32 @strncmp(i8* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4) #14, !dbg !1083
  %179 = icmp eq i32 %178, 0, !dbg !1083
  br i1 %179, label %180, label %257, !dbg !1085

; <label>:180:                                    ; preds = %174
  %181 = add i64 %176, 4, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  %182 = getelementptr inbounds i8, i8* %164, i64 %181, !dbg !1088
  %183 = load i8, i8* %182, align 1, !dbg !1088, !tbaa !1043
  %184 = icmp eq i8 %183, 32, !dbg !1090
  %185 = add i64 %176, 5, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %185, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  %186 = select i1 %184, i64 %185, i64 %181, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %186, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  %187 = getelementptr inbounds i8, i8* %164, i64 %186, !dbg !1093
  %188 = load i8, i8* %187, align 1, !dbg !1093, !tbaa !1043
  %189 = icmp eq i8 %188, 40, !dbg !1095
  br i1 %189, label %190, label %355, !dbg !1096

; <label>:190:                                    ; preds = %180
  %191 = add i64 %186, 1, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %191, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  %192 = getelementptr inbounds i8, i8* %164, i64 %191, !dbg !1099
  %193 = sub i64 %165, %191, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1101, metadata !774) #10, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !1106, metadata !774) #10, !dbg !1113
  call void @llvm.dbg.value(metadata i1 %175, i64 0, metadata !1109, metadata !774) #10, !dbg !1114
  %194 = icmp eq i64 %193, 0, !dbg !1115
  br i1 %194, label %355, label %195, !dbg !1117

; <label>:195:                                    ; preds = %190
  %196 = add i64 %193, -1
  call void @llvm.dbg.value(metadata i64 %196, i64 0, metadata !1110, metadata !774) #10, !dbg !1118
  %197 = icmp eq i64 %196, 0, !dbg !1119
  br i1 %197, label %208, label %198, !dbg !1120

; <label>:198:                                    ; preds = %195
  br label %202, !dbg !1121

; <label>:199:                                    ; preds = %202
  %200 = add i64 %203, -1
  call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !1110, metadata !774) #10, !dbg !1118
  %201 = icmp eq i64 %200, 0, !dbg !1119
  br i1 %201, label %208, label %202, !dbg !1120, !llvm.loop !1122

; <label>:202:                                    ; preds = %198, %199
  %203 = phi i64 [ %200, %199 ], [ %196, %198 ]
  %204 = phi i64 [ %203, %199 ], [ %193, %198 ]
  %205 = getelementptr inbounds i8, i8* %192, i64 %203, !dbg !1121
  %206 = load i8, i8* %205, align 1, !dbg !1121, !tbaa !1043
  %207 = icmp eq i8 %206, 41, !dbg !1125
  br i1 %207, label %208, label %199, !dbg !1126

; <label>:208:                                    ; preds = %202, %199, %195
  %209 = phi i64 [ 1, %195 ], [ 1, %199 ], [ %204, %202 ]
  %210 = phi i64 [ 0, %195 ], [ 0, %199 ], [ %203, %202 ]
  %211 = phi i1 [ true, %195 ], [ true, %199 ], [ false, %202 ]
  %212 = getelementptr inbounds i8, i8* %192, i64 %210, !dbg !1127
  %213 = load i8, i8* %212, align 1, !dbg !1127, !tbaa !1043
  %214 = icmp eq i8 %213, 41, !dbg !1129
  br i1 %214, label %215, label %355, !dbg !1130

; <label>:215:                                    ; preds = %208
  br i1 %175, label %216, label %243, !dbg !1131

; <label>:216:                                    ; preds = %215
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1133, metadata !774) #10, !dbg !1142
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1138, metadata !774) #10, !dbg !1144
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1139, metadata !774) #10, !dbg !1145
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1140, metadata !774) #10, !dbg !1146
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1140, metadata !774) #10, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1139, metadata !774) #10, !dbg !1145
  br i1 %211, label %239, label %217, !dbg !1147

; <label>:217:                                    ; preds = %216
  %218 = add i64 %209, -2
  br label %219, !dbg !1147

; <label>:219:                                    ; preds = %233, %217
  %220 = phi i64 [ 0, %217 ], [ %237, %233 ]
  %221 = phi i8* [ %192, %217 ], [ %236, %233 ]
  call void @llvm.dbg.value(metadata i8* %221, i64 0, metadata !1139, metadata !774) #10, !dbg !1145
  call void @llvm.dbg.value(metadata i64 %220, i64 0, metadata !1140, metadata !774) #10, !dbg !1146
  %222 = getelementptr inbounds i8, i8* %192, i64 %220, !dbg !1148
  %223 = load i8, i8* %222, align 1, !dbg !1148, !tbaa !1043
  %224 = sext i8 %223 to i32, !dbg !1148
  switch i32 %224, label %233 [
    i32 92, label %225
    i32 0, label %355
  ], !dbg !1151

; <label>:225:                                    ; preds = %219
  %226 = icmp eq i64 %220, %218, !dbg !1152
  br i1 %226, label %355, label %227, !dbg !1155

; <label>:227:                                    ; preds = %225
  %228 = add i64 %220, 1, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %228, i64 0, metadata !1140, metadata !774) #10, !dbg !1146
  %229 = getelementptr inbounds i8, i8* %192, i64 %228, !dbg !1157
  %230 = load i8, i8* %229, align 1, !dbg !1157, !tbaa !1043
  %231 = sext i8 %230 to i32, !dbg !1157
  switch i32 %231, label %355 [
    i32 110, label %232
    i32 92, label %233
  ], !dbg !1158

; <label>:232:                                    ; preds = %227
  call void @llvm.dbg.value(metadata i8* %221, i64 0, metadata !1139, metadata !1159) #10, !dbg !1145
  br label %233, !dbg !1160

; <label>:233:                                    ; preds = %232, %227, %219
  %234 = phi i8 [ 10, %232 ], [ 92, %227 ], [ %223, %219 ]
  %235 = phi i64 [ %228, %232 ], [ %228, %227 ], [ %220, %219 ]
  store i8 %234, i8* %221, align 1, !tbaa !1043
  %236 = getelementptr inbounds i8, i8* %221, i64 1
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1140, metadata !774) #10, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %236, i64 0, metadata !1139, metadata !774) #10, !dbg !1145
  %237 = add i64 %235, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1140, metadata !774) #10, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1140, metadata !774) #10, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %236, i64 0, metadata !1139, metadata !774) #10, !dbg !1145
  %238 = icmp ult i64 %237, %210, !dbg !1163
  br i1 %238, label %219, label %239, !dbg !1147, !llvm.loop !1164

; <label>:239:                                    ; preds = %233, %216
  %240 = phi i8* [ %192, %216 ], [ %236, %233 ]
  %241 = icmp ult i8* %240, %212, !dbg !1167
  br i1 %241, label %242, label %243, !dbg !1169

; <label>:242:                                    ; preds = %239
  store i8 0, i8* %240, align 1, !dbg !1170, !tbaa !1043
  br label %243, !dbg !1171

; <label>:243:                                    ; preds = %242, %239, %215
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1110, metadata !774) #10, !dbg !1118
  store i8 0, i8* %212, align 1, !dbg !1172, !tbaa !1043
  br label %244, !dbg !1173

; <label>:244:                                    ; preds = %249, %243
  %245 = phi i64 [ %209, %243 ], [ %250, %249 ]
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1110, metadata !774) #10, !dbg !1118
  %246 = getelementptr inbounds i8, i8* %192, i64 %245, !dbg !1174
  %247 = load i8, i8* %246, align 1, !dbg !1174, !tbaa !1043
  switch i8 %247, label %355 [
    i8 32, label %249
    i8 9, label %249
    i8 61, label %248
  ], !dbg !1174

; <label>:248:                                    ; preds = %244
  br label %251

; <label>:249:                                    ; preds = %244, %244
  %250 = add i64 %245, 1, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %250, i64 0, metadata !1110, metadata !774) #10, !dbg !1118
  br label %244, !dbg !1173, !llvm.loop !1176

; <label>:251:                                    ; preds = %256, %248
  %252 = phi i64 [ %245, %248 ], [ %253, %256 ]
  %253 = add i64 %252, 1
  call void @llvm.dbg.value(metadata i64 %253, i64 0, metadata !1110, metadata !774) #10, !dbg !1118
  %254 = getelementptr inbounds i8, i8* %192, i64 %253, !dbg !1179
  %255 = load i8, i8* %254, align 1, !dbg !1179, !tbaa !1043
  switch i8 %255, label %323 [
    i8 32, label %256
    i8 9, label %256
  ], !dbg !1179

; <label>:256:                                    ; preds = %251, %251
  br label %251, !llvm.loop !1180

; <label>:257:                                    ; preds = %174
  %258 = sub i64 %165, %176, !dbg !1183
  %259 = load i1, i1* @min_digest_line_length, align 8
  %260 = select i1 %259, i64 42, i64 0
  %261 = load i8, i8* %177, align 1, !dbg !1185, !tbaa !1043
  %262 = icmp eq i8 %261, 92, !dbg !1186
  %263 = zext i1 %262 to i64, !dbg !1187
  %264 = or i64 %260, %263, !dbg !1188
  %265 = icmp ult i64 %258, %264, !dbg !1189
  br i1 %265, label %355, label %266, !dbg !1190

; <label>:266:                                    ; preds = %257
  %267 = load i1, i1* @digest_hex_bytes, align 8
  %268 = select i1 %267, i64 40, i64 0
  %269 = add i64 %268, %176, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %269, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  %270 = getelementptr inbounds i8, i8* %164, i64 %269, !dbg !1192
  %271 = load i8, i8* %270, align 1, !dbg !1192, !tbaa !1043
  switch i8 %271, label %355 [
    i8 32, label %272
    i8 9, label %272
  ], !dbg !1192

; <label>:272:                                    ; preds = %266, %266
  %273 = add i64 %269, 1, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %273, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  store i8 0, i8* %270, align 1, !dbg !1195, !tbaa !1043
  %274 = sub i64 %165, %273, !dbg !1196
  %275 = icmp eq i64 %274, 1, !dbg !1198
  br i1 %275, label %279, label %276, !dbg !1199

; <label>:276:                                    ; preds = %272
  %277 = getelementptr inbounds i8, i8* %164, i64 %273, !dbg !1200
  %278 = load i8, i8* %277, align 1, !dbg !1200, !tbaa !1043
  switch i8 %278, label %279 [
    i8 32, label %283
    i8 42, label %283
  ], !dbg !1201

; <label>:279:                                    ; preds = %276, %272
  %280 = load i32, i32* @bsd_reversed, align 4, !dbg !1202, !tbaa !960
  %281 = icmp eq i32 %280, 0, !dbg !1205
  br i1 %281, label %355, label %282, !dbg !1206

; <label>:282:                                    ; preds = %279
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1207, !tbaa !960
  br label %288, !dbg !1208

; <label>:283:                                    ; preds = %276, %276
  %284 = load i32, i32* @bsd_reversed, align 4, !dbg !1209, !tbaa !960
  %285 = icmp eq i32 %284, 1, !dbg !1211
  br i1 %285, label %288, label %286, !dbg !1212

; <label>:286:                                    ; preds = %283
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1213, !tbaa !960
  %287 = add i64 %269, 2, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  br label %288, !dbg !1216

; <label>:288:                                    ; preds = %286, %283, %282
  %289 = phi i64 [ %273, %282 ], [ %287, %286 ], [ %273, %283 ]
  call void @llvm.dbg.value(metadata i64 %289, i64 0, metadata !1066, metadata !774) #10, !dbg !1071
  %290 = getelementptr inbounds i8, i8* %164, i64 %289, !dbg !1217
  br i1 %175, label %291, label %323, !dbg !1218

; <label>:291:                                    ; preds = %288
  %292 = sub i64 %165, %289, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !1133, metadata !774) #10, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1138, metadata !774) #10, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !1139, metadata !774) #10, !dbg !1224
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1140, metadata !774) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1140, metadata !774) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !1139, metadata !774) #10, !dbg !1224
  %293 = icmp eq i64 %292, 0, !dbg !1226
  br i1 %293, label %316, label %294, !dbg !1227

; <label>:294:                                    ; preds = %291
  %295 = add i64 %292, -1
  br label %296, !dbg !1227

; <label>:296:                                    ; preds = %310, %294
  %297 = phi i64 [ 0, %294 ], [ %314, %310 ]
  %298 = phi i8* [ %290, %294 ], [ %313, %310 ]
  call void @llvm.dbg.value(metadata i8* %298, i64 0, metadata !1139, metadata !774) #10, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1140, metadata !774) #10, !dbg !1225
  %299 = getelementptr inbounds i8, i8* %290, i64 %297, !dbg !1228
  %300 = load i8, i8* %299, align 1, !dbg !1228, !tbaa !1043
  %301 = sext i8 %300 to i32, !dbg !1228
  switch i32 %301, label %310 [
    i32 92, label %302
    i32 0, label %355
  ], !dbg !1229

; <label>:302:                                    ; preds = %296
  %303 = icmp eq i64 %297, %295, !dbg !1230
  br i1 %303, label %355, label %304, !dbg !1231

; <label>:304:                                    ; preds = %302
  %305 = add i64 %297, 1, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %305, i64 0, metadata !1140, metadata !774) #10, !dbg !1225
  %306 = getelementptr inbounds i8, i8* %290, i64 %305, !dbg !1233
  %307 = load i8, i8* %306, align 1, !dbg !1233, !tbaa !1043
  %308 = sext i8 %307 to i32, !dbg !1233
  switch i32 %308, label %355 [
    i32 110, label %309
    i32 92, label %310
  ], !dbg !1234

; <label>:309:                                    ; preds = %304
  call void @llvm.dbg.value(metadata i8* %298, i64 0, metadata !1139, metadata !1159) #10, !dbg !1224
  br label %310, !dbg !1235

; <label>:310:                                    ; preds = %309, %304, %296
  %311 = phi i8 [ 10, %309 ], [ 92, %304 ], [ %300, %296 ]
  %312 = phi i64 [ %305, %309 ], [ %305, %304 ], [ %297, %296 ]
  store i8 %311, i8* %298, align 1, !tbaa !1043
  %313 = getelementptr inbounds i8, i8* %298, i64 1
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1140, metadata !774) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %313, i64 0, metadata !1139, metadata !774) #10, !dbg !1224
  %314 = add i64 %312, 1, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1140, metadata !774) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1140, metadata !774) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %313, i64 0, metadata !1139, metadata !774) #10, !dbg !1224
  %315 = icmp ult i64 %314, %292, !dbg !1226
  br i1 %315, label %296, label %316, !dbg !1227, !llvm.loop !1164

; <label>:316:                                    ; preds = %310, %291
  %317 = phi i8* [ %290, %291 ], [ %313, %310 ]
  %318 = getelementptr inbounds i8, i8* %164, i64 %165, !dbg !1237
  %319 = icmp ult i8* %317, %318, !dbg !1238
  br i1 %319, label %320, label %321, !dbg !1239

; <label>:320:                                    ; preds = %316
  store i8 0, i8* %317, align 1, !dbg !1240, !tbaa !1043
  br label %321, !dbg !1241

; <label>:321:                                    ; preds = %320, %316
  %322 = icmp eq i8* %290, null, !dbg !1242
  br i1 %322, label %355, label %323, !dbg !1243

; <label>:323:                                    ; preds = %251, %321, %288
  %324 = phi i8* [ %177, %321 ], [ %177, %288 ], [ %254, %251 ]
  %325 = phi i8* [ %290, %321 ], [ %290, %288 ], [ %192, %251 ]
  br i1 %121, label %326, label %329, !dbg !1244

; <label>:326:                                    ; preds = %323
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !183, metadata !774) #10, !dbg !1245
  %327 = call i32 @strcmp(i8* %325, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !1246
  %328 = icmp eq i32 %327, 0, !dbg !1246
  br i1 %328, label %355, label %329, !dbg !1247

; <label>:329:                                    ; preds = %326, %323
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !186, metadata !774) #10, !dbg !1248
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1255, metadata !774) #10, !dbg !1258
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1255, metadata !774) #10, !dbg !1258
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  %330 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %330, label %331, label %351, !dbg !1259

; <label>:331:                                    ; preds = %329
  %332 = tail call i16** @__ctype_b_loc() #17, !dbg !1261
  %333 = load i16*, i16** %332, align 8, !tbaa !781
  br label %334, !dbg !1259

; <label>:334:                                    ; preds = %669, %331
  %335 = phi i32 [ 0, %331 ], [ %671, %669 ]
  %336 = phi i8* [ %324, %331 ], [ %670, %669 ]
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !1255, metadata !774) #10, !dbg !1258
  %337 = load i8, i8* %336, align 1, !dbg !1261, !tbaa !1043
  %338 = zext i8 %337 to i64, !dbg !1261
  %339 = getelementptr inbounds i16, i16* %333, i64 %338, !dbg !1261
  %340 = load i16, i16* %339, align 2, !dbg !1261, !tbaa !1265
  %341 = and i16 %340, 4096, !dbg !1261
  %342 = icmp eq i16 %341, 0, !dbg !1261
  br i1 %342, label %355, label %343, !dbg !1267

; <label>:343:                                    ; preds = %334
  %344 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !1255, metadata !774) #10, !dbg !1258
  %345 = load i8, i8* %344, align 1, !dbg !1261, !tbaa !1043
  %346 = zext i8 %345 to i64, !dbg !1261
  %347 = getelementptr inbounds i16, i16* %333, i64 %346, !dbg !1261
  %348 = load i16, i16* %347, align 2, !dbg !1261, !tbaa !1265
  %349 = and i16 %348, 4096, !dbg !1261
  %350 = icmp eq i16 %349, 0, !dbg !1261
  br i1 %350, label %355, label %653, !dbg !1267

; <label>:351:                                    ; preds = %669, %329
  %352 = phi i8* [ %324, %329 ], [ %670, %669 ]
  %353 = load i8, i8* %352, align 1, !dbg !1269, !tbaa !1043
  %354 = icmp eq i8 %353, 0, !dbg !1270
  br i1 %354, label %363, label %355, !dbg !1271

; <label>:355:                                    ; preds = %304, %302, %296, %227, %225, %219, %244, %334, %343, %653, %661, %351, %326, %321, %279, %266, %257, %208, %190, %180
  %356 = add i64 %143, 1, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %356, i64 0, metadata !168, metadata !774) #10, !dbg !977
  %357 = load i1, i1* @warn, align 1
  br i1 %357, label %358, label %361, !dbg !1274

; <label>:358:                                    ; preds = %355
  %359 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i64 0, i64 0), i32 5) #10, !dbg !1275
  %360 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1278
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %359, i8* %360, i64 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1279
  br label %361, !dbg !1280

; <label>:361:                                    ; preds = %358, %355
  %362 = add i64 %142, 1, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %362, i64 0, metadata !169, metadata !774) #10, !dbg !978
  br label %469, !dbg !1282

; <label>:363:                                    ; preds = %351
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !194, metadata !774) #10, !dbg !1283
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #10, !dbg !1284
  %364 = load i1, i1* @status_only, align 1
  br i1 %364, label %368, label %365, !dbg !1285

; <label>:365:                                    ; preds = %363
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !183, metadata !774) #10, !dbg !1245
  %366 = call i8* @strchr(i8* %325, i32 10) #14, !dbg !1286
  %367 = icmp ne i8* %366, null, !dbg !1285
  br label %368

; <label>:368:                                    ; preds = %365, %363
  %369 = phi i1 [ false, %363 ], [ %367, %365 ]
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !172, metadata !774) #10, !dbg !981
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !183, metadata !774) #10, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !194, metadata !774) #10, !dbg !1283
  %370 = call fastcc zeroext i1 @digest_file(i8* %325, i8* %107, i8* nonnull %6) #10, !dbg !1287
  br i1 %370, label %389, label %371, !dbg !1288

; <label>:371:                                    ; preds = %368
  %372 = add i64 %140, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !171, metadata !774) #10, !dbg !980
  %373 = load i1, i1* @status_only, align 1
  br i1 %373, label %465, label %374, !dbg !1291

; <label>:374:                                    ; preds = %371
  br i1 %369, label %375, label %386, !dbg !1292

; <label>:375:                                    ; preds = %374
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1295, metadata !774) #10, !dbg !1300
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1303, !tbaa !781
  %377 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %376, i64 0, i32 5, !dbg !1303
  %378 = load i8*, i8** %377, align 8, !dbg !1303, !tbaa !1304
  %379 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %376, i64 0, i32 6, !dbg !1303
  %380 = load i8*, i8** %379, align 8, !dbg !1303, !tbaa !1306
  %381 = icmp ult i8* %378, %380, !dbg !1303
  br i1 %381, label %384, label %382, !dbg !1303, !prof !1307

; <label>:382:                                    ; preds = %375
  %383 = call i32 @__overflow(%struct._IO_FILE* %376, i32 92) #10, !dbg !1303
  br label %386, !dbg !1303

; <label>:384:                                    ; preds = %375
  %385 = getelementptr inbounds i8, i8* %378, i64 1, !dbg !1303
  store i8* %385, i8** %377, align 8, !dbg !1303, !tbaa !1304
  store i8 92, i8* %378, align 1, !dbg !1303, !tbaa !1043
  br label %386, !dbg !1303

; <label>:386:                                    ; preds = %384, %382, %374
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !183, metadata !774) #10, !dbg !1245
  call fastcc void @print_filename(i8* %325, i1 zeroext %369) #10, !dbg !1308
  %387 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1309
  %388 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %387) #10, !dbg !1309
  br label %465, !dbg !1310

; <label>:389:                                    ; preds = %368
  %390 = load i1, i1* @ignore_missing, align 1
  %391 = xor i1 %390, true, !dbg !1311
  %392 = load i8, i8* %6, align 1, !dbg !1312
  %393 = icmp eq i8 %392, 0, !dbg !1312
  %394 = or i1 %393, %391, !dbg !1311
  br i1 %394, label %395, label %465, !dbg !1311

; <label>:395:                                    ; preds = %389
  %396 = load i1, i1* @digest_hex_bytes, align 8
  %397 = select i1 %396, i64 20, i64 0, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %397, i64 0, metadata !196, metadata !774) #10, !dbg !1314
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !200, metadata !774) #10, !dbg !1315
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !200, metadata !774) #10, !dbg !1315
  br i1 %396, label %398, label %434, !dbg !1316

; <label>:398:                                    ; preds = %395
  %399 = tail call i32** @__ctype_tolower_loc() #17, !dbg !1317
  %400 = load i32*, i32** %399, align 8, !tbaa !781
  br label %401, !dbg !1316

; <label>:401:                                    ; preds = %431, %398
  %402 = phi i64 [ 0, %398 ], [ %432, %431 ]
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !200, metadata !774) #10, !dbg !1315
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !186, metadata !774) #10, !dbg !1248
  %403 = shl i64 %402, 1, !dbg !1317
  %404 = getelementptr inbounds i8, i8* %324, i64 %403, !dbg !1317
  %405 = load i8, i8* %404, align 1, !dbg !1317, !tbaa !1043
  %406 = zext i8 %405 to i64, !dbg !1317
  %407 = getelementptr inbounds i32, i32* %400, i64 %406, !dbg !1317
  %408 = load i32, i32* %407, align 4, !dbg !1317, !tbaa !960
  call void @llvm.dbg.value(metadata i32 %408, i64 0, metadata !201, metadata !774) #10, !dbg !1319
  %409 = getelementptr inbounds i8, i8* %107, i64 %402, !dbg !1320
  %410 = load i8, i8* %409, align 1, !dbg !1320, !tbaa !1043
  %411 = zext i8 %410 to i32, !dbg !1320
  %412 = lshr i32 %411, 4, !dbg !1321
  %413 = zext i32 %412 to i64, !dbg !1322
  %414 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %413, !dbg !1322
  %415 = load i8, i8* %414, align 1, !dbg !1322, !tbaa !1043
  %416 = sext i8 %415 to i32, !dbg !1322
  %417 = icmp eq i32 %408, %416, !dbg !1323
  br i1 %417, label %418, label %434, !dbg !1324

; <label>:418:                                    ; preds = %401
  %419 = or i64 %403, 1, !dbg !1325
  %420 = getelementptr inbounds i8, i8* %324, i64 %419, !dbg !1325
  %421 = load i8, i8* %420, align 1, !dbg !1325, !tbaa !1043
  %422 = zext i8 %421 to i64, !dbg !1325
  %423 = getelementptr inbounds i32, i32* %400, i64 %422, !dbg !1325
  %424 = load i32, i32* %423, align 4, !dbg !1325, !tbaa !960
  call void @llvm.dbg.value(metadata i32 %424, i64 0, metadata !207, metadata !774) #10, !dbg !1327
  %425 = and i32 %411, 15, !dbg !1328
  %426 = zext i32 %425 to i64, !dbg !1329
  %427 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %426, !dbg !1329
  %428 = load i8, i8* %427, align 1, !dbg !1329, !tbaa !1043
  %429 = sext i8 %428 to i32, !dbg !1330
  %430 = icmp eq i32 %424, %429, !dbg !1331
  br i1 %430, label %431, label %434, !dbg !1332

; <label>:431:                                    ; preds = %418
  %432 = add nuw nsw i64 %402, 1, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %432, i64 0, metadata !200, metadata !774) #10, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %432, i64 0, metadata !200, metadata !774) #10, !dbg !1315
  %433 = icmp ult i64 %432, %397, !dbg !1334
  br i1 %433, label %401, label %434, !dbg !1316, !llvm.loop !1335

; <label>:434:                                    ; preds = %431, %418, %401, %395
  %435 = phi i64 [ 0, %395 ], [ %432, %431 ], [ %402, %401 ], [ %402, %418 ]
  %436 = icmp ne i64 %435, %397, !dbg !1338
  %437 = add i64 %141, 1, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %437, i64 0, metadata !170, metadata !774) #10, !dbg !979
  %438 = select i1 %436, i8 %137, i8 1, !dbg !1341
  %439 = select i1 %436, i64 %437, i64 %141, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %439, i64 0, metadata !170, metadata !774) #10, !dbg !979
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !173, metadata !774) #10, !dbg !982
  %440 = load i1, i1* @status_only, align 1
  br i1 %440, label %465, label %441, !dbg !1342

; <label>:441:                                    ; preds = %434
  br i1 %436, label %444, label %442, !dbg !1343

; <label>:442:                                    ; preds = %441
  %443 = load i1, i1* @quiet, align 1
  br i1 %443, label %465, label %444, !dbg !1347

; <label>:444:                                    ; preds = %442, %441
  br i1 %369, label %445, label %456, !dbg !1348

; <label>:445:                                    ; preds = %444
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1295, metadata !774) #10, !dbg !1350
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1353, !tbaa !781
  %447 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %446, i64 0, i32 5, !dbg !1353
  %448 = load i8*, i8** %447, align 8, !dbg !1353, !tbaa !1304
  %449 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %446, i64 0, i32 6, !dbg !1353
  %450 = load i8*, i8** %449, align 8, !dbg !1353, !tbaa !1306
  %451 = icmp ult i8* %448, %450, !dbg !1353
  br i1 %451, label %454, label %452, !dbg !1353, !prof !1307

; <label>:452:                                    ; preds = %445
  %453 = call i32 @__overflow(%struct._IO_FILE* %446, i32 92) #10, !dbg !1353
  br label %456, !dbg !1353

; <label>:454:                                    ; preds = %445
  %455 = getelementptr inbounds i8, i8* %448, i64 1, !dbg !1353
  store i8* %455, i8** %447, align 8, !dbg !1353, !tbaa !1304
  store i8 92, i8* %448, align 1, !dbg !1353, !tbaa !1043
  br label %456, !dbg !1353

; <label>:456:                                    ; preds = %454, %452, %444
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !183, metadata !774) #10, !dbg !1245
  call fastcc void @print_filename(i8* %325, i1 zeroext %369) #10, !dbg !1354
  br i1 %436, label %457, label %460, !dbg !1355

; <label>:457:                                    ; preds = %456
  %458 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i32 5) #10, !dbg !1356
  %459 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %458) #10, !dbg !1356
  br label %465, !dbg !1356

; <label>:460:                                    ; preds = %456
  %461 = load i1, i1* @quiet, align 1
  br i1 %461, label %465, label %462, !dbg !1358

; <label>:462:                                    ; preds = %460
  %463 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32 5) #10, !dbg !1359
  %464 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %463) #10, !dbg !1359
  br label %465, !dbg !1359

; <label>:465:                                    ; preds = %462, %460, %457, %442, %434, %389, %386, %371
  %466 = phi i8 [ %137, %371 ], [ %137, %386 ], [ %137, %389 ], [ %137, %457 ], [ 1, %462 ], [ 1, %460 ], [ %438, %434 ], [ 1, %442 ]
  %467 = phi i64 [ %372, %371 ], [ %372, %386 ], [ %140, %389 ], [ %140, %457 ], [ %140, %462 ], [ %140, %460 ], [ %140, %434 ], [ %140, %442 ]
  %468 = phi i64 [ %141, %371 ], [ %141, %386 ], [ %141, %389 ], [ %437, %457 ], [ %141, %462 ], [ %141, %460 ], [ %439, %434 ], [ %141, %442 ]
  call void @llvm.dbg.value(metadata i64 %468, i64 0, metadata !170, metadata !774) #10, !dbg !979
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !171, metadata !774) #10, !dbg !980
  call void @llvm.dbg.value(metadata i8 %466, i64 0, metadata !173, metadata !774) #10, !dbg !982
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !194, metadata !774) #10, !dbg !1283
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #10, !dbg !1361
  br label %469

; <label>:469:                                    ; preds = %465, %361, %152
  %470 = phi i8 [ %466, %465 ], [ %137, %361 ], [ %137, %152 ]
  %471 = phi i8 [ 1, %465 ], [ %139, %361 ], [ %139, %152 ]
  %472 = phi i64 [ %467, %465 ], [ %140, %361 ], [ %140, %152 ]
  %473 = phi i64 [ %468, %465 ], [ %141, %361 ], [ %141, %152 ]
  %474 = phi i64 [ %142, %465 ], [ %362, %361 ], [ %142, %152 ]
  %475 = phi i64 [ %143, %465 ], [ %356, %361 ], [ %143, %152 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !1362, metadata !774) #10, !dbg !1367
  %476 = load i32, i32* %135, align 8, !dbg !1369, !tbaa !1370
  %477 = and i32 %476, 48, !dbg !1371
  %478 = icmp eq i32 %477, 0, !dbg !1371
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !1372, metadata !774) #10, !dbg !1375
  br i1 %478, label %136, label %479, !dbg !1371, !llvm.loop !1016

; <label>:479:                                    ; preds = %469, %149
  %480 = phi i64 [ %475, %469 ], [ %143, %149 ]
  %481 = phi i64 [ %474, %469 ], [ %142, %149 ]
  %482 = phi i64 [ %473, %469 ], [ %141, %149 ]
  %483 = phi i64 [ %472, %469 ], [ %140, %149 ]
  %484 = phi i8 [ %471, %469 ], [ %139, %149 ]
  %485 = phi i8 [ %470, %469 ], [ %137, %149 ]
  %486 = load i8*, i8** %4, align 8, !dbg !1377, !tbaa !781
  call void @llvm.dbg.value(metadata i8* %486, i64 0, metadata !180, metadata !774) #10, !dbg !1009
  call void @free(i8* %486) #10, !dbg !1378
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, i64 0, metadata !1372, metadata !774) #10, !dbg !1379
  %487 = load i32, i32* %135, align 8, !dbg !1382, !tbaa !1370
  %488 = and i32 %487, 32, !dbg !1382
  %489 = icmp eq i32 %488, 0, !dbg !1383
  br i1 %489, label %493, label %490, !dbg !1384

; <label>:490:                                    ; preds = %479
  %491 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32 5) #10, !dbg !1385
  %492 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1387
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %491, i8* %492) #10, !dbg !1388
  br label %542, !dbg !1389

; <label>:493:                                    ; preds = %479
  br i1 %121, label %501, label %494, !dbg !1390

; <label>:494:                                    ; preds = %493
  %495 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %133) #10, !dbg !1392
  %496 = icmp eq i32 %495, 0, !dbg !1393
  br i1 %496, label %501, label %497, !dbg !1394

; <label>:497:                                    ; preds = %494
  %498 = tail call i32* @__errno_location() #17, !dbg !1395
  %499 = load i32, i32* %498, align 4, !dbg !1395, !tbaa !960
  %500 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1397
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %499, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %500) #10, !dbg !1398
  br label %542, !dbg !1399

; <label>:501:                                    ; preds = %494, %493
  %502 = and i8 %484, 1, !dbg !1400
  %503 = icmp eq i8 %502, 0, !dbg !1400
  br i1 %503, label %528, label %504, !dbg !1402

; <label>:504:                                    ; preds = %501
  %505 = load i1, i1* @status_only, align 1
  br i1 %505, label %506, label %508, !dbg !1403

; <label>:506:                                    ; preds = %504
  %507 = and i8 %485, 1, !dbg !1405
  br label %531, !dbg !1403

; <label>:508:                                    ; preds = %504
  %509 = icmp eq i64 %480, 0, !dbg !1406
  br i1 %509, label %512, label %510, !dbg !1410

; <label>:510:                                    ; preds = %508
  %511 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i64 0, i64 0), i64 %480, i32 5) #10, !dbg !1411
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %511, i64 %480) #10, !dbg !1412
  br label %512, !dbg !1412

; <label>:512:                                    ; preds = %510, %508
  %513 = icmp eq i64 %483, 0, !dbg !1413
  br i1 %513, label %516, label %514, !dbg !1415

; <label>:514:                                    ; preds = %512
  %515 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 %483, i32 5) #10, !dbg !1416
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %515, i64 %483) #10, !dbg !1417
  br label %516, !dbg !1417

; <label>:516:                                    ; preds = %514, %512
  %517 = icmp eq i64 %482, 0, !dbg !1418
  br i1 %517, label %520, label %518, !dbg !1420

; <label>:518:                                    ; preds = %516
  %519 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.76, i64 0, i64 0), i64 %482, i32 5) #10, !dbg !1421
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %519, i64 %482) #10, !dbg !1422
  br label %520, !dbg !1422

; <label>:520:                                    ; preds = %518, %516
  %521 = load i1, i1* @ignore_missing, align 1
  %522 = and i8 %485, 1, !dbg !1423
  %523 = icmp eq i8 %522, 0, !dbg !1423
  %524 = and i1 %523, %521, !dbg !1425
  br i1 %524, label %525, label %531, !dbg !1425

; <label>:525:                                    ; preds = %520
  %526 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i64 0, i64 0), i32 5) #10, !dbg !1426
  %527 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1427
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %526, i8* %527) #10, !dbg !1428
  br label %542, !dbg !1429

; <label>:528:                                    ; preds = %501
  %529 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.70, i64 0, i64 0), i32 5) #10, !dbg !1430
  %530 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %134) #10, !dbg !1432
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %529, i8* %530, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1433
  br label %542

; <label>:531:                                    ; preds = %520, %506
  %532 = phi i8 [ %507, %506 ], [ %522, %520 ], !dbg !1405
  %533 = icmp ne i8 %532, 0, !dbg !1405
  %534 = or i64 %483, %482, !dbg !1429
  %535 = icmp eq i64 %534, 0, !dbg !1429
  %536 = and i1 %535, %533, !dbg !1429
  br i1 %536, label %537, label %542, !dbg !1429

; <label>:537:                                    ; preds = %531
  %538 = load i1, i1* @strict, align 1
  %539 = icmp eq i64 %481, 0, !dbg !1434
  %540 = xor i1 %538, true, !dbg !1435
  %541 = or i1 %539, %540, !dbg !1435
  br label %542, !dbg !1435

; <label>:542:                                    ; preds = %128, %490, %497, %525, %528, %531, %537
  %543 = phi i1 [ false, %490 ], [ false, %497 ], [ false, %128 ], [ false, %531 ], [ false, %528 ], [ %541, %537 ], [ false, %525 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #10, !dbg !1436
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #10, !dbg !1436
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %102) #10, !dbg !1436
  %544 = zext i1 %543 to i8, !dbg !1437
  %545 = and i8 %117, %544, !dbg !1438
  call void @llvm.dbg.value(metadata i8 %545, i64 0, metadata !829, metadata !774), !dbg !872
  br label %637, !dbg !1439

; <label>:546:                                    ; preds = %115
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !842, metadata !774), !dbg !1440
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #10, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !842, metadata !774), !dbg !1440
  %547 = call fastcc zeroext i1 @digest_file(i8* %118, i8* %14, i8* nonnull %8), !dbg !1442
  br i1 %547, label %548, label %635, !dbg !1443

; <label>:548:                                    ; preds = %546
  %549 = call i8* @strchr(i8* %118, i32 92) #14, !dbg !1444
  %550 = icmp eq i8* %549, null, !dbg !1444
  br i1 %550, label %551, label %554, !dbg !1445

; <label>:551:                                    ; preds = %548
  %552 = call i8* @strchr(i8* %118, i32 10) #14, !dbg !1446
  %553 = icmp ne i8* %552, null, !dbg !1445
  br label %554, !dbg !1445

; <label>:554:                                    ; preds = %548, %551
  %555 = phi i1 [ true, %548 ], [ %553, %551 ]
  br i1 %45, label %556, label %575, !dbg !1447

; <label>:556:                                    ; preds = %554
  br i1 %555, label %557, label %568, !dbg !1448

; <label>:557:                                    ; preds = %556
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1295, metadata !774) #10, !dbg !1451
  %558 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1454, !tbaa !781
  %559 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %558, i64 0, i32 5, !dbg !1454
  %560 = load i8*, i8** %559, align 8, !dbg !1454, !tbaa !1304
  %561 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %558, i64 0, i32 6, !dbg !1454
  %562 = load i8*, i8** %561, align 8, !dbg !1454, !tbaa !1306
  %563 = icmp ult i8* %560, %562, !dbg !1454
  br i1 %563, label %566, label %564, !dbg !1454, !prof !1307

; <label>:564:                                    ; preds = %557
  %565 = call i32 @__overflow(%struct._IO_FILE* %558, i32 92) #10, !dbg !1454
  br label %568, !dbg !1454

; <label>:566:                                    ; preds = %557
  %567 = getelementptr inbounds i8, i8* %560, i64 1, !dbg !1454
  store i8* %567, i8** %559, align 8, !dbg !1454, !tbaa !1304
  store i8 92, i8* %560, align 1, !dbg !1454, !tbaa !1043
  br label %568, !dbg !1454

; <label>:568:                                    ; preds = %566, %564, %556
  %569 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1455, !tbaa !781
  %570 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %569) #10, !dbg !1455
  %571 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1456, !tbaa !781
  %572 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %struct._IO_FILE* %571) #10, !dbg !1456
  call fastcc void @print_filename(i8* %118, i1 zeroext %555), !dbg !1457
  %573 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1458, !tbaa !781
  %574 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), %struct._IO_FILE* %573) #10, !dbg !1458
  br label %587, !dbg !1459

; <label>:575:                                    ; preds = %554
  br i1 %555, label %576, label %587, !dbg !1461

; <label>:576:                                    ; preds = %575
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1295, metadata !774) #10, !dbg !1462
  %577 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1464, !tbaa !781
  %578 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %577, i64 0, i32 5, !dbg !1464
  %579 = load i8*, i8** %578, align 8, !dbg !1464, !tbaa !1304
  %580 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %577, i64 0, i32 6, !dbg !1464
  %581 = load i8*, i8** %580, align 8, !dbg !1464, !tbaa !1306
  %582 = icmp ult i8* %579, %581, !dbg !1464
  br i1 %582, label %585, label %583, !dbg !1464, !prof !1307

; <label>:583:                                    ; preds = %576
  %584 = call i32 @__overflow(%struct._IO_FILE* %577, i32 92) #10, !dbg !1464
  br label %587, !dbg !1464

; <label>:585:                                    ; preds = %576
  %586 = getelementptr inbounds i8, i8* %579, i64 1, !dbg !1464
  store i8* %586, i8** %578, align 8, !dbg !1464, !tbaa !1304
  store i8 92, i8* %579, align 1, !dbg !1464, !tbaa !1043
  br label %587, !dbg !1464

; <label>:587:                                    ; preds = %585, %583, %568, %575
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !846, metadata !774), !dbg !1465
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !846, metadata !774), !dbg !1465
  %588 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %588, label %589, label %600, !dbg !1466

; <label>:589:                                    ; preds = %587
  br label %590, !dbg !1468

; <label>:590:                                    ; preds = %589, %590
  %591 = phi i64 [ %596, %590 ], [ 0, %589 ]
  call void @llvm.dbg.value(metadata i64 %591, i64 0, metadata !846, metadata !774), !dbg !1465
  %592 = getelementptr inbounds i8, i8* %14, i64 %591, !dbg !1468
  %593 = load i8, i8* %592, align 1, !dbg !1468, !tbaa !1043
  %594 = zext i8 %593 to i32, !dbg !1468
  %595 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %594) #10, !dbg !1468
  %596 = add i64 %591, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !846, metadata !774), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !846, metadata !774), !dbg !1465
  %597 = load i1, i1* @digest_hex_bytes, align 8
  %598 = select i1 %597, i64 20, i64 0, !dbg !1471
  %599 = icmp ult i64 %596, %598, !dbg !1472
  br i1 %599, label %590, label %600, !dbg !1466, !llvm.loop !1473

; <label>:600:                                    ; preds = %590, %587
  br i1 %45, label %624, label %601, !dbg !1475

; <label>:601:                                    ; preds = %600
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1295, metadata !774) #10, !dbg !1476
  %602 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1480, !tbaa !781
  %603 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %602, i64 0, i32 5, !dbg !1480
  %604 = load i8*, i8** %603, align 8, !dbg !1480, !tbaa !1304
  %605 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %602, i64 0, i32 6, !dbg !1480
  %606 = load i8*, i8** %605, align 8, !dbg !1480, !tbaa !1306
  %607 = icmp ult i8* %604, %606, !dbg !1480
  br i1 %607, label %610, label %608, !dbg !1480, !prof !1307

; <label>:608:                                    ; preds = %601
  %609 = call i32 @__overflow(%struct._IO_FILE* %602, i32 32) #10, !dbg !1480
  br label %612, !dbg !1480

; <label>:610:                                    ; preds = %601
  %611 = getelementptr inbounds i8, i8* %604, i64 1, !dbg !1480
  store i8* %611, i8** %603, align 8, !dbg !1480, !tbaa !1304
  store i8 32, i8* %604, align 1, !dbg !1480, !tbaa !1043
  br label %612, !dbg !1480

; <label>:612:                                    ; preds = %608, %610
  call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !1295, metadata !774) #10, !dbg !1481
  %613 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1483, !tbaa !781
  %614 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %613, i64 0, i32 5, !dbg !1483
  %615 = load i8*, i8** %614, align 8, !dbg !1483, !tbaa !1304
  %616 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %613, i64 0, i32 6, !dbg !1483
  %617 = load i8*, i8** %616, align 8, !dbg !1483, !tbaa !1306
  %618 = icmp ult i8* %615, %617, !dbg !1483
  br i1 %618, label %621, label %619, !dbg !1483, !prof !1307

; <label>:619:                                    ; preds = %612
  %620 = call i32 @__overflow(%struct._IO_FILE* %613, i32 %110) #10, !dbg !1483
  br label %623, !dbg !1483

; <label>:621:                                    ; preds = %612
  %622 = getelementptr inbounds i8, i8* %615, i64 1, !dbg !1483
  store i8* %622, i8** %614, align 8, !dbg !1483, !tbaa !1304
  store i8 %111, i8* %615, align 1, !dbg !1483, !tbaa !1043
  br label %623, !dbg !1483

; <label>:623:                                    ; preds = %619, %621
  call fastcc void @print_filename(i8* %118, i1 zeroext %555), !dbg !1484
  br label %624, !dbg !1485

; <label>:624:                                    ; preds = %623, %600
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1295, metadata !774) #10, !dbg !1486
  %625 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1488, !tbaa !781
  %626 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %625, i64 0, i32 5, !dbg !1488
  %627 = load i8*, i8** %626, align 8, !dbg !1488, !tbaa !1304
  %628 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %625, i64 0, i32 6, !dbg !1488
  %629 = load i8*, i8** %628, align 8, !dbg !1488, !tbaa !1306
  %630 = icmp ult i8* %627, %629, !dbg !1488
  br i1 %630, label %633, label %631, !dbg !1488, !prof !1307

; <label>:631:                                    ; preds = %624
  %632 = call i32 @__overflow(%struct._IO_FILE* %625, i32 10) #10, !dbg !1488
  br label %635, !dbg !1488

; <label>:633:                                    ; preds = %624
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1488
  store i8* %634, i8** %626, align 8, !dbg !1488, !tbaa !1304
  store i8 10, i8* %627, align 1, !dbg !1488, !tbaa !1043
  br label %635, !dbg !1488

; <label>:635:                                    ; preds = %633, %631, %546
  %636 = phi i8 [ 0, %546 ], [ %117, %631 ], [ %117, %633 ]
  call void @llvm.dbg.value(metadata i8 %636, i64 0, metadata !829, metadata !774), !dbg !872
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !842, metadata !774), !dbg !1440
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #10, !dbg !1489
  br label %637

; <label>:637:                                    ; preds = %635, %542
  %638 = phi i8 [ %545, %542 ], [ %636, %635 ]
  call void @llvm.dbg.value(metadata i8 %638, i64 0, metadata !829, metadata !774), !dbg !872
  %639 = getelementptr inbounds i8*, i8** %116, i64 1, !dbg !1490
  call void @llvm.dbg.value(metadata i8** %639, i64 0, metadata !834, metadata !774), !dbg !968
  call void @llvm.dbg.value(metadata i8** %639, i64 0, metadata !834, metadata !774), !dbg !968
  call void @llvm.dbg.value(metadata i8 %638, i64 0, metadata !829, metadata !774), !dbg !872
  %640 = icmp ult i8** %639, %97, !dbg !969
  br i1 %640, label %115, label %112, !dbg !970, !llvm.loop !1491

; <label>:641:                                    ; preds = %112
  %642 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1493, !tbaa !781
  %643 = call i32 @rpl_fclose(%struct._IO_FILE* %642) #10, !dbg !1494
  %644 = icmp eq i32 %643, -1, !dbg !1495
  br i1 %644, label %645, label %649, !dbg !1496

; <label>:645:                                    ; preds = %641
  %646 = tail call i32* @__errno_location() #17, !dbg !1497
  %647 = load i32, i32* %646, align 4, !dbg !1497, !tbaa !960
  %648 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !1497
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %647, i8* %648) #10, !dbg !1497
  unreachable, !dbg !1497

; <label>:649:                                    ; preds = %641, %112
  %650 = and i8 %113, 1, !dbg !1498
  %651 = xor i8 %650, 1, !dbg !1498
  %652 = zext i8 %651 to i32, !dbg !1498
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #10, !dbg !1499
  ret i32 %652, !dbg !1499

; <label>:653:                                    ; preds = %343
  %654 = getelementptr inbounds i8, i8* %336, i64 2, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !1255, metadata !774) #10, !dbg !1258
  %655 = load i8, i8* %654, align 1, !dbg !1261, !tbaa !1043
  %656 = zext i8 %655 to i64, !dbg !1261
  %657 = getelementptr inbounds i16, i16* %333, i64 %656, !dbg !1261
  %658 = load i16, i16* %657, align 2, !dbg !1261, !tbaa !1265
  %659 = and i16 %658, 4096, !dbg !1261
  %660 = icmp eq i16 %659, 0, !dbg !1261
  br i1 %660, label %355, label %661, !dbg !1267

; <label>:661:                                    ; preds = %653
  %662 = getelementptr inbounds i8, i8* %336, i64 3, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !1255, metadata !774) #10, !dbg !1258
  %663 = load i8, i8* %662, align 1, !dbg !1261, !tbaa !1043
  %664 = zext i8 %663 to i64, !dbg !1261
  %665 = getelementptr inbounds i16, i16* %333, i64 %664, !dbg !1261
  %666 = load i16, i16* %665, align 2, !dbg !1261, !tbaa !1265
  %667 = and i16 %666, 4096, !dbg !1261
  %668 = icmp eq i16 %667, 0, !dbg !1261
  br i1 %668, label %355, label %669, !dbg !1267

; <label>:669:                                    ; preds = %661
  %670 = getelementptr inbounds i8, i8* %336, i64 4, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  %671 = add nsw i32 %335, 4, !dbg !1500
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1249, metadata !774) #10, !dbg !1256
  %672 = icmp ult i32 %671, 40, !dbg !1501
  br i1 %672, label %334, label %351, !dbg !1259, !llvm.loop !1502
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
define internal fastcc zeroext i1 @digest_file(i8*, i8*, i8* nocapture) unnamed_addr #6 !dbg !1505 {
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1511, metadata !774), !dbg !1517
  %4 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !1518
  %5 = icmp eq i32 %4, 0, !dbg !1518
  store i8 0, i8* %2, align 1, !dbg !1519, !tbaa !1520
  br i1 %5, label %6, label %8, !dbg !1522

; <label>:6:                                      ; preds = %3
  store i1 true, i1* @have_read_stdin, align 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1523, !tbaa !781
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, i64 0, metadata !1514, metadata !774), !dbg !1526
  br label %21, !dbg !1527

; <label>:8:                                      ; preds = %3
  %9 = tail call %struct._IO_FILE* @fopen_safer(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !1528
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, i64 0, metadata !1514, metadata !774), !dbg !1526
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !1530
  br i1 %10, label %11, label %21, !dbg !1532

; <label>:11:                                     ; preds = %8
  %12 = load i1, i1* @ignore_missing, align 1
  %13 = tail call i32* @__errno_location() #17, !dbg !1533
  br i1 %12, label %14, label %18, !dbg !1536

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %13, align 4, !dbg !1533, !tbaa !960
  %16 = icmp eq i32 %15, 2, !dbg !1537
  br i1 %16, label %17, label %18, !dbg !1538

; <label>:17:                                     ; preds = %14
  store i8 1, i8* %2, align 1, !dbg !1539, !tbaa !1520
  br label %41, !dbg !1541

; <label>:18:                                     ; preds = %11, %14
  %19 = load i32, i32* %13, align 4, !dbg !1542, !tbaa !960
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1543
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %20) #10, !dbg !1544
  br label %41, !dbg !1545

; <label>:21:                                     ; preds = %8, %6
  %22 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, i64 0, metadata !1514, metadata !774), !dbg !1526
  tail call void @fadvise(%struct._IO_FILE* %22, i32 2) #10, !dbg !1546
  %23 = tail call i32 @sha1_stream(%struct._IO_FILE* %22, i8* %1) #10, !dbg !1547
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !1515, metadata !774), !dbg !1548
  %24 = icmp eq i32 %23, 0, !dbg !1549
  br i1 %24, label %33, label %25, !dbg !1551

; <label>:25:                                     ; preds = %21
  %26 = tail call i32* @__errno_location() #17, !dbg !1552
  %27 = load i32, i32* %26, align 4, !dbg !1552, !tbaa !960
  %28 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1554
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %28) #10, !dbg !1555
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1556, !tbaa !781
  %30 = icmp eq %struct._IO_FILE* %22, %29, !dbg !1558
  br i1 %30, label %41, label %31, !dbg !1559

; <label>:31:                                     ; preds = %25
  %32 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #10, !dbg !1560
  br label %41, !dbg !1560

; <label>:33:                                     ; preds = %21
  br i1 %5, label %41, label %34, !dbg !1561

; <label>:34:                                     ; preds = %33
  %35 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #10, !dbg !1563
  %36 = icmp eq i32 %35, 0, !dbg !1564
  br i1 %36, label %41, label %37, !dbg !1565

; <label>:37:                                     ; preds = %34
  %38 = tail call i32* @__errno_location() #17, !dbg !1566
  %39 = load i32, i32* %38, align 4, !dbg !1566, !tbaa !960
  %40 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1568
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %40) #10, !dbg !1569
  br label %41, !dbg !1570

; <label>:41:                                     ; preds = %33, %34, %31, %25, %37, %18, %17
  %42 = phi i1 [ false, %37 ], [ true, %17 ], [ false, %18 ], [ false, %25 ], [ false, %31 ], [ true, %34 ], [ true, %33 ]
  ret i1 %42, !dbg !1571
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8*, i1 zeroext) unnamed_addr #6 !dbg !1572 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1576, metadata !774), !dbg !1578
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1577, metadata !774), !dbg !1579
  br i1 %1, label %6, label %3, !dbg !1580

; <label>:3:                                      ; preds = %2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1581, !tbaa !781
  %5 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %4) #10, !dbg !1581
  br label %36, !dbg !1584

; <label>:6:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1576, metadata !774), !dbg !1578
  %7 = load i8, i8* %0, align 1, !dbg !1585, !tbaa !1043
  %8 = icmp eq i8 %7, 0, !dbg !1586
  br i1 %8, label %36, label %9, !dbg !1586

; <label>:9:                                      ; preds = %6
  br label %10, !dbg !1587

; <label>:10:                                     ; preds = %9, %32
  %11 = phi i8 [ %34, %32 ], [ %7, %9 ]
  %12 = phi i8* [ %33, %32 ], [ %0, %9 ]
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1576, metadata !774), !dbg !1578
  %13 = sext i8 %11 to i32, !dbg !1587
  switch i32 %13, label %20 [
    i32 10, label %14
    i32 92, label %17
  ], !dbg !1589

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1590, !tbaa !781
  %16 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), %struct._IO_FILE* %15) #10, !dbg !1590
  br label %32, !dbg !1592

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1593, !tbaa !781
  %19 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), %struct._IO_FILE* %18) #10, !dbg !1593
  br label %32, !dbg !1594

; <label>:20:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1295, metadata !774) #10, !dbg !1595
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1597, !tbaa !781
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 5, !dbg !1597
  %23 = load i8*, i8** %22, align 8, !dbg !1597, !tbaa !1304
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 6, !dbg !1597
  %25 = load i8*, i8** %24, align 8, !dbg !1597, !tbaa !1306
  %26 = icmp ult i8* %23, %25, !dbg !1597
  br i1 %26, label %30, label %27, !dbg !1597, !prof !1307

; <label>:27:                                     ; preds = %20
  %28 = and i32 %13, 255, !dbg !1597
  %29 = tail call i32 @__overflow(%struct._IO_FILE* %21, i32 %28) #10, !dbg !1597
  br label %32, !dbg !1597

; <label>:30:                                     ; preds = %20
  %31 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1597
  store i8* %31, i8** %22, align 8, !dbg !1597, !tbaa !1304
  store i8 %11, i8* %23, align 1, !dbg !1597, !tbaa !1043
  br label %32, !dbg !1597

; <label>:32:                                     ; preds = %30, %27, %17, %14
  %33 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1598
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1576, metadata !774), !dbg !1578
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1576, metadata !774), !dbg !1578
  %34 = load i8, i8* %33, align 1, !dbg !1585, !tbaa !1043
  %35 = icmp eq i8 %34, 0, !dbg !1586
  br i1 %35, label %36, label %10, !dbg !1586, !llvm.loop !1599

; <label>:36:                                     ; preds = %32, %6, %3
  ret void, !dbg !1601
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
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1602 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1604, metadata !774), !dbg !1605
  store i8* %0, i8** @file_name, align 8, !dbg !1606, !tbaa !781
  ret void, !dbg !1607
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1608 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1612, metadata !774), !dbg !1613
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1614, !tbaa !1520
  ret void, !dbg !1615
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1616 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1621, !tbaa !781
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1622
  %3 = icmp eq i32 %2, 0, !dbg !1623
  br i1 %3, label %21, label %4, !dbg !1624

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1625, !tbaa !1520, !range !1626
  %6 = icmp eq i8 %5, 0, !dbg !1625
  %7 = tail call i32* @__errno_location() #17, !dbg !1627
  br i1 %6, label %11, label %8, !dbg !1629

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1630, !tbaa !960
  %10 = icmp eq i32 %9, 32, !dbg !1631
  br i1 %10, label %21, label %11, !dbg !1632

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i32 5) #10, !dbg !1633
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1618, metadata !774), !dbg !1634
  %13 = load i8*, i8** @file_name, align 8, !dbg !1635, !tbaa !781
  %14 = icmp eq i8* %13, null, !dbg !1635
  %15 = load i32, i32* %7, align 4, !tbaa !960
  br i1 %14, label %18, label %16, !dbg !1636

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1637
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.39, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1638
  br label %19, !dbg !1638

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.40, i64 0, i64 0), i8* %12) #10, !dbg !1639
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1640, !tbaa !960
  tail call void @_exit(i32 %20) #15, !dbg !1641
  unreachable, !dbg !1641

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1642, !tbaa !781
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1644
  %24 = icmp eq i32 %23, 0, !dbg !1645
  br i1 %24, label %27, label %25, !dbg !1646

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1647, !tbaa !960
  tail call void @_exit(i32 %26) #15, !dbg !1648
  unreachable, !dbg !1648

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1649
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @sha1_init_ctx(%struct.sha1_ctx* nocapture) local_unnamed_addr #6 !dbg !1650 {
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, i64 0, metadata !1672, metadata !774), !dbg !1673
  %2 = bitcast %struct.sha1_ctx* %0 to <4 x i32>*, !dbg !1674
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !1674, !tbaa !960
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1675
  %4 = bitcast i32* %3 to <4 x i32>*, !dbg !1676
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %4, align 4, !dbg !1676, !tbaa !960
  ret void, !dbg !1677
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha1_read_ctx(%struct.sha1_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 !dbg !1678 {
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, i64 0, metadata !1684, metadata !774), !dbg !1687
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1685, metadata !774), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1686, metadata !774), !dbg !1689
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !1690
  %4 = load i32, i32* %3, align 4, !dbg !1690, !tbaa !1691
  %5 = tail call i32 @llvm.bswap.i32(i32 %4), !dbg !1690
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1693, metadata !774), !dbg !1699
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1698, metadata !774), !dbg !1701
  %6 = bitcast i8* %1 to i32*, !dbg !1702
  store i32 %5, i32* %6, align 1, !dbg !1702
  %7 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1703
  %8 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !1704
  %9 = load i32, i32* %8, align 4, !dbg !1704, !tbaa !1705
  %10 = tail call i32 @llvm.bswap.i32(i32 %9), !dbg !1704
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1693, metadata !774), !dbg !1706
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1698, metadata !774), !dbg !1708
  %11 = bitcast i8* %7 to i32*, !dbg !1709
  store i32 %10, i32* %11, align 1, !dbg !1709
  %12 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1710
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !1711
  %14 = load i32, i32* %13, align 4, !dbg !1711, !tbaa !1712
  %15 = tail call i32 @llvm.bswap.i32(i32 %14), !dbg !1711
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1693, metadata !774), !dbg !1713
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1698, metadata !774), !dbg !1715
  %16 = bitcast i8* %12 to i32*, !dbg !1716
  store i32 %15, i32* %16, align 1, !dbg !1716
  %17 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1717
  %18 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !1718
  %19 = load i32, i32* %18, align 4, !dbg !1718, !tbaa !1719
  %20 = tail call i32 @llvm.bswap.i32(i32 %19), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1693, metadata !774), !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !1698, metadata !774), !dbg !1722
  %21 = bitcast i8* %17 to i32*, !dbg !1723
  store i32 %20, i32* %21, align 1, !dbg !1723
  %22 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1724
  %23 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1725
  %24 = load i32, i32* %23, align 4, !dbg !1725, !tbaa !1726
  %25 = tail call i32 @llvm.bswap.i32(i32 %24), !dbg !1725
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1693, metadata !774), !dbg !1727
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !1698, metadata !774), !dbg !1729
  %26 = bitcast i8* %22 to i32*, !dbg !1730
  store i32 %25, i32* %26, align 1, !dbg !1730
  ret i8* %1, !dbg !1731
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha1_finish_ctx(%struct.sha1_ctx*, i8* returned) local_unnamed_addr #6 !dbg !1732 {
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, i64 0, metadata !1736, metadata !774), !dbg !1740
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1737, metadata !774), !dbg !1741
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 6, !dbg !1742
  %4 = load i32, i32* %3, align 4, !dbg !1742, !tbaa !1743
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1738, metadata !774), !dbg !1744
  %5 = icmp ult i32 %4, 56, !dbg !1745
  %6 = select i1 %5, i64 16, i64 32, !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1739, metadata !774), !dbg !1747
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 0, !dbg !1748
  %8 = load i32, i32* %7, align 4, !dbg !1749, !tbaa !960
  %9 = add i32 %8, %4, !dbg !1749
  store i32 %9, i32* %7, align 4, !dbg !1749, !tbaa !960
  %10 = icmp ult i32 %9, %4, !dbg !1750
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 1
  %12 = load i32, i32* %11, align 4, !tbaa !960
  br i1 %10, label %13, label %15, !dbg !1752

; <label>:13:                                     ; preds = %2
  %14 = add i32 %12, 1, !dbg !1753
  store i32 %14, i32* %11, align 4, !dbg !1753, !tbaa !960
  br label %15, !dbg !1753

; <label>:15:                                     ; preds = %2, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %2 ], !dbg !1754
  %17 = shl i32 %16, 3, !dbg !1754
  %18 = lshr i32 %9, 29, !dbg !1754
  %19 = or i32 %17, %18, !dbg !1754
  %20 = shl i32 %19, 24, !dbg !1754
  %21 = shl i32 %16, 11, !dbg !1754
  %22 = and i32 %21, 16711680, !dbg !1754
  %23 = lshr i32 %16, 5, !dbg !1754
  %24 = and i32 %23, 65280, !dbg !1754
  %25 = lshr i32 %16, 21, !dbg !1754
  %26 = and i32 %25, 255, !dbg !1754
  %27 = or i32 %24, %22, !dbg !1754
  %28 = or i32 %27, %26, !dbg !1754
  %29 = or i32 %28, %20, !dbg !1754
  %30 = add nsw i64 %6, -2, !dbg !1755
  %31 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %30, !dbg !1756
  store i32 %29, i32* %31, align 4, !dbg !1757, !tbaa !960
  %32 = shl i32 %9, 27, !dbg !1758
  %33 = shl i32 %9, 11, !dbg !1758
  %34 = and i32 %33, 16711680, !dbg !1758
  %35 = or i32 %34, %32, !dbg !1758
  %36 = lshr i32 %9, 5, !dbg !1758
  %37 = and i32 %36, 65280, !dbg !1758
  %38 = or i32 %35, %37, !dbg !1758
  %39 = lshr i32 %9, 21, !dbg !1758
  %40 = and i32 %39, 255, !dbg !1758
  %41 = or i32 %38, %40, !dbg !1758
  %42 = add nsw i64 %6, -1, !dbg !1759
  %43 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %42, !dbg !1760
  store i32 %41, i32* %43, align 4, !dbg !1761, !tbaa !960
  %44 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 0, !dbg !1762
  %45 = bitcast i32* %44 to i8*, !dbg !1762
  %46 = zext i32 %4 to i64, !dbg !1762
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !1762
  %48 = shl nsw i64 %30, 2, !dbg !1763
  %49 = sub nsw i64 %48, %46, !dbg !1764
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %49, i32 1, i1 false), !dbg !1765
  %50 = shl nuw nsw i64 %6, 2, !dbg !1766
  tail call void @sha1_process_block(i8* %45, i64 %50, %struct.sha1_ctx* nonnull %0), !dbg !1767
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, i64 0, metadata !1684, metadata !774) #10, !dbg !1768
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1685, metadata !774) #10, !dbg !1770
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1686, metadata !774) #10, !dbg !1771
  %51 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !1772
  %52 = load i32, i32* %51, align 4, !dbg !1772, !tbaa !1691
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10, !dbg !1772
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1693, metadata !774) #10, !dbg !1773
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !1698, metadata !774) #10, !dbg !1775
  %54 = bitcast i8* %1 to i32*, !dbg !1776
  store i32 %53, i32* %54, align 1, !dbg !1776
  %55 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1777
  %56 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !1778
  %57 = load i32, i32* %56, align 4, !dbg !1778, !tbaa !1705
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10, !dbg !1778
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1693, metadata !774) #10, !dbg !1779
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !1698, metadata !774) #10, !dbg !1781
  %59 = bitcast i8* %55 to i32*, !dbg !1782
  store i32 %58, i32* %59, align 1, !dbg !1782
  %60 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1783
  %61 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !1784
  %62 = load i32, i32* %61, align 4, !dbg !1784, !tbaa !1712
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10, !dbg !1784
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !1693, metadata !774) #10, !dbg !1785
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !1698, metadata !774) #10, !dbg !1787
  %64 = bitcast i8* %60 to i32*, !dbg !1788
  store i32 %63, i32* %64, align 1, !dbg !1788
  %65 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1789
  %66 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !1790
  %67 = load i32, i32* %66, align 4, !dbg !1790, !tbaa !1719
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10, !dbg !1790
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1693, metadata !774) #10, !dbg !1791
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !1698, metadata !774) #10, !dbg !1793
  %69 = bitcast i8* %65 to i32*, !dbg !1794
  store i32 %68, i32* %69, align 1, !dbg !1794
  %70 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1795
  %71 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1796
  %72 = load i32, i32* %71, align 4, !dbg !1796, !tbaa !1726
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10, !dbg !1796
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1693, metadata !774) #10, !dbg !1797
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !1698, metadata !774) #10, !dbg !1799
  %74 = bitcast i8* %70 to i32*, !dbg !1800
  store i32 %73, i32* %74, align 1, !dbg !1800
  ret i8* %1, !dbg !1801
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @sha1_process_block(i8* readonly, i64, %struct.sha1_ctx* nocapture) local_unnamed_addr #6 !dbg !1802 {
  %4 = alloca [16 x i32], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1806, metadata !774), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1807, metadata !774), !dbg !1826
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, i64 0, metadata !1808, metadata !774), !dbg !1827
  %5 = bitcast i8* %0 to i32*, !dbg !1828
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1809, metadata !774), !dbg !1829
  %6 = lshr i64 %1, 2, !dbg !1830
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1812, metadata !774), !dbg !1831
  %7 = getelementptr inbounds i32, i32* %5, i64 %6, !dbg !1832
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1813, metadata !774), !dbg !1833
  %8 = bitcast [16 x i32]* %4 to i8*, !dbg !1834
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #10, !dbg !1834
  tail call void @llvm.dbg.declare(metadata [16 x i32]* %4, metadata !1814, metadata !774), !dbg !1835
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 0, !dbg !1836
  %10 = load i32, i32* %9, align 4, !dbg !1836, !tbaa !1691
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1816, metadata !774), !dbg !1837
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 1, !dbg !1838
  %12 = load i32, i32* %11, align 4, !dbg !1838, !tbaa !1705
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1817, metadata !774), !dbg !1839
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 2, !dbg !1840
  %14 = load i32, i32* %13, align 4, !dbg !1840, !tbaa !1712
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1818, metadata !774), !dbg !1841
  %15 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 3, !dbg !1842
  %16 = load i32, i32* %15, align 4, !dbg !1842, !tbaa !1719
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1819, metadata !774), !dbg !1843
  %17 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 4, !dbg !1844
  %18 = load i32, i32* %17, align 4, !dbg !1844, !tbaa !1726
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !1820, metadata !774), !dbg !1845
  %19 = trunc i64 %1 to i32, !dbg !1846
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !1821, metadata !774), !dbg !1847
  %20 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 0, !dbg !1848
  %21 = load i32, i32* %20, align 4, !dbg !1849, !tbaa !960
  %22 = add i32 %21, %19, !dbg !1849
  store i32 %22, i32* %20, align 4, !dbg !1849, !tbaa !960
  %23 = lshr i64 %1, 32, !dbg !1850
  %24 = icmp ult i32 %22, %19, !dbg !1851
  %25 = zext i1 %24 to i64, !dbg !1852
  %26 = add nuw nsw i64 %23, %25, !dbg !1853
  %27 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 1, !dbg !1854
  %28 = load i32, i32* %27, align 4, !dbg !1855, !tbaa !960
  %29 = zext i32 %28 to i64, !dbg !1855
  %30 = add nuw nsw i64 %26, %29, !dbg !1855
  %31 = trunc i64 %30 to i32, !dbg !1855
  store i32 %31, i32* %27, align 4, !dbg !1855, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1816, metadata !774), !dbg !1837
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !1820, metadata !774), !dbg !1845
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1819, metadata !774), !dbg !1843
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1818, metadata !774), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1817, metadata !774), !dbg !1839
  %32 = icmp ugt i32* %7, %5, !dbg !1856
  br i1 %32, label %33, label %1517, !dbg !1857

; <label>:33:                                     ; preds = %3
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %50 = bitcast i32* %36 to <4 x i32>*
  %51 = bitcast i32* %40 to <4 x i32>*
  %52 = bitcast i32* %44 to <4 x i32>*
  %53 = bitcast i32* %11 to <4 x i32>*
  %54 = bitcast i32* %11 to <4 x i32>*
  br label %55, !dbg !1857

; <label>:55:                                     ; preds = %33, %55
  %56 = phi i32* [ %5, %33 ], [ %85, %55 ]
  %57 = phi i32 [ %10, %33 ], [ %1505, %55 ]
  %58 = phi i32 [ %18, %33 ], [ %1516, %55 ]
  %59 = phi i32 [ %16, %33 ], [ %1515, %55 ]
  %60 = phi i32 [ %14, %33 ], [ %1514, %55 ]
  %61 = phi i32 [ %12, %33 ], [ %1513, %55 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !1817, metadata !774), !dbg !1839
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !1818, metadata !774), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !1819, metadata !774), !dbg !1843
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !1820, metadata !774), !dbg !1845
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !1816, metadata !774), !dbg !1837
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  %62 = load i32, i32* %56, align 4, !dbg !1859, !tbaa !960
  %63 = tail call i32 @llvm.bswap.i32(i32 %62), !dbg !1859
  store i32 %63, i32* %34, align 16, !dbg !1863, !tbaa !960
  %64 = getelementptr inbounds i32, i32* %56, i64 1, !dbg !1864
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  %65 = load i32, i32* %64, align 4, !dbg !1859, !tbaa !960
  %66 = tail call i32 @llvm.bswap.i32(i32 %65), !dbg !1859
  store i32 %66, i32* %35, align 4, !dbg !1863, !tbaa !960
  %67 = getelementptr inbounds i32, i32* %56, i64 2, !dbg !1864
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  %68 = bitcast i32* %67 to <4 x i32>*, !dbg !1859
  %69 = load <4 x i32>, <4 x i32>* %68, align 4, !dbg !1859, !tbaa !960
  %70 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %69), !dbg !1859
  store <4 x i32> %70, <4 x i32>* %50, align 8, !dbg !1863, !tbaa !960
  %71 = getelementptr inbounds i32, i32* %56, i64 6, !dbg !1864
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  %72 = bitcast i32* %71 to <4 x i32>*, !dbg !1859
  %73 = load <4 x i32>, <4 x i32>* %72, align 4, !dbg !1859, !tbaa !960
  %74 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %73), !dbg !1859
  store <4 x i32> %74, <4 x i32>* %51, align 8, !dbg !1863, !tbaa !960
  %75 = getelementptr inbounds i32, i32* %56, i64 10, !dbg !1864
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  %76 = bitcast i32* %75 to <4 x i32>*, !dbg !1859
  %77 = load <4 x i32>, <4 x i32>* %76, align 4, !dbg !1859, !tbaa !960
  %78 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %77), !dbg !1859
  store <4 x i32> %78, <4 x i32>* %52, align 8, !dbg !1863, !tbaa !960
  %79 = getelementptr inbounds i32, i32* %56, i64 14, !dbg !1864
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  %80 = load i32, i32* %79, align 4, !dbg !1859, !tbaa !960
  %81 = tail call i32 @llvm.bswap.i32(i32 %80), !dbg !1859
  store i32 %81, i32* %48, align 8, !dbg !1863, !tbaa !960
  %82 = getelementptr inbounds i32, i32* %56, i64 15, !dbg !1864
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1824, metadata !774), !dbg !1858
  %83 = load i32, i32* %82, align 4, !dbg !1859, !tbaa !960
  %84 = tail call i32 @llvm.bswap.i32(i32 %83), !dbg !1859
  store i32 %84, i32* %49, align 4, !dbg !1863, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  %85 = getelementptr i32, i32* %56, i64 16, !dbg !1865
  %86 = shl i32 %57, 5, !dbg !1866
  %87 = lshr i32 %57, 27, !dbg !1866
  %88 = or i32 %86, %87, !dbg !1866
  %89 = xor i32 %59, %60, !dbg !1866
  %90 = and i32 %89, %61, !dbg !1866
  %91 = xor i32 %90, %59, !dbg !1866
  %92 = add i32 %58, 1518500249, !dbg !1866
  %93 = add i32 %92, %91, !dbg !1866
  %94 = add i32 %93, %88, !dbg !1866
  %95 = add i32 %94, %63, !dbg !1866
  tail call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1820, metadata !774), !dbg !1845
  %96 = shl i32 %61, 30, !dbg !1866
  %97 = lshr i32 %61, 2, !dbg !1866
  %98 = or i32 %96, %97, !dbg !1866
  tail call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !1817, metadata !774), !dbg !1839
  %99 = shl i32 %95, 5, !dbg !1868
  %100 = lshr i32 %95, 27, !dbg !1868
  %101 = or i32 %99, %100, !dbg !1868
  %102 = xor i32 %98, %60, !dbg !1868
  %103 = and i32 %57, %102, !dbg !1868
  %104 = xor i32 %103, %60, !dbg !1868
  %105 = add i32 %59, 1518500249, !dbg !1868
  %106 = add i32 %105, %104, !dbg !1868
  %107 = add i32 %106, %66, !dbg !1868
  %108 = add i32 %107, %101, !dbg !1868
  tail call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !1819, metadata !774), !dbg !1843
  %109 = shl i32 %57, 30, !dbg !1868
  %110 = lshr i32 %57, 2, !dbg !1868
  %111 = or i32 %109, %110, !dbg !1868
  tail call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !1816, metadata !774), !dbg !1837
  %112 = shl i32 %108, 5, !dbg !1870
  %113 = lshr i32 %108, 27, !dbg !1870
  %114 = or i32 %112, %113, !dbg !1870
  %115 = xor i32 %111, %98, !dbg !1870
  %116 = and i32 %95, %115, !dbg !1870
  %117 = xor i32 %116, %98, !dbg !1870
  %118 = add i32 %60, 1518500249, !dbg !1870
  %119 = extractelement <4 x i32> %70, i32 0, !dbg !1870
  %120 = add i32 %118, %119, !dbg !1870
  %121 = add i32 %120, %117, !dbg !1870
  %122 = add i32 %121, %114, !dbg !1870
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1818, metadata !774), !dbg !1841
  %123 = shl i32 %95, 30, !dbg !1870
  %124 = lshr i32 %95, 2, !dbg !1870
  %125 = or i32 %123, %124, !dbg !1870
  tail call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !1820, metadata !774), !dbg !1845
  %126 = shl i32 %122, 5, !dbg !1872
  %127 = lshr i32 %122, 27, !dbg !1872
  %128 = or i32 %126, %127, !dbg !1872
  %129 = xor i32 %125, %111, !dbg !1872
  %130 = and i32 %108, %129, !dbg !1872
  %131 = xor i32 %130, %111, !dbg !1872
  %132 = add i32 %98, 1518500249, !dbg !1872
  %133 = extractelement <4 x i32> %70, i32 1, !dbg !1872
  %134 = add i32 %132, %133, !dbg !1872
  %135 = add i32 %134, %131, !dbg !1872
  %136 = add i32 %135, %128, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !1817, metadata !774), !dbg !1839
  %137 = shl i32 %108, 30, !dbg !1872
  %138 = lshr i32 %108, 2, !dbg !1872
  %139 = or i32 %137, %138, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %139, i64 0, metadata !1819, metadata !774), !dbg !1843
  %140 = shl i32 %136, 5, !dbg !1874
  %141 = lshr i32 %136, 27, !dbg !1874
  %142 = or i32 %140, %141, !dbg !1874
  %143 = xor i32 %139, %125, !dbg !1874
  %144 = and i32 %122, %143, !dbg !1874
  %145 = xor i32 %144, %125, !dbg !1874
  %146 = load i32, i32* %38, align 16, !dbg !1874, !tbaa !960
  %147 = add i32 %111, 1518500249, !dbg !1874
  %148 = add i32 %147, %146, !dbg !1874
  %149 = add i32 %148, %145, !dbg !1874
  %150 = add i32 %149, %142, !dbg !1874
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !1816, metadata !774), !dbg !1837
  %151 = shl i32 %122, 30, !dbg !1874
  %152 = lshr i32 %122, 2, !dbg !1874
  %153 = or i32 %151, %152, !dbg !1874
  tail call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !1818, metadata !774), !dbg !1841
  %154 = shl i32 %150, 5, !dbg !1876
  %155 = lshr i32 %150, 27, !dbg !1876
  %156 = or i32 %154, %155, !dbg !1876
  %157 = xor i32 %153, %139, !dbg !1876
  %158 = and i32 %136, %157, !dbg !1876
  %159 = xor i32 %158, %139, !dbg !1876
  %160 = load i32, i32* %39, align 4, !dbg !1876, !tbaa !960
  %161 = add i32 %125, 1518500249, !dbg !1876
  %162 = add i32 %161, %160, !dbg !1876
  %163 = add i32 %162, %159, !dbg !1876
  %164 = add i32 %163, %156, !dbg !1876
  tail call void @llvm.dbg.value(metadata i32 %164, i64 0, metadata !1820, metadata !774), !dbg !1845
  %165 = shl i32 %136, 30, !dbg !1876
  %166 = lshr i32 %136, 2, !dbg !1876
  %167 = or i32 %165, %166, !dbg !1876
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !1817, metadata !774), !dbg !1839
  %168 = shl i32 %164, 5, !dbg !1878
  %169 = lshr i32 %164, 27, !dbg !1878
  %170 = or i32 %168, %169, !dbg !1878
  %171 = xor i32 %167, %153, !dbg !1878
  %172 = and i32 %150, %171, !dbg !1878
  %173 = xor i32 %172, %153, !dbg !1878
  %174 = load i32, i32* %40, align 8, !dbg !1878, !tbaa !960
  %175 = add i32 %174, 1518500249, !dbg !1878
  %176 = add i32 %175, %139, !dbg !1878
  %177 = add i32 %176, %173, !dbg !1878
  %178 = add i32 %177, %170, !dbg !1878
  tail call void @llvm.dbg.value(metadata i32 %178, i64 0, metadata !1819, metadata !774), !dbg !1843
  %179 = shl i32 %150, 30, !dbg !1878
  %180 = lshr i32 %150, 2, !dbg !1878
  %181 = or i32 %179, %180, !dbg !1878
  tail call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !1816, metadata !774), !dbg !1837
  %182 = shl i32 %178, 5, !dbg !1880
  %183 = lshr i32 %178, 27, !dbg !1880
  %184 = or i32 %182, %183, !dbg !1880
  %185 = xor i32 %181, %167, !dbg !1880
  %186 = and i32 %164, %185, !dbg !1880
  %187 = xor i32 %186, %167, !dbg !1880
  %188 = load i32, i32* %41, align 4, !dbg !1880, !tbaa !960
  %189 = add i32 %188, 1518500249, !dbg !1880
  %190 = add i32 %189, %153, !dbg !1880
  %191 = add i32 %190, %187, !dbg !1880
  %192 = add i32 %191, %184, !dbg !1880
  tail call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !1818, metadata !774), !dbg !1841
  %193 = shl i32 %164, 30, !dbg !1880
  %194 = lshr i32 %164, 2, !dbg !1880
  %195 = or i32 %193, %194, !dbg !1880
  tail call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !1820, metadata !774), !dbg !1845
  %196 = shl i32 %192, 5, !dbg !1882
  %197 = lshr i32 %192, 27, !dbg !1882
  %198 = or i32 %196, %197, !dbg !1882
  %199 = xor i32 %195, %181, !dbg !1882
  %200 = and i32 %178, %199, !dbg !1882
  %201 = xor i32 %200, %181, !dbg !1882
  %202 = load i32, i32* %42, align 16, !dbg !1882, !tbaa !960
  %203 = add i32 %202, 1518500249, !dbg !1882
  %204 = add i32 %203, %167, !dbg !1882
  %205 = add i32 %204, %201, !dbg !1882
  %206 = add i32 %205, %198, !dbg !1882
  tail call void @llvm.dbg.value(metadata i32 %206, i64 0, metadata !1817, metadata !774), !dbg !1839
  %207 = shl i32 %178, 30, !dbg !1882
  %208 = lshr i32 %178, 2, !dbg !1882
  %209 = or i32 %207, %208, !dbg !1882
  tail call void @llvm.dbg.value(metadata i32 %209, i64 0, metadata !1819, metadata !774), !dbg !1843
  %210 = shl i32 %206, 5, !dbg !1884
  %211 = lshr i32 %206, 27, !dbg !1884
  %212 = or i32 %210, %211, !dbg !1884
  %213 = xor i32 %209, %195, !dbg !1884
  %214 = and i32 %192, %213, !dbg !1884
  %215 = xor i32 %214, %195, !dbg !1884
  %216 = load i32, i32* %43, align 4, !dbg !1884, !tbaa !960
  %217 = add i32 %216, 1518500249, !dbg !1884
  %218 = add i32 %217, %181, !dbg !1884
  %219 = add i32 %218, %215, !dbg !1884
  %220 = add i32 %219, %212, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %220, i64 0, metadata !1816, metadata !774), !dbg !1837
  %221 = shl i32 %192, 30, !dbg !1884
  %222 = lshr i32 %192, 2, !dbg !1884
  %223 = or i32 %221, %222, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %223, i64 0, metadata !1818, metadata !774), !dbg !1841
  %224 = shl i32 %220, 5, !dbg !1886
  %225 = lshr i32 %220, 27, !dbg !1886
  %226 = or i32 %224, %225, !dbg !1886
  %227 = xor i32 %223, %209, !dbg !1886
  %228 = and i32 %206, %227, !dbg !1886
  %229 = xor i32 %228, %209, !dbg !1886
  %230 = load i32, i32* %44, align 8, !dbg !1886, !tbaa !960
  %231 = add i32 %230, 1518500249, !dbg !1886
  %232 = add i32 %231, %195, !dbg !1886
  %233 = add i32 %232, %229, !dbg !1886
  %234 = add i32 %233, %226, !dbg !1886
  tail call void @llvm.dbg.value(metadata i32 %234, i64 0, metadata !1820, metadata !774), !dbg !1845
  %235 = shl i32 %206, 30, !dbg !1886
  %236 = lshr i32 %206, 2, !dbg !1886
  %237 = or i32 %235, %236, !dbg !1886
  tail call void @llvm.dbg.value(metadata i32 %237, i64 0, metadata !1817, metadata !774), !dbg !1839
  %238 = shl i32 %234, 5, !dbg !1888
  %239 = lshr i32 %234, 27, !dbg !1888
  %240 = or i32 %238, %239, !dbg !1888
  %241 = xor i32 %237, %223, !dbg !1888
  %242 = and i32 %220, %241, !dbg !1888
  %243 = xor i32 %242, %223, !dbg !1888
  %244 = load i32, i32* %45, align 4, !dbg !1888, !tbaa !960
  %245 = add i32 %244, 1518500249, !dbg !1888
  %246 = add i32 %245, %209, !dbg !1888
  %247 = add i32 %246, %243, !dbg !1888
  %248 = add i32 %247, %240, !dbg !1888
  tail call void @llvm.dbg.value(metadata i32 %248, i64 0, metadata !1819, metadata !774), !dbg !1843
  %249 = shl i32 %220, 30, !dbg !1888
  %250 = lshr i32 %220, 2, !dbg !1888
  %251 = or i32 %249, %250, !dbg !1888
  tail call void @llvm.dbg.value(metadata i32 %251, i64 0, metadata !1816, metadata !774), !dbg !1837
  %252 = shl i32 %248, 5, !dbg !1890
  %253 = lshr i32 %248, 27, !dbg !1890
  %254 = or i32 %252, %253, !dbg !1890
  %255 = xor i32 %251, %237, !dbg !1890
  %256 = and i32 %234, %255, !dbg !1890
  %257 = xor i32 %256, %237, !dbg !1890
  %258 = load i32, i32* %46, align 16, !dbg !1890, !tbaa !960
  %259 = add i32 %258, 1518500249, !dbg !1890
  %260 = add i32 %259, %223, !dbg !1890
  %261 = add i32 %260, %257, !dbg !1890
  %262 = add i32 %261, %254, !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %262, i64 0, metadata !1818, metadata !774), !dbg !1841
  %263 = shl i32 %234, 30, !dbg !1890
  %264 = lshr i32 %234, 2, !dbg !1890
  %265 = or i32 %263, %264, !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %265, i64 0, metadata !1820, metadata !774), !dbg !1845
  %266 = shl i32 %262, 5, !dbg !1892
  %267 = lshr i32 %262, 27, !dbg !1892
  %268 = or i32 %266, %267, !dbg !1892
  %269 = xor i32 %265, %251, !dbg !1892
  %270 = and i32 %248, %269, !dbg !1892
  %271 = xor i32 %270, %251, !dbg !1892
  %272 = load i32, i32* %47, align 4, !dbg !1892, !tbaa !960
  %273 = add i32 %272, 1518500249, !dbg !1892
  %274 = add i32 %273, %237, !dbg !1892
  %275 = add i32 %274, %271, !dbg !1892
  %276 = add i32 %275, %268, !dbg !1892
  tail call void @llvm.dbg.value(metadata i32 %276, i64 0, metadata !1817, metadata !774), !dbg !1839
  %277 = shl i32 %248, 30, !dbg !1892
  %278 = lshr i32 %248, 2, !dbg !1892
  %279 = or i32 %277, %278, !dbg !1892
  tail call void @llvm.dbg.value(metadata i32 %279, i64 0, metadata !1819, metadata !774), !dbg !1843
  %280 = shl i32 %276, 5, !dbg !1894
  %281 = lshr i32 %276, 27, !dbg !1894
  %282 = or i32 %280, %281, !dbg !1894
  %283 = xor i32 %279, %265, !dbg !1894
  %284 = and i32 %262, %283, !dbg !1894
  %285 = xor i32 %284, %265, !dbg !1894
  %286 = load i32, i32* %48, align 8, !dbg !1894, !tbaa !960
  %287 = add i32 %286, 1518500249, !dbg !1894
  %288 = add i32 %287, %251, !dbg !1894
  %289 = add i32 %288, %285, !dbg !1894
  %290 = add i32 %289, %282, !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %290, i64 0, metadata !1816, metadata !774), !dbg !1837
  %291 = shl i32 %262, 30, !dbg !1894
  %292 = lshr i32 %262, 2, !dbg !1894
  %293 = or i32 %291, %292, !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %293, i64 0, metadata !1818, metadata !774), !dbg !1841
  %294 = shl i32 %290, 5, !dbg !1896
  %295 = lshr i32 %290, 27, !dbg !1896
  %296 = or i32 %294, %295, !dbg !1896
  %297 = xor i32 %293, %279, !dbg !1896
  %298 = and i32 %276, %297, !dbg !1896
  %299 = xor i32 %298, %279, !dbg !1896
  %300 = load i32, i32* %49, align 4, !dbg !1896, !tbaa !960
  %301 = add i32 %300, 1518500249, !dbg !1896
  %302 = add i32 %301, %265, !dbg !1896
  %303 = add i32 %302, %299, !dbg !1896
  %304 = add i32 %303, %296, !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %304, i64 0, metadata !1820, metadata !774), !dbg !1845
  %305 = shl i32 %276, 30, !dbg !1896
  %306 = lshr i32 %276, 2, !dbg !1896
  %307 = or i32 %305, %306, !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %307, i64 0, metadata !1817, metadata !774), !dbg !1839
  %308 = shl i32 %304, 5, !dbg !1898
  %309 = lshr i32 %304, 27, !dbg !1898
  %310 = or i32 %308, %309, !dbg !1898
  %311 = xor i32 %307, %293, !dbg !1898
  %312 = and i32 %290, %311, !dbg !1898
  %313 = xor i32 %312, %293, !dbg !1898
  %314 = xor i32 %119, %63, !dbg !1898
  %315 = xor i32 %314, %202, !dbg !1898
  %316 = xor i32 %315, %272, !dbg !1898
  tail call void @llvm.dbg.value(metadata i32 %316, i64 0, metadata !1822, metadata !774), !dbg !1900
  %317 = shl i32 %316, 1, !dbg !1898
  %318 = lshr i32 %316, 31, !dbg !1898
  %319 = or i32 %317, %318, !dbg !1898
  store i32 %319, i32* %34, align 16, !dbg !1898, !tbaa !960
  %320 = add i32 %319, 1518500249, !dbg !1898
  %321 = add i32 %320, %279, !dbg !1898
  %322 = add i32 %321, %313, !dbg !1898
  %323 = add i32 %322, %310, !dbg !1898
  tail call void @llvm.dbg.value(metadata i32 %323, i64 0, metadata !1819, metadata !774), !dbg !1843
  %324 = shl i32 %290, 30, !dbg !1898
  %325 = lshr i32 %290, 2, !dbg !1898
  %326 = or i32 %324, %325, !dbg !1898
  tail call void @llvm.dbg.value(metadata i32 %326, i64 0, metadata !1816, metadata !774), !dbg !1837
  %327 = shl i32 %323, 5, !dbg !1901
  %328 = lshr i32 %323, 27, !dbg !1901
  %329 = or i32 %327, %328, !dbg !1901
  %330 = xor i32 %326, %307, !dbg !1901
  %331 = and i32 %304, %330, !dbg !1901
  %332 = xor i32 %331, %307, !dbg !1901
  %333 = xor i32 %133, %66, !dbg !1901
  %334 = xor i32 %333, %216, !dbg !1901
  %335 = xor i32 %334, %286, !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !1822, metadata !774), !dbg !1900
  %336 = shl i32 %335, 1, !dbg !1901
  %337 = lshr i32 %335, 31, !dbg !1901
  %338 = or i32 %336, %337, !dbg !1901
  store i32 %338, i32* %35, align 4, !dbg !1901, !tbaa !960
  %339 = add i32 %338, 1518500249, !dbg !1901
  %340 = add i32 %339, %293, !dbg !1901
  %341 = add i32 %340, %332, !dbg !1901
  %342 = add i32 %341, %329, !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %342, i64 0, metadata !1818, metadata !774), !dbg !1841
  %343 = shl i32 %304, 30, !dbg !1901
  %344 = lshr i32 %304, 2, !dbg !1901
  %345 = or i32 %343, %344, !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %345, i64 0, metadata !1820, metadata !774), !dbg !1845
  %346 = shl i32 %342, 5, !dbg !1903
  %347 = lshr i32 %342, 27, !dbg !1903
  %348 = or i32 %346, %347, !dbg !1903
  %349 = xor i32 %345, %326, !dbg !1903
  %350 = and i32 %323, %349, !dbg !1903
  %351 = xor i32 %350, %326, !dbg !1903
  %352 = xor i32 %146, %119, !dbg !1903
  %353 = xor i32 %352, %230, !dbg !1903
  %354 = xor i32 %353, %300, !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %354, i64 0, metadata !1822, metadata !774), !dbg !1900
  %355 = shl i32 %354, 1, !dbg !1903
  %356 = lshr i32 %354, 31, !dbg !1903
  %357 = or i32 %355, %356, !dbg !1903
  store i32 %357, i32* %36, align 8, !dbg !1903, !tbaa !960
  %358 = add i32 %357, 1518500249, !dbg !1903
  %359 = add i32 %358, %307, !dbg !1903
  %360 = add i32 %359, %351, !dbg !1903
  %361 = add i32 %360, %348, !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %361, i64 0, metadata !1817, metadata !774), !dbg !1839
  %362 = shl i32 %323, 30, !dbg !1903
  %363 = lshr i32 %323, 2, !dbg !1903
  %364 = or i32 %362, %363, !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %364, i64 0, metadata !1819, metadata !774), !dbg !1843
  %365 = shl i32 %361, 5, !dbg !1905
  %366 = lshr i32 %361, 27, !dbg !1905
  %367 = or i32 %365, %366, !dbg !1905
  %368 = xor i32 %364, %345, !dbg !1905
  %369 = and i32 %342, %368, !dbg !1905
  %370 = xor i32 %369, %345, !dbg !1905
  %371 = xor i32 %160, %133, !dbg !1905
  %372 = xor i32 %371, %244, !dbg !1905
  %373 = xor i32 %372, %319, !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 %373, i64 0, metadata !1822, metadata !774), !dbg !1900
  %374 = shl i32 %373, 1, !dbg !1905
  %375 = lshr i32 %373, 31, !dbg !1905
  %376 = or i32 %374, %375, !dbg !1905
  store i32 %376, i32* %37, align 4, !dbg !1905, !tbaa !960
  %377 = add i32 %376, 1518500249, !dbg !1905
  %378 = add i32 %377, %326, !dbg !1905
  %379 = add i32 %378, %370, !dbg !1905
  %380 = add i32 %379, %367, !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 %380, i64 0, metadata !1816, metadata !774), !dbg !1837
  %381 = shl i32 %342, 30, !dbg !1905
  %382 = lshr i32 %342, 2, !dbg !1905
  %383 = or i32 %381, %382, !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 %383, i64 0, metadata !1818, metadata !774), !dbg !1841
  %384 = shl i32 %380, 5, !dbg !1907
  %385 = lshr i32 %380, 27, !dbg !1907
  %386 = or i32 %384, %385, !dbg !1907
  %387 = xor i32 %383, %364, !dbg !1907
  %388 = xor i32 %387, %361, !dbg !1907
  %389 = xor i32 %174, %146, !dbg !1907
  %390 = xor i32 %389, %258, !dbg !1907
  %391 = xor i32 %390, %338, !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 %391, i64 0, metadata !1822, metadata !774), !dbg !1900
  %392 = shl i32 %391, 1, !dbg !1907
  %393 = lshr i32 %391, 31, !dbg !1907
  %394 = or i32 %392, %393, !dbg !1907
  store i32 %394, i32* %38, align 16, !dbg !1907, !tbaa !960
  %395 = add i32 %394, 1859775393, !dbg !1907
  %396 = add i32 %395, %345, !dbg !1907
  %397 = add i32 %396, %388, !dbg !1907
  %398 = add i32 %397, %386, !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 %398, i64 0, metadata !1820, metadata !774), !dbg !1845
  %399 = shl i32 %361, 30, !dbg !1907
  %400 = lshr i32 %361, 2, !dbg !1907
  %401 = or i32 %399, %400, !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 %401, i64 0, metadata !1817, metadata !774), !dbg !1839
  %402 = shl i32 %398, 5, !dbg !1909
  %403 = lshr i32 %398, 27, !dbg !1909
  %404 = or i32 %402, %403, !dbg !1909
  %405 = xor i32 %401, %383, !dbg !1909
  %406 = xor i32 %405, %380, !dbg !1909
  %407 = xor i32 %188, %160, !dbg !1909
  %408 = xor i32 %407, %272, !dbg !1909
  %409 = xor i32 %408, %357, !dbg !1909
  tail call void @llvm.dbg.value(metadata i32 %409, i64 0, metadata !1822, metadata !774), !dbg !1900
  %410 = shl i32 %409, 1, !dbg !1909
  %411 = lshr i32 %409, 31, !dbg !1909
  %412 = or i32 %410, %411, !dbg !1909
  store i32 %412, i32* %39, align 4, !dbg !1909, !tbaa !960
  %413 = add i32 %412, 1859775393, !dbg !1909
  %414 = add i32 %413, %364, !dbg !1909
  %415 = add i32 %414, %406, !dbg !1909
  %416 = add i32 %415, %404, !dbg !1909
  tail call void @llvm.dbg.value(metadata i32 %416, i64 0, metadata !1819, metadata !774), !dbg !1843
  %417 = shl i32 %380, 30, !dbg !1909
  %418 = lshr i32 %380, 2, !dbg !1909
  %419 = or i32 %417, %418, !dbg !1909
  tail call void @llvm.dbg.value(metadata i32 %419, i64 0, metadata !1816, metadata !774), !dbg !1837
  %420 = shl i32 %416, 5, !dbg !1911
  %421 = lshr i32 %416, 27, !dbg !1911
  %422 = or i32 %420, %421, !dbg !1911
  %423 = xor i32 %419, %401, !dbg !1911
  %424 = xor i32 %423, %398, !dbg !1911
  %425 = xor i32 %202, %174, !dbg !1911
  %426 = xor i32 %425, %286, !dbg !1911
  %427 = xor i32 %426, %376, !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %427, i64 0, metadata !1822, metadata !774), !dbg !1900
  %428 = shl i32 %427, 1, !dbg !1911
  %429 = lshr i32 %427, 31, !dbg !1911
  %430 = or i32 %428, %429, !dbg !1911
  store i32 %430, i32* %40, align 8, !dbg !1911, !tbaa !960
  %431 = add i32 %430, 1859775393, !dbg !1911
  %432 = add i32 %431, %383, !dbg !1911
  %433 = add i32 %432, %424, !dbg !1911
  %434 = add i32 %433, %422, !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %434, i64 0, metadata !1818, metadata !774), !dbg !1841
  %435 = shl i32 %398, 30, !dbg !1911
  %436 = lshr i32 %398, 2, !dbg !1911
  %437 = or i32 %435, %436, !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %437, i64 0, metadata !1820, metadata !774), !dbg !1845
  %438 = shl i32 %434, 5, !dbg !1913
  %439 = lshr i32 %434, 27, !dbg !1913
  %440 = or i32 %438, %439, !dbg !1913
  %441 = xor i32 %437, %419, !dbg !1913
  %442 = xor i32 %441, %416, !dbg !1913
  %443 = xor i32 %216, %188, !dbg !1913
  %444 = xor i32 %443, %300, !dbg !1913
  %445 = xor i32 %444, %394, !dbg !1913
  tail call void @llvm.dbg.value(metadata i32 %445, i64 0, metadata !1822, metadata !774), !dbg !1900
  %446 = shl i32 %445, 1, !dbg !1913
  %447 = lshr i32 %445, 31, !dbg !1913
  %448 = or i32 %446, %447, !dbg !1913
  store i32 %448, i32* %41, align 4, !dbg !1913, !tbaa !960
  %449 = add i32 %448, 1859775393, !dbg !1913
  %450 = add i32 %449, %401, !dbg !1913
  %451 = add i32 %450, %442, !dbg !1913
  %452 = add i32 %451, %440, !dbg !1913
  tail call void @llvm.dbg.value(metadata i32 %452, i64 0, metadata !1817, metadata !774), !dbg !1839
  %453 = shl i32 %416, 30, !dbg !1913
  %454 = lshr i32 %416, 2, !dbg !1913
  %455 = or i32 %453, %454, !dbg !1913
  tail call void @llvm.dbg.value(metadata i32 %455, i64 0, metadata !1819, metadata !774), !dbg !1843
  %456 = shl i32 %452, 5, !dbg !1915
  %457 = lshr i32 %452, 27, !dbg !1915
  %458 = or i32 %456, %457, !dbg !1915
  %459 = xor i32 %455, %437, !dbg !1915
  %460 = xor i32 %459, %434, !dbg !1915
  %461 = xor i32 %230, %202, !dbg !1915
  %462 = xor i32 %461, %319, !dbg !1915
  %463 = xor i32 %462, %412, !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %463, i64 0, metadata !1822, metadata !774), !dbg !1900
  %464 = shl i32 %463, 1, !dbg !1915
  %465 = lshr i32 %463, 31, !dbg !1915
  %466 = or i32 %464, %465, !dbg !1915
  store i32 %466, i32* %42, align 16, !dbg !1915, !tbaa !960
  %467 = add i32 %466, 1859775393, !dbg !1915
  %468 = add i32 %467, %419, !dbg !1915
  %469 = add i32 %468, %460, !dbg !1915
  %470 = add i32 %469, %458, !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %470, i64 0, metadata !1816, metadata !774), !dbg !1837
  %471 = shl i32 %434, 30, !dbg !1915
  %472 = lshr i32 %434, 2, !dbg !1915
  %473 = or i32 %471, %472, !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %473, i64 0, metadata !1818, metadata !774), !dbg !1841
  %474 = shl i32 %470, 5, !dbg !1917
  %475 = lshr i32 %470, 27, !dbg !1917
  %476 = or i32 %474, %475, !dbg !1917
  %477 = xor i32 %473, %455, !dbg !1917
  %478 = xor i32 %477, %452, !dbg !1917
  %479 = xor i32 %244, %216, !dbg !1917
  %480 = xor i32 %479, %338, !dbg !1917
  %481 = xor i32 %480, %430, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %481, i64 0, metadata !1822, metadata !774), !dbg !1900
  %482 = shl i32 %481, 1, !dbg !1917
  %483 = lshr i32 %481, 31, !dbg !1917
  %484 = or i32 %482, %483, !dbg !1917
  store i32 %484, i32* %43, align 4, !dbg !1917, !tbaa !960
  %485 = add i32 %484, 1859775393, !dbg !1917
  %486 = add i32 %485, %437, !dbg !1917
  %487 = add i32 %486, %478, !dbg !1917
  %488 = add i32 %487, %476, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %488, i64 0, metadata !1820, metadata !774), !dbg !1845
  %489 = shl i32 %452, 30, !dbg !1917
  %490 = lshr i32 %452, 2, !dbg !1917
  %491 = or i32 %489, %490, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %491, i64 0, metadata !1817, metadata !774), !dbg !1839
  %492 = shl i32 %488, 5, !dbg !1919
  %493 = lshr i32 %488, 27, !dbg !1919
  %494 = or i32 %492, %493, !dbg !1919
  %495 = xor i32 %491, %473, !dbg !1919
  %496 = xor i32 %495, %470, !dbg !1919
  %497 = xor i32 %258, %230, !dbg !1919
  %498 = xor i32 %497, %357, !dbg !1919
  %499 = xor i32 %498, %448, !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 %499, i64 0, metadata !1822, metadata !774), !dbg !1900
  %500 = shl i32 %499, 1, !dbg !1919
  %501 = lshr i32 %499, 31, !dbg !1919
  %502 = or i32 %500, %501, !dbg !1919
  store i32 %502, i32* %44, align 8, !dbg !1919, !tbaa !960
  %503 = add i32 %502, 1859775393, !dbg !1919
  %504 = add i32 %503, %455, !dbg !1919
  %505 = add i32 %504, %496, !dbg !1919
  %506 = add i32 %505, %494, !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 %506, i64 0, metadata !1819, metadata !774), !dbg !1843
  %507 = shl i32 %470, 30, !dbg !1919
  %508 = lshr i32 %470, 2, !dbg !1919
  %509 = or i32 %507, %508, !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 %509, i64 0, metadata !1816, metadata !774), !dbg !1837
  %510 = shl i32 %506, 5, !dbg !1921
  %511 = lshr i32 %506, 27, !dbg !1921
  %512 = or i32 %510, %511, !dbg !1921
  %513 = xor i32 %509, %491, !dbg !1921
  %514 = xor i32 %513, %488, !dbg !1921
  %515 = xor i32 %272, %244, !dbg !1921
  %516 = xor i32 %515, %376, !dbg !1921
  %517 = xor i32 %516, %466, !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 %517, i64 0, metadata !1822, metadata !774), !dbg !1900
  %518 = shl i32 %517, 1, !dbg !1921
  %519 = lshr i32 %517, 31, !dbg !1921
  %520 = or i32 %518, %519, !dbg !1921
  store i32 %520, i32* %45, align 4, !dbg !1921, !tbaa !960
  %521 = add i32 %520, 1859775393, !dbg !1921
  %522 = add i32 %521, %473, !dbg !1921
  %523 = add i32 %522, %514, !dbg !1921
  %524 = add i32 %523, %512, !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 %524, i64 0, metadata !1818, metadata !774), !dbg !1841
  %525 = shl i32 %488, 30, !dbg !1921
  %526 = lshr i32 %488, 2, !dbg !1921
  %527 = or i32 %525, %526, !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 %527, i64 0, metadata !1820, metadata !774), !dbg !1845
  %528 = shl i32 %524, 5, !dbg !1923
  %529 = lshr i32 %524, 27, !dbg !1923
  %530 = or i32 %528, %529, !dbg !1923
  %531 = xor i32 %527, %509, !dbg !1923
  %532 = xor i32 %531, %506, !dbg !1923
  %533 = xor i32 %286, %258, !dbg !1923
  %534 = xor i32 %533, %394, !dbg !1923
  %535 = xor i32 %534, %484, !dbg !1923
  tail call void @llvm.dbg.value(metadata i32 %535, i64 0, metadata !1822, metadata !774), !dbg !1900
  %536 = shl i32 %535, 1, !dbg !1923
  %537 = lshr i32 %535, 31, !dbg !1923
  %538 = or i32 %536, %537, !dbg !1923
  store i32 %538, i32* %46, align 16, !dbg !1923, !tbaa !960
  %539 = add i32 %538, 1859775393, !dbg !1923
  %540 = add i32 %539, %491, !dbg !1923
  %541 = add i32 %540, %532, !dbg !1923
  %542 = add i32 %541, %530, !dbg !1923
  tail call void @llvm.dbg.value(metadata i32 %542, i64 0, metadata !1817, metadata !774), !dbg !1839
  %543 = shl i32 %506, 30, !dbg !1923
  %544 = lshr i32 %506, 2, !dbg !1923
  %545 = or i32 %543, %544, !dbg !1923
  tail call void @llvm.dbg.value(metadata i32 %545, i64 0, metadata !1819, metadata !774), !dbg !1843
  %546 = shl i32 %542, 5, !dbg !1925
  %547 = lshr i32 %542, 27, !dbg !1925
  %548 = or i32 %546, %547, !dbg !1925
  %549 = xor i32 %545, %527, !dbg !1925
  %550 = xor i32 %549, %524, !dbg !1925
  %551 = xor i32 %300, %272, !dbg !1925
  %552 = xor i32 %551, %412, !dbg !1925
  %553 = xor i32 %552, %502, !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %553, i64 0, metadata !1822, metadata !774), !dbg !1900
  %554 = shl i32 %553, 1, !dbg !1925
  %555 = lshr i32 %553, 31, !dbg !1925
  %556 = or i32 %554, %555, !dbg !1925
  store i32 %556, i32* %47, align 4, !dbg !1925, !tbaa !960
  %557 = add i32 %556, 1859775393, !dbg !1925
  %558 = add i32 %557, %509, !dbg !1925
  %559 = add i32 %558, %550, !dbg !1925
  %560 = add i32 %559, %548, !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %560, i64 0, metadata !1816, metadata !774), !dbg !1837
  %561 = shl i32 %524, 30, !dbg !1925
  %562 = lshr i32 %524, 2, !dbg !1925
  %563 = or i32 %561, %562, !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %563, i64 0, metadata !1818, metadata !774), !dbg !1841
  %564 = shl i32 %560, 5, !dbg !1927
  %565 = lshr i32 %560, 27, !dbg !1927
  %566 = or i32 %564, %565, !dbg !1927
  %567 = xor i32 %563, %545, !dbg !1927
  %568 = xor i32 %567, %542, !dbg !1927
  %569 = xor i32 %319, %286, !dbg !1927
  %570 = xor i32 %569, %430, !dbg !1927
  %571 = xor i32 %570, %520, !dbg !1927
  tail call void @llvm.dbg.value(metadata i32 %571, i64 0, metadata !1822, metadata !774), !dbg !1900
  %572 = shl i32 %571, 1, !dbg !1927
  %573 = lshr i32 %571, 31, !dbg !1927
  %574 = or i32 %572, %573, !dbg !1927
  store i32 %574, i32* %48, align 8, !dbg !1927, !tbaa !960
  %575 = add i32 %574, 1859775393, !dbg !1927
  %576 = add i32 %575, %527, !dbg !1927
  %577 = add i32 %576, %568, !dbg !1927
  %578 = add i32 %577, %566, !dbg !1927
  tail call void @llvm.dbg.value(metadata i32 %578, i64 0, metadata !1820, metadata !774), !dbg !1845
  %579 = shl i32 %542, 30, !dbg !1927
  %580 = lshr i32 %542, 2, !dbg !1927
  %581 = or i32 %579, %580, !dbg !1927
  tail call void @llvm.dbg.value(metadata i32 %581, i64 0, metadata !1817, metadata !774), !dbg !1839
  %582 = shl i32 %578, 5, !dbg !1929
  %583 = lshr i32 %578, 27, !dbg !1929
  %584 = or i32 %582, %583, !dbg !1929
  %585 = xor i32 %581, %563, !dbg !1929
  %586 = xor i32 %585, %560, !dbg !1929
  %587 = xor i32 %338, %300, !dbg !1929
  %588 = xor i32 %587, %448, !dbg !1929
  %589 = xor i32 %588, %538, !dbg !1929
  tail call void @llvm.dbg.value(metadata i32 %589, i64 0, metadata !1822, metadata !774), !dbg !1900
  %590 = shl i32 %589, 1, !dbg !1929
  %591 = lshr i32 %589, 31, !dbg !1929
  %592 = or i32 %590, %591, !dbg !1929
  store i32 %592, i32* %49, align 4, !dbg !1929, !tbaa !960
  %593 = add i32 %592, 1859775393, !dbg !1929
  %594 = add i32 %593, %545, !dbg !1929
  %595 = add i32 %594, %586, !dbg !1929
  %596 = add i32 %595, %584, !dbg !1929
  tail call void @llvm.dbg.value(metadata i32 %596, i64 0, metadata !1819, metadata !774), !dbg !1843
  %597 = shl i32 %560, 30, !dbg !1929
  %598 = lshr i32 %560, 2, !dbg !1929
  %599 = or i32 %597, %598, !dbg !1929
  tail call void @llvm.dbg.value(metadata i32 %599, i64 0, metadata !1816, metadata !774), !dbg !1837
  %600 = shl i32 %596, 5, !dbg !1931
  %601 = lshr i32 %596, 27, !dbg !1931
  %602 = or i32 %600, %601, !dbg !1931
  %603 = xor i32 %599, %581, !dbg !1931
  %604 = xor i32 %603, %578, !dbg !1931
  %605 = xor i32 %357, %319, !dbg !1931
  %606 = xor i32 %605, %466, !dbg !1931
  %607 = xor i32 %606, %556, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %607, i64 0, metadata !1822, metadata !774), !dbg !1900
  %608 = shl i32 %607, 1, !dbg !1931
  %609 = lshr i32 %607, 31, !dbg !1931
  %610 = or i32 %608, %609, !dbg !1931
  store i32 %610, i32* %34, align 16, !dbg !1931, !tbaa !960
  %611 = add i32 %610, 1859775393, !dbg !1931
  %612 = add i32 %611, %563, !dbg !1931
  %613 = add i32 %612, %604, !dbg !1931
  %614 = add i32 %613, %602, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %614, i64 0, metadata !1818, metadata !774), !dbg !1841
  %615 = shl i32 %578, 30, !dbg !1931
  %616 = lshr i32 %578, 2, !dbg !1931
  %617 = or i32 %615, %616, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %617, i64 0, metadata !1820, metadata !774), !dbg !1845
  %618 = shl i32 %614, 5, !dbg !1933
  %619 = lshr i32 %614, 27, !dbg !1933
  %620 = or i32 %618, %619, !dbg !1933
  %621 = xor i32 %617, %599, !dbg !1933
  %622 = xor i32 %621, %596, !dbg !1933
  %623 = xor i32 %376, %338, !dbg !1933
  %624 = xor i32 %623, %484, !dbg !1933
  %625 = xor i32 %624, %574, !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %625, i64 0, metadata !1822, metadata !774), !dbg !1900
  %626 = shl i32 %625, 1, !dbg !1933
  %627 = lshr i32 %625, 31, !dbg !1933
  %628 = or i32 %626, %627, !dbg !1933
  store i32 %628, i32* %35, align 4, !dbg !1933, !tbaa !960
  %629 = add i32 %628, 1859775393, !dbg !1933
  %630 = add i32 %629, %581, !dbg !1933
  %631 = add i32 %630, %622, !dbg !1933
  %632 = add i32 %631, %620, !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %632, i64 0, metadata !1817, metadata !774), !dbg !1839
  %633 = shl i32 %596, 30, !dbg !1933
  %634 = lshr i32 %596, 2, !dbg !1933
  %635 = or i32 %633, %634, !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %635, i64 0, metadata !1819, metadata !774), !dbg !1843
  %636 = shl i32 %632, 5, !dbg !1935
  %637 = lshr i32 %632, 27, !dbg !1935
  %638 = or i32 %636, %637, !dbg !1935
  %639 = xor i32 %635, %617, !dbg !1935
  %640 = xor i32 %639, %614, !dbg !1935
  %641 = xor i32 %394, %357, !dbg !1935
  %642 = xor i32 %641, %502, !dbg !1935
  %643 = xor i32 %642, %592, !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %643, i64 0, metadata !1822, metadata !774), !dbg !1900
  %644 = shl i32 %643, 1, !dbg !1935
  %645 = lshr i32 %643, 31, !dbg !1935
  %646 = or i32 %644, %645, !dbg !1935
  store i32 %646, i32* %36, align 8, !dbg !1935, !tbaa !960
  %647 = add i32 %646, 1859775393, !dbg !1935
  %648 = add i32 %647, %599, !dbg !1935
  %649 = add i32 %648, %640, !dbg !1935
  %650 = add i32 %649, %638, !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %650, i64 0, metadata !1816, metadata !774), !dbg !1837
  %651 = shl i32 %614, 30, !dbg !1935
  %652 = lshr i32 %614, 2, !dbg !1935
  %653 = or i32 %651, %652, !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %653, i64 0, metadata !1818, metadata !774), !dbg !1841
  %654 = shl i32 %650, 5, !dbg !1937
  %655 = lshr i32 %650, 27, !dbg !1937
  %656 = or i32 %654, %655, !dbg !1937
  %657 = xor i32 %653, %635, !dbg !1937
  %658 = xor i32 %657, %632, !dbg !1937
  %659 = xor i32 %412, %376, !dbg !1937
  %660 = xor i32 %659, %520, !dbg !1937
  %661 = xor i32 %660, %610, !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 %661, i64 0, metadata !1822, metadata !774), !dbg !1900
  %662 = shl i32 %661, 1, !dbg !1937
  %663 = lshr i32 %661, 31, !dbg !1937
  %664 = or i32 %662, %663, !dbg !1937
  store i32 %664, i32* %37, align 4, !dbg !1937, !tbaa !960
  %665 = add i32 %664, 1859775393, !dbg !1937
  %666 = add i32 %665, %617, !dbg !1937
  %667 = add i32 %666, %658, !dbg !1937
  %668 = add i32 %667, %656, !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 %668, i64 0, metadata !1820, metadata !774), !dbg !1845
  %669 = shl i32 %632, 30, !dbg !1937
  %670 = lshr i32 %632, 2, !dbg !1937
  %671 = or i32 %669, %670, !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 %671, i64 0, metadata !1817, metadata !774), !dbg !1839
  %672 = shl i32 %668, 5, !dbg !1939
  %673 = lshr i32 %668, 27, !dbg !1939
  %674 = or i32 %672, %673, !dbg !1939
  %675 = xor i32 %671, %653, !dbg !1939
  %676 = xor i32 %675, %650, !dbg !1939
  %677 = xor i32 %430, %394, !dbg !1939
  %678 = xor i32 %677, %538, !dbg !1939
  %679 = xor i32 %678, %628, !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %679, i64 0, metadata !1822, metadata !774), !dbg !1900
  %680 = shl i32 %679, 1, !dbg !1939
  %681 = lshr i32 %679, 31, !dbg !1939
  %682 = or i32 %680, %681, !dbg !1939
  store i32 %682, i32* %38, align 16, !dbg !1939, !tbaa !960
  %683 = add i32 %682, 1859775393, !dbg !1939
  %684 = add i32 %683, %635, !dbg !1939
  %685 = add i32 %684, %676, !dbg !1939
  %686 = add i32 %685, %674, !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %686, i64 0, metadata !1819, metadata !774), !dbg !1843
  %687 = shl i32 %650, 30, !dbg !1939
  %688 = lshr i32 %650, 2, !dbg !1939
  %689 = or i32 %687, %688, !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %689, i64 0, metadata !1816, metadata !774), !dbg !1837
  %690 = shl i32 %686, 5, !dbg !1941
  %691 = lshr i32 %686, 27, !dbg !1941
  %692 = or i32 %690, %691, !dbg !1941
  %693 = xor i32 %689, %671, !dbg !1941
  %694 = xor i32 %693, %668, !dbg !1941
  %695 = xor i32 %448, %412, !dbg !1941
  %696 = xor i32 %695, %556, !dbg !1941
  %697 = xor i32 %696, %646, !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %697, i64 0, metadata !1822, metadata !774), !dbg !1900
  %698 = shl i32 %697, 1, !dbg !1941
  %699 = lshr i32 %697, 31, !dbg !1941
  %700 = or i32 %698, %699, !dbg !1941
  store i32 %700, i32* %39, align 4, !dbg !1941, !tbaa !960
  %701 = add i32 %700, 1859775393, !dbg !1941
  %702 = add i32 %701, %653, !dbg !1941
  %703 = add i32 %702, %694, !dbg !1941
  %704 = add i32 %703, %692, !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %704, i64 0, metadata !1818, metadata !774), !dbg !1841
  %705 = shl i32 %668, 30, !dbg !1941
  %706 = lshr i32 %668, 2, !dbg !1941
  %707 = or i32 %705, %706, !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %707, i64 0, metadata !1820, metadata !774), !dbg !1845
  %708 = shl i32 %704, 5, !dbg !1943
  %709 = lshr i32 %704, 27, !dbg !1943
  %710 = or i32 %708, %709, !dbg !1943
  %711 = xor i32 %707, %689, !dbg !1943
  %712 = xor i32 %711, %686, !dbg !1943
  %713 = xor i32 %466, %430, !dbg !1943
  %714 = xor i32 %713, %574, !dbg !1943
  %715 = xor i32 %714, %664, !dbg !1943
  tail call void @llvm.dbg.value(metadata i32 %715, i64 0, metadata !1822, metadata !774), !dbg !1900
  %716 = shl i32 %715, 1, !dbg !1943
  %717 = lshr i32 %715, 31, !dbg !1943
  %718 = or i32 %716, %717, !dbg !1943
  store i32 %718, i32* %40, align 8, !dbg !1943, !tbaa !960
  %719 = add i32 %718, 1859775393, !dbg !1943
  %720 = add i32 %719, %671, !dbg !1943
  %721 = add i32 %720, %712, !dbg !1943
  %722 = add i32 %721, %710, !dbg !1943
  tail call void @llvm.dbg.value(metadata i32 %722, i64 0, metadata !1817, metadata !774), !dbg !1839
  %723 = shl i32 %686, 30, !dbg !1943
  %724 = lshr i32 %686, 2, !dbg !1943
  %725 = or i32 %723, %724, !dbg !1943
  tail call void @llvm.dbg.value(metadata i32 %725, i64 0, metadata !1819, metadata !774), !dbg !1843
  %726 = shl i32 %722, 5, !dbg !1945
  %727 = lshr i32 %722, 27, !dbg !1945
  %728 = or i32 %726, %727, !dbg !1945
  %729 = xor i32 %725, %707, !dbg !1945
  %730 = xor i32 %729, %704, !dbg !1945
  %731 = xor i32 %484, %448, !dbg !1945
  %732 = xor i32 %731, %592, !dbg !1945
  %733 = xor i32 %732, %682, !dbg !1945
  tail call void @llvm.dbg.value(metadata i32 %733, i64 0, metadata !1822, metadata !774), !dbg !1900
  %734 = shl i32 %733, 1, !dbg !1945
  %735 = lshr i32 %733, 31, !dbg !1945
  %736 = or i32 %734, %735, !dbg !1945
  store i32 %736, i32* %41, align 4, !dbg !1945, !tbaa !960
  %737 = add i32 %736, 1859775393, !dbg !1945
  %738 = add i32 %737, %689, !dbg !1945
  %739 = add i32 %738, %730, !dbg !1945
  %740 = add i32 %739, %728, !dbg !1945
  tail call void @llvm.dbg.value(metadata i32 %740, i64 0, metadata !1816, metadata !774), !dbg !1837
  %741 = shl i32 %704, 30, !dbg !1945
  %742 = lshr i32 %704, 2, !dbg !1945
  %743 = or i32 %741, %742, !dbg !1945
  tail call void @llvm.dbg.value(metadata i32 %743, i64 0, metadata !1818, metadata !774), !dbg !1841
  %744 = shl i32 %740, 5, !dbg !1947
  %745 = lshr i32 %740, 27, !dbg !1947
  %746 = or i32 %744, %745, !dbg !1947
  %747 = and i32 %722, %743, !dbg !1947
  %748 = or i32 %722, %743, !dbg !1947
  %749 = and i32 %748, %725, !dbg !1947
  %750 = or i32 %749, %747, !dbg !1947
  %751 = xor i32 %502, %466, !dbg !1947
  %752 = xor i32 %751, %610, !dbg !1947
  %753 = xor i32 %752, %700, !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %753, i64 0, metadata !1822, metadata !774), !dbg !1900
  %754 = shl i32 %753, 1, !dbg !1947
  %755 = lshr i32 %753, 31, !dbg !1947
  %756 = or i32 %754, %755, !dbg !1947
  store i32 %756, i32* %42, align 16, !dbg !1947, !tbaa !960
  %757 = add i32 %756, -1894007588, !dbg !1947
  %758 = add i32 %757, %707, !dbg !1947
  %759 = add i32 %758, %750, !dbg !1947
  %760 = add i32 %759, %746, !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %760, i64 0, metadata !1820, metadata !774), !dbg !1845
  %761 = shl i32 %722, 30, !dbg !1947
  %762 = lshr i32 %722, 2, !dbg !1947
  %763 = or i32 %761, %762, !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %763, i64 0, metadata !1817, metadata !774), !dbg !1839
  %764 = shl i32 %760, 5, !dbg !1949
  %765 = lshr i32 %760, 27, !dbg !1949
  %766 = or i32 %764, %765, !dbg !1949
  %767 = and i32 %740, %763, !dbg !1949
  %768 = or i32 %740, %763, !dbg !1949
  %769 = and i32 %768, %743, !dbg !1949
  %770 = or i32 %769, %767, !dbg !1949
  %771 = xor i32 %520, %484, !dbg !1949
  %772 = xor i32 %771, %628, !dbg !1949
  %773 = xor i32 %772, %718, !dbg !1949
  tail call void @llvm.dbg.value(metadata i32 %773, i64 0, metadata !1822, metadata !774), !dbg !1900
  %774 = shl i32 %773, 1, !dbg !1949
  %775 = lshr i32 %773, 31, !dbg !1949
  %776 = or i32 %774, %775, !dbg !1949
  store i32 %776, i32* %43, align 4, !dbg !1949, !tbaa !960
  %777 = add i32 %776, -1894007588, !dbg !1949
  %778 = add i32 %777, %725, !dbg !1949
  %779 = add i32 %778, %770, !dbg !1949
  %780 = add i32 %779, %766, !dbg !1949
  tail call void @llvm.dbg.value(metadata i32 %780, i64 0, metadata !1819, metadata !774), !dbg !1843
  %781 = shl i32 %740, 30, !dbg !1949
  %782 = lshr i32 %740, 2, !dbg !1949
  %783 = or i32 %781, %782, !dbg !1949
  tail call void @llvm.dbg.value(metadata i32 %783, i64 0, metadata !1816, metadata !774), !dbg !1837
  %784 = shl i32 %780, 5, !dbg !1951
  %785 = lshr i32 %780, 27, !dbg !1951
  %786 = or i32 %784, %785, !dbg !1951
  %787 = and i32 %760, %783, !dbg !1951
  %788 = or i32 %760, %783, !dbg !1951
  %789 = and i32 %788, %763, !dbg !1951
  %790 = or i32 %789, %787, !dbg !1951
  %791 = xor i32 %538, %502, !dbg !1951
  %792 = xor i32 %791, %646, !dbg !1951
  %793 = xor i32 %792, %736, !dbg !1951
  tail call void @llvm.dbg.value(metadata i32 %793, i64 0, metadata !1822, metadata !774), !dbg !1900
  %794 = shl i32 %793, 1, !dbg !1951
  %795 = lshr i32 %793, 31, !dbg !1951
  %796 = or i32 %794, %795, !dbg !1951
  store i32 %796, i32* %44, align 8, !dbg !1951, !tbaa !960
  %797 = add i32 %796, -1894007588, !dbg !1951
  %798 = add i32 %797, %743, !dbg !1951
  %799 = add i32 %798, %790, !dbg !1951
  %800 = add i32 %799, %786, !dbg !1951
  tail call void @llvm.dbg.value(metadata i32 %800, i64 0, metadata !1818, metadata !774), !dbg !1841
  %801 = shl i32 %760, 30, !dbg !1951
  %802 = lshr i32 %760, 2, !dbg !1951
  %803 = or i32 %801, %802, !dbg !1951
  tail call void @llvm.dbg.value(metadata i32 %803, i64 0, metadata !1820, metadata !774), !dbg !1845
  %804 = shl i32 %800, 5, !dbg !1953
  %805 = lshr i32 %800, 27, !dbg !1953
  %806 = or i32 %804, %805, !dbg !1953
  %807 = and i32 %780, %803, !dbg !1953
  %808 = or i32 %780, %803, !dbg !1953
  %809 = and i32 %808, %783, !dbg !1953
  %810 = or i32 %809, %807, !dbg !1953
  %811 = xor i32 %556, %520, !dbg !1953
  %812 = xor i32 %811, %664, !dbg !1953
  %813 = xor i32 %812, %756, !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %813, i64 0, metadata !1822, metadata !774), !dbg !1900
  %814 = shl i32 %813, 1, !dbg !1953
  %815 = lshr i32 %813, 31, !dbg !1953
  %816 = or i32 %814, %815, !dbg !1953
  store i32 %816, i32* %45, align 4, !dbg !1953, !tbaa !960
  %817 = add i32 %816, -1894007588, !dbg !1953
  %818 = add i32 %817, %763, !dbg !1953
  %819 = add i32 %818, %810, !dbg !1953
  %820 = add i32 %819, %806, !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %820, i64 0, metadata !1817, metadata !774), !dbg !1839
  %821 = shl i32 %780, 30, !dbg !1953
  %822 = lshr i32 %780, 2, !dbg !1953
  %823 = or i32 %821, %822, !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %823, i64 0, metadata !1819, metadata !774), !dbg !1843
  %824 = shl i32 %820, 5, !dbg !1955
  %825 = lshr i32 %820, 27, !dbg !1955
  %826 = or i32 %824, %825, !dbg !1955
  %827 = and i32 %800, %823, !dbg !1955
  %828 = or i32 %800, %823, !dbg !1955
  %829 = and i32 %828, %803, !dbg !1955
  %830 = or i32 %829, %827, !dbg !1955
  %831 = xor i32 %574, %538, !dbg !1955
  %832 = xor i32 %831, %682, !dbg !1955
  %833 = xor i32 %832, %776, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %833, i64 0, metadata !1822, metadata !774), !dbg !1900
  %834 = shl i32 %833, 1, !dbg !1955
  %835 = lshr i32 %833, 31, !dbg !1955
  %836 = or i32 %834, %835, !dbg !1955
  store i32 %836, i32* %46, align 16, !dbg !1955, !tbaa !960
  %837 = add i32 %836, -1894007588, !dbg !1955
  %838 = add i32 %837, %783, !dbg !1955
  %839 = add i32 %838, %830, !dbg !1955
  %840 = add i32 %839, %826, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %840, i64 0, metadata !1816, metadata !774), !dbg !1837
  %841 = shl i32 %800, 30, !dbg !1955
  %842 = lshr i32 %800, 2, !dbg !1955
  %843 = or i32 %841, %842, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %843, i64 0, metadata !1818, metadata !774), !dbg !1841
  %844 = shl i32 %840, 5, !dbg !1957
  %845 = lshr i32 %840, 27, !dbg !1957
  %846 = or i32 %844, %845, !dbg !1957
  %847 = and i32 %820, %843, !dbg !1957
  %848 = or i32 %820, %843, !dbg !1957
  %849 = and i32 %848, %823, !dbg !1957
  %850 = or i32 %849, %847, !dbg !1957
  %851 = xor i32 %592, %556, !dbg !1957
  %852 = xor i32 %851, %700, !dbg !1957
  %853 = xor i32 %852, %796, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %853, i64 0, metadata !1822, metadata !774), !dbg !1900
  %854 = shl i32 %853, 1, !dbg !1957
  %855 = lshr i32 %853, 31, !dbg !1957
  %856 = or i32 %854, %855, !dbg !1957
  store i32 %856, i32* %47, align 4, !dbg !1957, !tbaa !960
  %857 = add i32 %856, -1894007588, !dbg !1957
  %858 = add i32 %857, %803, !dbg !1957
  %859 = add i32 %858, %850, !dbg !1957
  %860 = add i32 %859, %846, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %860, i64 0, metadata !1820, metadata !774), !dbg !1845
  %861 = shl i32 %820, 30, !dbg !1957
  %862 = lshr i32 %820, 2, !dbg !1957
  %863 = or i32 %861, %862, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %863, i64 0, metadata !1817, metadata !774), !dbg !1839
  %864 = shl i32 %860, 5, !dbg !1959
  %865 = lshr i32 %860, 27, !dbg !1959
  %866 = or i32 %864, %865, !dbg !1959
  %867 = and i32 %840, %863, !dbg !1959
  %868 = or i32 %840, %863, !dbg !1959
  %869 = and i32 %868, %843, !dbg !1959
  %870 = or i32 %869, %867, !dbg !1959
  %871 = xor i32 %610, %574, !dbg !1959
  %872 = xor i32 %871, %718, !dbg !1959
  %873 = xor i32 %872, %816, !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %873, i64 0, metadata !1822, metadata !774), !dbg !1900
  %874 = shl i32 %873, 1, !dbg !1959
  %875 = lshr i32 %873, 31, !dbg !1959
  %876 = or i32 %874, %875, !dbg !1959
  store i32 %876, i32* %48, align 8, !dbg !1959, !tbaa !960
  %877 = add i32 %876, -1894007588, !dbg !1959
  %878 = add i32 %877, %823, !dbg !1959
  %879 = add i32 %878, %870, !dbg !1959
  %880 = add i32 %879, %866, !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %880, i64 0, metadata !1819, metadata !774), !dbg !1843
  %881 = shl i32 %840, 30, !dbg !1959
  %882 = lshr i32 %840, 2, !dbg !1959
  %883 = or i32 %881, %882, !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %883, i64 0, metadata !1816, metadata !774), !dbg !1837
  %884 = shl i32 %880, 5, !dbg !1961
  %885 = lshr i32 %880, 27, !dbg !1961
  %886 = or i32 %884, %885, !dbg !1961
  %887 = and i32 %860, %883, !dbg !1961
  %888 = or i32 %860, %883, !dbg !1961
  %889 = and i32 %888, %863, !dbg !1961
  %890 = or i32 %889, %887, !dbg !1961
  %891 = xor i32 %628, %592, !dbg !1961
  %892 = xor i32 %891, %736, !dbg !1961
  %893 = xor i32 %892, %836, !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 %893, i64 0, metadata !1822, metadata !774), !dbg !1900
  %894 = shl i32 %893, 1, !dbg !1961
  %895 = lshr i32 %893, 31, !dbg !1961
  %896 = or i32 %894, %895, !dbg !1961
  store i32 %896, i32* %49, align 4, !dbg !1961, !tbaa !960
  %897 = add i32 %896, -1894007588, !dbg !1961
  %898 = add i32 %897, %843, !dbg !1961
  %899 = add i32 %898, %890, !dbg !1961
  %900 = add i32 %899, %886, !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 %900, i64 0, metadata !1818, metadata !774), !dbg !1841
  %901 = shl i32 %860, 30, !dbg !1961
  %902 = lshr i32 %860, 2, !dbg !1961
  %903 = or i32 %901, %902, !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 %903, i64 0, metadata !1820, metadata !774), !dbg !1845
  %904 = shl i32 %900, 5, !dbg !1963
  %905 = lshr i32 %900, 27, !dbg !1963
  %906 = or i32 %904, %905, !dbg !1963
  %907 = and i32 %880, %903, !dbg !1963
  %908 = or i32 %880, %903, !dbg !1963
  %909 = and i32 %908, %883, !dbg !1963
  %910 = or i32 %909, %907, !dbg !1963
  %911 = xor i32 %646, %610, !dbg !1963
  %912 = xor i32 %911, %756, !dbg !1963
  %913 = xor i32 %912, %856, !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 %913, i64 0, metadata !1822, metadata !774), !dbg !1900
  %914 = shl i32 %913, 1, !dbg !1963
  %915 = lshr i32 %913, 31, !dbg !1963
  %916 = or i32 %914, %915, !dbg !1963
  store i32 %916, i32* %34, align 16, !dbg !1963, !tbaa !960
  %917 = add i32 %916, -1894007588, !dbg !1963
  %918 = add i32 %917, %863, !dbg !1963
  %919 = add i32 %918, %910, !dbg !1963
  %920 = add i32 %919, %906, !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 %920, i64 0, metadata !1817, metadata !774), !dbg !1839
  %921 = shl i32 %880, 30, !dbg !1963
  %922 = lshr i32 %880, 2, !dbg !1963
  %923 = or i32 %921, %922, !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 %923, i64 0, metadata !1819, metadata !774), !dbg !1843
  %924 = shl i32 %920, 5, !dbg !1965
  %925 = lshr i32 %920, 27, !dbg !1965
  %926 = or i32 %924, %925, !dbg !1965
  %927 = and i32 %900, %923, !dbg !1965
  %928 = or i32 %900, %923, !dbg !1965
  %929 = and i32 %928, %903, !dbg !1965
  %930 = or i32 %929, %927, !dbg !1965
  %931 = xor i32 %664, %628, !dbg !1965
  %932 = xor i32 %931, %776, !dbg !1965
  %933 = xor i32 %932, %876, !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 %933, i64 0, metadata !1822, metadata !774), !dbg !1900
  %934 = shl i32 %933, 1, !dbg !1965
  %935 = lshr i32 %933, 31, !dbg !1965
  %936 = or i32 %934, %935, !dbg !1965
  store i32 %936, i32* %35, align 4, !dbg !1965, !tbaa !960
  %937 = add i32 %936, -1894007588, !dbg !1965
  %938 = add i32 %937, %883, !dbg !1965
  %939 = add i32 %938, %930, !dbg !1965
  %940 = add i32 %939, %926, !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 %940, i64 0, metadata !1816, metadata !774), !dbg !1837
  %941 = shl i32 %900, 30, !dbg !1965
  %942 = lshr i32 %900, 2, !dbg !1965
  %943 = or i32 %941, %942, !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 %943, i64 0, metadata !1818, metadata !774), !dbg !1841
  %944 = shl i32 %940, 5, !dbg !1967
  %945 = lshr i32 %940, 27, !dbg !1967
  %946 = or i32 %944, %945, !dbg !1967
  %947 = and i32 %920, %943, !dbg !1967
  %948 = or i32 %920, %943, !dbg !1967
  %949 = and i32 %948, %923, !dbg !1967
  %950 = or i32 %949, %947, !dbg !1967
  %951 = xor i32 %682, %646, !dbg !1967
  %952 = xor i32 %951, %796, !dbg !1967
  %953 = xor i32 %952, %896, !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %953, i64 0, metadata !1822, metadata !774), !dbg !1900
  %954 = shl i32 %953, 1, !dbg !1967
  %955 = lshr i32 %953, 31, !dbg !1967
  %956 = or i32 %954, %955, !dbg !1967
  store i32 %956, i32* %36, align 8, !dbg !1967, !tbaa !960
  %957 = add i32 %956, -1894007588, !dbg !1967
  %958 = add i32 %957, %903, !dbg !1967
  %959 = add i32 %958, %950, !dbg !1967
  %960 = add i32 %959, %946, !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %960, i64 0, metadata !1820, metadata !774), !dbg !1845
  %961 = shl i32 %920, 30, !dbg !1967
  %962 = lshr i32 %920, 2, !dbg !1967
  %963 = or i32 %961, %962, !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %963, i64 0, metadata !1817, metadata !774), !dbg !1839
  %964 = shl i32 %960, 5, !dbg !1969
  %965 = lshr i32 %960, 27, !dbg !1969
  %966 = or i32 %964, %965, !dbg !1969
  %967 = and i32 %940, %963, !dbg !1969
  %968 = or i32 %940, %963, !dbg !1969
  %969 = and i32 %968, %943, !dbg !1969
  %970 = or i32 %969, %967, !dbg !1969
  %971 = xor i32 %700, %664, !dbg !1969
  %972 = xor i32 %971, %816, !dbg !1969
  %973 = xor i32 %972, %916, !dbg !1969
  tail call void @llvm.dbg.value(metadata i32 %973, i64 0, metadata !1822, metadata !774), !dbg !1900
  %974 = shl i32 %973, 1, !dbg !1969
  %975 = lshr i32 %973, 31, !dbg !1969
  %976 = or i32 %974, %975, !dbg !1969
  store i32 %976, i32* %37, align 4, !dbg !1969, !tbaa !960
  %977 = add i32 %976, -1894007588, !dbg !1969
  %978 = add i32 %977, %923, !dbg !1969
  %979 = add i32 %978, %970, !dbg !1969
  %980 = add i32 %979, %966, !dbg !1969
  tail call void @llvm.dbg.value(metadata i32 %980, i64 0, metadata !1819, metadata !774), !dbg !1843
  %981 = shl i32 %940, 30, !dbg !1969
  %982 = lshr i32 %940, 2, !dbg !1969
  %983 = or i32 %981, %982, !dbg !1969
  tail call void @llvm.dbg.value(metadata i32 %983, i64 0, metadata !1816, metadata !774), !dbg !1837
  %984 = shl i32 %980, 5, !dbg !1971
  %985 = lshr i32 %980, 27, !dbg !1971
  %986 = or i32 %984, %985, !dbg !1971
  %987 = and i32 %960, %983, !dbg !1971
  %988 = or i32 %960, %983, !dbg !1971
  %989 = and i32 %988, %963, !dbg !1971
  %990 = or i32 %989, %987, !dbg !1971
  %991 = xor i32 %718, %682, !dbg !1971
  %992 = xor i32 %991, %836, !dbg !1971
  %993 = xor i32 %992, %936, !dbg !1971
  tail call void @llvm.dbg.value(metadata i32 %993, i64 0, metadata !1822, metadata !774), !dbg !1900
  %994 = shl i32 %993, 1, !dbg !1971
  %995 = lshr i32 %993, 31, !dbg !1971
  %996 = or i32 %994, %995, !dbg !1971
  store i32 %996, i32* %38, align 16, !dbg !1971, !tbaa !960
  %997 = add i32 %996, -1894007588, !dbg !1971
  %998 = add i32 %997, %943, !dbg !1971
  %999 = add i32 %998, %990, !dbg !1971
  %1000 = add i32 %999, %986, !dbg !1971
  tail call void @llvm.dbg.value(metadata i32 %1000, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1001 = shl i32 %960, 30, !dbg !1971
  %1002 = lshr i32 %960, 2, !dbg !1971
  %1003 = or i32 %1001, %1002, !dbg !1971
  tail call void @llvm.dbg.value(metadata i32 %1003, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1004 = shl i32 %1000, 5, !dbg !1973
  %1005 = lshr i32 %1000, 27, !dbg !1973
  %1006 = or i32 %1004, %1005, !dbg !1973
  %1007 = and i32 %980, %1003, !dbg !1973
  %1008 = or i32 %980, %1003, !dbg !1973
  %1009 = and i32 %1008, %983, !dbg !1973
  %1010 = or i32 %1009, %1007, !dbg !1973
  %1011 = xor i32 %736, %700, !dbg !1973
  %1012 = xor i32 %1011, %856, !dbg !1973
  %1013 = xor i32 %1012, %956, !dbg !1973
  tail call void @llvm.dbg.value(metadata i32 %1013, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1014 = shl i32 %1013, 1, !dbg !1973
  %1015 = lshr i32 %1013, 31, !dbg !1973
  %1016 = or i32 %1014, %1015, !dbg !1973
  store i32 %1016, i32* %39, align 4, !dbg !1973, !tbaa !960
  %1017 = add i32 %1016, -1894007588, !dbg !1973
  %1018 = add i32 %1017, %963, !dbg !1973
  %1019 = add i32 %1018, %1010, !dbg !1973
  %1020 = add i32 %1019, %1006, !dbg !1973
  tail call void @llvm.dbg.value(metadata i32 %1020, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1021 = shl i32 %980, 30, !dbg !1973
  %1022 = lshr i32 %980, 2, !dbg !1973
  %1023 = or i32 %1021, %1022, !dbg !1973
  tail call void @llvm.dbg.value(metadata i32 %1023, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1024 = shl i32 %1020, 5, !dbg !1975
  %1025 = lshr i32 %1020, 27, !dbg !1975
  %1026 = or i32 %1024, %1025, !dbg !1975
  %1027 = and i32 %1000, %1023, !dbg !1975
  %1028 = or i32 %1000, %1023, !dbg !1975
  %1029 = and i32 %1028, %1003, !dbg !1975
  %1030 = or i32 %1029, %1027, !dbg !1975
  %1031 = xor i32 %756, %718, !dbg !1975
  %1032 = xor i32 %1031, %876, !dbg !1975
  %1033 = xor i32 %1032, %976, !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 %1033, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1034 = shl i32 %1033, 1, !dbg !1975
  %1035 = lshr i32 %1033, 31, !dbg !1975
  %1036 = or i32 %1034, %1035, !dbg !1975
  store i32 %1036, i32* %40, align 8, !dbg !1975, !tbaa !960
  %1037 = add i32 %1036, -1894007588, !dbg !1975
  %1038 = add i32 %1037, %983, !dbg !1975
  %1039 = add i32 %1038, %1030, !dbg !1975
  %1040 = add i32 %1039, %1026, !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 %1040, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1041 = shl i32 %1000, 30, !dbg !1975
  %1042 = lshr i32 %1000, 2, !dbg !1975
  %1043 = or i32 %1041, %1042, !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 %1043, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1044 = shl i32 %1040, 5, !dbg !1977
  %1045 = lshr i32 %1040, 27, !dbg !1977
  %1046 = or i32 %1044, %1045, !dbg !1977
  %1047 = and i32 %1020, %1043, !dbg !1977
  %1048 = or i32 %1020, %1043, !dbg !1977
  %1049 = and i32 %1048, %1023, !dbg !1977
  %1050 = or i32 %1049, %1047, !dbg !1977
  %1051 = xor i32 %776, %736, !dbg !1977
  %1052 = xor i32 %1051, %896, !dbg !1977
  %1053 = xor i32 %1052, %996, !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %1053, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1054 = shl i32 %1053, 1, !dbg !1977
  %1055 = lshr i32 %1053, 31, !dbg !1977
  %1056 = or i32 %1054, %1055, !dbg !1977
  store i32 %1056, i32* %41, align 4, !dbg !1977, !tbaa !960
  %1057 = add i32 %1056, -1894007588, !dbg !1977
  %1058 = add i32 %1057, %1003, !dbg !1977
  %1059 = add i32 %1058, %1050, !dbg !1977
  %1060 = add i32 %1059, %1046, !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %1060, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1061 = shl i32 %1020, 30, !dbg !1977
  %1062 = lshr i32 %1020, 2, !dbg !1977
  %1063 = or i32 %1061, %1062, !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %1063, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1064 = shl i32 %1060, 5, !dbg !1979
  %1065 = lshr i32 %1060, 27, !dbg !1979
  %1066 = or i32 %1064, %1065, !dbg !1979
  %1067 = and i32 %1040, %1063, !dbg !1979
  %1068 = or i32 %1040, %1063, !dbg !1979
  %1069 = and i32 %1068, %1043, !dbg !1979
  %1070 = or i32 %1069, %1067, !dbg !1979
  %1071 = xor i32 %796, %756, !dbg !1979
  %1072 = xor i32 %1071, %916, !dbg !1979
  %1073 = xor i32 %1072, %1016, !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 %1073, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1074 = shl i32 %1073, 1, !dbg !1979
  %1075 = lshr i32 %1073, 31, !dbg !1979
  %1076 = or i32 %1074, %1075, !dbg !1979
  store i32 %1076, i32* %42, align 16, !dbg !1979, !tbaa !960
  %1077 = add i32 %1076, -1894007588, !dbg !1979
  %1078 = add i32 %1077, %1023, !dbg !1979
  %1079 = add i32 %1078, %1070, !dbg !1979
  %1080 = add i32 %1079, %1066, !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 %1080, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1081 = shl i32 %1040, 30, !dbg !1979
  %1082 = lshr i32 %1040, 2, !dbg !1979
  %1083 = or i32 %1081, %1082, !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 %1083, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1084 = shl i32 %1080, 5, !dbg !1981
  %1085 = lshr i32 %1080, 27, !dbg !1981
  %1086 = or i32 %1084, %1085, !dbg !1981
  %1087 = and i32 %1060, %1083, !dbg !1981
  %1088 = or i32 %1060, %1083, !dbg !1981
  %1089 = and i32 %1088, %1063, !dbg !1981
  %1090 = or i32 %1089, %1087, !dbg !1981
  %1091 = xor i32 %816, %776, !dbg !1981
  %1092 = xor i32 %1091, %936, !dbg !1981
  %1093 = xor i32 %1092, %1036, !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %1093, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1094 = shl i32 %1093, 1, !dbg !1981
  %1095 = lshr i32 %1093, 31, !dbg !1981
  %1096 = or i32 %1094, %1095, !dbg !1981
  store i32 %1096, i32* %43, align 4, !dbg !1981, !tbaa !960
  %1097 = add i32 %1096, -1894007588, !dbg !1981
  %1098 = add i32 %1097, %1043, !dbg !1981
  %1099 = add i32 %1098, %1090, !dbg !1981
  %1100 = add i32 %1099, %1086, !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %1100, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1101 = shl i32 %1060, 30, !dbg !1981
  %1102 = lshr i32 %1060, 2, !dbg !1981
  %1103 = or i32 %1101, %1102, !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %1103, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1104 = shl i32 %1100, 5, !dbg !1983
  %1105 = lshr i32 %1100, 27, !dbg !1983
  %1106 = or i32 %1104, %1105, !dbg !1983
  %1107 = and i32 %1080, %1103, !dbg !1983
  %1108 = or i32 %1080, %1103, !dbg !1983
  %1109 = and i32 %1108, %1083, !dbg !1983
  %1110 = or i32 %1109, %1107, !dbg !1983
  %1111 = xor i32 %836, %796, !dbg !1983
  %1112 = xor i32 %1111, %956, !dbg !1983
  %1113 = xor i32 %1112, %1056, !dbg !1983
  tail call void @llvm.dbg.value(metadata i32 %1113, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1114 = shl i32 %1113, 1, !dbg !1983
  %1115 = lshr i32 %1113, 31, !dbg !1983
  %1116 = or i32 %1114, %1115, !dbg !1983
  store i32 %1116, i32* %44, align 8, !dbg !1983, !tbaa !960
  %1117 = add i32 %1116, -1894007588, !dbg !1983
  %1118 = add i32 %1117, %1063, !dbg !1983
  %1119 = add i32 %1118, %1110, !dbg !1983
  %1120 = add i32 %1119, %1106, !dbg !1983
  tail call void @llvm.dbg.value(metadata i32 %1120, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1121 = shl i32 %1080, 30, !dbg !1983
  %1122 = lshr i32 %1080, 2, !dbg !1983
  %1123 = or i32 %1121, %1122, !dbg !1983
  tail call void @llvm.dbg.value(metadata i32 %1123, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1124 = shl i32 %1120, 5, !dbg !1985
  %1125 = lshr i32 %1120, 27, !dbg !1985
  %1126 = or i32 %1124, %1125, !dbg !1985
  %1127 = and i32 %1100, %1123, !dbg !1985
  %1128 = or i32 %1100, %1123, !dbg !1985
  %1129 = and i32 %1128, %1103, !dbg !1985
  %1130 = or i32 %1129, %1127, !dbg !1985
  %1131 = xor i32 %856, %816, !dbg !1985
  %1132 = xor i32 %1131, %976, !dbg !1985
  %1133 = xor i32 %1132, %1076, !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %1133, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1134 = shl i32 %1133, 1, !dbg !1985
  %1135 = lshr i32 %1133, 31, !dbg !1985
  %1136 = or i32 %1134, %1135, !dbg !1985
  store i32 %1136, i32* %45, align 4, !dbg !1985, !tbaa !960
  %1137 = add i32 %1136, -1894007588, !dbg !1985
  %1138 = add i32 %1137, %1083, !dbg !1985
  %1139 = add i32 %1138, %1130, !dbg !1985
  %1140 = add i32 %1139, %1126, !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %1140, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1141 = shl i32 %1100, 30, !dbg !1985
  %1142 = lshr i32 %1100, 2, !dbg !1985
  %1143 = or i32 %1141, %1142, !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %1143, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1144 = shl i32 %1140, 5, !dbg !1987
  %1145 = lshr i32 %1140, 27, !dbg !1987
  %1146 = or i32 %1144, %1145, !dbg !1987
  %1147 = xor i32 %1143, %1123, !dbg !1987
  %1148 = xor i32 %1147, %1120, !dbg !1987
  %1149 = xor i32 %876, %836, !dbg !1987
  %1150 = xor i32 %1149, %996, !dbg !1987
  %1151 = xor i32 %1150, %1096, !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 %1151, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1152 = shl i32 %1151, 1, !dbg !1987
  %1153 = lshr i32 %1151, 31, !dbg !1987
  %1154 = or i32 %1152, %1153, !dbg !1987
  store i32 %1154, i32* %46, align 16, !dbg !1987, !tbaa !960
  %1155 = add i32 %1154, -899497514, !dbg !1987
  %1156 = add i32 %1155, %1103, !dbg !1987
  %1157 = add i32 %1156, %1148, !dbg !1987
  %1158 = add i32 %1157, %1146, !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 %1158, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1159 = shl i32 %1120, 30, !dbg !1987
  %1160 = lshr i32 %1120, 2, !dbg !1987
  %1161 = or i32 %1159, %1160, !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 %1161, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1162 = shl i32 %1158, 5, !dbg !1989
  %1163 = lshr i32 %1158, 27, !dbg !1989
  %1164 = or i32 %1162, %1163, !dbg !1989
  %1165 = xor i32 %1161, %1143, !dbg !1989
  %1166 = xor i32 %1165, %1140, !dbg !1989
  %1167 = xor i32 %896, %856, !dbg !1989
  %1168 = xor i32 %1167, %1016, !dbg !1989
  %1169 = xor i32 %1168, %1116, !dbg !1989
  tail call void @llvm.dbg.value(metadata i32 %1169, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1170 = shl i32 %1169, 1, !dbg !1989
  %1171 = lshr i32 %1169, 31, !dbg !1989
  %1172 = or i32 %1170, %1171, !dbg !1989
  store i32 %1172, i32* %47, align 4, !dbg !1989, !tbaa !960
  %1173 = add i32 %1172, -899497514, !dbg !1989
  %1174 = add i32 %1173, %1123, !dbg !1989
  %1175 = add i32 %1174, %1166, !dbg !1989
  %1176 = add i32 %1175, %1164, !dbg !1989
  tail call void @llvm.dbg.value(metadata i32 %1176, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1177 = shl i32 %1140, 30, !dbg !1989
  %1178 = lshr i32 %1140, 2, !dbg !1989
  %1179 = or i32 %1177, %1178, !dbg !1989
  tail call void @llvm.dbg.value(metadata i32 %1179, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1180 = shl i32 %1176, 5, !dbg !1991
  %1181 = lshr i32 %1176, 27, !dbg !1991
  %1182 = or i32 %1180, %1181, !dbg !1991
  %1183 = xor i32 %1179, %1161, !dbg !1991
  %1184 = xor i32 %1183, %1158, !dbg !1991
  %1185 = xor i32 %916, %876, !dbg !1991
  %1186 = xor i32 %1185, %1036, !dbg !1991
  %1187 = xor i32 %1186, %1136, !dbg !1991
  tail call void @llvm.dbg.value(metadata i32 %1187, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1188 = shl i32 %1187, 1, !dbg !1991
  %1189 = lshr i32 %1187, 31, !dbg !1991
  %1190 = or i32 %1188, %1189, !dbg !1991
  store i32 %1190, i32* %48, align 8, !dbg !1991, !tbaa !960
  %1191 = add i32 %1190, -899497514, !dbg !1991
  %1192 = add i32 %1191, %1143, !dbg !1991
  %1193 = add i32 %1192, %1184, !dbg !1991
  %1194 = add i32 %1193, %1182, !dbg !1991
  tail call void @llvm.dbg.value(metadata i32 %1194, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1195 = shl i32 %1158, 30, !dbg !1991
  %1196 = lshr i32 %1158, 2, !dbg !1991
  %1197 = or i32 %1195, %1196, !dbg !1991
  tail call void @llvm.dbg.value(metadata i32 %1197, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1198 = shl i32 %1194, 5, !dbg !1993
  %1199 = lshr i32 %1194, 27, !dbg !1993
  %1200 = or i32 %1198, %1199, !dbg !1993
  %1201 = xor i32 %1197, %1179, !dbg !1993
  %1202 = xor i32 %1201, %1176, !dbg !1993
  %1203 = xor i32 %936, %896, !dbg !1993
  %1204 = xor i32 %1203, %1056, !dbg !1993
  %1205 = xor i32 %1204, %1154, !dbg !1993
  tail call void @llvm.dbg.value(metadata i32 %1205, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1206 = shl i32 %1205, 1, !dbg !1993
  %1207 = lshr i32 %1205, 31, !dbg !1993
  %1208 = or i32 %1206, %1207, !dbg !1993
  store i32 %1208, i32* %49, align 4, !dbg !1993, !tbaa !960
  %1209 = add i32 %1208, -899497514, !dbg !1993
  %1210 = add i32 %1209, %1161, !dbg !1993
  %1211 = add i32 %1210, %1202, !dbg !1993
  %1212 = add i32 %1211, %1200, !dbg !1993
  tail call void @llvm.dbg.value(metadata i32 %1212, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1213 = shl i32 %1176, 30, !dbg !1993
  %1214 = lshr i32 %1176, 2, !dbg !1993
  %1215 = or i32 %1213, %1214, !dbg !1993
  tail call void @llvm.dbg.value(metadata i32 %1215, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1216 = shl i32 %1212, 5, !dbg !1995
  %1217 = lshr i32 %1212, 27, !dbg !1995
  %1218 = or i32 %1216, %1217, !dbg !1995
  %1219 = xor i32 %1215, %1197, !dbg !1995
  %1220 = xor i32 %1219, %1194, !dbg !1995
  %1221 = xor i32 %956, %916, !dbg !1995
  %1222 = xor i32 %1221, %1076, !dbg !1995
  %1223 = xor i32 %1222, %1172, !dbg !1995
  tail call void @llvm.dbg.value(metadata i32 %1223, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1224 = shl i32 %1223, 1, !dbg !1995
  %1225 = lshr i32 %1223, 31, !dbg !1995
  %1226 = or i32 %1224, %1225, !dbg !1995
  store i32 %1226, i32* %34, align 16, !dbg !1995, !tbaa !960
  %1227 = add i32 %1226, -899497514, !dbg !1995
  %1228 = add i32 %1227, %1179, !dbg !1995
  %1229 = add i32 %1228, %1220, !dbg !1995
  %1230 = add i32 %1229, %1218, !dbg !1995
  tail call void @llvm.dbg.value(metadata i32 %1230, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1231 = shl i32 %1194, 30, !dbg !1995
  %1232 = lshr i32 %1194, 2, !dbg !1995
  %1233 = or i32 %1231, %1232, !dbg !1995
  tail call void @llvm.dbg.value(metadata i32 %1233, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1234 = shl i32 %1230, 5, !dbg !1997
  %1235 = lshr i32 %1230, 27, !dbg !1997
  %1236 = or i32 %1234, %1235, !dbg !1997
  %1237 = xor i32 %1233, %1215, !dbg !1997
  %1238 = xor i32 %1237, %1212, !dbg !1997
  %1239 = xor i32 %976, %936, !dbg !1997
  %1240 = xor i32 %1239, %1096, !dbg !1997
  %1241 = xor i32 %1240, %1190, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 %1241, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1242 = shl i32 %1241, 1, !dbg !1997
  %1243 = lshr i32 %1241, 31, !dbg !1997
  %1244 = or i32 %1242, %1243, !dbg !1997
  store i32 %1244, i32* %35, align 4, !dbg !1997, !tbaa !960
  %1245 = add i32 %1244, -899497514, !dbg !1997
  %1246 = add i32 %1245, %1197, !dbg !1997
  %1247 = add i32 %1246, %1238, !dbg !1997
  %1248 = add i32 %1247, %1236, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 %1248, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1249 = shl i32 %1212, 30, !dbg !1997
  %1250 = lshr i32 %1212, 2, !dbg !1997
  %1251 = or i32 %1249, %1250, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 %1251, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1252 = shl i32 %1248, 5, !dbg !1999
  %1253 = lshr i32 %1248, 27, !dbg !1999
  %1254 = or i32 %1252, %1253, !dbg !1999
  %1255 = xor i32 %1251, %1233, !dbg !1999
  %1256 = xor i32 %1255, %1230, !dbg !1999
  %1257 = xor i32 %996, %956, !dbg !1999
  %1258 = xor i32 %1257, %1116, !dbg !1999
  %1259 = xor i32 %1258, %1208, !dbg !1999
  tail call void @llvm.dbg.value(metadata i32 %1259, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1260 = shl i32 %1259, 1, !dbg !1999
  %1261 = lshr i32 %1259, 31, !dbg !1999
  %1262 = or i32 %1260, %1261, !dbg !1999
  store i32 %1262, i32* %36, align 8, !dbg !1999, !tbaa !960
  %1263 = add i32 %1262, -899497514, !dbg !1999
  %1264 = add i32 %1263, %1215, !dbg !1999
  %1265 = add i32 %1264, %1256, !dbg !1999
  %1266 = add i32 %1265, %1254, !dbg !1999
  tail call void @llvm.dbg.value(metadata i32 %1266, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1267 = shl i32 %1230, 30, !dbg !1999
  %1268 = lshr i32 %1230, 2, !dbg !1999
  %1269 = or i32 %1267, %1268, !dbg !1999
  tail call void @llvm.dbg.value(metadata i32 %1269, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1270 = shl i32 %1266, 5, !dbg !2001
  %1271 = lshr i32 %1266, 27, !dbg !2001
  %1272 = or i32 %1270, %1271, !dbg !2001
  %1273 = xor i32 %1269, %1251, !dbg !2001
  %1274 = xor i32 %1273, %1248, !dbg !2001
  %1275 = xor i32 %1016, %976, !dbg !2001
  %1276 = xor i32 %1275, %1136, !dbg !2001
  %1277 = xor i32 %1276, %1226, !dbg !2001
  tail call void @llvm.dbg.value(metadata i32 %1277, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1278 = shl i32 %1277, 1, !dbg !2001
  %1279 = lshr i32 %1277, 31, !dbg !2001
  %1280 = or i32 %1278, %1279, !dbg !2001
  store i32 %1280, i32* %37, align 4, !dbg !2001, !tbaa !960
  %1281 = add i32 %1280, -899497514, !dbg !2001
  %1282 = add i32 %1281, %1233, !dbg !2001
  %1283 = add i32 %1282, %1274, !dbg !2001
  %1284 = add i32 %1283, %1272, !dbg !2001
  tail call void @llvm.dbg.value(metadata i32 %1284, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1285 = shl i32 %1248, 30, !dbg !2001
  %1286 = lshr i32 %1248, 2, !dbg !2001
  %1287 = or i32 %1285, %1286, !dbg !2001
  tail call void @llvm.dbg.value(metadata i32 %1287, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1288 = shl i32 %1284, 5, !dbg !2003
  %1289 = lshr i32 %1284, 27, !dbg !2003
  %1290 = or i32 %1288, %1289, !dbg !2003
  %1291 = xor i32 %1287, %1269, !dbg !2003
  %1292 = xor i32 %1291, %1266, !dbg !2003
  %1293 = xor i32 %1036, %996, !dbg !2003
  %1294 = xor i32 %1293, %1154, !dbg !2003
  %1295 = xor i32 %1294, %1244, !dbg !2003
  tail call void @llvm.dbg.value(metadata i32 %1295, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1296 = shl i32 %1295, 1, !dbg !2003
  %1297 = lshr i32 %1295, 31, !dbg !2003
  %1298 = or i32 %1296, %1297, !dbg !2003
  store i32 %1298, i32* %38, align 16, !dbg !2003, !tbaa !960
  %1299 = add i32 %1298, -899497514, !dbg !2003
  %1300 = add i32 %1299, %1251, !dbg !2003
  %1301 = add i32 %1300, %1292, !dbg !2003
  %1302 = add i32 %1301, %1290, !dbg !2003
  tail call void @llvm.dbg.value(metadata i32 %1302, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1303 = shl i32 %1266, 30, !dbg !2003
  %1304 = lshr i32 %1266, 2, !dbg !2003
  %1305 = or i32 %1303, %1304, !dbg !2003
  tail call void @llvm.dbg.value(metadata i32 %1305, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1306 = shl i32 %1302, 5, !dbg !2005
  %1307 = lshr i32 %1302, 27, !dbg !2005
  %1308 = or i32 %1306, %1307, !dbg !2005
  %1309 = xor i32 %1305, %1287, !dbg !2005
  %1310 = xor i32 %1309, %1284, !dbg !2005
  %1311 = xor i32 %1056, %1016, !dbg !2005
  %1312 = xor i32 %1311, %1172, !dbg !2005
  %1313 = xor i32 %1312, %1262, !dbg !2005
  tail call void @llvm.dbg.value(metadata i32 %1313, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1314 = shl i32 %1313, 1, !dbg !2005
  %1315 = lshr i32 %1313, 31, !dbg !2005
  %1316 = or i32 %1314, %1315, !dbg !2005
  store i32 %1316, i32* %39, align 4, !dbg !2005, !tbaa !960
  %1317 = add i32 %1316, -899497514, !dbg !2005
  %1318 = add i32 %1317, %1269, !dbg !2005
  %1319 = add i32 %1318, %1310, !dbg !2005
  %1320 = add i32 %1319, %1308, !dbg !2005
  tail call void @llvm.dbg.value(metadata i32 %1320, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1321 = shl i32 %1284, 30, !dbg !2005
  %1322 = lshr i32 %1284, 2, !dbg !2005
  %1323 = or i32 %1321, %1322, !dbg !2005
  tail call void @llvm.dbg.value(metadata i32 %1323, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1324 = shl i32 %1320, 5, !dbg !2007
  %1325 = lshr i32 %1320, 27, !dbg !2007
  %1326 = or i32 %1324, %1325, !dbg !2007
  %1327 = xor i32 %1323, %1305, !dbg !2007
  %1328 = xor i32 %1327, %1302, !dbg !2007
  %1329 = xor i32 %1076, %1036, !dbg !2007
  %1330 = xor i32 %1329, %1190, !dbg !2007
  %1331 = xor i32 %1330, %1280, !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %1331, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1332 = shl i32 %1331, 1, !dbg !2007
  %1333 = lshr i32 %1331, 31, !dbg !2007
  %1334 = or i32 %1332, %1333, !dbg !2007
  store i32 %1334, i32* %40, align 8, !dbg !2007, !tbaa !960
  %1335 = add i32 %1334, -899497514, !dbg !2007
  %1336 = add i32 %1335, %1287, !dbg !2007
  %1337 = add i32 %1336, %1328, !dbg !2007
  %1338 = add i32 %1337, %1326, !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %1338, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1339 = shl i32 %1302, 30, !dbg !2007
  %1340 = lshr i32 %1302, 2, !dbg !2007
  %1341 = or i32 %1339, %1340, !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %1341, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1342 = shl i32 %1338, 5, !dbg !2009
  %1343 = lshr i32 %1338, 27, !dbg !2009
  %1344 = or i32 %1342, %1343, !dbg !2009
  %1345 = xor i32 %1341, %1323, !dbg !2009
  %1346 = xor i32 %1345, %1320, !dbg !2009
  %1347 = xor i32 %1096, %1056, !dbg !2009
  %1348 = xor i32 %1347, %1208, !dbg !2009
  %1349 = xor i32 %1348, %1298, !dbg !2009
  tail call void @llvm.dbg.value(metadata i32 %1349, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1350 = shl i32 %1349, 1, !dbg !2009
  %1351 = lshr i32 %1349, 31, !dbg !2009
  %1352 = or i32 %1350, %1351, !dbg !2009
  store i32 %1352, i32* %41, align 4, !dbg !2009, !tbaa !960
  %1353 = add i32 %1352, -899497514, !dbg !2009
  %1354 = add i32 %1353, %1305, !dbg !2009
  %1355 = add i32 %1354, %1346, !dbg !2009
  %1356 = add i32 %1355, %1344, !dbg !2009
  tail call void @llvm.dbg.value(metadata i32 %1356, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1357 = shl i32 %1320, 30, !dbg !2009
  %1358 = lshr i32 %1320, 2, !dbg !2009
  %1359 = or i32 %1357, %1358, !dbg !2009
  tail call void @llvm.dbg.value(metadata i32 %1359, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1360 = shl i32 %1356, 5, !dbg !2011
  %1361 = lshr i32 %1356, 27, !dbg !2011
  %1362 = or i32 %1360, %1361, !dbg !2011
  %1363 = xor i32 %1359, %1341, !dbg !2011
  %1364 = xor i32 %1363, %1338, !dbg !2011
  %1365 = xor i32 %1116, %1076, !dbg !2011
  %1366 = xor i32 %1365, %1226, !dbg !2011
  %1367 = xor i32 %1366, %1316, !dbg !2011
  tail call void @llvm.dbg.value(metadata i32 %1367, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1368 = shl i32 %1367, 1, !dbg !2011
  %1369 = lshr i32 %1367, 31, !dbg !2011
  %1370 = or i32 %1368, %1369, !dbg !2011
  store i32 %1370, i32* %42, align 16, !dbg !2011, !tbaa !960
  %1371 = add i32 %1370, -899497514, !dbg !2011
  %1372 = add i32 %1371, %1323, !dbg !2011
  %1373 = add i32 %1372, %1364, !dbg !2011
  %1374 = add i32 %1373, %1362, !dbg !2011
  tail call void @llvm.dbg.value(metadata i32 %1374, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1375 = shl i32 %1338, 30, !dbg !2011
  %1376 = lshr i32 %1338, 2, !dbg !2011
  %1377 = or i32 %1375, %1376, !dbg !2011
  tail call void @llvm.dbg.value(metadata i32 %1377, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1378 = shl i32 %1374, 5, !dbg !2013
  %1379 = lshr i32 %1374, 27, !dbg !2013
  %1380 = or i32 %1378, %1379, !dbg !2013
  %1381 = xor i32 %1377, %1359, !dbg !2013
  %1382 = xor i32 %1381, %1356, !dbg !2013
  %1383 = xor i32 %1136, %1096, !dbg !2013
  %1384 = xor i32 %1383, %1244, !dbg !2013
  %1385 = xor i32 %1384, %1334, !dbg !2013
  tail call void @llvm.dbg.value(metadata i32 %1385, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1386 = shl i32 %1385, 1, !dbg !2013
  %1387 = lshr i32 %1385, 31, !dbg !2013
  %1388 = or i32 %1386, %1387, !dbg !2013
  store i32 %1388, i32* %43, align 4, !dbg !2013, !tbaa !960
  %1389 = add i32 %1388, -899497514, !dbg !2013
  %1390 = add i32 %1389, %1341, !dbg !2013
  %1391 = add i32 %1390, %1382, !dbg !2013
  %1392 = add i32 %1391, %1380, !dbg !2013
  tail call void @llvm.dbg.value(metadata i32 %1392, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1393 = shl i32 %1356, 30, !dbg !2013
  %1394 = lshr i32 %1356, 2, !dbg !2013
  %1395 = or i32 %1393, %1394, !dbg !2013
  tail call void @llvm.dbg.value(metadata i32 %1395, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1396 = shl i32 %1392, 5, !dbg !2015
  %1397 = lshr i32 %1392, 27, !dbg !2015
  %1398 = or i32 %1396, %1397, !dbg !2015
  %1399 = xor i32 %1395, %1377, !dbg !2015
  %1400 = xor i32 %1399, %1374, !dbg !2015
  %1401 = xor i32 %1154, %1116, !dbg !2015
  %1402 = xor i32 %1401, %1262, !dbg !2015
  %1403 = xor i32 %1402, %1352, !dbg !2015
  tail call void @llvm.dbg.value(metadata i32 %1403, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1404 = shl i32 %1403, 1, !dbg !2015
  %1405 = lshr i32 %1403, 31, !dbg !2015
  %1406 = or i32 %1404, %1405, !dbg !2015
  store i32 %1406, i32* %44, align 8, !dbg !2015, !tbaa !960
  %1407 = add i32 %1406, -899497514, !dbg !2015
  %1408 = add i32 %1407, %1359, !dbg !2015
  %1409 = add i32 %1408, %1400, !dbg !2015
  %1410 = add i32 %1409, %1398, !dbg !2015
  tail call void @llvm.dbg.value(metadata i32 %1410, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1411 = shl i32 %1374, 30, !dbg !2015
  %1412 = lshr i32 %1374, 2, !dbg !2015
  %1413 = or i32 %1411, %1412, !dbg !2015
  tail call void @llvm.dbg.value(metadata i32 %1413, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1414 = shl i32 %1410, 5, !dbg !2017
  %1415 = lshr i32 %1410, 27, !dbg !2017
  %1416 = or i32 %1414, %1415, !dbg !2017
  %1417 = xor i32 %1413, %1395, !dbg !2017
  %1418 = xor i32 %1417, %1392, !dbg !2017
  %1419 = xor i32 %1172, %1136, !dbg !2017
  %1420 = xor i32 %1419, %1280, !dbg !2017
  %1421 = xor i32 %1420, %1370, !dbg !2017
  tail call void @llvm.dbg.value(metadata i32 %1421, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1422 = shl i32 %1421, 1, !dbg !2017
  %1423 = lshr i32 %1421, 31, !dbg !2017
  %1424 = or i32 %1422, %1423, !dbg !2017
  store i32 %1424, i32* %45, align 4, !dbg !2017, !tbaa !960
  %1425 = add i32 %1424, -899497514, !dbg !2017
  %1426 = add i32 %1425, %1377, !dbg !2017
  %1427 = add i32 %1426, %1418, !dbg !2017
  %1428 = add i32 %1427, %1416, !dbg !2017
  tail call void @llvm.dbg.value(metadata i32 %1428, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1429 = shl i32 %1392, 30, !dbg !2017
  %1430 = lshr i32 %1392, 2, !dbg !2017
  %1431 = or i32 %1429, %1430, !dbg !2017
  tail call void @llvm.dbg.value(metadata i32 %1431, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1432 = shl i32 %1428, 5, !dbg !2019
  %1433 = lshr i32 %1428, 27, !dbg !2019
  %1434 = or i32 %1432, %1433, !dbg !2019
  %1435 = xor i32 %1431, %1413, !dbg !2019
  %1436 = xor i32 %1435, %1410, !dbg !2019
  %1437 = xor i32 %1190, %1154, !dbg !2019
  %1438 = xor i32 %1437, %1298, !dbg !2019
  %1439 = xor i32 %1438, %1388, !dbg !2019
  tail call void @llvm.dbg.value(metadata i32 %1439, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1440 = shl i32 %1439, 1, !dbg !2019
  %1441 = lshr i32 %1439, 31, !dbg !2019
  %1442 = or i32 %1440, %1441, !dbg !2019
  store i32 %1442, i32* %46, align 16, !dbg !2019, !tbaa !960
  %1443 = add i32 %1442, -899497514, !dbg !2019
  %1444 = add i32 %1443, %1395, !dbg !2019
  %1445 = add i32 %1444, %1436, !dbg !2019
  %1446 = add i32 %1445, %1434, !dbg !2019
  tail call void @llvm.dbg.value(metadata i32 %1446, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1447 = shl i32 %1410, 30, !dbg !2019
  %1448 = lshr i32 %1410, 2, !dbg !2019
  %1449 = or i32 %1447, %1448, !dbg !2019
  tail call void @llvm.dbg.value(metadata i32 %1449, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1450 = shl i32 %1446, 5, !dbg !2021
  %1451 = lshr i32 %1446, 27, !dbg !2021
  %1452 = or i32 %1450, %1451, !dbg !2021
  %1453 = xor i32 %1449, %1431, !dbg !2021
  %1454 = xor i32 %1453, %1428, !dbg !2021
  %1455 = xor i32 %1208, %1172, !dbg !2021
  %1456 = xor i32 %1455, %1316, !dbg !2021
  %1457 = xor i32 %1456, %1406, !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 %1457, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1458 = shl i32 %1457, 1, !dbg !2021
  %1459 = lshr i32 %1457, 31, !dbg !2021
  %1460 = or i32 %1458, %1459, !dbg !2021
  store i32 %1460, i32* %47, align 4, !dbg !2021, !tbaa !960
  %1461 = add i32 %1460, -899497514, !dbg !2021
  %1462 = add i32 %1461, %1413, !dbg !2021
  %1463 = add i32 %1462, %1454, !dbg !2021
  %1464 = add i32 %1463, %1452, !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 %1464, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1465 = shl i32 %1428, 30, !dbg !2021
  %1466 = lshr i32 %1428, 2, !dbg !2021
  %1467 = or i32 %1465, %1466, !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 %1467, i64 0, metadata !1820, metadata !774), !dbg !1845
  %1468 = shl i32 %1464, 5, !dbg !2023
  %1469 = lshr i32 %1464, 27, !dbg !2023
  %1470 = or i32 %1468, %1469, !dbg !2023
  %1471 = xor i32 %1467, %1449, !dbg !2023
  %1472 = xor i32 %1471, %1446, !dbg !2023
  %1473 = xor i32 %1226, %1190, !dbg !2023
  %1474 = xor i32 %1473, %1334, !dbg !2023
  %1475 = xor i32 %1474, %1424, !dbg !2023
  tail call void @llvm.dbg.value(metadata i32 %1475, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1476 = shl i32 %1475, 1, !dbg !2023
  %1477 = lshr i32 %1475, 31, !dbg !2023
  %1478 = or i32 %1476, %1477, !dbg !2023
  store i32 %1478, i32* %48, align 8, !dbg !2023, !tbaa !960
  %1479 = add i32 %1478, -899497514, !dbg !2023
  %1480 = add i32 %1479, %1431, !dbg !2023
  %1481 = add i32 %1480, %1472, !dbg !2023
  %1482 = add i32 %1481, %1470, !dbg !2023
  tail call void @llvm.dbg.value(metadata i32 %1482, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1483 = shl i32 %1446, 30, !dbg !2023
  %1484 = lshr i32 %1446, 2, !dbg !2023
  %1485 = or i32 %1483, %1484, !dbg !2023
  tail call void @llvm.dbg.value(metadata i32 %1485, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1486 = shl i32 %1482, 5, !dbg !2025
  %1487 = lshr i32 %1482, 27, !dbg !2025
  %1488 = or i32 %1486, %1487, !dbg !2025
  %1489 = xor i32 %1485, %1467, !dbg !2025
  %1490 = xor i32 %1489, %1464, !dbg !2025
  %1491 = xor i32 %1244, %1208, !dbg !2025
  %1492 = xor i32 %1491, %1352, !dbg !2025
  %1493 = xor i32 %1492, %1442, !dbg !2025
  tail call void @llvm.dbg.value(metadata i32 %1493, i64 0, metadata !1822, metadata !774), !dbg !1900
  %1494 = shl i32 %1493, 1, !dbg !2025
  %1495 = lshr i32 %1493, 31, !dbg !2025
  %1496 = or i32 %1494, %1495, !dbg !2025
  store i32 %1496, i32* %49, align 4, !dbg !2025, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 %1504, i64 0, metadata !1816, metadata !774), !dbg !1837
  %1497 = shl i32 %1464, 30, !dbg !2025
  %1498 = lshr i32 %1464, 2, !dbg !2025
  %1499 = or i32 %1497, %1498, !dbg !2025
  tail call void @llvm.dbg.value(metadata i32 %1499, i64 0, metadata !1818, metadata !774), !dbg !1841
  %1500 = load i32, i32* %9, align 4, !dbg !2027, !tbaa !1691
  %1501 = add i32 %1496, -899497514, !dbg !2025
  %1502 = add i32 %1501, %1500, !dbg !2025
  %1503 = add i32 %1502, %1449, !dbg !2025
  %1504 = add i32 %1503, %1490, !dbg !2025
  %1505 = add i32 %1504, %1488, !dbg !2027
  store i32 %1505, i32* %9, align 4, !dbg !2027, !tbaa !1691
  tail call void @llvm.dbg.value(metadata i32 %1505, i64 0, metadata !1816, metadata !774), !dbg !1837
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1817, metadata !774), !dbg !1839
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1818, metadata !774), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1819, metadata !774), !dbg !1843
  %1506 = load <4 x i32>, <4 x i32>* %53, align 4, !dbg !2028, !tbaa !960
  %1507 = insertelement <4 x i32> undef, i32 %1482, i32 0, !dbg !2028
  %1508 = insertelement <4 x i32> %1507, i32 %1499, i32 1, !dbg !2028
  %1509 = insertelement <4 x i32> %1508, i32 %1485, i32 2, !dbg !2028
  %1510 = insertelement <4 x i32> %1509, i32 %1467, i32 3, !dbg !2028
  %1511 = add <4 x i32> %1510, %1506, !dbg !2028
  store <4 x i32> %1511, <4 x i32>* %54, align 4, !dbg !2028, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1820, metadata !774), !dbg !1845
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !1809, metadata !774), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %1505, i64 0, metadata !1816, metadata !774), !dbg !1837
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1820, metadata !774), !dbg !1845
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1819, metadata !774), !dbg !1843
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1818, metadata !774), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1817, metadata !774), !dbg !1839
  %1512 = icmp ult i32* %85, %7, !dbg !1856
  %1513 = extractelement <4 x i32> %1511, i32 0, !dbg !1857
  %1514 = extractelement <4 x i32> %1511, i32 1, !dbg !1857
  %1515 = extractelement <4 x i32> %1511, i32 2, !dbg !1857
  %1516 = extractelement <4 x i32> %1511, i32 3, !dbg !1857
  br i1 %1512, label %55, label %1517, !dbg !1857, !llvm.loop !2029

; <label>:1517:                                   ; preds = %55, %3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #10, !dbg !2031
  ret void, !dbg !2031
}

; Function Attrs: nounwind readnone speculatable
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #1

; Function Attrs: nounwind sspstrong uwtable
define i32 @sha1_stream(%struct._IO_FILE*, i8*) local_unnamed_addr #6 !dbg !2032 {
  %3 = alloca %struct.sha1_ctx, align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2076, metadata !774), !dbg !2083
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2077, metadata !774), !dbg !2084
  %4 = bitcast %struct.sha1_ctx* %3 to i8*, !dbg !2085
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #10, !dbg !2085
  %5 = tail call noalias i8* @malloc(i64 32840) #10, !dbg !2086
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2080, metadata !774), !dbg !2087
  %6 = icmp eq i8* %5, null, !dbg !2088
  br i1 %6, label %40, label %7, !dbg !2090

; <label>:7:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !2078, metadata !774), !dbg !2091
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !1672, metadata !774), !dbg !2092
  %8 = bitcast %struct.sha1_ctx* %3 to <4 x i32>*, !dbg !2094
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2094, !tbaa !960
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 4, !dbg !2095
  %10 = bitcast i32* %9 to <4 x i32>*, !dbg !2096
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %10, align 16, !dbg !2096, !tbaa !960
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %12, !dbg !2097

; <label>:12:                                     ; preds = %34, %7
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2079, metadata !774), !dbg !2098
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2079, metadata !774), !dbg !2098
  %13 = tail call i64 @fread_unlocked(i8* nonnull %5, i64 1, i64 32768, %struct._IO_FILE* %0) #10, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2081, metadata !774), !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2079, metadata !774), !dbg !2098
  %14 = icmp eq i64 %13, 32768, !dbg !2102
  br i1 %14, label %34, label %15, !dbg !2104

; <label>:15:                                     ; preds = %12
  br label %22, !dbg !2105

; <label>:16:                                     ; preds = %31
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2079, metadata !774), !dbg !2098
  %17 = getelementptr inbounds i8, i8* %5, i64 %23, !dbg !2099
  %18 = sub i64 32768, %23, !dbg !2099
  %19 = tail call i64 @fread_unlocked(i8* %17, i64 1, i64 %18, %struct._IO_FILE* nonnull %0) #10, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2081, metadata !774), !dbg !2101
  %20 = add i64 %19, %23, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !2079, metadata !774), !dbg !2098
  %21 = icmp eq i64 %20, 32768, !dbg !2102
  br i1 %21, label %34, label %22, !dbg !2104, !llvm.loop !2108

; <label>:22:                                     ; preds = %15, %16
  %23 = phi i64 [ %20, %16 ], [ %13, %15 ]
  %24 = phi i64 [ %19, %16 ], [ %13, %15 ]
  %25 = icmp eq i64 %24, 0, !dbg !2105
  %26 = load i32, i32* %11, align 8, !tbaa !1370
  br i1 %25, label %27, label %31, !dbg !2111

; <label>:27:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2112, metadata !774), !dbg !2117
  %28 = and i32 %26, 32, !dbg !2121
  %29 = icmp eq i32 %28, 0, !dbg !2122
  br i1 %29, label %35, label %30, !dbg !2123

; <label>:30:                                     ; preds = %27
  tail call void @free(i8* %5) #10, !dbg !2124
  br label %40

; <label>:31:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2126, metadata !774), !dbg !2129
  %32 = and i32 %26, 16, !dbg !2132
  %33 = icmp eq i32 %32, 0, !dbg !2133
  br i1 %33, label %16, label %35, !dbg !2134

; <label>:34:                                     ; preds = %16, %12
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !2078, metadata !774), !dbg !2091
  call void @sha1_process_block(i8* nonnull %5, i64 32768, %struct.sha1_ctx* nonnull %3), !dbg !2135
  br label %12, !dbg !2097, !llvm.loop !2136

; <label>:35:                                     ; preds = %31, %27
  %36 = icmp eq i64 %23, 0, !dbg !2138
  br i1 %36, label %38, label %37, !dbg !2140

; <label>:37:                                     ; preds = %35
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !2078, metadata !774), !dbg !2091
  call void @sha1_process_bytes(i8* nonnull %5, i64 %23, %struct.sha1_ctx* nonnull %3), !dbg !2141
  br label %38, !dbg !2141

; <label>:38:                                     ; preds = %35, %37
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !2078, metadata !774), !dbg !2091
  %39 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %3, i8* %1), !dbg !2142
  call void @free(i8* %5) #10, !dbg !2143
  br label %40, !dbg !2144

; <label>:40:                                     ; preds = %30, %2, %38
  %41 = phi i32 [ 0, %38 ], [ 1, %2 ], [ 1, %30 ]
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #10, !dbg !2145
  ret i32 %41, !dbg !2145
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @sha1_process_bytes(i8*, i64, %struct.sha1_ctx*) local_unnamed_addr #6 !dbg !2146 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2148, metadata !774), !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2149, metadata !774), !dbg !2159
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, i64 0, metadata !2150, metadata !774), !dbg !2160
  %4 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 6, !dbg !2161
  %5 = load i32, i32* %4, align 4, !dbg !2161, !tbaa !1743
  %6 = icmp eq i32 %5, 0, !dbg !2162
  br i1 %6, label %28, label %7, !dbg !2163

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2164
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2151, metadata !774), !dbg !2165
  %9 = sub nsw i64 128, %8, !dbg !2166
  %10 = icmp ugt i64 %9, %1, !dbg !2167
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2154, metadata !774), !dbg !2169
  %12 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0, !dbg !2170
  %13 = bitcast i32* %12 to i8*, !dbg !2170
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2170
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %0, i64 %11, i32 1, i1 false), !dbg !2171
  %15 = add i64 %11, %8, !dbg !2172
  %16 = trunc i64 %15 to i32, !dbg !2172
  store i32 %16, i32* %4, align 4, !dbg !2172, !tbaa !1743
  %17 = icmp ugt i32 %16, 64, !dbg !2173
  br i1 %17, label %18, label %25, !dbg !2175

; <label>:18:                                     ; preds = %7
  %19 = and i64 %15, 4294967232, !dbg !2176
  tail call void @sha1_process_block(i8* %13, i64 %19, %struct.sha1_ctx* nonnull %2), !dbg !2178
  %20 = load i32, i32* %4, align 4, !dbg !2179, !tbaa !1743
  %21 = and i32 %20, 63, !dbg !2179
  store i32 %21, i32* %4, align 4, !dbg !2179, !tbaa !1743
  %22 = and i64 %15, -64, !dbg !2180
  %23 = getelementptr inbounds i8, i8* %13, i64 %22, !dbg !2181
  %24 = zext i32 %21 to i64, !dbg !2182
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %23, i64 %24, i32 1, i1 false), !dbg !2183
  br label %25, !dbg !2184

; <label>:25:                                     ; preds = %18, %7
  %26 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2185
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !2148, metadata !774), !dbg !2158
  %27 = sub i64 %1, %11, !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !2149, metadata !774), !dbg !2159
  br label %28, !dbg !2187

; <label>:28:                                     ; preds = %3, %25
  %29 = phi i64 [ %27, %25 ], [ %1, %3 ]
  %30 = phi i8* [ %26, %25 ], [ %0, %3 ]
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2148, metadata !774), !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !2149, metadata !774), !dbg !2159
  %31 = icmp ugt i64 %29, 63, !dbg !2188
  br i1 %31, label %32, label %55, !dbg !2190

; <label>:32:                                     ; preds = %28
  %33 = ptrtoint i8* %30 to i64, !dbg !2191
  %34 = and i64 %33, 3, !dbg !2191
  %35 = icmp eq i64 %34, 0, !dbg !2191
  br i1 %35, label %51, label %36, !dbg !2194

; <label>:36:                                     ; preds = %32
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2148, metadata !774), !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !2149, metadata !774), !dbg !2159
  %37 = icmp ugt i64 %29, 64, !dbg !2195
  br i1 %37, label %38, label %62, !dbg !2196

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0
  %40 = bitcast i32* %39 to i8*
  %41 = add i64 %29, -65, !dbg !2196
  %42 = and i64 %41, -64, !dbg !2196
  %43 = add i64 %42, 64, !dbg !2196
  %44 = add i64 %29, -64, !dbg !2196
  br label %45, !dbg !2196

; <label>:45:                                     ; preds = %38, %45
  %46 = phi i8* [ %30, %38 ], [ %48, %45 ]
  %47 = phi i64 [ %29, %38 ], [ %49, %45 ]
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !2149, metadata !774), !dbg !2159
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !2148, metadata !774), !dbg !2158
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %46, i64 64, i32 1, i1 false), !dbg !2197
  tail call void @sha1_process_block(i8* %40, i64 64, %struct.sha1_ctx* nonnull %2), !dbg !2199
  %48 = getelementptr inbounds i8, i8* %46, i64 64, !dbg !2200
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !2148, metadata !774), !dbg !2158
  %49 = add i64 %47, -64, !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2149, metadata !774), !dbg !2159
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !2148, metadata !774), !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2149, metadata !774), !dbg !2159
  %50 = icmp ugt i64 %49, 64, !dbg !2195
  br i1 %50, label %45, label %59, !dbg !2196, !llvm.loop !2202

; <label>:51:                                     ; preds = %32
  %52 = and i64 %29, -64, !dbg !2204
  tail call void @sha1_process_block(i8* %30, i64 %52, %struct.sha1_ctx* nonnull %2), !dbg !2206
  %53 = getelementptr inbounds i8, i8* %30, i64 %52, !dbg !2207
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2148, metadata !774), !dbg !2158
  %54 = and i64 %29, 63, !dbg !2208
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2149, metadata !774), !dbg !2159
  br label %55

; <label>:55:                                     ; preds = %51, %28
  %56 = phi i64 [ %54, %51 ], [ %29, %28 ]
  %57 = phi i8* [ %53, %51 ], [ %30, %28 ]
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !2148, metadata !774), !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !2149, metadata !774), !dbg !2159
  %58 = icmp eq i64 %56, 0, !dbg !2209
  br i1 %58, label %79, label %62, !dbg !2210

; <label>:59:                                     ; preds = %45
  %60 = getelementptr i8, i8* %30, i64 %43, !dbg !2196
  %61 = sub i64 %44, %42, !dbg !2196
  br label %62, !dbg !2211

; <label>:62:                                     ; preds = %59, %36, %55
  %63 = phi i8* [ %57, %55 ], [ %30, %36 ], [ %60, %59 ]
  %64 = phi i64 [ %56, %55 ], [ 64, %36 ], [ %61, %59 ]
  %65 = load i32, i32* %4, align 4, !dbg !2211, !tbaa !1743
  %66 = zext i32 %65 to i64, !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !2155, metadata !774), !dbg !2213
  %67 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, !dbg !2214
  %68 = bitcast [32 x i32]* %67 to i8*, !dbg !2215
  %69 = getelementptr inbounds i8, i8* %68, i64 %66, !dbg !2215
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %63, i64 %64, i32 1, i1 false), !dbg !2216
  %70 = add i64 %64, %66, !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !2155, metadata !774), !dbg !2213
  %71 = icmp ugt i64 %70, 63, !dbg !2218
  br i1 %71, label %72, label %76, !dbg !2220

; <label>:72:                                     ; preds = %62
  tail call void @sha1_process_block(i8* %68, i64 64, %struct.sha1_ctx* nonnull %2), !dbg !2221
  %73 = add i64 %70, -64, !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2155, metadata !774), !dbg !2213
  %74 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 16, !dbg !2224
  %75 = bitcast i32* %74 to i8*, !dbg !2225
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %75, i64 %73, i32 4, i1 false), !dbg !2225
  br label %76, !dbg !2226

; <label>:76:                                     ; preds = %72, %62
  %77 = phi i64 [ %73, %72 ], [ %70, %62 ]
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !2155, metadata !774), !dbg !2213
  %78 = trunc i64 %77 to i32, !dbg !2227
  store i32 %78, i32* %4, align 4, !dbg !2228, !tbaa !1743
  br label %79, !dbg !2229

; <label>:79:                                     ; preds = %55, %76
  ret void, !dbg !2230
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha1_buffer(i8*, i64, i8* returned) local_unnamed_addr #6 !dbg !2231 {
  %4 = alloca %struct.sha1_ctx, align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2235, metadata !774), !dbg !2239
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2236, metadata !774), !dbg !2240
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2237, metadata !774), !dbg !2241
  %5 = bitcast %struct.sha1_ctx* %4 to i8*, !dbg !2242
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #10, !dbg !2242
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, i64 0, metadata !2238, metadata !774), !dbg !2243
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, i64 0, metadata !1672, metadata !774), !dbg !2244
  %6 = bitcast %struct.sha1_ctx* %4 to <4 x i32>*, !dbg !2246
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2246, !tbaa !960
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 4, !dbg !2247
  %8 = bitcast i32* %7 to <4 x i32>*, !dbg !2248
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %8, align 16, !dbg !2248, !tbaa !960
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, i64 0, metadata !2238, metadata !774), !dbg !2243
  call void @sha1_process_bytes(i8* %0, i64 %1, %struct.sha1_ctx* nonnull %4), !dbg !2249
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, i64 0, metadata !2238, metadata !774), !dbg !2243
  %9 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %4, i8* %2), !dbg !2250
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #10, !dbg !2251
  ret i8* %9, !dbg !2252
}

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !2253 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2261, metadata !774), !dbg !2267
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2262, metadata !774), !dbg !2268
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2263, metadata !774), !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2264, metadata !774), !dbg !2270
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !2271
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2265, metadata !774), !dbg !2271
  ret void, !dbg !2272
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !2273 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2317, metadata !774), !dbg !2319
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2318, metadata !774), !dbg !2320
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2321
  br i1 %3, label %7, label %4, !dbg !2323

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !2324
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2261, metadata !774) #10, !dbg !2325
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2262, metadata !774) #10, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2263, metadata !774) #10, !dbg !2328
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2264, metadata !774) #10, !dbg !2329
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !2330
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2265, metadata !774) #10, !dbg !2330
  br label %7, !dbg !2331

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2332
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !2333 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2378, metadata !774), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2379, metadata !774), !dbg !2394
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2395
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !2380, metadata !774), !dbg !2396
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2397
  br i1 %4, label %25, label %5, !dbg !2398

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10, !dbg !2399
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2381, metadata !774), !dbg !2400
  %7 = icmp ult i32 %6, 3, !dbg !2401
  br i1 %7, label %8, label %25, !dbg !2401

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #10, !dbg !2402
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2384, metadata !774), !dbg !2403
  %10 = icmp slt i32 %9, 0, !dbg !2404
  br i1 %10, label %11, label %15, !dbg !2405

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !2406
  %13 = load i32, i32* %12, align 4, !dbg !2406, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2387, metadata !774), !dbg !2407
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2408
  store i32 %13, i32* %12, align 4, !dbg !2409, !tbaa !960
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2410
  %17 = icmp eq i32 %16, 0, !dbg !2411
  br i1 %17, label %18, label %21, !dbg !2412

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10, !dbg !2413
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !2380, metadata !774), !dbg !2396
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2414
  br i1 %20, label %21, label %25, !dbg !2415

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !2416
  %23 = load i32, i32* %22, align 4, !dbg !2416, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !2390, metadata !774), !dbg !2417
  %24 = tail call i32 @close(i32 %9) #10, !dbg !2418
  store i32 %23, i32* %22, align 4, !dbg !2419, !tbaa !960
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !2420
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2421 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2423, metadata !774), !dbg !2426
  %2 = icmp eq i8* %0, null, !dbg !2427
  br i1 %2, label %3, label %6, !dbg !2429

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2430, !tbaa !781
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.80, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2432
  tail call void @abort() #15, !dbg !2433
  unreachable, !dbg !2433

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2434
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2424, metadata !774), !dbg !2435
  %8 = icmp eq i8* %7, null, !dbg !2436
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2437
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2425, metadata !774), !dbg !2439
  %11 = ptrtoint i8* %10 to i64, !dbg !2440
  %12 = ptrtoint i8* %0 to i64, !dbg !2440
  %13 = sub i64 %11, %12, !dbg !2440
  %14 = icmp sgt i64 %13, 6, !dbg !2442
  br i1 %14, label %15, label %24, !dbg !2443

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2444
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.81, i64 0, i64 0), i64 7) #14, !dbg !2445
  %18 = icmp eq i32 %17, 0, !dbg !2446
  br i1 %18, label %19, label %24, !dbg !2447

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2423, metadata !774), !dbg !2426
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i64 3) #14, !dbg !2448
  %21 = icmp eq i32 %20, 0, !dbg !2451
  br i1 %21, label %22, label %24, !dbg !2452

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2453
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2423, metadata !774), !dbg !2426
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2455, !tbaa !781
  br label %24, !dbg !2456

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2423, metadata !774), !dbg !2426
  store i8* %25, i8** @program_name, align 8, !dbg !2457, !tbaa !781
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2458, !tbaa !781
  ret void, !dbg !2459
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2460 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2465, metadata !774), !dbg !2468
  %2 = tail call i32* @__errno_location() #17, !dbg !2469
  %3 = load i32, i32* %2, align 4, !dbg !2469, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2466, metadata !774), !dbg !2470
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2471
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2471
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2471
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2472
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2472
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2467, metadata !774), !dbg !2473
  store i32 %3, i32* %2, align 4, !dbg !2474, !tbaa !960
  ret %struct.quoting_options* %8, !dbg !2475
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2476 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2482, metadata !774), !dbg !2483
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2484
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2484
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2485
  %5 = load i32, i32* %4, align 8, !dbg !2485, !tbaa !2486
  ret i32 %5, !dbg !2488
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2489 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2493, metadata !774), !dbg !2495
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2494, metadata !774), !dbg !2496
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2497
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2497
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2498
  store i32 %1, i32* %5, align 8, !dbg !2499, !tbaa !2486
  ret void, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2501 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2505, metadata !774), !dbg !2513
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2506, metadata !774), !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2507, metadata !774), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2508, metadata !774), !dbg !2516
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2517
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2517
  %6 = lshr i8 %1, 5, !dbg !2518
  %7 = zext i8 %6 to i64, !dbg !2518
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2519
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2509, metadata !774), !dbg !2520
  %9 = and i8 %1, 31, !dbg !2521
  %10 = zext i8 %9 to i32, !dbg !2522
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2511, metadata !774), !dbg !2523
  %11 = load i32, i32* %8, align 4, !dbg !2524, !tbaa !960
  %12 = lshr i32 %11, %10, !dbg !2525
  %13 = and i32 %12, 1, !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2512, metadata !774), !dbg !2527
  %14 = and i32 %2, 1, !dbg !2528
  %15 = xor i32 %13, %14, !dbg !2529
  %16 = shl i32 %15, %10, !dbg !2530
  %17 = xor i32 %16, %11, !dbg !2531
  store i32 %17, i32* %8, align 4, !dbg !2531, !tbaa !960
  ret i32 %13, !dbg !2532
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2533 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2537, metadata !774), !dbg !2540
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2538, metadata !774), !dbg !2541
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2542
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2537, metadata !774), !dbg !2540
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2544
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2537, metadata !774), !dbg !2540
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2545
  %6 = load i32, i32* %5, align 4, !dbg !2545, !tbaa !2546
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2539, metadata !774), !dbg !2547
  store i32 %1, i32* %5, align 4, !dbg !2548, !tbaa !2546
  ret i32 %6, !dbg !2549
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2550 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2554, metadata !774), !dbg !2557
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2555, metadata !774), !dbg !2558
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2556, metadata !774), !dbg !2559
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2560
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2554, metadata !774), !dbg !2557
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2562
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2554, metadata !774), !dbg !2557
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2563
  store i32 10, i32* %6, align 8, !dbg !2564, !tbaa !2486
  %7 = icmp ne i8* %1, null, !dbg !2565
  %8 = icmp ne i8* %2, null, !dbg !2567
  %9 = and i1 %7, %8, !dbg !2568
  br i1 %9, label %11, label %10, !dbg !2568

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2569
  unreachable, !dbg !2569

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2570
  store i8* %1, i8** %12, align 8, !dbg !2571, !tbaa !2572
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2573
  store i8* %2, i8** %13, align 8, !dbg !2574, !tbaa !2575
  ret void, !dbg !2576
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2577 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2581, metadata !774), !dbg !2589
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2582, metadata !774), !dbg !2590
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2583, metadata !774), !dbg !2591
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2584, metadata !774), !dbg !2592
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2585, metadata !774), !dbg !2593
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2594
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2594
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2586, metadata !774), !dbg !2595
  %8 = tail call i32* @__errno_location() #17, !dbg !2596
  %9 = load i32, i32* %8, align 4, !dbg !2596, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2587, metadata !774), !dbg !2597
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2598
  %11 = load i32, i32* %10, align 8, !dbg !2598, !tbaa !2486
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2599
  %13 = load i32, i32* %12, align 4, !dbg !2599, !tbaa !2546
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2600
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2601
  %16 = load i8*, i8** %15, align 8, !dbg !2601, !tbaa !2572
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2602
  %18 = load i8*, i8** %17, align 8, !dbg !2602, !tbaa !2575
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2588, metadata !774), !dbg !2604
  store i32 %9, i32* %8, align 4, !dbg !2605, !tbaa !960
  ret i64 %19, !dbg !2606
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2607 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2613, metadata !774), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2614, metadata !774), !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2615, metadata !774), !dbg !2679
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2616, metadata !774), !dbg !2680
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2617, metadata !774), !dbg !2681
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2618, metadata !774), !dbg !2682
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2619, metadata !774), !dbg !2683
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2620, metadata !774), !dbg !2684
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2621, metadata !774), !dbg !2685
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2623, metadata !774), !dbg !2686
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2624, metadata !774), !dbg !2687
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2625, metadata !774), !dbg !2688
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2626, metadata !774), !dbg !2689
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2627, metadata !774), !dbg !2690
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2691
  %14 = icmp eq i64 %13, 1, !dbg !2692
  %15 = lshr i32 %5, 1, !dbg !2693
  %16 = trunc i32 %15 to i8, !dbg !2693
  %17 = and i8 %16, 1, !dbg !2693
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2629, metadata !774), !dbg !2693
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2630, metadata !774), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2631, metadata !774), !dbg !2695
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2632, metadata !774), !dbg !2696
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2697

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2632, metadata !774), !dbg !2696
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2631, metadata !774), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2629, metadata !774), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2616, metadata !774), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2627, metadata !774), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2626, metadata !774), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2625, metadata !774), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2624, metadata !774), !dbg !2687
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2621, metadata !774), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2620, metadata !774), !dbg !2684
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2617, metadata !774), !dbg !2681
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
  ], !dbg !2698

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2617, metadata !774), !dbg !2681
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2629, metadata !774), !dbg !2693
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2629, metadata !774), !dbg !2693
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2617, metadata !774), !dbg !2681
  br label %94, !dbg !2699

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2629, metadata !774), !dbg !2693
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2617, metadata !774), !dbg !2681
  %43 = and i8 %36, 1, !dbg !2701
  %44 = icmp eq i8 %43, 0, !dbg !2701
  br i1 %44, label %45, label %94, !dbg !2699

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2703
  br i1 %46, label %94, label %47, !dbg !2706

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2703, !tbaa !1043
  br label %94, !dbg !2703

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.93, i64 0, i64 0), i32 %28), !dbg !2707
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2620, metadata !774), !dbg !2684
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i32 %28), !dbg !2711
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2621, metadata !774), !dbg !2685
  br label %51, !dbg !2712

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2621, metadata !774), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2620, metadata !774), !dbg !2684
  %54 = and i8 %36, 1, !dbg !2713
  %55 = icmp eq i8 %54, 0, !dbg !2713
  br i1 %55, label %56, label %72, !dbg !2715

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2625, metadata !774), !dbg !2688
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2625, metadata !774), !dbg !2688
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2623, metadata !774), !dbg !2686
  %57 = load i8, i8* %52, align 1, !dbg !2716, !tbaa !1043
  %58 = icmp eq i8 %57, 0, !dbg !2719
  br i1 %58, label %72, label %59, !dbg !2719

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2720

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2625, metadata !774), !dbg !2688
  %64 = icmp ult i64 %63, %40, !dbg !2720
  br i1 %64, label %65, label %67, !dbg !2723

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2720
  store i8 %61, i8* %66, align 1, !dbg !2720, !tbaa !1043
  br label %67, !dbg !2720

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2623, metadata !774), !dbg !2686
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2724
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2625, metadata !774), !dbg !2688
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2625, metadata !774), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2623, metadata !774), !dbg !2686
  %70 = load i8, i8* %69, align 1, !dbg !2716, !tbaa !1043
  %71 = icmp eq i8 %70, 0, !dbg !2719
  br i1 %71, label %72, label %60, !dbg !2719, !llvm.loop !2725

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2627, metadata !774), !dbg !2690
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2625, metadata !774), !dbg !2688
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2626, metadata !774), !dbg !2689
  br label %94, !dbg !2728

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2627, metadata !774), !dbg !2690
  br label %76, !dbg !2729

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2627, metadata !774), !dbg !2690
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2629, metadata !774), !dbg !2693
  br label %78, !dbg !2730

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2629, metadata !774), !dbg !2693
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2627, metadata !774), !dbg !2690
  %81 = and i8 %80, 1, !dbg !2731
  %82 = icmp eq i8 %81, 0, !dbg !2731
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2627, metadata !774), !dbg !2690
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2733
  br label %84, !dbg !2733

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2629, metadata !774), !dbg !2693
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2627, metadata !774), !dbg !2690
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2617, metadata !774), !dbg !2681
  %87 = and i8 %86, 1, !dbg !2734
  %88 = icmp eq i8 %87, 0, !dbg !2734
  br i1 %88, label %89, label %94, !dbg !2736

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2737
  br i1 %90, label %94, label %91, !dbg !2740

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2737, !tbaa !1043
  br label %94, !dbg !2737

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2629, metadata !774), !dbg !2693
  br label %94, !dbg !2741

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2742
  unreachable, !dbg !2742

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2629, metadata !774), !dbg !2693
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2627, metadata !774), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2626, metadata !774), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2625, metadata !774), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2621, metadata !774), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2620, metadata !774), !dbg !2684
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2617, metadata !774), !dbg !2681
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !774), !dbg !2743
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
  br label %122, !dbg !2744

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2632, metadata !774), !dbg !2696
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2631, metadata !774), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2616, metadata !774), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2624, metadata !774), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2622, metadata !774), !dbg !2743
  %131 = icmp eq i64 %126, -1, !dbg !2745
  br i1 %131, label %134, label %132, !dbg !2746

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2747
  br i1 %133, label %590, label %138, !dbg !2748

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2749
  %136 = load i8, i8* %135, align 1, !dbg !2749, !tbaa !1043
  %137 = icmp eq i8 %136, 0, !dbg !2750
  br i1 %137, label %590, label %138, !dbg !2748

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2638, metadata !774), !dbg !2751
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2639, metadata !774), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2640, metadata !774), !dbg !2753
  br i1 %108, label %139, label %154, !dbg !2754

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2756
  %141 = and i1 %109, %131, !dbg !2757
  br i1 %141, label %142, label %144, !dbg !2757

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2616, metadata !774), !dbg !2680
  br label %144, !dbg !2759

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2616, metadata !774), !dbg !2680
  %146 = icmp ugt i64 %140, %145, !dbg !2760
  br i1 %146, label %154, label %147, !dbg !2761

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2762
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2763
  %150 = icmp ne i32 %149, 0, !dbg !2764
  %151 = or i1 %150, %111, !dbg !2765
  %152 = xor i1 %150, true, !dbg !2765
  %153 = zext i1 %152 to i8, !dbg !2765
  br i1 %151, label %154, label %635, !dbg !2765

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2638, metadata !774), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2616, metadata !774), !dbg !2680
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2766
  %158 = load i8, i8* %157, align 1, !dbg !2766, !tbaa !1043
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2633, metadata !774), !dbg !2767
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
  ], !dbg !2768

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2769

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2770

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2639, metadata !774), !dbg !2752
  %162 = and i8 %127, 1, !dbg !2774
  %163 = icmp eq i8 %162, 0, !dbg !2774
  %164 = and i1 %113, %163, !dbg !2774
  br i1 %164, label %165, label %181, !dbg !2774

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2776
  br i1 %166, label %167, label %169, !dbg !2780

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2776
  store i8 39, i8* %168, align 1, !dbg !2776, !tbaa !1043
  br label %169, !dbg !2776

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2623, metadata !774), !dbg !2686
  %171 = icmp ult i64 %170, %130, !dbg !2781
  br i1 %171, label %172, label %174, !dbg !2784

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2781
  store i8 36, i8* %173, align 1, !dbg !2781, !tbaa !1043
  br label %174, !dbg !2781

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2623, metadata !774), !dbg !2686
  %176 = icmp ult i64 %175, %130, !dbg !2785
  br i1 %176, label %177, label %179, !dbg !2788

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2785
  store i8 39, i8* %178, align 1, !dbg !2785, !tbaa !1043
  br label %179, !dbg !2785

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2630, metadata !774), !dbg !2694
  br label %181, !dbg !2789

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2623, metadata !774), !dbg !2686
  %184 = icmp ult i64 %182, %130, !dbg !2790
  br i1 %184, label %185, label %187, !dbg !2793

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2790
  store i8 92, i8* %186, align 1, !dbg !2790, !tbaa !1043
  br label %187, !dbg !2790

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2623, metadata !774), !dbg !2686
  br i1 %105, label %189, label %470, !dbg !2794

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2796
  %191 = icmp ult i64 %190, %155, !dbg !2797
  br i1 %191, label %192, label %470, !dbg !2798

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2799
  %194 = load i8, i8* %193, align 1, !dbg !2799, !tbaa !1043
  %195 = add i8 %194, -48, !dbg !2800
  %196 = icmp ult i8 %195, 10, !dbg !2800
  br i1 %196, label %197, label %470, !dbg !2800

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2801
  br i1 %198, label %199, label %201, !dbg !2805

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2801
  store i8 48, i8* %200, align 1, !dbg !2801, !tbaa !1043
  br label %201, !dbg !2801

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2623, metadata !774), !dbg !2686
  %203 = icmp ult i64 %202, %130, !dbg !2806
  br i1 %203, label %204, label %206, !dbg !2809

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2806
  store i8 48, i8* %205, align 1, !dbg !2806, !tbaa !1043
  br label %206, !dbg !2806

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2623, metadata !774), !dbg !2686
  br label %470, !dbg !2810

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2811

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2812

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2813

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2815

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2817
  %214 = icmp ult i64 %213, %155, !dbg !2818
  br i1 %214, label %215, label %470, !dbg !2819

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2820
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2821
  %218 = load i8, i8* %217, align 1, !dbg !2821, !tbaa !1043
  %219 = icmp eq i8 %218, 63, !dbg !2822
  br i1 %219, label %220, label %470, !dbg !2823

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2824
  %222 = load i8, i8* %221, align 1, !dbg !2824, !tbaa !1043
  %223 = sext i8 %222 to i32, !dbg !2824
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
  ], !dbg !2825

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2826

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2633, metadata !774), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2622, metadata !774), !dbg !2743
  %226 = icmp ult i64 %124, %130, !dbg !2828
  br i1 %226, label %227, label %229, !dbg !2831

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2828
  store i8 63, i8* %228, align 1, !dbg !2828, !tbaa !1043
  br label %229, !dbg !2828

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2623, metadata !774), !dbg !2686
  %231 = icmp ult i64 %230, %130, !dbg !2832
  br i1 %231, label %232, label %234, !dbg !2835

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2832
  store i8 34, i8* %233, align 1, !dbg !2832, !tbaa !1043
  br label %234, !dbg !2832

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2623, metadata !774), !dbg !2686
  %236 = icmp ult i64 %235, %130, !dbg !2836
  br i1 %236, label %237, label %239, !dbg !2839

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2836
  store i8 34, i8* %238, align 1, !dbg !2836, !tbaa !1043
  br label %239, !dbg !2836

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2623, metadata !774), !dbg !2686
  %241 = icmp ult i64 %240, %130, !dbg !2840
  br i1 %241, label %242, label %244, !dbg !2843

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2840
  store i8 63, i8* %243, align 1, !dbg !2840, !tbaa !1043
  br label %244, !dbg !2840

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2623, metadata !774), !dbg !2686
  br label %470, !dbg !2844

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2637, metadata !774), !dbg !2845
  br label %256, !dbg !2846

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2637, metadata !774), !dbg !2845
  br label %256, !dbg !2847

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2637, metadata !774), !dbg !2845
  br label %254, !dbg !2848

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2637, metadata !774), !dbg !2845
  br label %254, !dbg !2849

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2637, metadata !774), !dbg !2845
  br label %256, !dbg !2850

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2637, metadata !774), !dbg !2845
  br i1 %113, label %252, label %253, !dbg !2851

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2852

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2855

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2637, metadata !774), !dbg !2845
  br i1 %117, label %256, label %635, !dbg !2857

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2637, metadata !774), !dbg !2845
  br i1 %104, label %497, label %470, !dbg !2859

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2860
  br i1 %259, label %260, label %265, !dbg !2862

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2863, !tbaa !1043
  %262 = icmp ne i8 %261, 0, !dbg !2864
  %263 = icmp ne i64 %123, 0, !dbg !2865
  %264 = or i1 %263, %262, !dbg !2867
  br i1 %264, label %470, label %271, !dbg !2867

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2868
  %267 = icmp ne i64 %123, 0, !dbg !2865
  %268 = or i1 %267, %266, !dbg !2862
  br i1 %268, label %470, label %271, !dbg !2862

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2865
  br i1 %270, label %271, label %470, !dbg !2869

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2640, metadata !774), !dbg !2753
  br label %272, !dbg !2870

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2640, metadata !774), !dbg !2753
  br i1 %117, label %470, label %635, !dbg !2871

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2631, metadata !774), !dbg !2695
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2640, metadata !774), !dbg !2753
  br i1 %113, label %275, label %470, !dbg !2873

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2874

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2877
  %278 = icmp ne i64 %125, 0, !dbg !2879
  %279 = or i1 %278, %277, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2624, metadata !774), !dbg !2687
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2614, metadata !774), !dbg !2678
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2880
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2624, metadata !774), !dbg !2687
  %282 = icmp ult i64 %124, %281, !dbg !2881
  br i1 %282, label %283, label %285, !dbg !2884

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2881
  store i8 39, i8* %284, align 1, !dbg !2881, !tbaa !1043
  br label %285, !dbg !2881

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2884
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2623, metadata !774), !dbg !2686
  %287 = icmp ult i64 %286, %281, !dbg !2885
  br i1 %287, label %288, label %290, !dbg !2888

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2885
  store i8 92, i8* %289, align 1, !dbg !2885, !tbaa !1043
  br label %290, !dbg !2885

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2623, metadata !774), !dbg !2686
  %292 = icmp ult i64 %291, %281, !dbg !2889
  br i1 %292, label %293, label %295, !dbg !2892

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2889
  store i8 39, i8* %294, align 1, !dbg !2889, !tbaa !1043
  br label %295, !dbg !2889

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2630, metadata !774), !dbg !2694
  br label %470, !dbg !2893

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2894

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2641, metadata !774), !dbg !2895
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2896
  %300 = load i16*, i16** %299, align 8, !dbg !2896, !tbaa !781
  %301 = zext i8 %158 to i64, !dbg !2896
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2896
  %303 = load i16, i16* %302, align 2, !dbg !2896, !tbaa !1265
  %304 = lshr i16 %303, 14, !dbg !2898
  %305 = trunc i16 %304 to i8, !dbg !2898
  %306 = and i8 %305, 1, !dbg !2898
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2644, metadata !774), !dbg !2899
  br label %362, !dbg !2900

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2901
  store i64 0, i64* %10, align 8, !dbg !2902
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2641, metadata !774), !dbg !2895
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2644, metadata !774), !dbg !2899
  %308 = icmp eq i64 %155, -1, !dbg !2903
  br i1 %308, label %309, label %311, !dbg !2905

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2616, metadata !774), !dbg !2680
  br label %311, !dbg !2907

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2616, metadata !774), !dbg !2680
  br label %313, !dbg !2908, !llvm.loop !2909

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2644, metadata !774), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2641, metadata !774), !dbg !2895
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2911
  %316 = add i64 %314, %123, !dbg !2912
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2913
  %318 = sub i64 %312, %316, !dbg !2914
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2645, metadata !774), !dbg !2915
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2663, metadata !774), !dbg !2916
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2666, metadata !774), !dbg !2918
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2919

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2644, metadata !774), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2641, metadata !774), !dbg !2895
  %321 = icmp ugt i64 %312, %316, !dbg !2920
  br i1 %321, label %322, label %347, !dbg !2922

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2923

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2641, metadata !774), !dbg !2895
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2923
  %327 = load i8, i8* %326, align 1, !dbg !2923, !tbaa !1043
  %328 = icmp eq i8 %327, 0, !dbg !2922
  br i1 %328, label %347, label %329, !dbg !2924

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2641, metadata !774), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2641, metadata !774), !dbg !2895
  %331 = add i64 %330, %123, !dbg !2926
  %332 = icmp ult i64 %331, %312, !dbg !2920
  br i1 %332, label %323, label %347, !dbg !2922, !llvm.loop !2927

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2928
  %335 = and i1 %115, %334, !dbg !2931
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2667, metadata !774), !dbg !2932
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2667, metadata !774), !dbg !2932
  br i1 %335, label %336, label %350, !dbg !2931

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2933

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2667, metadata !774), !dbg !2932
  %339 = add i64 %338, %316, !dbg !2933
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2934
  %341 = load i8, i8* %340, align 1, !dbg !2934, !tbaa !1043
  %342 = sext i8 %341 to i32, !dbg !2934
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2935

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2667, metadata !774), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2667, metadata !774), !dbg !2932
  %345 = icmp ult i64 %344, %319, !dbg !2928
  br i1 %345, label %337, label %350, !dbg !2937, !llvm.loop !2938

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2940

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2644, metadata !774), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2641, metadata !774), !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2940
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2941, !tbaa !960
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2663, metadata !774), !dbg !2916
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !2943
  %353 = icmp eq i32 %352, 0, !dbg !2943
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2644, metadata !774), !dbg !2899
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2944
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2644, metadata !774), !dbg !2899
  %355 = add i64 %319, %314, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2641, metadata !774), !dbg !2895
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2644, metadata !774), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2641, metadata !774), !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2940
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2645, metadata !774), !dbg !2915
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2946
  %357 = icmp eq i32 %356, 0, !dbg !2947
  br i1 %357, label %313, label %358, !dbg !2948, !llvm.loop !2909

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2949
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2644, metadata !774), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2641, metadata !774), !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2940
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2949
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2644, metadata !774), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2641, metadata !774), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2616, metadata !774), !dbg !2680
  %366 = and i8 %365, 1, !dbg !2950
  %367 = icmp ne i8 %366, 0, !dbg !2950
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2640, metadata !774), !dbg !2753
  %368 = icmp ult i64 %364, 2, !dbg !2951
  %369 = or i1 %367, %112, !dbg !2952
  %370 = and i1 %368, %369, !dbg !2953
  br i1 %370, label %470, label %371, !dbg !2953

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2674, metadata !774), !dbg !2955
  br label %373, !dbg !2956

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2639, metadata !774), !dbg !2752
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2638, metadata !774), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2633, metadata !774), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2622, metadata !774), !dbg !2743
  br i1 %369, label %426, label %380, !dbg !2957

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2962

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2639, metadata !774), !dbg !2752
  %382 = and i8 %376, 1, !dbg !2965
  %383 = icmp eq i8 %382, 0, !dbg !2965
  %384 = and i1 %113, %383, !dbg !2965
  br i1 %384, label %385, label %401, !dbg !2965

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2967
  br i1 %386, label %387, label %389, !dbg !2971

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2967
  store i8 39, i8* %388, align 1, !dbg !2967, !tbaa !1043
  br label %389, !dbg !2967

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2623, metadata !774), !dbg !2686
  %391 = icmp ult i64 %390, %130, !dbg !2972
  br i1 %391, label %392, label %394, !dbg !2975

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2972
  store i8 36, i8* %393, align 1, !dbg !2972, !tbaa !1043
  br label %394, !dbg !2972

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2623, metadata !774), !dbg !2686
  %396 = icmp ult i64 %395, %130, !dbg !2976
  br i1 %396, label %397, label %399, !dbg !2979

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2976
  store i8 39, i8* %398, align 1, !dbg !2976, !tbaa !1043
  br label %399, !dbg !2976

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2630, metadata !774), !dbg !2694
  br label %401, !dbg !2980

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2623, metadata !774), !dbg !2686
  %404 = icmp ult i64 %402, %130, !dbg !2981
  br i1 %404, label %405, label %407, !dbg !2984

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2981
  store i8 92, i8* %406, align 1, !dbg !2981, !tbaa !1043
  br label %407, !dbg !2981

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2623, metadata !774), !dbg !2686
  %409 = icmp ult i64 %408, %130, !dbg !2985
  br i1 %409, label %410, label %414, !dbg !2988

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2985
  %412 = or i8 %411, 48, !dbg !2985
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2985
  store i8 %412, i8* %413, align 1, !dbg !2985, !tbaa !1043
  br label %414, !dbg !2985

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2623, metadata !774), !dbg !2686
  %416 = icmp ult i64 %415, %130, !dbg !2989
  br i1 %416, label %417, label %422, !dbg !2992

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2989
  %419 = and i8 %418, 7, !dbg !2989
  %420 = or i8 %419, 48, !dbg !2989
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2989
  store i8 %420, i8* %421, align 1, !dbg !2989, !tbaa !1043
  br label %422, !dbg !2989

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2623, metadata !774), !dbg !2686
  %424 = and i8 %377, 7, !dbg !2993
  %425 = or i8 %424, 48, !dbg !2994
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2633, metadata !774), !dbg !2767
  br label %435, !dbg !2995

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2996
  %428 = icmp eq i8 %427, 0, !dbg !2996
  br i1 %428, label %435, label %429, !dbg !2998

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2999
  br i1 %430, label %431, label %433, !dbg !3003

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2999
  store i8 92, i8* %432, align 1, !dbg !2999, !tbaa !1043
  br label %433, !dbg !2999

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2638, metadata !774), !dbg !2751
  br label %435, !dbg !3004

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2639, metadata !774), !dbg !2752
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2638, metadata !774), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2633, metadata !774), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2623, metadata !774), !dbg !2686
  %441 = add i64 %374, 1, !dbg !3005
  %442 = icmp ugt i64 %372, %441, !dbg !3007
  br i1 %442, label %443, label %535, !dbg !3008

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !3009
  %445 = icmp ne i8 %444, 0, !dbg !3009
  %446 = and i8 %440, 1, !dbg !3009
  %447 = icmp eq i8 %446, 0, !dbg !3009
  %448 = and i1 %445, %447, !dbg !3009
  br i1 %448, label %449, label %460, !dbg !3009

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !3012
  br i1 %450, label %451, label %453, !dbg !3016

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !3012
  store i8 39, i8* %452, align 1, !dbg !3012, !tbaa !1043
  br label %453, !dbg !3012

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2623, metadata !774), !dbg !2686
  %455 = icmp ult i64 %454, %130, !dbg !3017
  br i1 %455, label %456, label %458, !dbg !3020

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3017
  store i8 39, i8* %457, align 1, !dbg !3017, !tbaa !1043
  br label %458, !dbg !3017

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2630, metadata !774), !dbg !2694
  br label %460, !dbg !3021

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2623, metadata !774), !dbg !2686
  %463 = icmp ult i64 %461, %130, !dbg !3022
  br i1 %463, label %464, label %466, !dbg !3025

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !3022
  store i8 %438, i8* %465, align 1, !dbg !3022, !tbaa !1043
  br label %466, !dbg !3022

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2622, metadata !774), !dbg !2743
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !3026
  %469 = load i8, i8* %468, align 1, !dbg !3026, !tbaa !1043
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2633, metadata !774), !dbg !2767
  br label %373, !dbg !3027, !llvm.loop !3028

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2640, metadata !774), !dbg !2753
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2639, metadata !774), !dbg !2752
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2638, metadata !774), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2633, metadata !774), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2631, metadata !774), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2616, metadata !774), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2624, metadata !774), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2622, metadata !774), !dbg !2743
  br i1 %106, label %482, label %481, !dbg !3031

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !3033

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !3034

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !3035
  %485 = zext i8 %484 to i64, !dbg !3035
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !3036
  %487 = load i32, i32* %486, align 4, !dbg !3036, !tbaa !960
  %488 = and i8 %477, 31, !dbg !3037
  %489 = zext i8 %488 to i32, !dbg !3038
  %490 = shl i32 1, %489, !dbg !3039
  %491 = and i32 %487, %490, !dbg !3039
  %492 = icmp eq i32 %491, 0, !dbg !3039
  %493 = icmp eq i8 %156, 0, !dbg !3040
  %494 = and i1 %493, %492, !dbg !3041
  br i1 %494, label %535, label %497, !dbg !3041

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !3040
  br i1 %496, label %535, label %497, !dbg !3042

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2640, metadata !774), !dbg !2753
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2633, metadata !774), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2631, metadata !774), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2616, metadata !774), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2624, metadata !774), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2622, metadata !774), !dbg !2743
  br i1 %111, label %507, label %635, !dbg !3043

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2639, metadata !774), !dbg !2752
  %508 = and i8 %502, 1, !dbg !3045
  %509 = icmp eq i8 %508, 0, !dbg !3045
  %510 = and i1 %113, %509, !dbg !3045
  br i1 %510, label %511, label %527, !dbg !3045

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !3047
  br i1 %512, label %513, label %515, !dbg !3051

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !3047
  store i8 39, i8* %514, align 1, !dbg !3047, !tbaa !1043
  br label %515, !dbg !3047

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2623, metadata !774), !dbg !2686
  %517 = icmp ult i64 %516, %506, !dbg !3052
  br i1 %517, label %518, label %520, !dbg !3055

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !3052
  store i8 36, i8* %519, align 1, !dbg !3052, !tbaa !1043
  br label %520, !dbg !3052

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2623, metadata !774), !dbg !2686
  %522 = icmp ult i64 %521, %506, !dbg !3056
  br i1 %522, label %523, label %525, !dbg !3059

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !3056
  store i8 39, i8* %524, align 1, !dbg !3056, !tbaa !1043
  br label %525, !dbg !3056

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2630, metadata !774), !dbg !2694
  br label %527, !dbg !3060

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2623, metadata !774), !dbg !2686
  %530 = icmp ult i64 %528, %506, !dbg !3061
  br i1 %530, label %531, label %533, !dbg !3064

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3061
  store i8 92, i8* %532, align 1, !dbg !3061, !tbaa !1043
  br label %533, !dbg !3061

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2640, metadata !774), !dbg !2753
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2639, metadata !774), !dbg !2752
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2633, metadata !774), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2631, metadata !774), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2616, metadata !774), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2624, metadata !774), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2622, metadata !774), !dbg !2743
  br label %562, !dbg !3065

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2640, metadata !774), !dbg !2753
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2639, metadata !774), !dbg !2752
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2633, metadata !774), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2631, metadata !774), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2616, metadata !774), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2624, metadata !774), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2622, metadata !774), !dbg !2743
  %546 = and i8 %540, 1, !dbg !3065
  %547 = icmp ne i8 %546, 0, !dbg !3065
  %548 = and i8 %543, 1, !dbg !3065
  %549 = icmp eq i8 %548, 0, !dbg !3065
  %550 = and i1 %547, %549, !dbg !3065
  br i1 %550, label %551, label %562, !dbg !3065

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !3068
  br i1 %552, label %553, label %555, !dbg !3072

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !3068
  store i8 39, i8* %554, align 1, !dbg !3068, !tbaa !1043
  br label %555, !dbg !3068

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2623, metadata !774), !dbg !2686
  %557 = icmp ult i64 %556, %545, !dbg !3073
  br i1 %557, label %558, label %560, !dbg !3076

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !3073
  store i8 39, i8* %559, align 1, !dbg !3073, !tbaa !1043
  br label %560, !dbg !3073

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2630, metadata !774), !dbg !2694
  br label %562, !dbg !3077

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2623, metadata !774), !dbg !2686
  %572 = icmp ult i64 %570, %563, !dbg !3078
  br i1 %572, label %573, label %575, !dbg !3081

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !3078
  store i8 %565, i8* %574, align 1, !dbg !3078, !tbaa !1043
  br label %575, !dbg !3078

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2623, metadata !774), !dbg !2686
  %577 = and i8 %564, 1, !dbg !3082
  %578 = icmp eq i8 %577, 0, !dbg !3082
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2632, metadata !774), !dbg !2696
  %579 = select i1 %578, i8 0, i8 %129, !dbg !3084
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2632, metadata !774), !dbg !2696
  br label %580, !dbg !3085

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2632, metadata !774), !dbg !2696
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2631, metadata !774), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2630, metadata !774), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2616, metadata !774), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2624, metadata !774), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2622, metadata !774), !dbg !2743
  %589 = add i64 %581, 1, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2622, metadata !774), !dbg !2743
  br label %122, !dbg !3087, !llvm.loop !3088

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !3090
  %593 = and i1 %113, %592, !dbg !3092
  %594 = xor i1 %593, true, !dbg !3092
  %595 = or i1 %111, %594, !dbg !3092
  br i1 %595, label %596, label %635, !dbg !3092

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !3093
  %598 = xor i1 %597, true, !dbg !3093
  %599 = and i8 %128, 1, !dbg !3095
  %600 = icmp eq i8 %599, 0, !dbg !3095
  %601 = or i1 %600, %598, !dbg !3093
  br i1 %601, label %611, label %602, !dbg !3093

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !3096
  %604 = icmp eq i8 %603, 0, !dbg !3096
  br i1 %604, label %607, label %605, !dbg !3099

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !3100
  br label %645, !dbg !3101

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !3102
  %609 = icmp ne i64 %125, 0, !dbg !3104
  %610 = and i1 %609, %608, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2623, metadata !774), !dbg !2686
  br i1 %610, label %27, label %611, !dbg !3105

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !3106
  %613 = and i1 %612, %111, !dbg !3108
  br i1 %613, label %614, label %630, !dbg !3108

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2625, metadata !774), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2623, metadata !774), !dbg !2686
  %615 = load i8, i8* %99, align 1, !dbg !3109, !tbaa !1043
  %616 = icmp eq i8 %615, 0, !dbg !3112
  br i1 %616, label %630, label %617, !dbg !3112

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !3113

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2623, metadata !774), !dbg !2686
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2625, metadata !774), !dbg !2688
  %622 = icmp ult i64 %621, %130, !dbg !3113
  br i1 %622, label %623, label %625, !dbg !3116

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3113
  store i8 %619, i8* %624, align 1, !dbg !3113, !tbaa !1043
  br label %625, !dbg !3113

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2623, metadata !774), !dbg !2686
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2625, metadata !774), !dbg !2688
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2625, metadata !774), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2623, metadata !774), !dbg !2686
  %628 = load i8, i8* %627, align 1, !dbg !3109, !tbaa !1043
  %629 = icmp eq i8 %628, 0, !dbg !3112
  br i1 %629, label %630, label %618, !dbg !3112, !llvm.loop !3118

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2623, metadata !774), !dbg !2686
  %632 = icmp ult i64 %631, %130, !dbg !3120
  br i1 %632, label %633, label %645, !dbg !3122

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !3123
  store i8 0, i8* %634, align 1, !dbg !3124, !tbaa !1043
  br label %645, !dbg !3123

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2614, metadata !774), !dbg !2678
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2616, metadata !774), !dbg !2680
  %639 = icmp ne i32 %636, 2, !dbg !3125
  %640 = icmp eq i8 %103, 0, !dbg !3127
  %641 = or i1 %639, %640, !dbg !3128
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2617, metadata !774), !dbg !2681
  %642 = select i1 %641, i32 %636, i32 4, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2617, metadata !774), !dbg !2681
  %643 = and i32 %5, -3, !dbg !3129
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !3130
  br label %645, !dbg !3131

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !3132
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3133 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3137, metadata !774), !dbg !3141
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3138, metadata !774), !dbg !3142
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3143
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3139, metadata !774), !dbg !3144
  %4 = icmp eq i8* %3, %0, !dbg !3145
  br i1 %4, label %5, label %75, !dbg !3147

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3140, metadata !774), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3150, metadata !774), !dbg !3166
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3164, metadata !774), !dbg !3169
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3165, metadata !774), !dbg !3170
  %7 = load i8, i8* %6, align 1, !dbg !3171, !tbaa !1043
  %8 = sext i8 %7 to i32, !dbg !3171
  %9 = and i32 %8, -33, !dbg !3171
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3171

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3173, metadata !774), !dbg !3187
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3185, metadata !774), !dbg !3191
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3186, metadata !774), !dbg !3192
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3193
  %12 = load i8, i8* %11, align 1, !dbg !3193, !tbaa !1043
  %13 = sext i8 %12 to i32, !dbg !3193
  %14 = and i32 %13, -33, !dbg !3193
  %15 = icmp eq i32 %14, 84, !dbg !3193
  br i1 %15, label %16, label %72, !dbg !3193

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3195, metadata !774), !dbg !3208
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3206, metadata !774), !dbg !3212
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3207, metadata !774), !dbg !3213
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3214
  %18 = load i8, i8* %17, align 1, !dbg !3214, !tbaa !1043
  %19 = sext i8 %18 to i32, !dbg !3214
  %20 = and i32 %19, -33, !dbg !3214
  %21 = icmp eq i32 %20, 70, !dbg !3214
  br i1 %21, label %22, label %72, !dbg !3214

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3216, metadata !774), !dbg !3228
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3226, metadata !774), !dbg !3232
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3227, metadata !774), !dbg !3233
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3234
  %24 = load i8, i8* %23, align 1, !dbg !3234, !tbaa !1043
  %25 = icmp eq i8 %24, 45, !dbg !3234
  br i1 %25, label %26, label %72, !dbg !3236

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3237, metadata !774), !dbg !3248
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3246, metadata !774), !dbg !3252
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3247, metadata !774), !dbg !3253
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3254
  %28 = load i8, i8* %27, align 1, !dbg !3254, !tbaa !1043
  %29 = icmp eq i8 %28, 56, !dbg !3254
  br i1 %29, label %30, label %72, !dbg !3256

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3257, metadata !774), !dbg !3267
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3265, metadata !774), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3266, metadata !774), !dbg !3272
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3273
  %32 = load i8, i8* %31, align 1, !dbg !3273, !tbaa !1043
  %33 = icmp eq i8 %32, 0, !dbg !3273
  br i1 %33, label %34, label %72, !dbg !3275

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3276, !tbaa !1043
  %36 = icmp eq i8 %35, 96, !dbg !3277
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.96, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.97, i64 0, i64 0), !dbg !3276
  br label %75, !dbg !3278

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3173, metadata !774), !dbg !3279
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3185, metadata !774), !dbg !3283
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3186, metadata !774), !dbg !3284
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3285
  %40 = load i8, i8* %39, align 1, !dbg !3285, !tbaa !1043
  %41 = sext i8 %40 to i32, !dbg !3285
  %42 = and i32 %41, -33, !dbg !3285
  %43 = icmp eq i32 %42, 66, !dbg !3285
  br i1 %43, label %44, label %72, !dbg !3285

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3195, metadata !774), !dbg !3286
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3206, metadata !774), !dbg !3288
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3207, metadata !774), !dbg !3289
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3290
  %46 = load i8, i8* %45, align 1, !dbg !3290, !tbaa !1043
  %47 = icmp eq i8 %46, 49, !dbg !3290
  br i1 %47, label %48, label %72, !dbg !3291

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3216, metadata !774), !dbg !3292
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3226, metadata !774), !dbg !3294
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3227, metadata !774), !dbg !3295
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3296
  %50 = load i8, i8* %49, align 1, !dbg !3296, !tbaa !1043
  %51 = icmp eq i8 %50, 56, !dbg !3296
  br i1 %51, label %52, label %72, !dbg !3297

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3237, metadata !774), !dbg !3298
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3246, metadata !774), !dbg !3300
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3247, metadata !774), !dbg !3301
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3302
  %54 = load i8, i8* %53, align 1, !dbg !3302, !tbaa !1043
  %55 = icmp eq i8 %54, 48, !dbg !3302
  br i1 %55, label %56, label %72, !dbg !3303

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3257, metadata !774), !dbg !3304
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3265, metadata !774), !dbg !3306
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3266, metadata !774), !dbg !3307
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3308
  %58 = load i8, i8* %57, align 1, !dbg !3308, !tbaa !1043
  %59 = icmp eq i8 %58, 51, !dbg !3308
  br i1 %59, label %60, label %72, !dbg !3309

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3310, metadata !774), !dbg !3319
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3317, metadata !774), !dbg !3323
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3318, metadata !774), !dbg !3324
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3325
  %62 = load i8, i8* %61, align 1, !dbg !3325, !tbaa !1043
  %63 = icmp eq i8 %62, 48, !dbg !3325
  br i1 %63, label %64, label %72, !dbg !3327

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3328, metadata !774), !dbg !3336
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3334, metadata !774), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3335, metadata !774), !dbg !3341
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3342
  %66 = load i8, i8* %65, align 1, !dbg !3342, !tbaa !1043
  %67 = icmp eq i8 %66, 0, !dbg !3342
  br i1 %67, label %68, label %72, !dbg !3344

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3345, !tbaa !1043
  %70 = icmp eq i8 %69, 96, !dbg !3346
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.98, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.99, i64 0, i64 0), !dbg !3345
  br label %75, !dbg !3347

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3348
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), !dbg !3349
  br label %75, !dbg !3350

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3351
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3352 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3356, metadata !774), !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3357, metadata !774), !dbg !3360
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3358, metadata !774), !dbg !3361
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3362, metadata !774) #10, !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3367, metadata !774) #10, !dbg !3377
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3368, metadata !774) #10, !dbg !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3369, metadata !774) #10, !dbg !3379
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3380
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3380
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3370, metadata !774) #10, !dbg !3381
  %6 = tail call i32* @__errno_location() #17, !dbg !3382
  %7 = load i32, i32* %6, align 4, !dbg !3382, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3371, metadata !774) #10, !dbg !3383
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3384
  %9 = load i32, i32* %8, align 4, !dbg !3384, !tbaa !2546
  %10 = or i32 %9, 1, !dbg !3385
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3372, metadata !774) #10, !dbg !3386
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3387
  %12 = load i32, i32* %11, align 8, !dbg !3387, !tbaa !2486
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3388
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3389
  %15 = load i8*, i8** %14, align 8, !dbg !3389, !tbaa !2572
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3390
  %17 = load i8*, i8** %16, align 8, !dbg !3390, !tbaa !2575
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3391
  %19 = add i64 %18, 1, !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3373, metadata !774) #10, !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3394, metadata !774) #10, !dbg !3399
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3374, metadata !774) #10, !dbg !3402
  %21 = load i32, i32* %11, align 8, !dbg !3403, !tbaa !2486
  %22 = load i8*, i8** %14, align 8, !dbg !3404, !tbaa !2572
  %23 = load i8*, i8** %16, align 8, !dbg !3405, !tbaa !2575
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3406
  store i32 %7, i32* %6, align 4, !dbg !3407, !tbaa !960
  ret i8* %20, !dbg !3408
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3363 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3362, metadata !774), !dbg !3409
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3367, metadata !774), !dbg !3410
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3368, metadata !774), !dbg !3411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3369, metadata !774), !dbg !3412
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3413
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3413
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3370, metadata !774), !dbg !3414
  %7 = tail call i32* @__errno_location() #17, !dbg !3415
  %8 = load i32, i32* %7, align 4, !dbg !3415, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3371, metadata !774), !dbg !3416
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3417
  %10 = load i32, i32* %9, align 4, !dbg !3417, !tbaa !2546
  %11 = icmp ne i64* %2, null, !dbg !3418
  %12 = xor i1 %11, true, !dbg !3418
  %13 = zext i1 %12 to i32, !dbg !3418
  %14 = or i32 %10, %13, !dbg !3419
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3372, metadata !774), !dbg !3420
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3421
  %16 = load i32, i32* %15, align 8, !dbg !3421, !tbaa !2486
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3422
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3423
  %19 = load i8*, i8** %18, align 8, !dbg !3423, !tbaa !2572
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3424
  %21 = load i8*, i8** %20, align 8, !dbg !3424, !tbaa !2575
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3425
  %23 = add i64 %22, 1, !dbg !3426
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3373, metadata !774), !dbg !3427
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3394, metadata !774) #10, !dbg !3428
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3430
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3374, metadata !774), !dbg !3431
  %25 = load i32, i32* %15, align 8, !dbg !3432, !tbaa !2486
  %26 = load i8*, i8** %18, align 8, !dbg !3433, !tbaa !2572
  %27 = load i8*, i8** %20, align 8, !dbg !3434, !tbaa !2575
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3435
  store i32 %8, i32* %7, align 4, !dbg !3436, !tbaa !960
  br i1 %11, label %29, label %30, !dbg !3437

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3438, !tbaa !1013
  br label %30, !dbg !3440

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3441
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3442 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3446, !tbaa !781
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3444, metadata !774), !dbg !3447
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3445, metadata !774), !dbg !3448
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3445, metadata !774), !dbg !3448
  %2 = load i32, i32* @nslots, align 4, !dbg !3449, !tbaa !960
  %3 = icmp sgt i32 %2, 1, !dbg !3452
  br i1 %3, label %4, label %13, !dbg !3453

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3454

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3445, metadata !774), !dbg !3448
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3454
  %8 = load i8*, i8** %7, align 8, !dbg !3454, !tbaa !3455
  tail call void @free(i8* %8) #10, !dbg !3457
  %9 = add nuw i64 %6, 1, !dbg !3458
  %10 = load i32, i32* @nslots, align 4, !dbg !3449, !tbaa !960
  %11 = sext i32 %10 to i64, !dbg !3452
  %12 = icmp slt i64 %9, %11, !dbg !3452
  br i1 %12, label %5, label %13, !dbg !3453, !llvm.loop !3459

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3461
  %15 = load i8*, i8** %14, align 8, !dbg !3461, !tbaa !3455
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3463
  br i1 %16, label %18, label %17, !dbg !3464

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !3465
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3467, !tbaa !3468
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3469, !tbaa !3455
  br label %18, !dbg !3470

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3471
  br i1 %19, label %22, label %20, !dbg !3473

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3474
  tail call void @free(i8* %21) #10, !dbg !3476
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3477, !tbaa !781
  br label %22, !dbg !3478

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !3479, !tbaa !960
  ret void, !dbg !3480
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3481 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3485, metadata !774), !dbg !3487
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3486, metadata !774), !dbg !3488
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3489
  ret i8* %3, !dbg !3490
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3491 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3495, metadata !774), !dbg !3509
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3496, metadata !774), !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3497, metadata !774), !dbg !3511
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3498, metadata !774), !dbg !3512
  %5 = tail call i32* @__errno_location() #17, !dbg !3513
  %6 = load i32, i32* %5, align 4, !dbg !3513, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3499, metadata !774), !dbg !3514
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3515, !tbaa !781
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3500, metadata !774), !dbg !3516
  %8 = icmp slt i32 %0, 0, !dbg !3517
  br i1 %8, label %9, label %10, !dbg !3519

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3520
  unreachable, !dbg !3520

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3521, !tbaa !960
  %12 = icmp sgt i32 %11, %0, !dbg !3522
  br i1 %12, label %34, label %13, !dbg !3523

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3524
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3525
  br i1 %15, label %16, label %17, !dbg !3527

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3528
  unreachable, !dbg !3528

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3529
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3529
  %20 = add nsw i32 %0, 1, !dbg !3530
  %21 = sext i32 %20 to i64, !dbg !3531
  %22 = shl nsw i64 %21, 4, !dbg !3532
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3533
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3533
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3500, metadata !774), !dbg !3516
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3534, !tbaa !781
  br i1 %14, label %25, label %26, !dbg !3535

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3536, !tbaa.struct !3538
  br label %26, !dbg !3539

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3540, !tbaa !960
  %28 = sext i32 %27 to i64, !dbg !3541
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3541
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3542
  %31 = sub nsw i32 %20, %27, !dbg !3543
  %32 = sext i32 %31 to i64, !dbg !3544
  %33 = shl nsw i64 %32, 4, !dbg !3545
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3542
  store i32 %20, i32* @nslots, align 4, !dbg !3546, !tbaa !960
  br label %34, !dbg !3547

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3500, metadata !774), !dbg !3516
  %36 = sext i32 %0 to i64, !dbg !3548
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3549
  %38 = load i64, i64* %37, align 8, !dbg !3549, !tbaa !3468
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3504, metadata !774), !dbg !3550
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3551
  %40 = load i8*, i8** %39, align 8, !dbg !3551, !tbaa !3455
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3506, metadata !774), !dbg !3552
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3553
  %42 = load i32, i32* %41, align 4, !dbg !3553, !tbaa !2546
  %43 = or i32 %42, 1, !dbg !3554
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3507, metadata !774), !dbg !3555
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3556
  %45 = load i32, i32* %44, align 8, !dbg !3556, !tbaa !2486
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3557
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3558
  %48 = load i8*, i8** %47, align 8, !dbg !3558, !tbaa !2572
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3559
  %50 = load i8*, i8** %49, align 8, !dbg !3559, !tbaa !2575
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3508, metadata !774), !dbg !3561
  %52 = icmp ugt i64 %38, %51, !dbg !3562
  br i1 %52, label %63, label %53, !dbg !3564

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3504, metadata !774), !dbg !3550
  store i64 %54, i64* %37, align 8, !dbg !3567, !tbaa !3468
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3568
  br i1 %55, label %57, label %56, !dbg !3570

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3571
  br label %57, !dbg !3571

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3394, metadata !774) #10, !dbg !3572
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3574
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3506, metadata !774), !dbg !3552
  store i8* %58, i8** %39, align 8, !dbg !3575, !tbaa !3455
  %59 = load i32, i32* %44, align 8, !dbg !3576, !tbaa !2486
  %60 = load i8*, i8** %47, align 8, !dbg !3577, !tbaa !2572
  %61 = load i8*, i8** %49, align 8, !dbg !3578, !tbaa !2575
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3579
  br label %63, !dbg !3580

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3506, metadata !774), !dbg !3552
  store i32 %6, i32* %5, align 4, !dbg !3581, !tbaa !960
  ret i8* %64, !dbg !3582
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3583 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3587, metadata !774), !dbg !3590
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3588, metadata !774), !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3589, metadata !774), !dbg !3592
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3593
  ret i8* %4, !dbg !3594
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3595 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3599, metadata !774), !dbg !3600
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3485, metadata !774) #10, !dbg !3601
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3486, metadata !774) #10, !dbg !3603
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3604
  ret i8* %2, !dbg !3605
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3606 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3610, metadata !774), !dbg !3612
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3611, metadata !774), !dbg !3613
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3587, metadata !774) #10, !dbg !3614
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3588, metadata !774) #10, !dbg !3616
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3589, metadata !774) #10, !dbg !3617
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3618
  ret i8* %3, !dbg !3619
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3620 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3628, metadata !3634), !dbg !3635
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3624, metadata !774), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3625, metadata !774), !dbg !3638
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3626, metadata !774), !dbg !3639
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3640
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3627, metadata !774), !dbg !3641
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3633, metadata !774) #10, !dbg !3642
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3643
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3643
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3628, metadata !774) #10, !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3628, metadata !3644) #10, !dbg !3635
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3635
  %8 = icmp eq i32 %1, 10, !dbg !3645
  br i1 %8, label %9, label %10, !dbg !3647

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3648, !noalias !3649
  unreachable, !dbg !3648

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3628, metadata !3644) #10, !dbg !3635
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3652
  store i32 %1, i32* %11, align 8, !dbg !3652, !alias.scope !3649
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3652
  %13 = bitcast i32* %12 to i8*, !dbg !3652
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3652
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3653
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3627, metadata !774), !dbg !3641
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3654
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3655
  ret i8* %14, !dbg !3656
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3657 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3628, metadata !3634), !dbg !3666
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3661, metadata !774), !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3662, metadata !774), !dbg !3669
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3663, metadata !774), !dbg !3670
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3664, metadata !774), !dbg !3671
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3672
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3665, metadata !774), !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3633, metadata !774) #10, !dbg !3674
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3675
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3675
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3628, metadata !774) #10, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3628, metadata !3644) #10, !dbg !3666
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3666
  %9 = icmp eq i32 %1, 10, !dbg !3676
  br i1 %9, label %10, label %11, !dbg !3677

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3678, !noalias !3679
  unreachable, !dbg !3678

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3628, metadata !3644) #10, !dbg !3666
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3682
  store i32 %1, i32* %12, align 8, !dbg !3682, !alias.scope !3679
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3682
  %14 = bitcast i32* %13 to i8*, !dbg !3682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3682
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3665, metadata !774), !dbg !3673
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3684
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3685
  ret i8* %15, !dbg !3686
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3687 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3628, metadata !3634), !dbg !3693
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3691, metadata !774), !dbg !3696
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3692, metadata !774), !dbg !3697
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3624, metadata !774) #10, !dbg !3698
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3625, metadata !774) #10, !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3626, metadata !774) #10, !dbg !3700
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3701
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3627, metadata !774) #10, !dbg !3702
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3633, metadata !774) #10, !dbg !3703
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3704
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3704
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3628, metadata !774) #10, !dbg !3693
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3628, metadata !3644) #10, !dbg !3693
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3693
  %7 = icmp eq i32 %0, 10, !dbg !3705
  br i1 %7, label %8, label %9, !dbg !3706

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3707, !noalias !3708
  unreachable, !dbg !3707

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3628, metadata !3644) #10, !dbg !3693
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3711
  store i32 %0, i32* %10, align 8, !dbg !3711, !alias.scope !3708
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3711
  %12 = bitcast i32* %11 to i8*, !dbg !3711
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3711
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3712
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3627, metadata !774) #10, !dbg !3702
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3713
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3714
  ret i8* %13, !dbg !3715
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3716 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3628, metadata !3634), !dbg !3723
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3720, metadata !774), !dbg !3726
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3721, metadata !774), !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3722, metadata !774), !dbg !3728
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3661, metadata !774) #10, !dbg !3729
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3662, metadata !774) #10, !dbg !3730
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3663, metadata !774) #10, !dbg !3731
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3664, metadata !774) #10, !dbg !3732
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3733
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3733
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3665, metadata !774) #10, !dbg !3734
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3633, metadata !774) #10, !dbg !3735
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3736
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3736
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3628, metadata !774) #10, !dbg !3723
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3628, metadata !3644) #10, !dbg !3723
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3723
  %8 = icmp eq i32 %0, 10, !dbg !3737
  br i1 %8, label %9, label %10, !dbg !3738

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3739, !noalias !3740
  unreachable, !dbg !3739

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3628, metadata !3644) #10, !dbg !3723
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3743
  store i32 %0, i32* %11, align 8, !dbg !3743, !alias.scope !3740
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3743
  %13 = bitcast i32* %12 to i8*, !dbg !3743
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3743
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3744
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3665, metadata !774) #10, !dbg !3734
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3745
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3746
  ret i8* %14, !dbg !3747
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3748 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3752, metadata !774), !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3753, metadata !774), !dbg !3757
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3754, metadata !774), !dbg !3758
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3759
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3760, !tbaa.struct !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3755, metadata !774), !dbg !3762
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2505, metadata !774), !dbg !3763
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2506, metadata !774), !dbg !3765
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2507, metadata !774), !dbg !3766
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2508, metadata !774), !dbg !3767
  %6 = lshr i8 %2, 5, !dbg !3768
  %7 = zext i8 %6 to i64, !dbg !3768
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3769
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2509, metadata !774), !dbg !3770
  %9 = and i8 %2, 31, !dbg !3771
  %10 = zext i8 %9 to i32, !dbg !3772
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2511, metadata !774), !dbg !3773
  %11 = load i32, i32* %8, align 4, !dbg !3774, !tbaa !960
  %12 = lshr i32 %11, %10, !dbg !3775
  %13 = and i32 %12, 1, !dbg !3776
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2512, metadata !774), !dbg !3777
  %14 = xor i32 %13, 1, !dbg !3778
  %15 = shl i32 %14, %10, !dbg !3779
  %16 = xor i32 %15, %11, !dbg !3780
  store i32 %16, i32* %8, align 4, !dbg !3780, !tbaa !960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3755, metadata !774), !dbg !3762
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3781
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3782
  ret i8* %17, !dbg !3783
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3784 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3788, metadata !774), !dbg !3790
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3789, metadata !774), !dbg !3791
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3752, metadata !774) #10, !dbg !3792
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3753, metadata !774) #10, !dbg !3794
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3754, metadata !774) #10, !dbg !3795
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3796
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3797, !tbaa.struct !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3755, metadata !774) #10, !dbg !3798
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2505, metadata !774) #10, !dbg !3799
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2506, metadata !774) #10, !dbg !3801
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2507, metadata !774) #10, !dbg !3802
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2508, metadata !774) #10, !dbg !3803
  %5 = lshr i8 %1, 5, !dbg !3804
  %6 = zext i8 %5 to i64, !dbg !3804
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3805
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2509, metadata !774) #10, !dbg !3806
  %8 = and i8 %1, 31, !dbg !3807
  %9 = zext i8 %8 to i32, !dbg !3808
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2511, metadata !774) #10, !dbg !3809
  %10 = load i32, i32* %7, align 4, !dbg !3810, !tbaa !960
  %11 = lshr i32 %10, %9, !dbg !3811
  %12 = and i32 %11, 1, !dbg !3812
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2512, metadata !774) #10, !dbg !3813
  %13 = xor i32 %12, 1, !dbg !3814
  %14 = shl i32 %13, %9, !dbg !3815
  %15 = xor i32 %14, %10, !dbg !3816
  store i32 %15, i32* %7, align 4, !dbg !3816, !tbaa !960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3755, metadata !774) #10, !dbg !3798
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3817
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3818
  ret i8* %16, !dbg !3819
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3820 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3822, metadata !774), !dbg !3823
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3788, metadata !774) #10, !dbg !3824
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3789, metadata !774) #10, !dbg !3826
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3752, metadata !774) #10, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3753, metadata !774) #10, !dbg !3829
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3754, metadata !774) #10, !dbg !3830
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3831
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3831
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3832, !tbaa.struct !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3755, metadata !774) #10, !dbg !3833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2505, metadata !774) #10, !dbg !3834
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2506, metadata !774) #10, !dbg !3836
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2507, metadata !774) #10, !dbg !3837
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2508, metadata !774) #10, !dbg !3838
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3839
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2509, metadata !774) #10, !dbg !3840
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2511, metadata !774) #10, !dbg !3841
  %5 = load i32, i32* %4, align 4, !dbg !3842, !tbaa !960
  %6 = or i32 %5, 67108864, !dbg !3843
  store i32 %6, i32* %4, align 4, !dbg !3843, !tbaa !960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3755, metadata !774) #10, !dbg !3833
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3844
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3845
  ret i8* %7, !dbg !3846
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3847 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3849, metadata !774), !dbg !3851
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3850, metadata !774), !dbg !3852
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3752, metadata !774) #10, !dbg !3853
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3753, metadata !774) #10, !dbg !3855
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3754, metadata !774) #10, !dbg !3856
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3857
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3857
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3858, !tbaa.struct !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3755, metadata !774) #10, !dbg !3859
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2505, metadata !774) #10, !dbg !3860
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2506, metadata !774) #10, !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2507, metadata !774) #10, !dbg !3863
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2508, metadata !774) #10, !dbg !3864
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3865
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2509, metadata !774) #10, !dbg !3866
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2511, metadata !774) #10, !dbg !3867
  %6 = load i32, i32* %5, align 4, !dbg !3868, !tbaa !960
  %7 = or i32 %6, 67108864, !dbg !3869
  store i32 %7, i32* %5, align 4, !dbg !3869, !tbaa !960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3755, metadata !774) #10, !dbg !3859
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3870
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3871
  ret i8* %8, !dbg !3872
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3873 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3628, metadata !3634), !dbg !3879
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3875, metadata !774), !dbg !3881
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3876, metadata !774), !dbg !3882
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3877, metadata !774), !dbg !3883
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3884
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3633, metadata !774) #10, !dbg !3885
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3886
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3886
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3628, metadata !774) #10, !dbg !3879
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3628, metadata !3644) #10, !dbg !3879
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3879
  %9 = icmp eq i32 %1, 10, !dbg !3887
  br i1 %9, label %10, label %11, !dbg !3888

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3889, !noalias !3890
  unreachable, !dbg !3889

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3628, metadata !3644) #10, !dbg !3879
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3893
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3893
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3894
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3895
  store i32 %1, i32* %13, align 8, !dbg !3895
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3895
  %15 = bitcast i32* %14 to i8*, !dbg !3895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3895
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3878, metadata !774), !dbg !3896
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2505, metadata !774), !dbg !3897
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2506, metadata !774), !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2507, metadata !774), !dbg !3900
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2508, metadata !774), !dbg !3901
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3902
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2509, metadata !774), !dbg !3903
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2511, metadata !774), !dbg !3904
  %17 = load i32, i32* %16, align 4, !dbg !3905, !tbaa !960
  %18 = or i32 %17, 67108864, !dbg !3906
  store i32 %18, i32* %16, align 4, !dbg !3906, !tbaa !960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3878, metadata !774), !dbg !3896
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3907
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3908
  ret i8* %19, !dbg !3909
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3910 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3914, metadata !774), !dbg !3918
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3915, metadata !774), !dbg !3919
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3916, metadata !774), !dbg !3920
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3917, metadata !774), !dbg !3921
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3922, metadata !774) #10, !dbg !3932
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3927, metadata !774) #10, !dbg !3934
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3928, metadata !774) #10, !dbg !3935
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3929, metadata !774) #10, !dbg !3936
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3930, metadata !774) #10, !dbg !3937
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3938
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3939, !tbaa.struct !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3931, metadata !774) #10, !dbg !3940
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2554, metadata !774) #10, !dbg !3941
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2555, metadata !774) #10, !dbg !3943
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2556, metadata !774) #10, !dbg !3944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2554, metadata !774) #10, !dbg !3941
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2554, metadata !774) #10, !dbg !3941
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3945
  store i32 10, i32* %7, align 8, !dbg !3946, !tbaa !2486
  %8 = icmp ne i8* %1, null, !dbg !3947
  %9 = icmp ne i8* %2, null, !dbg !3948
  %10 = and i1 %8, %9, !dbg !3949
  br i1 %10, label %12, label %11, !dbg !3949

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3950
  unreachable, !dbg !3950

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3951
  store i8* %1, i8** %13, align 8, !dbg !3952, !tbaa !2572
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3953
  store i8* %2, i8** %14, align 8, !dbg !3954, !tbaa !2575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3931, metadata !774) #10, !dbg !3940
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3955
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3956
  ret i8* %15, !dbg !3957
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3923 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3922, metadata !774), !dbg !3958
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3927, metadata !774), !dbg !3959
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3928, metadata !774), !dbg !3960
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3929, metadata !774), !dbg !3961
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3930, metadata !774), !dbg !3962
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3963
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3963
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3964, !tbaa.struct !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3931, metadata !774), !dbg !3965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2554, metadata !774) #10, !dbg !3966
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2555, metadata !774) #10, !dbg !3968
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2556, metadata !774) #10, !dbg !3969
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2554, metadata !774) #10, !dbg !3966
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2554, metadata !774) #10, !dbg !3966
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3970
  store i32 10, i32* %8, align 8, !dbg !3971, !tbaa !2486
  %9 = icmp ne i8* %1, null, !dbg !3972
  %10 = icmp ne i8* %2, null, !dbg !3973
  %11 = and i1 %9, %10, !dbg !3974
  br i1 %11, label %13, label %12, !dbg !3974

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3975
  unreachable, !dbg !3975

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3976
  store i8* %1, i8** %14, align 8, !dbg !3977, !tbaa !2572
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3978
  store i8* %2, i8** %15, align 8, !dbg !3979, !tbaa !2575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3931, metadata !774), !dbg !3965
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3980
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3981
  ret i8* %16, !dbg !3982
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3983 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3987, metadata !774), !dbg !3990
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3988, metadata !774), !dbg !3991
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3989, metadata !774), !dbg !3992
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3914, metadata !774) #10, !dbg !3993
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3915, metadata !774) #10, !dbg !3995
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3916, metadata !774) #10, !dbg !3996
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3917, metadata !774) #10, !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3922, metadata !774) #10, !dbg !3998
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3927, metadata !774) #10, !dbg !4000
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3928, metadata !774) #10, !dbg !4001
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3929, metadata !774) #10, !dbg !4002
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3930, metadata !774) #10, !dbg !4003
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4004
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4005, !tbaa.struct !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3931, metadata !774) #10, !dbg !4006
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2554, metadata !774) #10, !dbg !4007
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2555, metadata !774) #10, !dbg !4009
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2556, metadata !774) #10, !dbg !4010
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2554, metadata !774) #10, !dbg !4007
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2554, metadata !774) #10, !dbg !4007
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4011
  store i32 10, i32* %6, align 8, !dbg !4012, !tbaa !2486
  %7 = icmp ne i8* %0, null, !dbg !4013
  %8 = icmp ne i8* %1, null, !dbg !4014
  %9 = and i1 %7, %8, !dbg !4015
  br i1 %9, label %11, label %10, !dbg !4015

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !4016
  unreachable, !dbg !4016

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4017
  store i8* %0, i8** %12, align 8, !dbg !4018, !tbaa !2572
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4019
  store i8* %1, i8** %13, align 8, !dbg !4020, !tbaa !2575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3931, metadata !774) #10, !dbg !4006
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4021
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4022
  ret i8* %14, !dbg !4023
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4024 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4028, metadata !774), !dbg !4032
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4029, metadata !774), !dbg !4033
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4030, metadata !774), !dbg !4034
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4031, metadata !774), !dbg !4035
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3922, metadata !774) #10, !dbg !4036
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3927, metadata !774) #10, !dbg !4038
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3928, metadata !774) #10, !dbg !4039
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3929, metadata !774) #10, !dbg !4040
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3930, metadata !774) #10, !dbg !4041
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4042
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4042
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4043, !tbaa.struct !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3931, metadata !774) #10, !dbg !4044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2554, metadata !774) #10, !dbg !4045
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2555, metadata !774) #10, !dbg !4047
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2556, metadata !774) #10, !dbg !4048
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2554, metadata !774) #10, !dbg !4045
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2554, metadata !774) #10, !dbg !4045
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4049
  store i32 10, i32* %7, align 8, !dbg !4050, !tbaa !2486
  %8 = icmp ne i8* %0, null, !dbg !4051
  %9 = icmp ne i8* %1, null, !dbg !4052
  %10 = and i1 %8, %9, !dbg !4053
  br i1 %10, label %12, label %11, !dbg !4053

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4054
  unreachable, !dbg !4054

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4055
  store i8* %0, i8** %13, align 8, !dbg !4056, !tbaa !2572
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4057
  store i8* %1, i8** %14, align 8, !dbg !4058, !tbaa !2575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3931, metadata !774) #10, !dbg !4044
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !4059
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4060
  ret i8* %15, !dbg !4061
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4062 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4066, metadata !774), !dbg !4069
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4067, metadata !774), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4068, metadata !774), !dbg !4071
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4072
  ret i8* %4, !dbg !4073
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4074 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4078, metadata !774), !dbg !4080
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4079, metadata !774), !dbg !4081
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4066, metadata !774) #10, !dbg !4082
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4067, metadata !774) #10, !dbg !4084
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4068, metadata !774) #10, !dbg !4085
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4086
  ret i8* %3, !dbg !4087
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4088 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4092, metadata !774), !dbg !4094
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4093, metadata !774), !dbg !4095
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4066, metadata !774) #10, !dbg !4096
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4067, metadata !774) #10, !dbg !4098
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4068, metadata !774) #10, !dbg !4099
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4100
  ret i8* %3, !dbg !4101
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4102 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4106, metadata !774), !dbg !4107
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4092, metadata !774) #10, !dbg !4108
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4093, metadata !774) #10, !dbg !4110
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4066, metadata !774) #10, !dbg !4111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4067, metadata !774) #10, !dbg !4113
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4068, metadata !774) #10, !dbg !4114
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4115
  ret i8* %2, !dbg !4116
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !4117 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4120, metadata !774), !dbg !4121
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !4122
  ret i32 %2, !dbg !4123
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4124 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4169, metadata !774), !dbg !4175
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4170, metadata !774), !dbg !4176
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4171, metadata !774), !dbg !4177
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4172, metadata !774), !dbg !4178
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4173, metadata !774), !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4174, metadata !774), !dbg !4180
  %7 = icmp eq i8* %1, null, !dbg !4181
  br i1 %7, label %10, label %8, !dbg !4183

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4184
  br label %12, !dbg !4184

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.107, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4185
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.108, i64 0, i64 0), i32 5) #10, !dbg !4186
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !4186
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.109, i64 0, i64 0), i32 5) #10, !dbg !4187
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !4187
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
  ], !dbg !4188

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4189
  unreachable, !dbg !4189

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.110, i64 0, i64 0), i32 5) #10, !dbg !4191
  %20 = load i8*, i8** %4, align 8, !dbg !4191, !tbaa !781
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4191
  br label %146, !dbg !4192

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.111, i64 0, i64 0), i32 5) #10, !dbg !4193
  %24 = load i8*, i8** %4, align 8, !dbg !4193, !tbaa !781
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4193
  %26 = load i8*, i8** %25, align 8, !dbg !4193, !tbaa !781
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4193
  br label %146, !dbg !4194

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.112, i64 0, i64 0), i32 5) #10, !dbg !4195
  %30 = load i8*, i8** %4, align 8, !dbg !4195, !tbaa !781
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4195
  %32 = load i8*, i8** %31, align 8, !dbg !4195, !tbaa !781
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4195
  %34 = load i8*, i8** %33, align 8, !dbg !4195, !tbaa !781
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4195
  br label %146, !dbg !4196

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.113, i64 0, i64 0), i32 5) #10, !dbg !4197
  %38 = load i8*, i8** %4, align 8, !dbg !4197, !tbaa !781
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4197
  %40 = load i8*, i8** %39, align 8, !dbg !4197, !tbaa !781
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4197
  %42 = load i8*, i8** %41, align 8, !dbg !4197, !tbaa !781
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4197
  %44 = load i8*, i8** %43, align 8, !dbg !4197, !tbaa !781
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4197
  br label %146, !dbg !4198

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.114, i64 0, i64 0), i32 5) #10, !dbg !4199
  %48 = load i8*, i8** %4, align 8, !dbg !4199, !tbaa !781
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4199
  %50 = load i8*, i8** %49, align 8, !dbg !4199, !tbaa !781
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4199
  %52 = load i8*, i8** %51, align 8, !dbg !4199, !tbaa !781
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4199
  %54 = load i8*, i8** %53, align 8, !dbg !4199, !tbaa !781
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4199
  %56 = load i8*, i8** %55, align 8, !dbg !4199, !tbaa !781
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4199
  br label %146, !dbg !4200

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.115, i64 0, i64 0), i32 5) #10, !dbg !4201
  %60 = load i8*, i8** %4, align 8, !dbg !4201, !tbaa !781
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4201
  %62 = load i8*, i8** %61, align 8, !dbg !4201, !tbaa !781
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4201
  %64 = load i8*, i8** %63, align 8, !dbg !4201, !tbaa !781
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4201
  %66 = load i8*, i8** %65, align 8, !dbg !4201, !tbaa !781
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4201
  %68 = load i8*, i8** %67, align 8, !dbg !4201, !tbaa !781
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4201
  %70 = load i8*, i8** %69, align 8, !dbg !4201, !tbaa !781
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4201
  br label %146, !dbg !4202

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.116, i64 0, i64 0), i32 5) #10, !dbg !4203
  %74 = load i8*, i8** %4, align 8, !dbg !4203, !tbaa !781
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4203
  %76 = load i8*, i8** %75, align 8, !dbg !4203, !tbaa !781
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4203
  %78 = load i8*, i8** %77, align 8, !dbg !4203, !tbaa !781
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4203
  %80 = load i8*, i8** %79, align 8, !dbg !4203, !tbaa !781
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4203
  %82 = load i8*, i8** %81, align 8, !dbg !4203, !tbaa !781
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4203
  %84 = load i8*, i8** %83, align 8, !dbg !4203, !tbaa !781
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4203
  %86 = load i8*, i8** %85, align 8, !dbg !4203, !tbaa !781
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4203
  br label %146, !dbg !4204

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.117, i64 0, i64 0), i32 5) #10, !dbg !4205
  %90 = load i8*, i8** %4, align 8, !dbg !4205, !tbaa !781
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4205
  %92 = load i8*, i8** %91, align 8, !dbg !4205, !tbaa !781
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4205
  %94 = load i8*, i8** %93, align 8, !dbg !4205, !tbaa !781
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4205
  %96 = load i8*, i8** %95, align 8, !dbg !4205, !tbaa !781
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4205
  %98 = load i8*, i8** %97, align 8, !dbg !4205, !tbaa !781
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4205
  %100 = load i8*, i8** %99, align 8, !dbg !4205, !tbaa !781
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4205
  %102 = load i8*, i8** %101, align 8, !dbg !4205, !tbaa !781
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4205
  %104 = load i8*, i8** %103, align 8, !dbg !4205, !tbaa !781
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4205
  br label %146, !dbg !4206

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.118, i64 0, i64 0), i32 5) #10, !dbg !4207
  %108 = load i8*, i8** %4, align 8, !dbg !4207, !tbaa !781
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4207
  %110 = load i8*, i8** %109, align 8, !dbg !4207, !tbaa !781
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4207
  %112 = load i8*, i8** %111, align 8, !dbg !4207, !tbaa !781
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4207
  %114 = load i8*, i8** %113, align 8, !dbg !4207, !tbaa !781
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4207
  %116 = load i8*, i8** %115, align 8, !dbg !4207, !tbaa !781
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4207
  %118 = load i8*, i8** %117, align 8, !dbg !4207, !tbaa !781
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4207
  %120 = load i8*, i8** %119, align 8, !dbg !4207, !tbaa !781
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4207
  %122 = load i8*, i8** %121, align 8, !dbg !4207, !tbaa !781
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4207
  %124 = load i8*, i8** %123, align 8, !dbg !4207, !tbaa !781
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4207
  br label %146, !dbg !4208

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.119, i64 0, i64 0), i32 5) #10, !dbg !4209
  %128 = load i8*, i8** %4, align 8, !dbg !4209, !tbaa !781
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4209
  %130 = load i8*, i8** %129, align 8, !dbg !4209, !tbaa !781
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4209
  %132 = load i8*, i8** %131, align 8, !dbg !4209, !tbaa !781
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4209
  %134 = load i8*, i8** %133, align 8, !dbg !4209, !tbaa !781
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4209
  %136 = load i8*, i8** %135, align 8, !dbg !4209, !tbaa !781
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4209
  %138 = load i8*, i8** %137, align 8, !dbg !4209, !tbaa !781
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4209
  %140 = load i8*, i8** %139, align 8, !dbg !4209, !tbaa !781
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4209
  %142 = load i8*, i8** %141, align 8, !dbg !4209, !tbaa !781
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4209
  %144 = load i8*, i8** %143, align 8, !dbg !4209, !tbaa !781
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4209
  br label %146, !dbg !4210

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4211
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4212 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4216, metadata !774), !dbg !4222
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4217, metadata !774), !dbg !4223
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4218, metadata !774), !dbg !4224
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4219, metadata !774), !dbg !4225
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4220, metadata !774), !dbg !4226
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4221, metadata !774), !dbg !4227
  br label %6, !dbg !4228

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4221, metadata !774), !dbg !4227
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4230
  %9 = load i8*, i8** %8, align 8, !dbg !4230, !tbaa !781
  %10 = icmp eq i8* %9, null, !dbg !4232
  %11 = add i64 %7, 1, !dbg !4233
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4221, metadata !774), !dbg !4227
  br i1 %10, label %12, label %6, !dbg !4232, !llvm.loop !4234

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4236
  ret void, !dbg !4237
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4238 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4249, metadata !774), !dbg !4257
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4250, metadata !774), !dbg !4258
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4251, metadata !774), !dbg !4259
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4252, metadata !774), !dbg !4260
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4253, metadata !774), !dbg !4261
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4262
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4262
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4255, metadata !774), !dbg !4263
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %11 = load i32, i32* %8, align 8, !dbg !4265
  %12 = icmp ult i32 %11, 41, !dbg !4265
  br i1 %12, label %13, label %18, !dbg !4265

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4265
  %15 = sext i32 %11 to i64, !dbg !4265
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4265
  %17 = add i32 %11, 8, !dbg !4265
  store i32 %17, i32* %8, align 8, !dbg !4265
  br label %21, !dbg !4265

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4265
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4265
  store i8* %20, i8** %10, align 8, !dbg !4265
  br label %21, !dbg !4265

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4265
  %25 = load i8*, i8** %24, align 8, !dbg !4265
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4268
  store i8* %25, i8** %26, align 16, !dbg !4269, !tbaa !781
  %27 = icmp eq i8* %25, null, !dbg !4270
  br i1 %27, label %30, label %28, !dbg !4271

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %29 = icmp ult i32 %22, 41, !dbg !4265
  br i1 %29, label %35, label %32, !dbg !4265

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4272
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4273
  ret void, !dbg !4273

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4265
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4265
  store i8* %34, i8** %10, align 8, !dbg !4265
  br label %40, !dbg !4265

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4265
  %37 = sext i32 %22 to i64, !dbg !4265
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4265
  %39 = add i32 %22, 8, !dbg !4265
  store i32 %39, i32* %8, align 8, !dbg !4265
  br label %40, !dbg !4265

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4265
  %44 = load i8*, i8** %43, align 8, !dbg !4265
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4268
  store i8* %44, i8** %45, align 8, !dbg !4269, !tbaa !781
  %46 = icmp eq i8* %44, null, !dbg !4270
  br i1 %46, label %30, label %47, !dbg !4271

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %48 = icmp ult i32 %41, 41, !dbg !4265
  br i1 %48, label %52, label %49, !dbg !4265

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4265
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4265
  store i8* %51, i8** %10, align 8, !dbg !4265
  br label %57, !dbg !4265

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4265
  %54 = sext i32 %41 to i64, !dbg !4265
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4265
  %56 = add i32 %41, 8, !dbg !4265
  store i32 %56, i32* %8, align 8, !dbg !4265
  br label %57, !dbg !4265

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4265
  %61 = load i8*, i8** %60, align 8, !dbg !4265
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4268
  store i8* %61, i8** %62, align 16, !dbg !4269, !tbaa !781
  %63 = icmp eq i8* %61, null, !dbg !4270
  br i1 %63, label %30, label %64, !dbg !4271

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %65 = icmp ult i32 %58, 41, !dbg !4265
  br i1 %65, label %69, label %66, !dbg !4265

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4265
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4265
  store i8* %68, i8** %10, align 8, !dbg !4265
  br label %74, !dbg !4265

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4265
  %71 = sext i32 %58 to i64, !dbg !4265
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4265
  %73 = add i32 %58, 8, !dbg !4265
  store i32 %73, i32* %8, align 8, !dbg !4265
  br label %74, !dbg !4265

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4265
  %78 = load i8*, i8** %77, align 8, !dbg !4265
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4268
  store i8* %78, i8** %79, align 8, !dbg !4269, !tbaa !781
  %80 = icmp eq i8* %78, null, !dbg !4270
  br i1 %80, label %30, label %81, !dbg !4271

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %82 = icmp ult i32 %75, 41, !dbg !4265
  br i1 %82, label %86, label %83, !dbg !4265

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4265
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4265
  store i8* %85, i8** %10, align 8, !dbg !4265
  br label %91, !dbg !4265

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4265
  %88 = sext i32 %75 to i64, !dbg !4265
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4265
  %90 = add i32 %75, 8, !dbg !4265
  store i32 %90, i32* %8, align 8, !dbg !4265
  br label %91, !dbg !4265

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4265
  %95 = load i8*, i8** %94, align 8, !dbg !4265
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4268
  store i8* %95, i8** %96, align 16, !dbg !4269, !tbaa !781
  %97 = icmp eq i8* %95, null, !dbg !4270
  br i1 %97, label %30, label %98, !dbg !4271

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %99 = icmp ult i32 %92, 41, !dbg !4265
  br i1 %99, label %103, label %100, !dbg !4265

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4265
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4265
  store i8* %102, i8** %10, align 8, !dbg !4265
  br label %108, !dbg !4265

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4265
  %105 = sext i32 %92 to i64, !dbg !4265
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4265
  %107 = add i32 %92, 8, !dbg !4265
  store i32 %107, i32* %8, align 8, !dbg !4265
  br label %108, !dbg !4265

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4265
  %111 = load i8*, i8** %110, align 8, !dbg !4265
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4268
  store i8* %111, i8** %112, align 8, !dbg !4269, !tbaa !781
  %113 = icmp eq i8* %111, null, !dbg !4270
  br i1 %113, label %30, label %114, !dbg !4271

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %115 = load i8*, i8** %10, align 8, !dbg !4265
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4265
  store i8* %116, i8** %10, align 8, !dbg !4265
  %117 = bitcast i8* %115 to i8**, !dbg !4265
  %118 = load i8*, i8** %117, align 8, !dbg !4265
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4268
  store i8* %118, i8** %119, align 16, !dbg !4269, !tbaa !781
  %120 = icmp eq i8* %118, null, !dbg !4270
  br i1 %120, label %30, label %121, !dbg !4271

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %122 = load i8*, i8** %10, align 8, !dbg !4265
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4265
  store i8* %123, i8** %10, align 8, !dbg !4265
  %124 = bitcast i8* %122 to i8**, !dbg !4265
  %125 = load i8*, i8** %124, align 8, !dbg !4265
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4268
  store i8* %125, i8** %126, align 8, !dbg !4269, !tbaa !781
  %127 = icmp eq i8* %125, null, !dbg !4270
  br i1 %127, label %30, label %128, !dbg !4271

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %129 = load i8*, i8** %10, align 8, !dbg !4265
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4265
  store i8* %130, i8** %10, align 8, !dbg !4265
  %131 = bitcast i8* %129 to i8**, !dbg !4265
  %132 = load i8*, i8** %131, align 8, !dbg !4265
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4268
  store i8* %132, i8** %133, align 16, !dbg !4269, !tbaa !781
  %134 = icmp eq i8* %132, null, !dbg !4270
  br i1 %134, label %30, label %135, !dbg !4271

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4254, metadata !774), !dbg !4264
  %136 = load i8*, i8** %10, align 8, !dbg !4265
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4265
  store i8* %137, i8** %10, align 8, !dbg !4265
  %138 = bitcast i8* %136 to i8**, !dbg !4265
  %139 = load i8*, i8** %138, align 8, !dbg !4265
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4268
  store i8* %139, i8** %140, align 8, !dbg !4269, !tbaa !781
  %141 = icmp eq i8* %139, null, !dbg !4270
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4254, metadata !774), !dbg !4264
  %142 = select i1 %141, i64 9, i64 10, !dbg !4271
  br label %30, !dbg !4271
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4274 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4278, metadata !774), !dbg !4287
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4279, metadata !774), !dbg !4288
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4280, metadata !774), !dbg !4289
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4281, metadata !774), !dbg !4290
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4291
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4291
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4282, metadata !774), !dbg !4292
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4293
  call void @llvm.va_start(i8* nonnull %6), !dbg !4293
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4294
  call void @llvm.va_end(i8* nonnull %6), !dbg !4295
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4296
  ret void, !dbg !4296
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4297 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.122, i64 0, i64 0), i32 5) #10, !dbg !4298
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.123, i64 0, i64 0)) #10, !dbg !4298
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.124, i64 0, i64 0), i32 5) #10, !dbg !4299
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.125, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.126, i64 0, i64 0)) #10, !dbg !4299
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.127, i64 0, i64 0), i32 5) #10, !dbg !4300
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4300, !tbaa !781
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4300
  ret void, !dbg !4301
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4302 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4306, metadata !774), !dbg !4308
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4307, metadata !774), !dbg !4309
  %3 = udiv i64 9223372036854775807, %1, !dbg !4310
  %4 = icmp ult i64 %3, %0, !dbg !4310
  br i1 %4, label %5, label %6, !dbg !4312

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4313
  unreachable, !dbg !4313

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4314
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4315, metadata !774) #10, !dbg !4322
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4324
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4321, metadata !774) #10, !dbg !4325
  %9 = icmp eq i8* %8, null, !dbg !4326
  %10 = icmp ne i64 %7, 0, !dbg !4328
  %11 = and i1 %10, %9, !dbg !4329
  br i1 %11, label %12, label %13, !dbg !4329

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4330
  unreachable, !dbg !4330

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4331
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4316 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4315, metadata !774), !dbg !4332
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4333
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4321, metadata !774), !dbg !4334
  %3 = icmp eq i8* %2, null, !dbg !4335
  %4 = icmp ne i64 %0, 0, !dbg !4336
  %5 = and i1 %4, %3, !dbg !4337
  br i1 %5, label %6, label %7, !dbg !4337

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4338
  unreachable, !dbg !4338

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4339
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4340 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4344, metadata !774), !dbg !4347
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4345, metadata !774), !dbg !4348
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4346, metadata !774), !dbg !4349
  %4 = udiv i64 9223372036854775807, %2, !dbg !4350
  %5 = icmp ult i64 %4, %1, !dbg !4350
  br i1 %5, label %6, label %7, !dbg !4352

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4353
  unreachable, !dbg !4353

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4354
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !774) #10, !dbg !4361
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4360, metadata !774) #10, !dbg !4363
  %9 = icmp eq i64 %8, 0, !dbg !4364
  %10 = icmp ne i8* %0, null, !dbg !4366
  %11 = and i1 %10, %9, !dbg !4367
  br i1 %11, label %12, label %13, !dbg !4367

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4368
  br label %19, !dbg !4370

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4371
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4355, metadata !774) #10, !dbg !4361
  %15 = icmp eq i8* %14, null, !dbg !4372
  %16 = icmp ne i64 %8, 0, !dbg !4374
  %17 = and i1 %16, %15, !dbg !4375
  br i1 %17, label %18, label %19, !dbg !4375

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4376
  unreachable, !dbg !4376

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4377
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4356 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !774), !dbg !4378
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4360, metadata !774), !dbg !4379
  %3 = icmp eq i64 %1, 0, !dbg !4380
  %4 = icmp ne i8* %0, null, !dbg !4381
  %5 = and i1 %4, %3, !dbg !4382
  br i1 %5, label %6, label %7, !dbg !4382

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4383
  br label %13, !dbg !4384

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4385
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4355, metadata !774), !dbg !4378
  %9 = icmp eq i8* %8, null, !dbg !4386
  %10 = icmp ne i64 %1, 0, !dbg !4387
  %11 = and i1 %10, %9, !dbg !4388
  br i1 %11, label %12, label %13, !dbg !4388

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4389
  unreachable, !dbg !4389

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4390
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !734 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !739, metadata !774), !dbg !4391
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !740, metadata !774), !dbg !4392
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !741, metadata !774), !dbg !4393
  %4 = load i64, i64* %1, align 8, !dbg !4394, !tbaa !1013
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !742, metadata !774), !dbg !4395
  %5 = icmp eq i8* %0, null, !dbg !4396
  br i1 %5, label %6, label %13, !dbg !4398

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4399
  br i1 %7, label %8, label %17, !dbg !4402

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4403
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !742, metadata !774), !dbg !4395
  %10 = icmp ugt i64 %2, 128, !dbg !4405
  %11 = zext i1 %10 to i64, !dbg !4405
  %12 = add nuw nsw i64 %9, %11, !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !742, metadata !774), !dbg !4395
  br label %17, !dbg !4407

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4408
  %15 = icmp ugt i64 %14, %4, !dbg !4411
  br i1 %15, label %20, label %16, !dbg !4412

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4413
  unreachable, !dbg !4413

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !742, metadata !774), !dbg !4395
  store i64 %18, i64* %1, align 8, !dbg !4414, !tbaa !1013
  %19 = mul i64 %18, %2, !dbg !4415
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !774) #10, !dbg !4416
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4360, metadata !774) #10, !dbg !4418
  br label %27, !dbg !4419

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4420
  %22 = add i64 %4, 1, !dbg !4421
  %23 = add i64 %22, %21, !dbg !4422
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !742, metadata !774), !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !742, metadata !774), !dbg !4395
  store i64 %23, i64* %1, align 8, !dbg !4414, !tbaa !1013
  %24 = mul i64 %23, %2, !dbg !4415
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !774) #10, !dbg !4416
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4360, metadata !774) #10, !dbg !4418
  %25 = icmp eq i64 %24, 0, !dbg !4423
  br i1 %25, label %26, label %27, !dbg !4419

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4424
  br label %34, !dbg !4425

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4426
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4355, metadata !774) #10, !dbg !4416
  %30 = icmp eq i8* %29, null, !dbg !4427
  %31 = icmp ne i64 %28, 0, !dbg !4428
  %32 = and i1 %31, %30, !dbg !4429
  br i1 %32, label %33, label %34, !dbg !4429

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4430
  unreachable, !dbg !4430

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4431
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4432 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4434, metadata !774), !dbg !4435
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4315, metadata !774) #10, !dbg !4436
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4438
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4321, metadata !774) #10, !dbg !4439
  %3 = icmp eq i8* %2, null, !dbg !4440
  %4 = icmp ne i64 %0, 0, !dbg !4441
  %5 = and i1 %4, %3, !dbg !4442
  br i1 %5, label %6, label %7, !dbg !4442

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4443
  unreachable, !dbg !4443

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4444
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4445 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4449, metadata !774), !dbg !4451
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4450, metadata !774), !dbg !4452
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !739, metadata !774) #10, !dbg !4453
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !740, metadata !774) #10, !dbg !4455
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !741, metadata !774) #10, !dbg !4456
  %3 = load i64, i64* %1, align 8, !dbg !4457, !tbaa !1013
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !742, metadata !774) #10, !dbg !4458
  %4 = icmp eq i8* %0, null, !dbg !4459
  br i1 %4, label %5, label %8, !dbg !4460

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4461
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !742, metadata !774) #10, !dbg !4458
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !742, metadata !774) #10, !dbg !4458
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !742, metadata !774) #10, !dbg !4458
  store i64 %7, i64* %1, align 8, !dbg !4463, !tbaa !1013
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !774) #10, !dbg !4464
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4360, metadata !774) #10, !dbg !4466
  br label %17, !dbg !4467

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4468
  br i1 %9, label %11, label %10, !dbg !4469

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4470
  unreachable, !dbg !4470

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4471
  %13 = add i64 %3, 1, !dbg !4472
  %14 = add i64 %13, %12, !dbg !4473
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !742, metadata !774) #10, !dbg !4458
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !742, metadata !774) #10, !dbg !4458
  store i64 %14, i64* %1, align 8, !dbg !4463, !tbaa !1013
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !774) #10, !dbg !4464
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4360, metadata !774) #10, !dbg !4466
  %15 = icmp eq i64 %14, 0, !dbg !4474
  br i1 %15, label %16, label %17, !dbg !4467

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4475
  br label %24, !dbg !4476

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4477
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4355, metadata !774) #10, !dbg !4464
  %20 = icmp eq i8* %19, null, !dbg !4478
  %21 = icmp ne i64 %18, 0, !dbg !4479
  %22 = and i1 %21, %20, !dbg !4480
  br i1 %22, label %23, label %24, !dbg !4480

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4481
  unreachable, !dbg !4481

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4482
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4483 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4485, metadata !774), !dbg !4486
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4315, metadata !774) #10, !dbg !4487
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4489
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4321, metadata !774) #10, !dbg !4490
  %3 = icmp eq i8* %2, null, !dbg !4491
  %4 = icmp ne i64 %0, 0, !dbg !4492
  %5 = and i1 %4, %3, !dbg !4493
  br i1 %5, label %6, label %7, !dbg !4493

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4494
  unreachable, !dbg !4494

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4495
  ret i8* %2, !dbg !4496
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4497 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4499, metadata !774), !dbg !4502
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4500, metadata !774), !dbg !4503
  %3 = udiv i64 9223372036854775807, %1, !dbg !4504
  %4 = icmp ult i64 %3, %0, !dbg !4504
  br i1 %4, label %8, label %5, !dbg !4506

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4507
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4501, metadata !774), !dbg !4508
  %7 = icmp eq i8* %6, null, !dbg !4509
  br i1 %7, label %8, label %9, !dbg !4510

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4511
  unreachable, !dbg !4511

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4512
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4513 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4515, metadata !774), !dbg !4517
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4516, metadata !774), !dbg !4518
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4315, metadata !774) #10, !dbg !4519
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4521
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4321, metadata !774) #10, !dbg !4522
  %4 = icmp eq i8* %3, null, !dbg !4523
  %5 = icmp ne i64 %1, 0, !dbg !4524
  %6 = and i1 %5, %4, !dbg !4525
  br i1 %6, label %7, label %8, !dbg !4525

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4526
  unreachable, !dbg !4526

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4527
  ret i8* %3, !dbg !4528
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4529 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4531, metadata !774), !dbg !4532
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4533
  %3 = add i64 %2, 1, !dbg !4534
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4515, metadata !774) #10, !dbg !4535
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4516, metadata !774) #10, !dbg !4537
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4315, metadata !774) #10, !dbg !4538
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4540
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4321, metadata !774) #10, !dbg !4541
  %5 = icmp eq i8* %4, null, !dbg !4542
  %6 = icmp ne i64 %3, 0, !dbg !4543
  %7 = and i1 %6, %5, !dbg !4544
  br i1 %7, label %8, label %9, !dbg !4544

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4545
  unreachable, !dbg !4545

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4546
  ret i8* %4, !dbg !4547
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4548 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4550, !tbaa !960
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.138, i64 0, i64 0), i32 5) #10, !dbg !4551
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* %2) #10, !dbg !4552
  tail call void @abort() #15, !dbg !4553
  unreachable, !dbg !4553
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4554 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4557, metadata !774), !dbg !4563
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4558, metadata !774), !dbg !4564
  %3 = icmp eq i64 %0, 0, !dbg !4565
  %4 = icmp eq i64 %1, 0, !dbg !4566
  %5 = or i1 %3, %4, !dbg !4567
  br i1 %5, label %12, label %6, !dbg !4567

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4568
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4560, metadata !774), !dbg !4569
  %8 = udiv i64 %7, %1, !dbg !4570
  %9 = icmp eq i64 %8, %0, !dbg !4572
  br i1 %9, label %12, label %10, !dbg !4573

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4574
  store i32 12, i32* %11, align 4, !dbg !4576, !tbaa !960
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4557, metadata !774), !dbg !4563
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4558, metadata !774), !dbg !4564
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4577
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4559, metadata !774), !dbg !4578
  br label %16, !dbg !4579

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4580
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4581 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4626, metadata !774), !dbg !4630
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4627, metadata !774), !dbg !4631
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4629, metadata !774), !dbg !4632
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4633
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4628, metadata !774), !dbg !4634
  %3 = icmp slt i32 %2, 0, !dbg !4635
  br i1 %3, label %4, label %6, !dbg !4637

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4638
  br label %24, !dbg !4639

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4640
  %8 = icmp eq i32 %7, 0, !dbg !4640
  br i1 %8, label %13, label %9, !dbg !4642

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4643
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4644
  %12 = icmp eq i64 %11, -1, !dbg !4645
  br i1 %12, label %16, label %13, !dbg !4646

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4647
  %15 = icmp eq i32 %14, 0, !dbg !4647
  br i1 %15, label %16, label %18, !dbg !4648

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4627, metadata !774), !dbg !4631
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4629, metadata !774), !dbg !4632
  br label %24, !dbg !4650

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4651
  %20 = load i32, i32* %19, align 4, !dbg !4651, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4627, metadata !774), !dbg !4631
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4627, metadata !774), !dbg !4631
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4629, metadata !774), !dbg !4632
  %22 = icmp eq i32 %20, 0, !dbg !4652
  br i1 %22, label %24, label %23, !dbg !4650

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4654, !tbaa !960
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4629, metadata !774), !dbg !4632
  br label %24, !dbg !4656

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4657
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !334 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !342, metadata !774), !dbg !4658
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !343, metadata !774), !dbg !4659
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4660
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10, !dbg !4660
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !344, metadata !774), !dbg !4661
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !355, metadata !774), !dbg !4662
  call void @llvm.va_start(i8* nonnull %4), !dbg !4663
  %5 = icmp eq i32 %1, 1030, !dbg !4664
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !4664

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !4665

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4665
  %12 = load i8*, i8** %11, align 16, !dbg !4665
  %13 = sext i32 %7 to i64, !dbg !4665
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !4665
  %15 = add i32 %7, 8, !dbg !4665
  store i32 %15, i32* %6, align 16, !dbg !4665
  br label %20, !dbg !4665

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4665
  %18 = load i8*, i8** %17, align 8, !dbg !4665
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !4665
  store i8* %19, i8** %17, align 8, !dbg !4665
  br label %20, !dbg !4665

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !4665
  %23 = load i32, i32* %22, align 4, !dbg !4665
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !356, metadata !774), !dbg !4666
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4667, !tbaa !960
  %25 = icmp sgt i32 %24, -1, !dbg !4669
  br i1 %25, label %26, label %39, !dbg !4670

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !4671
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !355, metadata !774), !dbg !4662
  %28 = icmp sgt i32 %27, -1, !dbg !4673
  br i1 %28, label %36, label %29, !dbg !4675

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !4676
  %31 = load i32, i32* %30, align 4, !dbg !4676, !tbaa !960
  %32 = icmp eq i32 %31, 22, !dbg !4677
  br i1 %32, label %33, label %36, !dbg !4678

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4679
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !355, metadata !774), !dbg !4662
  %35 = icmp slt i32 %34, 0, !dbg !4681
  br i1 %35, label %75, label %36, !dbg !4683

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !355, metadata !774), !dbg !4662
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !960
  br label %42, !dbg !4684

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4685
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !355, metadata !774), !dbg !4662
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4686
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !4686
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !355, metadata !774), !dbg !4662
  %45 = icmp sgt i32 %44, -1, !dbg !4687
  %46 = icmp eq i32 %43, -1, !dbg !4688
  %47 = and i1 %45, %46, !dbg !4689
  br i1 %47, label %48, label %75, !dbg !4689

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !4690
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !359, metadata !774), !dbg !4691
  %50 = icmp slt i32 %49, 0, !dbg !4692
  br i1 %50, label %55, label %51, !dbg !4693

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !4694
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10, !dbg !4695
  %54 = icmp eq i32 %53, -1, !dbg !4696
  br i1 %54, label %55, label %75, !dbg !4697

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #17, !dbg !4698
  %57 = load i32, i32* %56, align 4, !dbg !4698, !tbaa !960
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !362, metadata !774), !dbg !4699
  %58 = call i32 @close(i32 %44) #10, !dbg !4700
  store i32 %57, i32* %56, align 4, !dbg !4701, !tbaa !960
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !355, metadata !774), !dbg !4662
  br label %75, !dbg !4702

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !4703

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4703
  %62 = load i8*, i8** %61, align 16, !dbg !4703
  %63 = sext i32 %7 to i64, !dbg !4703
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !4703
  %65 = add i32 %7, 8, !dbg !4703
  store i32 %65, i32* %6, align 16, !dbg !4703
  br label %70, !dbg !4703

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4703
  %68 = load i8*, i8** %67, align 8, !dbg !4703
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !4703
  store i8* %69, i8** %67, align 8, !dbg !4703
  br label %70, !dbg !4703

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !4703
  %73 = load i8*, i8** %72, align 8, !dbg !4703
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !365, metadata !774), !dbg !4704
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10, !dbg !4705
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !355, metadata !774), !dbg !4662
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !355, metadata !774), !dbg !4662
  call void @llvm.va_end(i8* nonnull %4), !dbg !4706
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10, !dbg !4707
  ret i32 %76, !dbg !4708
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4709 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4754, metadata !774), !dbg !4755
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4756
  br i1 %2, label %6, label %3, !dbg !4758

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4759
  %5 = icmp eq i32 %4, 0, !dbg !4759
  br i1 %5, label %6, label %8, !dbg !4760

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4761
  br label %17, !dbg !4762

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4763, metadata !774) #10, !dbg !4768
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4770
  %10 = load i32, i32* %9, align 8, !dbg !4770, !tbaa !1370
  %11 = and i32 %10, 256, !dbg !4772
  %12 = icmp eq i32 %11, 0, !dbg !4772
  br i1 %12, label %15, label %13, !dbg !4773

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4774
  br label %15, !dbg !4774

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4775
  br label %17, !dbg !4776

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4777
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4778 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4823, metadata !774), !dbg !4829
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4824, metadata !774), !dbg !4830
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4825, metadata !774), !dbg !4831
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4832
  %5 = load i8*, i8** %4, align 8, !dbg !4832, !tbaa !4833
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4834
  %7 = load i8*, i8** %6, align 8, !dbg !4834, !tbaa !4835
  %8 = icmp eq i8* %5, %7, !dbg !4836
  br i1 %8, label %9, label %28, !dbg !4837

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4838
  %11 = load i8*, i8** %10, align 8, !dbg !4838, !tbaa !1304
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4839
  %13 = load i8*, i8** %12, align 8, !dbg !4839, !tbaa !4840
  %14 = icmp eq i8* %11, %13, !dbg !4841
  br i1 %14, label %15, label %28, !dbg !4842

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4843
  %17 = load i8*, i8** %16, align 8, !dbg !4843, !tbaa !4844
  %18 = icmp eq i8* %17, null, !dbg !4845
  br i1 %18, label %19, label %28, !dbg !4846

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4847
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4848
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4826, metadata !774), !dbg !4849
  %22 = icmp eq i64 %21, -1, !dbg !4850
  br i1 %22, label %30, label %23, !dbg !4852

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4853
  %25 = load i32, i32* %24, align 8, !dbg !4854, !tbaa !1370
  %26 = and i32 %25, -17, !dbg !4854
  store i32 %26, i32* %24, align 8, !dbg !4854, !tbaa !1370
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4855
  store i64 %21, i64* %27, align 8, !dbg !4856, !tbaa !4857
  br label %30, !dbg !4858

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4859
  br label %30, !dbg !4860

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4861
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4862 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4879, metadata !774), !dbg !4888
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4880, metadata !774), !dbg !4889
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4881, metadata !774), !dbg !4890
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4882, metadata !774), !dbg !4891
  %6 = bitcast i32* %5 to i8*, !dbg !4892
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4892
  %7 = icmp eq i32* %0, null, !dbg !4893
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4879, metadata !774), !dbg !4888
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4895
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4879, metadata !774), !dbg !4888
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4896
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4883, metadata !774), !dbg !4897
  %10 = icmp ugt i64 %9, -3, !dbg !4898
  %11 = icmp ne i64 %2, 0, !dbg !4899
  %12 = and i1 %11, %10, !dbg !4900
  br i1 %12, label %13, label %18, !dbg !4900

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4901
  br i1 %14, label %18, label %15, !dbg !4902

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4903, !tbaa !1043
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4885, metadata !774), !dbg !4904
  %17 = zext i8 %16 to i32, !dbg !4905
  store i32 %17, i32* %8, align 4, !dbg !4906, !tbaa !960
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4907
  ret i64 %19, !dbg !4907
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4908 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4953, metadata !774), !dbg !4958
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4959
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4960, metadata !774), !dbg !4963
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4965
  %4 = load i32, i32* %3, align 8, !dbg !4965, !tbaa !1370
  %5 = and i32 %4, 32, !dbg !4965
  %6 = icmp eq i32 %5, 0, !dbg !4966
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4967
  %8 = icmp ne i32 %7, 0, !dbg !4968
  br i1 %6, label %9, label %19, !dbg !4969

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4971
  %11 = xor i1 %8, true, !dbg !4972
  %12 = or i1 %10, %11, !dbg !4972
  %13 = sext i1 %8 to i32, !dbg !4972
  br i1 %12, label %22, label %14, !dbg !4972

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4973
  %16 = load i32, i32* %15, align 4, !dbg !4973, !tbaa !960
  %17 = icmp ne i32 %16, 9, !dbg !4974
  %18 = sext i1 %17 to i32, !dbg !4975
  br label %22, !dbg !4975

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4976

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4978
  store i32 0, i32* %21, align 4, !dbg !4980, !tbaa !960
  br label %22, !dbg !4978

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4981
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4982 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4987, metadata !774), !dbg !4990
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4988, metadata !774), !dbg !4991
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4992
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4989, metadata !774), !dbg !4993
  %3 = icmp eq i8* %2, null, !dbg !4994
  br i1 %3, label %11, label %4, !dbg !4996

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i64 0, i64 0)) #14, !dbg !4997
  %6 = icmp eq i32 %5, 0, !dbg !5002
  br i1 %6, label %10, label %7, !dbg !5003

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0)) #14, !dbg !5004
  %9 = icmp eq i32 %8, 0, !dbg !5005
  br i1 %9, label %10, label %11, !dbg !5006

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4988, metadata !774), !dbg !4991
  br label %11, !dbg !5007

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5008
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5009 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5015, metadata !774), !dbg !5089
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5082, metadata !774), !dbg !5092
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5093
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5013, metadata !774), !dbg !5094
  %4 = icmp eq i8* %3, null, !dbg !5095
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), i8* %3, !dbg !5097
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5013, metadata !774), !dbg !5094
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5098, !tbaa !781
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5029, metadata !774) #10, !dbg !5099
  %7 = icmp eq i8* %6, null, !dbg !5100
  br i1 %7, label %8, label %123, !dbg !5101

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.161, i64 0, i64 0)) #10, !dbg !5102
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5030, metadata !774) #10, !dbg !5103
  %10 = icmp eq i8* %9, null, !dbg !5104
  br i1 %10, label %14, label %11, !dbg !5106

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5107, !tbaa !1043
  %13 = icmp eq i8 %12, 0, !dbg !5108
  br i1 %13, label %14, label %15, !dbg !5109

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5110

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.162, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5030, metadata !774) #10, !dbg !5103
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5033, metadata !774) #10, !dbg !5112
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5035, metadata !774) #10, !dbg !5113
  %18 = icmp eq i64 %17, 0, !dbg !5114
  br i1 %18, label %24, label %19, !dbg !5115

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5116
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5116
  %22 = load i8, i8* %21, align 1, !dbg !5116, !tbaa !1043
  %23 = icmp ne i8 %22, 47, !dbg !5116
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5117
  %27 = add i64 %17, 14, !dbg !5118
  %28 = add i64 %27, %26, !dbg !5119
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5120
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5032, metadata !774) #10, !dbg !5121
  %30 = icmp eq i8* %29, null, !dbg !5122
  br i1 %30, label %121, label %31, !dbg !5122

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5123
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5126

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5127, !tbaa !1043
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5129
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.163, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5130
  br label %37, !dbg !5131

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5129
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.163, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5130
  br label %37, !dbg !5131

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5132
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5037, metadata !774) #10, !dbg !5133
  %39 = icmp slt i32 %38, 0, !dbg !5134
  br i1 %39, label %119, label %40, !dbg !5135

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.164, i64 0, i64 0)) #10, !dbg !5136
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5038, metadata !774) #10, !dbg !5137
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5138
  br i1 %42, label %43, label %45, !dbg !5139

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !5140
  br label %119, !dbg !5142

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5079, metadata !774) #10, !dbg !5143
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5080, metadata !774) #10, !dbg !5144
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5145

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !5146

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5079, metadata !774) #10, !dbg !5143
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5080, metadata !774) #10, !dbg !5144
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !5146
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !5147
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5148, metadata !774) #10, !dbg !5153
  %54 = load i8*, i8** %48, align 8, !dbg !5155, !tbaa !4835
  %55 = load i8*, i8** %49, align 8, !dbg !5155, !tbaa !4833
  %56 = icmp ult i8* %54, %55, !dbg !5155
  br i1 %56, label %59, label %57, !dbg !5155, !prof !1307

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5155
  br label %63, !dbg !5155

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !5155
  store i8* %60, i8** %48, align 8, !dbg !5155, !tbaa !4835
  %61 = load i8, i8* %54, align 1, !dbg !5155, !tbaa !1043
  %62 = zext i8 %61 to i32, !dbg !5155
  br label %63, !dbg !5155

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !5155
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !5081, metadata !774) #10, !dbg !5156
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !5157, !llvm.loop !5158

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !5163

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5148, metadata !774) #10, !dbg !5165
  %67 = load i8*, i8** %48, align 8, !dbg !5163, !tbaa !4835
  %68 = load i8*, i8** %49, align 8, !dbg !5163, !tbaa !4833
  %69 = icmp ult i8* %67, %68, !dbg !5163
  br i1 %69, label %72, label %70, !dbg !5163, !prof !1307

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5163
  br label %76, !dbg !5163

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !5163
  store i8* %73, i8** %48, align 8, !dbg !5163, !tbaa !4835
  %74 = load i8, i8* %67, align 1, !dbg !5163, !tbaa !1043
  %75 = zext i8 %74 to i32, !dbg !5163
  br label %76, !dbg !5163

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !5163
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !5081, metadata !774) #10, !dbg !5156
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !5166, !llvm.loop !5167

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !5170
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.165, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !5171
  %81 = icmp slt i32 %80, 2, !dbg !5173
  br i1 %81, label %112, label %82, !dbg !5174

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !5175
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5086, metadata !774) #10, !dbg !5176
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !5177
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !5087, metadata !774) #10, !dbg !5178
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5088, metadata !774) #10, !dbg !5179
  %85 = icmp eq i64 %51, 0, !dbg !5180
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !5182

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !5080, metadata !774) #10, !dbg !5144
  %90 = add i64 %87, 2, !dbg !5183
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !5185
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !5079, metadata !774) #10, !dbg !5143
  br label %96, !dbg !5186

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !5187
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !5080, metadata !774) #10, !dbg !5144
  %94 = add i64 %93, 1, !dbg !5189
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !5190
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !5079, metadata !774) #10, !dbg !5143
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5079, metadata !774) #10, !dbg !5143
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5080, metadata !774) #10, !dbg !5144
  %99 = icmp eq i8* %98, null, !dbg !5191
  br i1 %99, label %100, label %102, !dbg !5193

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5080, metadata !774) #10, !dbg !5144
  call void @free(i8* %52) #10, !dbg !5194
  br label %112, !dbg !5196

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !5197
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !5197
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !5198
  %104 = xor i64 %84, -1, !dbg !5199
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5199
  %106 = xor i64 %83, -1, !dbg !5200
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !5200
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !5201, metadata !774) #10, !dbg !5210
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5209, metadata !774) #10, !dbg !5210
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !5212
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !5213
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5201, metadata !774) #10, !dbg !5214
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !5209, metadata !774) #10, !dbg !5214
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !5216
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !5217
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5079, metadata !774) #10, !dbg !5143
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5080, metadata !774) #10, !dbg !5144
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !5197
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !5197
  br label %50, !dbg !5218, !llvm.loop !5167

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !5197
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !5197
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5219
  %116 = icmp eq i64 %113, 0, !dbg !5220
  br i1 %116, label %119, label %117, !dbg !5222

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !5223
  store i8 0, i8* %118, align 1, !dbg !5225, !tbaa !1043
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !5029, metadata !774) #10, !dbg !5099
  call void @free(i8* %29) #10, !dbg !5226
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !5029, metadata !774) #10, !dbg !5099
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !5227, !tbaa !781
  br label %123, !dbg !5228

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5029, metadata !774) #10, !dbg !5099
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5014, metadata !774), !dbg !5229
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5014, metadata !774), !dbg !5229
  %125 = load i8, i8* %124, align 1, !dbg !5230, !tbaa !1043
  %126 = icmp eq i8 %125, 0, !dbg !5232
  br i1 %126, label %152, label %127, !dbg !5233

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !5234

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !5014, metadata !774), !dbg !5229
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !5234
  %132 = icmp eq i32 %131, 0, !dbg !5236
  br i1 %132, label %139, label %133, !dbg !5237

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !5238
  br i1 %134, label %135, label %143, !dbg !5239

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !5240
  %137 = load i8, i8* %136, align 1, !dbg !5240, !tbaa !1043
  %138 = icmp eq i8 %137, 0, !dbg !5241
  br i1 %138, label %139, label %143, !dbg !5242

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !5243
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !5245
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !5246
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !5013, metadata !774), !dbg !5094
  br label %152, !dbg !5247

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !5248
  %145 = add i64 %144, 1, !dbg !5249
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !5250
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5014, metadata !774), !dbg !5229
  %147 = call i64 @strlen(i8* %146) #14, !dbg !5251
  %148 = add i64 %147, 1, !dbg !5252
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !5253
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5014, metadata !774), !dbg !5229
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5014, metadata !774), !dbg !5229
  %150 = load i8, i8* %149, align 1, !dbg !5230, !tbaa !1043
  %151 = icmp eq i8 %150, 0, !dbg !5232
  br i1 %151, label %152, label %128, !dbg !5233, !llvm.loop !5254

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5013, metadata !774), !dbg !5094
  %154 = load i8, i8* %153, align 1, !dbg !5256, !tbaa !1043
  %155 = icmp eq i8 %154, 0, !dbg !5258
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.166, i64 0, i64 0), i8* %153, !dbg !5259
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !5013, metadata !774), !dbg !5094
  ret i8* %156, !dbg !5260
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

!llvm.dbg.cu = !{!2, !228, !234, !242, !258, !714, !717, !265, !272, !719, !721, !325, !729, !746, !748, !750, !338, !752, !754, !756, !759, !761, !369}
!llvm.ident = !{!763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763}
!llvm.module.flags = !{!764, !765, !766, !767, !768}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 203, type: !214, isLocal: true, isDefinition: true)
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
!67 = !{!68, !71, !73, !75, !0, !96, !98, !100, !102, !104, !106, !212}
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
!107 = distinct !DIGlobalVariable(name: "bin2hex", scope: !108, file: !3, line: 723, type: !209, isLocal: true, isDefinition: true)
!108 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 644, type: !109, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{!70, !80}
!111 = !{!112, !113, !168, !169, !170, !171, !172, !173, !174, !178, !179, !180, !181, !182, !183, !185, !186, !187, !191, !194, !195, !196, !200, !201, !207}
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
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 24)
!178 = !DILocalVariable(name: "bin_buffer", scope: !108, file: !3, line: 655, type: !64)
!179 = !DILocalVariable(name: "line_number", scope: !108, file: !3, line: 656, type: !40)
!180 = !DILocalVariable(name: "line", scope: !108, file: !3, line: 657, type: !58)
!181 = !DILocalVariable(name: "line_chars_allocated", scope: !108, file: !3, line: 658, type: !61)
!182 = !DILocalVariable(name: "is_stdin", scope: !108, file: !3, line: 659, type: !70)
!183 = !DILocalVariable(name: "filename", scope: !184, file: !3, line: 682, type: !58)
!184 = distinct !DILexicalBlock(scope: !108, file: !3, line: 681, column: 5)
!185 = !DILocalVariable(name: "binary", scope: !184, file: !3, line: 683, type: !63)
!186 = !DILocalVariable(name: "hex_digest", scope: !184, file: !3, line: 684, type: !64)
!187 = !DILocalVariable(name: "line_length", scope: !184, file: !3, line: 685, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !189, line: 109, baseType: !190)
!189 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 181, baseType: !145)
!191 = !DILocalVariable(name: "ok", scope: !192, file: !3, line: 727, type: !70)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 722, column: 9)
!193 = distinct !DILexicalBlock(scope: !184, file: !3, line: 704, column: 11)
!194 = !DILocalVariable(name: "missing", scope: !192, file: !3, line: 728, type: !70)
!195 = !DILocalVariable(name: "needs_escape", scope: !192, file: !3, line: 731, type: !70)
!196 = !DILocalVariable(name: "digest_bin_bytes", scope: !197, file: !3, line: 755, type: !61)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 754, column: 13)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 748, column: 20)
!199 = distinct !DILexicalBlock(scope: !192, file: !3, line: 737, column: 15)
!200 = !DILocalVariable(name: "cnt", scope: !197, file: !3, line: 756, type: !61)
!201 = !DILocalVariable(name: "__res", scope: !202, file: !3, line: 762, type: !63)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 762, column: 23)
!203 = distinct !DILexicalBlock(scope: !204, file: !3, line: 762, column: 23)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 761, column: 17)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 760, column: 15)
!206 = distinct !DILexicalBlock(scope: !197, file: !3, line: 760, column: 15)
!207 = !DILocalVariable(name: "__res", scope: !208, file: !3, line: 764, type: !63)
!208 = distinct !DILexicalBlock(scope: !203, file: !3, line: 764, column: 27)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 16)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "bsd_reversed", scope: !2, file: !3, line: 158, type: !63, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 3072, elements: !224)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !217, line: 50, size: 256, elements: !218)
!217 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!218 = !{!219, !220, !221, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !217, line: 52, baseType: !80, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !216, file: !217, line: 55, baseType: !63, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !216, file: !217, line: 56, baseType: !222, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !216, file: !217, line: 57, baseType: !63, size: 32, offset: 192)
!224 = !{!225}
!225 = !DISubrange(count: 12)
!226 = !DIGlobalVariableExpression(var: !227)
!227 = distinct !DIGlobalVariable(name: "Version", scope: !228, file: !229, line: 2, type: !80, isLocal: false, isDefinition: true)
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, globals: !231)
!229 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!230 = !{}
!231 = !{!226}
!232 = !DIGlobalVariableExpression(var: !233)
!233 = distinct !DIGlobalVariable(name: "file_name", scope: !234, file: !239, line: 36, type: !80, isLocal: true, isDefinition: true)
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, globals: !236)
!235 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!236 = !{!232, !237}
!237 = !DIGlobalVariableExpression(var: !238)
!238 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !234, file: !239, line: 46, type: !70, isLocal: true, isDefinition: true)
!239 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!240 = !DIGlobalVariableExpression(var: !241)
!241 = distinct !DIGlobalVariable(name: "fillbuf", scope: !242, file: !251, line: 55, type: !252, isLocal: true, isDefinition: true)
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !244, globals: !250)
!243 = !DIFile(filename: "./lib/sha1.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!244 = !{!58, !80, !245, !246}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !41, line: 100, baseType: !39)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !247, line: 26, baseType: !248)
!247 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !43, line: 41, baseType: !249)
!249 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!250 = !{!240}
!251 = !DIFile(filename: "lib/sha1.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 512, elements: !254)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!254 = !{!255}
!255 = !DISubrange(count: 64)
!256 = !DIGlobalVariableExpression(var: !257)
!257 = distinct !DIGlobalVariable(name: "exit_failure", scope: !258, file: !261, line: 24, type: !262, isLocal: false, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, globals: !260)
!259 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!260 = !{!256}
!261 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!262 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!263 = !DIGlobalVariableExpression(var: !264)
!264 = distinct !DIGlobalVariable(name: "program_name", scope: !265, file: !269, line: 33, type: !80, isLocal: false, isDefinition: true)
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !267, globals: !268)
!266 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!267 = !{!60, !58}
!268 = !{!263}
!269 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!270 = !DIGlobalVariableExpression(var: !271)
!271 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !272, file: !284, line: 77, type: !319, isLocal: false, isDefinition: true)
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !274, retainedTypes: !280, globals: !281)
!273 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!274 = !{!5, !275, !19}
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !276)
!276 = !{!277, !278, !279}
!277 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!278 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!279 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!280 = !{!63, !66, !61, !58}
!281 = !{!270, !282, !289, !301, !303, !308, !315, !317}
!282 = !DIGlobalVariableExpression(var: !283)
!283 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !272, file: !284, line: 93, type: !285, isLocal: false, isDefinition: true)
!284 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 320, elements: !287)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!287 = !{!288}
!288 = !DISubrange(count: 10)
!289 = !DIGlobalVariableExpression(var: !290)
!290 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !272, file: !284, line: 1043, type: !291, isLocal: false, isDefinition: true)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !284, line: 57, size: 448, elements: !292)
!292 = !{!293, !294, !295, !299, !300}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !291, file: !284, line: 60, baseType: !5, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !284, line: 63, baseType: !63, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !291, file: !284, line: 67, baseType: !296, size: 256, offset: 64)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 8)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !291, file: !284, line: 70, baseType: !80, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !291, file: !284, line: 73, baseType: !80, size: 64, offset: 384)
!301 = !DIGlobalVariableExpression(var: !302)
!302 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !272, file: !284, line: 108, type: !291, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304)
!304 = distinct !DIGlobalVariable(name: "slot0", scope: !272, file: !284, line: 834, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 256)
!308 = !DIGlobalVariableExpression(var: !309)
!309 = distinct !DIGlobalVariable(name: "slotvec", scope: !272, file: !284, line: 837, type: !310, isLocal: true, isDefinition: true)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !284, line: 826, size: 128, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !311, file: !284, line: 828, baseType: !61, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !311, file: !284, line: 829, baseType: !58, size: 64, offset: 64)
!315 = !DIGlobalVariableExpression(var: !316)
!316 = distinct !DIGlobalVariable(name: "nslots", scope: !272, file: !284, line: 835, type: !63, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318)
!318 = distinct !DIGlobalVariable(name: "slotvec0", scope: !272, file: !284, line: 836, type: !311, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 704, elements: !321)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!321 = !{!322}
!322 = !DISubrange(count: 11)
!323 = !DIGlobalVariableExpression(var: !324)
!324 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !325, file: !328, line: 26, type: !329, isLocal: false, isDefinition: true)
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, globals: !327)
!326 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!327 = !{!323}
!328 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 47)
!332 = !DIGlobalVariableExpression(var: !333)
!333 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !334, file: !335, line: 335, type: !63, isLocal: true, isDefinition: true)
!334 = distinct !DISubprogram(name: "rpl_fcntl", scope: !335, file: !335, line: 272, type: !336, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !338, variables: !341)
!335 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!336 = !DISubroutineType(types: !337)
!337 = !{!63, !63, !63, null}
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, globals: !340)
!339 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!340 = !{!332}
!341 = !{!342, !343, !344, !355, !356, !359, !362, !365}
!342 = !DILocalVariable(name: "fd", arg: 1, scope: !334, file: !335, line: 272, type: !63)
!343 = !DILocalVariable(name: "action", arg: 2, scope: !334, file: !335, line: 272, type: !63)
!344 = !DILocalVariable(name: "arg", scope: !334, file: !335, line: 274, type: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !346, line: 30, baseType: !347)
!346 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !339, line: 274, baseType: !348)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 192, elements: !151)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !339, line: 274, size: 192, elements: !350)
!350 = !{!351, !352, !353, !354}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !349, file: !339, line: 274, baseType: !249, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !349, file: !339, line: 274, baseType: !249, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !349, file: !339, line: 274, baseType: !60, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !349, file: !339, line: 274, baseType: !60, size: 64, offset: 128)
!355 = !DILocalVariable(name: "result", scope: !334, file: !335, line: 275, type: !63)
!356 = !DILocalVariable(name: "target", scope: !357, file: !335, line: 322, type: !63)
!357 = distinct !DILexicalBlock(scope: !358, file: !335, line: 321, column: 7)
!358 = distinct !DILexicalBlock(scope: !334, file: !335, line: 278, column: 5)
!359 = !DILocalVariable(name: "flags", scope: !360, file: !335, line: 359, type: !63)
!360 = distinct !DILexicalBlock(scope: !361, file: !335, line: 358, column: 11)
!361 = distinct !DILexicalBlock(scope: !357, file: !335, line: 357, column: 13)
!362 = !DILocalVariable(name: "saved_errno", scope: !363, file: !335, line: 362, type: !63)
!363 = distinct !DILexicalBlock(scope: !364, file: !335, line: 361, column: 15)
!364 = distinct !DILexicalBlock(scope: !360, file: !335, line: 360, column: 17)
!365 = !DILocalVariable(name: "p", scope: !366, file: !335, line: 404, type: !60)
!366 = distinct !DILexicalBlock(scope: !358, file: !335, line: 402, column: 7)
!367 = !DIGlobalVariableExpression(var: !368)
!368 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !369, file: !712, line: 120, type: !713, isLocal: true, isDefinition: true)
!369 = distinct !DICompileUnit(language: DW_LANG_C99, file: !370, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !371, retainedTypes: !710, globals: !711)
!370 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!371 = !{!372}
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !373, line: 41, size: 32, elements: !374)
!373 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!375 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!376 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!377 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!378 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!379 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!380 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!381 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!382 = !DIEnumerator(name: "DAY_1", value: 131079)
!383 = !DIEnumerator(name: "DAY_2", value: 131080)
!384 = !DIEnumerator(name: "DAY_3", value: 131081)
!385 = !DIEnumerator(name: "DAY_4", value: 131082)
!386 = !DIEnumerator(name: "DAY_5", value: 131083)
!387 = !DIEnumerator(name: "DAY_6", value: 131084)
!388 = !DIEnumerator(name: "DAY_7", value: 131085)
!389 = !DIEnumerator(name: "ABMON_1", value: 131086)
!390 = !DIEnumerator(name: "ABMON_2", value: 131087)
!391 = !DIEnumerator(name: "ABMON_3", value: 131088)
!392 = !DIEnumerator(name: "ABMON_4", value: 131089)
!393 = !DIEnumerator(name: "ABMON_5", value: 131090)
!394 = !DIEnumerator(name: "ABMON_6", value: 131091)
!395 = !DIEnumerator(name: "ABMON_7", value: 131092)
!396 = !DIEnumerator(name: "ABMON_8", value: 131093)
!397 = !DIEnumerator(name: "ABMON_9", value: 131094)
!398 = !DIEnumerator(name: "ABMON_10", value: 131095)
!399 = !DIEnumerator(name: "ABMON_11", value: 131096)
!400 = !DIEnumerator(name: "ABMON_12", value: 131097)
!401 = !DIEnumerator(name: "MON_1", value: 131098)
!402 = !DIEnumerator(name: "MON_2", value: 131099)
!403 = !DIEnumerator(name: "MON_3", value: 131100)
!404 = !DIEnumerator(name: "MON_4", value: 131101)
!405 = !DIEnumerator(name: "MON_5", value: 131102)
!406 = !DIEnumerator(name: "MON_6", value: 131103)
!407 = !DIEnumerator(name: "MON_7", value: 131104)
!408 = !DIEnumerator(name: "MON_8", value: 131105)
!409 = !DIEnumerator(name: "MON_9", value: 131106)
!410 = !DIEnumerator(name: "MON_10", value: 131107)
!411 = !DIEnumerator(name: "MON_11", value: 131108)
!412 = !DIEnumerator(name: "MON_12", value: 131109)
!413 = !DIEnumerator(name: "AM_STR", value: 131110)
!414 = !DIEnumerator(name: "PM_STR", value: 131111)
!415 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!416 = !DIEnumerator(name: "D_FMT", value: 131113)
!417 = !DIEnumerator(name: "T_FMT", value: 131114)
!418 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!419 = !DIEnumerator(name: "ERA", value: 131116)
!420 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!421 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!422 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!423 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!424 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!425 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!426 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!427 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!428 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!429 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!430 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!431 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!432 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!433 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!434 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!435 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!436 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!437 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!438 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!439 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!440 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!441 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!442 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!443 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!444 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!445 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!446 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!447 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!448 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!449 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!450 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!451 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!452 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!453 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!454 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!455 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!456 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!457 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!458 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!459 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!460 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!461 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!462 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!463 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!464 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!465 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!466 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!467 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!468 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!469 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!470 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!471 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!472 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!473 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!474 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!475 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!476 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!477 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!478 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!479 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!480 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!481 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!482 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!483 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!484 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!485 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!486 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!487 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!488 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!489 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!490 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!491 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!492 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!493 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!494 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!495 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!496 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!497 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!498 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!499 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!500 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!501 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!502 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!503 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!504 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!505 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!506 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!507 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!508 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!509 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!510 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!511 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!512 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!513 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!514 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!515 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!516 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!517 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!518 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!519 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!520 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!521 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!522 = !DIEnumerator(name: "CODESET", value: 14)
!523 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!524 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!525 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!526 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!543 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!544 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!545 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!546 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!547 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!561 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!563 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!564 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!565 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!566 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!567 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!568 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!569 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!570 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!571 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!572 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!573 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!574 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!575 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!576 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!577 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!578 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!579 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!584 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!585 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!586 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!587 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!588 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!589 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!590 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!591 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!592 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!593 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!594 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!595 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!596 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!597 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!598 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!599 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!600 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!601 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!602 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!603 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!604 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!605 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!606 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!607 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!608 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!609 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!610 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!611 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!612 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!613 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!614 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!615 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!616 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!623 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!624 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!627 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!628 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!629 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!630 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!631 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!632 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!633 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!634 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!635 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!636 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!637 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!638 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!639 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!640 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!641 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!642 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!643 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!644 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!645 = !DIEnumerator(name: "THOUSEP", value: 65537)
!646 = !DIEnumerator(name: "__GROUPING", value: 65538)
!647 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!648 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!649 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!650 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!651 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!652 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!653 = !DIEnumerator(name: "__YESSTR", value: 327682)
!654 = !DIEnumerator(name: "__NOSTR", value: 327683)
!655 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!656 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!657 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!658 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!659 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!660 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!661 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!662 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!663 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!664 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!665 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!666 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!667 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!668 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!669 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!670 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!671 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!672 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!673 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!674 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!675 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!676 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!677 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!678 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!679 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!680 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!681 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!682 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!683 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!684 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!685 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!686 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!687 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!688 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!689 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!690 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!691 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!698 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!699 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!700 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!701 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!702 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!703 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!704 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!705 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!706 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!707 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!708 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!709 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!710 = !{!60, !58, !64}
!711 = !{!367}
!712 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!713 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !715, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !716)
!715 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!716 = !{!48}
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230)
!718 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!719 = distinct !DICompileUnit(language: DW_LANG_C99, file: !720, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230)
!720 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!721 = distinct !DICompileUnit(language: DW_LANG_C99, file: !722, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !723, retainedTypes: !728)
!722 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!723 = !{!724}
!724 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !725, line: 41, size: 32, elements: !726)
!725 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!726 = !{!727}
!727 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!728 = !{!60}
!729 = distinct !DICompileUnit(language: DW_LANG_C99, file: !730, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !731, retainedTypes: !745)
!730 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!731 = !{!732}
!732 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !734, file: !733, line: 192, size: 32, elements: !743)
!733 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!734 = distinct !DISubprogram(name: "x2nrealloc", scope: !733, file: !733, line: 180, type: !735, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !738)
!735 = !DISubroutineType(types: !736)
!736 = !{!60, !60, !737, !61}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!738 = !{!739, !740, !741, !742}
!739 = !DILocalVariable(name: "p", arg: 1, scope: !734, file: !733, line: 180, type: !60)
!740 = !DILocalVariable(name: "pn", arg: 2, scope: !734, file: !733, line: 180, type: !737)
!741 = !DILocalVariable(name: "s", arg: 3, scope: !734, file: !733, line: 180, type: !61)
!742 = !DILocalVariable(name: "n", scope: !734, file: !733, line: 182, type: !61)
!743 = !{!744}
!744 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!745 = !{!61, !58, !60}
!746 = distinct !DICompileUnit(language: DW_LANG_C99, file: !747, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230)
!747 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!748 = distinct !DICompileUnit(language: DW_LANG_C99, file: !749, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !728)
!749 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!750 = distinct !DICompileUnit(language: DW_LANG_C99, file: !751, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230)
!751 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!752 = distinct !DICompileUnit(language: DW_LANG_C99, file: !753, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !728)
!753 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!754 = distinct !DICompileUnit(language: DW_LANG_C99, file: !755, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !728)
!755 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!756 = distinct !DICompileUnit(language: DW_LANG_C99, file: !757, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !758)
!757 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!758 = !{!61}
!759 = distinct !DICompileUnit(language: DW_LANG_C99, file: !760, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230)
!760 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!761 = distinct !DICompileUnit(language: DW_LANG_C99, file: !762, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230)
!762 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!763 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!764 = !{i32 2, !"Dwarf Version", i32 4}
!765 = !{i32 2, !"Debug Info Version", i32 3}
!766 = !{i32 1, !"wchar_size", i32 4}
!767 = !{i32 7, !"PIC Level", i32 2}
!768 = !{i32 7, !"PIE Level", i32 2}
!769 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !770, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !63}
!772 = !{!773}
!773 = !DILocalVariable(name: "status", arg: 1, scope: !769, file: !3, line: 223, type: !63)
!774 = !DIExpression()
!775 = !DILocation(line: 223, column: 12, scope: !769)
!776 = !DILocation(line: 225, column: 14, scope: !777)
!777 = distinct !DILexicalBlock(scope: !769, file: !3, line: 225, column: 7)
!778 = !DILocation(line: 225, column: 7, scope: !769)
!779 = !DILocation(line: 226, column: 5, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !3, line: 226, column: 5)
!781 = !{!782, !782, i64 0}
!782 = !{!"any pointer", !783, i64 0}
!783 = !{!"omnipotent char", !784, i64 0}
!784 = !{!"Simple C/C++ TBAA"}
!785 = !DILocation(line: 229, column: 7, scope: !786)
!786 = distinct !DILexicalBlock(scope: !777, file: !3, line: 228, column: 5)
!787 = !DILocation(line: 580, column: 3, scope: !788, inlinedAt: !791)
!788 = distinct !DISubprogram(name: "emit_stdin_note", scope: !35, file: !35, line: 578, type: !789, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !230)
!789 = !DISubroutineType(types: !790)
!790 = !{null}
!791 = distinct !DILocation(line: 237, column: 7, scope: !786)
!792 = !DILocation(line: 244, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !786, file: !3, line: 238, column: 11)
!794 = !DILocation(line: 249, column: 7, scope: !786)
!795 = !DILocation(line: 258, column: 7, scope: !786)
!796 = !DILocation(line: 266, column: 9, scope: !797)
!797 = distinct !DILexicalBlock(scope: !786, file: !3, line: 261, column: 11)
!798 = !DILocation(line: 269, column: 7, scope: !786)
!799 = !DILocation(line: 279, column: 7, scope: !786)
!800 = !DILocation(line: 280, column: 7, scope: !786)
!801 = !DILocation(line: 281, column: 7, scope: !786)
!802 = !DILocation(line: 642, column: 15, scope: !77, inlinedAt: !803)
!803 = distinct !DILocation(line: 288, column: 7, scope: !786)
!804 = !DILocation(line: 651, column: 3, scope: !77, inlinedAt: !803)
!805 = !DILocation(line: 655, column: 29, scope: !77, inlinedAt: !803)
!806 = !DILocation(line: 655, column: 15, scope: !77, inlinedAt: !803)
!807 = !DILocation(line: 656, column: 7, scope: !808, inlinedAt: !803)
!808 = distinct !DILexicalBlock(scope: !77, file: !35, line: 656, column: 7)
!809 = !DILocation(line: 656, column: 19, scope: !808, inlinedAt: !803)
!810 = !DILocation(line: 656, column: 22, scope: !808, inlinedAt: !803)
!811 = !DILocation(line: 656, column: 7, scope: !77, inlinedAt: !803)
!812 = !DILocation(line: 662, column: 7, scope: !813, inlinedAt: !803)
!813 = distinct !DILexicalBlock(scope: !808, file: !35, line: 657, column: 5)
!814 = !DILocation(line: 664, column: 5, scope: !813, inlinedAt: !803)
!815 = !DILocation(line: 665, column: 3, scope: !77, inlinedAt: !803)
!816 = !DILocation(line: 667, column: 3, scope: !77, inlinedAt: !803)
!817 = !DILocation(line: 291, column: 3, scope: !769)
!818 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 854, type: !819, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !822)
!819 = !DISubroutineType(types: !820)
!820 = !{!63, !63, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !836, !839, !842, !843, !846}
!823 = !DILocalVariable(name: "argc", arg: 1, scope: !818, file: !3, line: 854, type: !63)
!824 = !DILocalVariable(name: "argv", arg: 2, scope: !818, file: !3, line: 854, type: !821)
!825 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !818, file: !3, line: 856, type: !175)
!826 = !DILocalVariable(name: "bin_buffer", scope: !818, file: !3, line: 858, type: !64)
!827 = !DILocalVariable(name: "do_check", scope: !818, file: !3, line: 859, type: !70)
!828 = !DILocalVariable(name: "opt", scope: !818, file: !3, line: 860, type: !63)
!829 = !DILocalVariable(name: "ok", scope: !818, file: !3, line: 861, type: !70)
!830 = !DILocalVariable(name: "binary", scope: !818, file: !3, line: 862, type: !63)
!831 = !DILocalVariable(name: "prefix_tag", scope: !818, file: !3, line: 863, type: !70)
!832 = !DILocalVariable(name: "short_opts", scope: !818, file: !3, line: 882, type: !80)
!833 = !DILocalVariable(name: "operand_lim", scope: !818, file: !3, line: 1021, type: !821)
!834 = !DILocalVariable(name: "operandp", scope: !835, file: !3, line: 1025, type: !821)
!835 = distinct !DILexicalBlock(scope: !818, file: !3, line: 1025, column: 3)
!836 = !DILocalVariable(name: "file", scope: !837, file: !3, line: 1027, type: !58)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 1026, column: 5)
!838 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1025, column: 3)
!839 = !DILocalVariable(name: "file_is_binary", scope: !840, file: !3, line: 1033, type: !63)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 1032, column: 9)
!841 = distinct !DILexicalBlock(scope: !837, file: !3, line: 1029, column: 11)
!842 = !DILocalVariable(name: "missing", scope: !840, file: !3, line: 1034, type: !70)
!843 = !DILocalVariable(name: "needs_escape", scope: !844, file: !3, line: 1047, type: !70)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 1039, column: 13)
!845 = distinct !DILexicalBlock(scope: !840, file: !3, line: 1036, column: 15)
!846 = !DILocalVariable(name: "i", scope: !844, file: !3, line: 1066, type: !61)
!847 = !DILocation(line: 653, column: 17, scope: !108, inlinedAt: !848)
!848 = distinct !DILocation(line: 1030, column: 15, scope: !841)
!849 = !DILocation(line: 854, column: 11, scope: !818)
!850 = !DILocation(line: 854, column: 24, scope: !818)
!851 = !DILocation(line: 856, column: 3, scope: !818)
!852 = !DILocation(line: 856, column: 17, scope: !818)
!853 = !DILocalVariable(name: "alignment", arg: 2, scope: !854, file: !35, line: 498, type: !61)
!854 = distinct !DISubprogram(name: "ptr_align", scope: !35, file: !35, line: 498, type: !855, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !859)
!855 = !DISubroutineType(types: !856)
!856 = !{!60, !857, !61}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!859 = !{!860, !853, !861, !862}
!860 = !DILocalVariable(name: "ptr", arg: 1, scope: !854, file: !35, line: 498, type: !857)
!861 = !DILocalVariable(name: "p0", scope: !854, file: !35, line: 500, type: !80)
!862 = !DILocalVariable(name: "p1", scope: !854, file: !35, line: 501, type: !80)
!863 = !DILocation(line: 498, column: 36, scope: !854, inlinedAt: !864)
!864 = distinct !DILocation(line: 858, column: 31, scope: !818)
!865 = !DILocation(line: 501, column: 35, scope: !854, inlinedAt: !864)
!866 = !DILocation(line: 501, column: 15, scope: !854, inlinedAt: !864)
!867 = !DILocation(line: 502, column: 25, scope: !854, inlinedAt: !864)
!868 = !DILocation(line: 502, column: 37, scope: !854, inlinedAt: !864)
!869 = !DILocation(line: 502, column: 23, scope: !854, inlinedAt: !864)
!870 = !DILocation(line: 858, column: 18, scope: !818)
!871 = !DILocation(line: 859, column: 8, scope: !818)
!872 = !DILocation(line: 861, column: 8, scope: !818)
!873 = !DILocation(line: 862, column: 7, scope: !818)
!874 = !DILocation(line: 863, column: 8, scope: !818)
!875 = !DILocation(line: 867, column: 21, scope: !818)
!876 = !DILocation(line: 867, column: 3, scope: !818)
!877 = !DILocation(line: 868, column: 3, scope: !818)
!878 = !DILocation(line: 869, column: 3, scope: !818)
!879 = !DILocation(line: 870, column: 3, scope: !818)
!880 = !DILocation(line: 872, column: 3, scope: !818)
!881 = !DILocation(line: 876, column: 12, scope: !818)
!882 = !DILocation(line: 876, column: 3, scope: !818)
!883 = !DILocation(line: 885, column: 3, scope: !818)
!884 = !DILocation(line: 885, column: 17, scope: !818)
!885 = !DILocation(line: 860, column: 7, scope: !818)
!886 = distinct !{!886, !883, !887}
!887 = !DILocation(line: 938, column: 7, scope: !818)
!888 = !DILocation(line: 905, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !818, file: !3, line: 887, column: 7)
!890 = !DILocation(line: 910, column: 9, scope: !889)
!891 = !DILocation(line: 913, column: 9, scope: !889)
!892 = !DILocation(line: 918, column: 9, scope: !889)
!893 = !DILocation(line: 921, column: 9, scope: !889)
!894 = !DILocation(line: 926, column: 9, scope: !889)
!895 = !DILocation(line: 929, column: 9, scope: !889)
!896 = !DILocation(line: 933, column: 9, scope: !889)
!897 = !DILocation(line: 934, column: 7, scope: !889)
!898 = !DILocation(line: 935, column: 7, scope: !889)
!899 = !DILocation(line: 937, column: 9, scope: !889)
!900 = !DILocation(line: 957, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !818, file: !3, line: 957, column: 7)
!902 = !DILocation(line: 957, column: 18, scope: !901)
!903 = !DILocation(line: 957, column: 22, scope: !901)
!904 = !DILocation(line: 964, column: 19, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !3, line: 958, column: 4)
!906 = !DILocation(line: 964, column: 6, scope: !905)
!907 = !DILocation(line: 965, column: 6, scope: !905)
!908 = !DILocation(line: 968, column: 21, scope: !909)
!909 = distinct !DILexicalBlock(scope: !818, file: !3, line: 968, column: 7)
!910 = !DILocation(line: 968, column: 18, scope: !909)
!911 = !DILocation(line: 970, column: 20, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !3, line: 969, column: 5)
!913 = !DILocation(line: 970, column: 7, scope: !912)
!914 = !DILocation(line: 972, column: 7, scope: !912)
!915 = !DILocation(line: 975, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !818, file: !3, line: 975, column: 7)
!917 = !DILocation(line: 975, column: 19, scope: !916)
!918 = !DILocation(line: 977, column: 20, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !3, line: 976, column: 5)
!920 = !DILocation(line: 977, column: 7, scope: !919)
!921 = !DILocation(line: 979, column: 7, scope: !919)
!922 = !DILocation(line: 982, column: 22, scope: !923)
!923 = distinct !DILexicalBlock(scope: !818, file: !3, line: 982, column: 7)
!924 = !DILocation(line: 985, column: 14, scope: !925)
!925 = distinct !DILexicalBlock(scope: !923, file: !3, line: 983, column: 5)
!926 = !DILocation(line: 984, column: 7, scope: !925)
!927 = !DILocation(line: 987, column: 7, scope: !925)
!928 = !DILocation(line: 990, column: 19, scope: !929)
!929 = distinct !DILexicalBlock(scope: !818, file: !3, line: 990, column: 7)
!930 = !DILocation(line: 993, column: 8, scope: !931)
!931 = distinct !DILexicalBlock(scope: !929, file: !3, line: 991, column: 5)
!932 = !DILocation(line: 992, column: 7, scope: !931)
!933 = !DILocation(line: 994, column: 7, scope: !931)
!934 = !DILocation(line: 997, column: 12, scope: !935)
!935 = distinct !DILexicalBlock(scope: !818, file: !3, line: 997, column: 7)
!936 = !DILocation(line: 1000, column: 8, scope: !937)
!937 = distinct !DILexicalBlock(scope: !935, file: !3, line: 998, column: 5)
!938 = !DILocation(line: 999, column: 7, scope: !937)
!939 = !DILocation(line: 1001, column: 7, scope: !937)
!940 = !DILocation(line: 1004, column: 13, scope: !941)
!941 = distinct !DILexicalBlock(scope: !818, file: !3, line: 1004, column: 7)
!942 = !DILocation(line: 1007, column: 8, scope: !943)
!943 = distinct !DILexicalBlock(scope: !941, file: !3, line: 1005, column: 5)
!944 = !DILocation(line: 1006, column: 7, scope: !943)
!945 = !DILocation(line: 1008, column: 7, scope: !943)
!946 = !DILocation(line: 1011, column: 17, scope: !947)
!947 = distinct !DILexicalBlock(scope: !818, file: !3, line: 1011, column: 7)
!948 = !DILocation(line: 1011, column: 16, scope: !947)
!949 = !DILocation(line: 1011, column: 14, scope: !947)
!950 = !DILocation(line: 1011, column: 7, scope: !818)
!951 = !DILocation(line: 1014, column: 9, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !3, line: 1012, column: 4)
!953 = !DILocation(line: 1013, column: 6, scope: !952)
!954 = !DILocation(line: 1015, column: 6, scope: !952)
!955 = !DILocation(line: 1018, column: 7, scope: !818)
!956 = !DILocation(line: 1021, column: 29, scope: !818)
!957 = !DILocation(line: 1021, column: 10, scope: !818)
!958 = !DILocation(line: 1022, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !818, file: !3, line: 1022, column: 7)
!960 = !{!961, !961, i64 0}
!961 = !{!"int", !783, i64 0}
!962 = !DILocation(line: 1022, column: 14, scope: !959)
!963 = !DILocation(line: 1022, column: 7, scope: !818)
!964 = !DILocation(line: 1023, column: 17, scope: !959)
!965 = !DILocation(line: 1023, column: 20, scope: !959)
!966 = !DILocation(line: 1023, column: 5, scope: !959)
!967 = !DILocation(line: 1025, column: 31, scope: !835)
!968 = !DILocation(line: 1025, column: 15, scope: !835)
!969 = !DILocation(line: 1025, column: 50, scope: !838)
!970 = !DILocation(line: 1025, column: 3, scope: !835)
!971 = !DILocation(line: 1090, column: 23, scope: !972)
!972 = distinct !DILexicalBlock(scope: !818, file: !3, line: 1090, column: 7)
!973 = !DILocation(line: 1027, column: 20, scope: !837)
!974 = !DILocation(line: 1027, column: 13, scope: !837)
!975 = !DILocation(line: 1029, column: 11, scope: !837)
!976 = !DILocation(line: 644, column: 27, scope: !108, inlinedAt: !848)
!977 = !DILocation(line: 647, column: 13, scope: !108, inlinedAt: !848)
!978 = !DILocation(line: 648, column: 13, scope: !108, inlinedAt: !848)
!979 = !DILocation(line: 649, column: 13, scope: !108, inlinedAt: !848)
!980 = !DILocation(line: 650, column: 13, scope: !108, inlinedAt: !848)
!981 = !DILocation(line: 651, column: 8, scope: !108, inlinedAt: !848)
!982 = !DILocation(line: 652, column: 8, scope: !108, inlinedAt: !848)
!983 = !DILocation(line: 653, column: 3, scope: !108, inlinedAt: !848)
!984 = !DILocation(line: 498, column: 36, scope: !854, inlinedAt: !985)
!985 = distinct !DILocation(line: 655, column: 31, scope: !108, inlinedAt: !848)
!986 = !DILocation(line: 501, column: 15, scope: !854, inlinedAt: !985)
!987 = !DILocation(line: 655, column: 18, scope: !108, inlinedAt: !848)
!988 = !DILocation(line: 657, column: 3, scope: !108, inlinedAt: !848)
!989 = !DILocation(line: 658, column: 3, scope: !108, inlinedAt: !848)
!990 = !DILocation(line: 659, column: 19, scope: !108, inlinedAt: !848)
!991 = !DILocation(line: 661, column: 7, scope: !108, inlinedAt: !848)
!992 = !DILocation(line: 664, column: 24, scope: !993, inlinedAt: !848)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 662, column: 5)
!994 = distinct !DILexicalBlock(scope: !108, file: !3, line: 661, column: 7)
!995 = !DILocation(line: 665, column: 26, scope: !993, inlinedAt: !848)
!996 = !DILocation(line: 646, column: 9, scope: !108, inlinedAt: !848)
!997 = !DILocation(line: 666, column: 5, scope: !993, inlinedAt: !848)
!998 = !DILocation(line: 669, column: 26, scope: !999, inlinedAt: !848)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 668, column: 5)
!1000 = !DILocation(line: 670, column: 28, scope: !1001, inlinedAt: !848)
!1001 = distinct !DILexicalBlock(scope: !999, file: !3, line: 670, column: 11)
!1002 = !DILocation(line: 670, column: 11, scope: !999, inlinedAt: !848)
!1003 = !DILocation(line: 672, column: 21, scope: !1004, inlinedAt: !848)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 671, column: 9)
!1005 = !DILocation(line: 672, column: 34, scope: !1004, inlinedAt: !848)
!1006 = !DILocation(line: 672, column: 11, scope: !1004, inlinedAt: !848)
!1007 = !DILocation(line: 673, column: 11, scope: !1004, inlinedAt: !848)
!1008 = !DILocation(line: 656, column: 13, scope: !108, inlinedAt: !848)
!1009 = !DILocation(line: 657, column: 9, scope: !108, inlinedAt: !848)
!1010 = !DILocation(line: 678, column: 8, scope: !108, inlinedAt: !848)
!1011 = !DILocation(line: 658, column: 10, scope: !108, inlinedAt: !848)
!1012 = !DILocation(line: 679, column: 24, scope: !108, inlinedAt: !848)
!1013 = !{!1014, !1014, i64 0}
!1014 = !{!"long", !783, i64 0}
!1015 = !DILocation(line: 680, column: 3, scope: !108, inlinedAt: !848)
!1016 = distinct !{!1016, !1017, !1018}
!1017 = !DILocation(line: 680, column: 3, scope: !108)
!1018 = !DILocation(line: 790, column: 64, scope: !108)
!1019 = !DILocation(line: 687, column: 7, scope: !184, inlinedAt: !848)
!1020 = !DILocation(line: 688, column: 23, scope: !1021, inlinedAt: !848)
!1021 = distinct !DILexicalBlock(scope: !184, file: !3, line: 688, column: 11)
!1022 = !DILocation(line: 688, column: 11, scope: !184, inlinedAt: !848)
!1023 = !DILocation(line: 689, column: 9, scope: !1021, inlinedAt: !848)
!1024 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1025, file: !1026, line: 115, type: !821)
!1025 = distinct !DISubprogram(name: "getline", scope: !1026, file: !1026, line: 115, type: !1027, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1029)
!1026 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!190, !821, !737, !114}
!1029 = !{!1024, !1030, !1031}
!1030 = !DILocalVariable(name: "__n", arg: 2, scope: !1025, file: !1026, line: 115, type: !737)
!1031 = !DILocalVariable(name: "__stream", arg: 3, scope: !1025, file: !1026, line: 115, type: !114)
!1032 = !DILocation(line: 115, column: 17, scope: !1025, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 692, column: 21, scope: !184, inlinedAt: !848)
!1034 = !DILocation(line: 115, column: 36, scope: !1025, inlinedAt: !1033)
!1035 = !DILocation(line: 115, column: 47, scope: !1025, inlinedAt: !1033)
!1036 = !DILocation(line: 117, column: 10, scope: !1025, inlinedAt: !1033)
!1037 = !DILocation(line: 685, column: 15, scope: !184, inlinedAt: !848)
!1038 = !DILocation(line: 693, column: 23, scope: !1039, inlinedAt: !848)
!1039 = distinct !DILexicalBlock(scope: !184, file: !3, line: 693, column: 11)
!1040 = !DILocation(line: 693, column: 11, scope: !184, inlinedAt: !848)
!1041 = !DILocation(line: 697, column: 11, scope: !1042, inlinedAt: !848)
!1042 = distinct !DILexicalBlock(scope: !184, file: !3, line: 697, column: 11)
!1043 = !{!783, !783, i64 0}
!1044 = !DILocation(line: 697, column: 19, scope: !1042, inlinedAt: !848)
!1045 = !DILocation(line: 697, column: 11, scope: !184, inlinedAt: !848)
!1046 = !DILocation(line: 701, column: 28, scope: !1047, inlinedAt: !848)
!1047 = distinct !DILexicalBlock(scope: !184, file: !3, line: 701, column: 11)
!1048 = !DILocation(line: 701, column: 11, scope: !1047, inlinedAt: !848)
!1049 = !DILocation(line: 701, column: 33, scope: !1047, inlinedAt: !848)
!1050 = !DILocation(line: 701, column: 11, scope: !184, inlinedAt: !848)
!1051 = !DILocation(line: 702, column: 29, scope: !1047, inlinedAt: !848)
!1052 = !DILocation(line: 704, column: 23, scope: !193, inlinedAt: !848)
!1053 = !DILocation(line: 702, column: 9, scope: !1047, inlinedAt: !848)
!1054 = !DILocalVariable(name: "s", arg: 1, scope: !1055, file: !3, line: 397, type: !58)
!1055 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 397, type: !1056, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1059)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!70, !58, !61, !1058, !222, !821}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1059 = !{!1054, !1060, !1061, !1062, !1063, !1064, !1065, !1066}
!1060 = !DILocalVariable(name: "s_len", arg: 2, scope: !1055, file: !3, line: 397, type: !61)
!1061 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1055, file: !3, line: 398, type: !1058)
!1062 = !DILocalVariable(name: "binary", arg: 4, scope: !1055, file: !3, line: 398, type: !222)
!1063 = !DILocalVariable(name: "file_name", arg: 5, scope: !1055, file: !3, line: 398, type: !821)
!1064 = !DILocalVariable(name: "escaped_filename", scope: !1055, file: !3, line: 400, type: !70)
!1065 = !DILocalVariable(name: "algo_name_len", scope: !1055, file: !3, line: 401, type: !61)
!1066 = !DILocalVariable(name: "i", scope: !1055, file: !3, line: 403, type: !61)
!1067 = !DILocation(line: 397, column: 16, scope: !1055, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 704, column: 14, scope: !193, inlinedAt: !848)
!1069 = !DILocation(line: 397, column: 26, scope: !1055, inlinedAt: !1068)
!1070 = !DILocation(line: 400, column: 8, scope: !1055, inlinedAt: !1068)
!1071 = !DILocation(line: 403, column: 10, scope: !1055, inlinedAt: !1068)
!1072 = !DILocation(line: 404, column: 3, scope: !1055, inlinedAt: !1068)
!1073 = !DILocation(line: 404, column: 10, scope: !1055, inlinedAt: !1068)
!1074 = !DILocation(line: 405, column: 5, scope: !1055, inlinedAt: !1068)
!1075 = distinct !{!1075, !1076, !1077}
!1076 = !DILocation(line: 404, column: 3, scope: !1055)
!1077 = !DILocation(line: 405, column: 7, scope: !1055)
!1078 = !DILocation(line: 409, column: 7, scope: !1079, inlinedAt: !1068)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 408, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 407, column: 7)
!1081 = !DILocation(line: 411, column: 5, scope: !1079, inlinedAt: !1068)
!1082 = !DILocation(line: 401, column: 10, scope: !1055, inlinedAt: !1068)
!1083 = !DILocation(line: 416, column: 7, scope: !1084, inlinedAt: !1068)
!1084 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 416, column: 7)
!1085 = !DILocation(line: 416, column: 7, scope: !1055, inlinedAt: !1068)
!1086 = !DILocation(line: 418, column: 9, scope: !1087, inlinedAt: !1068)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 417, column: 5)
!1088 = !DILocation(line: 453, column: 11, scope: !1089, inlinedAt: !1068)
!1089 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 453, column: 11)
!1090 = !DILocation(line: 453, column: 16, scope: !1089, inlinedAt: !1068)
!1091 = !DILocation(line: 454, column: 9, scope: !1089, inlinedAt: !1068)
!1092 = !DILocation(line: 453, column: 11, scope: !1087, inlinedAt: !1068)
!1093 = !DILocation(line: 455, column: 11, scope: !1094, inlinedAt: !1068)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 455, column: 11)
!1095 = !DILocation(line: 455, column: 16, scope: !1094, inlinedAt: !1068)
!1096 = !DILocation(line: 455, column: 11, scope: !1087, inlinedAt: !1068)
!1097 = !DILocation(line: 457, column: 11, scope: !1098, inlinedAt: !1068)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 456, column: 9)
!1099 = !DILocation(line: 459, column: 33, scope: !1098, inlinedAt: !1068)
!1100 = !DILocation(line: 459, column: 44, scope: !1098, inlinedAt: !1068)
!1101 = !DILocalVariable(name: "s", arg: 1, scope: !1102, file: !3, line: 354, type: !58)
!1102 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 354, type: !1103, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!70, !58, !61, !1058, !821, !70}
!1105 = !{!1101, !1106, !1107, !1108, !1109, !1110}
!1106 = !DILocalVariable(name: "s_len", arg: 2, scope: !1102, file: !3, line: 354, type: !61)
!1107 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1102, file: !3, line: 354, type: !1058)
!1108 = !DILocalVariable(name: "file_name", arg: 4, scope: !1102, file: !3, line: 355, type: !821)
!1109 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1102, file: !3, line: 355, type: !70)
!1110 = !DILocalVariable(name: "i", scope: !1102, file: !3, line: 357, type: !61)
!1111 = !DILocation(line: 354, column: 20, scope: !1102, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 459, column: 18, scope: !1098, inlinedAt: !1068)
!1113 = !DILocation(line: 354, column: 30, scope: !1102, inlinedAt: !1112)
!1114 = !DILocation(line: 355, column: 37, scope: !1102, inlinedAt: !1112)
!1115 = !DILocation(line: 359, column: 13, scope: !1116, inlinedAt: !1112)
!1116 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 359, column: 7)
!1117 = !DILocation(line: 359, column: 7, scope: !1102, inlinedAt: !1112)
!1118 = !DILocation(line: 357, column: 10, scope: !1102, inlinedAt: !1112)
!1119 = !DILocation(line: 364, column: 10, scope: !1102, inlinedAt: !1112)
!1120 = !DILocation(line: 364, column: 12, scope: !1102, inlinedAt: !1112)
!1121 = !DILocation(line: 364, column: 15, scope: !1102, inlinedAt: !1112)
!1122 = distinct !{!1122, !1123, !1124}
!1123 = !DILocation(line: 364, column: 3, scope: !1102)
!1124 = !DILocation(line: 365, column: 6, scope: !1102)
!1125 = !DILocation(line: 364, column: 20, scope: !1102, inlinedAt: !1112)
!1126 = !DILocation(line: 364, column: 3, scope: !1102, inlinedAt: !1112)
!1127 = !DILocation(line: 367, column: 7, scope: !1128, inlinedAt: !1112)
!1128 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 367, column: 7)
!1129 = !DILocation(line: 367, column: 12, scope: !1128, inlinedAt: !1112)
!1130 = !DILocation(line: 367, column: 7, scope: !1102, inlinedAt: !1112)
!1131 = !DILocation(line: 372, column: 24, scope: !1132, inlinedAt: !1112)
!1132 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 372, column: 7)
!1133 = !DILocalVariable(name: "s", arg: 1, scope: !1134, file: !3, line: 305, type: !58)
!1134 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 305, type: !1135, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!58, !58, !61}
!1137 = !{!1133, !1138, !1139, !1140}
!1138 = !DILocalVariable(name: "s_len", arg: 2, scope: !1134, file: !3, line: 305, type: !61)
!1139 = !DILocalVariable(name: "dst", scope: !1134, file: !3, line: 307, type: !58)
!1140 = !DILocalVariable(name: "i", scope: !1141, file: !3, line: 309, type: !61)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 309, column: 3)
!1142 = !DILocation(line: 305, column: 26, scope: !1134, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 372, column: 27, scope: !1132, inlinedAt: !1112)
!1144 = !DILocation(line: 305, column: 36, scope: !1134, inlinedAt: !1143)
!1145 = !DILocation(line: 307, column: 9, scope: !1134, inlinedAt: !1143)
!1146 = !DILocation(line: 309, column: 15, scope: !1141, inlinedAt: !1143)
!1147 = !DILocation(line: 309, column: 3, scope: !1141, inlinedAt: !1143)
!1148 = !DILocation(line: 311, column: 15, scope: !1149, inlinedAt: !1143)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 310, column: 5)
!1150 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 309, column: 3)
!1151 = !DILocation(line: 311, column: 7, scope: !1149, inlinedAt: !1143)
!1152 = !DILocation(line: 314, column: 17, scope: !1153, inlinedAt: !1143)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 314, column: 15)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 312, column: 9)
!1155 = !DILocation(line: 314, column: 15, scope: !1154, inlinedAt: !1143)
!1156 = !DILocation(line: 319, column: 11, scope: !1154, inlinedAt: !1143)
!1157 = !DILocation(line: 320, column: 19, scope: !1154, inlinedAt: !1143)
!1158 = !DILocation(line: 320, column: 11, scope: !1154, inlinedAt: !1143)
!1159 = !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)
!1160 = !DILocation(line: 324, column: 15, scope: !1161, inlinedAt: !1143)
!1161 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 321, column: 13)
!1162 = !DILocation(line: 309, column: 34, scope: !1150, inlinedAt: !1143)
!1163 = !DILocation(line: 309, column: 24, scope: !1150, inlinedAt: !1143)
!1164 = distinct !{!1164, !1165, !1166}
!1165 = !DILocation(line: 309, column: 3, scope: !1141)
!1166 = !DILocation(line: 342, column: 5, scope: !1141)
!1167 = !DILocation(line: 343, column: 11, scope: !1168, inlinedAt: !1143)
!1168 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 343, column: 7)
!1169 = !DILocation(line: 343, column: 7, scope: !1134, inlinedAt: !1143)
!1170 = !DILocation(line: 344, column: 10, scope: !1168, inlinedAt: !1143)
!1171 = !DILocation(line: 344, column: 5, scope: !1168, inlinedAt: !1143)
!1172 = !DILocation(line: 375, column: 10, scope: !1102, inlinedAt: !1112)
!1173 = !DILocation(line: 377, column: 3, scope: !1102, inlinedAt: !1112)
!1174 = !DILocation(line: 377, column: 10, scope: !1102, inlinedAt: !1112)
!1175 = !DILocation(line: 378, column: 6, scope: !1102, inlinedAt: !1112)
!1176 = distinct !{!1176, !1177, !1178}
!1177 = !DILocation(line: 377, column: 3, scope: !1102)
!1178 = !DILocation(line: 378, column: 6, scope: !1102)
!1179 = !DILocation(line: 385, column: 10, scope: !1102, inlinedAt: !1112)
!1180 = distinct !{!1180, !1181, !1182}
!1181 = !DILocation(line: 385, column: 3, scope: !1102)
!1182 = !DILocation(line: 386, column: 6, scope: !1102)
!1183 = !DILocation(line: 469, column: 13, scope: !1184, inlinedAt: !1068)
!1184 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 469, column: 7)
!1185 = !DILocation(line: 469, column: 45, scope: !1184, inlinedAt: !1068)
!1186 = !DILocation(line: 469, column: 50, scope: !1184, inlinedAt: !1068)
!1187 = !DILocation(line: 469, column: 44, scope: !1184, inlinedAt: !1068)
!1188 = !DILocation(line: 469, column: 42, scope: !1184, inlinedAt: !1068)
!1189 = !DILocation(line: 469, column: 17, scope: !1184, inlinedAt: !1068)
!1190 = !DILocation(line: 469, column: 7, scope: !1055, inlinedAt: !1068)
!1191 = !DILocation(line: 489, column: 5, scope: !1055, inlinedAt: !1068)
!1192 = !DILocation(line: 490, column: 8, scope: !1193, inlinedAt: !1068)
!1193 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 490, column: 7)
!1194 = !DILocation(line: 493, column: 6, scope: !1055, inlinedAt: !1068)
!1195 = !DILocation(line: 493, column: 10, scope: !1055, inlinedAt: !1068)
!1196 = !DILocation(line: 496, column: 14, scope: !1197, inlinedAt: !1068)
!1197 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 496, column: 7)
!1198 = !DILocation(line: 496, column: 18, scope: !1197, inlinedAt: !1068)
!1199 = !DILocation(line: 496, column: 24, scope: !1197, inlinedAt: !1068)
!1200 = !DILocation(line: 496, column: 28, scope: !1197, inlinedAt: !1068)
!1201 = !DILocation(line: 496, column: 40, scope: !1197, inlinedAt: !1068)
!1202 = !DILocation(line: 504, column: 11, scope: !1203, inlinedAt: !1068)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 504, column: 11)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 497, column: 5)
!1205 = !DILocation(line: 504, column: 24, scope: !1203, inlinedAt: !1068)
!1206 = !DILocation(line: 504, column: 11, scope: !1204, inlinedAt: !1068)
!1207 = !DILocation(line: 506, column: 20, scope: !1204, inlinedAt: !1068)
!1208 = !DILocation(line: 507, column: 5, scope: !1204, inlinedAt: !1068)
!1209 = !DILocation(line: 508, column: 12, scope: !1210, inlinedAt: !1068)
!1210 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 508, column: 12)
!1211 = !DILocation(line: 508, column: 25, scope: !1210, inlinedAt: !1068)
!1212 = !DILocation(line: 508, column: 12, scope: !1197, inlinedAt: !1068)
!1213 = !DILocation(line: 510, column: 20, scope: !1214, inlinedAt: !1068)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 509, column: 5)
!1215 = !DILocation(line: 511, column: 21, scope: !1214, inlinedAt: !1068)
!1216 = !DILocation(line: 512, column: 5, scope: !1214, inlinedAt: !1068)
!1217 = !DILocation(line: 516, column: 17, scope: !1055, inlinedAt: !1068)
!1218 = !DILocation(line: 518, column: 7, scope: !1055, inlinedAt: !1068)
!1219 = !DILocation(line: 519, column: 44, scope: !1220, inlinedAt: !1068)
!1220 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 518, column: 7)
!1221 = !DILocation(line: 305, column: 26, scope: !1134, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 519, column: 12, scope: !1220, inlinedAt: !1068)
!1223 = !DILocation(line: 305, column: 36, scope: !1134, inlinedAt: !1222)
!1224 = !DILocation(line: 307, column: 9, scope: !1134, inlinedAt: !1222)
!1225 = !DILocation(line: 309, column: 15, scope: !1141, inlinedAt: !1222)
!1226 = !DILocation(line: 309, column: 24, scope: !1150, inlinedAt: !1222)
!1227 = !DILocation(line: 309, column: 3, scope: !1141, inlinedAt: !1222)
!1228 = !DILocation(line: 311, column: 15, scope: !1149, inlinedAt: !1222)
!1229 = !DILocation(line: 311, column: 7, scope: !1149, inlinedAt: !1222)
!1230 = !DILocation(line: 314, column: 17, scope: !1153, inlinedAt: !1222)
!1231 = !DILocation(line: 314, column: 15, scope: !1154, inlinedAt: !1222)
!1232 = !DILocation(line: 319, column: 11, scope: !1154, inlinedAt: !1222)
!1233 = !DILocation(line: 320, column: 19, scope: !1154, inlinedAt: !1222)
!1234 = !DILocation(line: 320, column: 11, scope: !1154, inlinedAt: !1222)
!1235 = !DILocation(line: 324, column: 15, scope: !1161, inlinedAt: !1222)
!1236 = !DILocation(line: 309, column: 34, scope: !1150, inlinedAt: !1222)
!1237 = !DILocation(line: 343, column: 15, scope: !1168, inlinedAt: !1222)
!1238 = !DILocation(line: 343, column: 11, scope: !1168, inlinedAt: !1222)
!1239 = !DILocation(line: 343, column: 7, scope: !1134, inlinedAt: !1222)
!1240 = !DILocation(line: 344, column: 10, scope: !1168, inlinedAt: !1222)
!1241 = !DILocation(line: 344, column: 5, scope: !1168, inlinedAt: !1222)
!1242 = !DILocation(line: 519, column: 49, scope: !1220, inlinedAt: !1068)
!1243 = !DILocation(line: 705, column: 14, scope: !193, inlinedAt: !848)
!1244 = !DILocation(line: 705, column: 29, scope: !193, inlinedAt: !848)
!1245 = !DILocation(line: 682, column: 13, scope: !184, inlinedAt: !848)
!1246 = !DILocation(line: 705, column: 32, scope: !193, inlinedAt: !848)
!1247 = !DILocation(line: 706, column: 14, scope: !193, inlinedAt: !848)
!1248 = !DILocation(line: 684, column: 22, scope: !184, inlinedAt: !848)
!1249 = !DILocalVariable(name: "s", arg: 1, scope: !1250, file: !3, line: 527, type: !1253)
!1250 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 527, type: !1251, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1254)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!70, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!1254 = !{!1249, !1255}
!1255 = !DILocalVariable(name: "i", scope: !1250, file: !3, line: 529, type: !249)
!1256 = !DILocation(line: 527, column: 34, scope: !1250, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 706, column: 17, scope: !193, inlinedAt: !848)
!1258 = !DILocation(line: 529, column: 16, scope: !1250, inlinedAt: !1257)
!1259 = !DILocation(line: 530, column: 3, scope: !1260, inlinedAt: !1257)
!1260 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 530, column: 3)
!1261 = !DILocation(line: 532, column: 12, scope: !1262, inlinedAt: !1257)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 532, column: 11)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 531, column: 5)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 530, column: 3)
!1265 = !{!1266, !1266, i64 0}
!1266 = !{!"short", !783, i64 0}
!1267 = !DILocation(line: 532, column: 11, scope: !1263, inlinedAt: !1257)
!1268 = !DILocation(line: 534, column: 7, scope: !1263, inlinedAt: !1257)
!1269 = !DILocation(line: 536, column: 10, scope: !1250, inlinedAt: !1257)
!1270 = !DILocation(line: 536, column: 13, scope: !1250, inlinedAt: !1257)
!1271 = !DILocation(line: 704, column: 11, scope: !184, inlinedAt: !848)
!1272 = !DILocation(line: 708, column: 11, scope: !1273, inlinedAt: !848)
!1273 = distinct !DILexicalBlock(scope: !193, file: !3, line: 707, column: 9)
!1274 = !DILocation(line: 710, column: 15, scope: !1273, inlinedAt: !848)
!1275 = !DILocation(line: 713, column: 22, scope: !1276, inlinedAt: !848)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 711, column: 13)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 710, column: 15)
!1278 = !DILocation(line: 715, column: 22, scope: !1276, inlinedAt: !848)
!1279 = !DILocation(line: 712, column: 15, scope: !1276, inlinedAt: !848)
!1280 = !DILocation(line: 717, column: 13, scope: !1276, inlinedAt: !848)
!1281 = !DILocation(line: 719, column: 11, scope: !1273, inlinedAt: !848)
!1282 = !DILocation(line: 720, column: 9, scope: !1273, inlinedAt: !848)
!1283 = !DILocation(line: 728, column: 16, scope: !192, inlinedAt: !848)
!1284 = !DILocation(line: 728, column: 11, scope: !192, inlinedAt: !848)
!1285 = !DILocation(line: 731, column: 45, scope: !192, inlinedAt: !848)
!1286 = !DILocation(line: 731, column: 48, scope: !192, inlinedAt: !848)
!1287 = !DILocation(line: 735, column: 16, scope: !192, inlinedAt: !848)
!1288 = !DILocation(line: 737, column: 15, scope: !192, inlinedAt: !848)
!1289 = !DILocation(line: 739, column: 15, scope: !1290, inlinedAt: !848)
!1290 = distinct !DILexicalBlock(scope: !199, file: !3, line: 738, column: 13)
!1291 = !DILocation(line: 740, column: 19, scope: !1290, inlinedAt: !848)
!1292 = !DILocation(line: 742, column: 23, scope: !1293, inlinedAt: !848)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 741, column: 17)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 740, column: 19)
!1295 = !DILocalVariable(name: "__c", arg: 1, scope: !1296, file: !1026, line: 105, type: !63)
!1296 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1026, file: !1026, line: 105, type: !1297, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!63, !63}
!1299 = !{!1295}
!1300 = !DILocation(line: 105, column: 23, scope: !1296, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 743, column: 21, scope: !1302, inlinedAt: !848)
!1302 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 742, column: 23)
!1303 = !DILocation(line: 107, column: 10, scope: !1296, inlinedAt: !1301)
!1304 = !{!1305, !782, i64 40}
!1305 = !{!"_IO_FILE", !961, i64 0, !782, i64 8, !782, i64 16, !782, i64 24, !782, i64 32, !782, i64 40, !782, i64 48, !782, i64 56, !782, i64 64, !782, i64 72, !782, i64 80, !782, i64 88, !782, i64 96, !782, i64 104, !961, i64 112, !961, i64 116, !1014, i64 120, !1266, i64 128, !783, i64 130, !783, i64 131, !782, i64 136, !1014, i64 144, !782, i64 152, !782, i64 160, !782, i64 168, !782, i64 176, !1014, i64 184, !961, i64 192, !783, i64 196}
!1306 = !{!1305, !782, i64 48}
!1307 = !{!"branch_weights", i32 2000, i32 1}
!1308 = !DILocation(line: 744, column: 19, scope: !1293, inlinedAt: !848)
!1309 = !DILocation(line: 745, column: 19, scope: !1293, inlinedAt: !848)
!1310 = !DILocation(line: 746, column: 17, scope: !1293, inlinedAt: !848)
!1311 = !DILocation(line: 748, column: 35, scope: !198, inlinedAt: !848)
!1312 = !DILocation(line: 748, column: 38, scope: !198, inlinedAt: !848)
!1313 = !DILocation(line: 755, column: 58, scope: !197, inlinedAt: !848)
!1314 = !DILocation(line: 755, column: 22, scope: !197, inlinedAt: !848)
!1315 = !DILocation(line: 756, column: 22, scope: !197, inlinedAt: !848)
!1316 = !DILocation(line: 760, column: 15, scope: !206, inlinedAt: !848)
!1317 = !DILocation(line: 762, column: 23, scope: !1318, inlinedAt: !848)
!1318 = distinct !DILexicalBlock(scope: !202, file: !3, line: 762, column: 23)
!1319 = !DILocation(line: 762, column: 23, scope: !202, inlinedAt: !848)
!1320 = !DILocation(line: 763, column: 34, scope: !203, inlinedAt: !848)
!1321 = !DILocation(line: 763, column: 50, scope: !203, inlinedAt: !848)
!1322 = !DILocation(line: 763, column: 26, scope: !203, inlinedAt: !848)
!1323 = !DILocation(line: 763, column: 23, scope: !203, inlinedAt: !848)
!1324 = !DILocation(line: 764, column: 23, scope: !203, inlinedAt: !848)
!1325 = !DILocation(line: 764, column: 27, scope: !1326, inlinedAt: !848)
!1326 = distinct !DILexicalBlock(scope: !208, file: !3, line: 764, column: 27)
!1327 = !DILocation(line: 764, column: 27, scope: !208, inlinedAt: !848)
!1328 = !DILocation(line: 765, column: 55, scope: !203, inlinedAt: !848)
!1329 = !DILocation(line: 765, column: 31, scope: !203, inlinedAt: !848)
!1330 = !DILocation(line: 765, column: 30, scope: !203, inlinedAt: !848)
!1331 = !DILocation(line: 765, column: 27, scope: !203, inlinedAt: !848)
!1332 = !DILocation(line: 762, column: 23, scope: !204, inlinedAt: !848)
!1333 = !DILocation(line: 760, column: 53, scope: !205, inlinedAt: !848)
!1334 = !DILocation(line: 760, column: 33, scope: !205, inlinedAt: !848)
!1335 = distinct !{!1335, !1336, !1337}
!1336 = !DILocation(line: 760, column: 15, scope: !206)
!1337 = !DILocation(line: 767, column: 17, scope: !206)
!1338 = !DILocation(line: 768, column: 23, scope: !1339, inlinedAt: !848)
!1339 = distinct !DILexicalBlock(scope: !197, file: !3, line: 768, column: 19)
!1340 = !DILocation(line: 769, column: 17, scope: !1339, inlinedAt: !848)
!1341 = !DILocation(line: 768, column: 19, scope: !197, inlinedAt: !848)
!1342 = !DILocation(line: 773, column: 19, scope: !197, inlinedAt: !848)
!1343 = !DILocation(line: 775, column: 47, scope: !1344, inlinedAt: !848)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 775, column: 23)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 774, column: 17)
!1346 = distinct !DILexicalBlock(scope: !197, file: !3, line: 773, column: 19)
!1347 = !DILocation(line: 775, column: 23, scope: !1345, inlinedAt: !848)
!1348 = !DILocation(line: 777, column: 27, scope: !1349, inlinedAt: !848)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 776, column: 21)
!1350 = !DILocation(line: 105, column: 23, scope: !1296, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 778, column: 25, scope: !1352, inlinedAt: !848)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 777, column: 27)
!1353 = !DILocation(line: 107, column: 10, scope: !1296, inlinedAt: !1351)
!1354 = !DILocation(line: 779, column: 23, scope: !1349, inlinedAt: !848)
!1355 = !DILocation(line: 782, column: 23, scope: !1345, inlinedAt: !848)
!1356 = !DILocation(line: 783, column: 21, scope: !1357, inlinedAt: !848)
!1357 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 782, column: 23)
!1358 = !DILocation(line: 784, column: 28, scope: !1357, inlinedAt: !848)
!1359 = !DILocation(line: 785, column: 21, scope: !1360, inlinedAt: !848)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 784, column: 28)
!1361 = !DILocation(line: 788, column: 9, scope: !193, inlinedAt: !848)
!1362 = !DILocalVariable(name: "__stream", arg: 1, scope: !1363, file: !1026, line: 125, type: !114)
!1363 = distinct !DISubprogram(name: "feof_unlocked", scope: !1026, file: !1026, line: 125, type: !1364, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!63, !114}
!1366 = !{!1362}
!1367 = !DILocation(line: 125, column: 1, scope: !1363, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 790, column: 11, scope: !108, inlinedAt: !848)
!1369 = !DILocation(line: 127, column: 10, scope: !1363, inlinedAt: !1368)
!1370 = !{!1305, !961, i64 0}
!1371 = !DILocation(line: 790, column: 35, scope: !108, inlinedAt: !848)
!1372 = !DILocalVariable(name: "__stream", arg: 1, scope: !1373, file: !1026, line: 132, type: !114)
!1373 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1026, file: !1026, line: 132, type: !1364, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1374)
!1374 = !{!1372}
!1375 = !DILocation(line: 132, column: 1, scope: !1373, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 790, column: 39, scope: !108, inlinedAt: !848)
!1377 = !DILocation(line: 792, column: 9, scope: !108, inlinedAt: !848)
!1378 = !DILocation(line: 792, column: 3, scope: !108, inlinedAt: !848)
!1379 = !DILocation(line: 132, column: 1, scope: !1373, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 794, column: 7, scope: !1381, inlinedAt: !848)
!1381 = distinct !DILexicalBlock(scope: !108, file: !3, line: 794, column: 7)
!1382 = !DILocation(line: 134, column: 10, scope: !1373, inlinedAt: !1380)
!1383 = !DILocation(line: 794, column: 7, scope: !1381, inlinedAt: !848)
!1384 = !DILocation(line: 794, column: 7, scope: !108, inlinedAt: !848)
!1385 = !DILocation(line: 796, column: 20, scope: !1386, inlinedAt: !848)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 795, column: 5)
!1387 = !DILocation(line: 796, column: 41, scope: !1386, inlinedAt: !848)
!1388 = !DILocation(line: 796, column: 7, scope: !1386, inlinedAt: !848)
!1389 = !DILocation(line: 797, column: 7, scope: !1386, inlinedAt: !848)
!1390 = !DILocation(line: 800, column: 17, scope: !1391, inlinedAt: !848)
!1391 = distinct !DILexicalBlock(scope: !108, file: !3, line: 800, column: 7)
!1392 = !DILocation(line: 800, column: 20, scope: !1391, inlinedAt: !848)
!1393 = !DILocation(line: 800, column: 46, scope: !1391, inlinedAt: !848)
!1394 = !DILocation(line: 800, column: 7, scope: !108, inlinedAt: !848)
!1395 = !DILocation(line: 802, column: 17, scope: !1396, inlinedAt: !848)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 801, column: 5)
!1397 = !DILocation(line: 802, column: 30, scope: !1396, inlinedAt: !848)
!1398 = !DILocation(line: 802, column: 7, scope: !1396, inlinedAt: !848)
!1399 = !DILocation(line: 803, column: 7, scope: !1396, inlinedAt: !848)
!1400 = !DILocation(line: 806, column: 9, scope: !1401, inlinedAt: !848)
!1401 = distinct !DILexicalBlock(scope: !108, file: !3, line: 806, column: 7)
!1402 = !DILocation(line: 806, column: 7, scope: !108, inlinedAt: !848)
!1403 = !DILocation(line: 814, column: 11, scope: !1404, inlinedAt: !848)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 813, column: 5)
!1405 = !DILocation(line: 847, column: 14, scope: !108, inlinedAt: !848)
!1406 = !DILocation(line: 816, column: 36, scope: !1407, inlinedAt: !848)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 816, column: 15)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 815, column: 9)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 814, column: 11)
!1410 = !DILocation(line: 816, column: 15, scope: !1408, inlinedAt: !848)
!1411 = !DILocation(line: 818, column: 21, scope: !1407, inlinedAt: !848)
!1412 = !DILocation(line: 817, column: 13, scope: !1407, inlinedAt: !848)
!1413 = !DILocation(line: 824, column: 39, scope: !1414, inlinedAt: !848)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 824, column: 15)
!1415 = !DILocation(line: 824, column: 15, scope: !1408, inlinedAt: !848)
!1416 = !DILocation(line: 826, column: 21, scope: !1414, inlinedAt: !848)
!1417 = !DILocation(line: 825, column: 13, scope: !1414, inlinedAt: !848)
!1418 = !DILocation(line: 832, column: 38, scope: !1419, inlinedAt: !848)
!1419 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 832, column: 15)
!1420 = !DILocation(line: 832, column: 15, scope: !1408, inlinedAt: !848)
!1421 = !DILocation(line: 834, column: 21, scope: !1419, inlinedAt: !848)
!1422 = !DILocation(line: 833, column: 13, scope: !1419, inlinedAt: !848)
!1423 = !DILocation(line: 840, column: 35, scope: !1424, inlinedAt: !848)
!1424 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 840, column: 15)
!1425 = !DILocation(line: 840, column: 30, scope: !1424, inlinedAt: !848)
!1426 = !DILocation(line: 841, column: 26, scope: !1424, inlinedAt: !848)
!1427 = !DILocation(line: 842, column: 20, scope: !1424, inlinedAt: !848)
!1428 = !DILocation(line: 841, column: 13, scope: !1424, inlinedAt: !848)
!1429 = !DILocation(line: 848, column: 11, scope: !108, inlinedAt: !848)
!1430 = !DILocation(line: 809, column: 20, scope: !1431, inlinedAt: !848)
!1431 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 807, column: 5)
!1432 = !DILocation(line: 810, column: 14, scope: !1431, inlinedAt: !848)
!1433 = !DILocation(line: 809, column: 7, scope: !1431, inlinedAt: !848)
!1434 = !DILocation(line: 850, column: 55, scope: !108, inlinedAt: !848)
!1435 = !DILocation(line: 850, column: 23, scope: !108, inlinedAt: !848)
!1436 = !DILocation(line: 851, column: 1, scope: !108, inlinedAt: !848)
!1437 = !DILocation(line: 1030, column: 15, scope: !841)
!1438 = !DILocation(line: 1030, column: 12, scope: !841)
!1439 = !DILocation(line: 1030, column: 9, scope: !841)
!1440 = !DILocation(line: 1034, column: 16, scope: !840)
!1441 = !DILocation(line: 1034, column: 11, scope: !840)
!1442 = !DILocation(line: 1036, column: 17, scope: !845)
!1443 = !DILocation(line: 1036, column: 15, scope: !840)
!1444 = !DILocation(line: 1047, column: 35, scope: !844)
!1445 = !DILocation(line: 1047, column: 55, scope: !844)
!1446 = !DILocation(line: 1047, column: 58, scope: !844)
!1447 = !DILocation(line: 1049, column: 19, scope: !844)
!1448 = !DILocation(line: 1051, column: 23, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 1050, column: 17)
!1450 = distinct !DILexicalBlock(scope: !844, file: !3, line: 1049, column: 19)
!1451 = !DILocation(line: 105, column: 23, scope: !1296, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 1052, column: 21, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 1051, column: 23)
!1454 = !DILocation(line: 107, column: 10, scope: !1296, inlinedAt: !1452)
!1455 = !DILocation(line: 1059, column: 19, scope: !1449)
!1456 = !DILocation(line: 1061, column: 19, scope: !1449)
!1457 = !DILocation(line: 1062, column: 19, scope: !1449)
!1458 = !DILocation(line: 1063, column: 19, scope: !1449)
!1459 = !DILocation(line: 1070, column: 31, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !844, file: !3, line: 1070, column: 19)
!1461 = !DILocation(line: 1070, column: 19, scope: !844)
!1462 = !DILocation(line: 105, column: 23, scope: !1296, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 1071, column: 17, scope: !1460)
!1464 = !DILocation(line: 107, column: 10, scope: !1296, inlinedAt: !1463)
!1465 = !DILocation(line: 1066, column: 22, scope: !844)
!1466 = !DILocation(line: 1073, column: 15, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !844, file: !3, line: 1073, column: 15)
!1468 = !DILocation(line: 1074, column: 17, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1073, column: 15)
!1470 = !DILocation(line: 1073, column: 55, scope: !1469)
!1471 = !DILocation(line: 1073, column: 49, scope: !1469)
!1472 = !DILocation(line: 1073, column: 29, scope: !1469)
!1473 = distinct !{!1473, !1466, !1474}
!1474 = !DILocation(line: 1074, column: 17, scope: !1467)
!1475 = !DILocation(line: 1076, column: 19, scope: !844)
!1476 = !DILocation(line: 105, column: 23, scope: !1296, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 1078, column: 19, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 1077, column: 17)
!1479 = distinct !DILexicalBlock(scope: !844, file: !3, line: 1076, column: 19)
!1480 = !DILocation(line: 107, column: 10, scope: !1296, inlinedAt: !1477)
!1481 = !DILocation(line: 105, column: 23, scope: !1296, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 1080, column: 19, scope: !1478)
!1483 = !DILocation(line: 107, column: 10, scope: !1296, inlinedAt: !1482)
!1484 = !DILocation(line: 1082, column: 19, scope: !1478)
!1485 = !DILocation(line: 1083, column: 17, scope: !1478)
!1486 = !DILocation(line: 105, column: 23, scope: !1296, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 1085, column: 15, scope: !844)
!1488 = !DILocation(line: 107, column: 10, scope: !1296, inlinedAt: !1487)
!1489 = !DILocation(line: 1087, column: 9, scope: !841)
!1490 = !DILocation(line: 1025, column: 73, scope: !838)
!1491 = distinct !{!1491, !970, !1492}
!1492 = !DILocation(line: 1088, column: 5, scope: !835)
!1493 = !DILocation(line: 1090, column: 34, scope: !972)
!1494 = !DILocation(line: 1090, column: 26, scope: !972)
!1495 = !DILocation(line: 1090, column: 41, scope: !972)
!1496 = !DILocation(line: 1090, column: 7, scope: !818)
!1497 = !DILocation(line: 1091, column: 5, scope: !972)
!1498 = !DILocation(line: 1093, column: 10, scope: !818)
!1499 = !DILocation(line: 1094, column: 1, scope: !818)
!1500 = !DILocation(line: 530, column: 38, scope: !1264, inlinedAt: !1257)
!1501 = !DILocation(line: 530, column: 17, scope: !1264, inlinedAt: !1257)
!1502 = distinct !{!1502, !1503, !1504}
!1503 = !DILocation(line: 530, column: 3, scope: !1260)
!1504 = !DILocation(line: 535, column: 5, scope: !1260)
!1505 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 583, type: !1506, isLocal: true, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1509)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!70, !80, !222, !64, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1510 = !DILocalVariable(name: "filename", arg: 1, scope: !1505, file: !3, line: 583, type: !80)
!1511 = !DILocalVariable(name: "binary", arg: 2, scope: !1505, file: !3, line: 583, type: !222)
!1512 = !DILocalVariable(name: "bin_result", arg: 3, scope: !1505, file: !3, line: 583, type: !64)
!1513 = !DILocalVariable(name: "missing", arg: 4, scope: !1505, file: !3, line: 584, type: !1508)
!1514 = !DILocalVariable(name: "fp", scope: !1505, file: !3, line: 586, type: !114)
!1515 = !DILocalVariable(name: "err", scope: !1505, file: !3, line: 587, type: !63)
!1516 = !DILocalVariable(name: "is_stdin", scope: !1505, file: !3, line: 588, type: !70)
!1517 = !DILocation(line: 583, column: 41, scope: !1505)
!1518 = !DILocation(line: 588, column: 19, scope: !1505)
!1519 = !DILocation(line: 590, column: 12, scope: !1505)
!1520 = !{!1521, !1521, i64 0}
!1521 = !{!"_Bool", !783, i64 0}
!1522 = !DILocation(line: 592, column: 7, scope: !1505)
!1523 = !DILocation(line: 595, column: 12, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 593, column: 5)
!1525 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 592, column: 7)
!1526 = !DILocation(line: 586, column: 9, scope: !1505)
!1527 = !DILocation(line: 603, column: 5, scope: !1524)
!1528 = !DILocation(line: 606, column: 12, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 605, column: 5)
!1530 = !DILocation(line: 607, column: 14, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 607, column: 11)
!1532 = !DILocation(line: 607, column: 11, scope: !1529)
!1533 = !DILocation(line: 609, column: 33, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 609, column: 15)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 608, column: 9)
!1536 = !DILocation(line: 609, column: 30, scope: !1534)
!1537 = !DILocation(line: 609, column: 39, scope: !1534)
!1538 = !DILocation(line: 609, column: 15, scope: !1535)
!1539 = !DILocation(line: 611, column: 24, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 610, column: 13)
!1541 = !DILocation(line: 612, column: 15, scope: !1540)
!1542 = !DILocation(line: 614, column: 21, scope: !1535)
!1543 = !DILocation(line: 614, column: 34, scope: !1535)
!1544 = !DILocation(line: 614, column: 11, scope: !1535)
!1545 = !DILocation(line: 615, column: 11, scope: !1535)
!1546 = !DILocation(line: 619, column: 3, scope: !1505)
!1547 = !DILocation(line: 624, column: 9, scope: !1505)
!1548 = !DILocation(line: 587, column: 7, scope: !1505)
!1549 = !DILocation(line: 626, column: 7, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 626, column: 7)
!1551 = !DILocation(line: 626, column: 7, scope: !1505)
!1552 = !DILocation(line: 628, column: 17, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 627, column: 5)
!1554 = !DILocation(line: 628, column: 30, scope: !1553)
!1555 = !DILocation(line: 628, column: 7, scope: !1553)
!1556 = !DILocation(line: 629, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 629, column: 11)
!1558 = !DILocation(line: 629, column: 14, scope: !1557)
!1559 = !DILocation(line: 629, column: 11, scope: !1553)
!1560 = !DILocation(line: 630, column: 9, scope: !1557)
!1561 = !DILocation(line: 634, column: 17, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 634, column: 7)
!1563 = !DILocation(line: 634, column: 20, scope: !1562)
!1564 = !DILocation(line: 634, column: 32, scope: !1562)
!1565 = !DILocation(line: 634, column: 7, scope: !1505)
!1566 = !DILocation(line: 636, column: 17, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 635, column: 5)
!1568 = !DILocation(line: 636, column: 30, scope: !1567)
!1569 = !DILocation(line: 636, column: 7, scope: !1567)
!1570 = !DILocation(line: 637, column: 7, scope: !1567)
!1571 = !DILocation(line: 641, column: 1, scope: !1505)
!1572 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 542, type: !1573, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !80, !70}
!1575 = !{!1576, !1577}
!1576 = !DILocalVariable(name: "file", arg: 1, scope: !1572, file: !3, line: 542, type: !80)
!1577 = !DILocalVariable(name: "escape", arg: 2, scope: !1572, file: !3, line: 542, type: !70)
!1578 = !DILocation(line: 542, column: 29, scope: !1572)
!1579 = !DILocation(line: 542, column: 40, scope: !1572)
!1580 = !DILocation(line: 544, column: 7, scope: !1572)
!1581 = !DILocation(line: 546, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 545, column: 5)
!1583 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 544, column: 7)
!1584 = !DILocation(line: 547, column: 7, scope: !1582)
!1585 = !DILocation(line: 550, column: 10, scope: !1572)
!1586 = !DILocation(line: 550, column: 3, scope: !1572)
!1587 = !DILocation(line: 552, column: 15, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 551, column: 5)
!1589 = !DILocation(line: 552, column: 7, scope: !1588)
!1590 = !DILocation(line: 555, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 553, column: 9)
!1592 = !DILocation(line: 556, column: 11, scope: !1591)
!1593 = !DILocation(line: 559, column: 11, scope: !1591)
!1594 = !DILocation(line: 560, column: 11, scope: !1591)
!1595 = !DILocation(line: 105, column: 23, scope: !1296, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 563, column: 11, scope: !1591)
!1597 = !DILocation(line: 107, column: 10, scope: !1296, inlinedAt: !1596)
!1598 = !DILocation(line: 566, column: 11, scope: !1588)
!1599 = distinct !{!1599, !1586, !1600}
!1600 = !DILocation(line: 567, column: 5, scope: !1572)
!1601 = !DILocation(line: 568, column: 1, scope: !1572)
!1602 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !239, file: !239, line: 41, type: !78, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !234, variables: !1603)
!1603 = !{!1604}
!1604 = !DILocalVariable(name: "file", arg: 1, scope: !1602, file: !239, line: 41, type: !80)
!1605 = !DILocation(line: 41, column: 41, scope: !1602)
!1606 = !DILocation(line: 43, column: 13, scope: !1602)
!1607 = !DILocation(line: 44, column: 1, scope: !1602)
!1608 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !239, file: !239, line: 78, type: !1609, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !234, variables: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !70}
!1611 = !{!1612}
!1612 = !DILocalVariable(name: "ignore", arg: 1, scope: !1608, file: !239, line: 78, type: !70)
!1613 = !DILocation(line: 78, column: 37, scope: !1608)
!1614 = !DILocation(line: 80, column: 16, scope: !1608)
!1615 = !DILocation(line: 81, column: 1, scope: !1608)
!1616 = distinct !DISubprogram(name: "close_stdout", scope: !239, file: !239, line: 107, type: !789, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !234, variables: !1617)
!1617 = !{!1618}
!1618 = !DILocalVariable(name: "write_error", scope: !1619, file: !239, line: 112, type: !80)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !239, line: 111, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !239, line: 109, column: 7)
!1621 = !DILocation(line: 109, column: 21, scope: !1620)
!1622 = !DILocation(line: 109, column: 7, scope: !1620)
!1623 = !DILocation(line: 109, column: 29, scope: !1620)
!1624 = !DILocation(line: 110, column: 7, scope: !1620)
!1625 = !DILocation(line: 110, column: 12, scope: !1620)
!1626 = !{i8 0, i8 2}
!1627 = !DILocation(line: 114, column: 19, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1619, file: !239, line: 113, column: 11)
!1629 = !DILocation(line: 110, column: 25, scope: !1620)
!1630 = !DILocation(line: 110, column: 28, scope: !1620)
!1631 = !DILocation(line: 110, column: 34, scope: !1620)
!1632 = !DILocation(line: 109, column: 7, scope: !1616)
!1633 = !DILocation(line: 112, column: 33, scope: !1619)
!1634 = !DILocation(line: 112, column: 19, scope: !1619)
!1635 = !DILocation(line: 113, column: 11, scope: !1628)
!1636 = !DILocation(line: 113, column: 11, scope: !1619)
!1637 = !DILocation(line: 114, column: 36, scope: !1628)
!1638 = !DILocation(line: 114, column: 9, scope: !1628)
!1639 = !DILocation(line: 117, column: 9, scope: !1628)
!1640 = !DILocation(line: 119, column: 14, scope: !1619)
!1641 = !DILocation(line: 119, column: 7, scope: !1619)
!1642 = !DILocation(line: 122, column: 22, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1616, file: !239, line: 122, column: 8)
!1644 = !DILocation(line: 122, column: 8, scope: !1643)
!1645 = !DILocation(line: 122, column: 30, scope: !1643)
!1646 = !DILocation(line: 122, column: 8, scope: !1616)
!1647 = !DILocation(line: 123, column: 13, scope: !1643)
!1648 = !DILocation(line: 123, column: 6, scope: !1643)
!1649 = !DILocation(line: 124, column: 1, scope: !1616)
!1650 = distinct !DISubprogram(name: "sha1_init_ctx", scope: !251, file: !251, line: 62, type: !1651, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !1671)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sha1_ctx", file: !1655, line: 40, size: 1280, elements: !1656)
!1655 = !DIFile(filename: "./lib/sha1.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1662, !1666, !1667}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1654, file: !1655, line: 42, baseType: !246, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1654, file: !1655, line: 43, baseType: !246, size: 32, offset: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1654, file: !1655, line: 44, baseType: !246, size: 32, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !1654, file: !1655, line: 45, baseType: !246, size: 32, offset: 96)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !1654, file: !1655, line: 46, baseType: !246, size: 32, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1654, file: !1655, line: 48, baseType: !1663, size: 64, offset: 160)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 64, elements: !1664)
!1664 = !{!1665}
!1665 = !DISubrange(count: 2)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1654, file: !1655, line: 49, baseType: !246, size: 32, offset: 224)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1654, file: !1655, line: 50, baseType: !1668, size: 1024, offset: 256)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 1024, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 32)
!1671 = !{!1672}
!1672 = !DILocalVariable(name: "ctx", arg: 1, scope: !1650, file: !251, line: 62, type: !1653)
!1673 = !DILocation(line: 62, column: 33, scope: !1650)
!1674 = !DILocation(line: 64, column: 10, scope: !1650)
!1675 = !DILocation(line: 68, column: 8, scope: !1650)
!1676 = !DILocation(line: 68, column: 10, scope: !1650)
!1677 = !DILocation(line: 72, column: 1, scope: !1650)
!1678 = distinct !DISubprogram(name: "sha1_read_ctx", scope: !251, file: !251, line: 86, type: !1679, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !1683)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!60, !1681, !60}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1683 = !{!1684, !1685, !1686}
!1684 = !DILocalVariable(name: "ctx", arg: 1, scope: !1678, file: !251, line: 86, type: !1681)
!1685 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1678, file: !251, line: 86, type: !60)
!1686 = !DILocalVariable(name: "r", scope: !1678, file: !251, line: 88, type: !58)
!1687 = !DILocation(line: 86, column: 39, scope: !1678)
!1688 = !DILocation(line: 86, column: 50, scope: !1678)
!1689 = !DILocation(line: 88, column: 9, scope: !1678)
!1690 = !DILocation(line: 89, column: 38, scope: !1678)
!1691 = !{!1692, !961, i64 0}
!1692 = !{!"sha1_ctx", !961, i64 0, !961, i64 4, !961, i64 8, !961, i64 12, !961, i64 16, !783, i64 20, !961, i64 28, !783, i64 32}
!1693 = !DILocalVariable(name: "cp", arg: 1, scope: !1694, file: !251, line: 78, type: !58)
!1694 = distinct !DISubprogram(name: "set_uint32", scope: !251, file: !251, line: 78, type: !1695, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !58, !246}
!1697 = !{!1693, !1698}
!1698 = !DILocalVariable(name: "v", arg: 2, scope: !1694, file: !251, line: 78, type: !246)
!1699 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 89, column: 3, scope: !1678)
!1701 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1700)
!1702 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1700)
!1703 = !DILocation(line: 90, column: 17, scope: !1678)
!1704 = !DILocation(line: 90, column: 38, scope: !1678)
!1705 = !{!1692, !961, i64 4}
!1706 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 90, column: 3, scope: !1678)
!1708 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1707)
!1709 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1707)
!1710 = !DILocation(line: 91, column: 17, scope: !1678)
!1711 = !DILocation(line: 91, column: 38, scope: !1678)
!1712 = !{!1692, !961, i64 8}
!1713 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 91, column: 3, scope: !1678)
!1715 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1714)
!1716 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1714)
!1717 = !DILocation(line: 92, column: 17, scope: !1678)
!1718 = !DILocation(line: 92, column: 38, scope: !1678)
!1719 = !{!1692, !961, i64 12}
!1720 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 92, column: 3, scope: !1678)
!1722 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1721)
!1723 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1721)
!1724 = !DILocation(line: 93, column: 17, scope: !1678)
!1725 = !DILocation(line: 93, column: 38, scope: !1678)
!1726 = !{!1692, !961, i64 16}
!1727 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 93, column: 3, scope: !1678)
!1729 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1728)
!1730 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1728)
!1731 = !DILocation(line: 95, column: 3, scope: !1678)
!1732 = distinct !DISubprogram(name: "sha1_finish_ctx", scope: !251, file: !251, line: 101, type: !1733, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!60, !1653, !60}
!1735 = !{!1736, !1737, !1738, !1739}
!1736 = !DILocalVariable(name: "ctx", arg: 1, scope: !1732, file: !251, line: 101, type: !1653)
!1737 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1732, file: !251, line: 101, type: !60)
!1738 = !DILocalVariable(name: "bytes", scope: !1732, file: !251, line: 104, type: !246)
!1739 = !DILocalVariable(name: "size", scope: !1732, file: !251, line: 105, type: !61)
!1740 = !DILocation(line: 101, column: 35, scope: !1732)
!1741 = !DILocation(line: 101, column: 46, scope: !1732)
!1742 = !DILocation(line: 104, column: 25, scope: !1732)
!1743 = !{!1692, !961, i64 28}
!1744 = !DILocation(line: 104, column: 12, scope: !1732)
!1745 = !DILocation(line: 105, column: 24, scope: !1732)
!1746 = !DILocation(line: 105, column: 17, scope: !1732)
!1747 = !DILocation(line: 105, column: 10, scope: !1732)
!1748 = !DILocation(line: 108, column: 3, scope: !1732)
!1749 = !DILocation(line: 108, column: 17, scope: !1732)
!1750 = !DILocation(line: 109, column: 21, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1732, file: !251, line: 109, column: 7)
!1752 = !DILocation(line: 109, column: 7, scope: !1732)
!1753 = !DILocation(line: 110, column: 5, scope: !1751)
!1754 = !DILocation(line: 113, column: 27, scope: !1732)
!1755 = !DILocation(line: 113, column: 20, scope: !1732)
!1756 = !DILocation(line: 113, column: 3, scope: !1732)
!1757 = !DILocation(line: 113, column: 25, scope: !1732)
!1758 = !DILocation(line: 114, column: 27, scope: !1732)
!1759 = !DILocation(line: 114, column: 20, scope: !1732)
!1760 = !DILocation(line: 114, column: 3, scope: !1732)
!1761 = !DILocation(line: 114, column: 25, scope: !1732)
!1762 = !DILocation(line: 116, column: 12, scope: !1732)
!1763 = !DILocation(line: 116, column: 63, scope: !1732)
!1764 = !DILocation(line: 116, column: 67, scope: !1732)
!1765 = !DILocation(line: 116, column: 3, scope: !1732)
!1766 = !DILocation(line: 119, column: 41, scope: !1732)
!1767 = !DILocation(line: 119, column: 3, scope: !1732)
!1768 = !DILocation(line: 86, column: 39, scope: !1678, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 121, column: 10, scope: !1732)
!1770 = !DILocation(line: 86, column: 50, scope: !1678, inlinedAt: !1769)
!1771 = !DILocation(line: 88, column: 9, scope: !1678, inlinedAt: !1769)
!1772 = !DILocation(line: 89, column: 38, scope: !1678, inlinedAt: !1769)
!1773 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 89, column: 3, scope: !1678, inlinedAt: !1769)
!1775 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1774)
!1776 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1774)
!1777 = !DILocation(line: 90, column: 17, scope: !1678, inlinedAt: !1769)
!1778 = !DILocation(line: 90, column: 38, scope: !1678, inlinedAt: !1769)
!1779 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 90, column: 3, scope: !1678, inlinedAt: !1769)
!1781 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1780)
!1782 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1780)
!1783 = !DILocation(line: 91, column: 17, scope: !1678, inlinedAt: !1769)
!1784 = !DILocation(line: 91, column: 38, scope: !1678, inlinedAt: !1769)
!1785 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 91, column: 3, scope: !1678, inlinedAt: !1769)
!1787 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1786)
!1788 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1786)
!1789 = !DILocation(line: 92, column: 17, scope: !1678, inlinedAt: !1769)
!1790 = !DILocation(line: 92, column: 38, scope: !1678, inlinedAt: !1769)
!1791 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 92, column: 3, scope: !1678, inlinedAt: !1769)
!1793 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1792)
!1794 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1792)
!1795 = !DILocation(line: 93, column: 17, scope: !1678, inlinedAt: !1769)
!1796 = !DILocation(line: 93, column: 38, scope: !1678, inlinedAt: !1769)
!1797 = !DILocation(line: 78, column: 19, scope: !1694, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 93, column: 3, scope: !1678, inlinedAt: !1769)
!1799 = !DILocation(line: 78, column: 32, scope: !1694, inlinedAt: !1798)
!1800 = !DILocation(line: 80, column: 3, scope: !1694, inlinedAt: !1798)
!1801 = !DILocation(line: 121, column: 3, scope: !1732)
!1802 = distinct !DISubprogram(name: "sha1_process_block", scope: !251, file: !251, line: 303, type: !1803, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !1805)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !857, !61, !1653}
!1805 = !{!1806, !1807, !1808, !1809, !1812, !1813, !1814, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1824}
!1806 = !DILocalVariable(name: "buffer", arg: 1, scope: !1802, file: !251, line: 303, type: !857)
!1807 = !DILocalVariable(name: "len", arg: 2, scope: !1802, file: !251, line: 303, type: !61)
!1808 = !DILocalVariable(name: "ctx", arg: 3, scope: !1802, file: !251, line: 303, type: !1653)
!1809 = !DILocalVariable(name: "words", scope: !1802, file: !251, line: 305, type: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!1812 = !DILocalVariable(name: "nwords", scope: !1802, file: !251, line: 306, type: !61)
!1813 = !DILocalVariable(name: "endp", scope: !1802, file: !251, line: 307, type: !1810)
!1814 = !DILocalVariable(name: "x", scope: !1802, file: !251, line: 308, type: !1815)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 512, elements: !210)
!1816 = !DILocalVariable(name: "a", scope: !1802, file: !251, line: 309, type: !246)
!1817 = !DILocalVariable(name: "b", scope: !1802, file: !251, line: 310, type: !246)
!1818 = !DILocalVariable(name: "c", scope: !1802, file: !251, line: 311, type: !246)
!1819 = !DILocalVariable(name: "d", scope: !1802, file: !251, line: 312, type: !246)
!1820 = !DILocalVariable(name: "e", scope: !1802, file: !251, line: 313, type: !246)
!1821 = !DILocalVariable(name: "lolen", scope: !1802, file: !251, line: 314, type: !246)
!1822 = !DILocalVariable(name: "tm", scope: !1823, file: !251, line: 337, type: !246)
!1823 = distinct !DILexicalBlock(scope: !1802, file: !251, line: 336, column: 5)
!1824 = !DILocalVariable(name: "t", scope: !1823, file: !251, line: 338, type: !63)
!1825 = !DILocation(line: 303, column: 33, scope: !1802)
!1826 = !DILocation(line: 303, column: 48, scope: !1802)
!1827 = !DILocation(line: 303, column: 70, scope: !1802)
!1828 = !DILocation(line: 305, column: 27, scope: !1802)
!1829 = !DILocation(line: 305, column: 19, scope: !1802)
!1830 = !DILocation(line: 306, column: 23, scope: !1802)
!1831 = !DILocation(line: 306, column: 10, scope: !1802)
!1832 = !DILocation(line: 307, column: 32, scope: !1802)
!1833 = !DILocation(line: 307, column: 19, scope: !1802)
!1834 = !DILocation(line: 308, column: 3, scope: !1802)
!1835 = !DILocation(line: 308, column: 12, scope: !1802)
!1836 = !DILocation(line: 309, column: 21, scope: !1802)
!1837 = !DILocation(line: 309, column: 12, scope: !1802)
!1838 = !DILocation(line: 310, column: 21, scope: !1802)
!1839 = !DILocation(line: 310, column: 12, scope: !1802)
!1840 = !DILocation(line: 311, column: 21, scope: !1802)
!1841 = !DILocation(line: 311, column: 12, scope: !1802)
!1842 = !DILocation(line: 312, column: 21, scope: !1802)
!1843 = !DILocation(line: 312, column: 12, scope: !1802)
!1844 = !DILocation(line: 313, column: 21, scope: !1802)
!1845 = !DILocation(line: 313, column: 12, scope: !1802)
!1846 = !DILocation(line: 314, column: 20, scope: !1802)
!1847 = !DILocation(line: 314, column: 12, scope: !1802)
!1848 = !DILocation(line: 319, column: 3, scope: !1802)
!1849 = !DILocation(line: 319, column: 17, scope: !1802)
!1850 = !DILocation(line: 320, column: 25, scope: !1802)
!1851 = !DILocation(line: 320, column: 54, scope: !1802)
!1852 = !DILocation(line: 320, column: 39, scope: !1802)
!1853 = !DILocation(line: 320, column: 37, scope: !1802)
!1854 = !DILocation(line: 320, column: 3, scope: !1802)
!1855 = !DILocation(line: 320, column: 17, scope: !1802)
!1856 = !DILocation(line: 335, column: 16, scope: !1802)
!1857 = !DILocation(line: 335, column: 3, scope: !1802)
!1858 = !DILocation(line: 338, column: 11, scope: !1823)
!1859 = !DILocation(line: 341, column: 18, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !251, line: 340, column: 9)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !251, line: 339, column: 7)
!1862 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 339, column: 7)
!1863 = !DILocation(line: 341, column: 16, scope: !1860)
!1864 = !DILocation(line: 342, column: 16, scope: !1860)
!1865 = !DILocation(line: 339, column: 7, scope: !1862)
!1866 = !DILocation(line: 345, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 345, column: 7)
!1868 = !DILocation(line: 346, column: 7, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 346, column: 7)
!1870 = !DILocation(line: 347, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 347, column: 7)
!1872 = !DILocation(line: 348, column: 7, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 348, column: 7)
!1874 = !DILocation(line: 349, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 349, column: 7)
!1876 = !DILocation(line: 350, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 350, column: 7)
!1878 = !DILocation(line: 351, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 351, column: 7)
!1880 = !DILocation(line: 352, column: 7, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 352, column: 7)
!1882 = !DILocation(line: 353, column: 7, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 353, column: 7)
!1884 = !DILocation(line: 354, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 354, column: 7)
!1886 = !DILocation(line: 355, column: 7, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 355, column: 7)
!1888 = !DILocation(line: 356, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 356, column: 7)
!1890 = !DILocation(line: 357, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 357, column: 7)
!1892 = !DILocation(line: 358, column: 7, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 358, column: 7)
!1894 = !DILocation(line: 359, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 359, column: 7)
!1896 = !DILocation(line: 360, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 360, column: 7)
!1898 = !DILocation(line: 361, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 361, column: 7)
!1900 = !DILocation(line: 337, column: 16, scope: !1823)
!1901 = !DILocation(line: 362, column: 7, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 362, column: 7)
!1903 = !DILocation(line: 363, column: 7, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 363, column: 7)
!1905 = !DILocation(line: 364, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 364, column: 7)
!1907 = !DILocation(line: 365, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 365, column: 7)
!1909 = !DILocation(line: 366, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 366, column: 7)
!1911 = !DILocation(line: 367, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 367, column: 7)
!1913 = !DILocation(line: 368, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 368, column: 7)
!1915 = !DILocation(line: 369, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 369, column: 7)
!1917 = !DILocation(line: 370, column: 7, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 370, column: 7)
!1919 = !DILocation(line: 371, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 371, column: 7)
!1921 = !DILocation(line: 372, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 372, column: 7)
!1923 = !DILocation(line: 373, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 373, column: 7)
!1925 = !DILocation(line: 374, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 374, column: 7)
!1927 = !DILocation(line: 375, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 375, column: 7)
!1929 = !DILocation(line: 376, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 376, column: 7)
!1931 = !DILocation(line: 377, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 377, column: 7)
!1933 = !DILocation(line: 378, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 378, column: 7)
!1935 = !DILocation(line: 379, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 379, column: 7)
!1937 = !DILocation(line: 380, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 380, column: 7)
!1939 = !DILocation(line: 381, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 381, column: 7)
!1941 = !DILocation(line: 382, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 382, column: 7)
!1943 = !DILocation(line: 383, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 383, column: 7)
!1945 = !DILocation(line: 384, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 384, column: 7)
!1947 = !DILocation(line: 385, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 385, column: 7)
!1949 = !DILocation(line: 386, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 386, column: 7)
!1951 = !DILocation(line: 387, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 387, column: 7)
!1953 = !DILocation(line: 388, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 388, column: 7)
!1955 = !DILocation(line: 389, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 389, column: 7)
!1957 = !DILocation(line: 390, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 390, column: 7)
!1959 = !DILocation(line: 391, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 391, column: 7)
!1961 = !DILocation(line: 392, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 392, column: 7)
!1963 = !DILocation(line: 393, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 393, column: 7)
!1965 = !DILocation(line: 394, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 394, column: 7)
!1967 = !DILocation(line: 395, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 395, column: 7)
!1969 = !DILocation(line: 396, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 396, column: 7)
!1971 = !DILocation(line: 397, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 397, column: 7)
!1973 = !DILocation(line: 398, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 398, column: 7)
!1975 = !DILocation(line: 399, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 399, column: 7)
!1977 = !DILocation(line: 400, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 400, column: 7)
!1979 = !DILocation(line: 401, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 401, column: 7)
!1981 = !DILocation(line: 402, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 402, column: 7)
!1983 = !DILocation(line: 403, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 403, column: 7)
!1985 = !DILocation(line: 404, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 404, column: 7)
!1987 = !DILocation(line: 405, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 405, column: 7)
!1989 = !DILocation(line: 406, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 406, column: 7)
!1991 = !DILocation(line: 407, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 407, column: 7)
!1993 = !DILocation(line: 408, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 408, column: 7)
!1995 = !DILocation(line: 409, column: 7, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 409, column: 7)
!1997 = !DILocation(line: 410, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 410, column: 7)
!1999 = !DILocation(line: 411, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 411, column: 7)
!2001 = !DILocation(line: 412, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 412, column: 7)
!2003 = !DILocation(line: 413, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 413, column: 7)
!2005 = !DILocation(line: 414, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 414, column: 7)
!2007 = !DILocation(line: 415, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 415, column: 7)
!2009 = !DILocation(line: 416, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 416, column: 7)
!2011 = !DILocation(line: 417, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 417, column: 7)
!2013 = !DILocation(line: 418, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 418, column: 7)
!2015 = !DILocation(line: 419, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 419, column: 7)
!2017 = !DILocation(line: 420, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 420, column: 7)
!2019 = !DILocation(line: 421, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 421, column: 7)
!2021 = !DILocation(line: 422, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 422, column: 7)
!2023 = !DILocation(line: 423, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 423, column: 7)
!2025 = !DILocation(line: 424, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 424, column: 7)
!2027 = !DILocation(line: 426, column: 18, scope: !1823)
!2028 = !DILocation(line: 427, column: 18, scope: !1823)
!2029 = distinct !{!2029, !1857, !2030}
!2030 = !DILocation(line: 431, column: 5, scope: !1802)
!2031 = !DILocation(line: 432, column: 1, scope: !1802)
!2032 = distinct !DISubprogram(name: "sha1_stream", scope: !251, file: !251, line: 129, type: !2033, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !2075)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!63, !2035, !60}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !2037)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2037, file: !118, line: 242, baseType: !63, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2037, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2037, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2037, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2037, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2037, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2037, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2037, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2037, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2037, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2037, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2037, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2037, file: !118, line: 260, baseType: !2052, size: 64, offset: 768)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !2054)
!2054 = !{!2055, !2056, !2058}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2053, file: !118, line: 157, baseType: !2052, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2053, file: !118, line: 158, baseType: !2057, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2053, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2037, file: !118, line: 262, baseType: !2057, size: 64, offset: 832)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2037, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2037, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2037, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2037, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2037, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2037, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2037, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2037, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2037, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2037, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2037, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2037, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2037, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2037, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2037, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081}
!2076 = !DILocalVariable(name: "stream", arg: 1, scope: !2032, file: !251, line: 129, type: !2035)
!2077 = !DILocalVariable(name: "resblock", arg: 2, scope: !2032, file: !251, line: 129, type: !60)
!2078 = !DILocalVariable(name: "ctx", scope: !2032, file: !251, line: 131, type: !1654)
!2079 = !DILocalVariable(name: "sum", scope: !2032, file: !251, line: 132, type: !61)
!2080 = !DILocalVariable(name: "buffer", scope: !2032, file: !251, line: 134, type: !58)
!2081 = !DILocalVariable(name: "n", scope: !2082, file: !251, line: 147, type: !61)
!2082 = distinct !DILexicalBlock(scope: !2032, file: !251, line: 143, column: 5)
!2083 = !DILocation(line: 129, column: 20, scope: !2032)
!2084 = !DILocation(line: 129, column: 34, scope: !2032)
!2085 = !DILocation(line: 131, column: 3, scope: !2032)
!2086 = !DILocation(line: 134, column: 18, scope: !2032)
!2087 = !DILocation(line: 134, column: 9, scope: !2032)
!2088 = !DILocation(line: 135, column: 8, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2032, file: !251, line: 135, column: 7)
!2090 = !DILocation(line: 135, column: 7, scope: !2032)
!2091 = !DILocation(line: 131, column: 19, scope: !2032)
!2092 = !DILocation(line: 62, column: 33, scope: !1650, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 139, column: 3, scope: !2032)
!2094 = !DILocation(line: 64, column: 10, scope: !1650, inlinedAt: !2093)
!2095 = !DILocation(line: 68, column: 8, scope: !1650, inlinedAt: !2093)
!2096 = !DILocation(line: 68, column: 10, scope: !1650, inlinedAt: !2093)
!2097 = !DILocation(line: 142, column: 3, scope: !2032)
!2098 = !DILocation(line: 132, column: 10, scope: !2032)
!2099 = !DILocation(line: 153, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2082, file: !251, line: 152, column: 9)
!2101 = !DILocation(line: 147, column: 14, scope: !2082)
!2102 = !DILocation(line: 157, column: 19, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2100, file: !251, line: 157, column: 15)
!2104 = !DILocation(line: 157, column: 15, scope: !2100)
!2105 = !DILocation(line: 160, column: 17, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2100, file: !251, line: 160, column: 15)
!2107 = !DILocation(line: 155, column: 15, scope: !2100)
!2108 = distinct !{!2108, !2109, !2110}
!2109 = !DILocation(line: 151, column: 7, scope: !2082)
!2110 = !DILocation(line: 178, column: 9, scope: !2082)
!2111 = !DILocation(line: 160, column: 15, scope: !2100)
!2112 = !DILocalVariable(name: "__stream", arg: 1, scope: !2113, file: !1026, line: 132, type: !2035)
!2113 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1026, file: !1026, line: 132, type: !2114, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!63, !2035}
!2116 = !{!2112}
!2117 = !DILocation(line: 132, column: 1, scope: !2113, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 165, column: 19, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !251, line: 165, column: 19)
!2120 = distinct !DILexicalBlock(scope: !2106, file: !251, line: 161, column: 13)
!2121 = !DILocation(line: 134, column: 10, scope: !2113, inlinedAt: !2118)
!2122 = !DILocation(line: 165, column: 19, scope: !2119)
!2123 = !DILocation(line: 165, column: 19, scope: !2120)
!2124 = !DILocation(line: 167, column: 19, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2119, file: !251, line: 166, column: 17)
!2126 = !DILocalVariable(name: "__stream", arg: 1, scope: !2127, file: !1026, line: 125, type: !2035)
!2127 = distinct !DISubprogram(name: "feof_unlocked", scope: !1026, file: !1026, line: 125, type: !2114, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !2128)
!2128 = !{!2126}
!2129 = !DILocation(line: 125, column: 1, scope: !2127, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 176, column: 15, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2100, file: !251, line: 176, column: 15)
!2132 = !DILocation(line: 127, column: 10, scope: !2127, inlinedAt: !2130)
!2133 = !DILocation(line: 176, column: 15, scope: !2131)
!2134 = !DILocation(line: 176, column: 15, scope: !2100)
!2135 = !DILocation(line: 183, column: 7, scope: !2082)
!2136 = distinct !{!2136, !2097, !2137}
!2137 = !DILocation(line: 184, column: 5, scope: !2032)
!2138 = !DILocation(line: 189, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2032, file: !251, line: 189, column: 7)
!2140 = !DILocation(line: 189, column: 7, scope: !2032)
!2141 = !DILocation(line: 190, column: 5, scope: !2139)
!2142 = !DILocation(line: 193, column: 3, scope: !2032)
!2143 = !DILocation(line: 194, column: 3, scope: !2032)
!2144 = !DILocation(line: 195, column: 3, scope: !2032)
!2145 = !DILocation(line: 196, column: 1, scope: !2032)
!2146 = distinct !DISubprogram(name: "sha1_process_bytes", scope: !251, file: !251, line: 219, type: !1803, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !2147)
!2147 = !{!2148, !2149, !2150, !2151, !2154, !2155}
!2148 = !DILocalVariable(name: "buffer", arg: 1, scope: !2146, file: !251, line: 219, type: !857)
!2149 = !DILocalVariable(name: "len", arg: 2, scope: !2146, file: !251, line: 219, type: !61)
!2150 = !DILocalVariable(name: "ctx", arg: 3, scope: !2146, file: !251, line: 219, type: !1653)
!2151 = !DILocalVariable(name: "left_over", scope: !2152, file: !251, line: 225, type: !61)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !251, line: 224, column: 5)
!2153 = distinct !DILexicalBlock(scope: !2146, file: !251, line: 223, column: 7)
!2154 = !DILocalVariable(name: "add", scope: !2152, file: !251, line: 226, type: !61)
!2155 = !DILocalVariable(name: "left_over", scope: !2156, file: !251, line: 270, type: !61)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !251, line: 269, column: 5)
!2157 = distinct !DILexicalBlock(scope: !2146, file: !251, line: 268, column: 7)
!2158 = !DILocation(line: 219, column: 33, scope: !2146)
!2159 = !DILocation(line: 219, column: 48, scope: !2146)
!2160 = !DILocation(line: 219, column: 70, scope: !2146)
!2161 = !DILocation(line: 223, column: 12, scope: !2153)
!2162 = !DILocation(line: 223, column: 19, scope: !2153)
!2163 = !DILocation(line: 223, column: 7, scope: !2146)
!2164 = !DILocation(line: 225, column: 26, scope: !2152)
!2165 = !DILocation(line: 225, column: 14, scope: !2152)
!2166 = !DILocation(line: 226, column: 24, scope: !2152)
!2167 = !DILocation(line: 226, column: 36, scope: !2152)
!2168 = !DILocation(line: 226, column: 20, scope: !2152)
!2169 = !DILocation(line: 226, column: 14, scope: !2152)
!2170 = !DILocation(line: 228, column: 16, scope: !2152)
!2171 = !DILocation(line: 228, column: 7, scope: !2152)
!2172 = !DILocation(line: 229, column: 19, scope: !2152)
!2173 = !DILocation(line: 231, column: 23, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2152, file: !251, line: 231, column: 11)
!2175 = !DILocation(line: 231, column: 11, scope: !2152)
!2176 = !DILocation(line: 233, column: 56, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !251, line: 232, column: 9)
!2178 = !DILocation(line: 233, column: 11, scope: !2177)
!2179 = !DILocation(line: 235, column: 23, scope: !2177)
!2180 = !DILocation(line: 238, column: 61, scope: !2177)
!2181 = !DILocation(line: 238, column: 20, scope: !2177)
!2182 = !DILocation(line: 239, column: 19, scope: !2177)
!2183 = !DILocation(line: 237, column: 11, scope: !2177)
!2184 = !DILocation(line: 240, column: 9, scope: !2177)
!2185 = !DILocation(line: 242, column: 38, scope: !2152)
!2186 = !DILocation(line: 243, column: 11, scope: !2152)
!2187 = !DILocation(line: 244, column: 5, scope: !2152)
!2188 = !DILocation(line: 247, column: 11, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2146, file: !251, line: 247, column: 7)
!2190 = !DILocation(line: 247, column: 7, scope: !2146)
!2191 = !DILocation(line: 251, column: 11, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !251, line: 251, column: 11)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !251, line: 248, column: 5)
!2194 = !DILocation(line: 251, column: 11, scope: !2193)
!2195 = !DILocation(line: 252, column: 20, scope: !2192)
!2196 = !DILocation(line: 252, column: 9, scope: !2192)
!2197 = !DILocation(line: 254, column: 33, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2192, file: !251, line: 253, column: 11)
!2199 = !DILocation(line: 254, column: 13, scope: !2198)
!2200 = !DILocation(line: 255, column: 44, scope: !2198)
!2201 = !DILocation(line: 256, column: 17, scope: !2198)
!2202 = distinct !{!2202, !2196, !2203}
!2203 = !DILocation(line: 257, column: 11, scope: !2192)
!2204 = !DILocation(line: 261, column: 43, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2192, file: !251, line: 260, column: 9)
!2206 = !DILocation(line: 261, column: 11, scope: !2205)
!2207 = !DILocation(line: 262, column: 42, scope: !2205)
!2208 = !DILocation(line: 263, column: 15, scope: !2205)
!2209 = !DILocation(line: 268, column: 11, scope: !2157)
!2210 = !DILocation(line: 268, column: 7, scope: !2146)
!2211 = !DILocation(line: 270, column: 31, scope: !2156)
!2212 = !DILocation(line: 270, column: 26, scope: !2156)
!2213 = !DILocation(line: 270, column: 14, scope: !2156)
!2214 = !DILocation(line: 272, column: 31, scope: !2156)
!2215 = !DILocation(line: 272, column: 16, scope: !2156)
!2216 = !DILocation(line: 272, column: 7, scope: !2156)
!2217 = !DILocation(line: 273, column: 17, scope: !2156)
!2218 = !DILocation(line: 274, column: 21, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2156, file: !251, line: 274, column: 11)
!2220 = !DILocation(line: 274, column: 11, scope: !2156)
!2221 = !DILocation(line: 276, column: 11, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2219, file: !251, line: 275, column: 9)
!2223 = !DILocation(line: 277, column: 21, scope: !2222)
!2224 = !DILocation(line: 278, column: 33, scope: !2222)
!2225 = !DILocation(line: 278, column: 11, scope: !2222)
!2226 = !DILocation(line: 279, column: 9, scope: !2222)
!2227 = !DILocation(line: 280, column: 21, scope: !2156)
!2228 = !DILocation(line: 280, column: 19, scope: !2156)
!2229 = !DILocation(line: 281, column: 5, scope: !2156)
!2230 = !DILocation(line: 282, column: 1, scope: !2146)
!2231 = distinct !DISubprogram(name: "sha1_buffer", scope: !251, file: !251, line: 204, type: !2232, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!60, !80, !61, !60}
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DILocalVariable(name: "buffer", arg: 1, scope: !2231, file: !251, line: 204, type: !80)
!2236 = !DILocalVariable(name: "len", arg: 2, scope: !2231, file: !251, line: 204, type: !61)
!2237 = !DILocalVariable(name: "resblock", arg: 3, scope: !2231, file: !251, line: 204, type: !60)
!2238 = !DILocalVariable(name: "ctx", scope: !2231, file: !251, line: 206, type: !1654)
!2239 = !DILocation(line: 204, column: 26, scope: !2231)
!2240 = !DILocation(line: 204, column: 41, scope: !2231)
!2241 = !DILocation(line: 204, column: 52, scope: !2231)
!2242 = !DILocation(line: 206, column: 3, scope: !2231)
!2243 = !DILocation(line: 206, column: 19, scope: !2231)
!2244 = !DILocation(line: 62, column: 33, scope: !1650, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 209, column: 3, scope: !2231)
!2246 = !DILocation(line: 64, column: 10, scope: !1650, inlinedAt: !2245)
!2247 = !DILocation(line: 68, column: 8, scope: !1650, inlinedAt: !2245)
!2248 = !DILocation(line: 68, column: 10, scope: !1650, inlinedAt: !2245)
!2249 = !DILocation(line: 212, column: 3, scope: !2231)
!2250 = !DILocation(line: 215, column: 10, scope: !2231)
!2251 = !DILocation(line: 216, column: 1, scope: !2231)
!2252 = !DILocation(line: 215, column: 3, scope: !2231)
!2253 = distinct !DISubprogram(name: "fdadvise", scope: !2254, file: !2254, line: 31, type: !2255, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !714, variables: !2260)
!2254 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !63, !2257, !2257, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2258, line: 57, baseType: !144)
!2258 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !49, line: 52, baseType: !48)
!2260 = !{!2261, !2262, !2263, !2264, !2265}
!2261 = !DILocalVariable(name: "fd", arg: 1, scope: !2253, file: !2254, line: 31, type: !63)
!2262 = !DILocalVariable(name: "offset", arg: 2, scope: !2253, file: !2254, line: 31, type: !2257)
!2263 = !DILocalVariable(name: "len", arg: 3, scope: !2253, file: !2254, line: 31, type: !2257)
!2264 = !DILocalVariable(name: "advice", arg: 4, scope: !2253, file: !2254, line: 31, type: !2259)
!2265 = !DILocalVariable(name: "__x", scope: !2266, file: !2254, line: 34, type: !63)
!2266 = distinct !DILexicalBlock(scope: !2253, file: !2254, line: 34, column: 3)
!2267 = !DILocation(line: 31, column: 15, scope: !2253)
!2268 = !DILocation(line: 31, column: 25, scope: !2253)
!2269 = !DILocation(line: 31, column: 39, scope: !2253)
!2270 = !DILocation(line: 31, column: 54, scope: !2253)
!2271 = !DILocation(line: 34, column: 3, scope: !2266)
!2272 = !DILocation(line: 36, column: 1, scope: !2253)
!2273 = distinct !DISubprogram(name: "fadvise", scope: !2254, file: !2254, line: 39, type: !2274, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !714, variables: !2316)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !2276, !2259}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !2278)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !2279)
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2278, file: !118, line: 242, baseType: !63, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2278, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2278, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2278, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2278, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2278, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2278, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2278, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2278, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2278, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2278, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2278, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2278, file: !118, line: 260, baseType: !2293, size: 64, offset: 768)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !2295)
!2295 = !{!2296, !2297, !2299}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2294, file: !118, line: 157, baseType: !2293, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2294, file: !118, line: 158, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2294, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2278, file: !118, line: 262, baseType: !2298, size: 64, offset: 832)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2278, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2278, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2278, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2278, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2278, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2278, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2278, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2278, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2278, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2278, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2278, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2278, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2278, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2278, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2278, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!2316 = !{!2317, !2318}
!2317 = !DILocalVariable(name: "fp", arg: 1, scope: !2273, file: !2254, line: 39, type: !2276)
!2318 = !DILocalVariable(name: "advice", arg: 2, scope: !2273, file: !2254, line: 39, type: !2259)
!2319 = !DILocation(line: 39, column: 16, scope: !2273)
!2320 = !DILocation(line: 39, column: 30, scope: !2273)
!2321 = !DILocation(line: 41, column: 7, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2273, file: !2254, line: 41, column: 7)
!2323 = !DILocation(line: 41, column: 7, scope: !2273)
!2324 = !DILocation(line: 42, column: 15, scope: !2322)
!2325 = !DILocation(line: 31, column: 15, scope: !2253, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 42, column: 5, scope: !2322)
!2327 = !DILocation(line: 31, column: 25, scope: !2253, inlinedAt: !2326)
!2328 = !DILocation(line: 31, column: 39, scope: !2253, inlinedAt: !2326)
!2329 = !DILocation(line: 31, column: 54, scope: !2253, inlinedAt: !2326)
!2330 = !DILocation(line: 34, column: 3, scope: !2266, inlinedAt: !2326)
!2331 = !DILocation(line: 42, column: 5, scope: !2322)
!2332 = !DILocation(line: 43, column: 1, scope: !2273)
!2333 = distinct !DISubprogram(name: "fopen_safer", scope: !2334, file: !2334, line: 31, type: !2335, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !717, variables: !2377)
!2334 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!2337, !80, !80}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !2339)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2339, file: !118, line: 242, baseType: !63, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2339, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2339, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2339, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2339, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2339, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2339, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2339, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2339, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2339, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2339, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2339, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2339, file: !118, line: 260, baseType: !2354, size: 64, offset: 768)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !2356)
!2356 = !{!2357, !2358, !2360}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2355, file: !118, line: 157, baseType: !2354, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2355, file: !118, line: 158, baseType: !2359, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2355, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2339, file: !118, line: 262, baseType: !2359, size: 64, offset: 832)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2339, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2339, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2339, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2339, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2339, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2339, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2339, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2339, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2339, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2339, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2339, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2339, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2339, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2339, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2339, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!2377 = !{!2378, !2379, !2380, !2381, !2384, !2387, !2390}
!2378 = !DILocalVariable(name: "file", arg: 1, scope: !2333, file: !2334, line: 31, type: !80)
!2379 = !DILocalVariable(name: "mode", arg: 2, scope: !2333, file: !2334, line: 31, type: !80)
!2380 = !DILocalVariable(name: "fp", scope: !2333, file: !2334, line: 33, type: !2337)
!2381 = !DILocalVariable(name: "fd", scope: !2382, file: !2334, line: 37, type: !63)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !2334, line: 36, column: 5)
!2383 = distinct !DILexicalBlock(scope: !2333, file: !2334, line: 35, column: 7)
!2384 = !DILocalVariable(name: "f", scope: !2385, file: !2334, line: 41, type: !63)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !2334, line: 40, column: 9)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !2334, line: 39, column: 11)
!2387 = !DILocalVariable(name: "e", scope: !2388, file: !2334, line: 45, type: !63)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !2334, line: 44, column: 13)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !2334, line: 43, column: 15)
!2390 = !DILocalVariable(name: "e", scope: !2391, file: !2334, line: 54, type: !63)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !2334, line: 53, column: 13)
!2392 = distinct !DILexicalBlock(scope: !2385, file: !2334, line: 51, column: 15)
!2393 = !DILocation(line: 31, column: 26, scope: !2333)
!2394 = !DILocation(line: 31, column: 44, scope: !2333)
!2395 = !DILocation(line: 33, column: 14, scope: !2333)
!2396 = !DILocation(line: 33, column: 9, scope: !2333)
!2397 = !DILocation(line: 35, column: 7, scope: !2383)
!2398 = !DILocation(line: 35, column: 7, scope: !2333)
!2399 = !DILocation(line: 37, column: 16, scope: !2382)
!2400 = !DILocation(line: 37, column: 11, scope: !2382)
!2401 = !DILocation(line: 39, column: 19, scope: !2386)
!2402 = !DILocation(line: 41, column: 19, scope: !2385)
!2403 = !DILocation(line: 41, column: 15, scope: !2385)
!2404 = !DILocation(line: 43, column: 17, scope: !2389)
!2405 = !DILocation(line: 43, column: 15, scope: !2385)
!2406 = !DILocation(line: 45, column: 23, scope: !2388)
!2407 = !DILocation(line: 45, column: 19, scope: !2388)
!2408 = !DILocation(line: 46, column: 15, scope: !2388)
!2409 = !DILocation(line: 47, column: 21, scope: !2388)
!2410 = !DILocation(line: 51, column: 15, scope: !2392)
!2411 = !DILocation(line: 51, column: 27, scope: !2392)
!2412 = !DILocation(line: 52, column: 15, scope: !2392)
!2413 = !DILocation(line: 52, column: 26, scope: !2392)
!2414 = !DILocation(line: 52, column: 24, scope: !2392)
!2415 = !DILocation(line: 51, column: 15, scope: !2385)
!2416 = !DILocation(line: 54, column: 23, scope: !2391)
!2417 = !DILocation(line: 54, column: 19, scope: !2391)
!2418 = !DILocation(line: 55, column: 15, scope: !2391)
!2419 = !DILocation(line: 56, column: 21, scope: !2391)
!2420 = !DILocation(line: 63, column: 1, scope: !2333)
!2421 = distinct !DISubprogram(name: "set_program_name", scope: !269, file: !269, line: 39, type: !78, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !265, variables: !2422)
!2422 = !{!2423, !2424, !2425}
!2423 = !DILocalVariable(name: "argv0", arg: 1, scope: !2421, file: !269, line: 39, type: !80)
!2424 = !DILocalVariable(name: "slash", scope: !2421, file: !269, line: 46, type: !80)
!2425 = !DILocalVariable(name: "base", scope: !2421, file: !269, line: 47, type: !80)
!2426 = !DILocation(line: 39, column: 31, scope: !2421)
!2427 = !DILocation(line: 51, column: 13, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2421, file: !269, line: 51, column: 7)
!2429 = !DILocation(line: 51, column: 7, scope: !2421)
!2430 = !DILocation(line: 55, column: 14, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2428, file: !269, line: 52, column: 5)
!2432 = !DILocation(line: 54, column: 7, scope: !2431)
!2433 = !DILocation(line: 56, column: 7, scope: !2431)
!2434 = !DILocation(line: 59, column: 11, scope: !2421)
!2435 = !DILocation(line: 46, column: 15, scope: !2421)
!2436 = !DILocation(line: 60, column: 17, scope: !2421)
!2437 = !DILocation(line: 60, column: 33, scope: !2421)
!2438 = !DILocation(line: 60, column: 11, scope: !2421)
!2439 = !DILocation(line: 47, column: 15, scope: !2421)
!2440 = !DILocation(line: 61, column: 12, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2421, file: !269, line: 61, column: 7)
!2442 = !DILocation(line: 61, column: 20, scope: !2441)
!2443 = !DILocation(line: 61, column: 25, scope: !2441)
!2444 = !DILocation(line: 61, column: 42, scope: !2441)
!2445 = !DILocation(line: 61, column: 28, scope: !2441)
!2446 = !DILocation(line: 61, column: 61, scope: !2441)
!2447 = !DILocation(line: 61, column: 7, scope: !2421)
!2448 = !DILocation(line: 64, column: 11, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !269, line: 64, column: 11)
!2450 = distinct !DILexicalBlock(scope: !2441, file: !269, line: 62, column: 5)
!2451 = !DILocation(line: 64, column: 36, scope: !2449)
!2452 = !DILocation(line: 64, column: 11, scope: !2450)
!2453 = !DILocation(line: 66, column: 24, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2449, file: !269, line: 65, column: 9)
!2455 = !DILocation(line: 70, column: 41, scope: !2454)
!2456 = !DILocation(line: 72, column: 9, scope: !2454)
!2457 = !DILocation(line: 84, column: 16, scope: !2421)
!2458 = !DILocation(line: 90, column: 27, scope: !2421)
!2459 = !DILocation(line: 92, column: 1, scope: !2421)
!2460 = distinct !DISubprogram(name: "clone_quoting_options", scope: !284, file: !284, line: 114, type: !2461, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2464)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!2463, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!2464 = !{!2465, !2466, !2467}
!2465 = !DILocalVariable(name: "o", arg: 1, scope: !2460, file: !284, line: 114, type: !2463)
!2466 = !DILocalVariable(name: "e", scope: !2460, file: !284, line: 116, type: !63)
!2467 = !DILocalVariable(name: "p", scope: !2460, file: !284, line: 117, type: !2463)
!2468 = !DILocation(line: 114, column: 48, scope: !2460)
!2469 = !DILocation(line: 116, column: 11, scope: !2460)
!2470 = !DILocation(line: 116, column: 7, scope: !2460)
!2471 = !DILocation(line: 117, column: 40, scope: !2460)
!2472 = !DILocation(line: 117, column: 31, scope: !2460)
!2473 = !DILocation(line: 117, column: 27, scope: !2460)
!2474 = !DILocation(line: 119, column: 9, scope: !2460)
!2475 = !DILocation(line: 120, column: 3, scope: !2460)
!2476 = distinct !DISubprogram(name: "get_quoting_style", scope: !284, file: !284, line: 125, type: !2477, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2481)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!5, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!2481 = !{!2482}
!2482 = !DILocalVariable(name: "o", arg: 1, scope: !2476, file: !284, line: 125, type: !2479)
!2483 = !DILocation(line: 125, column: 50, scope: !2476)
!2484 = !DILocation(line: 127, column: 11, scope: !2476)
!2485 = !DILocation(line: 127, column: 46, scope: !2476)
!2486 = !{!2487, !783, i64 0}
!2487 = !{!"quoting_options", !783, i64 0, !961, i64 4, !783, i64 8, !782, i64 40, !782, i64 48}
!2488 = !DILocation(line: 127, column: 3, scope: !2476)
!2489 = distinct !DISubprogram(name: "set_quoting_style", scope: !284, file: !284, line: 133, type: !2490, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{null, !2463, !5}
!2492 = !{!2493, !2494}
!2493 = !DILocalVariable(name: "o", arg: 1, scope: !2489, file: !284, line: 133, type: !2463)
!2494 = !DILocalVariable(name: "s", arg: 2, scope: !2489, file: !284, line: 133, type: !5)
!2495 = !DILocation(line: 133, column: 44, scope: !2489)
!2496 = !DILocation(line: 133, column: 66, scope: !2489)
!2497 = !DILocation(line: 135, column: 4, scope: !2489)
!2498 = !DILocation(line: 135, column: 39, scope: !2489)
!2499 = !DILocation(line: 135, column: 45, scope: !2489)
!2500 = !DILocation(line: 136, column: 1, scope: !2489)
!2501 = distinct !DISubprogram(name: "set_char_quoting", scope: !284, file: !284, line: 144, type: !2502, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!63, !2463, !59, !63}
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2511, !2512}
!2505 = !DILocalVariable(name: "o", arg: 1, scope: !2501, file: !284, line: 144, type: !2463)
!2506 = !DILocalVariable(name: "c", arg: 2, scope: !2501, file: !284, line: 144, type: !59)
!2507 = !DILocalVariable(name: "i", arg: 3, scope: !2501, file: !284, line: 144, type: !63)
!2508 = !DILocalVariable(name: "uc", scope: !2501, file: !284, line: 146, type: !65)
!2509 = !DILocalVariable(name: "p", scope: !2501, file: !284, line: 147, type: !2510)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!2511 = !DILocalVariable(name: "shift", scope: !2501, file: !284, line: 149, type: !63)
!2512 = !DILocalVariable(name: "r", scope: !2501, file: !284, line: 150, type: !63)
!2513 = !DILocation(line: 144, column: 43, scope: !2501)
!2514 = !DILocation(line: 144, column: 51, scope: !2501)
!2515 = !DILocation(line: 144, column: 58, scope: !2501)
!2516 = !DILocation(line: 146, column: 17, scope: !2501)
!2517 = !DILocation(line: 148, column: 6, scope: !2501)
!2518 = !DILocation(line: 148, column: 62, scope: !2501)
!2519 = !DILocation(line: 148, column: 57, scope: !2501)
!2520 = !DILocation(line: 147, column: 17, scope: !2501)
!2521 = !DILocation(line: 149, column: 18, scope: !2501)
!2522 = !DILocation(line: 149, column: 15, scope: !2501)
!2523 = !DILocation(line: 149, column: 7, scope: !2501)
!2524 = !DILocation(line: 150, column: 12, scope: !2501)
!2525 = !DILocation(line: 150, column: 15, scope: !2501)
!2526 = !DILocation(line: 150, column: 25, scope: !2501)
!2527 = !DILocation(line: 150, column: 7, scope: !2501)
!2528 = !DILocation(line: 151, column: 13, scope: !2501)
!2529 = !DILocation(line: 151, column: 18, scope: !2501)
!2530 = !DILocation(line: 151, column: 23, scope: !2501)
!2531 = !DILocation(line: 151, column: 6, scope: !2501)
!2532 = !DILocation(line: 152, column: 3, scope: !2501)
!2533 = distinct !DISubprogram(name: "set_quoting_flags", scope: !284, file: !284, line: 160, type: !2534, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!63, !2463, !63}
!2536 = !{!2537, !2538, !2539}
!2537 = !DILocalVariable(name: "o", arg: 1, scope: !2533, file: !284, line: 160, type: !2463)
!2538 = !DILocalVariable(name: "i", arg: 2, scope: !2533, file: !284, line: 160, type: !63)
!2539 = !DILocalVariable(name: "r", scope: !2533, file: !284, line: 162, type: !63)
!2540 = !DILocation(line: 160, column: 44, scope: !2533)
!2541 = !DILocation(line: 160, column: 51, scope: !2533)
!2542 = !DILocation(line: 163, column: 8, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2533, file: !284, line: 163, column: 7)
!2544 = !DILocation(line: 163, column: 7, scope: !2533)
!2545 = !DILocation(line: 165, column: 10, scope: !2533)
!2546 = !{!2487, !961, i64 4}
!2547 = !DILocation(line: 162, column: 7, scope: !2533)
!2548 = !DILocation(line: 166, column: 12, scope: !2533)
!2549 = !DILocation(line: 167, column: 3, scope: !2533)
!2550 = distinct !DISubprogram(name: "set_custom_quoting", scope: !284, file: !284, line: 171, type: !2551, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !2463, !80, !80}
!2553 = !{!2554, !2555, !2556}
!2554 = !DILocalVariable(name: "o", arg: 1, scope: !2550, file: !284, line: 171, type: !2463)
!2555 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2550, file: !284, line: 172, type: !80)
!2556 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2550, file: !284, line: 172, type: !80)
!2557 = !DILocation(line: 171, column: 45, scope: !2550)
!2558 = !DILocation(line: 172, column: 33, scope: !2550)
!2559 = !DILocation(line: 172, column: 57, scope: !2550)
!2560 = !DILocation(line: 174, column: 8, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2550, file: !284, line: 174, column: 7)
!2562 = !DILocation(line: 174, column: 7, scope: !2550)
!2563 = !DILocation(line: 176, column: 6, scope: !2550)
!2564 = !DILocation(line: 176, column: 12, scope: !2550)
!2565 = !DILocation(line: 177, column: 8, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2550, file: !284, line: 177, column: 7)
!2567 = !DILocation(line: 177, column: 23, scope: !2566)
!2568 = !DILocation(line: 177, column: 19, scope: !2566)
!2569 = !DILocation(line: 178, column: 5, scope: !2566)
!2570 = !DILocation(line: 179, column: 6, scope: !2550)
!2571 = !DILocation(line: 179, column: 17, scope: !2550)
!2572 = !{!2487, !782, i64 40}
!2573 = !DILocation(line: 180, column: 6, scope: !2550)
!2574 = !DILocation(line: 180, column: 18, scope: !2550)
!2575 = !{!2487, !782, i64 48}
!2576 = !DILocation(line: 181, column: 1, scope: !2550)
!2577 = distinct !DISubprogram(name: "quotearg_buffer", scope: !284, file: !284, line: 776, type: !2578, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!61, !58, !61, !80, !61, !2479}
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588}
!2581 = !DILocalVariable(name: "buffer", arg: 1, scope: !2577, file: !284, line: 776, type: !58)
!2582 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2577, file: !284, line: 776, type: !61)
!2583 = !DILocalVariable(name: "arg", arg: 3, scope: !2577, file: !284, line: 777, type: !80)
!2584 = !DILocalVariable(name: "argsize", arg: 4, scope: !2577, file: !284, line: 777, type: !61)
!2585 = !DILocalVariable(name: "o", arg: 5, scope: !2577, file: !284, line: 778, type: !2479)
!2586 = !DILocalVariable(name: "p", scope: !2577, file: !284, line: 780, type: !2479)
!2587 = !DILocalVariable(name: "e", scope: !2577, file: !284, line: 781, type: !63)
!2588 = !DILocalVariable(name: "r", scope: !2577, file: !284, line: 782, type: !61)
!2589 = !DILocation(line: 776, column: 24, scope: !2577)
!2590 = !DILocation(line: 776, column: 39, scope: !2577)
!2591 = !DILocation(line: 777, column: 30, scope: !2577)
!2592 = !DILocation(line: 777, column: 42, scope: !2577)
!2593 = !DILocation(line: 778, column: 48, scope: !2577)
!2594 = !DILocation(line: 780, column: 37, scope: !2577)
!2595 = !DILocation(line: 780, column: 33, scope: !2577)
!2596 = !DILocation(line: 781, column: 11, scope: !2577)
!2597 = !DILocation(line: 781, column: 7, scope: !2577)
!2598 = !DILocation(line: 783, column: 43, scope: !2577)
!2599 = !DILocation(line: 783, column: 53, scope: !2577)
!2600 = !DILocation(line: 783, column: 60, scope: !2577)
!2601 = !DILocation(line: 784, column: 43, scope: !2577)
!2602 = !DILocation(line: 784, column: 58, scope: !2577)
!2603 = !DILocation(line: 782, column: 14, scope: !2577)
!2604 = !DILocation(line: 782, column: 10, scope: !2577)
!2605 = !DILocation(line: 785, column: 9, scope: !2577)
!2606 = !DILocation(line: 786, column: 3, scope: !2577)
!2607 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !284, file: !284, line: 248, type: !2608, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2612)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!61, !58, !61, !80, !61, !5, !63, !2610, !80, !80}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2637, !2638, !2639, !2640, !2641, !2644, !2645, !2663, !2666, !2667, !2674}
!2613 = !DILocalVariable(name: "buffer", arg: 1, scope: !2607, file: !284, line: 248, type: !58)
!2614 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2607, file: !284, line: 248, type: !61)
!2615 = !DILocalVariable(name: "arg", arg: 3, scope: !2607, file: !284, line: 249, type: !80)
!2616 = !DILocalVariable(name: "argsize", arg: 4, scope: !2607, file: !284, line: 249, type: !61)
!2617 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2607, file: !284, line: 250, type: !5)
!2618 = !DILocalVariable(name: "flags", arg: 6, scope: !2607, file: !284, line: 250, type: !63)
!2619 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2607, file: !284, line: 251, type: !2610)
!2620 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2607, file: !284, line: 252, type: !80)
!2621 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2607, file: !284, line: 253, type: !80)
!2622 = !DILocalVariable(name: "i", scope: !2607, file: !284, line: 255, type: !61)
!2623 = !DILocalVariable(name: "len", scope: !2607, file: !284, line: 256, type: !61)
!2624 = !DILocalVariable(name: "orig_buffersize", scope: !2607, file: !284, line: 257, type: !61)
!2625 = !DILocalVariable(name: "quote_string", scope: !2607, file: !284, line: 258, type: !80)
!2626 = !DILocalVariable(name: "quote_string_len", scope: !2607, file: !284, line: 259, type: !61)
!2627 = !DILocalVariable(name: "backslash_escapes", scope: !2607, file: !284, line: 260, type: !70)
!2628 = !DILocalVariable(name: "unibyte_locale", scope: !2607, file: !284, line: 261, type: !70)
!2629 = !DILocalVariable(name: "elide_outer_quotes", scope: !2607, file: !284, line: 262, type: !70)
!2630 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2607, file: !284, line: 263, type: !70)
!2631 = !DILocalVariable(name: "encountered_single_quote", scope: !2607, file: !284, line: 264, type: !70)
!2632 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2607, file: !284, line: 265, type: !70)
!2633 = !DILocalVariable(name: "c", scope: !2634, file: !284, line: 394, type: !65)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !284, line: 393, column: 5)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !284, line: 392, column: 3)
!2636 = distinct !DILexicalBlock(scope: !2607, file: !284, line: 392, column: 3)
!2637 = !DILocalVariable(name: "esc", scope: !2634, file: !284, line: 395, type: !65)
!2638 = !DILocalVariable(name: "is_right_quote", scope: !2634, file: !284, line: 396, type: !70)
!2639 = !DILocalVariable(name: "escaping", scope: !2634, file: !284, line: 397, type: !70)
!2640 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2634, file: !284, line: 398, type: !70)
!2641 = !DILocalVariable(name: "m", scope: !2642, file: !284, line: 602, type: !61)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 600, column: 11)
!2643 = distinct !DILexicalBlock(scope: !2634, file: !284, line: 418, column: 9)
!2644 = !DILocalVariable(name: "printable", scope: !2642, file: !284, line: 604, type: !70)
!2645 = !DILocalVariable(name: "mbstate", scope: !2646, file: !284, line: 613, type: !2648)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !284, line: 612, column: 15)
!2647 = distinct !DILexicalBlock(scope: !2642, file: !284, line: 606, column: 17)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2649, line: 6, baseType: !2650)
!2649 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2651, line: 21, baseType: !2652)
!2651 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2651, line: 13, size: 64, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2652, file: !2651, line: 15, baseType: !63, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2652, file: !2651, line: 20, baseType: !2656, size: 32, offset: 32)
!2656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2652, file: !2651, line: 16, size: 32, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2656, file: !2651, line: 18, baseType: !249, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2656, file: !2651, line: 19, baseType: !2660, size: 32)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !2661)
!2661 = !{!2662}
!2662 = !DISubrange(count: 4)
!2663 = !DILocalVariable(name: "w", scope: !2664, file: !284, line: 623, type: !2665)
!2664 = distinct !DILexicalBlock(scope: !2646, file: !284, line: 622, column: 19)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !62, line: 90, baseType: !63)
!2666 = !DILocalVariable(name: "bytes", scope: !2664, file: !284, line: 624, type: !61)
!2667 = !DILocalVariable(name: "j", scope: !2668, file: !284, line: 649, type: !61)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !284, line: 648, column: 27)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !284, line: 646, column: 29)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !284, line: 641, column: 23)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !284, line: 633, column: 30)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !284, line: 628, column: 30)
!2673 = distinct !DILexicalBlock(scope: !2664, file: !284, line: 626, column: 25)
!2674 = !DILocalVariable(name: "ilim", scope: !2675, file: !284, line: 676, type: !61)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !284, line: 673, column: 15)
!2676 = distinct !DILexicalBlock(scope: !2642, file: !284, line: 672, column: 17)
!2677 = !DILocation(line: 248, column: 33, scope: !2607)
!2678 = !DILocation(line: 248, column: 48, scope: !2607)
!2679 = !DILocation(line: 249, column: 39, scope: !2607)
!2680 = !DILocation(line: 249, column: 51, scope: !2607)
!2681 = !DILocation(line: 250, column: 46, scope: !2607)
!2682 = !DILocation(line: 250, column: 65, scope: !2607)
!2683 = !DILocation(line: 251, column: 47, scope: !2607)
!2684 = !DILocation(line: 252, column: 39, scope: !2607)
!2685 = !DILocation(line: 253, column: 39, scope: !2607)
!2686 = !DILocation(line: 256, column: 10, scope: !2607)
!2687 = !DILocation(line: 257, column: 10, scope: !2607)
!2688 = !DILocation(line: 258, column: 15, scope: !2607)
!2689 = !DILocation(line: 259, column: 10, scope: !2607)
!2690 = !DILocation(line: 260, column: 8, scope: !2607)
!2691 = !DILocation(line: 261, column: 25, scope: !2607)
!2692 = !DILocation(line: 261, column: 36, scope: !2607)
!2693 = !DILocation(line: 262, column: 8, scope: !2607)
!2694 = !DILocation(line: 263, column: 8, scope: !2607)
!2695 = !DILocation(line: 264, column: 8, scope: !2607)
!2696 = !DILocation(line: 265, column: 8, scope: !2607)
!2697 = !DILocation(line: 265, column: 3, scope: !2607)
!2698 = !DILocation(line: 308, column: 3, scope: !2607)
!2699 = !DILocation(line: 315, column: 11, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2607, file: !284, line: 309, column: 5)
!2701 = !DILocation(line: 315, column: 12, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2700, file: !284, line: 315, column: 11)
!2703 = !DILocation(line: 316, column: 9, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !284, line: 316, column: 9)
!2705 = distinct !DILexicalBlock(scope: !2702, file: !284, line: 316, column: 9)
!2706 = !DILocation(line: 316, column: 9, scope: !2705)
!2707 = !DILocation(line: 354, column: 26, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !284, line: 332, column: 11)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !284, line: 331, column: 13)
!2710 = distinct !DILexicalBlock(scope: !2700, file: !284, line: 330, column: 7)
!2711 = !DILocation(line: 355, column: 27, scope: !2708)
!2712 = !DILocation(line: 356, column: 11, scope: !2708)
!2713 = !DILocation(line: 357, column: 14, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !284, line: 357, column: 13)
!2715 = !DILocation(line: 357, column: 13, scope: !2710)
!2716 = !DILocation(line: 358, column: 43, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !284, line: 358, column: 11)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !284, line: 358, column: 11)
!2719 = !DILocation(line: 358, column: 11, scope: !2718)
!2720 = !DILocation(line: 359, column: 13, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !284, line: 359, column: 13)
!2722 = distinct !DILexicalBlock(scope: !2717, file: !284, line: 359, column: 13)
!2723 = !DILocation(line: 359, column: 13, scope: !2722)
!2724 = !DILocation(line: 358, column: 70, scope: !2717)
!2725 = distinct !{!2725, !2719, !2726}
!2726 = !DILocation(line: 359, column: 13, scope: !2718)
!2727 = !DILocation(line: 362, column: 28, scope: !2710)
!2728 = !DILocation(line: 364, column: 7, scope: !2700)
!2729 = !DILocation(line: 367, column: 7, scope: !2700)
!2730 = !DILocation(line: 370, column: 7, scope: !2700)
!2731 = !DILocation(line: 373, column: 12, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2700, file: !284, line: 373, column: 11)
!2733 = !DILocation(line: 373, column: 11, scope: !2700)
!2734 = !DILocation(line: 378, column: 12, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2700, file: !284, line: 378, column: 11)
!2736 = !DILocation(line: 378, column: 11, scope: !2700)
!2737 = !DILocation(line: 379, column: 9, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !284, line: 379, column: 9)
!2739 = distinct !DILexicalBlock(scope: !2735, file: !284, line: 379, column: 9)
!2740 = !DILocation(line: 379, column: 9, scope: !2739)
!2741 = !DILocation(line: 386, column: 7, scope: !2700)
!2742 = !DILocation(line: 389, column: 7, scope: !2700)
!2743 = !DILocation(line: 255, column: 10, scope: !2607)
!2744 = !DILocation(line: 392, column: 8, scope: !2636)
!2745 = !DILocation(line: 392, column: 27, scope: !2635)
!2746 = !DILocation(line: 392, column: 19, scope: !2635)
!2747 = !DILocation(line: 392, column: 60, scope: !2635)
!2748 = !DILocation(line: 392, column: 3, scope: !2636)
!2749 = !DILocation(line: 392, column: 41, scope: !2635)
!2750 = !DILocation(line: 392, column: 48, scope: !2635)
!2751 = !DILocation(line: 396, column: 12, scope: !2634)
!2752 = !DILocation(line: 397, column: 12, scope: !2634)
!2753 = !DILocation(line: 398, column: 12, scope: !2634)
!2754 = !DILocation(line: 401, column: 11, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2634, file: !284, line: 400, column: 11)
!2756 = !DILocation(line: 403, column: 17, scope: !2755)
!2757 = !DILocation(line: 404, column: 39, scope: !2755)
!2758 = !DILocation(line: 408, column: 32, scope: !2755)
!2759 = !DILocation(line: 404, column: 19, scope: !2755)
!2760 = !DILocation(line: 404, column: 15, scope: !2755)
!2761 = !DILocation(line: 409, column: 11, scope: !2755)
!2762 = !DILocation(line: 409, column: 26, scope: !2755)
!2763 = !DILocation(line: 409, column: 14, scope: !2755)
!2764 = !DILocation(line: 409, column: 63, scope: !2755)
!2765 = !DILocation(line: 400, column: 11, scope: !2634)
!2766 = !DILocation(line: 416, column: 11, scope: !2634)
!2767 = !DILocation(line: 394, column: 21, scope: !2634)
!2768 = !DILocation(line: 417, column: 7, scope: !2634)
!2769 = !DILocation(line: 420, column: 15, scope: !2643)
!2770 = !DILocation(line: 422, column: 15, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !284, line: 422, column: 15)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !284, line: 421, column: 13)
!2773 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 420, column: 15)
!2774 = !DILocation(line: 422, column: 15, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !284, line: 422, column: 15)
!2776 = !DILocation(line: 422, column: 15, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !284, line: 422, column: 15)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !284, line: 422, column: 15)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !284, line: 422, column: 15)
!2780 = !DILocation(line: 422, column: 15, scope: !2778)
!2781 = !DILocation(line: 422, column: 15, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !284, line: 422, column: 15)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !284, line: 422, column: 15)
!2784 = !DILocation(line: 422, column: 15, scope: !2783)
!2785 = !DILocation(line: 422, column: 15, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !284, line: 422, column: 15)
!2787 = distinct !DILexicalBlock(scope: !2779, file: !284, line: 422, column: 15)
!2788 = !DILocation(line: 422, column: 15, scope: !2787)
!2789 = !DILocation(line: 422, column: 15, scope: !2779)
!2790 = !DILocation(line: 422, column: 15, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !284, line: 422, column: 15)
!2792 = distinct !DILexicalBlock(scope: !2771, file: !284, line: 422, column: 15)
!2793 = !DILocation(line: 422, column: 15, scope: !2792)
!2794 = !DILocation(line: 430, column: 19, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2772, file: !284, line: 429, column: 19)
!2796 = !DILocation(line: 430, column: 24, scope: !2795)
!2797 = !DILocation(line: 430, column: 28, scope: !2795)
!2798 = !DILocation(line: 430, column: 38, scope: !2795)
!2799 = !DILocation(line: 430, column: 48, scope: !2795)
!2800 = !DILocation(line: 430, column: 59, scope: !2795)
!2801 = !DILocation(line: 432, column: 19, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !284, line: 432, column: 19)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !284, line: 432, column: 19)
!2804 = distinct !DILexicalBlock(scope: !2795, file: !284, line: 431, column: 17)
!2805 = !DILocation(line: 432, column: 19, scope: !2803)
!2806 = !DILocation(line: 433, column: 19, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !284, line: 433, column: 19)
!2808 = distinct !DILexicalBlock(scope: !2804, file: !284, line: 433, column: 19)
!2809 = !DILocation(line: 433, column: 19, scope: !2808)
!2810 = !DILocation(line: 434, column: 17, scope: !2804)
!2811 = !DILocation(line: 441, column: 20, scope: !2773)
!2812 = !DILocation(line: 446, column: 11, scope: !2643)
!2813 = !DILocation(line: 449, column: 19, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 447, column: 13)
!2815 = !DILocation(line: 455, column: 19, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2814, file: !284, line: 454, column: 19)
!2817 = !DILocation(line: 455, column: 24, scope: !2816)
!2818 = !DILocation(line: 455, column: 28, scope: !2816)
!2819 = !DILocation(line: 455, column: 38, scope: !2816)
!2820 = !DILocation(line: 455, column: 47, scope: !2816)
!2821 = !DILocation(line: 455, column: 41, scope: !2816)
!2822 = !DILocation(line: 455, column: 52, scope: !2816)
!2823 = !DILocation(line: 454, column: 19, scope: !2814)
!2824 = !DILocation(line: 456, column: 25, scope: !2816)
!2825 = !DILocation(line: 456, column: 17, scope: !2816)
!2826 = !DILocation(line: 463, column: 25, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2816, file: !284, line: 457, column: 19)
!2828 = !DILocation(line: 467, column: 21, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !284, line: 467, column: 21)
!2830 = distinct !DILexicalBlock(scope: !2827, file: !284, line: 467, column: 21)
!2831 = !DILocation(line: 467, column: 21, scope: !2830)
!2832 = !DILocation(line: 468, column: 21, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !284, line: 468, column: 21)
!2834 = distinct !DILexicalBlock(scope: !2827, file: !284, line: 468, column: 21)
!2835 = !DILocation(line: 468, column: 21, scope: !2834)
!2836 = !DILocation(line: 469, column: 21, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !284, line: 469, column: 21)
!2838 = distinct !DILexicalBlock(scope: !2827, file: !284, line: 469, column: 21)
!2839 = !DILocation(line: 469, column: 21, scope: !2838)
!2840 = !DILocation(line: 470, column: 21, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !284, line: 470, column: 21)
!2842 = distinct !DILexicalBlock(scope: !2827, file: !284, line: 470, column: 21)
!2843 = !DILocation(line: 470, column: 21, scope: !2842)
!2844 = !DILocation(line: 471, column: 21, scope: !2827)
!2845 = !DILocation(line: 395, column: 21, scope: !2634)
!2846 = !DILocation(line: 484, column: 31, scope: !2643)
!2847 = !DILocation(line: 485, column: 31, scope: !2643)
!2848 = !DILocation(line: 487, column: 31, scope: !2643)
!2849 = !DILocation(line: 488, column: 31, scope: !2643)
!2850 = !DILocation(line: 489, column: 31, scope: !2643)
!2851 = !DILocation(line: 492, column: 15, scope: !2643)
!2852 = !DILocation(line: 494, column: 19, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !284, line: 493, column: 13)
!2854 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 492, column: 15)
!2855 = !DILocation(line: 501, column: 33, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 501, column: 15)
!2857 = !DILocation(line: 506, column: 15, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 505, column: 15)
!2859 = !DILocation(line: 510, column: 15, scope: !2643)
!2860 = !DILocation(line: 518, column: 26, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 518, column: 15)
!2862 = !DILocation(line: 518, column: 15, scope: !2643)
!2863 = !DILocation(line: 518, column: 40, scope: !2861)
!2864 = !DILocation(line: 518, column: 47, scope: !2861)
!2865 = !DILocation(line: 522, column: 17, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 522, column: 15)
!2867 = !DILocation(line: 518, column: 18, scope: !2861)
!2868 = !DILocation(line: 518, column: 65, scope: !2861)
!2869 = !DILocation(line: 522, column: 15, scope: !2643)
!2870 = !DILocation(line: 526, column: 11, scope: !2643)
!2871 = !DILocation(line: 541, column: 15, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 540, column: 15)
!2873 = !DILocation(line: 548, column: 15, scope: !2643)
!2874 = !DILocation(line: 550, column: 19, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !284, line: 549, column: 13)
!2876 = distinct !DILexicalBlock(scope: !2643, file: !284, line: 548, column: 15)
!2877 = !DILocation(line: 553, column: 19, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2875, file: !284, line: 553, column: 19)
!2879 = !DILocation(line: 553, column: 35, scope: !2878)
!2880 = !DILocation(line: 553, column: 30, scope: !2878)
!2881 = !DILocation(line: 562, column: 15, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !284, line: 562, column: 15)
!2883 = distinct !DILexicalBlock(scope: !2875, file: !284, line: 562, column: 15)
!2884 = !DILocation(line: 562, column: 15, scope: !2883)
!2885 = !DILocation(line: 563, column: 15, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !284, line: 563, column: 15)
!2887 = distinct !DILexicalBlock(scope: !2875, file: !284, line: 563, column: 15)
!2888 = !DILocation(line: 563, column: 15, scope: !2887)
!2889 = !DILocation(line: 564, column: 15, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !284, line: 564, column: 15)
!2891 = distinct !DILexicalBlock(scope: !2875, file: !284, line: 564, column: 15)
!2892 = !DILocation(line: 564, column: 15, scope: !2891)
!2893 = !DILocation(line: 566, column: 13, scope: !2875)
!2894 = !DILocation(line: 606, column: 17, scope: !2642)
!2895 = !DILocation(line: 602, column: 20, scope: !2642)
!2896 = !DILocation(line: 609, column: 29, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2647, file: !284, line: 607, column: 15)
!2898 = !DILocation(line: 609, column: 27, scope: !2897)
!2899 = !DILocation(line: 604, column: 18, scope: !2642)
!2900 = !DILocation(line: 610, column: 15, scope: !2897)
!2901 = !DILocation(line: 613, column: 17, scope: !2646)
!2902 = !DILocation(line: 614, column: 17, scope: !2646)
!2903 = !DILocation(line: 618, column: 29, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2646, file: !284, line: 618, column: 21)
!2905 = !DILocation(line: 618, column: 21, scope: !2646)
!2906 = !DILocation(line: 619, column: 29, scope: !2904)
!2907 = !DILocation(line: 619, column: 19, scope: !2904)
!2908 = !DILocation(line: 621, column: 17, scope: !2646)
!2909 = distinct !{!2909, !2908, !2910}
!2910 = !DILocation(line: 667, column: 44, scope: !2646)
!2911 = !DILocation(line: 623, column: 21, scope: !2664)
!2912 = !DILocation(line: 624, column: 56, scope: !2664)
!2913 = !DILocation(line: 624, column: 50, scope: !2664)
!2914 = !DILocation(line: 625, column: 53, scope: !2664)
!2915 = !DILocation(line: 613, column: 27, scope: !2646)
!2916 = !DILocation(line: 623, column: 29, scope: !2664)
!2917 = !DILocation(line: 624, column: 36, scope: !2664)
!2918 = !DILocation(line: 624, column: 28, scope: !2664)
!2919 = !DILocation(line: 626, column: 25, scope: !2664)
!2920 = !DILocation(line: 636, column: 38, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2671, file: !284, line: 634, column: 23)
!2922 = !DILocation(line: 636, column: 48, scope: !2921)
!2923 = !DILocation(line: 636, column: 51, scope: !2921)
!2924 = !DILocation(line: 636, column: 25, scope: !2921)
!2925 = !DILocation(line: 637, column: 28, scope: !2921)
!2926 = !DILocation(line: 636, column: 34, scope: !2921)
!2927 = distinct !{!2927, !2924, !2925}
!2928 = !DILocation(line: 650, column: 43, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !284, line: 650, column: 29)
!2930 = distinct !DILexicalBlock(scope: !2668, file: !284, line: 650, column: 29)
!2931 = !DILocation(line: 647, column: 29, scope: !2669)
!2932 = !DILocation(line: 649, column: 36, scope: !2668)
!2933 = !DILocation(line: 651, column: 49, scope: !2929)
!2934 = !DILocation(line: 651, column: 39, scope: !2929)
!2935 = !DILocation(line: 651, column: 31, scope: !2929)
!2936 = !DILocation(line: 650, column: 53, scope: !2929)
!2937 = !DILocation(line: 650, column: 29, scope: !2930)
!2938 = distinct !{!2938, !2937, !2939}
!2939 = !DILocation(line: 659, column: 33, scope: !2930)
!2940 = !DILocation(line: 666, column: 19, scope: !2646)
!2941 = !DILocation(line: 662, column: 41, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2670, file: !284, line: 662, column: 29)
!2943 = !DILocation(line: 662, column: 31, scope: !2942)
!2944 = !DILocation(line: 662, column: 29, scope: !2670)
!2945 = !DILocation(line: 664, column: 27, scope: !2670)
!2946 = !DILocation(line: 667, column: 26, scope: !2646)
!2947 = !DILocation(line: 667, column: 24, scope: !2646)
!2948 = !DILocation(line: 666, column: 19, scope: !2664)
!2949 = !DILocation(line: 668, column: 15, scope: !2647)
!2950 = !DILocation(line: 670, column: 40, scope: !2642)
!2951 = !DILocation(line: 672, column: 19, scope: !2676)
!2952 = !DILocation(line: 672, column: 45, scope: !2676)
!2953 = !DILocation(line: 672, column: 23, scope: !2676)
!2954 = !DILocation(line: 676, column: 33, scope: !2675)
!2955 = !DILocation(line: 676, column: 24, scope: !2675)
!2956 = !DILocation(line: 678, column: 17, scope: !2675)
!2957 = !DILocation(line: 680, column: 43, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !284, line: 680, column: 25)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !284, line: 679, column: 19)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !284, line: 678, column: 17)
!2961 = distinct !DILexicalBlock(scope: !2675, file: !284, line: 678, column: 17)
!2962 = !DILocation(line: 682, column: 25, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !284, line: 682, column: 25)
!2964 = distinct !DILexicalBlock(scope: !2958, file: !284, line: 681, column: 23)
!2965 = !DILocation(line: 682, column: 25, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2963, file: !284, line: 682, column: 25)
!2967 = !DILocation(line: 682, column: 25, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !284, line: 682, column: 25)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !284, line: 682, column: 25)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !284, line: 682, column: 25)
!2971 = !DILocation(line: 682, column: 25, scope: !2969)
!2972 = !DILocation(line: 682, column: 25, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !284, line: 682, column: 25)
!2974 = distinct !DILexicalBlock(scope: !2970, file: !284, line: 682, column: 25)
!2975 = !DILocation(line: 682, column: 25, scope: !2974)
!2976 = !DILocation(line: 682, column: 25, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !284, line: 682, column: 25)
!2978 = distinct !DILexicalBlock(scope: !2970, file: !284, line: 682, column: 25)
!2979 = !DILocation(line: 682, column: 25, scope: !2978)
!2980 = !DILocation(line: 682, column: 25, scope: !2970)
!2981 = !DILocation(line: 682, column: 25, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !284, line: 682, column: 25)
!2983 = distinct !DILexicalBlock(scope: !2963, file: !284, line: 682, column: 25)
!2984 = !DILocation(line: 682, column: 25, scope: !2983)
!2985 = !DILocation(line: 683, column: 25, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !284, line: 683, column: 25)
!2987 = distinct !DILexicalBlock(scope: !2964, file: !284, line: 683, column: 25)
!2988 = !DILocation(line: 683, column: 25, scope: !2987)
!2989 = !DILocation(line: 684, column: 25, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !284, line: 684, column: 25)
!2991 = distinct !DILexicalBlock(scope: !2964, file: !284, line: 684, column: 25)
!2992 = !DILocation(line: 684, column: 25, scope: !2991)
!2993 = !DILocation(line: 685, column: 38, scope: !2964)
!2994 = !DILocation(line: 685, column: 33, scope: !2964)
!2995 = !DILocation(line: 686, column: 23, scope: !2964)
!2996 = !DILocation(line: 687, column: 30, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2958, file: !284, line: 687, column: 30)
!2998 = !DILocation(line: 687, column: 30, scope: !2958)
!2999 = !DILocation(line: 689, column: 25, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !284, line: 689, column: 25)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !284, line: 689, column: 25)
!3002 = distinct !DILexicalBlock(scope: !2997, file: !284, line: 688, column: 23)
!3003 = !DILocation(line: 689, column: 25, scope: !3001)
!3004 = !DILocation(line: 691, column: 23, scope: !3002)
!3005 = !DILocation(line: 692, column: 35, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2959, file: !284, line: 692, column: 25)
!3007 = !DILocation(line: 692, column: 30, scope: !3006)
!3008 = !DILocation(line: 692, column: 25, scope: !2959)
!3009 = !DILocation(line: 694, column: 21, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !284, line: 694, column: 21)
!3011 = distinct !DILexicalBlock(scope: !2959, file: !284, line: 694, column: 21)
!3012 = !DILocation(line: 694, column: 21, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !284, line: 694, column: 21)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !284, line: 694, column: 21)
!3015 = distinct !DILexicalBlock(scope: !3010, file: !284, line: 694, column: 21)
!3016 = !DILocation(line: 694, column: 21, scope: !3014)
!3017 = !DILocation(line: 694, column: 21, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !284, line: 694, column: 21)
!3019 = distinct !DILexicalBlock(scope: !3015, file: !284, line: 694, column: 21)
!3020 = !DILocation(line: 694, column: 21, scope: !3019)
!3021 = !DILocation(line: 694, column: 21, scope: !3015)
!3022 = !DILocation(line: 695, column: 21, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !284, line: 695, column: 21)
!3024 = distinct !DILexicalBlock(scope: !2959, file: !284, line: 695, column: 21)
!3025 = !DILocation(line: 695, column: 21, scope: !3024)
!3026 = !DILocation(line: 696, column: 25, scope: !2959)
!3027 = !DILocation(line: 678, column: 17, scope: !2960)
!3028 = distinct !{!3028, !3029, !3030}
!3029 = !DILocation(line: 678, column: 17, scope: !2961)
!3030 = !DILocation(line: 697, column: 19, scope: !2961)
!3031 = !DILocation(line: 704, column: 34, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2634, file: !284, line: 704, column: 11)
!3033 = !DILocation(line: 706, column: 14, scope: !3032)
!3034 = !DILocation(line: 707, column: 14, scope: !3032)
!3035 = !DILocation(line: 707, column: 35, scope: !3032)
!3036 = !DILocation(line: 707, column: 17, scope: !3032)
!3037 = !DILocation(line: 707, column: 53, scope: !3032)
!3038 = !DILocation(line: 707, column: 47, scope: !3032)
!3039 = !DILocation(line: 707, column: 65, scope: !3032)
!3040 = !DILocation(line: 708, column: 15, scope: !3032)
!3041 = !DILocation(line: 708, column: 11, scope: !3032)
!3042 = !DILocation(line: 704, column: 11, scope: !2634)
!3043 = !DILocation(line: 712, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2634, file: !284, line: 712, column: 7)
!3045 = !DILocation(line: 712, column: 7, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3044, file: !284, line: 712, column: 7)
!3047 = !DILocation(line: 712, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !284, line: 712, column: 7)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !284, line: 712, column: 7)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !284, line: 712, column: 7)
!3051 = !DILocation(line: 712, column: 7, scope: !3049)
!3052 = !DILocation(line: 712, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !284, line: 712, column: 7)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !284, line: 712, column: 7)
!3055 = !DILocation(line: 712, column: 7, scope: !3054)
!3056 = !DILocation(line: 712, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !284, line: 712, column: 7)
!3058 = distinct !DILexicalBlock(scope: !3050, file: !284, line: 712, column: 7)
!3059 = !DILocation(line: 712, column: 7, scope: !3058)
!3060 = !DILocation(line: 712, column: 7, scope: !3050)
!3061 = !DILocation(line: 712, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !284, line: 712, column: 7)
!3063 = distinct !DILexicalBlock(scope: !3044, file: !284, line: 712, column: 7)
!3064 = !DILocation(line: 712, column: 7, scope: !3063)
!3065 = !DILocation(line: 715, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !284, line: 715, column: 7)
!3067 = distinct !DILexicalBlock(scope: !2634, file: !284, line: 715, column: 7)
!3068 = !DILocation(line: 715, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !284, line: 715, column: 7)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !284, line: 715, column: 7)
!3071 = distinct !DILexicalBlock(scope: !3066, file: !284, line: 715, column: 7)
!3072 = !DILocation(line: 715, column: 7, scope: !3070)
!3073 = !DILocation(line: 715, column: 7, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !284, line: 715, column: 7)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !284, line: 715, column: 7)
!3076 = !DILocation(line: 715, column: 7, scope: !3075)
!3077 = !DILocation(line: 715, column: 7, scope: !3071)
!3078 = !DILocation(line: 716, column: 7, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !284, line: 716, column: 7)
!3080 = distinct !DILexicalBlock(scope: !2634, file: !284, line: 716, column: 7)
!3081 = !DILocation(line: 716, column: 7, scope: !3080)
!3082 = !DILocation(line: 718, column: 13, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !2634, file: !284, line: 718, column: 11)
!3084 = !DILocation(line: 718, column: 11, scope: !2634)
!3085 = !DILocation(line: 720, column: 5, scope: !2635)
!3086 = !DILocation(line: 392, column: 75, scope: !2635)
!3087 = !DILocation(line: 392, column: 3, scope: !2635)
!3088 = distinct !{!3088, !2748, !3089}
!3089 = !DILocation(line: 720, column: 5, scope: !2636)
!3090 = !DILocation(line: 722, column: 11, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !2607, file: !284, line: 722, column: 7)
!3092 = !DILocation(line: 722, column: 16, scope: !3091)
!3093 = !DILocation(line: 730, column: 51, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !2607, file: !284, line: 730, column: 7)
!3095 = !DILocation(line: 731, column: 10, scope: !3094)
!3096 = !DILocation(line: 733, column: 11, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !284, line: 733, column: 11)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !284, line: 732, column: 5)
!3099 = !DILocation(line: 733, column: 11, scope: !3098)
!3100 = !DILocation(line: 734, column: 16, scope: !3097)
!3101 = !DILocation(line: 734, column: 9, scope: !3097)
!3102 = !DILocation(line: 738, column: 18, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3097, file: !284, line: 738, column: 16)
!3104 = !DILocation(line: 738, column: 32, scope: !3103)
!3105 = !DILocation(line: 738, column: 29, scope: !3103)
!3106 = !DILocation(line: 747, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2607, file: !284, line: 747, column: 7)
!3108 = !DILocation(line: 747, column: 20, scope: !3107)
!3109 = !DILocation(line: 748, column: 12, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !284, line: 748, column: 5)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !284, line: 748, column: 5)
!3112 = !DILocation(line: 748, column: 5, scope: !3111)
!3113 = !DILocation(line: 749, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !284, line: 749, column: 7)
!3115 = distinct !DILexicalBlock(scope: !3110, file: !284, line: 749, column: 7)
!3116 = !DILocation(line: 749, column: 7, scope: !3115)
!3117 = !DILocation(line: 748, column: 39, scope: !3110)
!3118 = distinct !{!3118, !3112, !3119}
!3119 = !DILocation(line: 749, column: 7, scope: !3111)
!3120 = !DILocation(line: 751, column: 11, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !2607, file: !284, line: 751, column: 7)
!3122 = !DILocation(line: 751, column: 7, scope: !2607)
!3123 = !DILocation(line: 752, column: 5, scope: !3121)
!3124 = !DILocation(line: 752, column: 17, scope: !3121)
!3125 = !DILocation(line: 758, column: 21, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !2607, file: !284, line: 758, column: 7)
!3127 = !DILocation(line: 758, column: 54, scope: !3126)
!3128 = !DILocation(line: 758, column: 51, scope: !3126)
!3129 = !DILocation(line: 762, column: 42, scope: !2607)
!3130 = !DILocation(line: 760, column: 10, scope: !2607)
!3131 = !DILocation(line: 760, column: 3, scope: !2607)
!3132 = !DILocation(line: 764, column: 1, scope: !2607)
!3133 = distinct !DISubprogram(name: "gettext_quote", scope: !284, file: !284, line: 199, type: !3134, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!80, !80, !5}
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DILocalVariable(name: "msgid", arg: 1, scope: !3133, file: !284, line: 199, type: !80)
!3138 = !DILocalVariable(name: "s", arg: 2, scope: !3133, file: !284, line: 199, type: !5)
!3139 = !DILocalVariable(name: "translation", scope: !3133, file: !284, line: 201, type: !80)
!3140 = !DILocalVariable(name: "locale_code", scope: !3133, file: !284, line: 202, type: !80)
!3141 = !DILocation(line: 199, column: 28, scope: !3133)
!3142 = !DILocation(line: 199, column: 54, scope: !3133)
!3143 = !DILocation(line: 201, column: 29, scope: !3133)
!3144 = !DILocation(line: 201, column: 15, scope: !3133)
!3145 = !DILocation(line: 204, column: 19, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3133, file: !284, line: 204, column: 7)
!3147 = !DILocation(line: 204, column: 7, scope: !3133)
!3148 = !DILocation(line: 225, column: 17, scope: !3133)
!3149 = !DILocation(line: 202, column: 15, scope: !3133)
!3150 = !DILocalVariable(name: "s2", arg: 2, scope: !3151, file: !3152, line: 160, type: !80)
!3151 = distinct !DISubprogram(name: "strcaseeq0", scope: !3152, file: !3152, line: 160, type: !3153, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3155)
!3152 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!63, !80, !80, !59, !59, !59, !59, !59, !59, !59, !59, !59}
!3155 = !{!3156, !3150, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165}
!3156 = !DILocalVariable(name: "s1", arg: 1, scope: !3151, file: !3152, line: 160, type: !80)
!3157 = !DILocalVariable(name: "s20", arg: 3, scope: !3151, file: !3152, line: 160, type: !59)
!3158 = !DILocalVariable(name: "s21", arg: 4, scope: !3151, file: !3152, line: 160, type: !59)
!3159 = !DILocalVariable(name: "s22", arg: 5, scope: !3151, file: !3152, line: 160, type: !59)
!3160 = !DILocalVariable(name: "s23", arg: 6, scope: !3151, file: !3152, line: 160, type: !59)
!3161 = !DILocalVariable(name: "s24", arg: 7, scope: !3151, file: !3152, line: 160, type: !59)
!3162 = !DILocalVariable(name: "s25", arg: 8, scope: !3151, file: !3152, line: 160, type: !59)
!3163 = !DILocalVariable(name: "s26", arg: 9, scope: !3151, file: !3152, line: 160, type: !59)
!3164 = !DILocalVariable(name: "s27", arg: 10, scope: !3151, file: !3152, line: 160, type: !59)
!3165 = !DILocalVariable(name: "s28", arg: 11, scope: !3151, file: !3152, line: 160, type: !59)
!3166 = !DILocation(line: 160, column: 41, scope: !3151, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 226, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3133, file: !284, line: 226, column: 7)
!3169 = !DILocation(line: 160, column: 120, scope: !3151, inlinedAt: !3167)
!3170 = !DILocation(line: 160, column: 130, scope: !3151, inlinedAt: !3167)
!3171 = !DILocation(line: 162, column: 7, scope: !3172, inlinedAt: !3167)
!3172 = distinct !DILexicalBlock(scope: !3151, file: !3152, line: 162, column: 7)
!3173 = !DILocalVariable(name: "s2", arg: 2, scope: !3174, file: !3152, line: 146, type: !80)
!3174 = distinct !DISubprogram(name: "strcaseeq1", scope: !3152, file: !3152, line: 146, type: !3175, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!63, !80, !80, !59, !59, !59, !59, !59, !59, !59, !59}
!3177 = !{!3178, !3173, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!3178 = !DILocalVariable(name: "s1", arg: 1, scope: !3174, file: !3152, line: 146, type: !80)
!3179 = !DILocalVariable(name: "s21", arg: 3, scope: !3174, file: !3152, line: 146, type: !59)
!3180 = !DILocalVariable(name: "s22", arg: 4, scope: !3174, file: !3152, line: 146, type: !59)
!3181 = !DILocalVariable(name: "s23", arg: 5, scope: !3174, file: !3152, line: 146, type: !59)
!3182 = !DILocalVariable(name: "s24", arg: 6, scope: !3174, file: !3152, line: 146, type: !59)
!3183 = !DILocalVariable(name: "s25", arg: 7, scope: !3174, file: !3152, line: 146, type: !59)
!3184 = !DILocalVariable(name: "s26", arg: 8, scope: !3174, file: !3152, line: 146, type: !59)
!3185 = !DILocalVariable(name: "s27", arg: 9, scope: !3174, file: !3152, line: 146, type: !59)
!3186 = !DILocalVariable(name: "s28", arg: 10, scope: !3174, file: !3152, line: 146, type: !59)
!3187 = !DILocation(line: 146, column: 41, scope: !3174, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 167, column: 16, scope: !3189, inlinedAt: !3167)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !3152, line: 164, column: 11)
!3190 = distinct !DILexicalBlock(scope: !3172, file: !3152, line: 163, column: 5)
!3191 = !DILocation(line: 146, column: 110, scope: !3174, inlinedAt: !3188)
!3192 = !DILocation(line: 146, column: 120, scope: !3174, inlinedAt: !3188)
!3193 = !DILocation(line: 148, column: 7, scope: !3194, inlinedAt: !3188)
!3194 = distinct !DILexicalBlock(scope: !3174, file: !3152, line: 148, column: 7)
!3195 = !DILocalVariable(name: "s2", arg: 2, scope: !3196, file: !3152, line: 132, type: !80)
!3196 = distinct !DISubprogram(name: "strcaseeq2", scope: !3152, file: !3152, line: 132, type: !3197, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!63, !80, !80, !59, !59, !59, !59, !59, !59, !59}
!3199 = !{!3200, !3195, !3201, !3202, !3203, !3204, !3205, !3206, !3207}
!3200 = !DILocalVariable(name: "s1", arg: 1, scope: !3196, file: !3152, line: 132, type: !80)
!3201 = !DILocalVariable(name: "s22", arg: 3, scope: !3196, file: !3152, line: 132, type: !59)
!3202 = !DILocalVariable(name: "s23", arg: 4, scope: !3196, file: !3152, line: 132, type: !59)
!3203 = !DILocalVariable(name: "s24", arg: 5, scope: !3196, file: !3152, line: 132, type: !59)
!3204 = !DILocalVariable(name: "s25", arg: 6, scope: !3196, file: !3152, line: 132, type: !59)
!3205 = !DILocalVariable(name: "s26", arg: 7, scope: !3196, file: !3152, line: 132, type: !59)
!3206 = !DILocalVariable(name: "s27", arg: 8, scope: !3196, file: !3152, line: 132, type: !59)
!3207 = !DILocalVariable(name: "s28", arg: 9, scope: !3196, file: !3152, line: 132, type: !59)
!3208 = !DILocation(line: 132, column: 41, scope: !3196, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 153, column: 16, scope: !3210, inlinedAt: !3188)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !3152, line: 150, column: 11)
!3211 = distinct !DILexicalBlock(scope: !3194, file: !3152, line: 149, column: 5)
!3212 = !DILocation(line: 132, column: 100, scope: !3196, inlinedAt: !3209)
!3213 = !DILocation(line: 132, column: 110, scope: !3196, inlinedAt: !3209)
!3214 = !DILocation(line: 134, column: 7, scope: !3215, inlinedAt: !3209)
!3215 = distinct !DILexicalBlock(scope: !3196, file: !3152, line: 134, column: 7)
!3216 = !DILocalVariable(name: "s2", arg: 2, scope: !3217, file: !3152, line: 118, type: !80)
!3217 = distinct !DISubprogram(name: "strcaseeq3", scope: !3152, file: !3152, line: 118, type: !3218, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!63, !80, !80, !59, !59, !59, !59, !59, !59}
!3220 = !{!3221, !3216, !3222, !3223, !3224, !3225, !3226, !3227}
!3221 = !DILocalVariable(name: "s1", arg: 1, scope: !3217, file: !3152, line: 118, type: !80)
!3222 = !DILocalVariable(name: "s23", arg: 3, scope: !3217, file: !3152, line: 118, type: !59)
!3223 = !DILocalVariable(name: "s24", arg: 4, scope: !3217, file: !3152, line: 118, type: !59)
!3224 = !DILocalVariable(name: "s25", arg: 5, scope: !3217, file: !3152, line: 118, type: !59)
!3225 = !DILocalVariable(name: "s26", arg: 6, scope: !3217, file: !3152, line: 118, type: !59)
!3226 = !DILocalVariable(name: "s27", arg: 7, scope: !3217, file: !3152, line: 118, type: !59)
!3227 = !DILocalVariable(name: "s28", arg: 8, scope: !3217, file: !3152, line: 118, type: !59)
!3228 = !DILocation(line: 118, column: 41, scope: !3217, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 139, column: 16, scope: !3230, inlinedAt: !3209)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3152, line: 136, column: 11)
!3231 = distinct !DILexicalBlock(scope: !3215, file: !3152, line: 135, column: 5)
!3232 = !DILocation(line: 118, column: 90, scope: !3217, inlinedAt: !3229)
!3233 = !DILocation(line: 118, column: 100, scope: !3217, inlinedAt: !3229)
!3234 = !DILocation(line: 120, column: 7, scope: !3235, inlinedAt: !3229)
!3235 = distinct !DILexicalBlock(scope: !3217, file: !3152, line: 120, column: 7)
!3236 = !DILocation(line: 120, column: 7, scope: !3217, inlinedAt: !3229)
!3237 = !DILocalVariable(name: "s2", arg: 2, scope: !3238, file: !3152, line: 104, type: !80)
!3238 = distinct !DISubprogram(name: "strcaseeq4", scope: !3152, file: !3152, line: 104, type: !3239, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!63, !80, !80, !59, !59, !59, !59, !59}
!3241 = !{!3242, !3237, !3243, !3244, !3245, !3246, !3247}
!3242 = !DILocalVariable(name: "s1", arg: 1, scope: !3238, file: !3152, line: 104, type: !80)
!3243 = !DILocalVariable(name: "s24", arg: 3, scope: !3238, file: !3152, line: 104, type: !59)
!3244 = !DILocalVariable(name: "s25", arg: 4, scope: !3238, file: !3152, line: 104, type: !59)
!3245 = !DILocalVariable(name: "s26", arg: 5, scope: !3238, file: !3152, line: 104, type: !59)
!3246 = !DILocalVariable(name: "s27", arg: 6, scope: !3238, file: !3152, line: 104, type: !59)
!3247 = !DILocalVariable(name: "s28", arg: 7, scope: !3238, file: !3152, line: 104, type: !59)
!3248 = !DILocation(line: 104, column: 41, scope: !3238, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 125, column: 16, scope: !3250, inlinedAt: !3229)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !3152, line: 122, column: 11)
!3251 = distinct !DILexicalBlock(scope: !3235, file: !3152, line: 121, column: 5)
!3252 = !DILocation(line: 104, column: 80, scope: !3238, inlinedAt: !3249)
!3253 = !DILocation(line: 104, column: 90, scope: !3238, inlinedAt: !3249)
!3254 = !DILocation(line: 106, column: 7, scope: !3255, inlinedAt: !3249)
!3255 = distinct !DILexicalBlock(scope: !3238, file: !3152, line: 106, column: 7)
!3256 = !DILocation(line: 106, column: 7, scope: !3238, inlinedAt: !3249)
!3257 = !DILocalVariable(name: "s2", arg: 2, scope: !3258, file: !3152, line: 90, type: !80)
!3258 = distinct !DISubprogram(name: "strcaseeq5", scope: !3152, file: !3152, line: 90, type: !3259, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!63, !80, !80, !59, !59, !59, !59}
!3261 = !{!3262, !3257, !3263, !3264, !3265, !3266}
!3262 = !DILocalVariable(name: "s1", arg: 1, scope: !3258, file: !3152, line: 90, type: !80)
!3263 = !DILocalVariable(name: "s25", arg: 3, scope: !3258, file: !3152, line: 90, type: !59)
!3264 = !DILocalVariable(name: "s26", arg: 4, scope: !3258, file: !3152, line: 90, type: !59)
!3265 = !DILocalVariable(name: "s27", arg: 5, scope: !3258, file: !3152, line: 90, type: !59)
!3266 = !DILocalVariable(name: "s28", arg: 6, scope: !3258, file: !3152, line: 90, type: !59)
!3267 = !DILocation(line: 90, column: 41, scope: !3258, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 111, column: 16, scope: !3269, inlinedAt: !3249)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3152, line: 108, column: 11)
!3270 = distinct !DILexicalBlock(scope: !3255, file: !3152, line: 107, column: 5)
!3271 = !DILocation(line: 90, column: 70, scope: !3258, inlinedAt: !3268)
!3272 = !DILocation(line: 90, column: 80, scope: !3258, inlinedAt: !3268)
!3273 = !DILocation(line: 92, column: 7, scope: !3274, inlinedAt: !3268)
!3274 = distinct !DILexicalBlock(scope: !3258, file: !3152, line: 92, column: 7)
!3275 = !DILocation(line: 92, column: 7, scope: !3258, inlinedAt: !3268)
!3276 = !DILocation(line: 227, column: 12, scope: !3168)
!3277 = !DILocation(line: 227, column: 21, scope: !3168)
!3278 = !DILocation(line: 227, column: 5, scope: !3168)
!3279 = !DILocation(line: 146, column: 41, scope: !3174, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 167, column: 16, scope: !3189, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 228, column: 7, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3133, file: !284, line: 228, column: 7)
!3283 = !DILocation(line: 146, column: 110, scope: !3174, inlinedAt: !3280)
!3284 = !DILocation(line: 146, column: 120, scope: !3174, inlinedAt: !3280)
!3285 = !DILocation(line: 148, column: 7, scope: !3194, inlinedAt: !3280)
!3286 = !DILocation(line: 132, column: 41, scope: !3196, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 153, column: 16, scope: !3210, inlinedAt: !3280)
!3288 = !DILocation(line: 132, column: 100, scope: !3196, inlinedAt: !3287)
!3289 = !DILocation(line: 132, column: 110, scope: !3196, inlinedAt: !3287)
!3290 = !DILocation(line: 134, column: 7, scope: !3215, inlinedAt: !3287)
!3291 = !DILocation(line: 134, column: 7, scope: !3196, inlinedAt: !3287)
!3292 = !DILocation(line: 118, column: 41, scope: !3217, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 139, column: 16, scope: !3230, inlinedAt: !3287)
!3294 = !DILocation(line: 118, column: 90, scope: !3217, inlinedAt: !3293)
!3295 = !DILocation(line: 118, column: 100, scope: !3217, inlinedAt: !3293)
!3296 = !DILocation(line: 120, column: 7, scope: !3235, inlinedAt: !3293)
!3297 = !DILocation(line: 120, column: 7, scope: !3217, inlinedAt: !3293)
!3298 = !DILocation(line: 104, column: 41, scope: !3238, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 125, column: 16, scope: !3250, inlinedAt: !3293)
!3300 = !DILocation(line: 104, column: 80, scope: !3238, inlinedAt: !3299)
!3301 = !DILocation(line: 104, column: 90, scope: !3238, inlinedAt: !3299)
!3302 = !DILocation(line: 106, column: 7, scope: !3255, inlinedAt: !3299)
!3303 = !DILocation(line: 106, column: 7, scope: !3238, inlinedAt: !3299)
!3304 = !DILocation(line: 90, column: 41, scope: !3258, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 111, column: 16, scope: !3269, inlinedAt: !3299)
!3306 = !DILocation(line: 90, column: 70, scope: !3258, inlinedAt: !3305)
!3307 = !DILocation(line: 90, column: 80, scope: !3258, inlinedAt: !3305)
!3308 = !DILocation(line: 92, column: 7, scope: !3274, inlinedAt: !3305)
!3309 = !DILocation(line: 92, column: 7, scope: !3258, inlinedAt: !3305)
!3310 = !DILocalVariable(name: "s2", arg: 2, scope: !3311, file: !3152, line: 76, type: !80)
!3311 = distinct !DISubprogram(name: "strcaseeq6", scope: !3152, file: !3152, line: 76, type: !3312, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!63, !80, !80, !59, !59, !59}
!3314 = !{!3315, !3310, !3316, !3317, !3318}
!3315 = !DILocalVariable(name: "s1", arg: 1, scope: !3311, file: !3152, line: 76, type: !80)
!3316 = !DILocalVariable(name: "s26", arg: 3, scope: !3311, file: !3152, line: 76, type: !59)
!3317 = !DILocalVariable(name: "s27", arg: 4, scope: !3311, file: !3152, line: 76, type: !59)
!3318 = !DILocalVariable(name: "s28", arg: 5, scope: !3311, file: !3152, line: 76, type: !59)
!3319 = !DILocation(line: 76, column: 41, scope: !3311, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 97, column: 16, scope: !3321, inlinedAt: !3305)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !3152, line: 94, column: 11)
!3322 = distinct !DILexicalBlock(scope: !3274, file: !3152, line: 93, column: 5)
!3323 = !DILocation(line: 76, column: 60, scope: !3311, inlinedAt: !3320)
!3324 = !DILocation(line: 76, column: 70, scope: !3311, inlinedAt: !3320)
!3325 = !DILocation(line: 78, column: 7, scope: !3326, inlinedAt: !3320)
!3326 = distinct !DILexicalBlock(scope: !3311, file: !3152, line: 78, column: 7)
!3327 = !DILocation(line: 78, column: 7, scope: !3311, inlinedAt: !3320)
!3328 = !DILocalVariable(name: "s2", arg: 2, scope: !3329, file: !3152, line: 62, type: !80)
!3329 = distinct !DISubprogram(name: "strcaseeq7", scope: !3152, file: !3152, line: 62, type: !3330, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!63, !80, !80, !59, !59}
!3332 = !{!3333, !3328, !3334, !3335}
!3333 = !DILocalVariable(name: "s1", arg: 1, scope: !3329, file: !3152, line: 62, type: !80)
!3334 = !DILocalVariable(name: "s27", arg: 3, scope: !3329, file: !3152, line: 62, type: !59)
!3335 = !DILocalVariable(name: "s28", arg: 4, scope: !3329, file: !3152, line: 62, type: !59)
!3336 = !DILocation(line: 62, column: 41, scope: !3329, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 83, column: 16, scope: !3338, inlinedAt: !3320)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3152, line: 80, column: 11)
!3339 = distinct !DILexicalBlock(scope: !3326, file: !3152, line: 79, column: 5)
!3340 = !DILocation(line: 62, column: 50, scope: !3329, inlinedAt: !3337)
!3341 = !DILocation(line: 62, column: 60, scope: !3329, inlinedAt: !3337)
!3342 = !DILocation(line: 64, column: 7, scope: !3343, inlinedAt: !3337)
!3343 = distinct !DILexicalBlock(scope: !3329, file: !3152, line: 64, column: 7)
!3344 = !DILocation(line: 228, column: 7, scope: !3133)
!3345 = !DILocation(line: 229, column: 12, scope: !3282)
!3346 = !DILocation(line: 229, column: 21, scope: !3282)
!3347 = !DILocation(line: 229, column: 5, scope: !3282)
!3348 = !DILocation(line: 231, column: 13, scope: !3133)
!3349 = !DILocation(line: 231, column: 11, scope: !3133)
!3350 = !DILocation(line: 231, column: 3, scope: !3133)
!3351 = !DILocation(line: 232, column: 1, scope: !3133)
!3352 = distinct !DISubprogram(name: "quotearg_alloc", scope: !284, file: !284, line: 791, type: !3353, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!58, !80, !61, !2479}
!3355 = !{!3356, !3357, !3358}
!3356 = !DILocalVariable(name: "arg", arg: 1, scope: !3352, file: !284, line: 791, type: !80)
!3357 = !DILocalVariable(name: "argsize", arg: 2, scope: !3352, file: !284, line: 791, type: !61)
!3358 = !DILocalVariable(name: "o", arg: 3, scope: !3352, file: !284, line: 792, type: !2479)
!3359 = !DILocation(line: 791, column: 29, scope: !3352)
!3360 = !DILocation(line: 791, column: 41, scope: !3352)
!3361 = !DILocation(line: 792, column: 47, scope: !3352)
!3362 = !DILocalVariable(name: "arg", arg: 1, scope: !3363, file: !284, line: 804, type: !80)
!3363 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !284, file: !284, line: 804, type: !3364, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!58, !80, !61, !737, !2479}
!3366 = !{!3362, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374}
!3367 = !DILocalVariable(name: "argsize", arg: 2, scope: !3363, file: !284, line: 804, type: !61)
!3368 = !DILocalVariable(name: "size", arg: 3, scope: !3363, file: !284, line: 804, type: !737)
!3369 = !DILocalVariable(name: "o", arg: 4, scope: !3363, file: !284, line: 805, type: !2479)
!3370 = !DILocalVariable(name: "p", scope: !3363, file: !284, line: 807, type: !2479)
!3371 = !DILocalVariable(name: "e", scope: !3363, file: !284, line: 808, type: !63)
!3372 = !DILocalVariable(name: "flags", scope: !3363, file: !284, line: 810, type: !63)
!3373 = !DILocalVariable(name: "bufsize", scope: !3363, file: !284, line: 811, type: !61)
!3374 = !DILocalVariable(name: "buf", scope: !3363, file: !284, line: 815, type: !58)
!3375 = !DILocation(line: 804, column: 33, scope: !3363, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 794, column: 10, scope: !3352)
!3377 = !DILocation(line: 804, column: 45, scope: !3363, inlinedAt: !3376)
!3378 = !DILocation(line: 804, column: 62, scope: !3363, inlinedAt: !3376)
!3379 = !DILocation(line: 805, column: 51, scope: !3363, inlinedAt: !3376)
!3380 = !DILocation(line: 807, column: 37, scope: !3363, inlinedAt: !3376)
!3381 = !DILocation(line: 807, column: 33, scope: !3363, inlinedAt: !3376)
!3382 = !DILocation(line: 808, column: 11, scope: !3363, inlinedAt: !3376)
!3383 = !DILocation(line: 808, column: 7, scope: !3363, inlinedAt: !3376)
!3384 = !DILocation(line: 810, column: 18, scope: !3363, inlinedAt: !3376)
!3385 = !DILocation(line: 810, column: 24, scope: !3363, inlinedAt: !3376)
!3386 = !DILocation(line: 810, column: 7, scope: !3363, inlinedAt: !3376)
!3387 = !DILocation(line: 811, column: 69, scope: !3363, inlinedAt: !3376)
!3388 = !DILocation(line: 812, column: 53, scope: !3363, inlinedAt: !3376)
!3389 = !DILocation(line: 813, column: 49, scope: !3363, inlinedAt: !3376)
!3390 = !DILocation(line: 814, column: 49, scope: !3363, inlinedAt: !3376)
!3391 = !DILocation(line: 811, column: 20, scope: !3363, inlinedAt: !3376)
!3392 = !DILocation(line: 814, column: 62, scope: !3363, inlinedAt: !3376)
!3393 = !DILocation(line: 811, column: 10, scope: !3363, inlinedAt: !3376)
!3394 = !DILocalVariable(name: "n", arg: 1, scope: !3395, file: !733, line: 220, type: !61)
!3395 = distinct !DISubprogram(name: "xcharalloc", scope: !733, file: !733, line: 220, type: !3396, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!58, !61}
!3398 = !{!3394}
!3399 = !DILocation(line: 220, column: 20, scope: !3395, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 815, column: 15, scope: !3363, inlinedAt: !3376)
!3401 = !DILocation(line: 222, column: 10, scope: !3395, inlinedAt: !3400)
!3402 = !DILocation(line: 815, column: 9, scope: !3363, inlinedAt: !3376)
!3403 = !DILocation(line: 816, column: 60, scope: !3363, inlinedAt: !3376)
!3404 = !DILocation(line: 818, column: 32, scope: !3363, inlinedAt: !3376)
!3405 = !DILocation(line: 818, column: 47, scope: !3363, inlinedAt: !3376)
!3406 = !DILocation(line: 816, column: 3, scope: !3363, inlinedAt: !3376)
!3407 = !DILocation(line: 819, column: 9, scope: !3363, inlinedAt: !3376)
!3408 = !DILocation(line: 794, column: 3, scope: !3352)
!3409 = !DILocation(line: 804, column: 33, scope: !3363)
!3410 = !DILocation(line: 804, column: 45, scope: !3363)
!3411 = !DILocation(line: 804, column: 62, scope: !3363)
!3412 = !DILocation(line: 805, column: 51, scope: !3363)
!3413 = !DILocation(line: 807, column: 37, scope: !3363)
!3414 = !DILocation(line: 807, column: 33, scope: !3363)
!3415 = !DILocation(line: 808, column: 11, scope: !3363)
!3416 = !DILocation(line: 808, column: 7, scope: !3363)
!3417 = !DILocation(line: 810, column: 18, scope: !3363)
!3418 = !DILocation(line: 810, column: 27, scope: !3363)
!3419 = !DILocation(line: 810, column: 24, scope: !3363)
!3420 = !DILocation(line: 810, column: 7, scope: !3363)
!3421 = !DILocation(line: 811, column: 69, scope: !3363)
!3422 = !DILocation(line: 812, column: 53, scope: !3363)
!3423 = !DILocation(line: 813, column: 49, scope: !3363)
!3424 = !DILocation(line: 814, column: 49, scope: !3363)
!3425 = !DILocation(line: 811, column: 20, scope: !3363)
!3426 = !DILocation(line: 814, column: 62, scope: !3363)
!3427 = !DILocation(line: 811, column: 10, scope: !3363)
!3428 = !DILocation(line: 220, column: 20, scope: !3395, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 815, column: 15, scope: !3363)
!3430 = !DILocation(line: 222, column: 10, scope: !3395, inlinedAt: !3429)
!3431 = !DILocation(line: 815, column: 9, scope: !3363)
!3432 = !DILocation(line: 816, column: 60, scope: !3363)
!3433 = !DILocation(line: 818, column: 32, scope: !3363)
!3434 = !DILocation(line: 818, column: 47, scope: !3363)
!3435 = !DILocation(line: 816, column: 3, scope: !3363)
!3436 = !DILocation(line: 819, column: 9, scope: !3363)
!3437 = !DILocation(line: 820, column: 7, scope: !3363)
!3438 = !DILocation(line: 821, column: 11, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3363, file: !284, line: 820, column: 7)
!3440 = !DILocation(line: 821, column: 5, scope: !3439)
!3441 = !DILocation(line: 822, column: 3, scope: !3363)
!3442 = distinct !DISubprogram(name: "quotearg_free", scope: !284, file: !284, line: 840, type: !789, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3443)
!3443 = !{!3444, !3445}
!3444 = !DILocalVariable(name: "sv", scope: !3442, file: !284, line: 842, type: !310)
!3445 = !DILocalVariable(name: "i", scope: !3442, file: !284, line: 843, type: !63)
!3446 = !DILocation(line: 842, column: 24, scope: !3442)
!3447 = !DILocation(line: 842, column: 19, scope: !3442)
!3448 = !DILocation(line: 843, column: 7, scope: !3442)
!3449 = !DILocation(line: 844, column: 19, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !284, line: 844, column: 3)
!3451 = distinct !DILexicalBlock(scope: !3442, file: !284, line: 844, column: 3)
!3452 = !DILocation(line: 844, column: 17, scope: !3450)
!3453 = !DILocation(line: 844, column: 3, scope: !3451)
!3454 = !DILocation(line: 845, column: 17, scope: !3450)
!3455 = !{!3456, !782, i64 8}
!3456 = !{!"slotvec", !1014, i64 0, !782, i64 8}
!3457 = !DILocation(line: 845, column: 5, scope: !3450)
!3458 = !DILocation(line: 844, column: 28, scope: !3450)
!3459 = distinct !{!3459, !3453, !3460}
!3460 = !DILocation(line: 845, column: 20, scope: !3451)
!3461 = !DILocation(line: 846, column: 13, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3442, file: !284, line: 846, column: 7)
!3463 = !DILocation(line: 846, column: 17, scope: !3462)
!3464 = !DILocation(line: 846, column: 7, scope: !3442)
!3465 = !DILocation(line: 848, column: 7, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3462, file: !284, line: 847, column: 5)
!3467 = !DILocation(line: 849, column: 21, scope: !3466)
!3468 = !{!3456, !1014, i64 0}
!3469 = !DILocation(line: 850, column: 20, scope: !3466)
!3470 = !DILocation(line: 851, column: 5, scope: !3466)
!3471 = !DILocation(line: 852, column: 10, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3442, file: !284, line: 852, column: 7)
!3473 = !DILocation(line: 852, column: 7, scope: !3442)
!3474 = !DILocation(line: 854, column: 13, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3472, file: !284, line: 853, column: 5)
!3476 = !DILocation(line: 854, column: 7, scope: !3475)
!3477 = !DILocation(line: 855, column: 15, scope: !3475)
!3478 = !DILocation(line: 856, column: 5, scope: !3475)
!3479 = !DILocation(line: 857, column: 10, scope: !3442)
!3480 = !DILocation(line: 858, column: 1, scope: !3442)
!3481 = distinct !DISubprogram(name: "quotearg_n", scope: !284, file: !284, line: 922, type: !3482, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!58, !63, !80}
!3484 = !{!3485, !3486}
!3485 = !DILocalVariable(name: "n", arg: 1, scope: !3481, file: !284, line: 922, type: !63)
!3486 = !DILocalVariable(name: "arg", arg: 2, scope: !3481, file: !284, line: 922, type: !80)
!3487 = !DILocation(line: 922, column: 17, scope: !3481)
!3488 = !DILocation(line: 922, column: 32, scope: !3481)
!3489 = !DILocation(line: 924, column: 10, scope: !3481)
!3490 = !DILocation(line: 924, column: 3, scope: !3481)
!3491 = distinct !DISubprogram(name: "quotearg_n_options", scope: !284, file: !284, line: 869, type: !3492, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!58, !63, !80, !61, !2479}
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3504, !3506, !3507, !3508}
!3495 = !DILocalVariable(name: "n", arg: 1, scope: !3491, file: !284, line: 869, type: !63)
!3496 = !DILocalVariable(name: "arg", arg: 2, scope: !3491, file: !284, line: 869, type: !80)
!3497 = !DILocalVariable(name: "argsize", arg: 3, scope: !3491, file: !284, line: 869, type: !61)
!3498 = !DILocalVariable(name: "options", arg: 4, scope: !3491, file: !284, line: 870, type: !2479)
!3499 = !DILocalVariable(name: "e", scope: !3491, file: !284, line: 872, type: !63)
!3500 = !DILocalVariable(name: "sv", scope: !3491, file: !284, line: 874, type: !310)
!3501 = !DILocalVariable(name: "preallocated", scope: !3502, file: !284, line: 881, type: !70)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !284, line: 880, column: 5)
!3503 = distinct !DILexicalBlock(scope: !3491, file: !284, line: 879, column: 7)
!3504 = !DILocalVariable(name: "size", scope: !3505, file: !284, line: 894, type: !61)
!3505 = distinct !DILexicalBlock(scope: !3491, file: !284, line: 893, column: 3)
!3506 = !DILocalVariable(name: "val", scope: !3505, file: !284, line: 895, type: !58)
!3507 = !DILocalVariable(name: "flags", scope: !3505, file: !284, line: 897, type: !63)
!3508 = !DILocalVariable(name: "qsize", scope: !3505, file: !284, line: 898, type: !61)
!3509 = !DILocation(line: 869, column: 25, scope: !3491)
!3510 = !DILocation(line: 869, column: 40, scope: !3491)
!3511 = !DILocation(line: 869, column: 52, scope: !3491)
!3512 = !DILocation(line: 870, column: 51, scope: !3491)
!3513 = !DILocation(line: 872, column: 11, scope: !3491)
!3514 = !DILocation(line: 872, column: 7, scope: !3491)
!3515 = !DILocation(line: 874, column: 24, scope: !3491)
!3516 = !DILocation(line: 874, column: 19, scope: !3491)
!3517 = !DILocation(line: 876, column: 9, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3491, file: !284, line: 876, column: 7)
!3519 = !DILocation(line: 876, column: 7, scope: !3491)
!3520 = !DILocation(line: 877, column: 5, scope: !3518)
!3521 = !DILocation(line: 879, column: 7, scope: !3503)
!3522 = !DILocation(line: 879, column: 14, scope: !3503)
!3523 = !DILocation(line: 879, column: 7, scope: !3491)
!3524 = !DILocation(line: 881, column: 31, scope: !3502)
!3525 = !DILocation(line: 883, column: 67, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3502, file: !284, line: 883, column: 11)
!3527 = !DILocation(line: 883, column: 11, scope: !3502)
!3528 = !DILocation(line: 884, column: 9, scope: !3526)
!3529 = !DILocation(line: 886, column: 32, scope: !3502)
!3530 = !DILocation(line: 886, column: 61, scope: !3502)
!3531 = !DILocation(line: 886, column: 58, scope: !3502)
!3532 = !DILocation(line: 886, column: 66, scope: !3502)
!3533 = !DILocation(line: 886, column: 22, scope: !3502)
!3534 = !DILocation(line: 886, column: 15, scope: !3502)
!3535 = !DILocation(line: 887, column: 11, scope: !3502)
!3536 = !DILocation(line: 888, column: 15, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3502, file: !284, line: 887, column: 11)
!3538 = !{i64 0, i64 8, !1013, i64 8, i64 8, !781}
!3539 = !DILocation(line: 888, column: 9, scope: !3537)
!3540 = !DILocation(line: 889, column: 20, scope: !3502)
!3541 = !DILocation(line: 889, column: 18, scope: !3502)
!3542 = !DILocation(line: 889, column: 7, scope: !3502)
!3543 = !DILocation(line: 889, column: 38, scope: !3502)
!3544 = !DILocation(line: 889, column: 31, scope: !3502)
!3545 = !DILocation(line: 889, column: 48, scope: !3502)
!3546 = !DILocation(line: 890, column: 14, scope: !3502)
!3547 = !DILocation(line: 891, column: 5, scope: !3502)
!3548 = !DILocation(line: 894, column: 19, scope: !3505)
!3549 = !DILocation(line: 894, column: 25, scope: !3505)
!3550 = !DILocation(line: 894, column: 12, scope: !3505)
!3551 = !DILocation(line: 895, column: 23, scope: !3505)
!3552 = !DILocation(line: 895, column: 11, scope: !3505)
!3553 = !DILocation(line: 897, column: 26, scope: !3505)
!3554 = !DILocation(line: 897, column: 32, scope: !3505)
!3555 = !DILocation(line: 897, column: 9, scope: !3505)
!3556 = !DILocation(line: 899, column: 55, scope: !3505)
!3557 = !DILocation(line: 900, column: 46, scope: !3505)
!3558 = !DILocation(line: 901, column: 55, scope: !3505)
!3559 = !DILocation(line: 902, column: 55, scope: !3505)
!3560 = !DILocation(line: 898, column: 20, scope: !3505)
!3561 = !DILocation(line: 898, column: 12, scope: !3505)
!3562 = !DILocation(line: 904, column: 14, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3505, file: !284, line: 904, column: 9)
!3564 = !DILocation(line: 904, column: 9, scope: !3505)
!3565 = !DILocation(line: 906, column: 35, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3563, file: !284, line: 905, column: 7)
!3567 = !DILocation(line: 906, column: 20, scope: !3566)
!3568 = !DILocation(line: 907, column: 17, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3566, file: !284, line: 907, column: 13)
!3570 = !DILocation(line: 907, column: 13, scope: !3566)
!3571 = !DILocation(line: 908, column: 11, scope: !3569)
!3572 = !DILocation(line: 220, column: 20, scope: !3395, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 909, column: 27, scope: !3566)
!3574 = !DILocation(line: 222, column: 10, scope: !3395, inlinedAt: !3573)
!3575 = !DILocation(line: 909, column: 19, scope: !3566)
!3576 = !DILocation(line: 910, column: 69, scope: !3566)
!3577 = !DILocation(line: 912, column: 44, scope: !3566)
!3578 = !DILocation(line: 913, column: 44, scope: !3566)
!3579 = !DILocation(line: 910, column: 9, scope: !3566)
!3580 = !DILocation(line: 914, column: 7, scope: !3566)
!3581 = !DILocation(line: 916, column: 11, scope: !3505)
!3582 = !DILocation(line: 917, column: 5, scope: !3505)
!3583 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !284, file: !284, line: 928, type: !3584, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3586)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!58, !63, !80, !61}
!3586 = !{!3587, !3588, !3589}
!3587 = !DILocalVariable(name: "n", arg: 1, scope: !3583, file: !284, line: 928, type: !63)
!3588 = !DILocalVariable(name: "arg", arg: 2, scope: !3583, file: !284, line: 928, type: !80)
!3589 = !DILocalVariable(name: "argsize", arg: 3, scope: !3583, file: !284, line: 928, type: !61)
!3590 = !DILocation(line: 928, column: 21, scope: !3583)
!3591 = !DILocation(line: 928, column: 36, scope: !3583)
!3592 = !DILocation(line: 928, column: 48, scope: !3583)
!3593 = !DILocation(line: 930, column: 10, scope: !3583)
!3594 = !DILocation(line: 930, column: 3, scope: !3583)
!3595 = distinct !DISubprogram(name: "quotearg", scope: !284, file: !284, line: 934, type: !3596, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!58, !80}
!3598 = !{!3599}
!3599 = !DILocalVariable(name: "arg", arg: 1, scope: !3595, file: !284, line: 934, type: !80)
!3600 = !DILocation(line: 934, column: 23, scope: !3595)
!3601 = !DILocation(line: 922, column: 17, scope: !3481, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 936, column: 10, scope: !3595)
!3603 = !DILocation(line: 922, column: 32, scope: !3481, inlinedAt: !3602)
!3604 = !DILocation(line: 924, column: 10, scope: !3481, inlinedAt: !3602)
!3605 = !DILocation(line: 936, column: 3, scope: !3595)
!3606 = distinct !DISubprogram(name: "quotearg_mem", scope: !284, file: !284, line: 940, type: !3607, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!58, !80, !61}
!3609 = !{!3610, !3611}
!3610 = !DILocalVariable(name: "arg", arg: 1, scope: !3606, file: !284, line: 940, type: !80)
!3611 = !DILocalVariable(name: "argsize", arg: 2, scope: !3606, file: !284, line: 940, type: !61)
!3612 = !DILocation(line: 940, column: 27, scope: !3606)
!3613 = !DILocation(line: 940, column: 39, scope: !3606)
!3614 = !DILocation(line: 928, column: 21, scope: !3583, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 942, column: 10, scope: !3606)
!3616 = !DILocation(line: 928, column: 36, scope: !3583, inlinedAt: !3615)
!3617 = !DILocation(line: 928, column: 48, scope: !3583, inlinedAt: !3615)
!3618 = !DILocation(line: 930, column: 10, scope: !3583, inlinedAt: !3615)
!3619 = !DILocation(line: 942, column: 3, scope: !3606)
!3620 = distinct !DISubprogram(name: "quotearg_n_style", scope: !284, file: !284, line: 946, type: !3621, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!58, !63, !5, !80}
!3623 = !{!3624, !3625, !3626, !3627}
!3624 = !DILocalVariable(name: "n", arg: 1, scope: !3620, file: !284, line: 946, type: !63)
!3625 = !DILocalVariable(name: "s", arg: 2, scope: !3620, file: !284, line: 946, type: !5)
!3626 = !DILocalVariable(name: "arg", arg: 3, scope: !3620, file: !284, line: 946, type: !80)
!3627 = !DILocalVariable(name: "o", scope: !3620, file: !284, line: 948, type: !2480)
!3628 = !DILocalVariable(name: "o", scope: !3629, file: !284, line: 187, type: !291)
!3629 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !284, file: !284, line: 185, type: !3630, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3632)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!291, !5}
!3632 = !{!3633, !3628}
!3633 = !DILocalVariable(name: "style", arg: 1, scope: !3629, file: !284, line: 185, type: !5)
!3634 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3635 = !DILocation(line: 187, column: 26, scope: !3629, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 948, column: 36, scope: !3620)
!3637 = !DILocation(line: 946, column: 23, scope: !3620)
!3638 = !DILocation(line: 946, column: 45, scope: !3620)
!3639 = !DILocation(line: 946, column: 60, scope: !3620)
!3640 = !DILocation(line: 948, column: 3, scope: !3620)
!3641 = !DILocation(line: 948, column: 32, scope: !3620)
!3642 = !DILocation(line: 185, column: 48, scope: !3629, inlinedAt: !3636)
!3643 = !DILocation(line: 187, column: 3, scope: !3629, inlinedAt: !3636)
!3644 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3645 = !DILocation(line: 188, column: 13, scope: !3646, inlinedAt: !3636)
!3646 = distinct !DILexicalBlock(scope: !3629, file: !284, line: 188, column: 7)
!3647 = !DILocation(line: 188, column: 7, scope: !3629, inlinedAt: !3636)
!3648 = !DILocation(line: 189, column: 5, scope: !3646, inlinedAt: !3636)
!3649 = !{!3650}
!3650 = distinct !{!3650, !3651, !"quoting_options_from_style: argument 0"}
!3651 = distinct !{!3651, !"quoting_options_from_style"}
!3652 = !DILocation(line: 191, column: 10, scope: !3629, inlinedAt: !3636)
!3653 = !DILocation(line: 192, column: 1, scope: !3629, inlinedAt: !3636)
!3654 = !DILocation(line: 949, column: 10, scope: !3620)
!3655 = !DILocation(line: 950, column: 1, scope: !3620)
!3656 = !DILocation(line: 949, column: 3, scope: !3620)
!3657 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !284, file: !284, line: 953, type: !3658, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!58, !63, !5, !80, !61}
!3660 = !{!3661, !3662, !3663, !3664, !3665}
!3661 = !DILocalVariable(name: "n", arg: 1, scope: !3657, file: !284, line: 953, type: !63)
!3662 = !DILocalVariable(name: "s", arg: 2, scope: !3657, file: !284, line: 953, type: !5)
!3663 = !DILocalVariable(name: "arg", arg: 3, scope: !3657, file: !284, line: 954, type: !80)
!3664 = !DILocalVariable(name: "argsize", arg: 4, scope: !3657, file: !284, line: 954, type: !61)
!3665 = !DILocalVariable(name: "o", scope: !3657, file: !284, line: 956, type: !2480)
!3666 = !DILocation(line: 187, column: 26, scope: !3629, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 956, column: 36, scope: !3657)
!3668 = !DILocation(line: 953, column: 27, scope: !3657)
!3669 = !DILocation(line: 953, column: 49, scope: !3657)
!3670 = !DILocation(line: 954, column: 35, scope: !3657)
!3671 = !DILocation(line: 954, column: 47, scope: !3657)
!3672 = !DILocation(line: 956, column: 3, scope: !3657)
!3673 = !DILocation(line: 956, column: 32, scope: !3657)
!3674 = !DILocation(line: 185, column: 48, scope: !3629, inlinedAt: !3667)
!3675 = !DILocation(line: 187, column: 3, scope: !3629, inlinedAt: !3667)
!3676 = !DILocation(line: 188, column: 13, scope: !3646, inlinedAt: !3667)
!3677 = !DILocation(line: 188, column: 7, scope: !3629, inlinedAt: !3667)
!3678 = !DILocation(line: 189, column: 5, scope: !3646, inlinedAt: !3667)
!3679 = !{!3680}
!3680 = distinct !{!3680, !3681, !"quoting_options_from_style: argument 0"}
!3681 = distinct !{!3681, !"quoting_options_from_style"}
!3682 = !DILocation(line: 191, column: 10, scope: !3629, inlinedAt: !3667)
!3683 = !DILocation(line: 192, column: 1, scope: !3629, inlinedAt: !3667)
!3684 = !DILocation(line: 957, column: 10, scope: !3657)
!3685 = !DILocation(line: 958, column: 1, scope: !3657)
!3686 = !DILocation(line: 957, column: 3, scope: !3657)
!3687 = distinct !DISubprogram(name: "quotearg_style", scope: !284, file: !284, line: 961, type: !3688, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!58, !5, !80}
!3690 = !{!3691, !3692}
!3691 = !DILocalVariable(name: "s", arg: 1, scope: !3687, file: !284, line: 961, type: !5)
!3692 = !DILocalVariable(name: "arg", arg: 2, scope: !3687, file: !284, line: 961, type: !80)
!3693 = !DILocation(line: 187, column: 26, scope: !3629, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 948, column: 36, scope: !3620, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 963, column: 10, scope: !3687)
!3696 = !DILocation(line: 961, column: 36, scope: !3687)
!3697 = !DILocation(line: 961, column: 51, scope: !3687)
!3698 = !DILocation(line: 946, column: 23, scope: !3620, inlinedAt: !3695)
!3699 = !DILocation(line: 946, column: 45, scope: !3620, inlinedAt: !3695)
!3700 = !DILocation(line: 946, column: 60, scope: !3620, inlinedAt: !3695)
!3701 = !DILocation(line: 948, column: 3, scope: !3620, inlinedAt: !3695)
!3702 = !DILocation(line: 948, column: 32, scope: !3620, inlinedAt: !3695)
!3703 = !DILocation(line: 185, column: 48, scope: !3629, inlinedAt: !3694)
!3704 = !DILocation(line: 187, column: 3, scope: !3629, inlinedAt: !3694)
!3705 = !DILocation(line: 188, column: 13, scope: !3646, inlinedAt: !3694)
!3706 = !DILocation(line: 188, column: 7, scope: !3629, inlinedAt: !3694)
!3707 = !DILocation(line: 189, column: 5, scope: !3646, inlinedAt: !3694)
!3708 = !{!3709}
!3709 = distinct !{!3709, !3710, !"quoting_options_from_style: argument 0"}
!3710 = distinct !{!3710, !"quoting_options_from_style"}
!3711 = !DILocation(line: 191, column: 10, scope: !3629, inlinedAt: !3694)
!3712 = !DILocation(line: 192, column: 1, scope: !3629, inlinedAt: !3694)
!3713 = !DILocation(line: 949, column: 10, scope: !3620, inlinedAt: !3695)
!3714 = !DILocation(line: 950, column: 1, scope: !3620, inlinedAt: !3695)
!3715 = !DILocation(line: 963, column: 3, scope: !3687)
!3716 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !284, file: !284, line: 967, type: !3717, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!58, !5, !80, !61}
!3719 = !{!3720, !3721, !3722}
!3720 = !DILocalVariable(name: "s", arg: 1, scope: !3716, file: !284, line: 967, type: !5)
!3721 = !DILocalVariable(name: "arg", arg: 2, scope: !3716, file: !284, line: 967, type: !80)
!3722 = !DILocalVariable(name: "argsize", arg: 3, scope: !3716, file: !284, line: 967, type: !61)
!3723 = !DILocation(line: 187, column: 26, scope: !3629, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 956, column: 36, scope: !3657, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 969, column: 10, scope: !3716)
!3726 = !DILocation(line: 967, column: 40, scope: !3716)
!3727 = !DILocation(line: 967, column: 55, scope: !3716)
!3728 = !DILocation(line: 967, column: 67, scope: !3716)
!3729 = !DILocation(line: 953, column: 27, scope: !3657, inlinedAt: !3725)
!3730 = !DILocation(line: 953, column: 49, scope: !3657, inlinedAt: !3725)
!3731 = !DILocation(line: 954, column: 35, scope: !3657, inlinedAt: !3725)
!3732 = !DILocation(line: 954, column: 47, scope: !3657, inlinedAt: !3725)
!3733 = !DILocation(line: 956, column: 3, scope: !3657, inlinedAt: !3725)
!3734 = !DILocation(line: 956, column: 32, scope: !3657, inlinedAt: !3725)
!3735 = !DILocation(line: 185, column: 48, scope: !3629, inlinedAt: !3724)
!3736 = !DILocation(line: 187, column: 3, scope: !3629, inlinedAt: !3724)
!3737 = !DILocation(line: 188, column: 13, scope: !3646, inlinedAt: !3724)
!3738 = !DILocation(line: 188, column: 7, scope: !3629, inlinedAt: !3724)
!3739 = !DILocation(line: 189, column: 5, scope: !3646, inlinedAt: !3724)
!3740 = !{!3741}
!3741 = distinct !{!3741, !3742, !"quoting_options_from_style: argument 0"}
!3742 = distinct !{!3742, !"quoting_options_from_style"}
!3743 = !DILocation(line: 191, column: 10, scope: !3629, inlinedAt: !3724)
!3744 = !DILocation(line: 192, column: 1, scope: !3629, inlinedAt: !3724)
!3745 = !DILocation(line: 957, column: 10, scope: !3657, inlinedAt: !3725)
!3746 = !DILocation(line: 958, column: 1, scope: !3657, inlinedAt: !3725)
!3747 = !DILocation(line: 969, column: 3, scope: !3716)
!3748 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !284, file: !284, line: 973, type: !3749, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!58, !80, !61, !59}
!3751 = !{!3752, !3753, !3754, !3755}
!3752 = !DILocalVariable(name: "arg", arg: 1, scope: !3748, file: !284, line: 973, type: !80)
!3753 = !DILocalVariable(name: "argsize", arg: 2, scope: !3748, file: !284, line: 973, type: !61)
!3754 = !DILocalVariable(name: "ch", arg: 3, scope: !3748, file: !284, line: 973, type: !59)
!3755 = !DILocalVariable(name: "options", scope: !3748, file: !284, line: 975, type: !291)
!3756 = !DILocation(line: 973, column: 32, scope: !3748)
!3757 = !DILocation(line: 973, column: 44, scope: !3748)
!3758 = !DILocation(line: 973, column: 58, scope: !3748)
!3759 = !DILocation(line: 975, column: 3, scope: !3748)
!3760 = !DILocation(line: 976, column: 13, scope: !3748)
!3761 = !{i64 0, i64 4, !1043, i64 4, i64 4, !960, i64 8, i64 32, !1043, i64 40, i64 8, !781, i64 48, i64 8, !781}
!3762 = !DILocation(line: 975, column: 26, scope: !3748)
!3763 = !DILocation(line: 144, column: 43, scope: !2501, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 977, column: 3, scope: !3748)
!3765 = !DILocation(line: 144, column: 51, scope: !2501, inlinedAt: !3764)
!3766 = !DILocation(line: 144, column: 58, scope: !2501, inlinedAt: !3764)
!3767 = !DILocation(line: 146, column: 17, scope: !2501, inlinedAt: !3764)
!3768 = !DILocation(line: 148, column: 62, scope: !2501, inlinedAt: !3764)
!3769 = !DILocation(line: 148, column: 57, scope: !2501, inlinedAt: !3764)
!3770 = !DILocation(line: 147, column: 17, scope: !2501, inlinedAt: !3764)
!3771 = !DILocation(line: 149, column: 18, scope: !2501, inlinedAt: !3764)
!3772 = !DILocation(line: 149, column: 15, scope: !2501, inlinedAt: !3764)
!3773 = !DILocation(line: 149, column: 7, scope: !2501, inlinedAt: !3764)
!3774 = !DILocation(line: 150, column: 12, scope: !2501, inlinedAt: !3764)
!3775 = !DILocation(line: 150, column: 15, scope: !2501, inlinedAt: !3764)
!3776 = !DILocation(line: 150, column: 25, scope: !2501, inlinedAt: !3764)
!3777 = !DILocation(line: 150, column: 7, scope: !2501, inlinedAt: !3764)
!3778 = !DILocation(line: 151, column: 18, scope: !2501, inlinedAt: !3764)
!3779 = !DILocation(line: 151, column: 23, scope: !2501, inlinedAt: !3764)
!3780 = !DILocation(line: 151, column: 6, scope: !2501, inlinedAt: !3764)
!3781 = !DILocation(line: 978, column: 10, scope: !3748)
!3782 = !DILocation(line: 979, column: 1, scope: !3748)
!3783 = !DILocation(line: 978, column: 3, scope: !3748)
!3784 = distinct !DISubprogram(name: "quotearg_char", scope: !284, file: !284, line: 982, type: !3785, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!58, !80, !59}
!3787 = !{!3788, !3789}
!3788 = !DILocalVariable(name: "arg", arg: 1, scope: !3784, file: !284, line: 982, type: !80)
!3789 = !DILocalVariable(name: "ch", arg: 2, scope: !3784, file: !284, line: 982, type: !59)
!3790 = !DILocation(line: 982, column: 28, scope: !3784)
!3791 = !DILocation(line: 982, column: 38, scope: !3784)
!3792 = !DILocation(line: 973, column: 32, scope: !3748, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 984, column: 10, scope: !3784)
!3794 = !DILocation(line: 973, column: 44, scope: !3748, inlinedAt: !3793)
!3795 = !DILocation(line: 973, column: 58, scope: !3748, inlinedAt: !3793)
!3796 = !DILocation(line: 975, column: 3, scope: !3748, inlinedAt: !3793)
!3797 = !DILocation(line: 976, column: 13, scope: !3748, inlinedAt: !3793)
!3798 = !DILocation(line: 975, column: 26, scope: !3748, inlinedAt: !3793)
!3799 = !DILocation(line: 144, column: 43, scope: !2501, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 977, column: 3, scope: !3748, inlinedAt: !3793)
!3801 = !DILocation(line: 144, column: 51, scope: !2501, inlinedAt: !3800)
!3802 = !DILocation(line: 144, column: 58, scope: !2501, inlinedAt: !3800)
!3803 = !DILocation(line: 146, column: 17, scope: !2501, inlinedAt: !3800)
!3804 = !DILocation(line: 148, column: 62, scope: !2501, inlinedAt: !3800)
!3805 = !DILocation(line: 148, column: 57, scope: !2501, inlinedAt: !3800)
!3806 = !DILocation(line: 147, column: 17, scope: !2501, inlinedAt: !3800)
!3807 = !DILocation(line: 149, column: 18, scope: !2501, inlinedAt: !3800)
!3808 = !DILocation(line: 149, column: 15, scope: !2501, inlinedAt: !3800)
!3809 = !DILocation(line: 149, column: 7, scope: !2501, inlinedAt: !3800)
!3810 = !DILocation(line: 150, column: 12, scope: !2501, inlinedAt: !3800)
!3811 = !DILocation(line: 150, column: 15, scope: !2501, inlinedAt: !3800)
!3812 = !DILocation(line: 150, column: 25, scope: !2501, inlinedAt: !3800)
!3813 = !DILocation(line: 150, column: 7, scope: !2501, inlinedAt: !3800)
!3814 = !DILocation(line: 151, column: 18, scope: !2501, inlinedAt: !3800)
!3815 = !DILocation(line: 151, column: 23, scope: !2501, inlinedAt: !3800)
!3816 = !DILocation(line: 151, column: 6, scope: !2501, inlinedAt: !3800)
!3817 = !DILocation(line: 978, column: 10, scope: !3748, inlinedAt: !3793)
!3818 = !DILocation(line: 979, column: 1, scope: !3748, inlinedAt: !3793)
!3819 = !DILocation(line: 984, column: 3, scope: !3784)
!3820 = distinct !DISubprogram(name: "quotearg_colon", scope: !284, file: !284, line: 988, type: !3596, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3821)
!3821 = !{!3822}
!3822 = !DILocalVariable(name: "arg", arg: 1, scope: !3820, file: !284, line: 988, type: !80)
!3823 = !DILocation(line: 988, column: 29, scope: !3820)
!3824 = !DILocation(line: 982, column: 28, scope: !3784, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 990, column: 10, scope: !3820)
!3826 = !DILocation(line: 982, column: 38, scope: !3784, inlinedAt: !3825)
!3827 = !DILocation(line: 973, column: 32, scope: !3748, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 984, column: 10, scope: !3784, inlinedAt: !3825)
!3829 = !DILocation(line: 973, column: 44, scope: !3748, inlinedAt: !3828)
!3830 = !DILocation(line: 973, column: 58, scope: !3748, inlinedAt: !3828)
!3831 = !DILocation(line: 975, column: 3, scope: !3748, inlinedAt: !3828)
!3832 = !DILocation(line: 976, column: 13, scope: !3748, inlinedAt: !3828)
!3833 = !DILocation(line: 975, column: 26, scope: !3748, inlinedAt: !3828)
!3834 = !DILocation(line: 144, column: 43, scope: !2501, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 977, column: 3, scope: !3748, inlinedAt: !3828)
!3836 = !DILocation(line: 144, column: 51, scope: !2501, inlinedAt: !3835)
!3837 = !DILocation(line: 144, column: 58, scope: !2501, inlinedAt: !3835)
!3838 = !DILocation(line: 146, column: 17, scope: !2501, inlinedAt: !3835)
!3839 = !DILocation(line: 148, column: 57, scope: !2501, inlinedAt: !3835)
!3840 = !DILocation(line: 147, column: 17, scope: !2501, inlinedAt: !3835)
!3841 = !DILocation(line: 149, column: 7, scope: !2501, inlinedAt: !3835)
!3842 = !DILocation(line: 150, column: 12, scope: !2501, inlinedAt: !3835)
!3843 = !DILocation(line: 151, column: 6, scope: !2501, inlinedAt: !3835)
!3844 = !DILocation(line: 978, column: 10, scope: !3748, inlinedAt: !3828)
!3845 = !DILocation(line: 979, column: 1, scope: !3748, inlinedAt: !3828)
!3846 = !DILocation(line: 990, column: 3, scope: !3820)
!3847 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !284, file: !284, line: 994, type: !3607, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3848)
!3848 = !{!3849, !3850}
!3849 = !DILocalVariable(name: "arg", arg: 1, scope: !3847, file: !284, line: 994, type: !80)
!3850 = !DILocalVariable(name: "argsize", arg: 2, scope: !3847, file: !284, line: 994, type: !61)
!3851 = !DILocation(line: 994, column: 33, scope: !3847)
!3852 = !DILocation(line: 994, column: 45, scope: !3847)
!3853 = !DILocation(line: 973, column: 32, scope: !3748, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 996, column: 10, scope: !3847)
!3855 = !DILocation(line: 973, column: 44, scope: !3748, inlinedAt: !3854)
!3856 = !DILocation(line: 973, column: 58, scope: !3748, inlinedAt: !3854)
!3857 = !DILocation(line: 975, column: 3, scope: !3748, inlinedAt: !3854)
!3858 = !DILocation(line: 976, column: 13, scope: !3748, inlinedAt: !3854)
!3859 = !DILocation(line: 975, column: 26, scope: !3748, inlinedAt: !3854)
!3860 = !DILocation(line: 144, column: 43, scope: !2501, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 977, column: 3, scope: !3748, inlinedAt: !3854)
!3862 = !DILocation(line: 144, column: 51, scope: !2501, inlinedAt: !3861)
!3863 = !DILocation(line: 144, column: 58, scope: !2501, inlinedAt: !3861)
!3864 = !DILocation(line: 146, column: 17, scope: !2501, inlinedAt: !3861)
!3865 = !DILocation(line: 148, column: 57, scope: !2501, inlinedAt: !3861)
!3866 = !DILocation(line: 147, column: 17, scope: !2501, inlinedAt: !3861)
!3867 = !DILocation(line: 149, column: 7, scope: !2501, inlinedAt: !3861)
!3868 = !DILocation(line: 150, column: 12, scope: !2501, inlinedAt: !3861)
!3869 = !DILocation(line: 151, column: 6, scope: !2501, inlinedAt: !3861)
!3870 = !DILocation(line: 978, column: 10, scope: !3748, inlinedAt: !3854)
!3871 = !DILocation(line: 979, column: 1, scope: !3748, inlinedAt: !3854)
!3872 = !DILocation(line: 996, column: 3, scope: !3847)
!3873 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !284, file: !284, line: 1000, type: !3621, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3874)
!3874 = !{!3875, !3876, !3877, !3878}
!3875 = !DILocalVariable(name: "n", arg: 1, scope: !3873, file: !284, line: 1000, type: !63)
!3876 = !DILocalVariable(name: "s", arg: 2, scope: !3873, file: !284, line: 1000, type: !5)
!3877 = !DILocalVariable(name: "arg", arg: 3, scope: !3873, file: !284, line: 1000, type: !80)
!3878 = !DILocalVariable(name: "options", scope: !3873, file: !284, line: 1002, type: !291)
!3879 = !DILocation(line: 187, column: 26, scope: !3629, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 1003, column: 13, scope: !3873)
!3881 = !DILocation(line: 1000, column: 29, scope: !3873)
!3882 = !DILocation(line: 1000, column: 51, scope: !3873)
!3883 = !DILocation(line: 1000, column: 66, scope: !3873)
!3884 = !DILocation(line: 1002, column: 3, scope: !3873)
!3885 = !DILocation(line: 185, column: 48, scope: !3629, inlinedAt: !3880)
!3886 = !DILocation(line: 187, column: 3, scope: !3629, inlinedAt: !3880)
!3887 = !DILocation(line: 188, column: 13, scope: !3646, inlinedAt: !3880)
!3888 = !DILocation(line: 188, column: 7, scope: !3629, inlinedAt: !3880)
!3889 = !DILocation(line: 189, column: 5, scope: !3646, inlinedAt: !3880)
!3890 = !{!3891}
!3891 = distinct !{!3891, !3892, !"quoting_options_from_style: argument 0"}
!3892 = distinct !{!3892, !"quoting_options_from_style"}
!3893 = !DILocation(line: 191, column: 10, scope: !3629, inlinedAt: !3880)
!3894 = !DILocation(line: 192, column: 1, scope: !3629, inlinedAt: !3880)
!3895 = !DILocation(line: 1003, column: 13, scope: !3873)
!3896 = !DILocation(line: 1002, column: 26, scope: !3873)
!3897 = !DILocation(line: 144, column: 43, scope: !2501, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 1004, column: 3, scope: !3873)
!3899 = !DILocation(line: 144, column: 51, scope: !2501, inlinedAt: !3898)
!3900 = !DILocation(line: 144, column: 58, scope: !2501, inlinedAt: !3898)
!3901 = !DILocation(line: 146, column: 17, scope: !2501, inlinedAt: !3898)
!3902 = !DILocation(line: 148, column: 57, scope: !2501, inlinedAt: !3898)
!3903 = !DILocation(line: 147, column: 17, scope: !2501, inlinedAt: !3898)
!3904 = !DILocation(line: 149, column: 7, scope: !2501, inlinedAt: !3898)
!3905 = !DILocation(line: 150, column: 12, scope: !2501, inlinedAt: !3898)
!3906 = !DILocation(line: 151, column: 6, scope: !2501, inlinedAt: !3898)
!3907 = !DILocation(line: 1005, column: 10, scope: !3873)
!3908 = !DILocation(line: 1006, column: 1, scope: !3873)
!3909 = !DILocation(line: 1005, column: 3, scope: !3873)
!3910 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !284, file: !284, line: 1009, type: !3911, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!58, !63, !80, !80, !80}
!3913 = !{!3914, !3915, !3916, !3917}
!3914 = !DILocalVariable(name: "n", arg: 1, scope: !3910, file: !284, line: 1009, type: !63)
!3915 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3910, file: !284, line: 1009, type: !80)
!3916 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3910, file: !284, line: 1010, type: !80)
!3917 = !DILocalVariable(name: "arg", arg: 4, scope: !3910, file: !284, line: 1010, type: !80)
!3918 = !DILocation(line: 1009, column: 24, scope: !3910)
!3919 = !DILocation(line: 1009, column: 39, scope: !3910)
!3920 = !DILocation(line: 1010, column: 32, scope: !3910)
!3921 = !DILocation(line: 1010, column: 57, scope: !3910)
!3922 = !DILocalVariable(name: "n", arg: 1, scope: !3923, file: !284, line: 1017, type: !63)
!3923 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !284, file: !284, line: 1017, type: !3924, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!58, !63, !80, !80, !80, !61}
!3926 = !{!3922, !3927, !3928, !3929, !3930, !3931}
!3927 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3923, file: !284, line: 1017, type: !80)
!3928 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3923, file: !284, line: 1018, type: !80)
!3929 = !DILocalVariable(name: "arg", arg: 4, scope: !3923, file: !284, line: 1019, type: !80)
!3930 = !DILocalVariable(name: "argsize", arg: 5, scope: !3923, file: !284, line: 1019, type: !61)
!3931 = !DILocalVariable(name: "o", scope: !3923, file: !284, line: 1021, type: !291)
!3932 = !DILocation(line: 1017, column: 28, scope: !3923, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 1012, column: 10, scope: !3910)
!3934 = !DILocation(line: 1017, column: 43, scope: !3923, inlinedAt: !3933)
!3935 = !DILocation(line: 1018, column: 36, scope: !3923, inlinedAt: !3933)
!3936 = !DILocation(line: 1019, column: 36, scope: !3923, inlinedAt: !3933)
!3937 = !DILocation(line: 1019, column: 48, scope: !3923, inlinedAt: !3933)
!3938 = !DILocation(line: 1021, column: 3, scope: !3923, inlinedAt: !3933)
!3939 = !DILocation(line: 1021, column: 30, scope: !3923, inlinedAt: !3933)
!3940 = !DILocation(line: 1021, column: 26, scope: !3923, inlinedAt: !3933)
!3941 = !DILocation(line: 171, column: 45, scope: !2550, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 1022, column: 3, scope: !3923, inlinedAt: !3933)
!3943 = !DILocation(line: 172, column: 33, scope: !2550, inlinedAt: !3942)
!3944 = !DILocation(line: 172, column: 57, scope: !2550, inlinedAt: !3942)
!3945 = !DILocation(line: 176, column: 6, scope: !2550, inlinedAt: !3942)
!3946 = !DILocation(line: 176, column: 12, scope: !2550, inlinedAt: !3942)
!3947 = !DILocation(line: 177, column: 8, scope: !2566, inlinedAt: !3942)
!3948 = !DILocation(line: 177, column: 23, scope: !2566, inlinedAt: !3942)
!3949 = !DILocation(line: 177, column: 19, scope: !2566, inlinedAt: !3942)
!3950 = !DILocation(line: 178, column: 5, scope: !2566, inlinedAt: !3942)
!3951 = !DILocation(line: 179, column: 6, scope: !2550, inlinedAt: !3942)
!3952 = !DILocation(line: 179, column: 17, scope: !2550, inlinedAt: !3942)
!3953 = !DILocation(line: 180, column: 6, scope: !2550, inlinedAt: !3942)
!3954 = !DILocation(line: 180, column: 18, scope: !2550, inlinedAt: !3942)
!3955 = !DILocation(line: 1023, column: 10, scope: !3923, inlinedAt: !3933)
!3956 = !DILocation(line: 1024, column: 1, scope: !3923, inlinedAt: !3933)
!3957 = !DILocation(line: 1012, column: 3, scope: !3910)
!3958 = !DILocation(line: 1017, column: 28, scope: !3923)
!3959 = !DILocation(line: 1017, column: 43, scope: !3923)
!3960 = !DILocation(line: 1018, column: 36, scope: !3923)
!3961 = !DILocation(line: 1019, column: 36, scope: !3923)
!3962 = !DILocation(line: 1019, column: 48, scope: !3923)
!3963 = !DILocation(line: 1021, column: 3, scope: !3923)
!3964 = !DILocation(line: 1021, column: 30, scope: !3923)
!3965 = !DILocation(line: 1021, column: 26, scope: !3923)
!3966 = !DILocation(line: 171, column: 45, scope: !2550, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 1022, column: 3, scope: !3923)
!3968 = !DILocation(line: 172, column: 33, scope: !2550, inlinedAt: !3967)
!3969 = !DILocation(line: 172, column: 57, scope: !2550, inlinedAt: !3967)
!3970 = !DILocation(line: 176, column: 6, scope: !2550, inlinedAt: !3967)
!3971 = !DILocation(line: 176, column: 12, scope: !2550, inlinedAt: !3967)
!3972 = !DILocation(line: 177, column: 8, scope: !2566, inlinedAt: !3967)
!3973 = !DILocation(line: 177, column: 23, scope: !2566, inlinedAt: !3967)
!3974 = !DILocation(line: 177, column: 19, scope: !2566, inlinedAt: !3967)
!3975 = !DILocation(line: 178, column: 5, scope: !2566, inlinedAt: !3967)
!3976 = !DILocation(line: 179, column: 6, scope: !2550, inlinedAt: !3967)
!3977 = !DILocation(line: 179, column: 17, scope: !2550, inlinedAt: !3967)
!3978 = !DILocation(line: 180, column: 6, scope: !2550, inlinedAt: !3967)
!3979 = !DILocation(line: 180, column: 18, scope: !2550, inlinedAt: !3967)
!3980 = !DILocation(line: 1023, column: 10, scope: !3923)
!3981 = !DILocation(line: 1024, column: 1, scope: !3923)
!3982 = !DILocation(line: 1023, column: 3, scope: !3923)
!3983 = distinct !DISubprogram(name: "quotearg_custom", scope: !284, file: !284, line: 1027, type: !3984, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!58, !80, !80, !80}
!3986 = !{!3987, !3988, !3989}
!3987 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3983, file: !284, line: 1027, type: !80)
!3988 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3983, file: !284, line: 1027, type: !80)
!3989 = !DILocalVariable(name: "arg", arg: 3, scope: !3983, file: !284, line: 1028, type: !80)
!3990 = !DILocation(line: 1027, column: 30, scope: !3983)
!3991 = !DILocation(line: 1027, column: 54, scope: !3983)
!3992 = !DILocation(line: 1028, column: 30, scope: !3983)
!3993 = !DILocation(line: 1009, column: 24, scope: !3910, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 1030, column: 10, scope: !3983)
!3995 = !DILocation(line: 1009, column: 39, scope: !3910, inlinedAt: !3994)
!3996 = !DILocation(line: 1010, column: 32, scope: !3910, inlinedAt: !3994)
!3997 = !DILocation(line: 1010, column: 57, scope: !3910, inlinedAt: !3994)
!3998 = !DILocation(line: 1017, column: 28, scope: !3923, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 1012, column: 10, scope: !3910, inlinedAt: !3994)
!4000 = !DILocation(line: 1017, column: 43, scope: !3923, inlinedAt: !3999)
!4001 = !DILocation(line: 1018, column: 36, scope: !3923, inlinedAt: !3999)
!4002 = !DILocation(line: 1019, column: 36, scope: !3923, inlinedAt: !3999)
!4003 = !DILocation(line: 1019, column: 48, scope: !3923, inlinedAt: !3999)
!4004 = !DILocation(line: 1021, column: 3, scope: !3923, inlinedAt: !3999)
!4005 = !DILocation(line: 1021, column: 30, scope: !3923, inlinedAt: !3999)
!4006 = !DILocation(line: 1021, column: 26, scope: !3923, inlinedAt: !3999)
!4007 = !DILocation(line: 171, column: 45, scope: !2550, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 1022, column: 3, scope: !3923, inlinedAt: !3999)
!4009 = !DILocation(line: 172, column: 33, scope: !2550, inlinedAt: !4008)
!4010 = !DILocation(line: 172, column: 57, scope: !2550, inlinedAt: !4008)
!4011 = !DILocation(line: 176, column: 6, scope: !2550, inlinedAt: !4008)
!4012 = !DILocation(line: 176, column: 12, scope: !2550, inlinedAt: !4008)
!4013 = !DILocation(line: 177, column: 8, scope: !2566, inlinedAt: !4008)
!4014 = !DILocation(line: 177, column: 23, scope: !2566, inlinedAt: !4008)
!4015 = !DILocation(line: 177, column: 19, scope: !2566, inlinedAt: !4008)
!4016 = !DILocation(line: 178, column: 5, scope: !2566, inlinedAt: !4008)
!4017 = !DILocation(line: 179, column: 6, scope: !2550, inlinedAt: !4008)
!4018 = !DILocation(line: 179, column: 17, scope: !2550, inlinedAt: !4008)
!4019 = !DILocation(line: 180, column: 6, scope: !2550, inlinedAt: !4008)
!4020 = !DILocation(line: 180, column: 18, scope: !2550, inlinedAt: !4008)
!4021 = !DILocation(line: 1023, column: 10, scope: !3923, inlinedAt: !3999)
!4022 = !DILocation(line: 1024, column: 1, scope: !3923, inlinedAt: !3999)
!4023 = !DILocation(line: 1030, column: 3, scope: !3983)
!4024 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !284, file: !284, line: 1034, type: !4025, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!58, !80, !80, !80, !61}
!4027 = !{!4028, !4029, !4030, !4031}
!4028 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4024, file: !284, line: 1034, type: !80)
!4029 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4024, file: !284, line: 1034, type: !80)
!4030 = !DILocalVariable(name: "arg", arg: 3, scope: !4024, file: !284, line: 1035, type: !80)
!4031 = !DILocalVariable(name: "argsize", arg: 4, scope: !4024, file: !284, line: 1035, type: !61)
!4032 = !DILocation(line: 1034, column: 34, scope: !4024)
!4033 = !DILocation(line: 1034, column: 58, scope: !4024)
!4034 = !DILocation(line: 1035, column: 34, scope: !4024)
!4035 = !DILocation(line: 1035, column: 46, scope: !4024)
!4036 = !DILocation(line: 1017, column: 28, scope: !3923, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 1037, column: 10, scope: !4024)
!4038 = !DILocation(line: 1017, column: 43, scope: !3923, inlinedAt: !4037)
!4039 = !DILocation(line: 1018, column: 36, scope: !3923, inlinedAt: !4037)
!4040 = !DILocation(line: 1019, column: 36, scope: !3923, inlinedAt: !4037)
!4041 = !DILocation(line: 1019, column: 48, scope: !3923, inlinedAt: !4037)
!4042 = !DILocation(line: 1021, column: 3, scope: !3923, inlinedAt: !4037)
!4043 = !DILocation(line: 1021, column: 30, scope: !3923, inlinedAt: !4037)
!4044 = !DILocation(line: 1021, column: 26, scope: !3923, inlinedAt: !4037)
!4045 = !DILocation(line: 171, column: 45, scope: !2550, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 1022, column: 3, scope: !3923, inlinedAt: !4037)
!4047 = !DILocation(line: 172, column: 33, scope: !2550, inlinedAt: !4046)
!4048 = !DILocation(line: 172, column: 57, scope: !2550, inlinedAt: !4046)
!4049 = !DILocation(line: 176, column: 6, scope: !2550, inlinedAt: !4046)
!4050 = !DILocation(line: 176, column: 12, scope: !2550, inlinedAt: !4046)
!4051 = !DILocation(line: 177, column: 8, scope: !2566, inlinedAt: !4046)
!4052 = !DILocation(line: 177, column: 23, scope: !2566, inlinedAt: !4046)
!4053 = !DILocation(line: 177, column: 19, scope: !2566, inlinedAt: !4046)
!4054 = !DILocation(line: 178, column: 5, scope: !2566, inlinedAt: !4046)
!4055 = !DILocation(line: 179, column: 6, scope: !2550, inlinedAt: !4046)
!4056 = !DILocation(line: 179, column: 17, scope: !2550, inlinedAt: !4046)
!4057 = !DILocation(line: 180, column: 6, scope: !2550, inlinedAt: !4046)
!4058 = !DILocation(line: 180, column: 18, scope: !2550, inlinedAt: !4046)
!4059 = !DILocation(line: 1023, column: 10, scope: !3923, inlinedAt: !4037)
!4060 = !DILocation(line: 1024, column: 1, scope: !3923, inlinedAt: !4037)
!4061 = !DILocation(line: 1037, column: 3, scope: !4024)
!4062 = distinct !DISubprogram(name: "quote_n_mem", scope: !284, file: !284, line: 1052, type: !4063, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!80, !63, !80, !61}
!4065 = !{!4066, !4067, !4068}
!4066 = !DILocalVariable(name: "n", arg: 1, scope: !4062, file: !284, line: 1052, type: !63)
!4067 = !DILocalVariable(name: "arg", arg: 2, scope: !4062, file: !284, line: 1052, type: !80)
!4068 = !DILocalVariable(name: "argsize", arg: 3, scope: !4062, file: !284, line: 1052, type: !61)
!4069 = !DILocation(line: 1052, column: 18, scope: !4062)
!4070 = !DILocation(line: 1052, column: 33, scope: !4062)
!4071 = !DILocation(line: 1052, column: 45, scope: !4062)
!4072 = !DILocation(line: 1054, column: 10, scope: !4062)
!4073 = !DILocation(line: 1054, column: 3, scope: !4062)
!4074 = distinct !DISubprogram(name: "quote_mem", scope: !284, file: !284, line: 1058, type: !4075, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !4077)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!80, !80, !61}
!4077 = !{!4078, !4079}
!4078 = !DILocalVariable(name: "arg", arg: 1, scope: !4074, file: !284, line: 1058, type: !80)
!4079 = !DILocalVariable(name: "argsize", arg: 2, scope: !4074, file: !284, line: 1058, type: !61)
!4080 = !DILocation(line: 1058, column: 24, scope: !4074)
!4081 = !DILocation(line: 1058, column: 36, scope: !4074)
!4082 = !DILocation(line: 1052, column: 18, scope: !4062, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 1060, column: 10, scope: !4074)
!4084 = !DILocation(line: 1052, column: 33, scope: !4062, inlinedAt: !4083)
!4085 = !DILocation(line: 1052, column: 45, scope: !4062, inlinedAt: !4083)
!4086 = !DILocation(line: 1054, column: 10, scope: !4062, inlinedAt: !4083)
!4087 = !DILocation(line: 1060, column: 3, scope: !4074)
!4088 = distinct !DISubprogram(name: "quote_n", scope: !284, file: !284, line: 1064, type: !4089, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!80, !63, !80}
!4091 = !{!4092, !4093}
!4092 = !DILocalVariable(name: "n", arg: 1, scope: !4088, file: !284, line: 1064, type: !63)
!4093 = !DILocalVariable(name: "arg", arg: 2, scope: !4088, file: !284, line: 1064, type: !80)
!4094 = !DILocation(line: 1064, column: 14, scope: !4088)
!4095 = !DILocation(line: 1064, column: 29, scope: !4088)
!4096 = !DILocation(line: 1052, column: 18, scope: !4062, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 1066, column: 10, scope: !4088)
!4098 = !DILocation(line: 1052, column: 33, scope: !4062, inlinedAt: !4097)
!4099 = !DILocation(line: 1052, column: 45, scope: !4062, inlinedAt: !4097)
!4100 = !DILocation(line: 1054, column: 10, scope: !4062, inlinedAt: !4097)
!4101 = !DILocation(line: 1066, column: 3, scope: !4088)
!4102 = distinct !DISubprogram(name: "quote", scope: !284, file: !284, line: 1070, type: !4103, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!80, !80}
!4105 = !{!4106}
!4106 = !DILocalVariable(name: "arg", arg: 1, scope: !4102, file: !284, line: 1070, type: !80)
!4107 = !DILocation(line: 1070, column: 20, scope: !4102)
!4108 = !DILocation(line: 1064, column: 14, scope: !4088, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 1072, column: 10, scope: !4102)
!4110 = !DILocation(line: 1064, column: 29, scope: !4088, inlinedAt: !4109)
!4111 = !DILocation(line: 1052, column: 18, scope: !4062, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 1066, column: 10, scope: !4088, inlinedAt: !4109)
!4113 = !DILocation(line: 1052, column: 33, scope: !4062, inlinedAt: !4112)
!4114 = !DILocation(line: 1052, column: 45, scope: !4062, inlinedAt: !4112)
!4115 = !DILocation(line: 1054, column: 10, scope: !4062, inlinedAt: !4112)
!4116 = !DILocation(line: 1072, column: 3, scope: !4102)
!4117 = distinct !DISubprogram(name: "dup_safer", scope: !4118, file: !4118, line: 31, type: !1297, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !719, variables: !4119)
!4118 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4119 = !{!4120}
!4120 = !DILocalVariable(name: "fd", arg: 1, scope: !4117, file: !4118, line: 31, type: !63)
!4121 = !DILocation(line: 31, column: 16, scope: !4117)
!4122 = !DILocation(line: 33, column: 10, scope: !4117)
!4123 = !DILocation(line: 33, column: 3, scope: !4117)
!4124 = distinct !DISubprogram(name: "version_etc_arn", scope: !725, file: !725, line: 62, type: !4125, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !721, variables: !4168)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !4127, !80, !80, !80, !4167, !61}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4129)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4130)
!4130 = !{!4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4129, file: !118, line: 242, baseType: !63, size: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4129, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4129, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4129, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4129, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4129, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4129, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4129, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4129, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4129, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4129, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4129, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4129, file: !118, line: 260, baseType: !4144, size: 64, offset: 768)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !4146)
!4146 = !{!4147, !4148, !4150}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4145, file: !118, line: 157, baseType: !4144, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4145, file: !118, line: 158, baseType: !4149, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4145, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4129, file: !118, line: 262, baseType: !4149, size: 64, offset: 832)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4129, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4129, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4129, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4129, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4129, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4129, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4129, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4129, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4129, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4129, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4129, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4129, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4129, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4129, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4129, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!4168 = !{!4169, !4170, !4171, !4172, !4173, !4174}
!4169 = !DILocalVariable(name: "stream", arg: 1, scope: !4124, file: !725, line: 62, type: !4127)
!4170 = !DILocalVariable(name: "command_name", arg: 2, scope: !4124, file: !725, line: 63, type: !80)
!4171 = !DILocalVariable(name: "package", arg: 3, scope: !4124, file: !725, line: 63, type: !80)
!4172 = !DILocalVariable(name: "version", arg: 4, scope: !4124, file: !725, line: 64, type: !80)
!4173 = !DILocalVariable(name: "authors", arg: 5, scope: !4124, file: !725, line: 65, type: !4167)
!4174 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4124, file: !725, line: 65, type: !61)
!4175 = !DILocation(line: 62, column: 24, scope: !4124)
!4176 = !DILocation(line: 63, column: 30, scope: !4124)
!4177 = !DILocation(line: 63, column: 56, scope: !4124)
!4178 = !DILocation(line: 64, column: 30, scope: !4124)
!4179 = !DILocation(line: 65, column: 39, scope: !4124)
!4180 = !DILocation(line: 65, column: 55, scope: !4124)
!4181 = !DILocation(line: 67, column: 7, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4124, file: !725, line: 67, column: 7)
!4183 = !DILocation(line: 67, column: 7, scope: !4124)
!4184 = !DILocation(line: 68, column: 5, scope: !4182)
!4185 = !DILocation(line: 70, column: 5, scope: !4182)
!4186 = !DILocation(line: 84, column: 3, scope: !4124)
!4187 = !DILocation(line: 86, column: 3, scope: !4124)
!4188 = !DILocation(line: 95, column: 3, scope: !4124)
!4189 = !DILocation(line: 99, column: 7, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4124, file: !725, line: 96, column: 5)
!4191 = !DILocation(line: 102, column: 7, scope: !4190)
!4192 = !DILocation(line: 103, column: 7, scope: !4190)
!4193 = !DILocation(line: 106, column: 7, scope: !4190)
!4194 = !DILocation(line: 107, column: 7, scope: !4190)
!4195 = !DILocation(line: 110, column: 7, scope: !4190)
!4196 = !DILocation(line: 112, column: 7, scope: !4190)
!4197 = !DILocation(line: 117, column: 7, scope: !4190)
!4198 = !DILocation(line: 119, column: 7, scope: !4190)
!4199 = !DILocation(line: 124, column: 7, scope: !4190)
!4200 = !DILocation(line: 126, column: 7, scope: !4190)
!4201 = !DILocation(line: 131, column: 7, scope: !4190)
!4202 = !DILocation(line: 134, column: 7, scope: !4190)
!4203 = !DILocation(line: 139, column: 7, scope: !4190)
!4204 = !DILocation(line: 142, column: 7, scope: !4190)
!4205 = !DILocation(line: 147, column: 7, scope: !4190)
!4206 = !DILocation(line: 151, column: 7, scope: !4190)
!4207 = !DILocation(line: 156, column: 7, scope: !4190)
!4208 = !DILocation(line: 160, column: 7, scope: !4190)
!4209 = !DILocation(line: 167, column: 7, scope: !4190)
!4210 = !DILocation(line: 171, column: 7, scope: !4190)
!4211 = !DILocation(line: 173, column: 1, scope: !4124)
!4212 = distinct !DISubprogram(name: "version_etc_ar", scope: !725, file: !725, line: 180, type: !4213, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !721, variables: !4215)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{null, !4127, !80, !80, !80, !4167}
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221}
!4216 = !DILocalVariable(name: "stream", arg: 1, scope: !4212, file: !725, line: 180, type: !4127)
!4217 = !DILocalVariable(name: "command_name", arg: 2, scope: !4212, file: !725, line: 181, type: !80)
!4218 = !DILocalVariable(name: "package", arg: 3, scope: !4212, file: !725, line: 181, type: !80)
!4219 = !DILocalVariable(name: "version", arg: 4, scope: !4212, file: !725, line: 182, type: !80)
!4220 = !DILocalVariable(name: "authors", arg: 5, scope: !4212, file: !725, line: 182, type: !4167)
!4221 = !DILocalVariable(name: "n_authors", scope: !4212, file: !725, line: 184, type: !61)
!4222 = !DILocation(line: 180, column: 23, scope: !4212)
!4223 = !DILocation(line: 181, column: 29, scope: !4212)
!4224 = !DILocation(line: 181, column: 55, scope: !4212)
!4225 = !DILocation(line: 182, column: 29, scope: !4212)
!4226 = !DILocation(line: 182, column: 59, scope: !4212)
!4227 = !DILocation(line: 184, column: 10, scope: !4212)
!4228 = !DILocation(line: 186, column: 8, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4212, file: !725, line: 186, column: 3)
!4230 = !DILocation(line: 186, column: 23, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4229, file: !725, line: 186, column: 3)
!4232 = !DILocation(line: 186, column: 3, scope: !4229)
!4233 = !DILocation(line: 186, column: 52, scope: !4231)
!4234 = distinct !{!4234, !4232, !4235}
!4235 = !DILocation(line: 187, column: 5, scope: !4229)
!4236 = !DILocation(line: 188, column: 3, scope: !4212)
!4237 = !DILocation(line: 189, column: 1, scope: !4212)
!4238 = distinct !DISubprogram(name: "version_etc_va", scope: !725, file: !725, line: 196, type: !4239, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !721, variables: !4248)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{null, !4127, !80, !80, !80, !4241}
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !722, line: 189, size: 192, elements: !4243)
!4243 = !{!4244, !4245, !4246, !4247}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4242, file: !722, line: 189, baseType: !249, size: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4242, file: !722, line: 189, baseType: !249, size: 32, offset: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4242, file: !722, line: 189, baseType: !60, size: 64, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4242, file: !722, line: 189, baseType: !60, size: 64, offset: 128)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255}
!4249 = !DILocalVariable(name: "stream", arg: 1, scope: !4238, file: !725, line: 196, type: !4127)
!4250 = !DILocalVariable(name: "command_name", arg: 2, scope: !4238, file: !725, line: 197, type: !80)
!4251 = !DILocalVariable(name: "package", arg: 3, scope: !4238, file: !725, line: 197, type: !80)
!4252 = !DILocalVariable(name: "version", arg: 4, scope: !4238, file: !725, line: 198, type: !80)
!4253 = !DILocalVariable(name: "authors", arg: 5, scope: !4238, file: !725, line: 198, type: !4241)
!4254 = !DILocalVariable(name: "n_authors", scope: !4238, file: !725, line: 200, type: !61)
!4255 = !DILocalVariable(name: "authtab", scope: !4238, file: !725, line: 201, type: !4256)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !287)
!4257 = !DILocation(line: 196, column: 23, scope: !4238)
!4258 = !DILocation(line: 197, column: 29, scope: !4238)
!4259 = !DILocation(line: 197, column: 55, scope: !4238)
!4260 = !DILocation(line: 198, column: 29, scope: !4238)
!4261 = !DILocation(line: 198, column: 46, scope: !4238)
!4262 = !DILocation(line: 201, column: 3, scope: !4238)
!4263 = !DILocation(line: 201, column: 15, scope: !4238)
!4264 = !DILocation(line: 200, column: 10, scope: !4238)
!4265 = !DILocation(line: 205, column: 35, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !725, line: 203, column: 3)
!4267 = distinct !DILexicalBlock(scope: !4238, file: !725, line: 203, column: 3)
!4268 = !DILocation(line: 205, column: 14, scope: !4266)
!4269 = !DILocation(line: 205, column: 33, scope: !4266)
!4270 = !DILocation(line: 205, column: 67, scope: !4266)
!4271 = !DILocation(line: 203, column: 3, scope: !4267)
!4272 = !DILocation(line: 208, column: 3, scope: !4238)
!4273 = !DILocation(line: 210, column: 1, scope: !4238)
!4274 = distinct !DISubprogram(name: "version_etc", scope: !725, file: !725, line: 227, type: !4275, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !721, variables: !4277)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{null, !4127, !80, !80, !80, null}
!4277 = !{!4278, !4279, !4280, !4281, !4282}
!4278 = !DILocalVariable(name: "stream", arg: 1, scope: !4274, file: !725, line: 227, type: !4127)
!4279 = !DILocalVariable(name: "command_name", arg: 2, scope: !4274, file: !725, line: 228, type: !80)
!4280 = !DILocalVariable(name: "package", arg: 3, scope: !4274, file: !725, line: 228, type: !80)
!4281 = !DILocalVariable(name: "version", arg: 4, scope: !4274, file: !725, line: 229, type: !80)
!4282 = !DILocalVariable(name: "authors", scope: !4274, file: !725, line: 231, type: !4283)
!4283 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2258, line: 46, baseType: !4284)
!4284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !346, line: 48, baseType: !4285)
!4285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !722, line: 231, baseType: !4286)
!4286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4242, size: 192, elements: !151)
!4287 = !DILocation(line: 227, column: 20, scope: !4274)
!4288 = !DILocation(line: 228, column: 26, scope: !4274)
!4289 = !DILocation(line: 228, column: 52, scope: !4274)
!4290 = !DILocation(line: 229, column: 26, scope: !4274)
!4291 = !DILocation(line: 231, column: 3, scope: !4274)
!4292 = !DILocation(line: 231, column: 11, scope: !4274)
!4293 = !DILocation(line: 233, column: 3, scope: !4274)
!4294 = !DILocation(line: 234, column: 3, scope: !4274)
!4295 = !DILocation(line: 235, column: 3, scope: !4274)
!4296 = !DILocation(line: 236, column: 1, scope: !4274)
!4297 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !725, file: !725, line: 239, type: !789, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !721, variables: !230)
!4298 = !DILocation(line: 245, column: 3, scope: !4297)
!4299 = !DILocation(line: 251, column: 3, scope: !4297)
!4300 = !DILocation(line: 256, column: 3, scope: !4297)
!4301 = !DILocation(line: 258, column: 1, scope: !4297)
!4302 = distinct !DISubprogram(name: "xnmalloc", scope: !733, file: !733, line: 105, type: !4303, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4305)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!60, !61, !61}
!4305 = !{!4306, !4307}
!4306 = !DILocalVariable(name: "n", arg: 1, scope: !4302, file: !733, line: 105, type: !61)
!4307 = !DILocalVariable(name: "s", arg: 2, scope: !4302, file: !733, line: 105, type: !61)
!4308 = !DILocation(line: 105, column: 18, scope: !4302)
!4309 = !DILocation(line: 105, column: 28, scope: !4302)
!4310 = !DILocation(line: 107, column: 7, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4302, file: !733, line: 107, column: 7)
!4312 = !DILocation(line: 107, column: 7, scope: !4302)
!4313 = !DILocation(line: 108, column: 5, scope: !4311)
!4314 = !DILocation(line: 109, column: 21, scope: !4302)
!4315 = !DILocalVariable(name: "n", arg: 1, scope: !4316, file: !4317, line: 39, type: !61)
!4316 = distinct !DISubprogram(name: "xmalloc", scope: !4317, file: !4317, line: 39, type: !4318, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4320)
!4317 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!60, !61}
!4320 = !{!4315, !4321}
!4321 = !DILocalVariable(name: "p", scope: !4316, file: !4317, line: 41, type: !60)
!4322 = !DILocation(line: 39, column: 17, scope: !4316, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 109, column: 10, scope: !4302)
!4324 = !DILocation(line: 41, column: 13, scope: !4316, inlinedAt: !4323)
!4325 = !DILocation(line: 41, column: 9, scope: !4316, inlinedAt: !4323)
!4326 = !DILocation(line: 42, column: 8, scope: !4327, inlinedAt: !4323)
!4327 = distinct !DILexicalBlock(scope: !4316, file: !4317, line: 42, column: 7)
!4328 = !DILocation(line: 42, column: 15, scope: !4327, inlinedAt: !4323)
!4329 = !DILocation(line: 42, column: 10, scope: !4327, inlinedAt: !4323)
!4330 = !DILocation(line: 43, column: 5, scope: !4327, inlinedAt: !4323)
!4331 = !DILocation(line: 109, column: 3, scope: !4302)
!4332 = !DILocation(line: 39, column: 17, scope: !4316)
!4333 = !DILocation(line: 41, column: 13, scope: !4316)
!4334 = !DILocation(line: 41, column: 9, scope: !4316)
!4335 = !DILocation(line: 42, column: 8, scope: !4327)
!4336 = !DILocation(line: 42, column: 15, scope: !4327)
!4337 = !DILocation(line: 42, column: 10, scope: !4327)
!4338 = !DILocation(line: 43, column: 5, scope: !4327)
!4339 = !DILocation(line: 44, column: 3, scope: !4316)
!4340 = distinct !DISubprogram(name: "xnrealloc", scope: !733, file: !733, line: 118, type: !4341, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!60, !60, !61, !61}
!4343 = !{!4344, !4345, !4346}
!4344 = !DILocalVariable(name: "p", arg: 1, scope: !4340, file: !733, line: 118, type: !60)
!4345 = !DILocalVariable(name: "n", arg: 2, scope: !4340, file: !733, line: 118, type: !61)
!4346 = !DILocalVariable(name: "s", arg: 3, scope: !4340, file: !733, line: 118, type: !61)
!4347 = !DILocation(line: 118, column: 18, scope: !4340)
!4348 = !DILocation(line: 118, column: 28, scope: !4340)
!4349 = !DILocation(line: 118, column: 38, scope: !4340)
!4350 = !DILocation(line: 120, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4340, file: !733, line: 120, column: 7)
!4352 = !DILocation(line: 120, column: 7, scope: !4340)
!4353 = !DILocation(line: 121, column: 5, scope: !4351)
!4354 = !DILocation(line: 122, column: 25, scope: !4340)
!4355 = !DILocalVariable(name: "p", arg: 1, scope: !4356, file: !4317, line: 51, type: !60)
!4356 = distinct !DISubprogram(name: "xrealloc", scope: !4317, file: !4317, line: 51, type: !4357, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4359)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!60, !60, !61}
!4359 = !{!4355, !4360}
!4360 = !DILocalVariable(name: "n", arg: 2, scope: !4356, file: !4317, line: 51, type: !61)
!4361 = !DILocation(line: 51, column: 17, scope: !4356, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 122, column: 10, scope: !4340)
!4363 = !DILocation(line: 51, column: 27, scope: !4356, inlinedAt: !4362)
!4364 = !DILocation(line: 53, column: 8, scope: !4365, inlinedAt: !4362)
!4365 = distinct !DILexicalBlock(scope: !4356, file: !4317, line: 53, column: 7)
!4366 = !DILocation(line: 53, column: 13, scope: !4365, inlinedAt: !4362)
!4367 = !DILocation(line: 53, column: 10, scope: !4365, inlinedAt: !4362)
!4368 = !DILocation(line: 57, column: 7, scope: !4369, inlinedAt: !4362)
!4369 = distinct !DILexicalBlock(scope: !4365, file: !4317, line: 54, column: 5)
!4370 = !DILocation(line: 58, column: 7, scope: !4369, inlinedAt: !4362)
!4371 = !DILocation(line: 61, column: 7, scope: !4356, inlinedAt: !4362)
!4372 = !DILocation(line: 62, column: 8, scope: !4373, inlinedAt: !4362)
!4373 = distinct !DILexicalBlock(scope: !4356, file: !4317, line: 62, column: 7)
!4374 = !DILocation(line: 62, column: 13, scope: !4373, inlinedAt: !4362)
!4375 = !DILocation(line: 62, column: 10, scope: !4373, inlinedAt: !4362)
!4376 = !DILocation(line: 63, column: 5, scope: !4373, inlinedAt: !4362)
!4377 = !DILocation(line: 122, column: 3, scope: !4340)
!4378 = !DILocation(line: 51, column: 17, scope: !4356)
!4379 = !DILocation(line: 51, column: 27, scope: !4356)
!4380 = !DILocation(line: 53, column: 8, scope: !4365)
!4381 = !DILocation(line: 53, column: 13, scope: !4365)
!4382 = !DILocation(line: 53, column: 10, scope: !4365)
!4383 = !DILocation(line: 57, column: 7, scope: !4369)
!4384 = !DILocation(line: 58, column: 7, scope: !4369)
!4385 = !DILocation(line: 61, column: 7, scope: !4356)
!4386 = !DILocation(line: 62, column: 8, scope: !4373)
!4387 = !DILocation(line: 62, column: 13, scope: !4373)
!4388 = !DILocation(line: 62, column: 10, scope: !4373)
!4389 = !DILocation(line: 63, column: 5, scope: !4373)
!4390 = !DILocation(line: 65, column: 1, scope: !4356)
!4391 = !DILocation(line: 180, column: 19, scope: !734)
!4392 = !DILocation(line: 180, column: 30, scope: !734)
!4393 = !DILocation(line: 180, column: 41, scope: !734)
!4394 = !DILocation(line: 182, column: 14, scope: !734)
!4395 = !DILocation(line: 182, column: 10, scope: !734)
!4396 = !DILocation(line: 184, column: 9, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !734, file: !733, line: 184, column: 7)
!4398 = !DILocation(line: 184, column: 7, scope: !734)
!4399 = !DILocation(line: 186, column: 13, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !733, line: 186, column: 11)
!4401 = distinct !DILexicalBlock(scope: !4397, file: !733, line: 185, column: 5)
!4402 = !DILocation(line: 186, column: 11, scope: !4401)
!4403 = !DILocation(line: 194, column: 30, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4400, file: !733, line: 187, column: 9)
!4405 = !DILocation(line: 195, column: 16, scope: !4404)
!4406 = !DILocation(line: 195, column: 13, scope: !4404)
!4407 = !DILocation(line: 196, column: 9, scope: !4404)
!4408 = !DILocation(line: 204, column: 69, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !733, line: 204, column: 11)
!4410 = distinct !DILexicalBlock(scope: !4397, file: !733, line: 199, column: 5)
!4411 = !DILocation(line: 205, column: 11, scope: !4409)
!4412 = !DILocation(line: 204, column: 11, scope: !4410)
!4413 = !DILocation(line: 206, column: 9, scope: !4409)
!4414 = !DILocation(line: 210, column: 7, scope: !734)
!4415 = !DILocation(line: 211, column: 25, scope: !734)
!4416 = !DILocation(line: 51, column: 17, scope: !4356, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 211, column: 10, scope: !734)
!4418 = !DILocation(line: 51, column: 27, scope: !4356, inlinedAt: !4417)
!4419 = !DILocation(line: 53, column: 10, scope: !4365, inlinedAt: !4417)
!4420 = !DILocation(line: 207, column: 14, scope: !4410)
!4421 = !DILocation(line: 207, column: 18, scope: !4410)
!4422 = !DILocation(line: 207, column: 9, scope: !4410)
!4423 = !DILocation(line: 53, column: 8, scope: !4365, inlinedAt: !4417)
!4424 = !DILocation(line: 57, column: 7, scope: !4369, inlinedAt: !4417)
!4425 = !DILocation(line: 58, column: 7, scope: !4369, inlinedAt: !4417)
!4426 = !DILocation(line: 61, column: 7, scope: !4356, inlinedAt: !4417)
!4427 = !DILocation(line: 62, column: 8, scope: !4373, inlinedAt: !4417)
!4428 = !DILocation(line: 62, column: 13, scope: !4373, inlinedAt: !4417)
!4429 = !DILocation(line: 62, column: 10, scope: !4373, inlinedAt: !4417)
!4430 = !DILocation(line: 63, column: 5, scope: !4373, inlinedAt: !4417)
!4431 = !DILocation(line: 211, column: 3, scope: !734)
!4432 = distinct !DISubprogram(name: "xcharalloc", scope: !733, file: !733, line: 220, type: !3396, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4433)
!4433 = !{!4434}
!4434 = !DILocalVariable(name: "n", arg: 1, scope: !4432, file: !733, line: 220, type: !61)
!4435 = !DILocation(line: 220, column: 20, scope: !4432)
!4436 = !DILocation(line: 39, column: 17, scope: !4316, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 222, column: 10, scope: !4432)
!4438 = !DILocation(line: 41, column: 13, scope: !4316, inlinedAt: !4437)
!4439 = !DILocation(line: 41, column: 9, scope: !4316, inlinedAt: !4437)
!4440 = !DILocation(line: 42, column: 8, scope: !4327, inlinedAt: !4437)
!4441 = !DILocation(line: 42, column: 15, scope: !4327, inlinedAt: !4437)
!4442 = !DILocation(line: 42, column: 10, scope: !4327, inlinedAt: !4437)
!4443 = !DILocation(line: 43, column: 5, scope: !4327, inlinedAt: !4437)
!4444 = !DILocation(line: 222, column: 3, scope: !4432)
!4445 = distinct !DISubprogram(name: "x2realloc", scope: !4317, file: !4317, line: 74, type: !4446, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4448)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!60, !60, !737}
!4448 = !{!4449, !4450}
!4449 = !DILocalVariable(name: "p", arg: 1, scope: !4445, file: !4317, line: 74, type: !60)
!4450 = !DILocalVariable(name: "pn", arg: 2, scope: !4445, file: !4317, line: 74, type: !737)
!4451 = !DILocation(line: 74, column: 18, scope: !4445)
!4452 = !DILocation(line: 74, column: 29, scope: !4445)
!4453 = !DILocation(line: 180, column: 19, scope: !734, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 76, column: 10, scope: !4445)
!4455 = !DILocation(line: 180, column: 30, scope: !734, inlinedAt: !4454)
!4456 = !DILocation(line: 180, column: 41, scope: !734, inlinedAt: !4454)
!4457 = !DILocation(line: 182, column: 14, scope: !734, inlinedAt: !4454)
!4458 = !DILocation(line: 182, column: 10, scope: !734, inlinedAt: !4454)
!4459 = !DILocation(line: 184, column: 9, scope: !4397, inlinedAt: !4454)
!4460 = !DILocation(line: 184, column: 7, scope: !734, inlinedAt: !4454)
!4461 = !DILocation(line: 186, column: 13, scope: !4400, inlinedAt: !4454)
!4462 = !DILocation(line: 186, column: 11, scope: !4401, inlinedAt: !4454)
!4463 = !DILocation(line: 210, column: 7, scope: !734, inlinedAt: !4454)
!4464 = !DILocation(line: 51, column: 17, scope: !4356, inlinedAt: !4465)
!4465 = distinct !DILocation(line: 211, column: 10, scope: !734, inlinedAt: !4454)
!4466 = !DILocation(line: 51, column: 27, scope: !4356, inlinedAt: !4465)
!4467 = !DILocation(line: 53, column: 10, scope: !4365, inlinedAt: !4465)
!4468 = !DILocation(line: 205, column: 11, scope: !4409, inlinedAt: !4454)
!4469 = !DILocation(line: 204, column: 11, scope: !4410, inlinedAt: !4454)
!4470 = !DILocation(line: 206, column: 9, scope: !4409, inlinedAt: !4454)
!4471 = !DILocation(line: 207, column: 14, scope: !4410, inlinedAt: !4454)
!4472 = !DILocation(line: 207, column: 18, scope: !4410, inlinedAt: !4454)
!4473 = !DILocation(line: 207, column: 9, scope: !4410, inlinedAt: !4454)
!4474 = !DILocation(line: 53, column: 8, scope: !4365, inlinedAt: !4465)
!4475 = !DILocation(line: 57, column: 7, scope: !4369, inlinedAt: !4465)
!4476 = !DILocation(line: 58, column: 7, scope: !4369, inlinedAt: !4465)
!4477 = !DILocation(line: 61, column: 7, scope: !4356, inlinedAt: !4465)
!4478 = !DILocation(line: 62, column: 8, scope: !4373, inlinedAt: !4465)
!4479 = !DILocation(line: 62, column: 13, scope: !4373, inlinedAt: !4465)
!4480 = !DILocation(line: 62, column: 10, scope: !4373, inlinedAt: !4465)
!4481 = !DILocation(line: 63, column: 5, scope: !4373, inlinedAt: !4465)
!4482 = !DILocation(line: 76, column: 3, scope: !4445)
!4483 = distinct !DISubprogram(name: "xzalloc", scope: !4317, file: !4317, line: 84, type: !4318, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4484)
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "s", arg: 1, scope: !4483, file: !4317, line: 84, type: !61)
!4486 = !DILocation(line: 84, column: 17, scope: !4483)
!4487 = !DILocation(line: 39, column: 17, scope: !4316, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 86, column: 18, scope: !4483)
!4489 = !DILocation(line: 41, column: 13, scope: !4316, inlinedAt: !4488)
!4490 = !DILocation(line: 41, column: 9, scope: !4316, inlinedAt: !4488)
!4491 = !DILocation(line: 42, column: 8, scope: !4327, inlinedAt: !4488)
!4492 = !DILocation(line: 42, column: 15, scope: !4327, inlinedAt: !4488)
!4493 = !DILocation(line: 42, column: 10, scope: !4327, inlinedAt: !4488)
!4494 = !DILocation(line: 43, column: 5, scope: !4327, inlinedAt: !4488)
!4495 = !DILocation(line: 86, column: 10, scope: !4483)
!4496 = !DILocation(line: 86, column: 3, scope: !4483)
!4497 = distinct !DISubprogram(name: "xcalloc", scope: !4317, file: !4317, line: 93, type: !4303, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4498)
!4498 = !{!4499, !4500, !4501}
!4499 = !DILocalVariable(name: "n", arg: 1, scope: !4497, file: !4317, line: 93, type: !61)
!4500 = !DILocalVariable(name: "s", arg: 2, scope: !4497, file: !4317, line: 93, type: !61)
!4501 = !DILocalVariable(name: "p", scope: !4497, file: !4317, line: 95, type: !60)
!4502 = !DILocation(line: 93, column: 17, scope: !4497)
!4503 = !DILocation(line: 93, column: 27, scope: !4497)
!4504 = !DILocation(line: 100, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4497, file: !4317, line: 100, column: 7)
!4506 = !DILocation(line: 101, column: 7, scope: !4505)
!4507 = !DILocation(line: 101, column: 18, scope: !4505)
!4508 = !DILocation(line: 95, column: 9, scope: !4497)
!4509 = !DILocation(line: 101, column: 16, scope: !4505)
!4510 = !DILocation(line: 100, column: 7, scope: !4497)
!4511 = !DILocation(line: 102, column: 5, scope: !4505)
!4512 = !DILocation(line: 103, column: 3, scope: !4497)
!4513 = distinct !DISubprogram(name: "xmemdup", scope: !4317, file: !4317, line: 111, type: !855, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4514)
!4514 = !{!4515, !4516}
!4515 = !DILocalVariable(name: "p", arg: 1, scope: !4513, file: !4317, line: 111, type: !857)
!4516 = !DILocalVariable(name: "s", arg: 2, scope: !4513, file: !4317, line: 111, type: !61)
!4517 = !DILocation(line: 111, column: 22, scope: !4513)
!4518 = !DILocation(line: 111, column: 32, scope: !4513)
!4519 = !DILocation(line: 39, column: 17, scope: !4316, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 113, column: 18, scope: !4513)
!4521 = !DILocation(line: 41, column: 13, scope: !4316, inlinedAt: !4520)
!4522 = !DILocation(line: 41, column: 9, scope: !4316, inlinedAt: !4520)
!4523 = !DILocation(line: 42, column: 8, scope: !4327, inlinedAt: !4520)
!4524 = !DILocation(line: 42, column: 15, scope: !4327, inlinedAt: !4520)
!4525 = !DILocation(line: 42, column: 10, scope: !4327, inlinedAt: !4520)
!4526 = !DILocation(line: 43, column: 5, scope: !4327, inlinedAt: !4520)
!4527 = !DILocation(line: 113, column: 10, scope: !4513)
!4528 = !DILocation(line: 113, column: 3, scope: !4513)
!4529 = distinct !DISubprogram(name: "xstrdup", scope: !4317, file: !4317, line: 119, type: !3596, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !729, variables: !4530)
!4530 = !{!4531}
!4531 = !DILocalVariable(name: "string", arg: 1, scope: !4529, file: !4317, line: 119, type: !80)
!4532 = !DILocation(line: 119, column: 22, scope: !4529)
!4533 = !DILocation(line: 121, column: 27, scope: !4529)
!4534 = !DILocation(line: 121, column: 43, scope: !4529)
!4535 = !DILocation(line: 111, column: 22, scope: !4513, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 121, column: 10, scope: !4529)
!4537 = !DILocation(line: 111, column: 32, scope: !4513, inlinedAt: !4536)
!4538 = !DILocation(line: 39, column: 17, scope: !4316, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 113, column: 18, scope: !4513, inlinedAt: !4536)
!4540 = !DILocation(line: 41, column: 13, scope: !4316, inlinedAt: !4539)
!4541 = !DILocation(line: 41, column: 9, scope: !4316, inlinedAt: !4539)
!4542 = !DILocation(line: 42, column: 8, scope: !4327, inlinedAt: !4539)
!4543 = !DILocation(line: 42, column: 15, scope: !4327, inlinedAt: !4539)
!4544 = !DILocation(line: 42, column: 10, scope: !4327, inlinedAt: !4539)
!4545 = !DILocation(line: 43, column: 5, scope: !4327, inlinedAt: !4539)
!4546 = !DILocation(line: 113, column: 10, scope: !4513, inlinedAt: !4536)
!4547 = !DILocation(line: 121, column: 3, scope: !4529)
!4548 = distinct !DISubprogram(name: "xalloc_die", scope: !4549, file: !4549, line: 32, type: !789, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !746, variables: !230)
!4549 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4550 = !DILocation(line: 34, column: 10, scope: !4548)
!4551 = !DILocation(line: 34, column: 33, scope: !4548)
!4552 = !DILocation(line: 34, column: 3, scope: !4548)
!4553 = !DILocation(line: 40, column: 3, scope: !4548)
!4554 = distinct !DISubprogram(name: "rpl_calloc", scope: !4555, file: !4555, line: 42, type: !4303, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !4556)
!4555 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4556 = !{!4557, !4558, !4559, !4560}
!4557 = !DILocalVariable(name: "n", arg: 1, scope: !4554, file: !4555, line: 42, type: !61)
!4558 = !DILocalVariable(name: "s", arg: 2, scope: !4554, file: !4555, line: 42, type: !61)
!4559 = !DILocalVariable(name: "result", scope: !4554, file: !4555, line: 44, type: !60)
!4560 = !DILocalVariable(name: "bytes", scope: !4561, file: !4555, line: 56, type: !61)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !4555, line: 53, column: 5)
!4562 = distinct !DILexicalBlock(scope: !4554, file: !4555, line: 47, column: 7)
!4563 = !DILocation(line: 42, column: 20, scope: !4554)
!4564 = !DILocation(line: 42, column: 30, scope: !4554)
!4565 = !DILocation(line: 47, column: 9, scope: !4562)
!4566 = !DILocation(line: 47, column: 19, scope: !4562)
!4567 = !DILocation(line: 47, column: 14, scope: !4562)
!4568 = !DILocation(line: 56, column: 24, scope: !4561)
!4569 = !DILocation(line: 56, column: 14, scope: !4561)
!4570 = !DILocation(line: 57, column: 17, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4561, file: !4555, line: 57, column: 11)
!4572 = !DILocation(line: 57, column: 21, scope: !4571)
!4573 = !DILocation(line: 57, column: 11, scope: !4561)
!4574 = !DILocation(line: 59, column: 11, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4571, file: !4555, line: 58, column: 9)
!4576 = !DILocation(line: 59, column: 17, scope: !4575)
!4577 = !DILocation(line: 65, column: 12, scope: !4554)
!4578 = !DILocation(line: 44, column: 9, scope: !4554)
!4579 = !DILocation(line: 72, column: 3, scope: !4554)
!4580 = !DILocation(line: 73, column: 1, scope: !4554)
!4581 = distinct !DISubprogram(name: "rpl_fclose", scope: !4582, file: !4582, line: 56, type: !4583, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !750, variables: !4625)
!4582 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!63, !4585}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4587)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4588)
!4588 = !{!4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4587, file: !118, line: 242, baseType: !63, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4587, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4587, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4587, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4587, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4587, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4587, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4587, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4587, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4587, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4587, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4587, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4587, file: !118, line: 260, baseType: !4602, size: 64, offset: 768)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !4604)
!4604 = !{!4605, !4606, !4608}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4603, file: !118, line: 157, baseType: !4602, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4603, file: !118, line: 158, baseType: !4607, size: 64, offset: 64)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4603, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4587, file: !118, line: 262, baseType: !4607, size: 64, offset: 832)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4587, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4587, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4587, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4587, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4587, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4587, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4587, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4587, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4587, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4587, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4587, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4587, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4587, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4587, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4587, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!4625 = !{!4626, !4627, !4628, !4629}
!4626 = !DILocalVariable(name: "fp", arg: 1, scope: !4581, file: !4582, line: 56, type: !4585)
!4627 = !DILocalVariable(name: "saved_errno", scope: !4581, file: !4582, line: 58, type: !63)
!4628 = !DILocalVariable(name: "fd", scope: !4581, file: !4582, line: 59, type: !63)
!4629 = !DILocalVariable(name: "result", scope: !4581, file: !4582, line: 60, type: !63)
!4630 = !DILocation(line: 56, column: 19, scope: !4581)
!4631 = !DILocation(line: 58, column: 7, scope: !4581)
!4632 = !DILocation(line: 60, column: 7, scope: !4581)
!4633 = !DILocation(line: 63, column: 8, scope: !4581)
!4634 = !DILocation(line: 59, column: 7, scope: !4581)
!4635 = !DILocation(line: 64, column: 10, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4581, file: !4582, line: 64, column: 7)
!4637 = !DILocation(line: 64, column: 7, scope: !4581)
!4638 = !DILocation(line: 65, column: 12, scope: !4636)
!4639 = !DILocation(line: 65, column: 5, scope: !4636)
!4640 = !DILocation(line: 70, column: 9, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4581, file: !4582, line: 70, column: 7)
!4642 = !DILocation(line: 70, column: 23, scope: !4641)
!4643 = !DILocation(line: 70, column: 33, scope: !4641)
!4644 = !DILocation(line: 70, column: 26, scope: !4641)
!4645 = !DILocation(line: 70, column: 59, scope: !4641)
!4646 = !DILocation(line: 71, column: 7, scope: !4641)
!4647 = !DILocation(line: 71, column: 10, scope: !4641)
!4648 = !DILocation(line: 70, column: 7, scope: !4581)
!4649 = !DILocation(line: 98, column: 12, scope: !4581)
!4650 = !DILocation(line: 103, column: 7, scope: !4581)
!4651 = !DILocation(line: 72, column: 19, scope: !4641)
!4652 = !DILocation(line: 103, column: 19, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4581, file: !4582, line: 103, column: 7)
!4654 = !DILocation(line: 105, column: 13, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4653, file: !4582, line: 104, column: 5)
!4656 = !DILocation(line: 107, column: 5, scope: !4655)
!4657 = !DILocation(line: 110, column: 1, scope: !4581)
!4658 = !DILocation(line: 272, column: 16, scope: !334)
!4659 = !DILocation(line: 272, column: 24, scope: !334)
!4660 = !DILocation(line: 274, column: 3, scope: !334)
!4661 = !DILocation(line: 274, column: 11, scope: !334)
!4662 = !DILocation(line: 275, column: 7, scope: !334)
!4663 = !DILocation(line: 276, column: 3, scope: !334)
!4664 = !DILocation(line: 277, column: 3, scope: !334)
!4665 = !DILocation(line: 322, column: 22, scope: !357)
!4666 = !DILocation(line: 322, column: 13, scope: !357)
!4667 = !DILocation(line: 336, column: 18, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !357, file: !335, line: 336, column: 13)
!4669 = !DILocation(line: 336, column: 15, scope: !4668)
!4670 = !DILocation(line: 336, column: 13, scope: !357)
!4671 = !DILocation(line: 338, column: 22, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4668, file: !335, line: 337, column: 11)
!4673 = !DILocation(line: 339, column: 19, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4672, file: !335, line: 339, column: 17)
!4675 = !DILocation(line: 339, column: 29, scope: !4674)
!4676 = !DILocation(line: 339, column: 32, scope: !4674)
!4677 = !DILocation(line: 339, column: 38, scope: !4674)
!4678 = !DILocation(line: 339, column: 17, scope: !4672)
!4679 = !DILocation(line: 349, column: 26, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4674, file: !335, line: 348, column: 15)
!4681 = !DILocation(line: 350, column: 28, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4680, file: !335, line: 350, column: 21)
!4683 = !DILocation(line: 350, column: 21, scope: !4680)
!4684 = !DILocation(line: 354, column: 11, scope: !4672)
!4685 = !DILocation(line: 356, column: 20, scope: !4668)
!4686 = !DILocation(line: 357, column: 28, scope: !361)
!4687 = !DILocation(line: 357, column: 15, scope: !361)
!4688 = !DILocation(line: 357, column: 47, scope: !361)
!4689 = !DILocation(line: 357, column: 25, scope: !361)
!4690 = !DILocation(line: 359, column: 25, scope: !360)
!4691 = !DILocation(line: 359, column: 17, scope: !360)
!4692 = !DILocation(line: 360, column: 23, scope: !364)
!4693 = !DILocation(line: 360, column: 27, scope: !364)
!4694 = !DILocation(line: 360, column: 60, scope: !364)
!4695 = !DILocation(line: 360, column: 30, scope: !364)
!4696 = !DILocation(line: 360, column: 74, scope: !364)
!4697 = !DILocation(line: 360, column: 17, scope: !360)
!4698 = !DILocation(line: 362, column: 35, scope: !363)
!4699 = !DILocation(line: 362, column: 21, scope: !363)
!4700 = !DILocation(line: 363, column: 17, scope: !363)
!4701 = !DILocation(line: 364, column: 23, scope: !363)
!4702 = !DILocation(line: 366, column: 15, scope: !363)
!4703 = !DILocation(line: 404, column: 19, scope: !366)
!4704 = !DILocation(line: 404, column: 15, scope: !366)
!4705 = !DILocation(line: 405, column: 18, scope: !366)
!4706 = !DILocation(line: 412, column: 3, scope: !334)
!4707 = !DILocation(line: 414, column: 1, scope: !334)
!4708 = !DILocation(line: 413, column: 3, scope: !334)
!4709 = distinct !DISubprogram(name: "rpl_fflush", scope: !4710, file: !4710, line: 127, type: !4711, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !752, variables: !4753)
!4710 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!63, !4713}
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4715)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4716)
!4716 = !{!4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4715, file: !118, line: 242, baseType: !63, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4715, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4715, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4715, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4715, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4715, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4715, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4715, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4715, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4715, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4715, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4715, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4715, file: !118, line: 260, baseType: !4730, size: 64, offset: 768)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !4732)
!4732 = !{!4733, !4734, !4736}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4731, file: !118, line: 157, baseType: !4730, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4731, file: !118, line: 158, baseType: !4735, size: 64, offset: 64)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4731, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4715, file: !118, line: 262, baseType: !4735, size: 64, offset: 832)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4715, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4715, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4715, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4715, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4715, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4715, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4715, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4715, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4715, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4715, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4715, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4715, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4715, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4715, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4715, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!4753 = !{!4754}
!4754 = !DILocalVariable(name: "stream", arg: 1, scope: !4709, file: !4710, line: 127, type: !4713)
!4755 = !DILocation(line: 127, column: 19, scope: !4709)
!4756 = !DILocation(line: 148, column: 14, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4709, file: !4710, line: 148, column: 7)
!4758 = !DILocation(line: 148, column: 22, scope: !4757)
!4759 = !DILocation(line: 148, column: 27, scope: !4757)
!4760 = !DILocation(line: 148, column: 7, scope: !4709)
!4761 = !DILocation(line: 149, column: 12, scope: !4757)
!4762 = !DILocation(line: 149, column: 5, scope: !4757)
!4763 = !DILocalVariable(name: "fp", arg: 1, scope: !4764, file: !4710, line: 40, type: !4713)
!4764 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4710, file: !4710, line: 40, type: !4765, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !752, variables: !4767)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4713}
!4767 = !{!4763}
!4768 = !DILocation(line: 40, column: 48, scope: !4764, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 153, column: 3, scope: !4709)
!4770 = !DILocation(line: 42, column: 11, scope: !4771, inlinedAt: !4769)
!4771 = distinct !DILexicalBlock(scope: !4764, file: !4710, line: 42, column: 7)
!4772 = !DILocation(line: 42, column: 18, scope: !4771, inlinedAt: !4769)
!4773 = !DILocation(line: 42, column: 7, scope: !4764, inlinedAt: !4769)
!4774 = !DILocation(line: 44, column: 5, scope: !4771, inlinedAt: !4769)
!4775 = !DILocation(line: 155, column: 10, scope: !4709)
!4776 = !DILocation(line: 155, column: 3, scope: !4709)
!4777 = !DILocation(line: 229, column: 1, scope: !4709)
!4778 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4779, file: !4779, line: 28, type: !4780, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !4822)
!4779 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!63, !4782, !2257, !63}
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4784)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4785)
!4785 = !{!4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4784, file: !118, line: 242, baseType: !63, size: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4784, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4784, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4784, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4784, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4784, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4784, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4784, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4784, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4784, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4784, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4784, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4784, file: !118, line: 260, baseType: !4799, size: 64, offset: 768)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !4801)
!4801 = !{!4802, !4803, !4805}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4800, file: !118, line: 157, baseType: !4799, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4800, file: !118, line: 158, baseType: !4804, size: 64, offset: 64)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4800, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4784, file: !118, line: 262, baseType: !4804, size: 64, offset: 832)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4784, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4784, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4784, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4784, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4784, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4784, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4784, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4784, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4784, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4784, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4784, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4784, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4784, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4784, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4784, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!4822 = !{!4823, !4824, !4825, !4826}
!4823 = !DILocalVariable(name: "fp", arg: 1, scope: !4778, file: !4779, line: 28, type: !4782)
!4824 = !DILocalVariable(name: "offset", arg: 2, scope: !4778, file: !4779, line: 28, type: !2257)
!4825 = !DILocalVariable(name: "whence", arg: 3, scope: !4778, file: !4779, line: 28, type: !63)
!4826 = !DILocalVariable(name: "pos", scope: !4827, file: !4779, line: 116, type: !2257)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !4779, line: 112, column: 5)
!4828 = distinct !DILexicalBlock(scope: !4778, file: !4779, line: 51, column: 7)
!4829 = !DILocation(line: 28, column: 15, scope: !4778)
!4830 = !DILocation(line: 28, column: 25, scope: !4778)
!4831 = !DILocation(line: 28, column: 37, scope: !4778)
!4832 = !DILocation(line: 51, column: 11, scope: !4828)
!4833 = !{!1305, !782, i64 16}
!4834 = !DILocation(line: 51, column: 31, scope: !4828)
!4835 = !{!1305, !782, i64 8}
!4836 = !DILocation(line: 51, column: 24, scope: !4828)
!4837 = !DILocation(line: 52, column: 7, scope: !4828)
!4838 = !DILocation(line: 52, column: 14, scope: !4828)
!4839 = !DILocation(line: 52, column: 35, scope: !4828)
!4840 = !{!1305, !782, i64 32}
!4841 = !DILocation(line: 52, column: 28, scope: !4828)
!4842 = !DILocation(line: 53, column: 7, scope: !4828)
!4843 = !DILocation(line: 53, column: 14, scope: !4828)
!4844 = !{!1305, !782, i64 72}
!4845 = !DILocation(line: 53, column: 28, scope: !4828)
!4846 = !DILocation(line: 51, column: 7, scope: !4778)
!4847 = !DILocation(line: 116, column: 26, scope: !4827)
!4848 = !DILocation(line: 116, column: 19, scope: !4827)
!4849 = !DILocation(line: 116, column: 13, scope: !4827)
!4850 = !DILocation(line: 117, column: 15, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4827, file: !4779, line: 117, column: 11)
!4852 = !DILocation(line: 117, column: 11, scope: !4827)
!4853 = !DILocation(line: 127, column: 11, scope: !4827)
!4854 = !DILocation(line: 127, column: 18, scope: !4827)
!4855 = !DILocation(line: 128, column: 11, scope: !4827)
!4856 = !DILocation(line: 128, column: 19, scope: !4827)
!4857 = !{!1305, !1014, i64 144}
!4858 = !DILocation(line: 159, column: 7, scope: !4827)
!4859 = !DILocation(line: 161, column: 10, scope: !4778)
!4860 = !DILocation(line: 161, column: 3, scope: !4778)
!4861 = !DILocation(line: 162, column: 1, scope: !4778)
!4862 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4863, file: !4863, line: 334, type: !4864, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !756, variables: !4878)
!4863 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!61, !4866, !80, !61, !4867}
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2649, line: 6, baseType: !4869)
!4869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2651, line: 21, baseType: !4870)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2651, line: 13, size: 64, elements: !4871)
!4871 = !{!4872, !4873}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4870, file: !2651, line: 15, baseType: !63, size: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4870, file: !2651, line: 20, baseType: !4874, size: 32, offset: 32)
!4874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4870, file: !2651, line: 16, size: 32, elements: !4875)
!4875 = !{!4876, !4877}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4874, file: !2651, line: 18, baseType: !249, size: 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4874, file: !2651, line: 19, baseType: !2660, size: 32)
!4878 = !{!4879, !4880, !4881, !4882, !4883, !4884, !4885}
!4879 = !DILocalVariable(name: "pwc", arg: 1, scope: !4862, file: !4863, line: 334, type: !4866)
!4880 = !DILocalVariable(name: "s", arg: 2, scope: !4862, file: !4863, line: 334, type: !80)
!4881 = !DILocalVariable(name: "n", arg: 3, scope: !4862, file: !4863, line: 334, type: !61)
!4882 = !DILocalVariable(name: "ps", arg: 4, scope: !4862, file: !4863, line: 334, type: !4867)
!4883 = !DILocalVariable(name: "ret", scope: !4862, file: !4863, line: 336, type: !61)
!4884 = !DILocalVariable(name: "wc", scope: !4862, file: !4863, line: 337, type: !2665)
!4885 = !DILocalVariable(name: "uc", scope: !4886, file: !4863, line: 398, type: !65)
!4886 = distinct !DILexicalBlock(scope: !4887, file: !4863, line: 397, column: 5)
!4887 = distinct !DILexicalBlock(scope: !4862, file: !4863, line: 396, column: 7)
!4888 = !DILocation(line: 334, column: 23, scope: !4862)
!4889 = !DILocation(line: 334, column: 40, scope: !4862)
!4890 = !DILocation(line: 334, column: 50, scope: !4862)
!4891 = !DILocation(line: 334, column: 64, scope: !4862)
!4892 = !DILocation(line: 337, column: 3, scope: !4862)
!4893 = !DILocation(line: 353, column: 9, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4862, file: !4863, line: 353, column: 7)
!4895 = !DILocation(line: 353, column: 7, scope: !4862)
!4896 = !DILocation(line: 388, column: 9, scope: !4862)
!4897 = !DILocation(line: 336, column: 10, scope: !4862)
!4898 = !DILocation(line: 396, column: 19, scope: !4887)
!4899 = !DILocation(line: 396, column: 31, scope: !4887)
!4900 = !DILocation(line: 396, column: 26, scope: !4887)
!4901 = !DILocation(line: 396, column: 41, scope: !4887)
!4902 = !DILocation(line: 396, column: 7, scope: !4862)
!4903 = !DILocation(line: 398, column: 26, scope: !4886)
!4904 = !DILocation(line: 398, column: 21, scope: !4886)
!4905 = !DILocation(line: 399, column: 14, scope: !4886)
!4906 = !DILocation(line: 399, column: 12, scope: !4886)
!4907 = !DILocation(line: 405, column: 1, scope: !4862)
!4908 = distinct !DISubprogram(name: "close_stream", scope: !4909, file: !4909, line: 56, type: !4910, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !759, variables: !4952)
!4909 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!63, !4912}
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !4914)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !4915)
!4915 = !{!4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4914, file: !118, line: 242, baseType: !63, size: 32)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4914, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4914, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4914, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4914, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4914, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4914, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4914, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4914, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4914, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4914, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4914, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4914, file: !118, line: 260, baseType: !4929, size: 64, offset: 768)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !4931)
!4931 = !{!4932, !4933, !4935}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4930, file: !118, line: 157, baseType: !4929, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4930, file: !118, line: 158, baseType: !4934, size: 64, offset: 64)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4930, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4914, file: !118, line: 262, baseType: !4934, size: 64, offset: 832)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4914, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4914, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4914, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4914, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4914, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4914, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4914, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4914, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4914, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4914, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4914, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4914, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4914, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4914, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4914, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!4952 = !{!4953, !4954, !4956, !4957}
!4953 = !DILocalVariable(name: "stream", arg: 1, scope: !4908, file: !4909, line: 56, type: !4912)
!4954 = !DILocalVariable(name: "some_pending", scope: !4908, file: !4909, line: 58, type: !4955)
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!4956 = !DILocalVariable(name: "prev_fail", scope: !4908, file: !4909, line: 59, type: !4955)
!4957 = !DILocalVariable(name: "fclose_fail", scope: !4908, file: !4909, line: 60, type: !4955)
!4958 = !DILocation(line: 56, column: 21, scope: !4908)
!4959 = !DILocation(line: 58, column: 30, scope: !4908)
!4960 = !DILocalVariable(name: "__stream", arg: 1, scope: !4961, file: !1026, line: 132, type: !4912)
!4961 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1026, file: !1026, line: 132, type: !4910, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !759, variables: !4962)
!4962 = !{!4960}
!4963 = !DILocation(line: 132, column: 1, scope: !4961, inlinedAt: !4964)
!4964 = distinct !DILocation(line: 59, column: 27, scope: !4908)
!4965 = !DILocation(line: 134, column: 10, scope: !4961, inlinedAt: !4964)
!4966 = !DILocation(line: 59, column: 43, scope: !4908)
!4967 = !DILocation(line: 60, column: 29, scope: !4908)
!4968 = !DILocation(line: 60, column: 45, scope: !4908)
!4969 = !DILocation(line: 70, column: 17, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4908, file: !4909, line: 70, column: 7)
!4971 = !DILocation(line: 58, column: 50, scope: !4908)
!4972 = !DILocation(line: 70, column: 33, scope: !4970)
!4973 = !DILocation(line: 70, column: 53, scope: !4970)
!4974 = !DILocation(line: 70, column: 59, scope: !4970)
!4975 = !DILocation(line: 70, column: 7, scope: !4908)
!4976 = !DILocation(line: 72, column: 11, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4970, file: !4909, line: 71, column: 5)
!4978 = !DILocation(line: 73, column: 9, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4977, file: !4909, line: 72, column: 11)
!4980 = !DILocation(line: 73, column: 15, scope: !4979)
!4981 = !DILocation(line: 78, column: 1, scope: !4908)
!4982 = distinct !DISubprogram(name: "hard_locale", scope: !4983, file: !4983, line: 38, type: !4984, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !761, variables: !4986)
!4983 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!70, !63}
!4986 = !{!4987, !4988, !4989}
!4987 = !DILocalVariable(name: "category", arg: 1, scope: !4982, file: !4983, line: 38, type: !63)
!4988 = !DILocalVariable(name: "hard", scope: !4982, file: !4983, line: 40, type: !70)
!4989 = !DILocalVariable(name: "p", scope: !4982, file: !4983, line: 41, type: !80)
!4990 = !DILocation(line: 38, column: 18, scope: !4982)
!4991 = !DILocation(line: 40, column: 8, scope: !4982)
!4992 = !DILocation(line: 41, column: 19, scope: !4982)
!4993 = !DILocation(line: 41, column: 15, scope: !4982)
!4994 = !DILocation(line: 43, column: 7, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4982, file: !4983, line: 43, column: 7)
!4996 = !DILocation(line: 43, column: 7, scope: !4982)
!4997 = !DILocation(line: 47, column: 15, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !4983, line: 47, column: 15)
!4999 = distinct !DILexicalBlock(scope: !5000, file: !4983, line: 46, column: 9)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !4983, line: 45, column: 11)
!5001 = distinct !DILexicalBlock(scope: !4995, file: !4983, line: 44, column: 5)
!5002 = !DILocation(line: 47, column: 31, scope: !4998)
!5003 = !DILocation(line: 47, column: 36, scope: !4998)
!5004 = !DILocation(line: 47, column: 39, scope: !4998)
!5005 = !DILocation(line: 47, column: 59, scope: !4998)
!5006 = !DILocation(line: 47, column: 15, scope: !4999)
!5007 = !DILocation(line: 48, column: 13, scope: !4998)
!5008 = !DILocation(line: 71, column: 3, scope: !4982)
!5009 = distinct !DISubprogram(name: "locale_charset", scope: !712, file: !712, line: 393, type: !5010, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !369, variables: !5012)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!80}
!5012 = !{!5013, !5014}
!5013 = !DILocalVariable(name: "codeset", scope: !5009, file: !712, line: 395, type: !80)
!5014 = !DILocalVariable(name: "aliases", scope: !5009, file: !712, line: 396, type: !80)
!5015 = !DILocalVariable(name: "buf1", scope: !5016, file: !712, line: 196, type: !5083)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !712, line: 194, column: 21)
!5017 = distinct !DILexicalBlock(scope: !5018, file: !712, line: 193, column: 19)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !712, line: 193, column: 19)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !712, line: 188, column: 17)
!5020 = distinct !DILexicalBlock(scope: !5021, file: !712, line: 181, column: 19)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !712, line: 177, column: 13)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !712, line: 173, column: 15)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !712, line: 161, column: 9)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !712, line: 157, column: 11)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !712, line: 130, column: 5)
!5026 = distinct !DILexicalBlock(scope: !5027, file: !712, line: 129, column: 7)
!5027 = distinct !DISubprogram(name: "get_charset_aliases", scope: !712, file: !712, line: 124, type: !5010, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !369, variables: !5028)
!5028 = !{!5029, !5030, !5031, !5032, !5033, !5035, !5036, !5037, !5038, !5079, !5080, !5081, !5015, !5082, !5086, !5087, !5088}
!5029 = !DILocalVariable(name: "cp", scope: !5027, file: !712, line: 126, type: !80)
!5030 = !DILocalVariable(name: "dir", scope: !5025, file: !712, line: 132, type: !80)
!5031 = !DILocalVariable(name: "base", scope: !5025, file: !712, line: 133, type: !80)
!5032 = !DILocalVariable(name: "file_name", scope: !5025, file: !712, line: 134, type: !58)
!5033 = !DILocalVariable(name: "dir_len", scope: !5034, file: !712, line: 144, type: !61)
!5034 = distinct !DILexicalBlock(scope: !5025, file: !712, line: 143, column: 7)
!5035 = !DILocalVariable(name: "base_len", scope: !5034, file: !712, line: 145, type: !61)
!5036 = !DILocalVariable(name: "add_slash", scope: !5034, file: !712, line: 146, type: !63)
!5037 = !DILocalVariable(name: "fd", scope: !5023, file: !712, line: 162, type: !63)
!5038 = !DILocalVariable(name: "fp", scope: !5021, file: !712, line: 178, type: !5039)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !116, line: 7, baseType: !5041)
!5041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !118, line: 241, size: 1728, elements: !5042)
!5042 = !{!5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5041, file: !118, line: 242, baseType: !63, size: 32)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5041, file: !118, line: 247, baseType: !58, size: 64, offset: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5041, file: !118, line: 248, baseType: !58, size: 64, offset: 128)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5041, file: !118, line: 249, baseType: !58, size: 64, offset: 192)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5041, file: !118, line: 250, baseType: !58, size: 64, offset: 256)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5041, file: !118, line: 251, baseType: !58, size: 64, offset: 320)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5041, file: !118, line: 252, baseType: !58, size: 64, offset: 384)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5041, file: !118, line: 253, baseType: !58, size: 64, offset: 448)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5041, file: !118, line: 254, baseType: !58, size: 64, offset: 512)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5041, file: !118, line: 256, baseType: !58, size: 64, offset: 576)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5041, file: !118, line: 257, baseType: !58, size: 64, offset: 640)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5041, file: !118, line: 258, baseType: !58, size: 64, offset: 704)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5041, file: !118, line: 260, baseType: !5056, size: 64, offset: 768)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !118, line: 156, size: 192, elements: !5058)
!5058 = !{!5059, !5060, !5062}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5057, file: !118, line: 157, baseType: !5056, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5057, file: !118, line: 158, baseType: !5061, size: 64, offset: 64)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5057, file: !118, line: 162, baseType: !63, size: 32, offset: 128)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5041, file: !118, line: 262, baseType: !5061, size: 64, offset: 832)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5041, file: !118, line: 264, baseType: !63, size: 32, offset: 896)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5041, file: !118, line: 268, baseType: !63, size: 32, offset: 928)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5041, file: !118, line: 270, baseType: !144, size: 64, offset: 960)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5041, file: !118, line: 274, baseType: !66, size: 16, offset: 1024)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5041, file: !118, line: 275, baseType: !148, size: 8, offset: 1040)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5041, file: !118, line: 276, baseType: !150, size: 8, offset: 1048)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5041, file: !118, line: 280, baseType: !154, size: 64, offset: 1088)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5041, file: !118, line: 289, baseType: !157, size: 64, offset: 1152)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5041, file: !118, line: 297, baseType: !60, size: 64, offset: 1216)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5041, file: !118, line: 298, baseType: !60, size: 64, offset: 1280)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5041, file: !118, line: 299, baseType: !60, size: 64, offset: 1344)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5041, file: !118, line: 300, baseType: !60, size: 64, offset: 1408)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5041, file: !118, line: 302, baseType: !61, size: 64, offset: 1472)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5041, file: !118, line: 303, baseType: !63, size: 32, offset: 1536)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5041, file: !118, line: 305, baseType: !165, size: 160, offset: 1568)
!5079 = !DILocalVariable(name: "res_ptr", scope: !5019, file: !712, line: 190, type: !58)
!5080 = !DILocalVariable(name: "res_size", scope: !5019, file: !712, line: 191, type: !61)
!5081 = !DILocalVariable(name: "c", scope: !5016, file: !712, line: 195, type: !63)
!5082 = !DILocalVariable(name: "buf2", scope: !5016, file: !712, line: 197, type: !5083)
!5083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 408, elements: !5084)
!5084 = !{!5085}
!5085 = !DISubrange(count: 51)
!5086 = !DILocalVariable(name: "l1", scope: !5016, file: !712, line: 198, type: !61)
!5087 = !DILocalVariable(name: "l2", scope: !5016, file: !712, line: 198, type: !61)
!5088 = !DILocalVariable(name: "old_res_ptr", scope: !5016, file: !712, line: 199, type: !58)
!5089 = !DILocation(line: 196, column: 28, scope: !5016, inlinedAt: !5090)
!5090 = distinct !DILocation(line: 589, column: 18, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5009, file: !712, line: 589, column: 3)
!5092 = !DILocation(line: 197, column: 28, scope: !5016, inlinedAt: !5090)
!5093 = !DILocation(line: 403, column: 13, scope: !5009)
!5094 = !DILocation(line: 395, column: 15, scope: !5009)
!5095 = !DILocation(line: 584, column: 15, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5009, file: !712, line: 584, column: 7)
!5097 = !DILocation(line: 584, column: 7, scope: !5009)
!5098 = !DILocation(line: 128, column: 8, scope: !5027, inlinedAt: !5090)
!5099 = !DILocation(line: 126, column: 15, scope: !5027, inlinedAt: !5090)
!5100 = !DILocation(line: 129, column: 10, scope: !5026, inlinedAt: !5090)
!5101 = !DILocation(line: 129, column: 7, scope: !5027, inlinedAt: !5090)
!5102 = !DILocation(line: 138, column: 13, scope: !5025, inlinedAt: !5090)
!5103 = !DILocation(line: 132, column: 19, scope: !5025, inlinedAt: !5090)
!5104 = !DILocation(line: 139, column: 15, scope: !5105, inlinedAt: !5090)
!5105 = distinct !DILexicalBlock(scope: !5025, file: !712, line: 139, column: 11)
!5106 = !DILocation(line: 139, column: 23, scope: !5105, inlinedAt: !5090)
!5107 = !DILocation(line: 139, column: 26, scope: !5105, inlinedAt: !5090)
!5108 = !DILocation(line: 139, column: 33, scope: !5105, inlinedAt: !5090)
!5109 = !DILocation(line: 139, column: 11, scope: !5025, inlinedAt: !5090)
!5110 = !DILocation(line: 140, column: 9, scope: !5105, inlinedAt: !5090)
!5111 = !DILocation(line: 144, column: 26, scope: !5034, inlinedAt: !5090)
!5112 = !DILocation(line: 144, column: 16, scope: !5034, inlinedAt: !5090)
!5113 = !DILocation(line: 145, column: 16, scope: !5034, inlinedAt: !5090)
!5114 = !DILocation(line: 146, column: 34, scope: !5034, inlinedAt: !5090)
!5115 = !DILocation(line: 146, column: 38, scope: !5034, inlinedAt: !5090)
!5116 = !DILocation(line: 146, column: 42, scope: !5034, inlinedAt: !5090)
!5117 = !DILocation(line: 147, column: 48, scope: !5034, inlinedAt: !5090)
!5118 = !DILocation(line: 147, column: 46, scope: !5034, inlinedAt: !5090)
!5119 = !DILocation(line: 147, column: 69, scope: !5034, inlinedAt: !5090)
!5120 = !DILocation(line: 147, column: 30, scope: !5034, inlinedAt: !5090)
!5121 = !DILocation(line: 134, column: 13, scope: !5025, inlinedAt: !5090)
!5122 = !DILocation(line: 148, column: 13, scope: !5034, inlinedAt: !5090)
!5123 = !DILocation(line: 150, column: 13, scope: !5124, inlinedAt: !5090)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !712, line: 149, column: 11)
!5125 = distinct !DILexicalBlock(scope: !5034, file: !712, line: 148, column: 13)
!5126 = !DILocation(line: 151, column: 17, scope: !5124, inlinedAt: !5090)
!5127 = !DILocation(line: 152, column: 34, scope: !5128, inlinedAt: !5090)
!5128 = distinct !DILexicalBlock(scope: !5124, file: !712, line: 151, column: 17)
!5129 = !DILocation(line: 153, column: 41, scope: !5124, inlinedAt: !5090)
!5130 = !DILocation(line: 153, column: 13, scope: !5124, inlinedAt: !5090)
!5131 = !DILocation(line: 157, column: 11, scope: !5025, inlinedAt: !5090)
!5132 = !DILocation(line: 171, column: 16, scope: !5023, inlinedAt: !5090)
!5133 = !DILocation(line: 162, column: 15, scope: !5023, inlinedAt: !5090)
!5134 = !DILocation(line: 173, column: 18, scope: !5022, inlinedAt: !5090)
!5135 = !DILocation(line: 173, column: 15, scope: !5023, inlinedAt: !5090)
!5136 = !DILocation(line: 180, column: 20, scope: !5021, inlinedAt: !5090)
!5137 = !DILocation(line: 178, column: 21, scope: !5021, inlinedAt: !5090)
!5138 = !DILocation(line: 181, column: 22, scope: !5020, inlinedAt: !5090)
!5139 = !DILocation(line: 181, column: 19, scope: !5021, inlinedAt: !5090)
!5140 = !DILocation(line: 184, column: 19, scope: !5141, inlinedAt: !5090)
!5141 = distinct !DILexicalBlock(scope: !5020, file: !712, line: 182, column: 17)
!5142 = !DILocation(line: 186, column: 17, scope: !5141, inlinedAt: !5090)
!5143 = !DILocation(line: 190, column: 25, scope: !5019, inlinedAt: !5090)
!5144 = !DILocation(line: 191, column: 26, scope: !5019, inlinedAt: !5090)
!5145 = !DILocation(line: 193, column: 19, scope: !5019, inlinedAt: !5090)
!5146 = !DILocation(line: 196, column: 23, scope: !5016, inlinedAt: !5090)
!5147 = !DILocation(line: 197, column: 23, scope: !5016, inlinedAt: !5090)
!5148 = !DILocalVariable(name: "__fp", arg: 1, scope: !5149, file: !1026, line: 63, type: !5039)
!5149 = distinct !DISubprogram(name: "getc_unlocked", scope: !1026, file: !1026, line: 63, type: !5150, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !369, variables: !5152)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!63, !5039}
!5152 = !{!5148}
!5153 = !DILocation(line: 63, column: 22, scope: !5149, inlinedAt: !5154)
!5154 = distinct !DILocation(line: 201, column: 27, scope: !5016, inlinedAt: !5090)
!5155 = !DILocation(line: 65, column: 10, scope: !5149, inlinedAt: !5154)
!5156 = !DILocation(line: 195, column: 27, scope: !5016, inlinedAt: !5090)
!5157 = !DILocation(line: 202, column: 27, scope: !5016, inlinedAt: !5090)
!5158 = distinct !{!5158, !5159, !5162}
!5159 = !DILocation(line: 209, column: 27, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5161, file: !712, line: 207, column: 25)
!5161 = distinct !DILexicalBlock(scope: !5016, file: !712, line: 206, column: 27)
!5162 = !DILocation(line: 211, column: 58, scope: !5160)
!5163 = !DILocation(line: 65, column: 10, scope: !5149, inlinedAt: !5164)
!5164 = distinct !DILocation(line: 210, column: 33, scope: !5160, inlinedAt: !5090)
!5165 = !DILocation(line: 63, column: 22, scope: !5149, inlinedAt: !5164)
!5166 = !DILocation(line: 210, column: 29, scope: !5160, inlinedAt: !5090)
!5167 = distinct !{!5167, !5168, !5169}
!5168 = !DILocation(line: 193, column: 19, scope: !5018)
!5169 = !DILocation(line: 241, column: 21, scope: !5018)
!5170 = !DILocation(line: 216, column: 23, scope: !5016, inlinedAt: !5090)
!5171 = !DILocation(line: 217, column: 27, scope: !5172, inlinedAt: !5090)
!5172 = distinct !DILexicalBlock(scope: !5016, file: !712, line: 217, column: 27)
!5173 = !DILocation(line: 217, column: 64, scope: !5172, inlinedAt: !5090)
!5174 = !DILocation(line: 217, column: 27, scope: !5016, inlinedAt: !5090)
!5175 = !DILocation(line: 219, column: 28, scope: !5016, inlinedAt: !5090)
!5176 = !DILocation(line: 198, column: 30, scope: !5016, inlinedAt: !5090)
!5177 = !DILocation(line: 220, column: 28, scope: !5016, inlinedAt: !5090)
!5178 = !DILocation(line: 198, column: 34, scope: !5016, inlinedAt: !5090)
!5179 = !DILocation(line: 199, column: 29, scope: !5016, inlinedAt: !5090)
!5180 = !DILocation(line: 222, column: 36, scope: !5181, inlinedAt: !5090)
!5181 = distinct !DILexicalBlock(scope: !5016, file: !712, line: 222, column: 27)
!5182 = !DILocation(line: 222, column: 27, scope: !5016, inlinedAt: !5090)
!5183 = !DILocation(line: 225, column: 63, scope: !5184, inlinedAt: !5090)
!5184 = distinct !DILexicalBlock(scope: !5181, file: !712, line: 223, column: 25)
!5185 = !DILocation(line: 225, column: 46, scope: !5184, inlinedAt: !5090)
!5186 = !DILocation(line: 226, column: 25, scope: !5184, inlinedAt: !5090)
!5187 = !DILocation(line: 229, column: 36, scope: !5188, inlinedAt: !5090)
!5188 = distinct !DILexicalBlock(scope: !5181, file: !712, line: 228, column: 25)
!5189 = !DILocation(line: 230, column: 73, scope: !5188, inlinedAt: !5090)
!5190 = !DILocation(line: 230, column: 46, scope: !5188, inlinedAt: !5090)
!5191 = !DILocation(line: 232, column: 35, scope: !5192, inlinedAt: !5090)
!5192 = distinct !DILexicalBlock(scope: !5016, file: !712, line: 232, column: 27)
!5193 = !DILocation(line: 232, column: 27, scope: !5016, inlinedAt: !5090)
!5194 = !DILocation(line: 236, column: 27, scope: !5195, inlinedAt: !5090)
!5195 = distinct !DILexicalBlock(scope: !5192, file: !712, line: 233, column: 25)
!5196 = !DILocation(line: 237, column: 27, scope: !5195, inlinedAt: !5090)
!5197 = !DILocation(line: 241, column: 21, scope: !5017, inlinedAt: !5090)
!5198 = !DILocation(line: 239, column: 39, scope: !5016, inlinedAt: !5090)
!5199 = !DILocation(line: 239, column: 50, scope: !5016, inlinedAt: !5090)
!5200 = !DILocation(line: 239, column: 61, scope: !5016, inlinedAt: !5090)
!5201 = !DILocalVariable(name: "__dest", arg: 1, scope: !5202, file: !5203, line: 88, type: !5206)
!5202 = distinct !DISubprogram(name: "strcpy", scope: !5203, file: !5203, line: 88, type: !5204, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !369, variables: !5208)
!5203 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!58, !5206, !5207}
!5206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!5207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!5208 = !{!5201, !5209}
!5209 = !DILocalVariable(name: "__src", arg: 2, scope: !5202, file: !5203, line: 88, type: !5207)
!5210 = !DILocation(line: 88, column: 1, scope: !5202, inlinedAt: !5211)
!5211 = distinct !DILocation(line: 239, column: 23, scope: !5016, inlinedAt: !5090)
!5212 = !DILocation(line: 90, column: 49, scope: !5202, inlinedAt: !5211)
!5213 = !DILocation(line: 90, column: 10, scope: !5202, inlinedAt: !5211)
!5214 = !DILocation(line: 88, column: 1, scope: !5202, inlinedAt: !5215)
!5215 = distinct !DILocation(line: 240, column: 23, scope: !5016, inlinedAt: !5090)
!5216 = !DILocation(line: 90, column: 49, scope: !5202, inlinedAt: !5215)
!5217 = !DILocation(line: 90, column: 10, scope: !5202, inlinedAt: !5215)
!5218 = !DILocation(line: 193, column: 19, scope: !5017, inlinedAt: !5090)
!5219 = !DILocation(line: 242, column: 19, scope: !5019, inlinedAt: !5090)
!5220 = !DILocation(line: 243, column: 32, scope: !5221, inlinedAt: !5090)
!5221 = distinct !DILexicalBlock(scope: !5019, file: !712, line: 243, column: 23)
!5222 = !DILocation(line: 243, column: 23, scope: !5019, inlinedAt: !5090)
!5223 = !DILocation(line: 247, column: 33, scope: !5224, inlinedAt: !5090)
!5224 = distinct !DILexicalBlock(scope: !5221, file: !712, line: 246, column: 21)
!5225 = !DILocation(line: 247, column: 45, scope: !5224, inlinedAt: !5090)
!5226 = !DILocation(line: 253, column: 11, scope: !5023, inlinedAt: !5090)
!5227 = !DILocation(line: 377, column: 23, scope: !5025, inlinedAt: !5090)
!5228 = !DILocation(line: 378, column: 5, scope: !5025, inlinedAt: !5090)
!5229 = !DILocation(line: 396, column: 15, scope: !5009)
!5230 = !DILocation(line: 590, column: 8, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5091, file: !712, line: 589, column: 3)
!5232 = !DILocation(line: 590, column: 17, scope: !5231)
!5233 = !DILocation(line: 589, column: 3, scope: !5091)
!5234 = !DILocation(line: 592, column: 9, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5231, file: !712, line: 592, column: 9)
!5236 = !DILocation(line: 592, column: 35, scope: !5235)
!5237 = !DILocation(line: 593, column: 9, scope: !5235)
!5238 = !DILocation(line: 593, column: 24, scope: !5235)
!5239 = !DILocation(line: 593, column: 31, scope: !5235)
!5240 = !DILocation(line: 593, column: 34, scope: !5235)
!5241 = !DILocation(line: 593, column: 45, scope: !5235)
!5242 = !DILocation(line: 592, column: 9, scope: !5231)
!5243 = !DILocation(line: 595, column: 29, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5235, file: !712, line: 594, column: 7)
!5245 = !DILocation(line: 595, column: 27, scope: !5244)
!5246 = !DILocation(line: 595, column: 46, scope: !5244)
!5247 = !DILocation(line: 596, column: 9, scope: !5244)
!5248 = !DILocation(line: 591, column: 19, scope: !5231)
!5249 = !DILocation(line: 591, column: 36, scope: !5231)
!5250 = !DILocation(line: 591, column: 16, scope: !5231)
!5251 = !DILocation(line: 591, column: 52, scope: !5231)
!5252 = !DILocation(line: 591, column: 69, scope: !5231)
!5253 = !DILocation(line: 591, column: 49, scope: !5231)
!5254 = distinct !{!5254, !5233, !5255}
!5255 = !DILocation(line: 597, column: 7, scope: !5091)
!5256 = !DILocation(line: 602, column: 7, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5009, file: !712, line: 602, column: 7)
!5258 = !DILocation(line: 602, column: 18, scope: !5257)
!5259 = !DILocation(line: 602, column: 7, scope: !5009)
!5260 = !DILocation(line: 612, column: 3, scope: !5009)
