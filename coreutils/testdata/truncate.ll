; ModuleID = 'coreutils-8.27/src/truncate.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [268 x i8] c"Shrink or extend the size of each FILE to the specified size\0A\0AA FILE argument that does not exist is created.\0A\0AIf a FILE is larger than the specified size, the extra data is lost.\0AIf a FILE is shorter, it is extended and the extended part (hole)\0Areads as zero bytes.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"  -c, --no-create        do not create any files\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"  -o, --io-blocks        treat SIZE as number of IO blocks instead of bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [112 x i8] c"  -r, --reference=RFILE  base size on RFILE\0A  -s, --size=SIZE        set or adjust the file size by SIZE bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.32 = private unnamed_addr constant [153 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\0A\00", align 1
@.str.8 = private unnamed_addr constant [191 x i8] c"\0ASIZE may also be prefixed by one of the following modifying characters:\0A'+' extend by, '-' reduce by, '<' at most, '>' at least,\0A'/' round down to multiple of, '%' round up to multiple of.\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.44 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cor:s:\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@no_create = internal unnamed_addr global i1 false, align 1
@block_mode = internal unnamed_addr global i1 false, align 1
@optarg = external local_unnamed_addr global i8*, align 8
@ref_file = internal unnamed_addr global i8* null, align 8, !dbg !67
@.str.14 = private unnamed_addr constant [38 x i8] c"multiple relative modifiers specified\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Invalid number\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"EgGkKmMPtTYZ0\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"you must specify either %s or %s\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--size\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"--reference\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"you must specify a relative %s with %s\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"%s was specified but %s was not\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"--io-blocks\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"cannot get the size of %s\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"cannot open %s for writing\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"overflow in %ld * %ld byte blocks for file %s\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"%s has unusable, apparently negative size\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"overflow rounding up size of file %s\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"overflow extending size of file %s\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"failed to truncate %s at %ld bytes\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"io-blocks\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), align 8, !dbg !101
@.str.33 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !107
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !112
@.str.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !115
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !122
@.str.60 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.72, i32 0, i32 0), i8* null], align 16, !dbg !129
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !141
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !148
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !161
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.74 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.76 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.77 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.78 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.79 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !168
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !175
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !163
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !177
@.str.86 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.89 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.90 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.91 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.92 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.93 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.94 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.95 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.96 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.97 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.98 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.99 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.102 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.106 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.107 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !183
@.str.1.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.126 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !192
@.str.3.140 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.141 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.142 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.143 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.144 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !602 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !606, metadata !607), !dbg !608
  %2 = icmp eq i32 %0, 0, !dbg !609
  br i1 %2, label %8, label %3, !dbg !611

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !612, !tbaa !614
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !612
  %6 = load i8*, i8** @program_name, align 8, !dbg !612, !tbaa !614
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !612
  br label %54, !dbg !612

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !618
  %10 = load i8*, i8** @program_name, align 8, !dbg !618, !tbaa !614
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !618
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !620
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !614
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !620
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !621
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !614
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !621
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !626
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !614
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !626
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !627
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !614
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !627
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !628
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !614
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !628
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !629
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !614
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !629
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !630
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !614
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !630
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !631
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !614
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10, !dbg !631
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !634
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !614
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #10, !dbg !634
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !79, metadata !607) #10, !dbg !635
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 0, metadata !79, metadata !607) #10, !dbg !635
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !637
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !637
  %41 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !638
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !87, metadata !607) #10, !dbg !639
  %42 = icmp eq i8* %41, null, !dbg !640
  br i1 %42, label %49, label %43, !dbg !642

; <label>:43:                                     ; preds = %8
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 3) #14, !dbg !643
  %45 = icmp eq i32 %44, 0, !dbg !643
  br i1 %45, label %49, label %46, !dbg !644

; <label>:46:                                     ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !645
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !645
  br label %49, !dbg !647

; <label>:49:                                     ; preds = %8, %43, %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !648
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !648
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !649
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !649
  br label %54

; <label>:54:                                     ; preds = %49, %3
  tail call void @exit(i32 %0) #15, !dbg !650
  unreachable, !dbg !650
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !651 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !656, metadata !607), !dbg !715
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !657, metadata !607), !dbg !716
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !658, metadata !607), !dbg !717
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !659, metadata !607), !dbg !718
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !661, metadata !607), !dbg !719
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !662, metadata !607), !dbg !720
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !665, metadata !607), !dbg !721
  %5 = load i8*, i8** %1, align 8, !dbg !722, !tbaa !614
  tail call void @set_program_name(i8* %5) #10, !dbg !723
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !724
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !725
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !726
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !727
  br label %10, !dbg !728

; <label>:10:                                     ; preds = %83, %2
  %11 = phi i32 [ %84, %83 ], [ 0, %2 ]
  %12 = phi i64 [ %86, %83 ], [ undef, %2 ]
  %13 = phi i8 [ 1, %83 ], [ 0, %2 ]
  br label %14, !dbg !729

; <label>:14:                                     ; preds = %20, %10
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !658, metadata !607), !dbg !717
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !660, metadata !607), !dbg !730
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !662, metadata !607), !dbg !720
  %15 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !729
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !664, metadata !607), !dbg !731
  switch i32 %15, label %97 [
    i32 -1, label %98
    i32 99, label %16
    i32 111, label %17
    i32 114, label %18
    i32 115, label %21
    i32 -130, label %93
    i32 -131, label %94
  ], !dbg !728

; <label>:16:                                     ; preds = %14
  store i1 true, i1* @no_create, align 1
  br label %20, !dbg !732

; <label>:17:                                     ; preds = %14
  store i1 true, i1* @block_mode, align 1
  br label %20, !dbg !735

; <label>:18:                                     ; preds = %14
  %19 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !736, !tbaa !614
  store i64 %19, i64* bitcast (i8** @ref_file to i64*), align 8, !dbg !737, !tbaa !614
  br label %20, !dbg !738

; <label>:20:                                     ; preds = %18, %17, %16
  br label %14, !dbg !717, !llvm.loop !739

; <label>:21:                                     ; preds = %14
  %22 = tail call i16** @__ctype_b_loc() #16, !dbg !741
  %23 = load i16*, i16** %22, align 8, !dbg !741, !tbaa !614
  %24 = load i8*, i8** @optarg, align 8, !dbg !741, !tbaa !614
  %25 = load i8, i8* %24, align 1, !dbg !741, !tbaa !742
  %26 = zext i8 %25 to i64, !dbg !741
  %27 = getelementptr inbounds i16, i16* %23, i64 %26, !dbg !741
  %28 = load i16, i16* %27, align 2, !dbg !741, !tbaa !743
  %29 = and i16 %28, 8192, !dbg !741
  %30 = icmp eq i16 %29, 0, !dbg !745
  br i1 %30, label %42, label %31, !dbg !745

; <label>:31:                                     ; preds = %21
  br label %32, !dbg !746

; <label>:32:                                     ; preds = %31, %32
  %33 = phi i8* [ %34, %32 ], [ %24, %31 ]
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !746
  store i8* %34, i8** @optarg, align 8, !dbg !746, !tbaa !614
  %35 = load i16*, i16** %22, align 8, !dbg !741, !tbaa !614
  %36 = load i8, i8* %34, align 1, !dbg !741, !tbaa !742
  %37 = zext i8 %36 to i64, !dbg !741
  %38 = getelementptr inbounds i16, i16* %35, i64 %37, !dbg !741
  %39 = load i16, i16* %38, align 2, !dbg !741, !tbaa !743
  %40 = and i16 %39, 8192, !dbg !741
  %41 = icmp eq i16 %40, 0, !dbg !745
  br i1 %41, label %42, label %32, !dbg !745, !llvm.loop !747

; <label>:42:                                     ; preds = %32, %21
  %43 = phi i16* [ %23, %21 ], [ %35, %32 ]
  %44 = phi i8* [ %24, %21 ], [ %34, %32 ]
  %45 = phi i8 [ %25, %21 ], [ %36, %32 ]
  %46 = sext i8 %45 to i32, !dbg !748
  switch i32 %46, label %55 [
    i32 60, label %50
    i32 62, label %47
    i32 47, label %48
    i32 37, label %49
  ], !dbg !749

; <label>:47:                                     ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !662, metadata !607), !dbg !720
  br label %50, !dbg !750

; <label>:48:                                     ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !662, metadata !607), !dbg !720
  br label %50, !dbg !752

; <label>:49:                                     ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !662, metadata !607), !dbg !720
  br label %50, !dbg !753

; <label>:50:                                     ; preds = %42, %47, %48, %49
  %51 = phi i32 [ 5, %49 ], [ 4, %48 ], [ 2, %47 ], [ 3, %42 ]
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !662, metadata !607), !dbg !720
  %52 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %52, i8** @optarg, align 8, !tbaa !614
  %53 = load i16*, i16** %22, align 8, !dbg !754, !tbaa !614
  %54 = load i8, i8* %52, align 1, !dbg !754, !tbaa !742
  br label %55, !dbg !755

; <label>:55:                                     ; preds = %50, %42
  %56 = phi i8 [ %45, %42 ], [ %54, %50 ], !dbg !754
  %57 = phi i8* [ %44, %42 ], [ %52, %50 ], !dbg !754
  %58 = phi i16* [ %43, %42 ], [ %53, %50 ], !dbg !754
  %59 = phi i32 [ %11, %42 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !662, metadata !607), !dbg !720
  %60 = zext i8 %56 to i64, !dbg !754
  %61 = getelementptr inbounds i16, i16* %58, i64 %60, !dbg !754
  %62 = load i16, i16* %61, align 2, !dbg !754, !tbaa !743
  %63 = and i16 %62, 8192, !dbg !754
  %64 = icmp eq i16 %63, 0, !dbg !755
  br i1 %64, label %76, label %65, !dbg !755

; <label>:65:                                     ; preds = %55
  br label %66, !dbg !756

; <label>:66:                                     ; preds = %65, %66
  %67 = phi i8* [ %68, %66 ], [ %57, %65 ]
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !756
  store i8* %68, i8** @optarg, align 8, !dbg !756, !tbaa !614
  %69 = load i16*, i16** %22, align 8, !dbg !754, !tbaa !614
  %70 = load i8, i8* %68, align 1, !dbg !754, !tbaa !742
  %71 = zext i8 %70 to i64, !dbg !754
  %72 = getelementptr inbounds i16, i16* %69, i64 %71, !dbg !754
  %73 = load i16, i16* %72, align 2, !dbg !754, !tbaa !743
  %74 = and i16 %73, 8192, !dbg !754
  %75 = icmp eq i16 %74, 0, !dbg !755
  br i1 %75, label %76, label %66, !dbg !755, !llvm.loop !757

; <label>:76:                                     ; preds = %66, %55
  %77 = phi i8* [ %57, %55 ], [ %68, %66 ]
  %78 = phi i8 [ %56, %55 ], [ %70, %66 ]
  switch i8 %78, label %83 [
    i8 43, label %79
    i8 45, label %79
  ], !dbg !758

; <label>:79:                                     ; preds = %76, %76
  %80 = icmp eq i32 %59, 0, !dbg !760
  br i1 %80, label %83, label %81, !dbg !763

; <label>:81:                                     ; preds = %79
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !764
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #10, !dbg !766
  tail call void @usage(i32 1) #17, !dbg !767
  unreachable, !dbg !767

; <label>:83:                                     ; preds = %79, %76
  %84 = phi i32 [ %59, %76 ], [ 1, %79 ]
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !662, metadata !607), !dbg !720
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !768
  %86 = tail call i64 @xdectoimax(i8* %77, i64 -9223372036854775808, i64 9223372036854775807, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %85, i32 0) #10, !dbg !769
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !660, metadata !607), !dbg !730
  %87 = or i32 %84, 1, !dbg !770
  %88 = icmp eq i32 %87, 5, !dbg !770
  %89 = icmp eq i64 %86, 0, !dbg !772
  %90 = and i1 %88, %89, !dbg !770
  br i1 %90, label %91, label %10, !dbg !770, !llvm.loop !739

; <label>:91:                                     ; preds = %83
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !773
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %92) #10, !dbg !773
  unreachable, !dbg !773

; <label>:93:                                     ; preds = %14
  tail call void @usage(i32 0) #17, !dbg !774
  unreachable, !dbg !774

; <label>:94:                                     ; preds = %14
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !775, !tbaa !614
  %96 = load i8*, i8** @Version, align 8, !dbg !775, !tbaa !614
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* null) #10, !dbg !775
  tail call void @exit(i32 0) #15, !dbg !775
  unreachable, !dbg !775

; <label>:97:                                     ; preds = %14
  tail call void @usage(i32 1) #17, !dbg !776
  unreachable, !dbg !776

; <label>:98:                                     ; preds = %14
  %99 = load i32, i32* @optind, align 4, !dbg !777, !tbaa !778
  %100 = sext i32 %99 to i64, !dbg !780
  %101 = getelementptr inbounds i8*, i8** %1, i64 %100, !dbg !780
  tail call void @llvm.dbg.value(metadata i8** %101, i64 0, metadata !657, metadata !607), !dbg !716
  %102 = load i8*, i8** @ref_file, align 8, !dbg !781, !tbaa !614
  %103 = icmp eq i8* %102, null, !dbg !781
  %104 = icmp eq i8 %13, 0, !dbg !783
  %105 = and i1 %104, %103, !dbg !784
  br i1 %105, label %106, label %110, !dbg !784

; <label>:106:                                    ; preds = %98
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !785
  %108 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !787
  %109 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !788
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %107, i8* %108, i8* %109) #10, !dbg !789
  tail call void @usage(i32 1) #17, !dbg !790
  unreachable, !dbg !790

; <label>:110:                                    ; preds = %98
  %111 = icmp ne i32 %11, 0, !dbg !791
  %112 = or i1 %111, %104, !dbg !793
  %113 = or i1 %112, %103, !dbg !794
  br i1 %113, label %118, label %114, !dbg !794

; <label>:114:                                    ; preds = %110
  %115 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !795
  %116 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !797
  %117 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !798
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %115, i8* %116, i8* %117) #10, !dbg !799
  tail call void @usage(i32 1) #17, !dbg !800
  unreachable, !dbg !800

; <label>:118:                                    ; preds = %110
  %119 = load i1, i1* @block_mode, align 1
  %120 = and i1 %104, %119, !dbg !801
  br i1 %120, label %121, label %125, !dbg !801

; <label>:121:                                    ; preds = %118
  %122 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !803
  %123 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !805
  %124 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !806
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %122, i8* %123, i8* %124) #10, !dbg !807
  tail call void @usage(i32 1) #17, !dbg !808
  unreachable, !dbg !808

; <label>:125:                                    ; preds = %118
  %126 = icmp slt i32 %99, %0, !dbg !809
  br i1 %126, label %129, label %127, !dbg !811

; <label>:127:                                    ; preds = %125
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !812
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128) #10, !dbg !814
  tail call void @usage(i32 1) #17, !dbg !815
  unreachable, !dbg !815

; <label>:129:                                    ; preds = %125
  br i1 %103, label %170, label %130, !dbg !816

; <label>:130:                                    ; preds = %129
  %131 = bitcast %struct.stat* %4 to i8*, !dbg !817
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %131) #10, !dbg !817
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !707, metadata !607), !dbg !818
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !668, metadata !607), !dbg !819
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !820, metadata !607) #10, !dbg !828
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !827, metadata !607) #10, !dbg !828
  %132 = call i32 @__xstat(i32 1, i8* nonnull %102, %struct.stat* nonnull %4) #10, !dbg !831
  %133 = icmp eq i32 %132, 0, !dbg !832
  br i1 %133, label %140, label %134, !dbg !833

; <label>:134:                                    ; preds = %130
  %135 = tail call i32* @__errno_location() #16, !dbg !834
  %136 = load i32, i32* %135, align 4, !dbg !834, !tbaa !778
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !834
  %138 = load i8*, i8** @ref_file, align 8, !dbg !834, !tbaa !614
  %139 = call i8* @quotearg_style(i32 4, i8* %138) #10, !dbg !834
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %136, i8* %137, i8* %139) #10, !dbg !834
  unreachable, !dbg !834

; <label>:140:                                    ; preds = %130
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !668, metadata !607), !dbg !819
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !835, metadata !607), !dbg !842
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !844
  %142 = load i32, i32* %141, align 8, !dbg !844, !tbaa !845
  %143 = trunc i32 %142 to i16, !dbg !849
  %144 = and i16 %143, -4096, !dbg !849
  switch i16 %144, label %145 [
    i16 -32768, label %156
    i16 -24576, label %156
  ], !dbg !849

; <label>:145:                                    ; preds = %140
  %146 = load i8*, i8** @ref_file, align 8, !dbg !850, !tbaa !614
  %147 = call i32 (i8*, i32, ...) @open(i8* %146, i32 0) #10, !dbg !851
  call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !708, metadata !607), !dbg !852
  %148 = icmp sgt i32 %147, -1, !dbg !853
  br i1 %148, label %149, label %160, !dbg !854

; <label>:149:                                    ; preds = %145
  %150 = call i64 @lseek(i32 %147, i64 0, i32 2) #10, !dbg !855
  call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !711, metadata !607), !dbg !856
  %151 = tail call i32* @__errno_location() #16, !dbg !857
  %152 = load i32, i32* %151, align 4, !dbg !857, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %152, i64 0, metadata !714, metadata !607), !dbg !858
  %153 = call i32 @close(i32 %147) #10, !dbg !859
  %154 = icmp sgt i64 %150, -1, !dbg !860
  br i1 %154, label %166, label %155, !dbg !862

; <label>:155:                                    ; preds = %149
  store i32 %152, i32* %151, align 4, !dbg !863, !tbaa !778
  br label %160

; <label>:156:                                    ; preds = %140, %140
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !865
  %158 = load i64, i64* %157, align 8, !dbg !865, !tbaa !866
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !707, metadata !607), !dbg !818
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !707, metadata !607), !dbg !818
  %159 = icmp slt i64 %158, 0, !dbg !867
  br i1 %159, label %160, label %166, !dbg !869

; <label>:160:                                    ; preds = %155, %145, %156
  %161 = tail call i32* @__errno_location() #16, !dbg !870
  %162 = load i32, i32* %161, align 4, !dbg !870, !tbaa !778
  %163 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !870
  %164 = load i8*, i8** @ref_file, align 8, !dbg !870, !tbaa !614
  %165 = call i8* @quotearg_style(i32 4, i8* %164) #10, !dbg !870
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %162, i8* %163, i8* %165) #10, !dbg !870
  unreachable, !dbg !870

; <label>:166:                                    ; preds = %149, %156
  %167 = phi i64 [ %158, %156 ], [ %150, %149 ]
  %168 = select i1 %104, i64 -1, i64 %167, !dbg !871
  %169 = select i1 %104, i64 %167, i64 %12, !dbg !871
  call void @llvm.dbg.value(metadata i64 %169, i64 0, metadata !660, metadata !607), !dbg !730
  call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !661, metadata !607), !dbg !719
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %131) #10, !dbg !873
  br label %170, !dbg !874

; <label>:170:                                    ; preds = %129, %166
  %171 = phi i64 [ %168, %166 ], [ -1, %129 ]
  %172 = phi i64 [ %169, %166 ], [ %12, %129 ]
  call void @llvm.dbg.value(metadata i64 %172, i64 0, metadata !660, metadata !607), !dbg !730
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !661, metadata !607), !dbg !719
  %173 = load i1, i1* @no_create, align 1
  %174 = select i1 %173, i32 2049, i32 2113, !dbg !875
  call void @llvm.dbg.value(metadata i32 %174, i64 0, metadata !666, metadata !607), !dbg !876
  call void @llvm.dbg.value(metadata i8** %101, i64 0, metadata !657, metadata !607), !dbg !716
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !659, metadata !607), !dbg !718
  call void @llvm.dbg.value(metadata i8** %101, i64 0, metadata !657, metadata !877), !dbg !716
  %175 = load i8*, i8** %101, align 8, !dbg !878, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %175, i64 0, metadata !667, metadata !607), !dbg !879
  %176 = icmp eq i8* %175, null, !dbg !880
  br i1 %176, label %307, label %177, !dbg !881

; <label>:177:                                    ; preds = %170
  %178 = bitcast %struct.stat* %3 to i8*
  %179 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 9
  %180 = icmp eq i32 %11, 0
  %181 = icmp sgt i64 %171, -1
  %182 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  %184 = icmp slt i64 %171, 0
  %185 = and i1 %111, %184
  br label %186, !dbg !881

; <label>:186:                                    ; preds = %177, %203
  %187 = phi i8* [ %175, %177 ], [ %205, %203 ]
  %188 = phi i8** [ %101, %177 ], [ %190, %203 ]
  %189 = phi i8 [ 0, %177 ], [ %204, %203 ]
  %190 = getelementptr inbounds i8*, i8** %188, i64 1, !dbg !882
  call void @llvm.dbg.value(metadata i8 %189, i64 0, metadata !659, metadata !607), !dbg !718
  %191 = call i32 (i8*, i32, ...) @open(i8* nonnull %187, i32 %174, i32 438) #10, !dbg !883
  call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !665, metadata !607), !dbg !721
  %192 = icmp eq i32 %191, -1, !dbg !886
  br i1 %192, label %193, label %207, !dbg !887

; <label>:193:                                    ; preds = %186
  %194 = load i1, i1* @no_create, align 1
  %195 = tail call i32* @__errno_location() #16, !dbg !888
  br i1 %194, label %196, label %199, !dbg !891

; <label>:196:                                    ; preds = %193
  %197 = load i32, i32* %195, align 4, !dbg !888, !tbaa !778
  %198 = icmp eq i32 %197, 2, !dbg !892
  br i1 %198, label %203, label %199, !dbg !893

; <label>:199:                                    ; preds = %193, %196
  %200 = load i32, i32* %195, align 4, !dbg !894, !tbaa !778
  %201 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !896
  %202 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !897
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %200, i8* %201, i8* %202) #10, !dbg !898
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !659, metadata !607), !dbg !718
  br label %203, !dbg !899

; <label>:203:                                    ; preds = %302, %296, %196, %199
  %204 = phi i8 [ %189, %196 ], [ 1, %199 ], [ 1, %302 ], [ %299, %296 ]
  call void @llvm.dbg.value(metadata i8** %190, i64 0, metadata !657, metadata !607), !dbg !716
  call void @llvm.dbg.value(metadata i8 %204, i64 0, metadata !659, metadata !607), !dbg !718
  call void @llvm.dbg.value(metadata i8** %190, i64 0, metadata !657, metadata !877), !dbg !716
  %205 = load i8*, i8** %190, align 8, !dbg !878, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %205, i64 0, metadata !667, metadata !607), !dbg !879
  %206 = icmp eq i8* %205, null, !dbg !880
  br i1 %206, label %307, label %186, !dbg !881, !llvm.loop !900

; <label>:207:                                    ; preds = %186
  call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !902, metadata !607) #10, !dbg !930
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !907, metadata !607) #10, !dbg !934
  call void @llvm.dbg.value(metadata i64 %172, i64 0, metadata !908, metadata !607) #10, !dbg !935
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !909, metadata !607) #10, !dbg !936
  call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !910, metadata !607) #10, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %178) #10, !dbg !938
  %208 = load i1, i1* @block_mode, align 1
  %209 = or i1 %208, %185, !dbg !939
  br i1 %209, label %210, label %236, !dbg !939

; <label>:210:                                    ; preds = %207
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !911, metadata !607) #10, !dbg !941
  call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !942, metadata !607) #10, !dbg !948
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !947, metadata !607) #10, !dbg !948
  %211 = call i32 @__fxstat(i32 1, i32 %191, %struct.stat* nonnull %3) #10, !dbg !950
  %212 = icmp eq i32 %211, 0, !dbg !951
  br i1 %212, label %218, label %213, !dbg !952

; <label>:213:                                    ; preds = %210
  %214 = tail call i32* @__errno_location() #16, !dbg !953
  %215 = load i32, i32* %214, align 4, !dbg !953, !tbaa !778
  %216 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i32 5) #10, !dbg !955
  %217 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !956
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %215, i8* %216, i8* %217) #10, !dbg !957
  br label %296, !dbg !958

; <label>:218:                                    ; preds = %210
  %219 = load i1, i1* @block_mode, align 1
  br i1 %219, label %220, label %236, !dbg !959

; <label>:220:                                    ; preds = %218
  %221 = load i64, i64* %179, align 8, !dbg !960, !tbaa !961
  %222 = icmp sgt i64 %221, 0, !dbg !960
  %223 = icmp ult i64 %221, 2305843009213693953, !dbg !960
  %224 = and i1 %222, %223, !dbg !960
  %225 = select i1 %224, i64 %221, i64 512, !dbg !960
  call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !913, metadata !607) #10, !dbg !962
  %226 = sdiv i64 -9223372036854775808, %225, !dbg !963
  %227 = icmp sgt i64 %226, %172, !dbg !965
  br i1 %227, label %233, label %228, !dbg !966

; <label>:228:                                    ; preds = %220
  %229 = sdiv i64 9223372036854775807, %225, !dbg !967
  %230 = icmp slt i64 %229, %172, !dbg !968
  br i1 %230, label %233, label %231, !dbg !969

; <label>:231:                                    ; preds = %228
  %232 = mul nsw i64 %225, %172, !dbg !970
  call void @llvm.dbg.value(metadata i64 %232, i64 0, metadata !908, metadata !607) #10, !dbg !935
  call void @llvm.dbg.value(metadata i64 %172, i64 0, metadata !908, metadata !607) #10, !dbg !935
  br label %236

; <label>:233:                                    ; preds = %228, %220
  %234 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i64 0, i64 0), i32 5) #10, !dbg !971
  %235 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !973
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %234, i64 %172, i64 %225, i8* %235) #10, !dbg !974
  call void @llvm.dbg.value(metadata i64 %172, i64 0, metadata !908, metadata !607) #10, !dbg !935
  br label %296

; <label>:236:                                    ; preds = %207, %231, %218
  %237 = phi i64 [ %172, %218 ], [ %232, %231 ], [ %172, %207 ]
  call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !908, metadata !607) #10, !dbg !935
  br i1 %180, label %285, label %238, !dbg !975

; <label>:238:                                    ; preds = %236
  br i1 %181, label %257, label %239, !dbg !976

; <label>:239:                                    ; preds = %238
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !911, metadata !607) #10, !dbg !941
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !835, metadata !607) #10, !dbg !977
  %240 = load i32, i32* %182, align 8, !dbg !980, !tbaa !845
  %241 = trunc i32 %240 to i16, !dbg !981
  %242 = and i16 %241, -4096, !dbg !981
  switch i16 %242, label %249 [
    i16 -32768, label %243
    i16 -24576, label %243
  ], !dbg !981

; <label>:243:                                    ; preds = %239, %239
  %244 = load i64, i64* %183, align 8, !dbg !982, !tbaa !866
  call void @llvm.dbg.value(metadata i64 %244, i64 0, metadata !920, metadata !607) #10, !dbg !984
  %245 = icmp slt i64 %244, 0, !dbg !985
  br i1 %245, label %246, label %257, !dbg !987

; <label>:246:                                    ; preds = %243
  %247 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i64 0, i64 0), i32 5) #10, !dbg !988
  %248 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !990
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %247, i8* %248) #10, !dbg !991
  br label %296, !dbg !992

; <label>:249:                                    ; preds = %239
  %250 = call i64 @lseek(i32 %191, i64 0, i32 2) #10, !dbg !993
  call void @llvm.dbg.value(metadata i64 %250, i64 0, metadata !920, metadata !607) #10, !dbg !984
  %251 = icmp slt i64 %250, 0, !dbg !995
  br i1 %251, label %252, label %257, !dbg !997

; <label>:252:                                    ; preds = %249
  %253 = tail call i32* @__errno_location() #16, !dbg !998
  %254 = load i32, i32* %253, align 4, !dbg !998, !tbaa !778
  %255 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1000
  %256 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1001
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %254, i8* %255, i8* %256) #10, !dbg !1002
  br label %296, !dbg !1003

; <label>:257:                                    ; preds = %249, %243, %238
  %258 = phi i64 [ %171, %238 ], [ %250, %249 ], [ %244, %243 ]
  call void @llvm.dbg.value(metadata i64 %258, i64 0, metadata !917, metadata !607) #10, !dbg !1004
  switch i32 %11, label %277 [
    i32 2, label %259
    i32 3, label %262
    i32 4, label %265
    i32 5, label %268
  ], !dbg !1005

; <label>:259:                                    ; preds = %257
  %260 = icmp ugt i64 %258, %237, !dbg !1006
  %261 = select i1 %260, i64 %258, i64 %237, !dbg !1006
  call void @llvm.dbg.value(metadata i64 %261, i64 0, metadata !912, metadata !607) #10, !dbg !1007
  br label %285, !dbg !1008

; <label>:262:                                    ; preds = %257
  %263 = icmp ult i64 %258, %237, !dbg !1009
  %264 = select i1 %263, i64 %258, i64 %237, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %264, i64 0, metadata !912, metadata !607) #10, !dbg !1007
  br label %285, !dbg !1010

; <label>:265:                                    ; preds = %257
  %266 = urem i64 %258, %237, !dbg !1011
  %267 = sub i64 %258, %266, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %267, i64 0, metadata !912, metadata !607) #10, !dbg !1007
  br label %285, !dbg !1012

; <label>:268:                                    ; preds = %257
  %269 = add i64 %237, -1, !dbg !1013
  %270 = add i64 %269, %258, !dbg !1014
  %271 = urem i64 %270, %237, !dbg !1015
  %272 = sub i64 %270, %271, !dbg !1015
  call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !923, metadata !607) #10, !dbg !1016
  %273 = icmp slt i64 %272, 0, !dbg !1017
  br i1 %273, label %274, label %285, !dbg !1019

; <label>:274:                                    ; preds = %268
  %275 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1020
  %276 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1022
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %275, i8* %276) #10, !dbg !1023
  call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !912, metadata !607) #10, !dbg !1007
  br label %296

; <label>:277:                                    ; preds = %257
  %278 = sub nsw i64 9223372036854775807, %258, !dbg !1024
  %279 = icmp sgt i64 %237, %278, !dbg !1027
  br i1 %279, label %280, label %283, !dbg !1028

; <label>:280:                                    ; preds = %277
  %281 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !1029
  %282 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1031
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %281, i8* %282) #10, !dbg !1032
  br label %296, !dbg !1033

; <label>:283:                                    ; preds = %277
  %284 = add i64 %258, %237, !dbg !1034
  call void @llvm.dbg.value(metadata i64 %284, i64 0, metadata !912, metadata !607) #10, !dbg !1007
  br label %285

; <label>:285:                                    ; preds = %283, %268, %265, %262, %259, %236
  %286 = phi i64 [ %237, %236 ], [ %284, %283 ], [ %267, %265 ], [ %264, %262 ], [ %261, %259 ], [ %272, %268 ]
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !912, metadata !607) #10, !dbg !1007
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !607) #10, !dbg !1007
  %287 = icmp sgt i64 %286, 0, !dbg !1035
  %288 = select i1 %287, i64 %286, i64 0, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %288, i64 0, metadata !912, metadata !607) #10, !dbg !1007
  %289 = call i32 @ftruncate(i32 %191, i64 %288) #10, !dbg !1036
  %290 = icmp eq i32 %289, -1, !dbg !1038
  br i1 %290, label %291, label %296, !dbg !1039

; <label>:291:                                    ; preds = %285
  %292 = tail call i32* @__errno_location() #16, !dbg !1040
  %293 = load i32, i32* %292, align 4, !dbg !1040, !tbaa !778
  %294 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i32 5) #10, !dbg !1042
  %295 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1043
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %293, i8* %294, i8* %295, i64 %288) #10, !dbg !1044
  br label %296, !dbg !1045

; <label>:296:                                    ; preds = %213, %233, %246, %252, %274, %280, %285, %291
  %297 = phi i8 [ 1, %213 ], [ 1, %291 ], [ 1, %233 ], [ 0, %285 ], [ 1, %274 ], [ 1, %246 ], [ 1, %252 ], [ 1, %280 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %178) #10, !dbg !1046
  %298 = and i8 %189, 1, !dbg !1047
  %299 = or i8 %297, %298, !dbg !1047
  call void @llvm.dbg.value(metadata i8 %299, i64 0, metadata !659, metadata !607), !dbg !718
  %300 = call i32 @close(i32 %191) #10, !dbg !1048
  %301 = icmp eq i32 %300, 0, !dbg !1050
  br i1 %301, label %203, label %302, !dbg !1051

; <label>:302:                                    ; preds = %296
  %303 = tail call i32* @__errno_location() #16, !dbg !1052
  %304 = load i32, i32* %303, align 4, !dbg !1052, !tbaa !778
  %305 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !1054
  %306 = call i8* @quotearg_style(i32 4, i8* nonnull %187) #10, !dbg !1055
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %304, i8* %305, i8* %306) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !659, metadata !607), !dbg !718
  br label %203, !dbg !1057

; <label>:307:                                    ; preds = %203, %170
  %308 = phi i8 [ 0, %170 ], [ %204, %203 ]
  %309 = and i8 %308, 1, !dbg !1058
  %310 = zext i8 %309 to i32, !dbg !1058
  ret i32 %310, !dbg !1059
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1060 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1062, metadata !607), !dbg !1063
  store i8* %0, i8** @file_name, align 8, !dbg !1064, !tbaa !614
  ret void, !dbg !1065
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1066 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1070, metadata !607), !dbg !1071
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1072, !tbaa !1073
  ret void, !dbg !1075
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1076 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1081, !tbaa !614
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1082
  %3 = icmp eq i32 %2, 0, !dbg !1083
  br i1 %3, label %21, label %4, !dbg !1084

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1085, !tbaa !1073, !range !1086
  %6 = icmp eq i8 %5, 0, !dbg !1085
  %7 = tail call i32* @__errno_location() #16, !dbg !1087
  br i1 %6, label %11, label %8, !dbg !1089

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1090, !tbaa !778
  %10 = icmp eq i32 %9, 32, !dbg !1091
  br i1 %10, label %21, label %11, !dbg !1092

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !1093
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1078, metadata !607), !dbg !1094
  %13 = load i8*, i8** @file_name, align 8, !dbg !1095, !tbaa !614
  %14 = icmp eq i8* %13, null, !dbg !1095
  %15 = load i32, i32* %7, align 4, !tbaa !778
  br i1 %14, label %18, label %16, !dbg !1096

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1097
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1098
  br label %19, !dbg !1098

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.38, i64 0, i64 0), i8* %12) #10, !dbg !1099
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1100, !tbaa !778
  tail call void @_exit(i32 %20) #15, !dbg !1101
  unreachable, !dbg !1101

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1102, !tbaa !614
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1104
  %24 = icmp eq i32 %23, 0, !dbg !1105
  br i1 %24, label %27, label %25, !dbg !1106

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1107, !tbaa !778
  tail call void @_exit(i32 %26) #15, !dbg !1108
  unreachable, !dbg !1108

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1109
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1110 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1112, metadata !607), !dbg !1115
  %2 = icmp eq i8* %0, null, !dbg !1116
  br i1 %2, label %3, label %6, !dbg !1118

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1119, !tbaa !614
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1121
  tail call void @abort() #15, !dbg !1122
  unreachable, !dbg !1122

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1123
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1113, metadata !607), !dbg !1124
  %8 = icmp eq i8* %7, null, !dbg !1125
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1126
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1127
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1114, metadata !607), !dbg !1128
  %11 = ptrtoint i8* %10 to i64, !dbg !1129
  %12 = ptrtoint i8* %0 to i64, !dbg !1129
  %13 = sub i64 %11, %12, !dbg !1129
  %14 = icmp sgt i64 %13, 6, !dbg !1131
  br i1 %14, label %15, label %24, !dbg !1132

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1133
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.61, i64 0, i64 0), i64 7) #14, !dbg !1134
  %18 = icmp eq i32 %17, 0, !dbg !1135
  br i1 %18, label %19, label %24, !dbg !1136

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1112, metadata !607), !dbg !1115
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i64 3) #14, !dbg !1137
  %21 = icmp eq i32 %20, 0, !dbg !1140
  br i1 %21, label %22, label %24, !dbg !1141

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1142
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1112, metadata !607), !dbg !1115
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1144, !tbaa !614
  br label %24, !dbg !1145

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1112, metadata !607), !dbg !1115
  store i8* %25, i8** @program_name, align 8, !dbg !1146, !tbaa !614
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1147, !tbaa !614
  ret void, !dbg !1148
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1149 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1154, metadata !607), !dbg !1157
  %2 = tail call i32* @__errno_location() #16, !dbg !1158
  %3 = load i32, i32* %2, align 4, !dbg !1158, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1155, metadata !607), !dbg !1159
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1160
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1160
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1160
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1161
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1156, metadata !607), !dbg !1162
  store i32 %3, i32* %2, align 4, !dbg !1163, !tbaa !778
  ret %struct.quoting_options* %8, !dbg !1164
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1165 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1171, metadata !607), !dbg !1172
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1173
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1173
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1174
  %5 = load i32, i32* %4, align 8, !dbg !1174, !tbaa !1175
  ret i32 %5, !dbg !1177
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1178 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1182, metadata !607), !dbg !1184
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1183, metadata !607), !dbg !1185
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1186
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1186
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1187
  store i32 %1, i32* %5, align 8, !dbg !1188, !tbaa !1175
  ret void, !dbg !1189
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1190 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1194, metadata !607), !dbg !1202
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1195, metadata !607), !dbg !1203
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1196, metadata !607), !dbg !1204
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1197, metadata !607), !dbg !1205
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1206
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1206
  %6 = lshr i8 %1, 5, !dbg !1207
  %7 = zext i8 %6 to i64, !dbg !1207
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1208
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1198, metadata !607), !dbg !1209
  %9 = and i8 %1, 31, !dbg !1210
  %10 = zext i8 %9 to i32, !dbg !1211
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1200, metadata !607), !dbg !1212
  %11 = load i32, i32* %8, align 4, !dbg !1213, !tbaa !778
  %12 = lshr i32 %11, %10, !dbg !1214
  %13 = and i32 %12, 1, !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1201, metadata !607), !dbg !1216
  %14 = and i32 %2, 1, !dbg !1217
  %15 = xor i32 %13, %14, !dbg !1218
  %16 = shl i32 %15, %10, !dbg !1219
  %17 = xor i32 %16, %11, !dbg !1220
  store i32 %17, i32* %8, align 4, !dbg !1220, !tbaa !778
  ret i32 %13, !dbg !1221
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1222 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1226, metadata !607), !dbg !1229
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1227, metadata !607), !dbg !1230
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1226, metadata !607), !dbg !1229
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1233
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1226, metadata !607), !dbg !1229
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1234
  %6 = load i32, i32* %5, align 4, !dbg !1234, !tbaa !1235
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1228, metadata !607), !dbg !1236
  store i32 %1, i32* %5, align 4, !dbg !1237, !tbaa !1235
  ret i32 %6, !dbg !1238
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1239 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1243, metadata !607), !dbg !1246
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1244, metadata !607), !dbg !1247
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1245, metadata !607), !dbg !1248
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1249
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1243, metadata !607), !dbg !1246
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1243, metadata !607), !dbg !1246
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1252
  store i32 10, i32* %6, align 8, !dbg !1253, !tbaa !1175
  %7 = icmp ne i8* %1, null, !dbg !1254
  %8 = icmp ne i8* %2, null, !dbg !1256
  %9 = and i1 %7, %8, !dbg !1257
  br i1 %9, label %11, label %10, !dbg !1257

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1258
  unreachable, !dbg !1258

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1259
  store i8* %1, i8** %12, align 8, !dbg !1260, !tbaa !1261
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1262
  store i8* %2, i8** %13, align 8, !dbg !1263, !tbaa !1264
  ret void, !dbg !1265
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1266 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1270, metadata !607), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1271, metadata !607), !dbg !1279
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1272, metadata !607), !dbg !1280
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1273, metadata !607), !dbg !1281
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1274, metadata !607), !dbg !1282
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1283
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1275, metadata !607), !dbg !1284
  %8 = tail call i32* @__errno_location() #16, !dbg !1285
  %9 = load i32, i32* %8, align 4, !dbg !1285, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1276, metadata !607), !dbg !1286
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1287
  %11 = load i32, i32* %10, align 8, !dbg !1287, !tbaa !1175
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1288
  %13 = load i32, i32* %12, align 4, !dbg !1288, !tbaa !1235
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1289
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1290
  %16 = load i8*, i8** %15, align 8, !dbg !1290, !tbaa !1261
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1291
  %18 = load i8*, i8** %17, align 8, !dbg !1291, !tbaa !1264
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1292
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1277, metadata !607), !dbg !1293
  store i32 %9, i32* %8, align 4, !dbg !1294, !tbaa !778
  ret i64 %19, !dbg !1295
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1296 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1302, metadata !607), !dbg !1366
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1303, metadata !607), !dbg !1367
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1304, metadata !607), !dbg !1368
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1305, metadata !607), !dbg !1369
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1306, metadata !607), !dbg !1370
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1307, metadata !607), !dbg !1371
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1308, metadata !607), !dbg !1372
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1309, metadata !607), !dbg !1373
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1310, metadata !607), !dbg !1374
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1312, metadata !607), !dbg !1375
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1313, metadata !607), !dbg !1376
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1314, metadata !607), !dbg !1377
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1315, metadata !607), !dbg !1378
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1316, metadata !607), !dbg !1379
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1380
  %14 = icmp eq i64 %13, 1, !dbg !1381
  %15 = lshr i32 %5, 1, !dbg !1382
  %16 = trunc i32 %15 to i8, !dbg !1382
  %17 = and i8 %16, 1, !dbg !1382
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1318, metadata !607), !dbg !1382
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1319, metadata !607), !dbg !1383
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1320, metadata !607), !dbg !1384
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1321, metadata !607), !dbg !1385
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1386

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1321, metadata !607), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1320, metadata !607), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1318, metadata !607), !dbg !1382
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1305, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1316, metadata !607), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1315, metadata !607), !dbg !1378
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1314, metadata !607), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1313, metadata !607), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1310, metadata !607), !dbg !1374
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1309, metadata !607), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1306, metadata !607), !dbg !1370
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
  ], !dbg !1387

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1306, metadata !607), !dbg !1370
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1318, metadata !607), !dbg !1382
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1318, metadata !607), !dbg !1382
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1306, metadata !607), !dbg !1370
  br label %94, !dbg !1388

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1318, metadata !607), !dbg !1382
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1306, metadata !607), !dbg !1370
  %43 = and i8 %36, 1, !dbg !1390
  %44 = icmp eq i8 %43, 0, !dbg !1390
  br i1 %44, label %45, label %94, !dbg !1388

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1392
  br i1 %46, label %94, label %47, !dbg !1395

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1392, !tbaa !742
  br label %94, !dbg !1392

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), i32 %28), !dbg !1396
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1309, metadata !607), !dbg !1373
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), i32 %28), !dbg !1400
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1310, metadata !607), !dbg !1374
  br label %51, !dbg !1401

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1310, metadata !607), !dbg !1374
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1309, metadata !607), !dbg !1373
  %54 = and i8 %36, 1, !dbg !1402
  %55 = icmp eq i8 %54, 0, !dbg !1402
  br i1 %55, label %56, label %72, !dbg !1404

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1314, metadata !607), !dbg !1377
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1314, metadata !607), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1312, metadata !607), !dbg !1375
  %57 = load i8, i8* %52, align 1, !dbg !1405, !tbaa !742
  %58 = icmp eq i8 %57, 0, !dbg !1408
  br i1 %58, label %72, label %59, !dbg !1408

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1409

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1314, metadata !607), !dbg !1377
  %64 = icmp ult i64 %63, %40, !dbg !1409
  br i1 %64, label %65, label %67, !dbg !1412

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1409
  store i8 %61, i8* %66, align 1, !dbg !1409, !tbaa !742
  br label %67, !dbg !1409

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1312, metadata !607), !dbg !1375
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1314, metadata !607), !dbg !1377
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1314, metadata !607), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1312, metadata !607), !dbg !1375
  %70 = load i8, i8* %69, align 1, !dbg !1405, !tbaa !742
  %71 = icmp eq i8 %70, 0, !dbg !1408
  br i1 %71, label %72, label %60, !dbg !1408, !llvm.loop !1414

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1316, metadata !607), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1314, metadata !607), !dbg !1377
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1315, metadata !607), !dbg !1378
  br label %94, !dbg !1417

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1316, metadata !607), !dbg !1379
  br label %76, !dbg !1418

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1316, metadata !607), !dbg !1379
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1318, metadata !607), !dbg !1382
  br label %78, !dbg !1419

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1318, metadata !607), !dbg !1382
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1316, metadata !607), !dbg !1379
  %81 = and i8 %80, 1, !dbg !1420
  %82 = icmp eq i8 %81, 0, !dbg !1420
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1316, metadata !607), !dbg !1379
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1422
  br label %84, !dbg !1422

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1318, metadata !607), !dbg !1382
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1316, metadata !607), !dbg !1379
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1306, metadata !607), !dbg !1370
  %87 = and i8 %86, 1, !dbg !1423
  %88 = icmp eq i8 %87, 0, !dbg !1423
  br i1 %88, label %89, label %94, !dbg !1425

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1426
  br i1 %90, label %94, label %91, !dbg !1429

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1426, !tbaa !742
  br label %94, !dbg !1426

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1318, metadata !607), !dbg !1382
  br label %94, !dbg !1430

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1431
  unreachable, !dbg !1431

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1318, metadata !607), !dbg !1382
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1316, metadata !607), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1315, metadata !607), !dbg !1378
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1314, metadata !607), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1310, metadata !607), !dbg !1374
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1309, metadata !607), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1306, metadata !607), !dbg !1370
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1311, metadata !607), !dbg !1432
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
  br label %122, !dbg !1433

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1321, metadata !607), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1320, metadata !607), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1305, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1313, metadata !607), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1311, metadata !607), !dbg !1432
  %131 = icmp eq i64 %126, -1, !dbg !1434
  br i1 %131, label %134, label %132, !dbg !1435

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1436
  br i1 %133, label %590, label %138, !dbg !1437

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1438
  %136 = load i8, i8* %135, align 1, !dbg !1438, !tbaa !742
  %137 = icmp eq i8 %136, 0, !dbg !1439
  br i1 %137, label %590, label %138, !dbg !1437

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1327, metadata !607), !dbg !1440
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1328, metadata !607), !dbg !1441
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1329, metadata !607), !dbg !1442
  br i1 %108, label %139, label %154, !dbg !1443

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1445
  %141 = and i1 %109, %131, !dbg !1446
  br i1 %141, label %142, label %144, !dbg !1446

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1305, metadata !607), !dbg !1369
  br label %144, !dbg !1448

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1305, metadata !607), !dbg !1369
  %146 = icmp ugt i64 %140, %145, !dbg !1449
  br i1 %146, label %154, label %147, !dbg !1450

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1451
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1452
  %150 = icmp ne i32 %149, 0, !dbg !1453
  %151 = or i1 %150, %111, !dbg !1454
  %152 = xor i1 %150, true, !dbg !1454
  %153 = zext i1 %152 to i8, !dbg !1454
  br i1 %151, label %154, label %635, !dbg !1454

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1327, metadata !607), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1305, metadata !607), !dbg !1369
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1455
  %158 = load i8, i8* %157, align 1, !dbg !1455, !tbaa !742
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1322, metadata !607), !dbg !1456
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
  ], !dbg !1457

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1458

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1459

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1328, metadata !607), !dbg !1441
  %162 = and i8 %127, 1, !dbg !1463
  %163 = icmp eq i8 %162, 0, !dbg !1463
  %164 = and i1 %113, %163, !dbg !1463
  br i1 %164, label %165, label %181, !dbg !1463

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1465
  br i1 %166, label %167, label %169, !dbg !1469

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1465
  store i8 39, i8* %168, align 1, !dbg !1465, !tbaa !742
  br label %169, !dbg !1465

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1312, metadata !607), !dbg !1375
  %171 = icmp ult i64 %170, %130, !dbg !1470
  br i1 %171, label %172, label %174, !dbg !1473

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1470
  store i8 36, i8* %173, align 1, !dbg !1470, !tbaa !742
  br label %174, !dbg !1470

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1312, metadata !607), !dbg !1375
  %176 = icmp ult i64 %175, %130, !dbg !1474
  br i1 %176, label %177, label %179, !dbg !1477

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1474
  store i8 39, i8* %178, align 1, !dbg !1474, !tbaa !742
  br label %179, !dbg !1474

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1319, metadata !607), !dbg !1383
  br label %181, !dbg !1478

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1312, metadata !607), !dbg !1375
  %184 = icmp ult i64 %182, %130, !dbg !1479
  br i1 %184, label %185, label %187, !dbg !1482

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1479
  store i8 92, i8* %186, align 1, !dbg !1479, !tbaa !742
  br label %187, !dbg !1479

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1312, metadata !607), !dbg !1375
  br i1 %105, label %189, label %470, !dbg !1483

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1485
  %191 = icmp ult i64 %190, %155, !dbg !1486
  br i1 %191, label %192, label %470, !dbg !1487

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1488
  %194 = load i8, i8* %193, align 1, !dbg !1488, !tbaa !742
  %195 = add i8 %194, -48, !dbg !1489
  %196 = icmp ult i8 %195, 10, !dbg !1489
  br i1 %196, label %197, label %470, !dbg !1489

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1490
  br i1 %198, label %199, label %201, !dbg !1494

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1490
  store i8 48, i8* %200, align 1, !dbg !1490, !tbaa !742
  br label %201, !dbg !1490

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1312, metadata !607), !dbg !1375
  %203 = icmp ult i64 %202, %130, !dbg !1495
  br i1 %203, label %204, label %206, !dbg !1498

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1495
  store i8 48, i8* %205, align 1, !dbg !1495, !tbaa !742
  br label %206, !dbg !1495

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1312, metadata !607), !dbg !1375
  br label %470, !dbg !1499

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1500

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1501

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1502

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1504

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1506
  %214 = icmp ult i64 %213, %155, !dbg !1507
  br i1 %214, label %215, label %470, !dbg !1508

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1509
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1510
  %218 = load i8, i8* %217, align 1, !dbg !1510, !tbaa !742
  %219 = icmp eq i8 %218, 63, !dbg !1511
  br i1 %219, label %220, label %470, !dbg !1512

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1513
  %222 = load i8, i8* %221, align 1, !dbg !1513, !tbaa !742
  %223 = sext i8 %222 to i32, !dbg !1513
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
  ], !dbg !1514

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1515

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1322, metadata !607), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1311, metadata !607), !dbg !1432
  %226 = icmp ult i64 %124, %130, !dbg !1517
  br i1 %226, label %227, label %229, !dbg !1520

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1517
  store i8 63, i8* %228, align 1, !dbg !1517, !tbaa !742
  br label %229, !dbg !1517

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1312, metadata !607), !dbg !1375
  %231 = icmp ult i64 %230, %130, !dbg !1521
  br i1 %231, label %232, label %234, !dbg !1524

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1521
  store i8 34, i8* %233, align 1, !dbg !1521, !tbaa !742
  br label %234, !dbg !1521

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1312, metadata !607), !dbg !1375
  %236 = icmp ult i64 %235, %130, !dbg !1525
  br i1 %236, label %237, label %239, !dbg !1528

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1525
  store i8 34, i8* %238, align 1, !dbg !1525, !tbaa !742
  br label %239, !dbg !1525

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1312, metadata !607), !dbg !1375
  %241 = icmp ult i64 %240, %130, !dbg !1529
  br i1 %241, label %242, label %244, !dbg !1532

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1529
  store i8 63, i8* %243, align 1, !dbg !1529, !tbaa !742
  br label %244, !dbg !1529

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1312, metadata !607), !dbg !1375
  br label %470, !dbg !1533

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1326, metadata !607), !dbg !1534
  br label %256, !dbg !1535

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1326, metadata !607), !dbg !1534
  br label %256, !dbg !1536

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1326, metadata !607), !dbg !1534
  br label %254, !dbg !1537

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1326, metadata !607), !dbg !1534
  br label %254, !dbg !1538

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1326, metadata !607), !dbg !1534
  br label %256, !dbg !1539

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1326, metadata !607), !dbg !1534
  br i1 %113, label %252, label %253, !dbg !1540

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1541

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1544

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1326, metadata !607), !dbg !1534
  br i1 %117, label %256, label %635, !dbg !1546

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1326, metadata !607), !dbg !1534
  br i1 %104, label %497, label %470, !dbg !1548

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1549
  br i1 %259, label %260, label %265, !dbg !1551

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1552, !tbaa !742
  %262 = icmp ne i8 %261, 0, !dbg !1553
  %263 = icmp ne i64 %123, 0, !dbg !1554
  %264 = or i1 %263, %262, !dbg !1556
  br i1 %264, label %470, label %271, !dbg !1556

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1557
  %267 = icmp ne i64 %123, 0, !dbg !1554
  %268 = or i1 %267, %266, !dbg !1551
  br i1 %268, label %470, label %271, !dbg !1551

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1554
  br i1 %270, label %271, label %470, !dbg !1558

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1329, metadata !607), !dbg !1442
  br label %272, !dbg !1559

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1329, metadata !607), !dbg !1442
  br i1 %117, label %470, label %635, !dbg !1560

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1320, metadata !607), !dbg !1384
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1329, metadata !607), !dbg !1442
  br i1 %113, label %275, label %470, !dbg !1562

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1563

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1566
  %278 = icmp ne i64 %125, 0, !dbg !1568
  %279 = or i1 %278, %277, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1313, metadata !607), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1303, metadata !607), !dbg !1367
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1569
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1313, metadata !607), !dbg !1376
  %282 = icmp ult i64 %124, %281, !dbg !1570
  br i1 %282, label %283, label %285, !dbg !1573

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1570
  store i8 39, i8* %284, align 1, !dbg !1570, !tbaa !742
  br label %285, !dbg !1570

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1312, metadata !607), !dbg !1375
  %287 = icmp ult i64 %286, %281, !dbg !1574
  br i1 %287, label %288, label %290, !dbg !1577

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1574
  store i8 92, i8* %289, align 1, !dbg !1574, !tbaa !742
  br label %290, !dbg !1574

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1312, metadata !607), !dbg !1375
  %292 = icmp ult i64 %291, %281, !dbg !1578
  br i1 %292, label %293, label %295, !dbg !1581

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1578
  store i8 39, i8* %294, align 1, !dbg !1578, !tbaa !742
  br label %295, !dbg !1578

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1319, metadata !607), !dbg !1383
  br label %470, !dbg !1582

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1583

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1330, metadata !607), !dbg !1584
  %299 = tail call i16** @__ctype_b_loc() #16, !dbg !1585
  %300 = load i16*, i16** %299, align 8, !dbg !1585, !tbaa !614
  %301 = zext i8 %158 to i64, !dbg !1585
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1585
  %303 = load i16, i16* %302, align 2, !dbg !1585, !tbaa !743
  %304 = lshr i16 %303, 14, !dbg !1587
  %305 = trunc i16 %304 to i8, !dbg !1587
  %306 = and i8 %305, 1, !dbg !1587
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1333, metadata !607), !dbg !1588
  br label %362, !dbg !1589

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1590
  store i64 0, i64* %10, align 8, !dbg !1591
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1330, metadata !607), !dbg !1584
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1333, metadata !607), !dbg !1588
  %308 = icmp eq i64 %155, -1, !dbg !1592
  br i1 %308, label %309, label %311, !dbg !1594

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1305, metadata !607), !dbg !1369
  br label %311, !dbg !1596

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1305, metadata !607), !dbg !1369
  br label %313, !dbg !1597, !llvm.loop !1598

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1333, metadata !607), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1330, metadata !607), !dbg !1584
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1600
  %316 = add i64 %314, %123, !dbg !1601
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1602
  %318 = sub i64 %312, %316, !dbg !1603
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1334, metadata !607), !dbg !1604
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1352, metadata !607), !dbg !1605
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1355, metadata !607), !dbg !1607
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1608

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1333, metadata !607), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1330, metadata !607), !dbg !1584
  %321 = icmp ugt i64 %312, %316, !dbg !1609
  br i1 %321, label %322, label %347, !dbg !1611

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1612

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1330, metadata !607), !dbg !1584
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1612
  %327 = load i8, i8* %326, align 1, !dbg !1612, !tbaa !742
  %328 = icmp eq i8 %327, 0, !dbg !1611
  br i1 %328, label %347, label %329, !dbg !1613

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1330, metadata !607), !dbg !1584
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1330, metadata !607), !dbg !1584
  %331 = add i64 %330, %123, !dbg !1615
  %332 = icmp ult i64 %331, %312, !dbg !1609
  br i1 %332, label %323, label %347, !dbg !1611, !llvm.loop !1616

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1617
  %335 = and i1 %115, %334, !dbg !1620
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1356, metadata !607), !dbg !1621
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1356, metadata !607), !dbg !1621
  br i1 %335, label %336, label %350, !dbg !1620

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1622

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1356, metadata !607), !dbg !1621
  %339 = add i64 %338, %316, !dbg !1622
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1623
  %341 = load i8, i8* %340, align 1, !dbg !1623, !tbaa !742
  %342 = sext i8 %341 to i32, !dbg !1623
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1624

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1356, metadata !607), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1356, metadata !607), !dbg !1621
  %345 = icmp ult i64 %344, %319, !dbg !1617
  br i1 %345, label %337, label %350, !dbg !1626, !llvm.loop !1627

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1629

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1333, metadata !607), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1330, metadata !607), !dbg !1584
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1629
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1630, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1352, metadata !607), !dbg !1605
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1632
  %353 = icmp eq i32 %352, 0, !dbg !1632
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1333, metadata !607), !dbg !1588
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1633
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1333, metadata !607), !dbg !1588
  %355 = add i64 %319, %314, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1330, metadata !607), !dbg !1584
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1333, metadata !607), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1330, metadata !607), !dbg !1584
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1629
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1334, metadata !607), !dbg !1604
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1635
  %357 = icmp eq i32 %356, 0, !dbg !1636
  br i1 %357, label %313, label %358, !dbg !1637, !llvm.loop !1598

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1638
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1333, metadata !607), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1330, metadata !607), !dbg !1584
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1629
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1638
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1333, metadata !607), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1330, metadata !607), !dbg !1584
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1305, metadata !607), !dbg !1369
  %366 = and i8 %365, 1, !dbg !1639
  %367 = icmp ne i8 %366, 0, !dbg !1639
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1329, metadata !607), !dbg !1442
  %368 = icmp ult i64 %364, 2, !dbg !1640
  %369 = or i1 %367, %112, !dbg !1641
  %370 = and i1 %368, %369, !dbg !1642
  br i1 %370, label %470, label %371, !dbg !1642

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1363, metadata !607), !dbg !1644
  br label %373, !dbg !1645

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1328, metadata !607), !dbg !1441
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1327, metadata !607), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1322, metadata !607), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1311, metadata !607), !dbg !1432
  br i1 %369, label %426, label %380, !dbg !1646

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1651

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1328, metadata !607), !dbg !1441
  %382 = and i8 %376, 1, !dbg !1654
  %383 = icmp eq i8 %382, 0, !dbg !1654
  %384 = and i1 %113, %383, !dbg !1654
  br i1 %384, label %385, label %401, !dbg !1654

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1656
  br i1 %386, label %387, label %389, !dbg !1660

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1656
  store i8 39, i8* %388, align 1, !dbg !1656, !tbaa !742
  br label %389, !dbg !1656

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1312, metadata !607), !dbg !1375
  %391 = icmp ult i64 %390, %130, !dbg !1661
  br i1 %391, label %392, label %394, !dbg !1664

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1661
  store i8 36, i8* %393, align 1, !dbg !1661, !tbaa !742
  br label %394, !dbg !1661

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1312, metadata !607), !dbg !1375
  %396 = icmp ult i64 %395, %130, !dbg !1665
  br i1 %396, label %397, label %399, !dbg !1668

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1665
  store i8 39, i8* %398, align 1, !dbg !1665, !tbaa !742
  br label %399, !dbg !1665

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1319, metadata !607), !dbg !1383
  br label %401, !dbg !1669

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1312, metadata !607), !dbg !1375
  %404 = icmp ult i64 %402, %130, !dbg !1670
  br i1 %404, label %405, label %407, !dbg !1673

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1670
  store i8 92, i8* %406, align 1, !dbg !1670, !tbaa !742
  br label %407, !dbg !1670

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1312, metadata !607), !dbg !1375
  %409 = icmp ult i64 %408, %130, !dbg !1674
  br i1 %409, label %410, label %414, !dbg !1677

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1674
  %412 = or i8 %411, 48, !dbg !1674
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1674
  store i8 %412, i8* %413, align 1, !dbg !1674, !tbaa !742
  br label %414, !dbg !1674

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1312, metadata !607), !dbg !1375
  %416 = icmp ult i64 %415, %130, !dbg !1678
  br i1 %416, label %417, label %422, !dbg !1681

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1678
  %419 = and i8 %418, 7, !dbg !1678
  %420 = or i8 %419, 48, !dbg !1678
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1678
  store i8 %420, i8* %421, align 1, !dbg !1678, !tbaa !742
  br label %422, !dbg !1678

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1312, metadata !607), !dbg !1375
  %424 = and i8 %377, 7, !dbg !1682
  %425 = or i8 %424, 48, !dbg !1683
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1322, metadata !607), !dbg !1456
  br label %435, !dbg !1684

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1685
  %428 = icmp eq i8 %427, 0, !dbg !1685
  br i1 %428, label %435, label %429, !dbg !1687

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1688
  br i1 %430, label %431, label %433, !dbg !1692

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1688
  store i8 92, i8* %432, align 1, !dbg !1688, !tbaa !742
  br label %433, !dbg !1688

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1327, metadata !607), !dbg !1440
  br label %435, !dbg !1693

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1328, metadata !607), !dbg !1441
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1327, metadata !607), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1322, metadata !607), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1312, metadata !607), !dbg !1375
  %441 = add i64 %374, 1, !dbg !1694
  %442 = icmp ugt i64 %372, %441, !dbg !1696
  br i1 %442, label %443, label %535, !dbg !1697

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1698
  %445 = icmp ne i8 %444, 0, !dbg !1698
  %446 = and i8 %440, 1, !dbg !1698
  %447 = icmp eq i8 %446, 0, !dbg !1698
  %448 = and i1 %445, %447, !dbg !1698
  br i1 %448, label %449, label %460, !dbg !1698

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1701
  br i1 %450, label %451, label %453, !dbg !1705

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1701
  store i8 39, i8* %452, align 1, !dbg !1701, !tbaa !742
  br label %453, !dbg !1701

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1312, metadata !607), !dbg !1375
  %455 = icmp ult i64 %454, %130, !dbg !1706
  br i1 %455, label %456, label %458, !dbg !1709

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1706
  store i8 39, i8* %457, align 1, !dbg !1706, !tbaa !742
  br label %458, !dbg !1706

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1319, metadata !607), !dbg !1383
  br label %460, !dbg !1710

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1312, metadata !607), !dbg !1375
  %463 = icmp ult i64 %461, %130, !dbg !1711
  br i1 %463, label %464, label %466, !dbg !1714

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1711
  store i8 %438, i8* %465, align 1, !dbg !1711, !tbaa !742
  br label %466, !dbg !1711

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1311, metadata !607), !dbg !1432
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1715
  %469 = load i8, i8* %468, align 1, !dbg !1715, !tbaa !742
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1322, metadata !607), !dbg !1456
  br label %373, !dbg !1716, !llvm.loop !1717

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1329, metadata !607), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1328, metadata !607), !dbg !1441
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1327, metadata !607), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1322, metadata !607), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1320, metadata !607), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1305, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1313, metadata !607), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1311, metadata !607), !dbg !1432
  br i1 %106, label %482, label %481, !dbg !1720

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1722

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1723

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1724
  %485 = zext i8 %484 to i64, !dbg !1724
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1725
  %487 = load i32, i32* %486, align 4, !dbg !1725, !tbaa !778
  %488 = and i8 %477, 31, !dbg !1726
  %489 = zext i8 %488 to i32, !dbg !1727
  %490 = shl i32 1, %489, !dbg !1728
  %491 = and i32 %487, %490, !dbg !1728
  %492 = icmp eq i32 %491, 0, !dbg !1728
  %493 = icmp eq i8 %156, 0, !dbg !1729
  %494 = and i1 %493, %492, !dbg !1730
  br i1 %494, label %535, label %497, !dbg !1730

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1729
  br i1 %496, label %535, label %497, !dbg !1731

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1329, metadata !607), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1322, metadata !607), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1320, metadata !607), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1305, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1313, metadata !607), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1311, metadata !607), !dbg !1432
  br i1 %111, label %507, label %635, !dbg !1732

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1328, metadata !607), !dbg !1441
  %508 = and i8 %502, 1, !dbg !1734
  %509 = icmp eq i8 %508, 0, !dbg !1734
  %510 = and i1 %113, %509, !dbg !1734
  br i1 %510, label %511, label %527, !dbg !1734

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1736
  br i1 %512, label %513, label %515, !dbg !1740

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1736
  store i8 39, i8* %514, align 1, !dbg !1736, !tbaa !742
  br label %515, !dbg !1736

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1312, metadata !607), !dbg !1375
  %517 = icmp ult i64 %516, %506, !dbg !1741
  br i1 %517, label %518, label %520, !dbg !1744

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1741
  store i8 36, i8* %519, align 1, !dbg !1741, !tbaa !742
  br label %520, !dbg !1741

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1312, metadata !607), !dbg !1375
  %522 = icmp ult i64 %521, %506, !dbg !1745
  br i1 %522, label %523, label %525, !dbg !1748

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1745
  store i8 39, i8* %524, align 1, !dbg !1745, !tbaa !742
  br label %525, !dbg !1745

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1319, metadata !607), !dbg !1383
  br label %527, !dbg !1749

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1312, metadata !607), !dbg !1375
  %530 = icmp ult i64 %528, %506, !dbg !1750
  br i1 %530, label %531, label %533, !dbg !1753

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1750
  store i8 92, i8* %532, align 1, !dbg !1750, !tbaa !742
  br label %533, !dbg !1750

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1329, metadata !607), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1328, metadata !607), !dbg !1441
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1322, metadata !607), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1320, metadata !607), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1305, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1313, metadata !607), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1311, metadata !607), !dbg !1432
  br label %562, !dbg !1754

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1329, metadata !607), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1328, metadata !607), !dbg !1441
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1322, metadata !607), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1320, metadata !607), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1305, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1313, metadata !607), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1311, metadata !607), !dbg !1432
  %546 = and i8 %540, 1, !dbg !1754
  %547 = icmp ne i8 %546, 0, !dbg !1754
  %548 = and i8 %543, 1, !dbg !1754
  %549 = icmp eq i8 %548, 0, !dbg !1754
  %550 = and i1 %547, %549, !dbg !1754
  br i1 %550, label %551, label %562, !dbg !1754

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1757
  br i1 %552, label %553, label %555, !dbg !1761

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1757
  store i8 39, i8* %554, align 1, !dbg !1757, !tbaa !742
  br label %555, !dbg !1757

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1312, metadata !607), !dbg !1375
  %557 = icmp ult i64 %556, %545, !dbg !1762
  br i1 %557, label %558, label %560, !dbg !1765

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1762
  store i8 39, i8* %559, align 1, !dbg !1762, !tbaa !742
  br label %560, !dbg !1762

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1319, metadata !607), !dbg !1383
  br label %562, !dbg !1766

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1312, metadata !607), !dbg !1375
  %572 = icmp ult i64 %570, %563, !dbg !1767
  br i1 %572, label %573, label %575, !dbg !1770

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1767
  store i8 %565, i8* %574, align 1, !dbg !1767, !tbaa !742
  br label %575, !dbg !1767

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1312, metadata !607), !dbg !1375
  %577 = and i8 %564, 1, !dbg !1771
  %578 = icmp eq i8 %577, 0, !dbg !1771
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1321, metadata !607), !dbg !1385
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1773
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1321, metadata !607), !dbg !1385
  br label %580, !dbg !1774

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1321, metadata !607), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1320, metadata !607), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1319, metadata !607), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1305, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1313, metadata !607), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1311, metadata !607), !dbg !1432
  %589 = add i64 %581, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1311, metadata !607), !dbg !1432
  br label %122, !dbg !1776, !llvm.loop !1777

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1779
  %593 = and i1 %113, %592, !dbg !1781
  %594 = xor i1 %593, true, !dbg !1781
  %595 = or i1 %111, %594, !dbg !1781
  br i1 %595, label %596, label %635, !dbg !1781

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1782
  %598 = xor i1 %597, true, !dbg !1782
  %599 = and i8 %128, 1, !dbg !1784
  %600 = icmp eq i8 %599, 0, !dbg !1784
  %601 = or i1 %600, %598, !dbg !1782
  br i1 %601, label %611, label %602, !dbg !1782

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1785
  %604 = icmp eq i8 %603, 0, !dbg !1785
  br i1 %604, label %607, label %605, !dbg !1788

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1789
  br label %645, !dbg !1790

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1791
  %609 = icmp ne i64 %125, 0, !dbg !1793
  %610 = and i1 %609, %608, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1312, metadata !607), !dbg !1375
  br i1 %610, label %27, label %611, !dbg !1794

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1795
  %613 = and i1 %612, %111, !dbg !1797
  br i1 %613, label %614, label %630, !dbg !1797

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1314, metadata !607), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1312, metadata !607), !dbg !1375
  %615 = load i8, i8* %99, align 1, !dbg !1798, !tbaa !742
  %616 = icmp eq i8 %615, 0, !dbg !1801
  br i1 %616, label %630, label %617, !dbg !1801

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1802

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1312, metadata !607), !dbg !1375
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1314, metadata !607), !dbg !1377
  %622 = icmp ult i64 %621, %130, !dbg !1802
  br i1 %622, label %623, label %625, !dbg !1805

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1802
  store i8 %619, i8* %624, align 1, !dbg !1802, !tbaa !742
  br label %625, !dbg !1802

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1312, metadata !607), !dbg !1375
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1806
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1314, metadata !607), !dbg !1377
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1314, metadata !607), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1312, metadata !607), !dbg !1375
  %628 = load i8, i8* %627, align 1, !dbg !1798, !tbaa !742
  %629 = icmp eq i8 %628, 0, !dbg !1801
  br i1 %629, label %630, label %618, !dbg !1801, !llvm.loop !1807

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1312, metadata !607), !dbg !1375
  %632 = icmp ult i64 %631, %130, !dbg !1809
  br i1 %632, label %633, label %645, !dbg !1811

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1812
  store i8 0, i8* %634, align 1, !dbg !1813, !tbaa !742
  br label %645, !dbg !1812

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1303, metadata !607), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1305, metadata !607), !dbg !1369
  %639 = icmp ne i32 %636, 2, !dbg !1814
  %640 = icmp eq i8 %103, 0, !dbg !1816
  %641 = or i1 %639, %640, !dbg !1817
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1306, metadata !607), !dbg !1370
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1306, metadata !607), !dbg !1370
  %643 = and i32 %5, -3, !dbg !1818
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1819
  br label %645, !dbg !1820

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1821
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1822 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1826, metadata !607), !dbg !1830
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1827, metadata !607), !dbg !1831
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1832
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1828, metadata !607), !dbg !1833
  %4 = icmp eq i8* %3, %0, !dbg !1834
  br i1 %4, label %5, label %75, !dbg !1836

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1837
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1829, metadata !607), !dbg !1838
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1839, metadata !607), !dbg !1855
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1853, metadata !607), !dbg !1858
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1854, metadata !607), !dbg !1859
  %7 = load i8, i8* %6, align 1, !dbg !1860, !tbaa !742
  %8 = sext i8 %7 to i32, !dbg !1860
  %9 = and i32 %8, -33, !dbg !1860
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1860

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1862, metadata !607), !dbg !1876
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1874, metadata !607), !dbg !1880
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1875, metadata !607), !dbg !1881
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1882
  %12 = load i8, i8* %11, align 1, !dbg !1882, !tbaa !742
  %13 = sext i8 %12 to i32, !dbg !1882
  %14 = and i32 %13, -33, !dbg !1882
  %15 = icmp eq i32 %14, 84, !dbg !1882
  br i1 %15, label %16, label %72, !dbg !1882

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1884, metadata !607), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1895, metadata !607), !dbg !1901
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1896, metadata !607), !dbg !1902
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1903
  %18 = load i8, i8* %17, align 1, !dbg !1903, !tbaa !742
  %19 = sext i8 %18 to i32, !dbg !1903
  %20 = and i32 %19, -33, !dbg !1903
  %21 = icmp eq i32 %20, 70, !dbg !1903
  br i1 %21, label %22, label %72, !dbg !1903

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1905, metadata !607), !dbg !1917
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1915, metadata !607), !dbg !1921
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1916, metadata !607), !dbg !1922
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1923
  %24 = load i8, i8* %23, align 1, !dbg !1923, !tbaa !742
  %25 = icmp eq i8 %24, 45, !dbg !1923
  br i1 %25, label %26, label %72, !dbg !1925

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1926, metadata !607), !dbg !1937
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1935, metadata !607), !dbg !1941
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1936, metadata !607), !dbg !1942
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1943
  %28 = load i8, i8* %27, align 1, !dbg !1943, !tbaa !742
  %29 = icmp eq i8 %28, 56, !dbg !1943
  br i1 %29, label %30, label %72, !dbg !1945

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1946, metadata !607), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1954, metadata !607), !dbg !1960
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1955, metadata !607), !dbg !1961
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1962
  %32 = load i8, i8* %31, align 1, !dbg !1962, !tbaa !742
  %33 = icmp eq i8 %32, 0, !dbg !1962
  br i1 %33, label %34, label %72, !dbg !1964

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1965, !tbaa !742
  %36 = icmp eq i8 %35, 96, !dbg !1966
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.76, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.77, i64 0, i64 0), !dbg !1965
  br label %75, !dbg !1967

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1862, metadata !607), !dbg !1968
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1874, metadata !607), !dbg !1972
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1875, metadata !607), !dbg !1973
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1974
  %40 = load i8, i8* %39, align 1, !dbg !1974, !tbaa !742
  %41 = sext i8 %40 to i32, !dbg !1974
  %42 = and i32 %41, -33, !dbg !1974
  %43 = icmp eq i32 %42, 66, !dbg !1974
  br i1 %43, label %44, label %72, !dbg !1974

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1884, metadata !607), !dbg !1975
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1895, metadata !607), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1896, metadata !607), !dbg !1978
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1979
  %46 = load i8, i8* %45, align 1, !dbg !1979, !tbaa !742
  %47 = icmp eq i8 %46, 49, !dbg !1979
  br i1 %47, label %48, label %72, !dbg !1980

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1905, metadata !607), !dbg !1981
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1915, metadata !607), !dbg !1983
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1916, metadata !607), !dbg !1984
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1985
  %50 = load i8, i8* %49, align 1, !dbg !1985, !tbaa !742
  %51 = icmp eq i8 %50, 56, !dbg !1985
  br i1 %51, label %52, label %72, !dbg !1986

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1926, metadata !607), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1935, metadata !607), !dbg !1989
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1936, metadata !607), !dbg !1990
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1991
  %54 = load i8, i8* %53, align 1, !dbg !1991, !tbaa !742
  %55 = icmp eq i8 %54, 48, !dbg !1991
  br i1 %55, label %56, label %72, !dbg !1992

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1946, metadata !607), !dbg !1993
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1954, metadata !607), !dbg !1995
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1955, metadata !607), !dbg !1996
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1997
  %58 = load i8, i8* %57, align 1, !dbg !1997, !tbaa !742
  %59 = icmp eq i8 %58, 51, !dbg !1997
  br i1 %59, label %60, label %72, !dbg !1998

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1999, metadata !607), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2006, metadata !607), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2007, metadata !607), !dbg !2013
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2014
  %62 = load i8, i8* %61, align 1, !dbg !2014, !tbaa !742
  %63 = icmp eq i8 %62, 48, !dbg !2014
  br i1 %63, label %64, label %72, !dbg !2016

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2017, metadata !607), !dbg !2025
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2023, metadata !607), !dbg !2029
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2024, metadata !607), !dbg !2030
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2031
  %66 = load i8, i8* %65, align 1, !dbg !2031, !tbaa !742
  %67 = icmp eq i8 %66, 0, !dbg !2031
  br i1 %67, label %68, label %72, !dbg !2033

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2034, !tbaa !742
  %70 = icmp eq i8 %69, 96, !dbg !2035
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.79, i64 0, i64 0), !dbg !2034
  br label %75, !dbg !2036

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2037
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !2038
  br label %75, !dbg !2039

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2040
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2041 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2045, metadata !607), !dbg !2048
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2046, metadata !607), !dbg !2049
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2047, metadata !607), !dbg !2050
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2051, metadata !607) #10, !dbg !2064
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2056, metadata !607) #10, !dbg !2066
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2057, metadata !607) #10, !dbg !2067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2058, metadata !607) #10, !dbg !2068
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2069
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2059, metadata !607) #10, !dbg !2070
  %6 = tail call i32* @__errno_location() #16, !dbg !2071
  %7 = load i32, i32* %6, align 4, !dbg !2071, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2060, metadata !607) #10, !dbg !2072
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2073
  %9 = load i32, i32* %8, align 4, !dbg !2073, !tbaa !1235
  %10 = or i32 %9, 1, !dbg !2074
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2061, metadata !607) #10, !dbg !2075
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2076
  %12 = load i32, i32* %11, align 8, !dbg !2076, !tbaa !1175
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2077
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2078
  %15 = load i8*, i8** %14, align 8, !dbg !2078, !tbaa !1261
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2079
  %17 = load i8*, i8** %16, align 8, !dbg !2079, !tbaa !1264
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2080
  %19 = add i64 %18, 1, !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2062, metadata !607) #10, !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2083, metadata !607) #10, !dbg !2088
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2090
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2063, metadata !607) #10, !dbg !2091
  %21 = load i32, i32* %11, align 8, !dbg !2092, !tbaa !1175
  %22 = load i8*, i8** %14, align 8, !dbg !2093, !tbaa !1261
  %23 = load i8*, i8** %16, align 8, !dbg !2094, !tbaa !1264
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2095
  store i32 %7, i32* %6, align 4, !dbg !2096, !tbaa !778
  ret i8* %20, !dbg !2097
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2052 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2051, metadata !607), !dbg !2098
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2056, metadata !607), !dbg !2099
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2057, metadata !607), !dbg !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2058, metadata !607), !dbg !2101
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2102
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2102
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2059, metadata !607), !dbg !2103
  %7 = tail call i32* @__errno_location() #16, !dbg !2104
  %8 = load i32, i32* %7, align 4, !dbg !2104, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2060, metadata !607), !dbg !2105
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2106
  %10 = load i32, i32* %9, align 4, !dbg !2106, !tbaa !1235
  %11 = icmp ne i64* %2, null, !dbg !2107
  %12 = xor i1 %11, true, !dbg !2107
  %13 = zext i1 %12 to i32, !dbg !2107
  %14 = or i32 %10, %13, !dbg !2108
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2061, metadata !607), !dbg !2109
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2110
  %16 = load i32, i32* %15, align 8, !dbg !2110, !tbaa !1175
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2111
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2112
  %19 = load i8*, i8** %18, align 8, !dbg !2112, !tbaa !1261
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2113
  %21 = load i8*, i8** %20, align 8, !dbg !2113, !tbaa !1264
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2114
  %23 = add i64 %22, 1, !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2062, metadata !607), !dbg !2116
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2083, metadata !607) #10, !dbg !2117
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2119
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2063, metadata !607), !dbg !2120
  %25 = load i32, i32* %15, align 8, !dbg !2121, !tbaa !1175
  %26 = load i8*, i8** %18, align 8, !dbg !2122, !tbaa !1261
  %27 = load i8*, i8** %20, align 8, !dbg !2123, !tbaa !1264
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2124
  store i32 %8, i32* %7, align 4, !dbg !2125, !tbaa !778
  br i1 %11, label %29, label %30, !dbg !2126

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2127, !tbaa !2129
  br label %30, !dbg !2130

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2131
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2132 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2136, !tbaa !614
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2134, metadata !607), !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2135, metadata !607), !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2135, metadata !607), !dbg !2138
  %2 = load i32, i32* @nslots, align 4, !dbg !2139, !tbaa !778
  %3 = icmp sgt i32 %2, 1, !dbg !2142
  br i1 %3, label %4, label %13, !dbg !2143

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2144

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2135, metadata !607), !dbg !2138
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2144
  %8 = load i8*, i8** %7, align 8, !dbg !2144, !tbaa !2145
  tail call void @free(i8* %8) #10, !dbg !2147
  %9 = add nuw i64 %6, 1, !dbg !2148
  %10 = load i32, i32* @nslots, align 4, !dbg !2139, !tbaa !778
  %11 = sext i32 %10 to i64, !dbg !2142
  %12 = icmp slt i64 %9, %11, !dbg !2142
  br i1 %12, label %5, label %13, !dbg !2143, !llvm.loop !2149

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2151
  %15 = load i8*, i8** %14, align 8, !dbg !2151, !tbaa !2145
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2153
  br i1 %16, label %18, label %17, !dbg !2154

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2155
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2157, !tbaa !2158
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2159, !tbaa !2145
  br label %18, !dbg !2160

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2161
  br i1 %19, label %22, label %20, !dbg !2163

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2164
  tail call void @free(i8* %21) #10, !dbg !2166
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2167, !tbaa !614
  br label %22, !dbg !2168

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2169, !tbaa !778
  ret void, !dbg !2170
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2171 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2175, metadata !607), !dbg !2177
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2176, metadata !607), !dbg !2178
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2179
  ret i8* %3, !dbg !2180
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2181 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2185, metadata !607), !dbg !2199
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2186, metadata !607), !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2187, metadata !607), !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2188, metadata !607), !dbg !2202
  %5 = tail call i32* @__errno_location() #16, !dbg !2203
  %6 = load i32, i32* %5, align 4, !dbg !2203, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2189, metadata !607), !dbg !2204
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2205, !tbaa !614
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2190, metadata !607), !dbg !2206
  %8 = icmp slt i32 %0, 0, !dbg !2207
  br i1 %8, label %9, label %10, !dbg !2209

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2210
  unreachable, !dbg !2210

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2211, !tbaa !778
  %12 = icmp sgt i32 %11, %0, !dbg !2212
  br i1 %12, label %34, label %13, !dbg !2213

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2214
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2215
  br i1 %15, label %16, label %17, !dbg !2217

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2218
  unreachable, !dbg !2218

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2219
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2219
  %20 = add nsw i32 %0, 1, !dbg !2220
  %21 = sext i32 %20 to i64, !dbg !2221
  %22 = shl nsw i64 %21, 4, !dbg !2222
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2223
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2223
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2190, metadata !607), !dbg !2206
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2224, !tbaa !614
  br i1 %14, label %25, label %26, !dbg !2225

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2226, !tbaa.struct !2228
  br label %26, !dbg !2229

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2230, !tbaa !778
  %28 = sext i32 %27 to i64, !dbg !2231
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2231
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2232
  %31 = sub nsw i32 %20, %27, !dbg !2233
  %32 = sext i32 %31 to i64, !dbg !2234
  %33 = shl nsw i64 %32, 4, !dbg !2235
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2232
  store i32 %20, i32* @nslots, align 4, !dbg !2236, !tbaa !778
  br label %34, !dbg !2237

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2190, metadata !607), !dbg !2206
  %36 = sext i32 %0 to i64, !dbg !2238
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2239
  %38 = load i64, i64* %37, align 8, !dbg !2239, !tbaa !2158
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2194, metadata !607), !dbg !2240
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2241
  %40 = load i8*, i8** %39, align 8, !dbg !2241, !tbaa !2145
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2196, metadata !607), !dbg !2242
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2243
  %42 = load i32, i32* %41, align 4, !dbg !2243, !tbaa !1235
  %43 = or i32 %42, 1, !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2197, metadata !607), !dbg !2245
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2246
  %45 = load i32, i32* %44, align 8, !dbg !2246, !tbaa !1175
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2247
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2248
  %48 = load i8*, i8** %47, align 8, !dbg !2248, !tbaa !1261
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2249
  %50 = load i8*, i8** %49, align 8, !dbg !2249, !tbaa !1264
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2250
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2198, metadata !607), !dbg !2251
  %52 = icmp ugt i64 %38, %51, !dbg !2252
  br i1 %52, label %63, label %53, !dbg !2254

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2255
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2194, metadata !607), !dbg !2240
  store i64 %54, i64* %37, align 8, !dbg !2257, !tbaa !2158
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2258
  br i1 %55, label %57, label %56, !dbg !2260

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2261
  br label %57, !dbg !2261

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2083, metadata !607) #10, !dbg !2262
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2264
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2196, metadata !607), !dbg !2242
  store i8* %58, i8** %39, align 8, !dbg !2265, !tbaa !2145
  %59 = load i32, i32* %44, align 8, !dbg !2266, !tbaa !1175
  %60 = load i8*, i8** %47, align 8, !dbg !2267, !tbaa !1261
  %61 = load i8*, i8** %49, align 8, !dbg !2268, !tbaa !1264
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2269
  br label %63, !dbg !2270

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2196, metadata !607), !dbg !2242
  store i32 %6, i32* %5, align 4, !dbg !2271, !tbaa !778
  ret i8* %64, !dbg !2272
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2273 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2277, metadata !607), !dbg !2280
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2278, metadata !607), !dbg !2281
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2279, metadata !607), !dbg !2282
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2283
  ret i8* %4, !dbg !2284
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2285 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2289, metadata !607), !dbg !2290
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2175, metadata !607) #10, !dbg !2291
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2176, metadata !607) #10, !dbg !2293
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2294
  ret i8* %2, !dbg !2295
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2296 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2300, metadata !607), !dbg !2302
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2301, metadata !607), !dbg !2303
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2277, metadata !607) #10, !dbg !2304
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2278, metadata !607) #10, !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2279, metadata !607) #10, !dbg !2307
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2308
  ret i8* %3, !dbg !2309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2310 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2318, metadata !2324), !dbg !2325
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2314, metadata !607), !dbg !2327
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2315, metadata !607), !dbg !2328
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2316, metadata !607), !dbg !2329
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2330
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2317, metadata !607), !dbg !2331
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2323, metadata !607) #10, !dbg !2332
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2333
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2333
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2318, metadata !607) #10, !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2318, metadata !2334) #10, !dbg !2325
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2325
  %8 = icmp eq i32 %1, 10, !dbg !2335
  br i1 %8, label %9, label %10, !dbg !2337

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2338, !noalias !2339
  unreachable, !dbg !2338

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2318, metadata !2334) #10, !dbg !2325
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2342
  store i32 %1, i32* %11, align 8, !dbg !2342, !alias.scope !2339
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2342
  %13 = bitcast i32* %12 to i8*, !dbg !2342
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2342
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2343
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2317, metadata !607), !dbg !2331
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2344
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2345
  ret i8* %14, !dbg !2346
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2347 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2318, metadata !2324), !dbg !2356
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2351, metadata !607), !dbg !2358
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2352, metadata !607), !dbg !2359
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2353, metadata !607), !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2354, metadata !607), !dbg !2361
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2362
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2355, metadata !607), !dbg !2363
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2323, metadata !607) #10, !dbg !2364
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2365
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2365
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2318, metadata !607) #10, !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2318, metadata !2334) #10, !dbg !2356
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2356
  %9 = icmp eq i32 %1, 10, !dbg !2366
  br i1 %9, label %10, label %11, !dbg !2367

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2368, !noalias !2369
  unreachable, !dbg !2368

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2318, metadata !2334) #10, !dbg !2356
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2372
  store i32 %1, i32* %12, align 8, !dbg !2372, !alias.scope !2369
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2372
  %14 = bitcast i32* %13 to i8*, !dbg !2372
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2373
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2355, metadata !607), !dbg !2363
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2374
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2375
  ret i8* %15, !dbg !2376
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2377 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2318, metadata !2324), !dbg !2383
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2381, metadata !607), !dbg !2386
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2382, metadata !607), !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2314, metadata !607) #10, !dbg !2388
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2315, metadata !607) #10, !dbg !2389
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2316, metadata !607) #10, !dbg !2390
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2391
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2317, metadata !607) #10, !dbg !2392
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2323, metadata !607) #10, !dbg !2393
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2394
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2394
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2318, metadata !607) #10, !dbg !2383
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2318, metadata !2334) #10, !dbg !2383
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2383
  %7 = icmp eq i32 %0, 10, !dbg !2395
  br i1 %7, label %8, label %9, !dbg !2396

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2397, !noalias !2398
  unreachable, !dbg !2397

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2318, metadata !2334) #10, !dbg !2383
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2401
  store i32 %0, i32* %10, align 8, !dbg !2401, !alias.scope !2398
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2401
  %12 = bitcast i32* %11 to i8*, !dbg !2401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2401
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2402
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2317, metadata !607) #10, !dbg !2392
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2403
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2404
  ret i8* %13, !dbg !2405
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2406 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2318, metadata !2324), !dbg !2413
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2410, metadata !607), !dbg !2416
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2411, metadata !607), !dbg !2417
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2412, metadata !607), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2351, metadata !607) #10, !dbg !2419
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2352, metadata !607) #10, !dbg !2420
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2353, metadata !607) #10, !dbg !2421
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2354, metadata !607) #10, !dbg !2422
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2423
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2423
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2355, metadata !607) #10, !dbg !2424
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2323, metadata !607) #10, !dbg !2425
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2426
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2426
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2318, metadata !607) #10, !dbg !2413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2318, metadata !2334) #10, !dbg !2413
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2413
  %8 = icmp eq i32 %0, 10, !dbg !2427
  br i1 %8, label %9, label %10, !dbg !2428

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2429, !noalias !2430
  unreachable, !dbg !2429

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2318, metadata !2334) #10, !dbg !2413
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2433
  store i32 %0, i32* %11, align 8, !dbg !2433, !alias.scope !2430
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2433
  %13 = bitcast i32* %12 to i8*, !dbg !2433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2433
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2355, metadata !607) #10, !dbg !2424
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2435
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2436
  ret i8* %14, !dbg !2437
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2438 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2442, metadata !607), !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2443, metadata !607), !dbg !2447
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2444, metadata !607), !dbg !2448
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2449
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2450, !tbaa.struct !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2445, metadata !607), !dbg !2452
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1194, metadata !607), !dbg !2453
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1195, metadata !607), !dbg !2455
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1196, metadata !607), !dbg !2456
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1197, metadata !607), !dbg !2457
  %6 = lshr i8 %2, 5, !dbg !2458
  %7 = zext i8 %6 to i64, !dbg !2458
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2459
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1198, metadata !607), !dbg !2460
  %9 = and i8 %2, 31, !dbg !2461
  %10 = zext i8 %9 to i32, !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1200, metadata !607), !dbg !2463
  %11 = load i32, i32* %8, align 4, !dbg !2464, !tbaa !778
  %12 = lshr i32 %11, %10, !dbg !2465
  %13 = and i32 %12, 1, !dbg !2466
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1201, metadata !607), !dbg !2467
  %14 = xor i32 %13, 1, !dbg !2468
  %15 = shl i32 %14, %10, !dbg !2469
  %16 = xor i32 %15, %11, !dbg !2470
  store i32 %16, i32* %8, align 4, !dbg !2470, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2445, metadata !607), !dbg !2452
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2471
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2472
  ret i8* %17, !dbg !2473
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2474 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2478, metadata !607), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2479, metadata !607), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2442, metadata !607) #10, !dbg !2482
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2443, metadata !607) #10, !dbg !2484
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2444, metadata !607) #10, !dbg !2485
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2486
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2487, !tbaa.struct !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2445, metadata !607) #10, !dbg !2488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1194, metadata !607) #10, !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1195, metadata !607) #10, !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1196, metadata !607) #10, !dbg !2492
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1197, metadata !607) #10, !dbg !2493
  %5 = lshr i8 %1, 5, !dbg !2494
  %6 = zext i8 %5 to i64, !dbg !2494
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2495
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1198, metadata !607) #10, !dbg !2496
  %8 = and i8 %1, 31, !dbg !2497
  %9 = zext i8 %8 to i32, !dbg !2498
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1200, metadata !607) #10, !dbg !2499
  %10 = load i32, i32* %7, align 4, !dbg !2500, !tbaa !778
  %11 = lshr i32 %10, %9, !dbg !2501
  %12 = and i32 %11, 1, !dbg !2502
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1201, metadata !607) #10, !dbg !2503
  %13 = xor i32 %12, 1, !dbg !2504
  %14 = shl i32 %13, %9, !dbg !2505
  %15 = xor i32 %14, %10, !dbg !2506
  store i32 %15, i32* %7, align 4, !dbg !2506, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2445, metadata !607) #10, !dbg !2488
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2507
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2508
  ret i8* %16, !dbg !2509
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2510 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2512, metadata !607), !dbg !2513
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2478, metadata !607) #10, !dbg !2514
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2479, metadata !607) #10, !dbg !2516
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2442, metadata !607) #10, !dbg !2517
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2443, metadata !607) #10, !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2444, metadata !607) #10, !dbg !2520
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2521
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2521
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2522, !tbaa.struct !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2445, metadata !607) #10, !dbg !2523
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1194, metadata !607) #10, !dbg !2524
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1195, metadata !607) #10, !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1196, metadata !607) #10, !dbg !2527
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1197, metadata !607) #10, !dbg !2528
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2529
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1198, metadata !607) #10, !dbg !2530
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1200, metadata !607) #10, !dbg !2531
  %5 = load i32, i32* %4, align 4, !dbg !2532, !tbaa !778
  %6 = or i32 %5, 67108864, !dbg !2533
  store i32 %6, i32* %4, align 4, !dbg !2533, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2445, metadata !607) #10, !dbg !2523
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2534
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2535
  ret i8* %7, !dbg !2536
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2537 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2539, metadata !607), !dbg !2541
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2540, metadata !607), !dbg !2542
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2442, metadata !607) #10, !dbg !2543
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2443, metadata !607) #10, !dbg !2545
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2444, metadata !607) #10, !dbg !2546
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2547
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2548, !tbaa.struct !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2445, metadata !607) #10, !dbg !2549
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1194, metadata !607) #10, !dbg !2550
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1195, metadata !607) #10, !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1196, metadata !607) #10, !dbg !2553
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1197, metadata !607) #10, !dbg !2554
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2555
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1198, metadata !607) #10, !dbg !2556
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1200, metadata !607) #10, !dbg !2557
  %6 = load i32, i32* %5, align 4, !dbg !2558, !tbaa !778
  %7 = or i32 %6, 67108864, !dbg !2559
  store i32 %7, i32* %5, align 4, !dbg !2559, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2445, metadata !607) #10, !dbg !2549
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2560
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2561
  ret i8* %8, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2563 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2318, metadata !2324), !dbg !2569
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2565, metadata !607), !dbg !2571
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2566, metadata !607), !dbg !2572
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2567, metadata !607), !dbg !2573
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2574
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2323, metadata !607) #10, !dbg !2575
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2576
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2318, metadata !607) #10, !dbg !2569
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2318, metadata !2334) #10, !dbg !2569
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2569
  %9 = icmp eq i32 %1, 10, !dbg !2577
  br i1 %9, label %10, label %11, !dbg !2578

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2579, !noalias !2580
  unreachable, !dbg !2579

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2318, metadata !2334) #10, !dbg !2569
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2583
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2584
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2585
  store i32 %1, i32* %13, align 8, !dbg !2585
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2585
  %15 = bitcast i32* %14 to i8*, !dbg !2585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2585
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2568, metadata !607), !dbg !2586
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1194, metadata !607), !dbg !2587
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1195, metadata !607), !dbg !2589
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1196, metadata !607), !dbg !2590
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1197, metadata !607), !dbg !2591
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2592
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1198, metadata !607), !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1200, metadata !607), !dbg !2594
  %17 = load i32, i32* %16, align 4, !dbg !2595, !tbaa !778
  %18 = or i32 %17, 67108864, !dbg !2596
  store i32 %18, i32* %16, align 4, !dbg !2596, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2568, metadata !607), !dbg !2586
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2597
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2598
  ret i8* %19, !dbg !2599
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2600 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2604, metadata !607), !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2605, metadata !607), !dbg !2609
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2606, metadata !607), !dbg !2610
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2607, metadata !607), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2612, metadata !607) #10, !dbg !2622
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2617, metadata !607) #10, !dbg !2624
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2618, metadata !607) #10, !dbg !2625
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2619, metadata !607) #10, !dbg !2626
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2620, metadata !607) #10, !dbg !2627
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2628
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2628
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2629, !tbaa.struct !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2621, metadata !607) #10, !dbg !2630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1243, metadata !607) #10, !dbg !2631
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1244, metadata !607) #10, !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1245, metadata !607) #10, !dbg !2634
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1243, metadata !607) #10, !dbg !2631
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1243, metadata !607) #10, !dbg !2631
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2635
  store i32 10, i32* %7, align 8, !dbg !2636, !tbaa !1175
  %8 = icmp ne i8* %1, null, !dbg !2637
  %9 = icmp ne i8* %2, null, !dbg !2638
  %10 = and i1 %8, %9, !dbg !2639
  br i1 %10, label %12, label %11, !dbg !2639

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2640
  unreachable, !dbg !2640

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2641
  store i8* %1, i8** %13, align 8, !dbg !2642, !tbaa !1261
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2643
  store i8* %2, i8** %14, align 8, !dbg !2644, !tbaa !1264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2621, metadata !607) #10, !dbg !2630
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2645
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2646
  ret i8* %15, !dbg !2647
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2613 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2612, metadata !607), !dbg !2648
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2617, metadata !607), !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2618, metadata !607), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2619, metadata !607), !dbg !2651
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2620, metadata !607), !dbg !2652
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2653
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2654, !tbaa.struct !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2621, metadata !607), !dbg !2655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1243, metadata !607) #10, !dbg !2656
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1244, metadata !607) #10, !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1245, metadata !607) #10, !dbg !2659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1243, metadata !607) #10, !dbg !2656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1243, metadata !607) #10, !dbg !2656
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2660
  store i32 10, i32* %8, align 8, !dbg !2661, !tbaa !1175
  %9 = icmp ne i8* %1, null, !dbg !2662
  %10 = icmp ne i8* %2, null, !dbg !2663
  %11 = and i1 %9, %10, !dbg !2664
  br i1 %11, label %13, label %12, !dbg !2664

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2665
  unreachable, !dbg !2665

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2666
  store i8* %1, i8** %14, align 8, !dbg !2667, !tbaa !1261
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2668
  store i8* %2, i8** %15, align 8, !dbg !2669, !tbaa !1264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2621, metadata !607), !dbg !2655
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2670
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2671
  ret i8* %16, !dbg !2672
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2673 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2677, metadata !607), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2678, metadata !607), !dbg !2681
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2679, metadata !607), !dbg !2682
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2604, metadata !607) #10, !dbg !2683
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2605, metadata !607) #10, !dbg !2685
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2606, metadata !607) #10, !dbg !2686
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2607, metadata !607) #10, !dbg !2687
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2612, metadata !607) #10, !dbg !2688
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !607) #10, !dbg !2690
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2618, metadata !607) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2619, metadata !607) #10, !dbg !2692
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2620, metadata !607) #10, !dbg !2693
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2694
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2695, !tbaa.struct !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2621, metadata !607) #10, !dbg !2696
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1243, metadata !607) #10, !dbg !2697
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1244, metadata !607) #10, !dbg !2699
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1245, metadata !607) #10, !dbg !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1243, metadata !607) #10, !dbg !2697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1243, metadata !607) #10, !dbg !2697
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2701
  store i32 10, i32* %6, align 8, !dbg !2702, !tbaa !1175
  %7 = icmp ne i8* %0, null, !dbg !2703
  %8 = icmp ne i8* %1, null, !dbg !2704
  %9 = and i1 %7, %8, !dbg !2705
  br i1 %9, label %11, label %10, !dbg !2705

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2706
  unreachable, !dbg !2706

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2707
  store i8* %0, i8** %12, align 8, !dbg !2708, !tbaa !1261
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2709
  store i8* %1, i8** %13, align 8, !dbg !2710, !tbaa !1264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2621, metadata !607) #10, !dbg !2696
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2711
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2712
  ret i8* %14, !dbg !2713
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2714 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2718, metadata !607), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2719, metadata !607), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2720, metadata !607), !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2721, metadata !607), !dbg !2725
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2612, metadata !607) #10, !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !607) #10, !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2618, metadata !607) #10, !dbg !2729
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2619, metadata !607) #10, !dbg !2730
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2620, metadata !607) #10, !dbg !2731
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2733, !tbaa.struct !2451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2621, metadata !607) #10, !dbg !2734
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1243, metadata !607) #10, !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1244, metadata !607) #10, !dbg !2737
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1245, metadata !607) #10, !dbg !2738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1243, metadata !607) #10, !dbg !2735
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1243, metadata !607) #10, !dbg !2735
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2739
  store i32 10, i32* %7, align 8, !dbg !2740, !tbaa !1175
  %8 = icmp ne i8* %0, null, !dbg !2741
  %9 = icmp ne i8* %1, null, !dbg !2742
  %10 = and i1 %8, %9, !dbg !2743
  br i1 %10, label %12, label %11, !dbg !2743

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2744
  unreachable, !dbg !2744

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2745
  store i8* %0, i8** %13, align 8, !dbg !2746, !tbaa !1261
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2747
  store i8* %1, i8** %14, align 8, !dbg !2748, !tbaa !1264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2621, metadata !607) #10, !dbg !2734
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2749
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2750
  ret i8* %15, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2752 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2756, metadata !607), !dbg !2759
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2757, metadata !607), !dbg !2760
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2758, metadata !607), !dbg !2761
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2762
  ret i8* %4, !dbg !2763
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2764 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2768, metadata !607), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2769, metadata !607), !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2756, metadata !607) #10, !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2757, metadata !607) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2758, metadata !607) #10, !dbg !2775
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2776
  ret i8* %3, !dbg !2777
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2778 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2782, metadata !607), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2783, metadata !607), !dbg !2785
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2756, metadata !607) #10, !dbg !2786
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2757, metadata !607) #10, !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2758, metadata !607) #10, !dbg !2789
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2790
  ret i8* %3, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2792 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2796, metadata !607), !dbg !2797
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2782, metadata !607) #10, !dbg !2798
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2783, metadata !607) #10, !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2756, metadata !607) #10, !dbg !2801
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2757, metadata !607) #10, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2758, metadata !607) #10, !dbg !2804
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2805
  ret i8* %2, !dbg !2806
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2807 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2864, metadata !607), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2865, metadata !607), !dbg !2871
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2866, metadata !607), !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2867, metadata !607), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2868, metadata !607), !dbg !2874
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2869, metadata !607), !dbg !2875
  %7 = icmp eq i8* %1, null, !dbg !2876
  br i1 %7, label %10, label %8, !dbg !2878

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2879
  br label %12, !dbg !2879

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2880
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.88, i64 0, i64 0), i32 5) #10, !dbg !2881
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2881
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.89, i64 0, i64 0), i32 5) #10, !dbg !2882
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2882
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
  ], !dbg !2883

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2884
  unreachable, !dbg !2884

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.90, i64 0, i64 0), i32 5) #10, !dbg !2886
  %20 = load i8*, i8** %4, align 8, !dbg !2886, !tbaa !614
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2886
  br label %146, !dbg !2887

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.91, i64 0, i64 0), i32 5) #10, !dbg !2888
  %24 = load i8*, i8** %4, align 8, !dbg !2888, !tbaa !614
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2888
  %26 = load i8*, i8** %25, align 8, !dbg !2888, !tbaa !614
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2888
  br label %146, !dbg !2889

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.92, i64 0, i64 0), i32 5) #10, !dbg !2890
  %30 = load i8*, i8** %4, align 8, !dbg !2890, !tbaa !614
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2890
  %32 = load i8*, i8** %31, align 8, !dbg !2890, !tbaa !614
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2890
  %34 = load i8*, i8** %33, align 8, !dbg !2890, !tbaa !614
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2890
  br label %146, !dbg !2891

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.93, i64 0, i64 0), i32 5) #10, !dbg !2892
  %38 = load i8*, i8** %4, align 8, !dbg !2892, !tbaa !614
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2892
  %40 = load i8*, i8** %39, align 8, !dbg !2892, !tbaa !614
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2892
  %42 = load i8*, i8** %41, align 8, !dbg !2892, !tbaa !614
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2892
  %44 = load i8*, i8** %43, align 8, !dbg !2892, !tbaa !614
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2892
  br label %146, !dbg !2893

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.94, i64 0, i64 0), i32 5) #10, !dbg !2894
  %48 = load i8*, i8** %4, align 8, !dbg !2894, !tbaa !614
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2894
  %50 = load i8*, i8** %49, align 8, !dbg !2894, !tbaa !614
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2894
  %52 = load i8*, i8** %51, align 8, !dbg !2894, !tbaa !614
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2894
  %54 = load i8*, i8** %53, align 8, !dbg !2894, !tbaa !614
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2894
  %56 = load i8*, i8** %55, align 8, !dbg !2894, !tbaa !614
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2894
  br label %146, !dbg !2895

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.95, i64 0, i64 0), i32 5) #10, !dbg !2896
  %60 = load i8*, i8** %4, align 8, !dbg !2896, !tbaa !614
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2896
  %62 = load i8*, i8** %61, align 8, !dbg !2896, !tbaa !614
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2896
  %64 = load i8*, i8** %63, align 8, !dbg !2896, !tbaa !614
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2896
  %66 = load i8*, i8** %65, align 8, !dbg !2896, !tbaa !614
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2896
  %68 = load i8*, i8** %67, align 8, !dbg !2896, !tbaa !614
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2896
  %70 = load i8*, i8** %69, align 8, !dbg !2896, !tbaa !614
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2896
  br label %146, !dbg !2897

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.96, i64 0, i64 0), i32 5) #10, !dbg !2898
  %74 = load i8*, i8** %4, align 8, !dbg !2898, !tbaa !614
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2898
  %76 = load i8*, i8** %75, align 8, !dbg !2898, !tbaa !614
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2898
  %78 = load i8*, i8** %77, align 8, !dbg !2898, !tbaa !614
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2898
  %80 = load i8*, i8** %79, align 8, !dbg !2898, !tbaa !614
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2898
  %82 = load i8*, i8** %81, align 8, !dbg !2898, !tbaa !614
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2898
  %84 = load i8*, i8** %83, align 8, !dbg !2898, !tbaa !614
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2898
  %86 = load i8*, i8** %85, align 8, !dbg !2898, !tbaa !614
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2898
  br label %146, !dbg !2899

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.97, i64 0, i64 0), i32 5) #10, !dbg !2900
  %90 = load i8*, i8** %4, align 8, !dbg !2900, !tbaa !614
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2900
  %92 = load i8*, i8** %91, align 8, !dbg !2900, !tbaa !614
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2900
  %94 = load i8*, i8** %93, align 8, !dbg !2900, !tbaa !614
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2900
  %96 = load i8*, i8** %95, align 8, !dbg !2900, !tbaa !614
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2900
  %98 = load i8*, i8** %97, align 8, !dbg !2900, !tbaa !614
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2900
  %100 = load i8*, i8** %99, align 8, !dbg !2900, !tbaa !614
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2900
  %102 = load i8*, i8** %101, align 8, !dbg !2900, !tbaa !614
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2900
  %104 = load i8*, i8** %103, align 8, !dbg !2900, !tbaa !614
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2900
  br label %146, !dbg !2901

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.98, i64 0, i64 0), i32 5) #10, !dbg !2902
  %108 = load i8*, i8** %4, align 8, !dbg !2902, !tbaa !614
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2902
  %110 = load i8*, i8** %109, align 8, !dbg !2902, !tbaa !614
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2902
  %112 = load i8*, i8** %111, align 8, !dbg !2902, !tbaa !614
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2902
  %114 = load i8*, i8** %113, align 8, !dbg !2902, !tbaa !614
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2902
  %116 = load i8*, i8** %115, align 8, !dbg !2902, !tbaa !614
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2902
  %118 = load i8*, i8** %117, align 8, !dbg !2902, !tbaa !614
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2902
  %120 = load i8*, i8** %119, align 8, !dbg !2902, !tbaa !614
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2902
  %122 = load i8*, i8** %121, align 8, !dbg !2902, !tbaa !614
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2902
  %124 = load i8*, i8** %123, align 8, !dbg !2902, !tbaa !614
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2902
  br label %146, !dbg !2903

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.99, i64 0, i64 0), i32 5) #10, !dbg !2904
  %128 = load i8*, i8** %4, align 8, !dbg !2904, !tbaa !614
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2904
  %130 = load i8*, i8** %129, align 8, !dbg !2904, !tbaa !614
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2904
  %132 = load i8*, i8** %131, align 8, !dbg !2904, !tbaa !614
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2904
  %134 = load i8*, i8** %133, align 8, !dbg !2904, !tbaa !614
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2904
  %136 = load i8*, i8** %135, align 8, !dbg !2904, !tbaa !614
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2904
  %138 = load i8*, i8** %137, align 8, !dbg !2904, !tbaa !614
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2904
  %140 = load i8*, i8** %139, align 8, !dbg !2904, !tbaa !614
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2904
  %142 = load i8*, i8** %141, align 8, !dbg !2904, !tbaa !614
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2904
  %144 = load i8*, i8** %143, align 8, !dbg !2904, !tbaa !614
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2904
  br label %146, !dbg !2905

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2906
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2907 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2911, metadata !607), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2912, metadata !607), !dbg !2918
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2913, metadata !607), !dbg !2919
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2914, metadata !607), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2915, metadata !607), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !607), !dbg !2922
  br label %6, !dbg !2923

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2916, metadata !607), !dbg !2922
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2925
  %9 = load i8*, i8** %8, align 8, !dbg !2925, !tbaa !614
  %10 = icmp eq i8* %9, null, !dbg !2927
  %11 = add i64 %7, 1, !dbg !2928
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2916, metadata !607), !dbg !2922
  br i1 %10, label %12, label %6, !dbg !2927, !llvm.loop !2929

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2931
  ret void, !dbg !2932
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2933 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2944, metadata !607), !dbg !2952
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2945, metadata !607), !dbg !2953
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2946, metadata !607), !dbg !2954
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2947, metadata !607), !dbg !2955
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2948, metadata !607), !dbg !2956
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2957
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2950, metadata !607), !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %11 = load i32, i32* %8, align 8, !dbg !2960
  %12 = icmp ult i32 %11, 41, !dbg !2960
  br i1 %12, label %13, label %18, !dbg !2960

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2960
  %15 = sext i32 %11 to i64, !dbg !2960
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2960
  %17 = add i32 %11, 8, !dbg !2960
  store i32 %17, i32* %8, align 8, !dbg !2960
  br label %21, !dbg !2960

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2960
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2960
  store i8* %20, i8** %10, align 8, !dbg !2960
  br label %21, !dbg !2960

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2960
  %25 = load i8*, i8** %24, align 8, !dbg !2960
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2963
  store i8* %25, i8** %26, align 16, !dbg !2964, !tbaa !614
  %27 = icmp eq i8* %25, null, !dbg !2965
  br i1 %27, label %30, label %28, !dbg !2966

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %29 = icmp ult i32 %22, 41, !dbg !2960
  br i1 %29, label %35, label %32, !dbg !2960

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2967
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2968
  ret void, !dbg !2968

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2960
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2960
  store i8* %34, i8** %10, align 8, !dbg !2960
  br label %40, !dbg !2960

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2960
  %37 = sext i32 %22 to i64, !dbg !2960
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2960
  %39 = add i32 %22, 8, !dbg !2960
  store i32 %39, i32* %8, align 8, !dbg !2960
  br label %40, !dbg !2960

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2960
  %44 = load i8*, i8** %43, align 8, !dbg !2960
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2963
  store i8* %44, i8** %45, align 8, !dbg !2964, !tbaa !614
  %46 = icmp eq i8* %44, null, !dbg !2965
  br i1 %46, label %30, label %47, !dbg !2966

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %48 = icmp ult i32 %41, 41, !dbg !2960
  br i1 %48, label %52, label %49, !dbg !2960

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2960
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2960
  store i8* %51, i8** %10, align 8, !dbg !2960
  br label %57, !dbg !2960

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2960
  %54 = sext i32 %41 to i64, !dbg !2960
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2960
  %56 = add i32 %41, 8, !dbg !2960
  store i32 %56, i32* %8, align 8, !dbg !2960
  br label %57, !dbg !2960

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2960
  %61 = load i8*, i8** %60, align 8, !dbg !2960
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2963
  store i8* %61, i8** %62, align 16, !dbg !2964, !tbaa !614
  %63 = icmp eq i8* %61, null, !dbg !2965
  br i1 %63, label %30, label %64, !dbg !2966

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %65 = icmp ult i32 %58, 41, !dbg !2960
  br i1 %65, label %69, label %66, !dbg !2960

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2960
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2960
  store i8* %68, i8** %10, align 8, !dbg !2960
  br label %74, !dbg !2960

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2960
  %71 = sext i32 %58 to i64, !dbg !2960
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2960
  %73 = add i32 %58, 8, !dbg !2960
  store i32 %73, i32* %8, align 8, !dbg !2960
  br label %74, !dbg !2960

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2960
  %78 = load i8*, i8** %77, align 8, !dbg !2960
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2963
  store i8* %78, i8** %79, align 8, !dbg !2964, !tbaa !614
  %80 = icmp eq i8* %78, null, !dbg !2965
  br i1 %80, label %30, label %81, !dbg !2966

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %82 = icmp ult i32 %75, 41, !dbg !2960
  br i1 %82, label %86, label %83, !dbg !2960

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2960
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2960
  store i8* %85, i8** %10, align 8, !dbg !2960
  br label %91, !dbg !2960

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2960
  %88 = sext i32 %75 to i64, !dbg !2960
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2960
  %90 = add i32 %75, 8, !dbg !2960
  store i32 %90, i32* %8, align 8, !dbg !2960
  br label %91, !dbg !2960

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2960
  %95 = load i8*, i8** %94, align 8, !dbg !2960
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2963
  store i8* %95, i8** %96, align 16, !dbg !2964, !tbaa !614
  %97 = icmp eq i8* %95, null, !dbg !2965
  br i1 %97, label %30, label %98, !dbg !2966

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %99 = icmp ult i32 %92, 41, !dbg !2960
  br i1 %99, label %103, label %100, !dbg !2960

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2960
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2960
  store i8* %102, i8** %10, align 8, !dbg !2960
  br label %108, !dbg !2960

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2960
  %105 = sext i32 %92 to i64, !dbg !2960
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2960
  %107 = add i32 %92, 8, !dbg !2960
  store i32 %107, i32* %8, align 8, !dbg !2960
  br label %108, !dbg !2960

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2960
  %111 = load i8*, i8** %110, align 8, !dbg !2960
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2963
  store i8* %111, i8** %112, align 8, !dbg !2964, !tbaa !614
  %113 = icmp eq i8* %111, null, !dbg !2965
  br i1 %113, label %30, label %114, !dbg !2966

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %115 = load i8*, i8** %10, align 8, !dbg !2960
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2960
  store i8* %116, i8** %10, align 8, !dbg !2960
  %117 = bitcast i8* %115 to i8**, !dbg !2960
  %118 = load i8*, i8** %117, align 8, !dbg !2960
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2963
  store i8* %118, i8** %119, align 16, !dbg !2964, !tbaa !614
  %120 = icmp eq i8* %118, null, !dbg !2965
  br i1 %120, label %30, label %121, !dbg !2966

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %122 = load i8*, i8** %10, align 8, !dbg !2960
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2960
  store i8* %123, i8** %10, align 8, !dbg !2960
  %124 = bitcast i8* %122 to i8**, !dbg !2960
  %125 = load i8*, i8** %124, align 8, !dbg !2960
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2963
  store i8* %125, i8** %126, align 8, !dbg !2964, !tbaa !614
  %127 = icmp eq i8* %125, null, !dbg !2965
  br i1 %127, label %30, label %128, !dbg !2966

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %129 = load i8*, i8** %10, align 8, !dbg !2960
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2960
  store i8* %130, i8** %10, align 8, !dbg !2960
  %131 = bitcast i8* %129 to i8**, !dbg !2960
  %132 = load i8*, i8** %131, align 8, !dbg !2960
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2963
  store i8* %132, i8** %133, align 16, !dbg !2964, !tbaa !614
  %134 = icmp eq i8* %132, null, !dbg !2965
  br i1 %134, label %30, label %135, !dbg !2966

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !607), !dbg !2959
  %136 = load i8*, i8** %10, align 8, !dbg !2960
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2960
  store i8* %137, i8** %10, align 8, !dbg !2960
  %138 = bitcast i8* %136 to i8**, !dbg !2960
  %139 = load i8*, i8** %138, align 8, !dbg !2960
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2963
  store i8* %139, i8** %140, align 8, !dbg !2964, !tbaa !614
  %141 = icmp eq i8* %139, null, !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2949, metadata !607), !dbg !2959
  %142 = select i1 %141, i64 9, i64 10, !dbg !2966
  br label %30, !dbg !2966
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2969 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2973, metadata !607), !dbg !2983
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2974, metadata !607), !dbg !2984
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2975, metadata !607), !dbg !2985
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2976, metadata !607), !dbg !2986
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2987
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2987
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2977, metadata !607), !dbg !2988
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2989
  call void @llvm.va_start(i8* nonnull %6), !dbg !2989
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2990
  call void @llvm.va_end(i8* nonnull %6), !dbg !2991
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2992
  ret void, !dbg !2992
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2993 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.102, i64 0, i64 0), i32 5) #10, !dbg !2994
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.103, i64 0, i64 0)) #10, !dbg !2994
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.104, i64 0, i64 0), i32 5) #10, !dbg !2995
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.105, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.106, i64 0, i64 0)) #10, !dbg !2995
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.107, i64 0, i64 0), i32 5) #10, !dbg !2996
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2996, !tbaa !614
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2996
  ret void, !dbg !2997
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2998 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3002, metadata !607), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3003, metadata !607), !dbg !3005
  %3 = udiv i64 9223372036854775807, %1, !dbg !3006
  %4 = icmp ult i64 %3, %0, !dbg !3006
  br i1 %4, label %5, label %6, !dbg !3008

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3009
  unreachable, !dbg !3009

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3010
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3011, metadata !607) #10, !dbg !3018
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3020
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3017, metadata !607) #10, !dbg !3021
  %9 = icmp eq i8* %8, null, !dbg !3022
  %10 = icmp ne i64 %7, 0, !dbg !3024
  %11 = and i1 %10, %9, !dbg !3025
  br i1 %11, label %12, label %13, !dbg !3025

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3026
  unreachable, !dbg !3026

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3027
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3012 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3011, metadata !607), !dbg !3028
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3017, metadata !607), !dbg !3030
  %3 = icmp eq i8* %2, null, !dbg !3031
  %4 = icmp ne i64 %0, 0, !dbg !3032
  %5 = and i1 %4, %3, !dbg !3033
  br i1 %5, label %6, label %7, !dbg !3033

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3034
  unreachable, !dbg !3034

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3035
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3036 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3040, metadata !607), !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3041, metadata !607), !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3042, metadata !607), !dbg !3045
  %4 = udiv i64 9223372036854775807, %2, !dbg !3046
  %5 = icmp ult i64 %4, %1, !dbg !3046
  br i1 %5, label %6, label %7, !dbg !3048

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3049
  unreachable, !dbg !3049

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3050
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3051, metadata !607) #10, !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3056, metadata !607) #10, !dbg !3059
  %9 = icmp eq i64 %8, 0, !dbg !3060
  %10 = icmp ne i8* %0, null, !dbg !3062
  %11 = and i1 %10, %9, !dbg !3063
  br i1 %11, label %12, label %13, !dbg !3063

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3064
  br label %19, !dbg !3066

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3051, metadata !607) #10, !dbg !3057
  %15 = icmp eq i8* %14, null, !dbg !3068
  %16 = icmp ne i64 %8, 0, !dbg !3070
  %17 = and i1 %16, %15, !dbg !3071
  br i1 %17, label %18, label %19, !dbg !3071

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3072
  unreachable, !dbg !3072

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3073
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3052 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3051, metadata !607), !dbg !3074
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3056, metadata !607), !dbg !3075
  %3 = icmp eq i64 %1, 0, !dbg !3076
  %4 = icmp ne i8* %0, null, !dbg !3077
  %5 = and i1 %4, %3, !dbg !3078
  br i1 %5, label %6, label %7, !dbg !3078

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3079
  br label %13, !dbg !3080

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3051, metadata !607), !dbg !3074
  %9 = icmp eq i8* %8, null, !dbg !3082
  %10 = icmp ne i64 %1, 0, !dbg !3083
  %11 = and i1 %10, %9, !dbg !3084
  br i1 %11, label %12, label %13, !dbg !3084

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3085
  unreachable, !dbg !3085

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3086
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !554 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !559, metadata !607), !dbg !3087
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !560, metadata !607), !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !561, metadata !607), !dbg !3089
  %4 = load i64, i64* %1, align 8, !dbg !3090, !tbaa !2129
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !562, metadata !607), !dbg !3091
  %5 = icmp eq i8* %0, null, !dbg !3092
  br i1 %5, label %6, label %13, !dbg !3094

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3095
  br i1 %7, label %8, label %17, !dbg !3098

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !562, metadata !607), !dbg !3091
  %10 = icmp ugt i64 %2, 128, !dbg !3101
  %11 = zext i1 %10 to i64, !dbg !3101
  %12 = add nuw nsw i64 %9, %11, !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !562, metadata !607), !dbg !3091
  br label %17, !dbg !3103

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3104
  %15 = icmp ugt i64 %14, %4, !dbg !3107
  br i1 %15, label %20, label %16, !dbg !3108

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3109
  unreachable, !dbg !3109

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !562, metadata !607), !dbg !3091
  store i64 %18, i64* %1, align 8, !dbg !3110, !tbaa !2129
  %19 = mul i64 %18, %2, !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3051, metadata !607) #10, !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3056, metadata !607) #10, !dbg !3114
  br label %27, !dbg !3115

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3116
  %22 = add i64 %4, 1, !dbg !3117
  %23 = add i64 %22, %21, !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !562, metadata !607), !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !562, metadata !607), !dbg !3091
  store i64 %23, i64* %1, align 8, !dbg !3110, !tbaa !2129
  %24 = mul i64 %23, %2, !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3051, metadata !607) #10, !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3056, metadata !607) #10, !dbg !3114
  %25 = icmp eq i64 %24, 0, !dbg !3119
  br i1 %25, label %26, label %27, !dbg !3115

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3120
  br label %34, !dbg !3121

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3122
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3051, metadata !607) #10, !dbg !3112
  %30 = icmp eq i8* %29, null, !dbg !3123
  %31 = icmp ne i64 %28, 0, !dbg !3124
  %32 = and i1 %31, %30, !dbg !3125
  br i1 %32, label %33, label %34, !dbg !3125

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3126
  unreachable, !dbg !3126

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3127
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3128 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3130, metadata !607), !dbg !3131
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3011, metadata !607) #10, !dbg !3132
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3134
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3017, metadata !607) #10, !dbg !3135
  %3 = icmp eq i8* %2, null, !dbg !3136
  %4 = icmp ne i64 %0, 0, !dbg !3137
  %5 = and i1 %4, %3, !dbg !3138
  br i1 %5, label %6, label %7, !dbg !3138

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3139
  unreachable, !dbg !3139

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3140
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3141 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3145, metadata !607), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3146, metadata !607), !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !559, metadata !607) #10, !dbg !3149
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !560, metadata !607) #10, !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !561, metadata !607) #10, !dbg !3152
  %3 = load i64, i64* %1, align 8, !dbg !3153, !tbaa !2129
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !562, metadata !607) #10, !dbg !3154
  %4 = icmp eq i8* %0, null, !dbg !3155
  br i1 %4, label %5, label %8, !dbg !3156

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !562, metadata !607) #10, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !562, metadata !607) #10, !dbg !3154
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3158
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !562, metadata !607) #10, !dbg !3154
  store i64 %7, i64* %1, align 8, !dbg !3159, !tbaa !2129
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3051, metadata !607) #10, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3056, metadata !607) #10, !dbg !3162
  br label %17, !dbg !3163

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3164
  br i1 %9, label %11, label %10, !dbg !3165

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3166
  unreachable, !dbg !3166

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3167
  %13 = add i64 %3, 1, !dbg !3168
  %14 = add i64 %13, %12, !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !562, metadata !607) #10, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !562, metadata !607) #10, !dbg !3154
  store i64 %14, i64* %1, align 8, !dbg !3159, !tbaa !2129
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3051, metadata !607) #10, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3056, metadata !607) #10, !dbg !3162
  %15 = icmp eq i64 %14, 0, !dbg !3170
  br i1 %15, label %16, label %17, !dbg !3163

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3171
  br label %24, !dbg !3172

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3173
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3051, metadata !607) #10, !dbg !3160
  %20 = icmp eq i8* %19, null, !dbg !3174
  %21 = icmp ne i64 %18, 0, !dbg !3175
  %22 = and i1 %21, %20, !dbg !3176
  br i1 %22, label %23, label %24, !dbg !3176

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3177
  unreachable, !dbg !3177

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3179 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3181, metadata !607), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3011, metadata !607) #10, !dbg !3183
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3017, metadata !607) #10, !dbg !3186
  %3 = icmp eq i8* %2, null, !dbg !3187
  %4 = icmp ne i64 %0, 0, !dbg !3188
  %5 = and i1 %4, %3, !dbg !3189
  br i1 %5, label %6, label %7, !dbg !3189

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3190
  unreachable, !dbg !3190

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3191
  ret i8* %2, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3193 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3195, metadata !607), !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3196, metadata !607), !dbg !3199
  %3 = udiv i64 9223372036854775807, %1, !dbg !3200
  %4 = icmp ult i64 %3, %0, !dbg !3200
  br i1 %4, label %8, label %5, !dbg !3202

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3203
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3197, metadata !607), !dbg !3204
  %7 = icmp eq i8* %6, null, !dbg !3205
  br i1 %7, label %8, label %9, !dbg !3206

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3207
  unreachable, !dbg !3207

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3208
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3209 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3215, metadata !607), !dbg !3217
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3216, metadata !607), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3011, metadata !607) #10, !dbg !3219
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3221
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3017, metadata !607) #10, !dbg !3222
  %4 = icmp eq i8* %3, null, !dbg !3223
  %5 = icmp ne i64 %1, 0, !dbg !3224
  %6 = and i1 %5, %4, !dbg !3225
  br i1 %6, label %7, label %8, !dbg !3225

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3226
  unreachable, !dbg !3226

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3227
  ret i8* %3, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3229 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3231, metadata !607), !dbg !3232
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3233
  %3 = add i64 %2, 1, !dbg !3234
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3215, metadata !607) #10, !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3216, metadata !607) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3011, metadata !607) #10, !dbg !3238
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3240
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3017, metadata !607) #10, !dbg !3241
  %5 = icmp eq i8* %4, null, !dbg !3242
  %6 = icmp ne i64 %3, 0, !dbg !3243
  %7 = and i1 %6, %5, !dbg !3244
  br i1 %7, label %8, label %9, !dbg !3244

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3245
  unreachable, !dbg !3245

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3246
  ret i8* %4, !dbg !3247
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3248 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3250, !tbaa !778
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #10, !dbg !3251
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), i8* %2) #10, !dbg !3252
  tail call void @abort() #15, !dbg !3253
  unreachable, !dbg !3253
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoimax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3254 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3259, metadata !607), !dbg !3269
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3260, metadata !607), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3261, metadata !607), !dbg !3271
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3262, metadata !607), !dbg !3272
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3263, metadata !607), !dbg !3273
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3264, metadata !607), !dbg !3274
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3265, metadata !607), !dbg !3275
  %9 = bitcast i64* %8 to i8*, !dbg !3276
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3276
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !3268, metadata !607), !dbg !3277
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !3278
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3266, metadata !607), !dbg !3279
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %26
    i32 3, label %28
  ], !dbg !3280

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #16, !dbg !3281
  br label %30, !dbg !3280

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3284, !tbaa !2129
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3268, metadata !607), !dbg !3277
  %15 = icmp slt i64 %14, %2, !dbg !3288
  %16 = icmp sgt i64 %14, %3, !dbg !3289
  %17 = or i1 %15, %16, !dbg !3290
  br i1 %17, label %18, label %39, !dbg !3290

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3266, metadata !607), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3268, metadata !607), !dbg !3277
  %19 = icmp sgt i64 %14, 1073741823, !dbg !3291
  br i1 %19, label %20, label %22, !dbg !3294

; <label>:20:                                     ; preds = %18
  %21 = tail call i32* @__errno_location() #16, !dbg !3295
  store i32 75, i32* %21, align 4, !dbg !3296, !tbaa !778
  br label %30, !dbg !3295

; <label>:22:                                     ; preds = %18
  %23 = icmp slt i64 %14, -1073741824, !dbg !3297
  %24 = tail call i32* @__errno_location() #16, !dbg !3299
  %25 = select i1 %23, i32 75, i32 34, !dbg !3300
  store i32 %25, i32* %24, align 4, !tbaa !778
  br label %30

; <label>:26:                                     ; preds = %7
  %27 = tail call i32* @__errno_location() #16, !dbg !3301
  store i32 75, i32* %27, align 4, !dbg !3303, !tbaa !778
  br label %30, !dbg !3301

; <label>:28:                                     ; preds = %7
  %29 = tail call i32* @__errno_location() #16, !dbg !3304
  store i32 0, i32* %29, align 4, !dbg !3306, !tbaa !778
  br label %30, !dbg !3304

; <label>:30:                                     ; preds = %11, %20, %22, %26, %28
  %31 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %22 ], [ %27, %26 ], [ %29, %28 ], !dbg !3281
  %32 = icmp eq i32 %6, 0, !dbg !3307
  %33 = select i1 %32, i32 1, i32 %6, !dbg !3307
  %34 = load i32, i32* %31, align 4, !dbg !3281, !tbaa !778
  %35 = icmp eq i32 %34, 22, !dbg !3308
  %36 = select i1 %35, i32 0, i32 %34, !dbg !3281
  %37 = call i8* @quote(i8* %0) #10, !dbg !3309
  call void (i32, i32, i8*, ...) @error(i32 %33, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i64 0, i64 0), i8* %5, i8* %37) #10, !dbg !3310
  %38 = load i64, i64* %8, align 8, !dbg !3311, !tbaa !2129
  br label %39, !dbg !3312

; <label>:39:                                     ; preds = %13, %30
  %40 = phi i64 [ %14, %13 ], [ %38, %30 ], !dbg !3311
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3268, metadata !607), !dbg !3277
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3313
  ret i64 %40, !dbg !3314
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoimax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3315 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3319, metadata !607), !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3320, metadata !607), !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3321, metadata !607), !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3322, metadata !607), !dbg !3328
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3323, metadata !607), !dbg !3329
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3324, metadata !607), !dbg !3330
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3331
  ret i64 %7, !dbg !3332
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3333 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3339, metadata !607), !dbg !3353
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3340, metadata !607), !dbg !3354
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3341, metadata !607), !dbg !3355
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3342, metadata !607), !dbg !3356
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3343, metadata !607), !dbg !3357
  %7 = bitcast i8** %6 to i8*, !dbg !3358
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3358
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3347, metadata !607), !dbg !3359
  %8 = icmp ult i32 %2, 37, !dbg !3360
  br i1 %8, label %10, label %9, !dbg !3360

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.125, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.126, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #15, !dbg !3360
  unreachable, !dbg !3360

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3363
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !3363
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !3345, metadata !607), !dbg !3364
  %13 = tail call i32* @__errno_location() #16, !dbg !3365
  store i32 0, i32* %13, align 4, !dbg !3366, !tbaa !778
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3367, metadata !607) #10, !dbg !3377
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !3375, metadata !607) #10, !dbg !3377
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3376, metadata !607) #10, !dbg !3377
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #10, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3346, metadata !607), !dbg !3380
  %15 = load i8*, i8** %12, align 8, !dbg !3381, !tbaa !614
  %16 = icmp eq i8* %15, %0, !dbg !3383
  br i1 %16, label %17, label %26, !dbg !3384

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3385
  br i1 %18, label %196, label %19, !dbg !3388

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3389, !tbaa !742
  %21 = icmp eq i8 %20, 0, !dbg !3389
  br i1 %21, label %196, label %22, !dbg !3390

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3389
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #14, !dbg !3391
  %25 = icmp eq i8* %24, null, !dbg !3391
  br i1 %25, label %196, label %33, !dbg !3392

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3393, !tbaa !778
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3395

; <label>:28:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3347, metadata !607), !dbg !3359
  br label %29, !dbg !3396

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !3347, metadata !607), !dbg !3359
  %31 = icmp eq i8* %4, null, !dbg !3398
  br i1 %31, label %32, label %33, !dbg !3400

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3346, metadata !607), !dbg !3380
  store i64 %14, i64* %3, align 8, !dbg !3401, !tbaa !2129
  br label %196, !dbg !3403

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3404, !tbaa !742
  %37 = sext i8 %36 to i32, !dbg !3404
  %38 = icmp eq i8 %36, 0, !dbg !3405
  br i1 %38, label %193, label %39, !dbg !3406

; <label>:39:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3348, metadata !607), !dbg !3407
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3351, metadata !607), !dbg !3408
  %40 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3409
  %41 = icmp eq i8* %40, null, !dbg !3409
  br i1 %41, label %42, label %44, !dbg !3411

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3346, metadata !607), !dbg !3380
  store i64 %35, i64* %3, align 8, !dbg !3412, !tbaa !2129
  %43 = or i32 %34, 2, !dbg !3414
  br label %196, !dbg !3415

; <label>:44:                                     ; preds = %39
  switch i32 %37, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !3416

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3417
  %47 = icmp eq i8* %46, null, !dbg !3417
  br i1 %47, label %58, label %48, !dbg !3420

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3421
  %50 = load i8, i8* %49, align 1, !dbg !3421, !tbaa !742
  %51 = sext i8 %50 to i32, !dbg !3421
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3422

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3423
  %54 = load i8, i8* %53, align 1, !dbg !3423, !tbaa !742
  %55 = icmp eq i8 %54, 66, !dbg !3426
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3351, metadata !607), !dbg !3408
  %56 = select i1 %55, i64 3, i64 1, !dbg !3427
  br label %58, !dbg !3427

; <label>:57:                                     ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3348, metadata !607), !dbg !3407
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3351, metadata !607), !dbg !3408
  br label %58, !dbg !3428

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %37, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !3429

; <label>:61:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3430, metadata !607), !dbg !3436
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3439
  br i1 %62, label %184, label %63, !dbg !3441

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3442
  %65 = shl nsw i64 %35, 9, !dbg !3444
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3445
  %67 = zext i1 %64 to i32, !dbg !3445
  br label %184, !dbg !3445

; <label>:68:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3430, metadata !607), !dbg !3446
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3448
  br i1 %69, label %184, label %70, !dbg !3449

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3450
  %72 = shl nsw i64 %35, 10, !dbg !3451
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3452
  %74 = zext i1 %71 to i32, !dbg !3452
  br label %184, !dbg !3452

; <label>:75:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3461
  %76 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3463
  %77 = icmp slt i64 %35, %76, !dbg !3464
  br i1 %77, label %84, label %78, !dbg !3466

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !3467
  %80 = icmp slt i64 %79, %35, !dbg !3468
  %81 = mul nsw i64 %35, %59, !dbg !3469
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !3470
  %83 = zext i1 %80 to i32, !dbg !3470
  br label %84, !dbg !3470

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3463
  %87 = icmp slt i64 %85, %76, !dbg !3464
  br i1 %87, label %204, label %198, !dbg !3466

; <label>:88:                                     ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3471
  %89 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3473
  %90 = icmp slt i64 %35, %89, !dbg !3474
  br i1 %90, label %97, label %91, !dbg !3476

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !3477
  %93 = icmp slt i64 %92, %35, !dbg !3478
  %94 = mul nsw i64 %35, %59, !dbg !3479
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !3480
  %96 = zext i1 %93 to i32, !dbg !3480
  br label %97, !dbg !3480

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3460, metadata !607), !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3460, metadata !607), !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3473
  %100 = icmp slt i64 %98, %89, !dbg !3474
  br i1 %100, label %258, label %252, !dbg !3476

; <label>:101:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3453, metadata !607), !dbg !3481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3453, metadata !607), !dbg !3481
  %102 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3453, metadata !607), !dbg !3481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3483
  %103 = icmp slt i64 %35, %102, !dbg !3484
  br i1 %103, label %184, label %104, !dbg !3486

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !3487
  %106 = icmp slt i64 %105, %35, !dbg !3488
  %107 = mul nsw i64 %35, %59, !dbg !3489
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !3490
  %109 = zext i1 %106 to i32, !dbg !3490
  br label %184, !dbg !3490

; <label>:110:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3493
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3493
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3491
  %111 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3493
  %112 = icmp slt i64 %35, %111, !dbg !3494
  br i1 %112, label %119, label %113, !dbg !3496

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !3497
  %115 = icmp slt i64 %114, %35, !dbg !3498
  %116 = mul nsw i64 %35, %59, !dbg !3499
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !3500
  %118 = zext i1 %115 to i32, !dbg !3500
  br label %119, !dbg !3500

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3460, metadata !607), !dbg !3493
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3460, metadata !607), !dbg !3493
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3453, metadata !607), !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3453, metadata !607), !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3493
  %122 = icmp slt i64 %120, %111, !dbg !3494
  br i1 %122, label %279, label %273, !dbg !3496

; <label>:123:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3501
  %124 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3503
  %125 = icmp slt i64 %35, %124, !dbg !3504
  br i1 %125, label %132, label %126, !dbg !3506

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !3507
  %128 = icmp slt i64 %127, %35, !dbg !3508
  %129 = mul nsw i64 %35, %59, !dbg !3509
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !3510
  %131 = zext i1 %128 to i32, !dbg !3510
  br label %132, !dbg !3510

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3503
  %135 = icmp slt i64 %133, %124, !dbg !3504
  br i1 %135, label %289, label %283, !dbg !3506

; <label>:136:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3511
  %137 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3513
  %138 = icmp slt i64 %35, %137, !dbg !3514
  br i1 %138, label %145, label %139, !dbg !3516

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !3517
  %141 = icmp slt i64 %140, %35, !dbg !3518
  %142 = mul nsw i64 %35, %59, !dbg !3519
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !3520
  %144 = zext i1 %141 to i32, !dbg !3520
  br label %145, !dbg !3520

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3513
  %148 = icmp slt i64 %146, %137, !dbg !3514
  br i1 %148, label %332, label %326, !dbg !3516

; <label>:149:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3430, metadata !607), !dbg !3521
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !3523
  br i1 %150, label %184, label %151, !dbg !3524

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !3525
  %153 = shl nsw i64 %35, 1, !dbg !3526
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !3527
  %155 = zext i1 %152 to i32, !dbg !3527
  br label %184, !dbg !3527

; <label>:156:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  %157 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  %158 = icmp slt i64 %35, %157, !dbg !3531
  br i1 %158, label %165, label %159, !dbg !3533

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !3534
  %161 = icmp slt i64 %160, %35, !dbg !3535
  %162 = mul nsw i64 %35, %59, !dbg !3536
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !3537
  %164 = zext i1 %161 to i32, !dbg !3537
  br label %165, !dbg !3537

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  %168 = icmp slt i64 %166, %157, !dbg !3531
  br i1 %168, label %364, label %358, !dbg !3533

; <label>:169:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3538
  %170 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3540
  %171 = icmp slt i64 %35, %170, !dbg !3541
  br i1 %171, label %178, label %172, !dbg !3543

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !3544
  %174 = icmp slt i64 %173, %35, !dbg !3545
  %175 = mul nsw i64 %35, %59, !dbg !3546
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !3547
  %177 = zext i1 %174 to i32, !dbg !3547
  br label %178, !dbg !3547

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3540
  %181 = icmp slt i64 %179, %170, !dbg !3541
  br i1 %181, label %440, label %434, !dbg !3543

; <label>:182:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3346, metadata !607), !dbg !3380
  store i64 %35, i64* %3, align 8, !dbg !3548, !tbaa !2129
  %183 = or i32 %34, 2, !dbg !3549
  br label %196, !dbg !3550

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3352, metadata !607), !dbg !3551
  %187 = or i32 %186, %34, !dbg !3552
  call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !3347, metadata !607), !dbg !3359
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3553
  store i8* %188, i8** %12, align 8, !dbg !3553, !tbaa !614
  %189 = load i8, i8* %188, align 1, !dbg !3554, !tbaa !742
  %190 = icmp eq i8 %189, 0, !dbg !3554
  %191 = or i32 %187, 2, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !3347, metadata !607), !dbg !3359
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !3557
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3347, metadata !607), !dbg !3359
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3347, metadata !607), !dbg !3359
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !3347, metadata !607), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %194, i64 0, metadata !3346, metadata !607), !dbg !3380
  store i64 %194, i64* %3, align 8, !dbg !3558, !tbaa !2129
  br label %196, !dbg !3559

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3560
  ret i32 %197, !dbg !3560

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !3467
  %200 = icmp slt i64 %199, %85, !dbg !3468
  %201 = mul nsw i64 %85, %59, !dbg !3469
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !3470
  %203 = zext i1 %200 to i32, !dbg !3470
  br label %204, !dbg !3470

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86, !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3463
  %208 = icmp slt i64 %205, %76, !dbg !3464
  br i1 %208, label %215, label %209, !dbg !3466

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !3467
  %211 = icmp slt i64 %210, %205, !dbg !3468
  %212 = mul nsw i64 %205, %59, !dbg !3469
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !3470
  %214 = zext i1 %211 to i32, !dbg !3470
  br label %215, !dbg !3470

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207, !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3463
  %219 = icmp slt i64 %216, %76, !dbg !3464
  br i1 %219, label %226, label %220, !dbg !3466

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !3467
  %222 = icmp slt i64 %221, %216, !dbg !3468
  %223 = mul nsw i64 %216, %59, !dbg !3469
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !3470
  %225 = zext i1 %222 to i32, !dbg !3470
  br label %226, !dbg !3470

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218, !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3463
  %230 = icmp slt i64 %227, %76, !dbg !3464
  br i1 %230, label %237, label %231, !dbg !3466

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !3467
  %233 = icmp slt i64 %232, %227, !dbg !3468
  %234 = mul nsw i64 %227, %59, !dbg !3469
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !3470
  %236 = zext i1 %233 to i32, !dbg !3470
  br label %237, !dbg !3470

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229, !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3463
  %241 = icmp slt i64 %238, %76, !dbg !3464
  br i1 %241, label %248, label %242, !dbg !3466

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !3467
  %244 = icmp slt i64 %243, %238, !dbg !3468
  %245 = mul nsw i64 %238, %59, !dbg !3469
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !3470
  %247 = zext i1 %244 to i32, !dbg !3470
  br label %248, !dbg !3470

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240, !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3460, metadata !607), !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3461
  br label %184, !dbg !3552

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !3477
  %254 = icmp slt i64 %253, %98, !dbg !3478
  %255 = mul nsw i64 %98, %59, !dbg !3479
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !3480
  %257 = zext i1 %254 to i32, !dbg !3480
  br label %258, !dbg !3480

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99, !dbg !3562
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3460, metadata !607), !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3460, metadata !607), !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3473
  %262 = icmp slt i64 %259, %89, !dbg !3474
  br i1 %262, label %269, label %263, !dbg !3476

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !3477
  %265 = icmp slt i64 %264, %259, !dbg !3478
  %266 = mul nsw i64 %259, %59, !dbg !3479
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !3480
  %268 = zext i1 %265 to i32, !dbg !3480
  br label %269, !dbg !3480

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261, !dbg !3562
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3460, metadata !607), !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3460, metadata !607), !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3453, metadata !607), !dbg !3471
  br label %184, !dbg !3552

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !3497
  %275 = icmp slt i64 %274, %120, !dbg !3498
  %276 = mul nsw i64 %120, %59, !dbg !3499
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !3500
  %278 = zext i1 %275 to i32, !dbg !3500
  br label %279, !dbg !3500

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121, !dbg !3563
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3460, metadata !607), !dbg !3493
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3460, metadata !607), !dbg !3493
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3453, metadata !607), !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3453, metadata !607), !dbg !3491
  br label %184, !dbg !3552

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !3507
  %285 = icmp slt i64 %284, %133, !dbg !3508
  %286 = mul nsw i64 %133, %59, !dbg !3509
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !3510
  %288 = zext i1 %285 to i32, !dbg !3510
  br label %289, !dbg !3510

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134, !dbg !3564
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3503
  %293 = icmp slt i64 %290, %124, !dbg !3504
  br i1 %293, label %300, label %294, !dbg !3506

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !3507
  %296 = icmp slt i64 %295, %290, !dbg !3508
  %297 = mul nsw i64 %290, %59, !dbg !3509
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !3510
  %299 = zext i1 %296 to i32, !dbg !3510
  br label %300, !dbg !3510

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292, !dbg !3564
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3503
  %304 = icmp slt i64 %301, %124, !dbg !3504
  br i1 %304, label %311, label %305, !dbg !3506

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !3507
  %307 = icmp slt i64 %306, %301, !dbg !3508
  %308 = mul nsw i64 %301, %59, !dbg !3509
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !3510
  %310 = zext i1 %307 to i32, !dbg !3510
  br label %311, !dbg !3510

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303, !dbg !3564
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3503
  %315 = icmp slt i64 %312, %124, !dbg !3504
  br i1 %315, label %322, label %316, !dbg !3506

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !3507
  %318 = icmp slt i64 %317, %312, !dbg !3508
  %319 = mul nsw i64 %312, %59, !dbg !3509
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !3510
  %321 = zext i1 %318 to i32, !dbg !3510
  br label %322, !dbg !3510

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314, !dbg !3564
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3460, metadata !607), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3501
  br label %184, !dbg !3552

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !3517
  %328 = icmp slt i64 %327, %146, !dbg !3518
  %329 = mul nsw i64 %146, %59, !dbg !3519
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !3520
  %331 = zext i1 %328 to i32, !dbg !3520
  br label %332, !dbg !3520

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147, !dbg !3565
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3513
  %336 = icmp slt i64 %333, %137, !dbg !3514
  br i1 %336, label %343, label %337, !dbg !3516

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !3517
  %339 = icmp slt i64 %338, %333, !dbg !3518
  %340 = mul nsw i64 %333, %59, !dbg !3519
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !3520
  %342 = zext i1 %339 to i32, !dbg !3520
  br label %343, !dbg !3520

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335, !dbg !3565
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3513
  %347 = icmp slt i64 %344, %137, !dbg !3514
  br i1 %347, label %354, label %348, !dbg !3516

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !3517
  %350 = icmp slt i64 %349, %344, !dbg !3518
  %351 = mul nsw i64 %344, %59, !dbg !3519
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !3520
  %353 = zext i1 %350 to i32, !dbg !3520
  br label %354, !dbg !3520

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346, !dbg !3565
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3460, metadata !607), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3453, metadata !607), !dbg !3511
  br label %184, !dbg !3552

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !3534
  %360 = icmp slt i64 %359, %166, !dbg !3535
  %361 = mul nsw i64 %166, %59, !dbg !3536
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !3537
  %363 = zext i1 %360 to i32, !dbg !3537
  br label %364, !dbg !3537

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  %368 = icmp slt i64 %365, %157, !dbg !3531
  br i1 %368, label %375, label %369, !dbg !3533

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !3534
  %371 = icmp slt i64 %370, %365, !dbg !3535
  %372 = mul nsw i64 %365, %59, !dbg !3536
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !3537
  %374 = zext i1 %371 to i32, !dbg !3537
  br label %375, !dbg !3537

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  %379 = icmp slt i64 %376, %157, !dbg !3531
  br i1 %379, label %386, label %380, !dbg !3533

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !3534
  %382 = icmp slt i64 %381, %376, !dbg !3535
  %383 = mul nsw i64 %376, %59, !dbg !3536
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !3537
  %385 = zext i1 %382 to i32, !dbg !3537
  br label %386, !dbg !3537

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  %390 = icmp slt i64 %387, %157, !dbg !3531
  br i1 %390, label %397, label %391, !dbg !3533

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !3534
  %393 = icmp slt i64 %392, %387, !dbg !3535
  %394 = mul nsw i64 %387, %59, !dbg !3536
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !3537
  %396 = zext i1 %393 to i32, !dbg !3537
  br label %397, !dbg !3537

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  %401 = icmp slt i64 %398, %157, !dbg !3531
  br i1 %401, label %408, label %402, !dbg !3533

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !3534
  %404 = icmp slt i64 %403, %398, !dbg !3535
  %405 = mul nsw i64 %398, %59, !dbg !3536
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !3537
  %407 = zext i1 %404 to i32, !dbg !3537
  br label %408, !dbg !3537

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  %412 = icmp slt i64 %409, %157, !dbg !3531
  br i1 %412, label %419, label %413, !dbg !3533

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !3534
  %415 = icmp slt i64 %414, %409, !dbg !3535
  %416 = mul nsw i64 %409, %59, !dbg !3536
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !3537
  %418 = zext i1 %415 to i32, !dbg !3537
  br label %419, !dbg !3537

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3530
  %423 = icmp slt i64 %420, %157, !dbg !3531
  br i1 %423, label %430, label %424, !dbg !3533

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !3534
  %426 = icmp slt i64 %425, %420, !dbg !3535
  %427 = mul nsw i64 %420, %59, !dbg !3536
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !3537
  %429 = zext i1 %426 to i32, !dbg !3537
  br label %430, !dbg !3537

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3460, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3528
  br label %184, !dbg !3552

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !3544
  %436 = icmp slt i64 %435, %179, !dbg !3545
  %437 = mul nsw i64 %179, %59, !dbg !3546
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !3547
  %439 = zext i1 %436 to i32, !dbg !3547
  br label %440, !dbg !3547

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180, !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3540
  %444 = icmp slt i64 %441, %170, !dbg !3541
  br i1 %444, label %451, label %445, !dbg !3543

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !3544
  %447 = icmp slt i64 %446, %441, !dbg !3545
  %448 = mul nsw i64 %441, %59, !dbg !3546
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !3547
  %450 = zext i1 %447 to i32, !dbg !3547
  br label %451, !dbg !3547

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443, !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3540
  %455 = icmp slt i64 %452, %170, !dbg !3541
  br i1 %455, label %462, label %456, !dbg !3543

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !3544
  %458 = icmp slt i64 %457, %452, !dbg !3545
  %459 = mul nsw i64 %452, %59, !dbg !3546
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !3547
  %461 = zext i1 %458 to i32, !dbg !3547
  br label %462, !dbg !3547

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454, !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3540
  %466 = icmp slt i64 %463, %170, !dbg !3541
  br i1 %466, label %473, label %467, !dbg !3543

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !3544
  %469 = icmp slt i64 %468, %463, !dbg !3545
  %470 = mul nsw i64 %463, %59, !dbg !3546
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !3547
  %472 = zext i1 %469 to i32, !dbg !3547
  br label %473, !dbg !3547

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465, !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3540
  %477 = icmp slt i64 %474, %170, !dbg !3541
  br i1 %477, label %484, label %478, !dbg !3543

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !3544
  %480 = icmp slt i64 %479, %474, !dbg !3545
  %481 = mul nsw i64 %474, %59, !dbg !3546
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !3547
  %483 = zext i1 %480 to i32, !dbg !3547
  br label %484, !dbg !3547

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476, !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3460, metadata !607), !dbg !3540
  %488 = icmp slt i64 %485, %170, !dbg !3541
  br i1 %488, label %495, label %489, !dbg !3543

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !3544
  %491 = icmp slt i64 %490, %485, !dbg !3545
  %492 = mul nsw i64 %485, %59, !dbg !3546
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !3547
  %494 = zext i1 %491 to i32, !dbg !3547
  br label %495, !dbg !3547

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487, !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3460, metadata !607), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3453, metadata !607), !dbg !3538
  br label %184, !dbg !3552
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3568 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3571, metadata !607), !dbg !3577
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3572, metadata !607), !dbg !3578
  %3 = icmp eq i64 %0, 0, !dbg !3579
  %4 = icmp eq i64 %1, 0, !dbg !3580
  %5 = or i1 %3, %4, !dbg !3581
  br i1 %5, label %12, label %6, !dbg !3581

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3574, metadata !607), !dbg !3583
  %8 = udiv i64 %7, %1, !dbg !3584
  %9 = icmp eq i64 %8, %0, !dbg !3586
  br i1 %9, label %12, label %10, !dbg !3587

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #16, !dbg !3588
  store i32 12, i32* %11, align 4, !dbg !3590, !tbaa !778
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3571, metadata !607), !dbg !3577
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3572, metadata !607), !dbg !3578
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3591
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3573, metadata !607), !dbg !3592
  br label %16, !dbg !3593

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3594
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3595 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3612, metadata !607), !dbg !3621
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3613, metadata !607), !dbg !3622
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3614, metadata !607), !dbg !3623
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3615, metadata !607), !dbg !3624
  %6 = bitcast i32* %5 to i8*, !dbg !3625
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3625
  %7 = icmp eq i32* %0, null, !dbg !3626
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3612, metadata !607), !dbg !3621
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3628
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3612, metadata !607), !dbg !3621
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3616, metadata !607), !dbg !3630
  %10 = icmp ugt i64 %9, -3, !dbg !3631
  %11 = icmp ne i64 %2, 0, !dbg !3632
  %12 = and i1 %11, %10, !dbg !3633
  br i1 %12, label %13, label %18, !dbg !3633

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3634
  br i1 %14, label %18, label %15, !dbg !3635

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3636, !tbaa !742
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3618, metadata !607), !dbg !3637
  %17 = zext i8 %16 to i32, !dbg !3638
  store i32 %17, i32* %8, align 4, !dbg !3639, !tbaa !778
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3640
  ret i64 %19, !dbg !3640
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3641 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3686, metadata !607), !dbg !3691
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3692
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3693, metadata !607), !dbg !3697
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3699
  %4 = load i32, i32* %3, align 8, !dbg !3699, !tbaa !3700
  %5 = and i32 %4, 32, !dbg !3699
  %6 = icmp eq i32 %5, 0, !dbg !3702
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3703
  %8 = icmp ne i32 %7, 0, !dbg !3704
  br i1 %6, label %9, label %19, !dbg !3705

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3707
  %11 = xor i1 %8, true, !dbg !3708
  %12 = or i1 %10, %11, !dbg !3708
  %13 = sext i1 %8 to i32, !dbg !3708
  br i1 %12, label %22, label %14, !dbg !3708

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #16, !dbg !3709
  %16 = load i32, i32* %15, align 4, !dbg !3709, !tbaa !778
  %17 = icmp ne i32 %16, 9, !dbg !3710
  %18 = sext i1 %17 to i32, !dbg !3711
  br label %22, !dbg !3711

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3712

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #16, !dbg !3714
  store i32 0, i32* %21, align 4, !dbg !3716, !tbaa !778
  br label %22, !dbg !3714

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3717
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3718 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3723, metadata !607), !dbg !3726
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3724, metadata !607), !dbg !3727
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3728
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3725, metadata !607), !dbg !3729
  %3 = icmp eq i8* %2, null, !dbg !3730
  br i1 %3, label %11, label %4, !dbg !3732

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i64 0, i64 0)) #14, !dbg !3733
  %6 = icmp eq i32 %5, 0, !dbg !3738
  br i1 %6, label %10, label %7, !dbg !3739

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0)) #14, !dbg !3740
  %9 = icmp eq i32 %8, 0, !dbg !3741
  br i1 %9, label %10, label %11, !dbg !3742

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3724, metadata !607), !dbg !3727
  br label %11, !dbg !3743

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3744
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3745 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3751, metadata !607), !dbg !3825
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3818, metadata !607), !dbg !3828
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3829
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3749, metadata !607), !dbg !3830
  %4 = icmp eq i8* %3, null, !dbg !3831
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %3, !dbg !3833
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3749, metadata !607), !dbg !3830
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3834, !tbaa !614
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3765, metadata !607) #10, !dbg !3835
  %7 = icmp eq i8* %6, null, !dbg !3836
  br i1 %7, label %8, label %123, !dbg !3837

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.140, i64 0, i64 0)) #10, !dbg !3838
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3766, metadata !607) #10, !dbg !3839
  %10 = icmp eq i8* %9, null, !dbg !3840
  br i1 %10, label %14, label %11, !dbg !3842

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3843, !tbaa !742
  %13 = icmp eq i8 %12, 0, !dbg !3844
  br i1 %13, label %14, label %15, !dbg !3845

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3846

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.141, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3766, metadata !607) #10, !dbg !3839
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3847
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3769, metadata !607) #10, !dbg !3848
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3771, metadata !607) #10, !dbg !3849
  %18 = icmp eq i64 %17, 0, !dbg !3850
  br i1 %18, label %24, label %19, !dbg !3851

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3852
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3852
  %22 = load i8, i8* %21, align 1, !dbg !3852, !tbaa !742
  %23 = icmp ne i8 %22, 47, !dbg !3852
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3853
  %27 = add i64 %17, 14, !dbg !3854
  %28 = add i64 %27, %26, !dbg !3855
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3856
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3768, metadata !607) #10, !dbg !3857
  %30 = icmp eq i8* %29, null, !dbg !3858
  br i1 %30, label %121, label %31, !dbg !3858

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3859
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3862

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3863, !tbaa !742
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3865
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3866
  br label %37, !dbg !3867

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3865
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3866
  br label %37, !dbg !3867

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3868
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3773, metadata !607) #10, !dbg !3869
  %39 = icmp slt i32 %38, 0, !dbg !3870
  br i1 %39, label %119, label %40, !dbg !3871

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.143, i64 0, i64 0)) #10, !dbg !3872
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3774, metadata !607) #10, !dbg !3873
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3874
  br i1 %42, label %43, label %45, !dbg !3875

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3876
  br label %119, !dbg !3878

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3815, metadata !607) #10, !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3816, metadata !607) #10, !dbg !3880
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3881

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3882

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3815, metadata !607) #10, !dbg !3879
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3816, metadata !607) #10, !dbg !3880
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3882
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3883
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3884, metadata !607) #10, !dbg !3889
  %54 = load i8*, i8** %48, align 8, !dbg !3891, !tbaa !3892
  %55 = load i8*, i8** %49, align 8, !dbg !3891, !tbaa !3893
  %56 = icmp ult i8* %54, %55, !dbg !3891
  br i1 %56, label %59, label %57, !dbg !3891, !prof !3894

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3891
  br label %63, !dbg !3891

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3891
  store i8* %60, i8** %48, align 8, !dbg !3891, !tbaa !3892
  %61 = load i8, i8* %54, align 1, !dbg !3891, !tbaa !742
  %62 = zext i8 %61 to i32, !dbg !3891
  br label %63, !dbg !3891

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3891
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3817, metadata !607) #10, !dbg !3895
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3896, !llvm.loop !3897

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3902

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3884, metadata !607) #10, !dbg !3904
  %67 = load i8*, i8** %48, align 8, !dbg !3902, !tbaa !3892
  %68 = load i8*, i8** %49, align 8, !dbg !3902, !tbaa !3893
  %69 = icmp ult i8* %67, %68, !dbg !3902
  br i1 %69, label %72, label %70, !dbg !3902, !prof !3894

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3902
  br label %76, !dbg !3902

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3902
  store i8* %73, i8** %48, align 8, !dbg !3902, !tbaa !3892
  %74 = load i8, i8* %67, align 1, !dbg !3902, !tbaa !742
  %75 = zext i8 %74 to i32, !dbg !3902
  br label %76, !dbg !3902

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3902
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3817, metadata !607) #10, !dbg !3895
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3905, !llvm.loop !3906

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3909
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.144, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3910
  %81 = icmp slt i32 %80, 2, !dbg !3912
  br i1 %81, label %112, label %82, !dbg !3913

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3914
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3822, metadata !607) #10, !dbg !3915
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3823, metadata !607) #10, !dbg !3917
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3824, metadata !607) #10, !dbg !3918
  %85 = icmp eq i64 %51, 0, !dbg !3919
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3921

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3816, metadata !607) #10, !dbg !3880
  %90 = add i64 %87, 2, !dbg !3922
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3815, metadata !607) #10, !dbg !3879
  br label %96, !dbg !3925

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3926
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3816, metadata !607) #10, !dbg !3880
  %94 = add i64 %93, 1, !dbg !3928
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3929
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3815, metadata !607) #10, !dbg !3879
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3815, metadata !607) #10, !dbg !3879
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3816, metadata !607) #10, !dbg !3880
  %99 = icmp eq i8* %98, null, !dbg !3930
  br i1 %99, label %100, label %102, !dbg !3932

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3816, metadata !607) #10, !dbg !3880
  call void @free(i8* %52) #10, !dbg !3933
  br label %112, !dbg !3935

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3936
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3936
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3937
  %104 = xor i64 %84, -1, !dbg !3938
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3938
  %106 = xor i64 %83, -1, !dbg !3939
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3939
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3940, metadata !607) #10, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3947, metadata !607) #10, !dbg !3948
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3950
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3951
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3940, metadata !607) #10, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3947, metadata !607) #10, !dbg !3952
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3954
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3955
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3815, metadata !607) #10, !dbg !3879
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3816, metadata !607) #10, !dbg !3880
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3936
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3936
  br label %50, !dbg !3956, !llvm.loop !3906

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3936
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3936
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3957
  %116 = icmp eq i64 %113, 0, !dbg !3958
  br i1 %116, label %119, label %117, !dbg !3960

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3961
  store i8 0, i8* %118, align 1, !dbg !3963, !tbaa !742
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3765, metadata !607) #10, !dbg !3835
  call void @free(i8* %29) #10, !dbg !3964
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3765, metadata !607) #10, !dbg !3835
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3965, !tbaa !614
  br label %123, !dbg !3966

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3765, metadata !607) #10, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3750, metadata !607), !dbg !3967
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3750, metadata !607), !dbg !3967
  %125 = load i8, i8* %124, align 1, !dbg !3968, !tbaa !742
  %126 = icmp eq i8 %125, 0, !dbg !3970
  br i1 %126, label %152, label %127, !dbg !3971

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3972

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3750, metadata !607), !dbg !3967
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3972
  %132 = icmp eq i32 %131, 0, !dbg !3974
  br i1 %132, label %139, label %133, !dbg !3975

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3976
  br i1 %134, label %135, label %143, !dbg !3977

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3978
  %137 = load i8, i8* %136, align 1, !dbg !3978, !tbaa !742
  %138 = icmp eq i8 %137, 0, !dbg !3979
  br i1 %138, label %139, label %143, !dbg !3980

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3981
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3983
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3984
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3749, metadata !607), !dbg !3830
  br label %152, !dbg !3985

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3986
  %145 = add i64 %144, 1, !dbg !3987
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3988
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3750, metadata !607), !dbg !3967
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3989
  %148 = add i64 %147, 1, !dbg !3990
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3991
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3750, metadata !607), !dbg !3967
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3750, metadata !607), !dbg !3967
  %150 = load i8, i8* %149, align 1, !dbg !3968, !tbaa !742
  %151 = icmp eq i8 %150, 0, !dbg !3970
  br i1 %151, label %152, label %128, !dbg !3971, !llvm.loop !3992

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3749, metadata !607), !dbg !3830
  %154 = load i8, i8* %153, align 1, !dbg !3994, !tbaa !742
  %155 = icmp eq i8 %154, 0, !dbg !3996
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i8* %153, !dbg !3997
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3749, metadata !607), !dbg !3830
  ret i8* %156, !dbg !3998
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3999 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4044, metadata !607), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4045, metadata !607), !dbg !4049
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4047, metadata !607), !dbg !4050
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4046, metadata !607), !dbg !4052
  %3 = icmp slt i32 %2, 0, !dbg !4053
  br i1 %3, label %4, label %6, !dbg !4055

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4056
  br label %24, !dbg !4057

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4058
  %8 = icmp eq i32 %7, 0, !dbg !4058
  br i1 %8, label %13, label %9, !dbg !4060

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4061
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4062
  %12 = icmp eq i64 %11, -1, !dbg !4063
  br i1 %12, label %16, label %13, !dbg !4064

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4065
  %15 = icmp eq i32 %14, 0, !dbg !4065
  br i1 %15, label %16, label %18, !dbg !4066

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4045, metadata !607), !dbg !4049
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4067
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4047, metadata !607), !dbg !4050
  br label %24, !dbg !4068

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #16, !dbg !4069
  %20 = load i32, i32* %19, align 4, !dbg !4069, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4045, metadata !607), !dbg !4049
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4045, metadata !607), !dbg !4049
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4067
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4047, metadata !607), !dbg !4050
  %22 = icmp eq i32 %20, 0, !dbg !4070
  br i1 %22, label %24, label %23, !dbg !4068

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4072, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4047, metadata !607), !dbg !4050
  br label %24, !dbg !4074

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4075
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4076 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4121, metadata !607), !dbg !4122
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4123
  br i1 %2, label %6, label %3, !dbg !4125

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4126
  %5 = icmp eq i32 %4, 0, !dbg !4126
  br i1 %5, label %6, label %8, !dbg !4127

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4128
  br label %17, !dbg !4129

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4130, metadata !607) #10, !dbg !4135
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4137
  %10 = load i32, i32* %9, align 8, !dbg !4137, !tbaa !3700
  %11 = and i32 %10, 256, !dbg !4139
  %12 = icmp eq i32 %11, 0, !dbg !4139
  br i1 %12, label %15, label %13, !dbg !4140

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4141
  br label %15, !dbg !4141

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4142
  br label %17, !dbg !4143

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4144
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4145 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4190, metadata !607), !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4191, metadata !607), !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4192, metadata !607), !dbg !4198
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4199
  %5 = load i8*, i8** %4, align 8, !dbg !4199, !tbaa !3893
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4200
  %7 = load i8*, i8** %6, align 8, !dbg !4200, !tbaa !3892
  %8 = icmp eq i8* %5, %7, !dbg !4201
  br i1 %8, label %9, label %28, !dbg !4202

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4203
  %11 = load i8*, i8** %10, align 8, !dbg !4203, !tbaa !4204
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4205
  %13 = load i8*, i8** %12, align 8, !dbg !4205, !tbaa !4206
  %14 = icmp eq i8* %11, %13, !dbg !4207
  br i1 %14, label %15, label %28, !dbg !4208

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4209
  %17 = load i8*, i8** %16, align 8, !dbg !4209, !tbaa !4210
  %18 = icmp eq i8* %17, null, !dbg !4211
  br i1 %18, label %19, label %28, !dbg !4212

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4213
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4214
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4193, metadata !607), !dbg !4215
  %22 = icmp eq i64 %21, -1, !dbg !4216
  br i1 %22, label %30, label %23, !dbg !4218

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4219
  %25 = load i32, i32* %24, align 8, !dbg !4220, !tbaa !3700
  %26 = and i32 %25, -17, !dbg !4220
  store i32 %26, i32* %24, align 8, !dbg !4220, !tbaa !3700
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4221
  store i64 %21, i64* %27, align 8, !dbg !4222, !tbaa !4223
  br label %30, !dbg !4224

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4225
  br label %30, !dbg !4226

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4227
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { noreturn }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !103, !109, !117, !124, !131, !541, !185, !549, !566, !568, !579, !581, !583, !586, !588, !194, !590, !592, !594}
!llvm.ident = !{!596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596}
!llvm.module.flags = !{!597, !598, !599, !600, !601}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !91, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !61)
!3 = !DIFile(filename: "src/truncate.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !13, !28}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 60, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "rm_abs", value: 0)
!8 = !DIEnumerator(name: "rm_rel", value: 1)
!9 = !DIEnumerator(name: "rm_min", value: 2)
!10 = !DIEnumerator(name: "rm_max", value: 3)
!11 = !DIEnumerator(name: "rm_rdn", value: 4)
!12 = !DIEnumerator(name: "rm_rup", value: 5)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 46, size: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DIEnumerator(name: "_ISupper", value: 256)
!17 = !DIEnumerator(name: "_ISlower", value: 512)
!18 = !DIEnumerator(name: "_ISalpha", value: 1024)
!19 = !DIEnumerator(name: "_ISdigit", value: 2048)
!20 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!21 = !DIEnumerator(name: "_ISspace", value: 8192)
!22 = !DIEnumerator(name: "_ISprint", value: 16384)
!23 = !DIEnumerator(name: "_ISgraph", value: 32768)
!24 = !DIEnumerator(name: "_ISblank", value: 1)
!25 = !DIEnumerator(name: "_IScntrl", value: 2)
!26 = !DIEnumerator(name: "_ISpunct", value: 4)
!27 = !DIEnumerator(name: "_ISalnum", value: 8)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !29, line: 32, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!31 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!32 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!33 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!34 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!35 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!36 = !DIEnumerator(name: "c_quoting_style", value: 5)
!37 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!38 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!39 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!40 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!41 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!42 = !{!43, !44, !45, !50, !52, !53, !56, !59}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !46, line: 57, baseType: !47)
!46 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !48, line: 140, baseType: !49)
!48 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 62, baseType: !55)
!54 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !57, line: 111, baseType: !58)
!57 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !48, line: 61, baseType: !49)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !57, line: 112, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !48, line: 62, baseType: !55)
!61 = !{!62, !65, !67, !71, !0}
!62 = !DIGlobalVariableExpression(var: !63)
!63 = distinct !DIGlobalVariable(name: "no_create", scope: !2, file: !3, line: 41, type: !64, isLocal: true, isDefinition: true)
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DIGlobalVariableExpression(var: !66)
!66 = distinct !DIGlobalVariable(name: "block_mode", scope: !2, file: !3, line: 44, type: !64, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "ref_file", scope: !2, file: !3, line: 47, type: !69, isLocal: true, isDefinition: true)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "infomap", scope: !73, file: !74, line: 632, type: !88, isLocal: true, isDefinition: true)
!73 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !74, file: !74, line: 630, type: !75, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !77)
!74 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !DISubroutineType(types: !76)
!76 = !{null, !69}
!77 = !{!78, !79, !80, !87}
!78 = !DILocalVariable(name: "program", arg: 1, scope: !73, file: !74, line: 630, type: !69)
!79 = !DILocalVariable(name: "node", scope: !73, file: !74, line: 642, type: !69)
!80 = !DILocalVariable(name: "map_prog", scope: !73, file: !74, line: 643, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !73, file: !74, line: 632, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !83, file: !74, line: 632, baseType: !69, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !74, line: 632, baseType: !69, size: 64, offset: 64)
!87 = !DILocalVariable(name: "lc_messages", scope: !73, file: !74, line: 655, type: !69)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 896, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 7)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 1792, elements: !89)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !94, line: 50, size: 256, elements: !95)
!94 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{!96, !97, !98, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !94, line: 52, baseType: !69, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !93, file: !94, line: 55, baseType: !43, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !93, file: !94, line: 56, baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !93, file: !94, line: 57, baseType: !43, size: 32, offset: 192)
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "Version", scope: !103, file: !104, line: 2, type: !69, isLocal: false, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, globals: !106)
!104 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !{}
!106 = !{!101}
!107 = !DIGlobalVariableExpression(var: !108)
!108 = distinct !DIGlobalVariable(name: "file_name", scope: !109, file: !114, line: 36, type: !69, isLocal: true, isDefinition: true)
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, globals: !111)
!110 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!111 = !{!107, !112}
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !109, file: !114, line: 46, type: !64, isLocal: true, isDefinition: true)
!114 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "exit_failure", scope: !117, file: !120, line: 24, type: !121, isLocal: false, isDefinition: true)
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, globals: !119)
!118 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !{!115}
!120 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "program_name", scope: !124, file: !128, line: 33, type: !69, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !126, globals: !127)
!125 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!52, !50}
!127 = !{!122}
!128 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !131, file: !143, line: 77, type: !179, isLocal: false, isDefinition: true)
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !139, globals: !140)
!132 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{!28, !134, !13}
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !29, line: 242, size: 32, elements: !135)
!135 = !{!136, !137, !138}
!136 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!137 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!138 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!139 = !{!43, !44, !53, !50}
!140 = !{!129, !141, !148, !161, !163, !168, !175, !177}
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !131, file: !143, line: 93, type: !144, isLocal: false, isDefinition: true)
!143 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 320, elements: !146)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!146 = !{!147}
!147 = !DISubrange(count: 10)
!148 = !DIGlobalVariableExpression(var: !149)
!149 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !131, file: !143, line: 1043, type: !150, isLocal: false, isDefinition: true)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !143, line: 57, size: 448, elements: !151)
!151 = !{!152, !153, !154, !159, !160}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !150, file: !143, line: 60, baseType: !28, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !143, line: 63, baseType: !43, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !150, file: !143, line: 67, baseType: !155, size: 256, offset: 64)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 256, elements: !157)
!156 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!157 = !{!158}
!158 = !DISubrange(count: 8)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !150, file: !143, line: 70, baseType: !69, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !150, file: !143, line: 73, baseType: !69, size: 64, offset: 384)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !131, file: !143, line: 108, type: !150, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "slot0", scope: !131, file: !143, line: 834, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 256)
!168 = !DIGlobalVariableExpression(var: !169)
!169 = distinct !DIGlobalVariable(name: "slotvec", scope: !131, file: !143, line: 837, type: !170, isLocal: true, isDefinition: true)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !143, line: 826, size: 128, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !171, file: !143, line: 828, baseType: !53, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !171, file: !143, line: 829, baseType: !50, size: 64, offset: 64)
!175 = !DIGlobalVariableExpression(var: !176)
!176 = distinct !DIGlobalVariable(name: "nslots", scope: !131, file: !143, line: 835, type: !43, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "slotvec0", scope: !131, file: !143, line: 836, type: !171, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 704, elements: !181)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!181 = !{!182}
!182 = !DISubrange(count: 11)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !185, file: !188, line: 26, type: !189, isLocal: false, isDefinition: true)
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, globals: !187)
!186 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!187 = !{!183}
!188 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 376, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 47)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !194, file: !539, line: 120, type: !540, isLocal: true, isDefinition: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !196, retainedTypes: !535, globals: !538)
!195 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!196 = !{!197}
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 41, size: 32, elements: !199)
!198 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!200 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!201 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!202 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!203 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!204 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!205 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!206 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!207 = !DIEnumerator(name: "DAY_1", value: 131079)
!208 = !DIEnumerator(name: "DAY_2", value: 131080)
!209 = !DIEnumerator(name: "DAY_3", value: 131081)
!210 = !DIEnumerator(name: "DAY_4", value: 131082)
!211 = !DIEnumerator(name: "DAY_5", value: 131083)
!212 = !DIEnumerator(name: "DAY_6", value: 131084)
!213 = !DIEnumerator(name: "DAY_7", value: 131085)
!214 = !DIEnumerator(name: "ABMON_1", value: 131086)
!215 = !DIEnumerator(name: "ABMON_2", value: 131087)
!216 = !DIEnumerator(name: "ABMON_3", value: 131088)
!217 = !DIEnumerator(name: "ABMON_4", value: 131089)
!218 = !DIEnumerator(name: "ABMON_5", value: 131090)
!219 = !DIEnumerator(name: "ABMON_6", value: 131091)
!220 = !DIEnumerator(name: "ABMON_7", value: 131092)
!221 = !DIEnumerator(name: "ABMON_8", value: 131093)
!222 = !DIEnumerator(name: "ABMON_9", value: 131094)
!223 = !DIEnumerator(name: "ABMON_10", value: 131095)
!224 = !DIEnumerator(name: "ABMON_11", value: 131096)
!225 = !DIEnumerator(name: "ABMON_12", value: 131097)
!226 = !DIEnumerator(name: "MON_1", value: 131098)
!227 = !DIEnumerator(name: "MON_2", value: 131099)
!228 = !DIEnumerator(name: "MON_3", value: 131100)
!229 = !DIEnumerator(name: "MON_4", value: 131101)
!230 = !DIEnumerator(name: "MON_5", value: 131102)
!231 = !DIEnumerator(name: "MON_6", value: 131103)
!232 = !DIEnumerator(name: "MON_7", value: 131104)
!233 = !DIEnumerator(name: "MON_8", value: 131105)
!234 = !DIEnumerator(name: "MON_9", value: 131106)
!235 = !DIEnumerator(name: "MON_10", value: 131107)
!236 = !DIEnumerator(name: "MON_11", value: 131108)
!237 = !DIEnumerator(name: "MON_12", value: 131109)
!238 = !DIEnumerator(name: "AM_STR", value: 131110)
!239 = !DIEnumerator(name: "PM_STR", value: 131111)
!240 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!241 = !DIEnumerator(name: "D_FMT", value: 131113)
!242 = !DIEnumerator(name: "T_FMT", value: 131114)
!243 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!244 = !DIEnumerator(name: "ERA", value: 131116)
!245 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!246 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!247 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!248 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!249 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!250 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!251 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!252 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!253 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!254 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!255 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!256 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!257 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!258 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!259 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!260 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!261 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!262 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!263 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!264 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!265 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!266 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!267 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!268 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!269 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!270 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!271 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!272 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!273 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!274 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!275 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!276 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!277 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!278 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!279 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!280 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!281 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!282 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!283 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!284 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!285 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!286 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!287 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!288 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!289 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!290 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!291 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!292 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!293 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!294 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!295 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!296 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!297 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!298 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!299 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!300 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!301 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!302 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!303 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!304 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!305 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!306 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!307 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!308 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!309 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!310 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!311 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!312 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!313 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!314 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!315 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!316 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!317 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!318 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!319 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!320 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!321 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!322 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!323 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!324 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!325 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!326 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!327 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!328 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!329 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!330 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!331 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!332 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!333 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!334 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!335 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!336 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!337 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!338 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!339 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!340 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!341 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!342 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!343 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!344 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!345 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!346 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!347 = !DIEnumerator(name: "CODESET", value: 14)
!348 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!349 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!350 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!351 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!402 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!403 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!404 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!419 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!420 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!421 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!422 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!423 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!424 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!425 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!426 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!427 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!428 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!429 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!430 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!431 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!432 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!433 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!434 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!435 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!436 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!437 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!438 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!439 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!440 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!441 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!458 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!459 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!462 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!463 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!464 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!465 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!466 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!467 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!468 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!469 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!470 = !DIEnumerator(name: "THOUSEP", value: 65537)
!471 = !DIEnumerator(name: "__GROUPING", value: 65538)
!472 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!473 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!474 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!475 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!476 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!477 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!478 = !DIEnumerator(name: "__YESSTR", value: 327682)
!479 = !DIEnumerator(name: "__NOSTR", value: 327683)
!480 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!481 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!482 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!483 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!484 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!485 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!486 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!487 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!488 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!489 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!490 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!491 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!492 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!493 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!494 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!496 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!499 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!500 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!501 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!502 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!503 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!504 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!505 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!506 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!507 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!508 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!509 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!510 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!511 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!512 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!513 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!514 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!515 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!516 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!533 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!534 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!535 = !{!52, !50, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!538 = !{!192}
!539 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!540 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!541 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !543, retainedTypes: !548)
!542 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!543 = !{!544}
!544 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !545, line: 41, size: 32, elements: !546)
!545 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !{!547}
!547 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!548 = !{!52}
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !565)
!550 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !{!552}
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !554, file: !553, line: 192, size: 32, elements: !563)
!553 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = distinct !DISubprogram(name: "x2nrealloc", scope: !553, file: !553, line: 180, type: !555, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !558)
!555 = !DISubroutineType(types: !556)
!556 = !{!52, !52, !557, !53}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!558 = !{!559, !560, !561, !562}
!559 = !DILocalVariable(name: "p", arg: 1, scope: !554, file: !553, line: 180, type: !52)
!560 = !DILocalVariable(name: "pn", arg: 2, scope: !554, file: !553, line: 180, type: !557)
!561 = !DILocalVariable(name: "s", arg: 3, scope: !554, file: !553, line: 180, type: !53)
!562 = !DILocalVariable(name: "n", scope: !554, file: !553, line: 182, type: !53)
!563 = !{!564}
!564 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!565 = !{!53, !50, !52}
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105)
!567 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !570)
!569 = !DIFile(filename: "./lib/xdectoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = !{!571}
!571 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !572, line: 26, size: 32, elements: !573)
!572 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!574, !575, !576, !577, !578}
!574 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!575 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!576 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!577 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!578 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !570)
!580 = !DIFile(filename: "./lib/xstrtoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !548)
!582 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !585)
!584 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = !{!53}
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105)
!587 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105)
!589 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105)
!591 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !548)
!593 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !105, retainedTypes: !548)
!595 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!597 = !{i32 2, !"Dwarf Version", i32 4}
!598 = !{i32 2, !"Debug Info Version", i32 3}
!599 = !{i32 1, !"wchar_size", i32 4}
!600 = !{i32 7, !"PIC Level", i32 2}
!601 = !{i32 7, !"PIE Level", i32 2}
!602 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 64, type: !603, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !43}
!605 = !{!606}
!606 = !DILocalVariable(name: "status", arg: 1, scope: !602, file: !3, line: 64, type: !43)
!607 = !DIExpression()
!608 = !DILocation(line: 64, column: 12, scope: !602)
!609 = !DILocation(line: 66, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !3, line: 66, column: 7)
!611 = !DILocation(line: 66, column: 7, scope: !602)
!612 = !DILocation(line: 67, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !3, line: 67, column: 5)
!614 = !{!615, !615, i64 0}
!615 = !{!"any pointer", !616, i64 0}
!616 = !{!"omnipotent char", !617, i64 0}
!617 = !{!"Simple C/C++ TBAA"}
!618 = !DILocation(line: 70, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !610, file: !3, line: 69, column: 5)
!620 = !DILocation(line: 71, column: 7, scope: !619)
!621 = !DILocation(line: 587, column: 3, scope: !622, inlinedAt: !625)
!622 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !74, file: !74, line: 585, type: !623, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !105)
!623 = !DISubroutineType(types: !624)
!624 = !{null}
!625 = distinct !DILocation(line: 81, column: 7, scope: !619)
!626 = !DILocation(line: 83, column: 7, scope: !619)
!627 = !DILocation(line: 86, column: 7, scope: !619)
!628 = !DILocation(line: 89, column: 7, scope: !619)
!629 = !DILocation(line: 92, column: 7, scope: !619)
!630 = !DILocation(line: 93, column: 7, scope: !619)
!631 = !DILocation(line: 595, column: 3, scope: !632, inlinedAt: !633)
!632 = distinct !DISubprogram(name: "emit_size_note", scope: !74, file: !74, line: 593, type: !623, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !105)
!633 = distinct !DILocation(line: 94, column: 7, scope: !619)
!634 = !DILocation(line: 95, column: 7, scope: !619)
!635 = !DILocation(line: 642, column: 15, scope: !73, inlinedAt: !636)
!636 = distinct !DILocation(line: 99, column: 7, scope: !619)
!637 = !DILocation(line: 651, column: 3, scope: !73, inlinedAt: !636)
!638 = !DILocation(line: 655, column: 29, scope: !73, inlinedAt: !636)
!639 = !DILocation(line: 655, column: 15, scope: !73, inlinedAt: !636)
!640 = !DILocation(line: 656, column: 7, scope: !641, inlinedAt: !636)
!641 = distinct !DILexicalBlock(scope: !73, file: !74, line: 656, column: 7)
!642 = !DILocation(line: 656, column: 19, scope: !641, inlinedAt: !636)
!643 = !DILocation(line: 656, column: 22, scope: !641, inlinedAt: !636)
!644 = !DILocation(line: 656, column: 7, scope: !73, inlinedAt: !636)
!645 = !DILocation(line: 662, column: 7, scope: !646, inlinedAt: !636)
!646 = distinct !DILexicalBlock(scope: !641, file: !74, line: 657, column: 5)
!647 = !DILocation(line: 664, column: 5, scope: !646, inlinedAt: !636)
!648 = !DILocation(line: 665, column: 3, scope: !73, inlinedAt: !636)
!649 = !DILocation(line: 667, column: 3, scope: !73, inlinedAt: !636)
!650 = !DILocation(line: 101, column: 3, scope: !602)
!651 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 213, type: !652, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !655)
!652 = !DISubroutineType(types: !653)
!653 = !{!43, !43, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !664, !665, !666, !667, !668, !707, !708, !711, !714}
!656 = !DILocalVariable(name: "argc", arg: 1, scope: !651, file: !3, line: 213, type: !43)
!657 = !DILocalVariable(name: "argv", arg: 2, scope: !651, file: !3, line: 213, type: !654)
!658 = !DILocalVariable(name: "got_size", scope: !651, file: !3, line: 215, type: !64)
!659 = !DILocalVariable(name: "errors", scope: !651, file: !3, line: 216, type: !64)
!660 = !DILocalVariable(name: "size", scope: !651, file: !3, line: 217, type: !45)
!661 = !DILocalVariable(name: "rsize", scope: !651, file: !3, line: 218, type: !45)
!662 = !DILocalVariable(name: "rel_mode", scope: !651, file: !3, line: 219, type: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !3, line: 61, baseType: !5)
!664 = !DILocalVariable(name: "c", scope: !651, file: !3, line: 220, type: !43)
!665 = !DILocalVariable(name: "fd", scope: !651, file: !3, line: 220, type: !43)
!666 = !DILocalVariable(name: "oflags", scope: !651, file: !3, line: 220, type: !43)
!667 = !DILocalVariable(name: "fname", scope: !651, file: !3, line: 221, type: !69)
!668 = !DILocalVariable(name: "sb", scope: !669, file: !3, line: 335, type: !671)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 334, column: 5)
!670 = distinct !DILexicalBlock(scope: !651, file: !3, line: 333, column: 7)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !672, line: 46, size: 1152, elements: !673)
!672 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!673 = !{!674, !676, !678, !680, !682, !684, !686, !687, !688, !689, !691, !693, !701, !702, !703}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !671, file: !672, line: 48, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !48, line: 133, baseType: !55)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !671, file: !672, line: 53, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !48, line: 136, baseType: !55)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !671, file: !672, line: 61, baseType: !679, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !48, line: 139, baseType: !55)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !671, file: !672, line: 62, baseType: !681, size: 32, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !48, line: 138, baseType: !156)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !671, file: !672, line: 64, baseType: !683, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !48, line: 134, baseType: !156)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !671, file: !672, line: 65, baseType: !685, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !48, line: 135, baseType: !156)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !671, file: !672, line: 67, baseType: !43, size: 32, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !671, file: !672, line: 69, baseType: !675, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !671, file: !672, line: 74, baseType: !47, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !671, file: !672, line: 78, baseType: !690, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !48, line: 162, baseType: !49)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !671, file: !672, line: 80, baseType: !692, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !48, line: 167, baseType: !49)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !671, file: !672, line: 91, baseType: !694, size: 128, offset: 576)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !695, line: 8, size: 128, elements: !696)
!695 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!696 = !{!697, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !694, file: !695, line: 10, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !48, line: 148, baseType: !49)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !694, file: !695, line: 11, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !48, line: 184, baseType: !49)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !671, file: !672, line: 92, baseType: !694, size: 128, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !671, file: !672, line: 93, baseType: !694, size: 128, offset: 832)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !671, file: !672, line: 106, baseType: !704, size: 192, offset: 960)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 192, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 3)
!707 = !DILocalVariable(name: "file_size", scope: !669, file: !3, line: 336, type: !45)
!708 = !DILocalVariable(name: "ref_fd", scope: !709, file: !3, line: 343, type: !43)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 342, column: 9)
!710 = distinct !DILexicalBlock(scope: !669, file: !3, line: 339, column: 11)
!711 = !DILocalVariable(name: "file_end", scope: !712, file: !3, line: 346, type: !45)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 345, column: 13)
!713 = distinct !DILexicalBlock(scope: !709, file: !3, line: 344, column: 15)
!714 = !DILocalVariable(name: "saved_errno", scope: !712, file: !3, line: 347, type: !43)
!715 = !DILocation(line: 213, column: 11, scope: !651)
!716 = !DILocation(line: 213, column: 24, scope: !651)
!717 = !DILocation(line: 215, column: 8, scope: !651)
!718 = !DILocation(line: 216, column: 8, scope: !651)
!719 = !DILocation(line: 218, column: 9, scope: !651)
!720 = !DILocation(line: 219, column: 14, scope: !651)
!721 = !DILocation(line: 220, column: 10, scope: !651)
!722 = !DILocation(line: 224, column: 21, scope: !651)
!723 = !DILocation(line: 224, column: 3, scope: !651)
!724 = !DILocation(line: 225, column: 3, scope: !651)
!725 = !DILocation(line: 226, column: 3, scope: !651)
!726 = !DILocation(line: 227, column: 3, scope: !651)
!727 = !DILocation(line: 229, column: 3, scope: !651)
!728 = !DILocation(line: 231, column: 3, scope: !651)
!729 = !DILocation(line: 231, column: 15, scope: !651)
!730 = !DILocation(line: 217, column: 9, scope: !651)
!731 = !DILocation(line: 220, column: 7, scope: !651)
!732 = !DILocation(line: 237, column: 11, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 234, column: 9)
!734 = distinct !DILexicalBlock(scope: !651, file: !3, line: 232, column: 5)
!735 = !DILocation(line: 241, column: 11, scope: !733)
!736 = !DILocation(line: 244, column: 22, scope: !733)
!737 = !DILocation(line: 244, column: 20, scope: !733)
!738 = !DILocation(line: 245, column: 11, scope: !733)
!739 = distinct !{!739, !728, !740}
!740 = !DILocation(line: 300, column: 5, scope: !651)
!741 = !DILocation(line: 249, column: 18, scope: !733)
!742 = !{!616, !616, i64 0}
!743 = !{!744, !744, i64 0}
!744 = !{!"short", !616, i64 0}
!745 = !DILocation(line: 249, column: 11, scope: !733)
!746 = !DILocation(line: 250, column: 19, scope: !733)
!747 = distinct !{!747, !745, !746}
!748 = !DILocation(line: 251, column: 19, scope: !733)
!749 = !DILocation(line: 251, column: 11, scope: !733)
!750 = !DILocation(line: 260, column: 15, scope: !751)
!751 = distinct !DILexicalBlock(scope: !733, file: !3, line: 252, column: 13)
!752 = !DILocation(line: 264, column: 15, scope: !751)
!753 = !DILocation(line: 268, column: 15, scope: !751)
!754 = !DILocation(line: 271, column: 18, scope: !733)
!755 = !DILocation(line: 271, column: 11, scope: !733)
!756 = !DILocation(line: 272, column: 19, scope: !733)
!757 = distinct !{!757, !755, !756}
!758 = !DILocation(line: 273, column: 30, scope: !759)
!759 = distinct !DILexicalBlock(scope: !733, file: !3, line: 273, column: 15)
!760 = !DILocation(line: 275, column: 19, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 275, column: 19)
!762 = distinct !DILexicalBlock(scope: !759, file: !3, line: 274, column: 13)
!763 = !DILocation(line: 275, column: 19, scope: !762)
!764 = !DILocation(line: 277, column: 32, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !3, line: 276, column: 17)
!766 = !DILocation(line: 277, column: 19, scope: !765)
!767 = !DILocation(line: 279, column: 19, scope: !765)
!768 = !DILocation(line: 286, column: 30, scope: !733)
!769 = !DILocation(line: 285, column: 18, scope: !733)
!770 = !DILocation(line: 288, column: 35, scope: !771)
!771 = distinct !DILexicalBlock(scope: !733, file: !3, line: 288, column: 15)
!772 = !DILocation(line: 288, column: 66, scope: !771)
!773 = !DILocation(line: 289, column: 13, scope: !771)
!774 = !DILocation(line: 293, column: 9, scope: !733)
!775 = !DILocation(line: 295, column: 9, scope: !733)
!776 = !DILocation(line: 298, column: 11, scope: !733)
!777 = !DILocation(line: 302, column: 11, scope: !651)
!778 = !{!779, !779, i64 0}
!779 = !{!"int", !616, i64 0}
!780 = !DILocation(line: 302, column: 8, scope: !651)
!781 = !DILocation(line: 306, column: 8, scope: !782)
!782 = distinct !DILexicalBlock(scope: !651, file: !3, line: 306, column: 7)
!783 = !DILocation(line: 306, column: 21, scope: !782)
!784 = !DILocation(line: 306, column: 17, scope: !782)
!785 = !DILocation(line: 308, column: 20, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !3, line: 307, column: 5)
!787 = !DILocation(line: 309, column: 14, scope: !786)
!788 = !DILocation(line: 309, column: 37, scope: !786)
!789 = !DILocation(line: 308, column: 7, scope: !786)
!790 = !DILocation(line: 310, column: 7, scope: !786)
!791 = !DILocation(line: 313, column: 32, scope: !792)
!792 = distinct !DILexicalBlock(scope: !651, file: !3, line: 313, column: 7)
!793 = !DILocation(line: 313, column: 28, scope: !792)
!794 = !DILocation(line: 313, column: 16, scope: !792)
!795 = !DILocation(line: 315, column: 20, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !3, line: 314, column: 5)
!797 = !DILocation(line: 316, column: 14, scope: !796)
!798 = !DILocation(line: 316, column: 37, scope: !796)
!799 = !DILocation(line: 315, column: 7, scope: !796)
!800 = !DILocation(line: 317, column: 7, scope: !796)
!801 = !DILocation(line: 320, column: 18, scope: !802)
!802 = distinct !DILexicalBlock(scope: !651, file: !3, line: 320, column: 7)
!803 = !DILocation(line: 322, column: 20, scope: !804)
!804 = distinct !DILexicalBlock(scope: !802, file: !3, line: 321, column: 5)
!805 = !DILocation(line: 323, column: 14, scope: !804)
!806 = !DILocation(line: 323, column: 42, scope: !804)
!807 = !DILocation(line: 322, column: 7, scope: !804)
!808 = !DILocation(line: 324, column: 7, scope: !804)
!809 = !DILocation(line: 327, column: 12, scope: !810)
!810 = distinct !DILexicalBlock(scope: !651, file: !3, line: 327, column: 7)
!811 = !DILocation(line: 327, column: 7, scope: !651)
!812 = !DILocation(line: 329, column: 20, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !3, line: 328, column: 5)
!814 = !DILocation(line: 329, column: 7, scope: !813)
!815 = !DILocation(line: 330, column: 7, scope: !813)
!816 = !DILocation(line: 333, column: 7, scope: !651)
!817 = !DILocation(line: 335, column: 7, scope: !669)
!818 = !DILocation(line: 336, column: 13, scope: !669)
!819 = !DILocation(line: 335, column: 19, scope: !669)
!820 = !DILocalVariable(name: "__path", arg: 1, scope: !821, file: !822, line: 449, type: !69)
!821 = distinct !DISubprogram(name: "stat", scope: !822, file: !822, line: 449, type: !823, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !826)
!822 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!823 = !DISubroutineType(types: !824)
!824 = !{!43, !69, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!826 = !{!820, !827}
!827 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !821, file: !822, line: 449, type: !825)
!828 = !DILocation(line: 449, column: 1, scope: !821, inlinedAt: !829)
!829 = distinct !DILocation(line: 337, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !669, file: !3, line: 337, column: 11)
!831 = !DILocation(line: 451, column: 10, scope: !821, inlinedAt: !829)
!832 = !DILocation(line: 337, column: 32, scope: !830)
!833 = !DILocation(line: 337, column: 11, scope: !669)
!834 = !DILocation(line: 338, column: 9, scope: !830)
!835 = !DILocalVariable(name: "sb", arg: 1, scope: !836, file: !74, line: 701, type: !839)
!836 = distinct !DISubprogram(name: "usable_st_size", scope: !74, file: !74, line: 701, type: !837, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !841)
!837 = !DISubroutineType(types: !838)
!838 = !{!64, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!841 = !{!835}
!842 = !DILocation(line: 701, column: 36, scope: !836, inlinedAt: !843)
!843 = distinct !DILocation(line: 339, column: 11, scope: !710)
!844 = !DILocation(line: 703, column: 11, scope: !836, inlinedAt: !843)
!845 = !{!846, !779, i64 24}
!846 = !{!"stat", !847, i64 0, !847, i64 8, !847, i64 16, !779, i64 24, !779, i64 28, !779, i64 32, !779, i64 36, !847, i64 40, !847, i64 48, !847, i64 56, !847, i64 64, !848, i64 72, !848, i64 88, !848, i64 104, !616, i64 120}
!847 = !{!"long", !616, i64 0}
!848 = !{!"timespec", !847, i64 0, !847, i64 8}
!849 = !DILocation(line: 703, column: 33, scope: !836, inlinedAt: !843)
!850 = !DILocation(line: 343, column: 30, scope: !709)
!851 = !DILocation(line: 343, column: 24, scope: !709)
!852 = !DILocation(line: 343, column: 15, scope: !709)
!853 = !DILocation(line: 344, column: 17, scope: !713)
!854 = !DILocation(line: 344, column: 15, scope: !709)
!855 = !DILocation(line: 346, column: 32, scope: !712)
!856 = !DILocation(line: 346, column: 21, scope: !712)
!857 = !DILocation(line: 347, column: 33, scope: !712)
!858 = !DILocation(line: 347, column: 19, scope: !712)
!859 = !DILocation(line: 348, column: 15, scope: !712)
!860 = !DILocation(line: 349, column: 21, scope: !861)
!861 = distinct !DILexicalBlock(scope: !712, file: !3, line: 349, column: 19)
!862 = !DILocation(line: 349, column: 19, scope: !712)
!863 = !DILocation(line: 354, column: 25, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 352, column: 17)
!865 = !DILocation(line: 340, column: 24, scope: !710)
!866 = !{!846, !847, i64 48}
!867 = !DILocation(line: 358, column: 21, scope: !868)
!868 = distinct !DILexicalBlock(scope: !669, file: !3, line: 358, column: 11)
!869 = !DILocation(line: 358, column: 11, scope: !669)
!870 = !DILocation(line: 359, column: 9, scope: !868)
!871 = !DILocation(line: 362, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !669, file: !3, line: 361, column: 11)
!873 = !DILocation(line: 365, column: 5, scope: !670)
!874 = !DILocation(line: 365, column: 5, scope: !669)
!875 = !DILocation(line: 367, column: 49, scope: !651)
!876 = !DILocation(line: 220, column: 19, scope: !651)
!877 = !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)
!878 = !DILocation(line: 369, column: 19, scope: !651)
!879 = !DILocation(line: 221, column: 15, scope: !651)
!880 = !DILocation(line: 369, column: 28, scope: !651)
!881 = !DILocation(line: 369, column: 3, scope: !651)
!882 = !DILocation(line: 369, column: 24, scope: !651)
!883 = !DILocation(line: 371, column: 17, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 371, column: 11)
!885 = distinct !DILexicalBlock(scope: !651, file: !3, line: 370, column: 5)
!886 = !DILocation(line: 371, column: 52, scope: !884)
!887 = !DILocation(line: 371, column: 11, scope: !885)
!888 = !DILocation(line: 377, column: 30, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 377, column: 15)
!890 = distinct !DILexicalBlock(scope: !884, file: !3, line: 372, column: 9)
!891 = !DILocation(line: 377, column: 27, scope: !889)
!892 = !DILocation(line: 377, column: 36, scope: !889)
!893 = !DILocation(line: 377, column: 15, scope: !890)
!894 = !DILocation(line: 379, column: 25, scope: !895)
!895 = distinct !DILexicalBlock(scope: !889, file: !3, line: 378, column: 13)
!896 = !DILocation(line: 379, column: 32, scope: !895)
!897 = !DILocation(line: 380, column: 22, scope: !895)
!898 = !DILocation(line: 379, column: 15, scope: !895)
!899 = !DILocation(line: 382, column: 13, scope: !895)
!900 = distinct !{!900, !881, !901}
!901 = !DILocation(line: 396, column: 5, scope: !651)
!902 = !DILocalVariable(name: "fd", arg: 1, scope: !903, file: !3, line: 106, type: !43)
!903 = distinct !DISubprogram(name: "do_ftruncate", scope: !3, file: !3, line: 106, type: !904, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!64, !43, !69, !45, !45, !663}
!906 = !{!902, !907, !908, !909, !910, !911, !912, !913, !917, !920, !923}
!907 = !DILocalVariable(name: "fname", arg: 2, scope: !903, file: !3, line: 106, type: !69)
!908 = !DILocalVariable(name: "ssize", arg: 3, scope: !903, file: !3, line: 106, type: !45)
!909 = !DILocalVariable(name: "rsize", arg: 4, scope: !903, file: !3, line: 106, type: !45)
!910 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !903, file: !3, line: 107, type: !663)
!911 = !DILocalVariable(name: "sb", scope: !903, file: !3, line: 109, type: !671)
!912 = !DILocalVariable(name: "nsize", scope: !903, file: !3, line: 110, type: !45)
!913 = !DILocalVariable(name: "blksize", scope: !914, file: !3, line: 119, type: !916)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 118, column: 5)
!915 = distinct !DILexicalBlock(scope: !903, file: !3, line: 117, column: 7)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!917 = !DILocalVariable(name: "fsize", scope: !918, file: !3, line: 133, type: !59)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 132, column: 5)
!919 = distinct !DILexicalBlock(scope: !903, file: !3, line: 131, column: 7)
!920 = !DILocalVariable(name: "file_size", scope: !921, file: !3, line: 139, type: !45)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 138, column: 9)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 135, column: 11)
!923 = !DILocalVariable(name: "overflow", scope: !924, file: !3, line: 176, type: !929)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 174, column: 9)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 172, column: 16)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 169, column: 16)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 167, column: 16)
!928 = distinct !DILexicalBlock(scope: !918, file: !3, line: 165, column: 11)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!930 = !DILocation(line: 106, column: 19, scope: !903, inlinedAt: !931)
!931 = distinct !DILocation(line: 389, column: 22, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 388, column: 9)
!933 = distinct !DILexicalBlock(scope: !885, file: !3, line: 387, column: 11)
!934 = !DILocation(line: 106, column: 35, scope: !903, inlinedAt: !931)
!935 = !DILocation(line: 106, column: 48, scope: !903, inlinedAt: !931)
!936 = !DILocation(line: 106, column: 61, scope: !903, inlinedAt: !931)
!937 = !DILocation(line: 107, column: 26, scope: !903, inlinedAt: !931)
!938 = !DILocation(line: 109, column: 3, scope: !903, inlinedAt: !931)
!939 = !DILocation(line: 112, column: 19, scope: !940, inlinedAt: !931)
!940 = distinct !DILexicalBlock(scope: !903, file: !3, line: 112, column: 7)
!941 = !DILocation(line: 109, column: 15, scope: !903, inlinedAt: !931)
!942 = !DILocalVariable(name: "__fd", arg: 1, scope: !943, file: !822, line: 463, type: !43)
!943 = distinct !DISubprogram(name: "fstat", scope: !822, file: !822, line: 463, type: !944, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!43, !43, !825}
!946 = !{!942, !947}
!947 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !943, file: !822, line: 463, type: !825)
!948 = !DILocation(line: 463, column: 1, scope: !943, inlinedAt: !949)
!949 = distinct !DILocation(line: 112, column: 50, scope: !940, inlinedAt: !931)
!950 = !DILocation(line: 465, column: 10, scope: !943, inlinedAt: !949)
!951 = !DILocation(line: 112, column: 66, scope: !940, inlinedAt: !931)
!952 = !DILocation(line: 112, column: 7, scope: !903, inlinedAt: !931)
!953 = !DILocation(line: 114, column: 17, scope: !954, inlinedAt: !931)
!954 = distinct !DILexicalBlock(scope: !940, file: !3, line: 113, column: 5)
!955 = !DILocation(line: 114, column: 24, scope: !954, inlinedAt: !931)
!956 = !DILocation(line: 114, column: 46, scope: !954, inlinedAt: !931)
!957 = !DILocation(line: 114, column: 7, scope: !954, inlinedAt: !931)
!958 = !DILocation(line: 115, column: 7, scope: !954, inlinedAt: !931)
!959 = !DILocation(line: 117, column: 7, scope: !903, inlinedAt: !931)
!960 = !DILocation(line: 119, column: 29, scope: !914, inlinedAt: !931)
!961 = !{!846, !847, i64 56}
!962 = !DILocation(line: 119, column: 19, scope: !914, inlinedAt: !931)
!963 = !DILocation(line: 120, column: 29, scope: !964, inlinedAt: !931)
!964 = distinct !DILexicalBlock(scope: !914, file: !3, line: 120, column: 11)
!965 = !DILocation(line: 120, column: 17, scope: !964, inlinedAt: !931)
!966 = !DILocation(line: 120, column: 39, scope: !964, inlinedAt: !931)
!967 = !DILocation(line: 120, column: 60, scope: !964, inlinedAt: !931)
!968 = !DILocation(line: 120, column: 48, scope: !964, inlinedAt: !931)
!969 = !DILocation(line: 120, column: 11, scope: !914, inlinedAt: !931)
!970 = !DILocation(line: 129, column: 13, scope: !914, inlinedAt: !931)
!971 = !DILocation(line: 123, column: 18, scope: !972, inlinedAt: !931)
!972 = distinct !DILexicalBlock(scope: !964, file: !3, line: 121, column: 9)
!973 = !DILocation(line: 126, column: 18, scope: !972, inlinedAt: !931)
!974 = !DILocation(line: 122, column: 11, scope: !972, inlinedAt: !931)
!975 = !DILocation(line: 131, column: 7, scope: !903, inlinedAt: !931)
!976 = !DILocation(line: 135, column: 11, scope: !918, inlinedAt: !931)
!977 = !DILocation(line: 701, column: 36, scope: !836, inlinedAt: !978)
!978 = distinct !DILocation(line: 140, column: 15, scope: !979, inlinedAt: !931)
!979 = distinct !DILexicalBlock(scope: !921, file: !3, line: 140, column: 15)
!980 = !DILocation(line: 703, column: 11, scope: !836, inlinedAt: !978)
!981 = !DILocation(line: 703, column: 33, scope: !836, inlinedAt: !978)
!982 = !DILocation(line: 142, column: 30, scope: !983, inlinedAt: !931)
!983 = distinct !DILexicalBlock(scope: !979, file: !3, line: 141, column: 13)
!984 = !DILocation(line: 139, column: 17, scope: !921, inlinedAt: !931)
!985 = !DILocation(line: 143, column: 29, scope: !986, inlinedAt: !931)
!986 = distinct !DILexicalBlock(scope: !983, file: !3, line: 143, column: 19)
!987 = !DILocation(line: 143, column: 19, scope: !983, inlinedAt: !931)
!988 = !DILocation(line: 147, column: 32, scope: !989, inlinedAt: !931)
!989 = distinct !DILexicalBlock(scope: !986, file: !3, line: 144, column: 17)
!990 = !DILocation(line: 148, column: 26, scope: !989, inlinedAt: !931)
!991 = !DILocation(line: 147, column: 19, scope: !989, inlinedAt: !931)
!992 = !DILocation(line: 149, column: 19, scope: !989, inlinedAt: !931)
!993 = !DILocation(line: 154, column: 27, scope: !994, inlinedAt: !931)
!994 = distinct !DILexicalBlock(scope: !979, file: !3, line: 153, column: 13)
!995 = !DILocation(line: 155, column: 29, scope: !996, inlinedAt: !931)
!996 = distinct !DILexicalBlock(scope: !994, file: !3, line: 155, column: 19)
!997 = !DILocation(line: 155, column: 19, scope: !994, inlinedAt: !931)
!998 = !DILocation(line: 157, column: 29, scope: !999, inlinedAt: !931)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 156, column: 17)
!1000 = !DILocation(line: 157, column: 36, scope: !999, inlinedAt: !931)
!1001 = !DILocation(line: 158, column: 26, scope: !999, inlinedAt: !931)
!1002 = !DILocation(line: 157, column: 19, scope: !999, inlinedAt: !931)
!1003 = !DILocation(line: 159, column: 19, scope: !999, inlinedAt: !931)
!1004 = !DILocation(line: 133, column: 17, scope: !918, inlinedAt: !931)
!1005 = !DILocation(line: 165, column: 11, scope: !918, inlinedAt: !931)
!1006 = !DILocation(line: 166, column: 17, scope: !928, inlinedAt: !931)
!1007 = !DILocation(line: 110, column: 9, scope: !903, inlinedAt: !931)
!1008 = !DILocation(line: 166, column: 9, scope: !928, inlinedAt: !931)
!1009 = !DILocation(line: 168, column: 17, scope: !927, inlinedAt: !931)
!1010 = !DILocation(line: 168, column: 9, scope: !927, inlinedAt: !931)
!1011 = !DILocation(line: 171, column: 33, scope: !926, inlinedAt: !931)
!1012 = !DILocation(line: 171, column: 9, scope: !926, inlinedAt: !931)
!1013 = !DILocation(line: 176, column: 46, scope: !924, inlinedAt: !931)
!1014 = !DILocation(line: 176, column: 54, scope: !924, inlinedAt: !931)
!1015 = !DILocation(line: 176, column: 68, scope: !924, inlinedAt: !931)
!1016 = !DILocation(line: 176, column: 27, scope: !924, inlinedAt: !931)
!1017 = !DILocation(line: 177, column: 24, scope: !1018, inlinedAt: !931)
!1018 = distinct !DILexicalBlock(scope: !924, file: !3, line: 177, column: 15)
!1019 = !DILocation(line: 177, column: 15, scope: !924, inlinedAt: !931)
!1020 = !DILocation(line: 179, column: 28, scope: !1021, inlinedAt: !931)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 178, column: 13)
!1022 = !DILocation(line: 180, column: 22, scope: !1021, inlinedAt: !931)
!1023 = !DILocation(line: 179, column: 15, scope: !1021, inlinedAt: !931)
!1024 = !DILocation(line: 187, column: 33, scope: !1025, inlinedAt: !931)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 187, column: 15)
!1026 = distinct !DILexicalBlock(scope: !925, file: !3, line: 186, column: 9)
!1027 = !DILocation(line: 187, column: 21, scope: !1025, inlinedAt: !931)
!1028 = !DILocation(line: 187, column: 15, scope: !1026, inlinedAt: !931)
!1029 = !DILocation(line: 189, column: 28, scope: !1030, inlinedAt: !931)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 188, column: 13)
!1031 = !DILocation(line: 190, column: 22, scope: !1030, inlinedAt: !931)
!1032 = !DILocation(line: 189, column: 15, scope: !1030, inlinedAt: !931)
!1033 = !DILocation(line: 191, column: 15, scope: !1030, inlinedAt: !931)
!1034 = !DILocation(line: 193, column: 25, scope: !1026, inlinedAt: !931)
!1035 = !DILocation(line: 198, column: 7, scope: !903, inlinedAt: !931)
!1036 = !DILocation(line: 201, column: 7, scope: !1037, inlinedAt: !931)
!1037 = distinct !DILexicalBlock(scope: !903, file: !3, line: 201, column: 7)
!1038 = !DILocation(line: 201, column: 29, scope: !1037, inlinedAt: !931)
!1039 = !DILocation(line: 201, column: 7, scope: !903, inlinedAt: !931)
!1040 = !DILocation(line: 203, column: 17, scope: !1041, inlinedAt: !931)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 202, column: 5)
!1042 = !DILocation(line: 204, column: 14, scope: !1041, inlinedAt: !931)
!1043 = !DILocation(line: 204, column: 64, scope: !1041, inlinedAt: !931)
!1044 = !DILocation(line: 203, column: 7, scope: !1041, inlinedAt: !931)
!1045 = !DILocation(line: 206, column: 7, scope: !1041, inlinedAt: !931)
!1046 = !DILocation(line: 210, column: 1, scope: !903, inlinedAt: !931)
!1047 = !DILocation(line: 389, column: 18, scope: !932)
!1048 = !DILocation(line: 390, column: 15, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !932, file: !3, line: 390, column: 15)
!1050 = !DILocation(line: 390, column: 26, scope: !1049)
!1051 = !DILocation(line: 390, column: 15, scope: !932)
!1052 = !DILocation(line: 392, column: 25, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 391, column: 13)
!1054 = !DILocation(line: 392, column: 32, scope: !1053)
!1055 = !DILocation(line: 392, column: 57, scope: !1053)
!1056 = !DILocation(line: 392, column: 15, scope: !1053)
!1057 = !DILocation(line: 394, column: 13, scope: !1053)
!1058 = !DILocation(line: 398, column: 10, scope: !651)
!1059 = !DILocation(line: 399, column: 1, scope: !651)
!1060 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !114, file: !114, line: 41, type: !75, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1061)
!1061 = !{!1062}
!1062 = !DILocalVariable(name: "file", arg: 1, scope: !1060, file: !114, line: 41, type: !69)
!1063 = !DILocation(line: 41, column: 41, scope: !1060)
!1064 = !DILocation(line: 43, column: 13, scope: !1060)
!1065 = !DILocation(line: 44, column: 1, scope: !1060)
!1066 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !114, file: !114, line: 78, type: !1067, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1069)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !64}
!1069 = !{!1070}
!1070 = !DILocalVariable(name: "ignore", arg: 1, scope: !1066, file: !114, line: 78, type: !64)
!1071 = !DILocation(line: 78, column: 37, scope: !1066)
!1072 = !DILocation(line: 80, column: 16, scope: !1066)
!1073 = !{!1074, !1074, i64 0}
!1074 = !{!"_Bool", !616, i64 0}
!1075 = !DILocation(line: 81, column: 1, scope: !1066)
!1076 = distinct !DISubprogram(name: "close_stdout", scope: !114, file: !114, line: 107, type: !623, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1077)
!1077 = !{!1078}
!1078 = !DILocalVariable(name: "write_error", scope: !1079, file: !114, line: 112, type: !69)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !114, line: 111, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1076, file: !114, line: 109, column: 7)
!1081 = !DILocation(line: 109, column: 21, scope: !1080)
!1082 = !DILocation(line: 109, column: 7, scope: !1080)
!1083 = !DILocation(line: 109, column: 29, scope: !1080)
!1084 = !DILocation(line: 110, column: 7, scope: !1080)
!1085 = !DILocation(line: 110, column: 12, scope: !1080)
!1086 = !{i8 0, i8 2}
!1087 = !DILocation(line: 114, column: 19, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1079, file: !114, line: 113, column: 11)
!1089 = !DILocation(line: 110, column: 25, scope: !1080)
!1090 = !DILocation(line: 110, column: 28, scope: !1080)
!1091 = !DILocation(line: 110, column: 34, scope: !1080)
!1092 = !DILocation(line: 109, column: 7, scope: !1076)
!1093 = !DILocation(line: 112, column: 33, scope: !1079)
!1094 = !DILocation(line: 112, column: 19, scope: !1079)
!1095 = !DILocation(line: 113, column: 11, scope: !1088)
!1096 = !DILocation(line: 113, column: 11, scope: !1079)
!1097 = !DILocation(line: 114, column: 36, scope: !1088)
!1098 = !DILocation(line: 114, column: 9, scope: !1088)
!1099 = !DILocation(line: 117, column: 9, scope: !1088)
!1100 = !DILocation(line: 119, column: 14, scope: !1079)
!1101 = !DILocation(line: 119, column: 7, scope: !1079)
!1102 = !DILocation(line: 122, column: 22, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1076, file: !114, line: 122, column: 8)
!1104 = !DILocation(line: 122, column: 8, scope: !1103)
!1105 = !DILocation(line: 122, column: 30, scope: !1103)
!1106 = !DILocation(line: 122, column: 8, scope: !1076)
!1107 = !DILocation(line: 123, column: 13, scope: !1103)
!1108 = !DILocation(line: 123, column: 6, scope: !1103)
!1109 = !DILocation(line: 124, column: 1, scope: !1076)
!1110 = distinct !DISubprogram(name: "set_program_name", scope: !128, file: !128, line: 39, type: !75, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1111)
!1111 = !{!1112, !1113, !1114}
!1112 = !DILocalVariable(name: "argv0", arg: 1, scope: !1110, file: !128, line: 39, type: !69)
!1113 = !DILocalVariable(name: "slash", scope: !1110, file: !128, line: 46, type: !69)
!1114 = !DILocalVariable(name: "base", scope: !1110, file: !128, line: 47, type: !69)
!1115 = !DILocation(line: 39, column: 31, scope: !1110)
!1116 = !DILocation(line: 51, column: 13, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1110, file: !128, line: 51, column: 7)
!1118 = !DILocation(line: 51, column: 7, scope: !1110)
!1119 = !DILocation(line: 55, column: 14, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !128, line: 52, column: 5)
!1121 = !DILocation(line: 54, column: 7, scope: !1120)
!1122 = !DILocation(line: 56, column: 7, scope: !1120)
!1123 = !DILocation(line: 59, column: 11, scope: !1110)
!1124 = !DILocation(line: 46, column: 15, scope: !1110)
!1125 = !DILocation(line: 60, column: 17, scope: !1110)
!1126 = !DILocation(line: 60, column: 33, scope: !1110)
!1127 = !DILocation(line: 60, column: 11, scope: !1110)
!1128 = !DILocation(line: 47, column: 15, scope: !1110)
!1129 = !DILocation(line: 61, column: 12, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1110, file: !128, line: 61, column: 7)
!1131 = !DILocation(line: 61, column: 20, scope: !1130)
!1132 = !DILocation(line: 61, column: 25, scope: !1130)
!1133 = !DILocation(line: 61, column: 42, scope: !1130)
!1134 = !DILocation(line: 61, column: 28, scope: !1130)
!1135 = !DILocation(line: 61, column: 61, scope: !1130)
!1136 = !DILocation(line: 61, column: 7, scope: !1110)
!1137 = !DILocation(line: 64, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !128, line: 64, column: 11)
!1139 = distinct !DILexicalBlock(scope: !1130, file: !128, line: 62, column: 5)
!1140 = !DILocation(line: 64, column: 36, scope: !1138)
!1141 = !DILocation(line: 64, column: 11, scope: !1139)
!1142 = !DILocation(line: 66, column: 24, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1138, file: !128, line: 65, column: 9)
!1144 = !DILocation(line: 70, column: 41, scope: !1143)
!1145 = !DILocation(line: 72, column: 9, scope: !1143)
!1146 = !DILocation(line: 84, column: 16, scope: !1110)
!1147 = !DILocation(line: 90, column: 27, scope: !1110)
!1148 = !DILocation(line: 92, column: 1, scope: !1110)
!1149 = distinct !DISubprogram(name: "clone_quoting_options", scope: !143, file: !143, line: 114, type: !1150, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1153)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!1152, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1153 = !{!1154, !1155, !1156}
!1154 = !DILocalVariable(name: "o", arg: 1, scope: !1149, file: !143, line: 114, type: !1152)
!1155 = !DILocalVariable(name: "e", scope: !1149, file: !143, line: 116, type: !43)
!1156 = !DILocalVariable(name: "p", scope: !1149, file: !143, line: 117, type: !1152)
!1157 = !DILocation(line: 114, column: 48, scope: !1149)
!1158 = !DILocation(line: 116, column: 11, scope: !1149)
!1159 = !DILocation(line: 116, column: 7, scope: !1149)
!1160 = !DILocation(line: 117, column: 40, scope: !1149)
!1161 = !DILocation(line: 117, column: 31, scope: !1149)
!1162 = !DILocation(line: 117, column: 27, scope: !1149)
!1163 = !DILocation(line: 119, column: 9, scope: !1149)
!1164 = !DILocation(line: 120, column: 3, scope: !1149)
!1165 = distinct !DISubprogram(name: "get_quoting_style", scope: !143, file: !143, line: 125, type: !1166, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1170)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!28, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!1170 = !{!1171}
!1171 = !DILocalVariable(name: "o", arg: 1, scope: !1165, file: !143, line: 125, type: !1168)
!1172 = !DILocation(line: 125, column: 50, scope: !1165)
!1173 = !DILocation(line: 127, column: 11, scope: !1165)
!1174 = !DILocation(line: 127, column: 46, scope: !1165)
!1175 = !{!1176, !616, i64 0}
!1176 = !{!"quoting_options", !616, i64 0, !779, i64 4, !616, i64 8, !615, i64 40, !615, i64 48}
!1177 = !DILocation(line: 127, column: 3, scope: !1165)
!1178 = distinct !DISubprogram(name: "set_quoting_style", scope: !143, file: !143, line: 133, type: !1179, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1181)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !1152, !28}
!1181 = !{!1182, !1183}
!1182 = !DILocalVariable(name: "o", arg: 1, scope: !1178, file: !143, line: 133, type: !1152)
!1183 = !DILocalVariable(name: "s", arg: 2, scope: !1178, file: !143, line: 133, type: !28)
!1184 = !DILocation(line: 133, column: 44, scope: !1178)
!1185 = !DILocation(line: 133, column: 66, scope: !1178)
!1186 = !DILocation(line: 135, column: 4, scope: !1178)
!1187 = !DILocation(line: 135, column: 39, scope: !1178)
!1188 = !DILocation(line: 135, column: 45, scope: !1178)
!1189 = !DILocation(line: 136, column: 1, scope: !1178)
!1190 = distinct !DISubprogram(name: "set_char_quoting", scope: !143, file: !143, line: 144, type: !1191, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1193)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!43, !1152, !51, !43}
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1200, !1201}
!1194 = !DILocalVariable(name: "o", arg: 1, scope: !1190, file: !143, line: 144, type: !1152)
!1195 = !DILocalVariable(name: "c", arg: 2, scope: !1190, file: !143, line: 144, type: !51)
!1196 = !DILocalVariable(name: "i", arg: 3, scope: !1190, file: !143, line: 144, type: !43)
!1197 = !DILocalVariable(name: "uc", scope: !1190, file: !143, line: 146, type: !537)
!1198 = !DILocalVariable(name: "p", scope: !1190, file: !143, line: 147, type: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1200 = !DILocalVariable(name: "shift", scope: !1190, file: !143, line: 149, type: !43)
!1201 = !DILocalVariable(name: "r", scope: !1190, file: !143, line: 150, type: !43)
!1202 = !DILocation(line: 144, column: 43, scope: !1190)
!1203 = !DILocation(line: 144, column: 51, scope: !1190)
!1204 = !DILocation(line: 144, column: 58, scope: !1190)
!1205 = !DILocation(line: 146, column: 17, scope: !1190)
!1206 = !DILocation(line: 148, column: 6, scope: !1190)
!1207 = !DILocation(line: 148, column: 62, scope: !1190)
!1208 = !DILocation(line: 148, column: 57, scope: !1190)
!1209 = !DILocation(line: 147, column: 17, scope: !1190)
!1210 = !DILocation(line: 149, column: 18, scope: !1190)
!1211 = !DILocation(line: 149, column: 15, scope: !1190)
!1212 = !DILocation(line: 149, column: 7, scope: !1190)
!1213 = !DILocation(line: 150, column: 12, scope: !1190)
!1214 = !DILocation(line: 150, column: 15, scope: !1190)
!1215 = !DILocation(line: 150, column: 25, scope: !1190)
!1216 = !DILocation(line: 150, column: 7, scope: !1190)
!1217 = !DILocation(line: 151, column: 13, scope: !1190)
!1218 = !DILocation(line: 151, column: 18, scope: !1190)
!1219 = !DILocation(line: 151, column: 23, scope: !1190)
!1220 = !DILocation(line: 151, column: 6, scope: !1190)
!1221 = !DILocation(line: 152, column: 3, scope: !1190)
!1222 = distinct !DISubprogram(name: "set_quoting_flags", scope: !143, file: !143, line: 160, type: !1223, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!43, !1152, !43}
!1225 = !{!1226, !1227, !1228}
!1226 = !DILocalVariable(name: "o", arg: 1, scope: !1222, file: !143, line: 160, type: !1152)
!1227 = !DILocalVariable(name: "i", arg: 2, scope: !1222, file: !143, line: 160, type: !43)
!1228 = !DILocalVariable(name: "r", scope: !1222, file: !143, line: 162, type: !43)
!1229 = !DILocation(line: 160, column: 44, scope: !1222)
!1230 = !DILocation(line: 160, column: 51, scope: !1222)
!1231 = !DILocation(line: 163, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1222, file: !143, line: 163, column: 7)
!1233 = !DILocation(line: 163, column: 7, scope: !1222)
!1234 = !DILocation(line: 165, column: 10, scope: !1222)
!1235 = !{!1176, !779, i64 4}
!1236 = !DILocation(line: 162, column: 7, scope: !1222)
!1237 = !DILocation(line: 166, column: 12, scope: !1222)
!1238 = !DILocation(line: 167, column: 3, scope: !1222)
!1239 = distinct !DISubprogram(name: "set_custom_quoting", scope: !143, file: !143, line: 171, type: !1240, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !1152, !69, !69}
!1242 = !{!1243, !1244, !1245}
!1243 = !DILocalVariable(name: "o", arg: 1, scope: !1239, file: !143, line: 171, type: !1152)
!1244 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1239, file: !143, line: 172, type: !69)
!1245 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1239, file: !143, line: 172, type: !69)
!1246 = !DILocation(line: 171, column: 45, scope: !1239)
!1247 = !DILocation(line: 172, column: 33, scope: !1239)
!1248 = !DILocation(line: 172, column: 57, scope: !1239)
!1249 = !DILocation(line: 174, column: 8, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1239, file: !143, line: 174, column: 7)
!1251 = !DILocation(line: 174, column: 7, scope: !1239)
!1252 = !DILocation(line: 176, column: 6, scope: !1239)
!1253 = !DILocation(line: 176, column: 12, scope: !1239)
!1254 = !DILocation(line: 177, column: 8, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1239, file: !143, line: 177, column: 7)
!1256 = !DILocation(line: 177, column: 23, scope: !1255)
!1257 = !DILocation(line: 177, column: 19, scope: !1255)
!1258 = !DILocation(line: 178, column: 5, scope: !1255)
!1259 = !DILocation(line: 179, column: 6, scope: !1239)
!1260 = !DILocation(line: 179, column: 17, scope: !1239)
!1261 = !{!1176, !615, i64 40}
!1262 = !DILocation(line: 180, column: 6, scope: !1239)
!1263 = !DILocation(line: 180, column: 18, scope: !1239)
!1264 = !{!1176, !615, i64 48}
!1265 = !DILocation(line: 181, column: 1, scope: !1239)
!1266 = distinct !DISubprogram(name: "quotearg_buffer", scope: !143, file: !143, line: 776, type: !1267, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1269)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!53, !50, !53, !69, !53, !1168}
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1270 = !DILocalVariable(name: "buffer", arg: 1, scope: !1266, file: !143, line: 776, type: !50)
!1271 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1266, file: !143, line: 776, type: !53)
!1272 = !DILocalVariable(name: "arg", arg: 3, scope: !1266, file: !143, line: 777, type: !69)
!1273 = !DILocalVariable(name: "argsize", arg: 4, scope: !1266, file: !143, line: 777, type: !53)
!1274 = !DILocalVariable(name: "o", arg: 5, scope: !1266, file: !143, line: 778, type: !1168)
!1275 = !DILocalVariable(name: "p", scope: !1266, file: !143, line: 780, type: !1168)
!1276 = !DILocalVariable(name: "e", scope: !1266, file: !143, line: 781, type: !43)
!1277 = !DILocalVariable(name: "r", scope: !1266, file: !143, line: 782, type: !53)
!1278 = !DILocation(line: 776, column: 24, scope: !1266)
!1279 = !DILocation(line: 776, column: 39, scope: !1266)
!1280 = !DILocation(line: 777, column: 30, scope: !1266)
!1281 = !DILocation(line: 777, column: 42, scope: !1266)
!1282 = !DILocation(line: 778, column: 48, scope: !1266)
!1283 = !DILocation(line: 780, column: 37, scope: !1266)
!1284 = !DILocation(line: 780, column: 33, scope: !1266)
!1285 = !DILocation(line: 781, column: 11, scope: !1266)
!1286 = !DILocation(line: 781, column: 7, scope: !1266)
!1287 = !DILocation(line: 783, column: 43, scope: !1266)
!1288 = !DILocation(line: 783, column: 53, scope: !1266)
!1289 = !DILocation(line: 783, column: 60, scope: !1266)
!1290 = !DILocation(line: 784, column: 43, scope: !1266)
!1291 = !DILocation(line: 784, column: 58, scope: !1266)
!1292 = !DILocation(line: 782, column: 14, scope: !1266)
!1293 = !DILocation(line: 782, column: 10, scope: !1266)
!1294 = !DILocation(line: 785, column: 9, scope: !1266)
!1295 = !DILocation(line: 786, column: 3, scope: !1266)
!1296 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !143, file: !143, line: 248, type: !1297, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1301)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!53, !50, !53, !69, !53, !28, !43, !1299, !69, !69}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1326, !1327, !1328, !1329, !1330, !1333, !1334, !1352, !1355, !1356, !1363}
!1302 = !DILocalVariable(name: "buffer", arg: 1, scope: !1296, file: !143, line: 248, type: !50)
!1303 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1296, file: !143, line: 248, type: !53)
!1304 = !DILocalVariable(name: "arg", arg: 3, scope: !1296, file: !143, line: 249, type: !69)
!1305 = !DILocalVariable(name: "argsize", arg: 4, scope: !1296, file: !143, line: 249, type: !53)
!1306 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1296, file: !143, line: 250, type: !28)
!1307 = !DILocalVariable(name: "flags", arg: 6, scope: !1296, file: !143, line: 250, type: !43)
!1308 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1296, file: !143, line: 251, type: !1299)
!1309 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1296, file: !143, line: 252, type: !69)
!1310 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1296, file: !143, line: 253, type: !69)
!1311 = !DILocalVariable(name: "i", scope: !1296, file: !143, line: 255, type: !53)
!1312 = !DILocalVariable(name: "len", scope: !1296, file: !143, line: 256, type: !53)
!1313 = !DILocalVariable(name: "orig_buffersize", scope: !1296, file: !143, line: 257, type: !53)
!1314 = !DILocalVariable(name: "quote_string", scope: !1296, file: !143, line: 258, type: !69)
!1315 = !DILocalVariable(name: "quote_string_len", scope: !1296, file: !143, line: 259, type: !53)
!1316 = !DILocalVariable(name: "backslash_escapes", scope: !1296, file: !143, line: 260, type: !64)
!1317 = !DILocalVariable(name: "unibyte_locale", scope: !1296, file: !143, line: 261, type: !64)
!1318 = !DILocalVariable(name: "elide_outer_quotes", scope: !1296, file: !143, line: 262, type: !64)
!1319 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1296, file: !143, line: 263, type: !64)
!1320 = !DILocalVariable(name: "encountered_single_quote", scope: !1296, file: !143, line: 264, type: !64)
!1321 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1296, file: !143, line: 265, type: !64)
!1322 = !DILocalVariable(name: "c", scope: !1323, file: !143, line: 394, type: !537)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !143, line: 393, column: 5)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !143, line: 392, column: 3)
!1325 = distinct !DILexicalBlock(scope: !1296, file: !143, line: 392, column: 3)
!1326 = !DILocalVariable(name: "esc", scope: !1323, file: !143, line: 395, type: !537)
!1327 = !DILocalVariable(name: "is_right_quote", scope: !1323, file: !143, line: 396, type: !64)
!1328 = !DILocalVariable(name: "escaping", scope: !1323, file: !143, line: 397, type: !64)
!1329 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1323, file: !143, line: 398, type: !64)
!1330 = !DILocalVariable(name: "m", scope: !1331, file: !143, line: 602, type: !53)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 600, column: 11)
!1332 = distinct !DILexicalBlock(scope: !1323, file: !143, line: 418, column: 9)
!1333 = !DILocalVariable(name: "printable", scope: !1331, file: !143, line: 604, type: !64)
!1334 = !DILocalVariable(name: "mbstate", scope: !1335, file: !143, line: 613, type: !1337)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !143, line: 612, column: 15)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !143, line: 606, column: 17)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1338, line: 6, baseType: !1339)
!1338 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1340, line: 21, baseType: !1341)
!1340 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1340, line: 13, size: 64, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1341, file: !1340, line: 15, baseType: !43, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1341, file: !1340, line: 20, baseType: !1345, size: 32, offset: 32)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !1340, line: 16, size: 32, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1345, file: !1340, line: 18, baseType: !156, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1345, file: !1340, line: 19, baseType: !1349, size: 32)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, elements: !1350)
!1350 = !{!1351}
!1351 = !DISubrange(count: 4)
!1352 = !DILocalVariable(name: "w", scope: !1353, file: !143, line: 623, type: !1354)
!1353 = distinct !DILexicalBlock(scope: !1335, file: !143, line: 622, column: 19)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !54, line: 90, baseType: !43)
!1355 = !DILocalVariable(name: "bytes", scope: !1353, file: !143, line: 624, type: !53)
!1356 = !DILocalVariable(name: "j", scope: !1357, file: !143, line: 649, type: !53)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !143, line: 648, column: 27)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !143, line: 646, column: 29)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !143, line: 641, column: 23)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !143, line: 633, column: 30)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !143, line: 628, column: 30)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !143, line: 626, column: 25)
!1363 = !DILocalVariable(name: "ilim", scope: !1364, file: !143, line: 676, type: !53)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !143, line: 673, column: 15)
!1365 = distinct !DILexicalBlock(scope: !1331, file: !143, line: 672, column: 17)
!1366 = !DILocation(line: 248, column: 33, scope: !1296)
!1367 = !DILocation(line: 248, column: 48, scope: !1296)
!1368 = !DILocation(line: 249, column: 39, scope: !1296)
!1369 = !DILocation(line: 249, column: 51, scope: !1296)
!1370 = !DILocation(line: 250, column: 46, scope: !1296)
!1371 = !DILocation(line: 250, column: 65, scope: !1296)
!1372 = !DILocation(line: 251, column: 47, scope: !1296)
!1373 = !DILocation(line: 252, column: 39, scope: !1296)
!1374 = !DILocation(line: 253, column: 39, scope: !1296)
!1375 = !DILocation(line: 256, column: 10, scope: !1296)
!1376 = !DILocation(line: 257, column: 10, scope: !1296)
!1377 = !DILocation(line: 258, column: 15, scope: !1296)
!1378 = !DILocation(line: 259, column: 10, scope: !1296)
!1379 = !DILocation(line: 260, column: 8, scope: !1296)
!1380 = !DILocation(line: 261, column: 25, scope: !1296)
!1381 = !DILocation(line: 261, column: 36, scope: !1296)
!1382 = !DILocation(line: 262, column: 8, scope: !1296)
!1383 = !DILocation(line: 263, column: 8, scope: !1296)
!1384 = !DILocation(line: 264, column: 8, scope: !1296)
!1385 = !DILocation(line: 265, column: 8, scope: !1296)
!1386 = !DILocation(line: 265, column: 3, scope: !1296)
!1387 = !DILocation(line: 308, column: 3, scope: !1296)
!1388 = !DILocation(line: 315, column: 11, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1296, file: !143, line: 309, column: 5)
!1390 = !DILocation(line: 315, column: 12, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1389, file: !143, line: 315, column: 11)
!1392 = !DILocation(line: 316, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !143, line: 316, column: 9)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !143, line: 316, column: 9)
!1395 = !DILocation(line: 316, column: 9, scope: !1394)
!1396 = !DILocation(line: 354, column: 26, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !143, line: 332, column: 11)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !143, line: 331, column: 13)
!1399 = distinct !DILexicalBlock(scope: !1389, file: !143, line: 330, column: 7)
!1400 = !DILocation(line: 355, column: 27, scope: !1397)
!1401 = !DILocation(line: 356, column: 11, scope: !1397)
!1402 = !DILocation(line: 357, column: 14, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !143, line: 357, column: 13)
!1404 = !DILocation(line: 357, column: 13, scope: !1399)
!1405 = !DILocation(line: 358, column: 43, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !143, line: 358, column: 11)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !143, line: 358, column: 11)
!1408 = !DILocation(line: 358, column: 11, scope: !1407)
!1409 = !DILocation(line: 359, column: 13, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !143, line: 359, column: 13)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !143, line: 359, column: 13)
!1412 = !DILocation(line: 359, column: 13, scope: !1411)
!1413 = !DILocation(line: 358, column: 70, scope: !1406)
!1414 = distinct !{!1414, !1408, !1415}
!1415 = !DILocation(line: 359, column: 13, scope: !1407)
!1416 = !DILocation(line: 362, column: 28, scope: !1399)
!1417 = !DILocation(line: 364, column: 7, scope: !1389)
!1418 = !DILocation(line: 367, column: 7, scope: !1389)
!1419 = !DILocation(line: 370, column: 7, scope: !1389)
!1420 = !DILocation(line: 373, column: 12, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1389, file: !143, line: 373, column: 11)
!1422 = !DILocation(line: 373, column: 11, scope: !1389)
!1423 = !DILocation(line: 378, column: 12, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1389, file: !143, line: 378, column: 11)
!1425 = !DILocation(line: 378, column: 11, scope: !1389)
!1426 = !DILocation(line: 379, column: 9, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !143, line: 379, column: 9)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !143, line: 379, column: 9)
!1429 = !DILocation(line: 379, column: 9, scope: !1428)
!1430 = !DILocation(line: 386, column: 7, scope: !1389)
!1431 = !DILocation(line: 389, column: 7, scope: !1389)
!1432 = !DILocation(line: 255, column: 10, scope: !1296)
!1433 = !DILocation(line: 392, column: 8, scope: !1325)
!1434 = !DILocation(line: 392, column: 27, scope: !1324)
!1435 = !DILocation(line: 392, column: 19, scope: !1324)
!1436 = !DILocation(line: 392, column: 60, scope: !1324)
!1437 = !DILocation(line: 392, column: 3, scope: !1325)
!1438 = !DILocation(line: 392, column: 41, scope: !1324)
!1439 = !DILocation(line: 392, column: 48, scope: !1324)
!1440 = !DILocation(line: 396, column: 12, scope: !1323)
!1441 = !DILocation(line: 397, column: 12, scope: !1323)
!1442 = !DILocation(line: 398, column: 12, scope: !1323)
!1443 = !DILocation(line: 401, column: 11, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1323, file: !143, line: 400, column: 11)
!1445 = !DILocation(line: 403, column: 17, scope: !1444)
!1446 = !DILocation(line: 404, column: 39, scope: !1444)
!1447 = !DILocation(line: 408, column: 32, scope: !1444)
!1448 = !DILocation(line: 404, column: 19, scope: !1444)
!1449 = !DILocation(line: 404, column: 15, scope: !1444)
!1450 = !DILocation(line: 409, column: 11, scope: !1444)
!1451 = !DILocation(line: 409, column: 26, scope: !1444)
!1452 = !DILocation(line: 409, column: 14, scope: !1444)
!1453 = !DILocation(line: 409, column: 63, scope: !1444)
!1454 = !DILocation(line: 400, column: 11, scope: !1323)
!1455 = !DILocation(line: 416, column: 11, scope: !1323)
!1456 = !DILocation(line: 394, column: 21, scope: !1323)
!1457 = !DILocation(line: 417, column: 7, scope: !1323)
!1458 = !DILocation(line: 420, column: 15, scope: !1332)
!1459 = !DILocation(line: 422, column: 15, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !143, line: 422, column: 15)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !143, line: 421, column: 13)
!1462 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 420, column: 15)
!1463 = !DILocation(line: 422, column: 15, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !143, line: 422, column: 15)
!1465 = !DILocation(line: 422, column: 15, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !143, line: 422, column: 15)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !143, line: 422, column: 15)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !143, line: 422, column: 15)
!1469 = !DILocation(line: 422, column: 15, scope: !1467)
!1470 = !DILocation(line: 422, column: 15, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !143, line: 422, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !143, line: 422, column: 15)
!1473 = !DILocation(line: 422, column: 15, scope: !1472)
!1474 = !DILocation(line: 422, column: 15, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !143, line: 422, column: 15)
!1476 = distinct !DILexicalBlock(scope: !1468, file: !143, line: 422, column: 15)
!1477 = !DILocation(line: 422, column: 15, scope: !1476)
!1478 = !DILocation(line: 422, column: 15, scope: !1468)
!1479 = !DILocation(line: 422, column: 15, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !143, line: 422, column: 15)
!1481 = distinct !DILexicalBlock(scope: !1460, file: !143, line: 422, column: 15)
!1482 = !DILocation(line: 422, column: 15, scope: !1481)
!1483 = !DILocation(line: 430, column: 19, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1461, file: !143, line: 429, column: 19)
!1485 = !DILocation(line: 430, column: 24, scope: !1484)
!1486 = !DILocation(line: 430, column: 28, scope: !1484)
!1487 = !DILocation(line: 430, column: 38, scope: !1484)
!1488 = !DILocation(line: 430, column: 48, scope: !1484)
!1489 = !DILocation(line: 430, column: 59, scope: !1484)
!1490 = !DILocation(line: 432, column: 19, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !143, line: 432, column: 19)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !143, line: 432, column: 19)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !143, line: 431, column: 17)
!1494 = !DILocation(line: 432, column: 19, scope: !1492)
!1495 = !DILocation(line: 433, column: 19, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !143, line: 433, column: 19)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !143, line: 433, column: 19)
!1498 = !DILocation(line: 433, column: 19, scope: !1497)
!1499 = !DILocation(line: 434, column: 17, scope: !1493)
!1500 = !DILocation(line: 441, column: 20, scope: !1462)
!1501 = !DILocation(line: 446, column: 11, scope: !1332)
!1502 = !DILocation(line: 449, column: 19, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 447, column: 13)
!1504 = !DILocation(line: 455, column: 19, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1503, file: !143, line: 454, column: 19)
!1506 = !DILocation(line: 455, column: 24, scope: !1505)
!1507 = !DILocation(line: 455, column: 28, scope: !1505)
!1508 = !DILocation(line: 455, column: 38, scope: !1505)
!1509 = !DILocation(line: 455, column: 47, scope: !1505)
!1510 = !DILocation(line: 455, column: 41, scope: !1505)
!1511 = !DILocation(line: 455, column: 52, scope: !1505)
!1512 = !DILocation(line: 454, column: 19, scope: !1503)
!1513 = !DILocation(line: 456, column: 25, scope: !1505)
!1514 = !DILocation(line: 456, column: 17, scope: !1505)
!1515 = !DILocation(line: 463, column: 25, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1505, file: !143, line: 457, column: 19)
!1517 = !DILocation(line: 467, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !143, line: 467, column: 21)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !143, line: 467, column: 21)
!1520 = !DILocation(line: 467, column: 21, scope: !1519)
!1521 = !DILocation(line: 468, column: 21, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !143, line: 468, column: 21)
!1523 = distinct !DILexicalBlock(scope: !1516, file: !143, line: 468, column: 21)
!1524 = !DILocation(line: 468, column: 21, scope: !1523)
!1525 = !DILocation(line: 469, column: 21, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !143, line: 469, column: 21)
!1527 = distinct !DILexicalBlock(scope: !1516, file: !143, line: 469, column: 21)
!1528 = !DILocation(line: 469, column: 21, scope: !1527)
!1529 = !DILocation(line: 470, column: 21, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !143, line: 470, column: 21)
!1531 = distinct !DILexicalBlock(scope: !1516, file: !143, line: 470, column: 21)
!1532 = !DILocation(line: 470, column: 21, scope: !1531)
!1533 = !DILocation(line: 471, column: 21, scope: !1516)
!1534 = !DILocation(line: 395, column: 21, scope: !1323)
!1535 = !DILocation(line: 484, column: 31, scope: !1332)
!1536 = !DILocation(line: 485, column: 31, scope: !1332)
!1537 = !DILocation(line: 487, column: 31, scope: !1332)
!1538 = !DILocation(line: 488, column: 31, scope: !1332)
!1539 = !DILocation(line: 489, column: 31, scope: !1332)
!1540 = !DILocation(line: 492, column: 15, scope: !1332)
!1541 = !DILocation(line: 494, column: 19, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !143, line: 493, column: 13)
!1543 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 492, column: 15)
!1544 = !DILocation(line: 501, column: 33, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 501, column: 15)
!1546 = !DILocation(line: 506, column: 15, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 505, column: 15)
!1548 = !DILocation(line: 510, column: 15, scope: !1332)
!1549 = !DILocation(line: 518, column: 26, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 518, column: 15)
!1551 = !DILocation(line: 518, column: 15, scope: !1332)
!1552 = !DILocation(line: 518, column: 40, scope: !1550)
!1553 = !DILocation(line: 518, column: 47, scope: !1550)
!1554 = !DILocation(line: 522, column: 17, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 522, column: 15)
!1556 = !DILocation(line: 518, column: 18, scope: !1550)
!1557 = !DILocation(line: 518, column: 65, scope: !1550)
!1558 = !DILocation(line: 522, column: 15, scope: !1332)
!1559 = !DILocation(line: 526, column: 11, scope: !1332)
!1560 = !DILocation(line: 541, column: 15, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 540, column: 15)
!1562 = !DILocation(line: 548, column: 15, scope: !1332)
!1563 = !DILocation(line: 550, column: 19, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !143, line: 549, column: 13)
!1565 = distinct !DILexicalBlock(scope: !1332, file: !143, line: 548, column: 15)
!1566 = !DILocation(line: 553, column: 19, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1564, file: !143, line: 553, column: 19)
!1568 = !DILocation(line: 553, column: 35, scope: !1567)
!1569 = !DILocation(line: 553, column: 30, scope: !1567)
!1570 = !DILocation(line: 562, column: 15, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !143, line: 562, column: 15)
!1572 = distinct !DILexicalBlock(scope: !1564, file: !143, line: 562, column: 15)
!1573 = !DILocation(line: 562, column: 15, scope: !1572)
!1574 = !DILocation(line: 563, column: 15, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !143, line: 563, column: 15)
!1576 = distinct !DILexicalBlock(scope: !1564, file: !143, line: 563, column: 15)
!1577 = !DILocation(line: 563, column: 15, scope: !1576)
!1578 = !DILocation(line: 564, column: 15, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !143, line: 564, column: 15)
!1580 = distinct !DILexicalBlock(scope: !1564, file: !143, line: 564, column: 15)
!1581 = !DILocation(line: 564, column: 15, scope: !1580)
!1582 = !DILocation(line: 566, column: 13, scope: !1564)
!1583 = !DILocation(line: 606, column: 17, scope: !1331)
!1584 = !DILocation(line: 602, column: 20, scope: !1331)
!1585 = !DILocation(line: 609, column: 29, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1336, file: !143, line: 607, column: 15)
!1587 = !DILocation(line: 609, column: 27, scope: !1586)
!1588 = !DILocation(line: 604, column: 18, scope: !1331)
!1589 = !DILocation(line: 610, column: 15, scope: !1586)
!1590 = !DILocation(line: 613, column: 17, scope: !1335)
!1591 = !DILocation(line: 614, column: 17, scope: !1335)
!1592 = !DILocation(line: 618, column: 29, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1335, file: !143, line: 618, column: 21)
!1594 = !DILocation(line: 618, column: 21, scope: !1335)
!1595 = !DILocation(line: 619, column: 29, scope: !1593)
!1596 = !DILocation(line: 619, column: 19, scope: !1593)
!1597 = !DILocation(line: 621, column: 17, scope: !1335)
!1598 = distinct !{!1598, !1597, !1599}
!1599 = !DILocation(line: 667, column: 44, scope: !1335)
!1600 = !DILocation(line: 623, column: 21, scope: !1353)
!1601 = !DILocation(line: 624, column: 56, scope: !1353)
!1602 = !DILocation(line: 624, column: 50, scope: !1353)
!1603 = !DILocation(line: 625, column: 53, scope: !1353)
!1604 = !DILocation(line: 613, column: 27, scope: !1335)
!1605 = !DILocation(line: 623, column: 29, scope: !1353)
!1606 = !DILocation(line: 624, column: 36, scope: !1353)
!1607 = !DILocation(line: 624, column: 28, scope: !1353)
!1608 = !DILocation(line: 626, column: 25, scope: !1353)
!1609 = !DILocation(line: 636, column: 38, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1360, file: !143, line: 634, column: 23)
!1611 = !DILocation(line: 636, column: 48, scope: !1610)
!1612 = !DILocation(line: 636, column: 51, scope: !1610)
!1613 = !DILocation(line: 636, column: 25, scope: !1610)
!1614 = !DILocation(line: 637, column: 28, scope: !1610)
!1615 = !DILocation(line: 636, column: 34, scope: !1610)
!1616 = distinct !{!1616, !1613, !1614}
!1617 = !DILocation(line: 650, column: 43, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !143, line: 650, column: 29)
!1619 = distinct !DILexicalBlock(scope: !1357, file: !143, line: 650, column: 29)
!1620 = !DILocation(line: 647, column: 29, scope: !1358)
!1621 = !DILocation(line: 649, column: 36, scope: !1357)
!1622 = !DILocation(line: 651, column: 49, scope: !1618)
!1623 = !DILocation(line: 651, column: 39, scope: !1618)
!1624 = !DILocation(line: 651, column: 31, scope: !1618)
!1625 = !DILocation(line: 650, column: 53, scope: !1618)
!1626 = !DILocation(line: 650, column: 29, scope: !1619)
!1627 = distinct !{!1627, !1626, !1628}
!1628 = !DILocation(line: 659, column: 33, scope: !1619)
!1629 = !DILocation(line: 666, column: 19, scope: !1335)
!1630 = !DILocation(line: 662, column: 41, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1359, file: !143, line: 662, column: 29)
!1632 = !DILocation(line: 662, column: 31, scope: !1631)
!1633 = !DILocation(line: 662, column: 29, scope: !1359)
!1634 = !DILocation(line: 664, column: 27, scope: !1359)
!1635 = !DILocation(line: 667, column: 26, scope: !1335)
!1636 = !DILocation(line: 667, column: 24, scope: !1335)
!1637 = !DILocation(line: 666, column: 19, scope: !1353)
!1638 = !DILocation(line: 668, column: 15, scope: !1336)
!1639 = !DILocation(line: 670, column: 40, scope: !1331)
!1640 = !DILocation(line: 672, column: 19, scope: !1365)
!1641 = !DILocation(line: 672, column: 45, scope: !1365)
!1642 = !DILocation(line: 672, column: 23, scope: !1365)
!1643 = !DILocation(line: 676, column: 33, scope: !1364)
!1644 = !DILocation(line: 676, column: 24, scope: !1364)
!1645 = !DILocation(line: 678, column: 17, scope: !1364)
!1646 = !DILocation(line: 680, column: 43, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !143, line: 680, column: 25)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !143, line: 679, column: 19)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !143, line: 678, column: 17)
!1650 = distinct !DILexicalBlock(scope: !1364, file: !143, line: 678, column: 17)
!1651 = !DILocation(line: 682, column: 25, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !143, line: 682, column: 25)
!1653 = distinct !DILexicalBlock(scope: !1647, file: !143, line: 681, column: 23)
!1654 = !DILocation(line: 682, column: 25, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !143, line: 682, column: 25)
!1656 = !DILocation(line: 682, column: 25, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !143, line: 682, column: 25)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !143, line: 682, column: 25)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !143, line: 682, column: 25)
!1660 = !DILocation(line: 682, column: 25, scope: !1658)
!1661 = !DILocation(line: 682, column: 25, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !143, line: 682, column: 25)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !143, line: 682, column: 25)
!1664 = !DILocation(line: 682, column: 25, scope: !1663)
!1665 = !DILocation(line: 682, column: 25, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !143, line: 682, column: 25)
!1667 = distinct !DILexicalBlock(scope: !1659, file: !143, line: 682, column: 25)
!1668 = !DILocation(line: 682, column: 25, scope: !1667)
!1669 = !DILocation(line: 682, column: 25, scope: !1659)
!1670 = !DILocation(line: 682, column: 25, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !143, line: 682, column: 25)
!1672 = distinct !DILexicalBlock(scope: !1652, file: !143, line: 682, column: 25)
!1673 = !DILocation(line: 682, column: 25, scope: !1672)
!1674 = !DILocation(line: 683, column: 25, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !143, line: 683, column: 25)
!1676 = distinct !DILexicalBlock(scope: !1653, file: !143, line: 683, column: 25)
!1677 = !DILocation(line: 683, column: 25, scope: !1676)
!1678 = !DILocation(line: 684, column: 25, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !143, line: 684, column: 25)
!1680 = distinct !DILexicalBlock(scope: !1653, file: !143, line: 684, column: 25)
!1681 = !DILocation(line: 684, column: 25, scope: !1680)
!1682 = !DILocation(line: 685, column: 38, scope: !1653)
!1683 = !DILocation(line: 685, column: 33, scope: !1653)
!1684 = !DILocation(line: 686, column: 23, scope: !1653)
!1685 = !DILocation(line: 687, column: 30, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1647, file: !143, line: 687, column: 30)
!1687 = !DILocation(line: 687, column: 30, scope: !1647)
!1688 = !DILocation(line: 689, column: 25, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !143, line: 689, column: 25)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !143, line: 689, column: 25)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !143, line: 688, column: 23)
!1692 = !DILocation(line: 689, column: 25, scope: !1690)
!1693 = !DILocation(line: 691, column: 23, scope: !1691)
!1694 = !DILocation(line: 692, column: 35, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1648, file: !143, line: 692, column: 25)
!1696 = !DILocation(line: 692, column: 30, scope: !1695)
!1697 = !DILocation(line: 692, column: 25, scope: !1648)
!1698 = !DILocation(line: 694, column: 21, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !143, line: 694, column: 21)
!1700 = distinct !DILexicalBlock(scope: !1648, file: !143, line: 694, column: 21)
!1701 = !DILocation(line: 694, column: 21, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !143, line: 694, column: 21)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !143, line: 694, column: 21)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !143, line: 694, column: 21)
!1705 = !DILocation(line: 694, column: 21, scope: !1703)
!1706 = !DILocation(line: 694, column: 21, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !143, line: 694, column: 21)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !143, line: 694, column: 21)
!1709 = !DILocation(line: 694, column: 21, scope: !1708)
!1710 = !DILocation(line: 694, column: 21, scope: !1704)
!1711 = !DILocation(line: 695, column: 21, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !143, line: 695, column: 21)
!1713 = distinct !DILexicalBlock(scope: !1648, file: !143, line: 695, column: 21)
!1714 = !DILocation(line: 695, column: 21, scope: !1713)
!1715 = !DILocation(line: 696, column: 25, scope: !1648)
!1716 = !DILocation(line: 678, column: 17, scope: !1649)
!1717 = distinct !{!1717, !1718, !1719}
!1718 = !DILocation(line: 678, column: 17, scope: !1650)
!1719 = !DILocation(line: 697, column: 19, scope: !1650)
!1720 = !DILocation(line: 704, column: 34, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1323, file: !143, line: 704, column: 11)
!1722 = !DILocation(line: 706, column: 14, scope: !1721)
!1723 = !DILocation(line: 707, column: 14, scope: !1721)
!1724 = !DILocation(line: 707, column: 35, scope: !1721)
!1725 = !DILocation(line: 707, column: 17, scope: !1721)
!1726 = !DILocation(line: 707, column: 53, scope: !1721)
!1727 = !DILocation(line: 707, column: 47, scope: !1721)
!1728 = !DILocation(line: 707, column: 65, scope: !1721)
!1729 = !DILocation(line: 708, column: 15, scope: !1721)
!1730 = !DILocation(line: 708, column: 11, scope: !1721)
!1731 = !DILocation(line: 704, column: 11, scope: !1323)
!1732 = !DILocation(line: 712, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1323, file: !143, line: 712, column: 7)
!1734 = !DILocation(line: 712, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1733, file: !143, line: 712, column: 7)
!1736 = !DILocation(line: 712, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !143, line: 712, column: 7)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !143, line: 712, column: 7)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !143, line: 712, column: 7)
!1740 = !DILocation(line: 712, column: 7, scope: !1738)
!1741 = !DILocation(line: 712, column: 7, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !143, line: 712, column: 7)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !143, line: 712, column: 7)
!1744 = !DILocation(line: 712, column: 7, scope: !1743)
!1745 = !DILocation(line: 712, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !143, line: 712, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1739, file: !143, line: 712, column: 7)
!1748 = !DILocation(line: 712, column: 7, scope: !1747)
!1749 = !DILocation(line: 712, column: 7, scope: !1739)
!1750 = !DILocation(line: 712, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !143, line: 712, column: 7)
!1752 = distinct !DILexicalBlock(scope: !1733, file: !143, line: 712, column: 7)
!1753 = !DILocation(line: 712, column: 7, scope: !1752)
!1754 = !DILocation(line: 715, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !143, line: 715, column: 7)
!1756 = distinct !DILexicalBlock(scope: !1323, file: !143, line: 715, column: 7)
!1757 = !DILocation(line: 715, column: 7, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !143, line: 715, column: 7)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !143, line: 715, column: 7)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !143, line: 715, column: 7)
!1761 = !DILocation(line: 715, column: 7, scope: !1759)
!1762 = !DILocation(line: 715, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !143, line: 715, column: 7)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !143, line: 715, column: 7)
!1765 = !DILocation(line: 715, column: 7, scope: !1764)
!1766 = !DILocation(line: 715, column: 7, scope: !1760)
!1767 = !DILocation(line: 716, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !143, line: 716, column: 7)
!1769 = distinct !DILexicalBlock(scope: !1323, file: !143, line: 716, column: 7)
!1770 = !DILocation(line: 716, column: 7, scope: !1769)
!1771 = !DILocation(line: 718, column: 13, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1323, file: !143, line: 718, column: 11)
!1773 = !DILocation(line: 718, column: 11, scope: !1323)
!1774 = !DILocation(line: 720, column: 5, scope: !1324)
!1775 = !DILocation(line: 392, column: 75, scope: !1324)
!1776 = !DILocation(line: 392, column: 3, scope: !1324)
!1777 = distinct !{!1777, !1437, !1778}
!1778 = !DILocation(line: 720, column: 5, scope: !1325)
!1779 = !DILocation(line: 722, column: 11, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1296, file: !143, line: 722, column: 7)
!1781 = !DILocation(line: 722, column: 16, scope: !1780)
!1782 = !DILocation(line: 730, column: 51, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1296, file: !143, line: 730, column: 7)
!1784 = !DILocation(line: 731, column: 10, scope: !1783)
!1785 = !DILocation(line: 733, column: 11, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !143, line: 733, column: 11)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !143, line: 732, column: 5)
!1788 = !DILocation(line: 733, column: 11, scope: !1787)
!1789 = !DILocation(line: 734, column: 16, scope: !1786)
!1790 = !DILocation(line: 734, column: 9, scope: !1786)
!1791 = !DILocation(line: 738, column: 18, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1786, file: !143, line: 738, column: 16)
!1793 = !DILocation(line: 738, column: 32, scope: !1792)
!1794 = !DILocation(line: 738, column: 29, scope: !1792)
!1795 = !DILocation(line: 747, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1296, file: !143, line: 747, column: 7)
!1797 = !DILocation(line: 747, column: 20, scope: !1796)
!1798 = !DILocation(line: 748, column: 12, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !143, line: 748, column: 5)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !143, line: 748, column: 5)
!1801 = !DILocation(line: 748, column: 5, scope: !1800)
!1802 = !DILocation(line: 749, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !143, line: 749, column: 7)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !143, line: 749, column: 7)
!1805 = !DILocation(line: 749, column: 7, scope: !1804)
!1806 = !DILocation(line: 748, column: 39, scope: !1799)
!1807 = distinct !{!1807, !1801, !1808}
!1808 = !DILocation(line: 749, column: 7, scope: !1800)
!1809 = !DILocation(line: 751, column: 11, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1296, file: !143, line: 751, column: 7)
!1811 = !DILocation(line: 751, column: 7, scope: !1296)
!1812 = !DILocation(line: 752, column: 5, scope: !1810)
!1813 = !DILocation(line: 752, column: 17, scope: !1810)
!1814 = !DILocation(line: 758, column: 21, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1296, file: !143, line: 758, column: 7)
!1816 = !DILocation(line: 758, column: 54, scope: !1815)
!1817 = !DILocation(line: 758, column: 51, scope: !1815)
!1818 = !DILocation(line: 762, column: 42, scope: !1296)
!1819 = !DILocation(line: 760, column: 10, scope: !1296)
!1820 = !DILocation(line: 760, column: 3, scope: !1296)
!1821 = !DILocation(line: 764, column: 1, scope: !1296)
!1822 = distinct !DISubprogram(name: "gettext_quote", scope: !143, file: !143, line: 199, type: !1823, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!69, !69, !28}
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DILocalVariable(name: "msgid", arg: 1, scope: !1822, file: !143, line: 199, type: !69)
!1827 = !DILocalVariable(name: "s", arg: 2, scope: !1822, file: !143, line: 199, type: !28)
!1828 = !DILocalVariable(name: "translation", scope: !1822, file: !143, line: 201, type: !69)
!1829 = !DILocalVariable(name: "locale_code", scope: !1822, file: !143, line: 202, type: !69)
!1830 = !DILocation(line: 199, column: 28, scope: !1822)
!1831 = !DILocation(line: 199, column: 54, scope: !1822)
!1832 = !DILocation(line: 201, column: 29, scope: !1822)
!1833 = !DILocation(line: 201, column: 15, scope: !1822)
!1834 = !DILocation(line: 204, column: 19, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1822, file: !143, line: 204, column: 7)
!1836 = !DILocation(line: 204, column: 7, scope: !1822)
!1837 = !DILocation(line: 225, column: 17, scope: !1822)
!1838 = !DILocation(line: 202, column: 15, scope: !1822)
!1839 = !DILocalVariable(name: "s2", arg: 2, scope: !1840, file: !1841, line: 160, type: !69)
!1840 = distinct !DISubprogram(name: "strcaseeq0", scope: !1841, file: !1841, line: 160, type: !1842, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1844)
!1841 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!43, !69, !69, !51, !51, !51, !51, !51, !51, !51, !51, !51}
!1844 = !{!1845, !1839, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854}
!1845 = !DILocalVariable(name: "s1", arg: 1, scope: !1840, file: !1841, line: 160, type: !69)
!1846 = !DILocalVariable(name: "s20", arg: 3, scope: !1840, file: !1841, line: 160, type: !51)
!1847 = !DILocalVariable(name: "s21", arg: 4, scope: !1840, file: !1841, line: 160, type: !51)
!1848 = !DILocalVariable(name: "s22", arg: 5, scope: !1840, file: !1841, line: 160, type: !51)
!1849 = !DILocalVariable(name: "s23", arg: 6, scope: !1840, file: !1841, line: 160, type: !51)
!1850 = !DILocalVariable(name: "s24", arg: 7, scope: !1840, file: !1841, line: 160, type: !51)
!1851 = !DILocalVariable(name: "s25", arg: 8, scope: !1840, file: !1841, line: 160, type: !51)
!1852 = !DILocalVariable(name: "s26", arg: 9, scope: !1840, file: !1841, line: 160, type: !51)
!1853 = !DILocalVariable(name: "s27", arg: 10, scope: !1840, file: !1841, line: 160, type: !51)
!1854 = !DILocalVariable(name: "s28", arg: 11, scope: !1840, file: !1841, line: 160, type: !51)
!1855 = !DILocation(line: 160, column: 41, scope: !1840, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 226, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1822, file: !143, line: 226, column: 7)
!1858 = !DILocation(line: 160, column: 120, scope: !1840, inlinedAt: !1856)
!1859 = !DILocation(line: 160, column: 130, scope: !1840, inlinedAt: !1856)
!1860 = !DILocation(line: 162, column: 7, scope: !1861, inlinedAt: !1856)
!1861 = distinct !DILexicalBlock(scope: !1840, file: !1841, line: 162, column: 7)
!1862 = !DILocalVariable(name: "s2", arg: 2, scope: !1863, file: !1841, line: 146, type: !69)
!1863 = distinct !DISubprogram(name: "strcaseeq1", scope: !1841, file: !1841, line: 146, type: !1864, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1866)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!43, !69, !69, !51, !51, !51, !51, !51, !51, !51, !51}
!1866 = !{!1867, !1862, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875}
!1867 = !DILocalVariable(name: "s1", arg: 1, scope: !1863, file: !1841, line: 146, type: !69)
!1868 = !DILocalVariable(name: "s21", arg: 3, scope: !1863, file: !1841, line: 146, type: !51)
!1869 = !DILocalVariable(name: "s22", arg: 4, scope: !1863, file: !1841, line: 146, type: !51)
!1870 = !DILocalVariable(name: "s23", arg: 5, scope: !1863, file: !1841, line: 146, type: !51)
!1871 = !DILocalVariable(name: "s24", arg: 6, scope: !1863, file: !1841, line: 146, type: !51)
!1872 = !DILocalVariable(name: "s25", arg: 7, scope: !1863, file: !1841, line: 146, type: !51)
!1873 = !DILocalVariable(name: "s26", arg: 8, scope: !1863, file: !1841, line: 146, type: !51)
!1874 = !DILocalVariable(name: "s27", arg: 9, scope: !1863, file: !1841, line: 146, type: !51)
!1875 = !DILocalVariable(name: "s28", arg: 10, scope: !1863, file: !1841, line: 146, type: !51)
!1876 = !DILocation(line: 146, column: 41, scope: !1863, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 167, column: 16, scope: !1878, inlinedAt: !1856)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !1841, line: 164, column: 11)
!1879 = distinct !DILexicalBlock(scope: !1861, file: !1841, line: 163, column: 5)
!1880 = !DILocation(line: 146, column: 110, scope: !1863, inlinedAt: !1877)
!1881 = !DILocation(line: 146, column: 120, scope: !1863, inlinedAt: !1877)
!1882 = !DILocation(line: 148, column: 7, scope: !1883, inlinedAt: !1877)
!1883 = distinct !DILexicalBlock(scope: !1863, file: !1841, line: 148, column: 7)
!1884 = !DILocalVariable(name: "s2", arg: 2, scope: !1885, file: !1841, line: 132, type: !69)
!1885 = distinct !DISubprogram(name: "strcaseeq2", scope: !1841, file: !1841, line: 132, type: !1886, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!43, !69, !69, !51, !51, !51, !51, !51, !51, !51}
!1888 = !{!1889, !1884, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1889 = !DILocalVariable(name: "s1", arg: 1, scope: !1885, file: !1841, line: 132, type: !69)
!1890 = !DILocalVariable(name: "s22", arg: 3, scope: !1885, file: !1841, line: 132, type: !51)
!1891 = !DILocalVariable(name: "s23", arg: 4, scope: !1885, file: !1841, line: 132, type: !51)
!1892 = !DILocalVariable(name: "s24", arg: 5, scope: !1885, file: !1841, line: 132, type: !51)
!1893 = !DILocalVariable(name: "s25", arg: 6, scope: !1885, file: !1841, line: 132, type: !51)
!1894 = !DILocalVariable(name: "s26", arg: 7, scope: !1885, file: !1841, line: 132, type: !51)
!1895 = !DILocalVariable(name: "s27", arg: 8, scope: !1885, file: !1841, line: 132, type: !51)
!1896 = !DILocalVariable(name: "s28", arg: 9, scope: !1885, file: !1841, line: 132, type: !51)
!1897 = !DILocation(line: 132, column: 41, scope: !1885, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 153, column: 16, scope: !1899, inlinedAt: !1877)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !1841, line: 150, column: 11)
!1900 = distinct !DILexicalBlock(scope: !1883, file: !1841, line: 149, column: 5)
!1901 = !DILocation(line: 132, column: 100, scope: !1885, inlinedAt: !1898)
!1902 = !DILocation(line: 132, column: 110, scope: !1885, inlinedAt: !1898)
!1903 = !DILocation(line: 134, column: 7, scope: !1904, inlinedAt: !1898)
!1904 = distinct !DILexicalBlock(scope: !1885, file: !1841, line: 134, column: 7)
!1905 = !DILocalVariable(name: "s2", arg: 2, scope: !1906, file: !1841, line: 118, type: !69)
!1906 = distinct !DISubprogram(name: "strcaseeq3", scope: !1841, file: !1841, line: 118, type: !1907, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!43, !69, !69, !51, !51, !51, !51, !51, !51}
!1909 = !{!1910, !1905, !1911, !1912, !1913, !1914, !1915, !1916}
!1910 = !DILocalVariable(name: "s1", arg: 1, scope: !1906, file: !1841, line: 118, type: !69)
!1911 = !DILocalVariable(name: "s23", arg: 3, scope: !1906, file: !1841, line: 118, type: !51)
!1912 = !DILocalVariable(name: "s24", arg: 4, scope: !1906, file: !1841, line: 118, type: !51)
!1913 = !DILocalVariable(name: "s25", arg: 5, scope: !1906, file: !1841, line: 118, type: !51)
!1914 = !DILocalVariable(name: "s26", arg: 6, scope: !1906, file: !1841, line: 118, type: !51)
!1915 = !DILocalVariable(name: "s27", arg: 7, scope: !1906, file: !1841, line: 118, type: !51)
!1916 = !DILocalVariable(name: "s28", arg: 8, scope: !1906, file: !1841, line: 118, type: !51)
!1917 = !DILocation(line: 118, column: 41, scope: !1906, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 139, column: 16, scope: !1919, inlinedAt: !1898)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !1841, line: 136, column: 11)
!1920 = distinct !DILexicalBlock(scope: !1904, file: !1841, line: 135, column: 5)
!1921 = !DILocation(line: 118, column: 90, scope: !1906, inlinedAt: !1918)
!1922 = !DILocation(line: 118, column: 100, scope: !1906, inlinedAt: !1918)
!1923 = !DILocation(line: 120, column: 7, scope: !1924, inlinedAt: !1918)
!1924 = distinct !DILexicalBlock(scope: !1906, file: !1841, line: 120, column: 7)
!1925 = !DILocation(line: 120, column: 7, scope: !1906, inlinedAt: !1918)
!1926 = !DILocalVariable(name: "s2", arg: 2, scope: !1927, file: !1841, line: 104, type: !69)
!1927 = distinct !DISubprogram(name: "strcaseeq4", scope: !1841, file: !1841, line: 104, type: !1928, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!43, !69, !69, !51, !51, !51, !51, !51}
!1930 = !{!1931, !1926, !1932, !1933, !1934, !1935, !1936}
!1931 = !DILocalVariable(name: "s1", arg: 1, scope: !1927, file: !1841, line: 104, type: !69)
!1932 = !DILocalVariable(name: "s24", arg: 3, scope: !1927, file: !1841, line: 104, type: !51)
!1933 = !DILocalVariable(name: "s25", arg: 4, scope: !1927, file: !1841, line: 104, type: !51)
!1934 = !DILocalVariable(name: "s26", arg: 5, scope: !1927, file: !1841, line: 104, type: !51)
!1935 = !DILocalVariable(name: "s27", arg: 6, scope: !1927, file: !1841, line: 104, type: !51)
!1936 = !DILocalVariable(name: "s28", arg: 7, scope: !1927, file: !1841, line: 104, type: !51)
!1937 = !DILocation(line: 104, column: 41, scope: !1927, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 125, column: 16, scope: !1939, inlinedAt: !1918)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1841, line: 122, column: 11)
!1940 = distinct !DILexicalBlock(scope: !1924, file: !1841, line: 121, column: 5)
!1941 = !DILocation(line: 104, column: 80, scope: !1927, inlinedAt: !1938)
!1942 = !DILocation(line: 104, column: 90, scope: !1927, inlinedAt: !1938)
!1943 = !DILocation(line: 106, column: 7, scope: !1944, inlinedAt: !1938)
!1944 = distinct !DILexicalBlock(scope: !1927, file: !1841, line: 106, column: 7)
!1945 = !DILocation(line: 106, column: 7, scope: !1927, inlinedAt: !1938)
!1946 = !DILocalVariable(name: "s2", arg: 2, scope: !1947, file: !1841, line: 90, type: !69)
!1947 = distinct !DISubprogram(name: "strcaseeq5", scope: !1841, file: !1841, line: 90, type: !1948, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!43, !69, !69, !51, !51, !51, !51}
!1950 = !{!1951, !1946, !1952, !1953, !1954, !1955}
!1951 = !DILocalVariable(name: "s1", arg: 1, scope: !1947, file: !1841, line: 90, type: !69)
!1952 = !DILocalVariable(name: "s25", arg: 3, scope: !1947, file: !1841, line: 90, type: !51)
!1953 = !DILocalVariable(name: "s26", arg: 4, scope: !1947, file: !1841, line: 90, type: !51)
!1954 = !DILocalVariable(name: "s27", arg: 5, scope: !1947, file: !1841, line: 90, type: !51)
!1955 = !DILocalVariable(name: "s28", arg: 6, scope: !1947, file: !1841, line: 90, type: !51)
!1956 = !DILocation(line: 90, column: 41, scope: !1947, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 111, column: 16, scope: !1958, inlinedAt: !1938)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1841, line: 108, column: 11)
!1959 = distinct !DILexicalBlock(scope: !1944, file: !1841, line: 107, column: 5)
!1960 = !DILocation(line: 90, column: 70, scope: !1947, inlinedAt: !1957)
!1961 = !DILocation(line: 90, column: 80, scope: !1947, inlinedAt: !1957)
!1962 = !DILocation(line: 92, column: 7, scope: !1963, inlinedAt: !1957)
!1963 = distinct !DILexicalBlock(scope: !1947, file: !1841, line: 92, column: 7)
!1964 = !DILocation(line: 92, column: 7, scope: !1947, inlinedAt: !1957)
!1965 = !DILocation(line: 227, column: 12, scope: !1857)
!1966 = !DILocation(line: 227, column: 21, scope: !1857)
!1967 = !DILocation(line: 227, column: 5, scope: !1857)
!1968 = !DILocation(line: 146, column: 41, scope: !1863, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 167, column: 16, scope: !1878, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 228, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1822, file: !143, line: 228, column: 7)
!1972 = !DILocation(line: 146, column: 110, scope: !1863, inlinedAt: !1969)
!1973 = !DILocation(line: 146, column: 120, scope: !1863, inlinedAt: !1969)
!1974 = !DILocation(line: 148, column: 7, scope: !1883, inlinedAt: !1969)
!1975 = !DILocation(line: 132, column: 41, scope: !1885, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 153, column: 16, scope: !1899, inlinedAt: !1969)
!1977 = !DILocation(line: 132, column: 100, scope: !1885, inlinedAt: !1976)
!1978 = !DILocation(line: 132, column: 110, scope: !1885, inlinedAt: !1976)
!1979 = !DILocation(line: 134, column: 7, scope: !1904, inlinedAt: !1976)
!1980 = !DILocation(line: 134, column: 7, scope: !1885, inlinedAt: !1976)
!1981 = !DILocation(line: 118, column: 41, scope: !1906, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 139, column: 16, scope: !1919, inlinedAt: !1976)
!1983 = !DILocation(line: 118, column: 90, scope: !1906, inlinedAt: !1982)
!1984 = !DILocation(line: 118, column: 100, scope: !1906, inlinedAt: !1982)
!1985 = !DILocation(line: 120, column: 7, scope: !1924, inlinedAt: !1982)
!1986 = !DILocation(line: 120, column: 7, scope: !1906, inlinedAt: !1982)
!1987 = !DILocation(line: 104, column: 41, scope: !1927, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 125, column: 16, scope: !1939, inlinedAt: !1982)
!1989 = !DILocation(line: 104, column: 80, scope: !1927, inlinedAt: !1988)
!1990 = !DILocation(line: 104, column: 90, scope: !1927, inlinedAt: !1988)
!1991 = !DILocation(line: 106, column: 7, scope: !1944, inlinedAt: !1988)
!1992 = !DILocation(line: 106, column: 7, scope: !1927, inlinedAt: !1988)
!1993 = !DILocation(line: 90, column: 41, scope: !1947, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 111, column: 16, scope: !1958, inlinedAt: !1988)
!1995 = !DILocation(line: 90, column: 70, scope: !1947, inlinedAt: !1994)
!1996 = !DILocation(line: 90, column: 80, scope: !1947, inlinedAt: !1994)
!1997 = !DILocation(line: 92, column: 7, scope: !1963, inlinedAt: !1994)
!1998 = !DILocation(line: 92, column: 7, scope: !1947, inlinedAt: !1994)
!1999 = !DILocalVariable(name: "s2", arg: 2, scope: !2000, file: !1841, line: 76, type: !69)
!2000 = distinct !DISubprogram(name: "strcaseeq6", scope: !1841, file: !1841, line: 76, type: !2001, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!43, !69, !69, !51, !51, !51}
!2003 = !{!2004, !1999, !2005, !2006, !2007}
!2004 = !DILocalVariable(name: "s1", arg: 1, scope: !2000, file: !1841, line: 76, type: !69)
!2005 = !DILocalVariable(name: "s26", arg: 3, scope: !2000, file: !1841, line: 76, type: !51)
!2006 = !DILocalVariable(name: "s27", arg: 4, scope: !2000, file: !1841, line: 76, type: !51)
!2007 = !DILocalVariable(name: "s28", arg: 5, scope: !2000, file: !1841, line: 76, type: !51)
!2008 = !DILocation(line: 76, column: 41, scope: !2000, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 97, column: 16, scope: !2010, inlinedAt: !1994)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !1841, line: 94, column: 11)
!2011 = distinct !DILexicalBlock(scope: !1963, file: !1841, line: 93, column: 5)
!2012 = !DILocation(line: 76, column: 60, scope: !2000, inlinedAt: !2009)
!2013 = !DILocation(line: 76, column: 70, scope: !2000, inlinedAt: !2009)
!2014 = !DILocation(line: 78, column: 7, scope: !2015, inlinedAt: !2009)
!2015 = distinct !DILexicalBlock(scope: !2000, file: !1841, line: 78, column: 7)
!2016 = !DILocation(line: 78, column: 7, scope: !2000, inlinedAt: !2009)
!2017 = !DILocalVariable(name: "s2", arg: 2, scope: !2018, file: !1841, line: 62, type: !69)
!2018 = distinct !DISubprogram(name: "strcaseeq7", scope: !1841, file: !1841, line: 62, type: !2019, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!43, !69, !69, !51, !51}
!2021 = !{!2022, !2017, !2023, !2024}
!2022 = !DILocalVariable(name: "s1", arg: 1, scope: !2018, file: !1841, line: 62, type: !69)
!2023 = !DILocalVariable(name: "s27", arg: 3, scope: !2018, file: !1841, line: 62, type: !51)
!2024 = !DILocalVariable(name: "s28", arg: 4, scope: !2018, file: !1841, line: 62, type: !51)
!2025 = !DILocation(line: 62, column: 41, scope: !2018, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 83, column: 16, scope: !2027, inlinedAt: !2009)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !1841, line: 80, column: 11)
!2028 = distinct !DILexicalBlock(scope: !2015, file: !1841, line: 79, column: 5)
!2029 = !DILocation(line: 62, column: 50, scope: !2018, inlinedAt: !2026)
!2030 = !DILocation(line: 62, column: 60, scope: !2018, inlinedAt: !2026)
!2031 = !DILocation(line: 64, column: 7, scope: !2032, inlinedAt: !2026)
!2032 = distinct !DILexicalBlock(scope: !2018, file: !1841, line: 64, column: 7)
!2033 = !DILocation(line: 228, column: 7, scope: !1822)
!2034 = !DILocation(line: 229, column: 12, scope: !1971)
!2035 = !DILocation(line: 229, column: 21, scope: !1971)
!2036 = !DILocation(line: 229, column: 5, scope: !1971)
!2037 = !DILocation(line: 231, column: 13, scope: !1822)
!2038 = !DILocation(line: 231, column: 11, scope: !1822)
!2039 = !DILocation(line: 231, column: 3, scope: !1822)
!2040 = !DILocation(line: 232, column: 1, scope: !1822)
!2041 = distinct !DISubprogram(name: "quotearg_alloc", scope: !143, file: !143, line: 791, type: !2042, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!50, !69, !53, !1168}
!2044 = !{!2045, !2046, !2047}
!2045 = !DILocalVariable(name: "arg", arg: 1, scope: !2041, file: !143, line: 791, type: !69)
!2046 = !DILocalVariable(name: "argsize", arg: 2, scope: !2041, file: !143, line: 791, type: !53)
!2047 = !DILocalVariable(name: "o", arg: 3, scope: !2041, file: !143, line: 792, type: !1168)
!2048 = !DILocation(line: 791, column: 29, scope: !2041)
!2049 = !DILocation(line: 791, column: 41, scope: !2041)
!2050 = !DILocation(line: 792, column: 47, scope: !2041)
!2051 = !DILocalVariable(name: "arg", arg: 1, scope: !2052, file: !143, line: 804, type: !69)
!2052 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !143, file: !143, line: 804, type: !2053, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!50, !69, !53, !557, !1168}
!2055 = !{!2051, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063}
!2056 = !DILocalVariable(name: "argsize", arg: 2, scope: !2052, file: !143, line: 804, type: !53)
!2057 = !DILocalVariable(name: "size", arg: 3, scope: !2052, file: !143, line: 804, type: !557)
!2058 = !DILocalVariable(name: "o", arg: 4, scope: !2052, file: !143, line: 805, type: !1168)
!2059 = !DILocalVariable(name: "p", scope: !2052, file: !143, line: 807, type: !1168)
!2060 = !DILocalVariable(name: "e", scope: !2052, file: !143, line: 808, type: !43)
!2061 = !DILocalVariable(name: "flags", scope: !2052, file: !143, line: 810, type: !43)
!2062 = !DILocalVariable(name: "bufsize", scope: !2052, file: !143, line: 811, type: !53)
!2063 = !DILocalVariable(name: "buf", scope: !2052, file: !143, line: 815, type: !50)
!2064 = !DILocation(line: 804, column: 33, scope: !2052, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 794, column: 10, scope: !2041)
!2066 = !DILocation(line: 804, column: 45, scope: !2052, inlinedAt: !2065)
!2067 = !DILocation(line: 804, column: 62, scope: !2052, inlinedAt: !2065)
!2068 = !DILocation(line: 805, column: 51, scope: !2052, inlinedAt: !2065)
!2069 = !DILocation(line: 807, column: 37, scope: !2052, inlinedAt: !2065)
!2070 = !DILocation(line: 807, column: 33, scope: !2052, inlinedAt: !2065)
!2071 = !DILocation(line: 808, column: 11, scope: !2052, inlinedAt: !2065)
!2072 = !DILocation(line: 808, column: 7, scope: !2052, inlinedAt: !2065)
!2073 = !DILocation(line: 810, column: 18, scope: !2052, inlinedAt: !2065)
!2074 = !DILocation(line: 810, column: 24, scope: !2052, inlinedAt: !2065)
!2075 = !DILocation(line: 810, column: 7, scope: !2052, inlinedAt: !2065)
!2076 = !DILocation(line: 811, column: 69, scope: !2052, inlinedAt: !2065)
!2077 = !DILocation(line: 812, column: 53, scope: !2052, inlinedAt: !2065)
!2078 = !DILocation(line: 813, column: 49, scope: !2052, inlinedAt: !2065)
!2079 = !DILocation(line: 814, column: 49, scope: !2052, inlinedAt: !2065)
!2080 = !DILocation(line: 811, column: 20, scope: !2052, inlinedAt: !2065)
!2081 = !DILocation(line: 814, column: 62, scope: !2052, inlinedAt: !2065)
!2082 = !DILocation(line: 811, column: 10, scope: !2052, inlinedAt: !2065)
!2083 = !DILocalVariable(name: "n", arg: 1, scope: !2084, file: !553, line: 220, type: !53)
!2084 = distinct !DISubprogram(name: "xcharalloc", scope: !553, file: !553, line: 220, type: !2085, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!50, !53}
!2087 = !{!2083}
!2088 = !DILocation(line: 220, column: 20, scope: !2084, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 815, column: 15, scope: !2052, inlinedAt: !2065)
!2090 = !DILocation(line: 222, column: 10, scope: !2084, inlinedAt: !2089)
!2091 = !DILocation(line: 815, column: 9, scope: !2052, inlinedAt: !2065)
!2092 = !DILocation(line: 816, column: 60, scope: !2052, inlinedAt: !2065)
!2093 = !DILocation(line: 818, column: 32, scope: !2052, inlinedAt: !2065)
!2094 = !DILocation(line: 818, column: 47, scope: !2052, inlinedAt: !2065)
!2095 = !DILocation(line: 816, column: 3, scope: !2052, inlinedAt: !2065)
!2096 = !DILocation(line: 819, column: 9, scope: !2052, inlinedAt: !2065)
!2097 = !DILocation(line: 794, column: 3, scope: !2041)
!2098 = !DILocation(line: 804, column: 33, scope: !2052)
!2099 = !DILocation(line: 804, column: 45, scope: !2052)
!2100 = !DILocation(line: 804, column: 62, scope: !2052)
!2101 = !DILocation(line: 805, column: 51, scope: !2052)
!2102 = !DILocation(line: 807, column: 37, scope: !2052)
!2103 = !DILocation(line: 807, column: 33, scope: !2052)
!2104 = !DILocation(line: 808, column: 11, scope: !2052)
!2105 = !DILocation(line: 808, column: 7, scope: !2052)
!2106 = !DILocation(line: 810, column: 18, scope: !2052)
!2107 = !DILocation(line: 810, column: 27, scope: !2052)
!2108 = !DILocation(line: 810, column: 24, scope: !2052)
!2109 = !DILocation(line: 810, column: 7, scope: !2052)
!2110 = !DILocation(line: 811, column: 69, scope: !2052)
!2111 = !DILocation(line: 812, column: 53, scope: !2052)
!2112 = !DILocation(line: 813, column: 49, scope: !2052)
!2113 = !DILocation(line: 814, column: 49, scope: !2052)
!2114 = !DILocation(line: 811, column: 20, scope: !2052)
!2115 = !DILocation(line: 814, column: 62, scope: !2052)
!2116 = !DILocation(line: 811, column: 10, scope: !2052)
!2117 = !DILocation(line: 220, column: 20, scope: !2084, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 815, column: 15, scope: !2052)
!2119 = !DILocation(line: 222, column: 10, scope: !2084, inlinedAt: !2118)
!2120 = !DILocation(line: 815, column: 9, scope: !2052)
!2121 = !DILocation(line: 816, column: 60, scope: !2052)
!2122 = !DILocation(line: 818, column: 32, scope: !2052)
!2123 = !DILocation(line: 818, column: 47, scope: !2052)
!2124 = !DILocation(line: 816, column: 3, scope: !2052)
!2125 = !DILocation(line: 819, column: 9, scope: !2052)
!2126 = !DILocation(line: 820, column: 7, scope: !2052)
!2127 = !DILocation(line: 821, column: 11, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2052, file: !143, line: 820, column: 7)
!2129 = !{!847, !847, i64 0}
!2130 = !DILocation(line: 821, column: 5, scope: !2128)
!2131 = !DILocation(line: 822, column: 3, scope: !2052)
!2132 = distinct !DISubprogram(name: "quotearg_free", scope: !143, file: !143, line: 840, type: !623, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2133)
!2133 = !{!2134, !2135}
!2134 = !DILocalVariable(name: "sv", scope: !2132, file: !143, line: 842, type: !170)
!2135 = !DILocalVariable(name: "i", scope: !2132, file: !143, line: 843, type: !43)
!2136 = !DILocation(line: 842, column: 24, scope: !2132)
!2137 = !DILocation(line: 842, column: 19, scope: !2132)
!2138 = !DILocation(line: 843, column: 7, scope: !2132)
!2139 = !DILocation(line: 844, column: 19, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !143, line: 844, column: 3)
!2141 = distinct !DILexicalBlock(scope: !2132, file: !143, line: 844, column: 3)
!2142 = !DILocation(line: 844, column: 17, scope: !2140)
!2143 = !DILocation(line: 844, column: 3, scope: !2141)
!2144 = !DILocation(line: 845, column: 17, scope: !2140)
!2145 = !{!2146, !615, i64 8}
!2146 = !{!"slotvec", !847, i64 0, !615, i64 8}
!2147 = !DILocation(line: 845, column: 5, scope: !2140)
!2148 = !DILocation(line: 844, column: 28, scope: !2140)
!2149 = distinct !{!2149, !2143, !2150}
!2150 = !DILocation(line: 845, column: 20, scope: !2141)
!2151 = !DILocation(line: 846, column: 13, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2132, file: !143, line: 846, column: 7)
!2153 = !DILocation(line: 846, column: 17, scope: !2152)
!2154 = !DILocation(line: 846, column: 7, scope: !2132)
!2155 = !DILocation(line: 848, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !143, line: 847, column: 5)
!2157 = !DILocation(line: 849, column: 21, scope: !2156)
!2158 = !{!2146, !847, i64 0}
!2159 = !DILocation(line: 850, column: 20, scope: !2156)
!2160 = !DILocation(line: 851, column: 5, scope: !2156)
!2161 = !DILocation(line: 852, column: 10, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2132, file: !143, line: 852, column: 7)
!2163 = !DILocation(line: 852, column: 7, scope: !2132)
!2164 = !DILocation(line: 854, column: 13, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !143, line: 853, column: 5)
!2166 = !DILocation(line: 854, column: 7, scope: !2165)
!2167 = !DILocation(line: 855, column: 15, scope: !2165)
!2168 = !DILocation(line: 856, column: 5, scope: !2165)
!2169 = !DILocation(line: 857, column: 10, scope: !2132)
!2170 = !DILocation(line: 858, column: 1, scope: !2132)
!2171 = distinct !DISubprogram(name: "quotearg_n", scope: !143, file: !143, line: 922, type: !2172, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!50, !43, !69}
!2174 = !{!2175, !2176}
!2175 = !DILocalVariable(name: "n", arg: 1, scope: !2171, file: !143, line: 922, type: !43)
!2176 = !DILocalVariable(name: "arg", arg: 2, scope: !2171, file: !143, line: 922, type: !69)
!2177 = !DILocation(line: 922, column: 17, scope: !2171)
!2178 = !DILocation(line: 922, column: 32, scope: !2171)
!2179 = !DILocation(line: 924, column: 10, scope: !2171)
!2180 = !DILocation(line: 924, column: 3, scope: !2171)
!2181 = distinct !DISubprogram(name: "quotearg_n_options", scope: !143, file: !143, line: 869, type: !2182, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!50, !43, !69, !53, !1168}
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191, !2194, !2196, !2197, !2198}
!2185 = !DILocalVariable(name: "n", arg: 1, scope: !2181, file: !143, line: 869, type: !43)
!2186 = !DILocalVariable(name: "arg", arg: 2, scope: !2181, file: !143, line: 869, type: !69)
!2187 = !DILocalVariable(name: "argsize", arg: 3, scope: !2181, file: !143, line: 869, type: !53)
!2188 = !DILocalVariable(name: "options", arg: 4, scope: !2181, file: !143, line: 870, type: !1168)
!2189 = !DILocalVariable(name: "e", scope: !2181, file: !143, line: 872, type: !43)
!2190 = !DILocalVariable(name: "sv", scope: !2181, file: !143, line: 874, type: !170)
!2191 = !DILocalVariable(name: "preallocated", scope: !2192, file: !143, line: 881, type: !64)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !143, line: 880, column: 5)
!2193 = distinct !DILexicalBlock(scope: !2181, file: !143, line: 879, column: 7)
!2194 = !DILocalVariable(name: "size", scope: !2195, file: !143, line: 894, type: !53)
!2195 = distinct !DILexicalBlock(scope: !2181, file: !143, line: 893, column: 3)
!2196 = !DILocalVariable(name: "val", scope: !2195, file: !143, line: 895, type: !50)
!2197 = !DILocalVariable(name: "flags", scope: !2195, file: !143, line: 897, type: !43)
!2198 = !DILocalVariable(name: "qsize", scope: !2195, file: !143, line: 898, type: !53)
!2199 = !DILocation(line: 869, column: 25, scope: !2181)
!2200 = !DILocation(line: 869, column: 40, scope: !2181)
!2201 = !DILocation(line: 869, column: 52, scope: !2181)
!2202 = !DILocation(line: 870, column: 51, scope: !2181)
!2203 = !DILocation(line: 872, column: 11, scope: !2181)
!2204 = !DILocation(line: 872, column: 7, scope: !2181)
!2205 = !DILocation(line: 874, column: 24, scope: !2181)
!2206 = !DILocation(line: 874, column: 19, scope: !2181)
!2207 = !DILocation(line: 876, column: 9, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2181, file: !143, line: 876, column: 7)
!2209 = !DILocation(line: 876, column: 7, scope: !2181)
!2210 = !DILocation(line: 877, column: 5, scope: !2208)
!2211 = !DILocation(line: 879, column: 7, scope: !2193)
!2212 = !DILocation(line: 879, column: 14, scope: !2193)
!2213 = !DILocation(line: 879, column: 7, scope: !2181)
!2214 = !DILocation(line: 881, column: 31, scope: !2192)
!2215 = !DILocation(line: 883, column: 67, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2192, file: !143, line: 883, column: 11)
!2217 = !DILocation(line: 883, column: 11, scope: !2192)
!2218 = !DILocation(line: 884, column: 9, scope: !2216)
!2219 = !DILocation(line: 886, column: 32, scope: !2192)
!2220 = !DILocation(line: 886, column: 61, scope: !2192)
!2221 = !DILocation(line: 886, column: 58, scope: !2192)
!2222 = !DILocation(line: 886, column: 66, scope: !2192)
!2223 = !DILocation(line: 886, column: 22, scope: !2192)
!2224 = !DILocation(line: 886, column: 15, scope: !2192)
!2225 = !DILocation(line: 887, column: 11, scope: !2192)
!2226 = !DILocation(line: 888, column: 15, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2192, file: !143, line: 887, column: 11)
!2228 = !{i64 0, i64 8, !2129, i64 8, i64 8, !614}
!2229 = !DILocation(line: 888, column: 9, scope: !2227)
!2230 = !DILocation(line: 889, column: 20, scope: !2192)
!2231 = !DILocation(line: 889, column: 18, scope: !2192)
!2232 = !DILocation(line: 889, column: 7, scope: !2192)
!2233 = !DILocation(line: 889, column: 38, scope: !2192)
!2234 = !DILocation(line: 889, column: 31, scope: !2192)
!2235 = !DILocation(line: 889, column: 48, scope: !2192)
!2236 = !DILocation(line: 890, column: 14, scope: !2192)
!2237 = !DILocation(line: 891, column: 5, scope: !2192)
!2238 = !DILocation(line: 894, column: 19, scope: !2195)
!2239 = !DILocation(line: 894, column: 25, scope: !2195)
!2240 = !DILocation(line: 894, column: 12, scope: !2195)
!2241 = !DILocation(line: 895, column: 23, scope: !2195)
!2242 = !DILocation(line: 895, column: 11, scope: !2195)
!2243 = !DILocation(line: 897, column: 26, scope: !2195)
!2244 = !DILocation(line: 897, column: 32, scope: !2195)
!2245 = !DILocation(line: 897, column: 9, scope: !2195)
!2246 = !DILocation(line: 899, column: 55, scope: !2195)
!2247 = !DILocation(line: 900, column: 46, scope: !2195)
!2248 = !DILocation(line: 901, column: 55, scope: !2195)
!2249 = !DILocation(line: 902, column: 55, scope: !2195)
!2250 = !DILocation(line: 898, column: 20, scope: !2195)
!2251 = !DILocation(line: 898, column: 12, scope: !2195)
!2252 = !DILocation(line: 904, column: 14, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2195, file: !143, line: 904, column: 9)
!2254 = !DILocation(line: 904, column: 9, scope: !2195)
!2255 = !DILocation(line: 906, column: 35, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !143, line: 905, column: 7)
!2257 = !DILocation(line: 906, column: 20, scope: !2256)
!2258 = !DILocation(line: 907, column: 17, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !143, line: 907, column: 13)
!2260 = !DILocation(line: 907, column: 13, scope: !2256)
!2261 = !DILocation(line: 908, column: 11, scope: !2259)
!2262 = !DILocation(line: 220, column: 20, scope: !2084, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 909, column: 27, scope: !2256)
!2264 = !DILocation(line: 222, column: 10, scope: !2084, inlinedAt: !2263)
!2265 = !DILocation(line: 909, column: 19, scope: !2256)
!2266 = !DILocation(line: 910, column: 69, scope: !2256)
!2267 = !DILocation(line: 912, column: 44, scope: !2256)
!2268 = !DILocation(line: 913, column: 44, scope: !2256)
!2269 = !DILocation(line: 910, column: 9, scope: !2256)
!2270 = !DILocation(line: 914, column: 7, scope: !2256)
!2271 = !DILocation(line: 916, column: 11, scope: !2195)
!2272 = !DILocation(line: 917, column: 5, scope: !2195)
!2273 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !143, file: !143, line: 928, type: !2274, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!50, !43, !69, !53}
!2276 = !{!2277, !2278, !2279}
!2277 = !DILocalVariable(name: "n", arg: 1, scope: !2273, file: !143, line: 928, type: !43)
!2278 = !DILocalVariable(name: "arg", arg: 2, scope: !2273, file: !143, line: 928, type: !69)
!2279 = !DILocalVariable(name: "argsize", arg: 3, scope: !2273, file: !143, line: 928, type: !53)
!2280 = !DILocation(line: 928, column: 21, scope: !2273)
!2281 = !DILocation(line: 928, column: 36, scope: !2273)
!2282 = !DILocation(line: 928, column: 48, scope: !2273)
!2283 = !DILocation(line: 930, column: 10, scope: !2273)
!2284 = !DILocation(line: 930, column: 3, scope: !2273)
!2285 = distinct !DISubprogram(name: "quotearg", scope: !143, file: !143, line: 934, type: !2286, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!50, !69}
!2288 = !{!2289}
!2289 = !DILocalVariable(name: "arg", arg: 1, scope: !2285, file: !143, line: 934, type: !69)
!2290 = !DILocation(line: 934, column: 23, scope: !2285)
!2291 = !DILocation(line: 922, column: 17, scope: !2171, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 936, column: 10, scope: !2285)
!2293 = !DILocation(line: 922, column: 32, scope: !2171, inlinedAt: !2292)
!2294 = !DILocation(line: 924, column: 10, scope: !2171, inlinedAt: !2292)
!2295 = !DILocation(line: 936, column: 3, scope: !2285)
!2296 = distinct !DISubprogram(name: "quotearg_mem", scope: !143, file: !143, line: 940, type: !2297, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!50, !69, !53}
!2299 = !{!2300, !2301}
!2300 = !DILocalVariable(name: "arg", arg: 1, scope: !2296, file: !143, line: 940, type: !69)
!2301 = !DILocalVariable(name: "argsize", arg: 2, scope: !2296, file: !143, line: 940, type: !53)
!2302 = !DILocation(line: 940, column: 27, scope: !2296)
!2303 = !DILocation(line: 940, column: 39, scope: !2296)
!2304 = !DILocation(line: 928, column: 21, scope: !2273, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 942, column: 10, scope: !2296)
!2306 = !DILocation(line: 928, column: 36, scope: !2273, inlinedAt: !2305)
!2307 = !DILocation(line: 928, column: 48, scope: !2273, inlinedAt: !2305)
!2308 = !DILocation(line: 930, column: 10, scope: !2273, inlinedAt: !2305)
!2309 = !DILocation(line: 942, column: 3, scope: !2296)
!2310 = distinct !DISubprogram(name: "quotearg_n_style", scope: !143, file: !143, line: 946, type: !2311, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!50, !43, !28, !69}
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DILocalVariable(name: "n", arg: 1, scope: !2310, file: !143, line: 946, type: !43)
!2315 = !DILocalVariable(name: "s", arg: 2, scope: !2310, file: !143, line: 946, type: !28)
!2316 = !DILocalVariable(name: "arg", arg: 3, scope: !2310, file: !143, line: 946, type: !69)
!2317 = !DILocalVariable(name: "o", scope: !2310, file: !143, line: 948, type: !1169)
!2318 = !DILocalVariable(name: "o", scope: !2319, file: !143, line: 187, type: !150)
!2319 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !143, file: !143, line: 185, type: !2320, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!150, !28}
!2322 = !{!2323, !2318}
!2323 = !DILocalVariable(name: "style", arg: 1, scope: !2319, file: !143, line: 185, type: !28)
!2324 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2325 = !DILocation(line: 187, column: 26, scope: !2319, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 948, column: 36, scope: !2310)
!2327 = !DILocation(line: 946, column: 23, scope: !2310)
!2328 = !DILocation(line: 946, column: 45, scope: !2310)
!2329 = !DILocation(line: 946, column: 60, scope: !2310)
!2330 = !DILocation(line: 948, column: 3, scope: !2310)
!2331 = !DILocation(line: 948, column: 32, scope: !2310)
!2332 = !DILocation(line: 185, column: 48, scope: !2319, inlinedAt: !2326)
!2333 = !DILocation(line: 187, column: 3, scope: !2319, inlinedAt: !2326)
!2334 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2335 = !DILocation(line: 188, column: 13, scope: !2336, inlinedAt: !2326)
!2336 = distinct !DILexicalBlock(scope: !2319, file: !143, line: 188, column: 7)
!2337 = !DILocation(line: 188, column: 7, scope: !2319, inlinedAt: !2326)
!2338 = !DILocation(line: 189, column: 5, scope: !2336, inlinedAt: !2326)
!2339 = !{!2340}
!2340 = distinct !{!2340, !2341, !"quoting_options_from_style: argument 0"}
!2341 = distinct !{!2341, !"quoting_options_from_style"}
!2342 = !DILocation(line: 191, column: 10, scope: !2319, inlinedAt: !2326)
!2343 = !DILocation(line: 192, column: 1, scope: !2319, inlinedAt: !2326)
!2344 = !DILocation(line: 949, column: 10, scope: !2310)
!2345 = !DILocation(line: 950, column: 1, scope: !2310)
!2346 = !DILocation(line: 949, column: 3, scope: !2310)
!2347 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !143, file: !143, line: 953, type: !2348, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!50, !43, !28, !69, !53}
!2350 = !{!2351, !2352, !2353, !2354, !2355}
!2351 = !DILocalVariable(name: "n", arg: 1, scope: !2347, file: !143, line: 953, type: !43)
!2352 = !DILocalVariable(name: "s", arg: 2, scope: !2347, file: !143, line: 953, type: !28)
!2353 = !DILocalVariable(name: "arg", arg: 3, scope: !2347, file: !143, line: 954, type: !69)
!2354 = !DILocalVariable(name: "argsize", arg: 4, scope: !2347, file: !143, line: 954, type: !53)
!2355 = !DILocalVariable(name: "o", scope: !2347, file: !143, line: 956, type: !1169)
!2356 = !DILocation(line: 187, column: 26, scope: !2319, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 956, column: 36, scope: !2347)
!2358 = !DILocation(line: 953, column: 27, scope: !2347)
!2359 = !DILocation(line: 953, column: 49, scope: !2347)
!2360 = !DILocation(line: 954, column: 35, scope: !2347)
!2361 = !DILocation(line: 954, column: 47, scope: !2347)
!2362 = !DILocation(line: 956, column: 3, scope: !2347)
!2363 = !DILocation(line: 956, column: 32, scope: !2347)
!2364 = !DILocation(line: 185, column: 48, scope: !2319, inlinedAt: !2357)
!2365 = !DILocation(line: 187, column: 3, scope: !2319, inlinedAt: !2357)
!2366 = !DILocation(line: 188, column: 13, scope: !2336, inlinedAt: !2357)
!2367 = !DILocation(line: 188, column: 7, scope: !2319, inlinedAt: !2357)
!2368 = !DILocation(line: 189, column: 5, scope: !2336, inlinedAt: !2357)
!2369 = !{!2370}
!2370 = distinct !{!2370, !2371, !"quoting_options_from_style: argument 0"}
!2371 = distinct !{!2371, !"quoting_options_from_style"}
!2372 = !DILocation(line: 191, column: 10, scope: !2319, inlinedAt: !2357)
!2373 = !DILocation(line: 192, column: 1, scope: !2319, inlinedAt: !2357)
!2374 = !DILocation(line: 957, column: 10, scope: !2347)
!2375 = !DILocation(line: 958, column: 1, scope: !2347)
!2376 = !DILocation(line: 957, column: 3, scope: !2347)
!2377 = distinct !DISubprogram(name: "quotearg_style", scope: !143, file: !143, line: 961, type: !2378, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!50, !28, !69}
!2380 = !{!2381, !2382}
!2381 = !DILocalVariable(name: "s", arg: 1, scope: !2377, file: !143, line: 961, type: !28)
!2382 = !DILocalVariable(name: "arg", arg: 2, scope: !2377, file: !143, line: 961, type: !69)
!2383 = !DILocation(line: 187, column: 26, scope: !2319, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 948, column: 36, scope: !2310, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 963, column: 10, scope: !2377)
!2386 = !DILocation(line: 961, column: 36, scope: !2377)
!2387 = !DILocation(line: 961, column: 51, scope: !2377)
!2388 = !DILocation(line: 946, column: 23, scope: !2310, inlinedAt: !2385)
!2389 = !DILocation(line: 946, column: 45, scope: !2310, inlinedAt: !2385)
!2390 = !DILocation(line: 946, column: 60, scope: !2310, inlinedAt: !2385)
!2391 = !DILocation(line: 948, column: 3, scope: !2310, inlinedAt: !2385)
!2392 = !DILocation(line: 948, column: 32, scope: !2310, inlinedAt: !2385)
!2393 = !DILocation(line: 185, column: 48, scope: !2319, inlinedAt: !2384)
!2394 = !DILocation(line: 187, column: 3, scope: !2319, inlinedAt: !2384)
!2395 = !DILocation(line: 188, column: 13, scope: !2336, inlinedAt: !2384)
!2396 = !DILocation(line: 188, column: 7, scope: !2319, inlinedAt: !2384)
!2397 = !DILocation(line: 189, column: 5, scope: !2336, inlinedAt: !2384)
!2398 = !{!2399}
!2399 = distinct !{!2399, !2400, !"quoting_options_from_style: argument 0"}
!2400 = distinct !{!2400, !"quoting_options_from_style"}
!2401 = !DILocation(line: 191, column: 10, scope: !2319, inlinedAt: !2384)
!2402 = !DILocation(line: 192, column: 1, scope: !2319, inlinedAt: !2384)
!2403 = !DILocation(line: 949, column: 10, scope: !2310, inlinedAt: !2385)
!2404 = !DILocation(line: 950, column: 1, scope: !2310, inlinedAt: !2385)
!2405 = !DILocation(line: 963, column: 3, scope: !2377)
!2406 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !143, file: !143, line: 967, type: !2407, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!50, !28, !69, !53}
!2409 = !{!2410, !2411, !2412}
!2410 = !DILocalVariable(name: "s", arg: 1, scope: !2406, file: !143, line: 967, type: !28)
!2411 = !DILocalVariable(name: "arg", arg: 2, scope: !2406, file: !143, line: 967, type: !69)
!2412 = !DILocalVariable(name: "argsize", arg: 3, scope: !2406, file: !143, line: 967, type: !53)
!2413 = !DILocation(line: 187, column: 26, scope: !2319, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 956, column: 36, scope: !2347, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 969, column: 10, scope: !2406)
!2416 = !DILocation(line: 967, column: 40, scope: !2406)
!2417 = !DILocation(line: 967, column: 55, scope: !2406)
!2418 = !DILocation(line: 967, column: 67, scope: !2406)
!2419 = !DILocation(line: 953, column: 27, scope: !2347, inlinedAt: !2415)
!2420 = !DILocation(line: 953, column: 49, scope: !2347, inlinedAt: !2415)
!2421 = !DILocation(line: 954, column: 35, scope: !2347, inlinedAt: !2415)
!2422 = !DILocation(line: 954, column: 47, scope: !2347, inlinedAt: !2415)
!2423 = !DILocation(line: 956, column: 3, scope: !2347, inlinedAt: !2415)
!2424 = !DILocation(line: 956, column: 32, scope: !2347, inlinedAt: !2415)
!2425 = !DILocation(line: 185, column: 48, scope: !2319, inlinedAt: !2414)
!2426 = !DILocation(line: 187, column: 3, scope: !2319, inlinedAt: !2414)
!2427 = !DILocation(line: 188, column: 13, scope: !2336, inlinedAt: !2414)
!2428 = !DILocation(line: 188, column: 7, scope: !2319, inlinedAt: !2414)
!2429 = !DILocation(line: 189, column: 5, scope: !2336, inlinedAt: !2414)
!2430 = !{!2431}
!2431 = distinct !{!2431, !2432, !"quoting_options_from_style: argument 0"}
!2432 = distinct !{!2432, !"quoting_options_from_style"}
!2433 = !DILocation(line: 191, column: 10, scope: !2319, inlinedAt: !2414)
!2434 = !DILocation(line: 192, column: 1, scope: !2319, inlinedAt: !2414)
!2435 = !DILocation(line: 957, column: 10, scope: !2347, inlinedAt: !2415)
!2436 = !DILocation(line: 958, column: 1, scope: !2347, inlinedAt: !2415)
!2437 = !DILocation(line: 969, column: 3, scope: !2406)
!2438 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !143, file: !143, line: 973, type: !2439, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!50, !69, !53, !51}
!2441 = !{!2442, !2443, !2444, !2445}
!2442 = !DILocalVariable(name: "arg", arg: 1, scope: !2438, file: !143, line: 973, type: !69)
!2443 = !DILocalVariable(name: "argsize", arg: 2, scope: !2438, file: !143, line: 973, type: !53)
!2444 = !DILocalVariable(name: "ch", arg: 3, scope: !2438, file: !143, line: 973, type: !51)
!2445 = !DILocalVariable(name: "options", scope: !2438, file: !143, line: 975, type: !150)
!2446 = !DILocation(line: 973, column: 32, scope: !2438)
!2447 = !DILocation(line: 973, column: 44, scope: !2438)
!2448 = !DILocation(line: 973, column: 58, scope: !2438)
!2449 = !DILocation(line: 975, column: 3, scope: !2438)
!2450 = !DILocation(line: 976, column: 13, scope: !2438)
!2451 = !{i64 0, i64 4, !742, i64 4, i64 4, !778, i64 8, i64 32, !742, i64 40, i64 8, !614, i64 48, i64 8, !614}
!2452 = !DILocation(line: 975, column: 26, scope: !2438)
!2453 = !DILocation(line: 144, column: 43, scope: !1190, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 977, column: 3, scope: !2438)
!2455 = !DILocation(line: 144, column: 51, scope: !1190, inlinedAt: !2454)
!2456 = !DILocation(line: 144, column: 58, scope: !1190, inlinedAt: !2454)
!2457 = !DILocation(line: 146, column: 17, scope: !1190, inlinedAt: !2454)
!2458 = !DILocation(line: 148, column: 62, scope: !1190, inlinedAt: !2454)
!2459 = !DILocation(line: 148, column: 57, scope: !1190, inlinedAt: !2454)
!2460 = !DILocation(line: 147, column: 17, scope: !1190, inlinedAt: !2454)
!2461 = !DILocation(line: 149, column: 18, scope: !1190, inlinedAt: !2454)
!2462 = !DILocation(line: 149, column: 15, scope: !1190, inlinedAt: !2454)
!2463 = !DILocation(line: 149, column: 7, scope: !1190, inlinedAt: !2454)
!2464 = !DILocation(line: 150, column: 12, scope: !1190, inlinedAt: !2454)
!2465 = !DILocation(line: 150, column: 15, scope: !1190, inlinedAt: !2454)
!2466 = !DILocation(line: 150, column: 25, scope: !1190, inlinedAt: !2454)
!2467 = !DILocation(line: 150, column: 7, scope: !1190, inlinedAt: !2454)
!2468 = !DILocation(line: 151, column: 18, scope: !1190, inlinedAt: !2454)
!2469 = !DILocation(line: 151, column: 23, scope: !1190, inlinedAt: !2454)
!2470 = !DILocation(line: 151, column: 6, scope: !1190, inlinedAt: !2454)
!2471 = !DILocation(line: 978, column: 10, scope: !2438)
!2472 = !DILocation(line: 979, column: 1, scope: !2438)
!2473 = !DILocation(line: 978, column: 3, scope: !2438)
!2474 = distinct !DISubprogram(name: "quotearg_char", scope: !143, file: !143, line: 982, type: !2475, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!50, !69, !51}
!2477 = !{!2478, !2479}
!2478 = !DILocalVariable(name: "arg", arg: 1, scope: !2474, file: !143, line: 982, type: !69)
!2479 = !DILocalVariable(name: "ch", arg: 2, scope: !2474, file: !143, line: 982, type: !51)
!2480 = !DILocation(line: 982, column: 28, scope: !2474)
!2481 = !DILocation(line: 982, column: 38, scope: !2474)
!2482 = !DILocation(line: 973, column: 32, scope: !2438, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 984, column: 10, scope: !2474)
!2484 = !DILocation(line: 973, column: 44, scope: !2438, inlinedAt: !2483)
!2485 = !DILocation(line: 973, column: 58, scope: !2438, inlinedAt: !2483)
!2486 = !DILocation(line: 975, column: 3, scope: !2438, inlinedAt: !2483)
!2487 = !DILocation(line: 976, column: 13, scope: !2438, inlinedAt: !2483)
!2488 = !DILocation(line: 975, column: 26, scope: !2438, inlinedAt: !2483)
!2489 = !DILocation(line: 144, column: 43, scope: !1190, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 977, column: 3, scope: !2438, inlinedAt: !2483)
!2491 = !DILocation(line: 144, column: 51, scope: !1190, inlinedAt: !2490)
!2492 = !DILocation(line: 144, column: 58, scope: !1190, inlinedAt: !2490)
!2493 = !DILocation(line: 146, column: 17, scope: !1190, inlinedAt: !2490)
!2494 = !DILocation(line: 148, column: 62, scope: !1190, inlinedAt: !2490)
!2495 = !DILocation(line: 148, column: 57, scope: !1190, inlinedAt: !2490)
!2496 = !DILocation(line: 147, column: 17, scope: !1190, inlinedAt: !2490)
!2497 = !DILocation(line: 149, column: 18, scope: !1190, inlinedAt: !2490)
!2498 = !DILocation(line: 149, column: 15, scope: !1190, inlinedAt: !2490)
!2499 = !DILocation(line: 149, column: 7, scope: !1190, inlinedAt: !2490)
!2500 = !DILocation(line: 150, column: 12, scope: !1190, inlinedAt: !2490)
!2501 = !DILocation(line: 150, column: 15, scope: !1190, inlinedAt: !2490)
!2502 = !DILocation(line: 150, column: 25, scope: !1190, inlinedAt: !2490)
!2503 = !DILocation(line: 150, column: 7, scope: !1190, inlinedAt: !2490)
!2504 = !DILocation(line: 151, column: 18, scope: !1190, inlinedAt: !2490)
!2505 = !DILocation(line: 151, column: 23, scope: !1190, inlinedAt: !2490)
!2506 = !DILocation(line: 151, column: 6, scope: !1190, inlinedAt: !2490)
!2507 = !DILocation(line: 978, column: 10, scope: !2438, inlinedAt: !2483)
!2508 = !DILocation(line: 979, column: 1, scope: !2438, inlinedAt: !2483)
!2509 = !DILocation(line: 984, column: 3, scope: !2474)
!2510 = distinct !DISubprogram(name: "quotearg_colon", scope: !143, file: !143, line: 988, type: !2286, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2511)
!2511 = !{!2512}
!2512 = !DILocalVariable(name: "arg", arg: 1, scope: !2510, file: !143, line: 988, type: !69)
!2513 = !DILocation(line: 988, column: 29, scope: !2510)
!2514 = !DILocation(line: 982, column: 28, scope: !2474, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 990, column: 10, scope: !2510)
!2516 = !DILocation(line: 982, column: 38, scope: !2474, inlinedAt: !2515)
!2517 = !DILocation(line: 973, column: 32, scope: !2438, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 984, column: 10, scope: !2474, inlinedAt: !2515)
!2519 = !DILocation(line: 973, column: 44, scope: !2438, inlinedAt: !2518)
!2520 = !DILocation(line: 973, column: 58, scope: !2438, inlinedAt: !2518)
!2521 = !DILocation(line: 975, column: 3, scope: !2438, inlinedAt: !2518)
!2522 = !DILocation(line: 976, column: 13, scope: !2438, inlinedAt: !2518)
!2523 = !DILocation(line: 975, column: 26, scope: !2438, inlinedAt: !2518)
!2524 = !DILocation(line: 144, column: 43, scope: !1190, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 977, column: 3, scope: !2438, inlinedAt: !2518)
!2526 = !DILocation(line: 144, column: 51, scope: !1190, inlinedAt: !2525)
!2527 = !DILocation(line: 144, column: 58, scope: !1190, inlinedAt: !2525)
!2528 = !DILocation(line: 146, column: 17, scope: !1190, inlinedAt: !2525)
!2529 = !DILocation(line: 148, column: 57, scope: !1190, inlinedAt: !2525)
!2530 = !DILocation(line: 147, column: 17, scope: !1190, inlinedAt: !2525)
!2531 = !DILocation(line: 149, column: 7, scope: !1190, inlinedAt: !2525)
!2532 = !DILocation(line: 150, column: 12, scope: !1190, inlinedAt: !2525)
!2533 = !DILocation(line: 151, column: 6, scope: !1190, inlinedAt: !2525)
!2534 = !DILocation(line: 978, column: 10, scope: !2438, inlinedAt: !2518)
!2535 = !DILocation(line: 979, column: 1, scope: !2438, inlinedAt: !2518)
!2536 = !DILocation(line: 990, column: 3, scope: !2510)
!2537 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !143, file: !143, line: 994, type: !2297, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2538)
!2538 = !{!2539, !2540}
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2537, file: !143, line: 994, type: !69)
!2540 = !DILocalVariable(name: "argsize", arg: 2, scope: !2537, file: !143, line: 994, type: !53)
!2541 = !DILocation(line: 994, column: 33, scope: !2537)
!2542 = !DILocation(line: 994, column: 45, scope: !2537)
!2543 = !DILocation(line: 973, column: 32, scope: !2438, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 996, column: 10, scope: !2537)
!2545 = !DILocation(line: 973, column: 44, scope: !2438, inlinedAt: !2544)
!2546 = !DILocation(line: 973, column: 58, scope: !2438, inlinedAt: !2544)
!2547 = !DILocation(line: 975, column: 3, scope: !2438, inlinedAt: !2544)
!2548 = !DILocation(line: 976, column: 13, scope: !2438, inlinedAt: !2544)
!2549 = !DILocation(line: 975, column: 26, scope: !2438, inlinedAt: !2544)
!2550 = !DILocation(line: 144, column: 43, scope: !1190, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 977, column: 3, scope: !2438, inlinedAt: !2544)
!2552 = !DILocation(line: 144, column: 51, scope: !1190, inlinedAt: !2551)
!2553 = !DILocation(line: 144, column: 58, scope: !1190, inlinedAt: !2551)
!2554 = !DILocation(line: 146, column: 17, scope: !1190, inlinedAt: !2551)
!2555 = !DILocation(line: 148, column: 57, scope: !1190, inlinedAt: !2551)
!2556 = !DILocation(line: 147, column: 17, scope: !1190, inlinedAt: !2551)
!2557 = !DILocation(line: 149, column: 7, scope: !1190, inlinedAt: !2551)
!2558 = !DILocation(line: 150, column: 12, scope: !1190, inlinedAt: !2551)
!2559 = !DILocation(line: 151, column: 6, scope: !1190, inlinedAt: !2551)
!2560 = !DILocation(line: 978, column: 10, scope: !2438, inlinedAt: !2544)
!2561 = !DILocation(line: 979, column: 1, scope: !2438, inlinedAt: !2544)
!2562 = !DILocation(line: 996, column: 3, scope: !2537)
!2563 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !143, file: !143, line: 1000, type: !2311, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2564)
!2564 = !{!2565, !2566, !2567, !2568}
!2565 = !DILocalVariable(name: "n", arg: 1, scope: !2563, file: !143, line: 1000, type: !43)
!2566 = !DILocalVariable(name: "s", arg: 2, scope: !2563, file: !143, line: 1000, type: !28)
!2567 = !DILocalVariable(name: "arg", arg: 3, scope: !2563, file: !143, line: 1000, type: !69)
!2568 = !DILocalVariable(name: "options", scope: !2563, file: !143, line: 1002, type: !150)
!2569 = !DILocation(line: 187, column: 26, scope: !2319, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 1003, column: 13, scope: !2563)
!2571 = !DILocation(line: 1000, column: 29, scope: !2563)
!2572 = !DILocation(line: 1000, column: 51, scope: !2563)
!2573 = !DILocation(line: 1000, column: 66, scope: !2563)
!2574 = !DILocation(line: 1002, column: 3, scope: !2563)
!2575 = !DILocation(line: 185, column: 48, scope: !2319, inlinedAt: !2570)
!2576 = !DILocation(line: 187, column: 3, scope: !2319, inlinedAt: !2570)
!2577 = !DILocation(line: 188, column: 13, scope: !2336, inlinedAt: !2570)
!2578 = !DILocation(line: 188, column: 7, scope: !2319, inlinedAt: !2570)
!2579 = !DILocation(line: 189, column: 5, scope: !2336, inlinedAt: !2570)
!2580 = !{!2581}
!2581 = distinct !{!2581, !2582, !"quoting_options_from_style: argument 0"}
!2582 = distinct !{!2582, !"quoting_options_from_style"}
!2583 = !DILocation(line: 191, column: 10, scope: !2319, inlinedAt: !2570)
!2584 = !DILocation(line: 192, column: 1, scope: !2319, inlinedAt: !2570)
!2585 = !DILocation(line: 1003, column: 13, scope: !2563)
!2586 = !DILocation(line: 1002, column: 26, scope: !2563)
!2587 = !DILocation(line: 144, column: 43, scope: !1190, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 1004, column: 3, scope: !2563)
!2589 = !DILocation(line: 144, column: 51, scope: !1190, inlinedAt: !2588)
!2590 = !DILocation(line: 144, column: 58, scope: !1190, inlinedAt: !2588)
!2591 = !DILocation(line: 146, column: 17, scope: !1190, inlinedAt: !2588)
!2592 = !DILocation(line: 148, column: 57, scope: !1190, inlinedAt: !2588)
!2593 = !DILocation(line: 147, column: 17, scope: !1190, inlinedAt: !2588)
!2594 = !DILocation(line: 149, column: 7, scope: !1190, inlinedAt: !2588)
!2595 = !DILocation(line: 150, column: 12, scope: !1190, inlinedAt: !2588)
!2596 = !DILocation(line: 151, column: 6, scope: !1190, inlinedAt: !2588)
!2597 = !DILocation(line: 1005, column: 10, scope: !2563)
!2598 = !DILocation(line: 1006, column: 1, scope: !2563)
!2599 = !DILocation(line: 1005, column: 3, scope: !2563)
!2600 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !143, file: !143, line: 1009, type: !2601, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!50, !43, !69, !69, !69}
!2603 = !{!2604, !2605, !2606, !2607}
!2604 = !DILocalVariable(name: "n", arg: 1, scope: !2600, file: !143, line: 1009, type: !43)
!2605 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2600, file: !143, line: 1009, type: !69)
!2606 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2600, file: !143, line: 1010, type: !69)
!2607 = !DILocalVariable(name: "arg", arg: 4, scope: !2600, file: !143, line: 1010, type: !69)
!2608 = !DILocation(line: 1009, column: 24, scope: !2600)
!2609 = !DILocation(line: 1009, column: 39, scope: !2600)
!2610 = !DILocation(line: 1010, column: 32, scope: !2600)
!2611 = !DILocation(line: 1010, column: 57, scope: !2600)
!2612 = !DILocalVariable(name: "n", arg: 1, scope: !2613, file: !143, line: 1017, type: !43)
!2613 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !143, file: !143, line: 1017, type: !2614, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!50, !43, !69, !69, !69, !53}
!2616 = !{!2612, !2617, !2618, !2619, !2620, !2621}
!2617 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2613, file: !143, line: 1017, type: !69)
!2618 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2613, file: !143, line: 1018, type: !69)
!2619 = !DILocalVariable(name: "arg", arg: 4, scope: !2613, file: !143, line: 1019, type: !69)
!2620 = !DILocalVariable(name: "argsize", arg: 5, scope: !2613, file: !143, line: 1019, type: !53)
!2621 = !DILocalVariable(name: "o", scope: !2613, file: !143, line: 1021, type: !150)
!2622 = !DILocation(line: 1017, column: 28, scope: !2613, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 1012, column: 10, scope: !2600)
!2624 = !DILocation(line: 1017, column: 43, scope: !2613, inlinedAt: !2623)
!2625 = !DILocation(line: 1018, column: 36, scope: !2613, inlinedAt: !2623)
!2626 = !DILocation(line: 1019, column: 36, scope: !2613, inlinedAt: !2623)
!2627 = !DILocation(line: 1019, column: 48, scope: !2613, inlinedAt: !2623)
!2628 = !DILocation(line: 1021, column: 3, scope: !2613, inlinedAt: !2623)
!2629 = !DILocation(line: 1021, column: 30, scope: !2613, inlinedAt: !2623)
!2630 = !DILocation(line: 1021, column: 26, scope: !2613, inlinedAt: !2623)
!2631 = !DILocation(line: 171, column: 45, scope: !1239, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 1022, column: 3, scope: !2613, inlinedAt: !2623)
!2633 = !DILocation(line: 172, column: 33, scope: !1239, inlinedAt: !2632)
!2634 = !DILocation(line: 172, column: 57, scope: !1239, inlinedAt: !2632)
!2635 = !DILocation(line: 176, column: 6, scope: !1239, inlinedAt: !2632)
!2636 = !DILocation(line: 176, column: 12, scope: !1239, inlinedAt: !2632)
!2637 = !DILocation(line: 177, column: 8, scope: !1255, inlinedAt: !2632)
!2638 = !DILocation(line: 177, column: 23, scope: !1255, inlinedAt: !2632)
!2639 = !DILocation(line: 177, column: 19, scope: !1255, inlinedAt: !2632)
!2640 = !DILocation(line: 178, column: 5, scope: !1255, inlinedAt: !2632)
!2641 = !DILocation(line: 179, column: 6, scope: !1239, inlinedAt: !2632)
!2642 = !DILocation(line: 179, column: 17, scope: !1239, inlinedAt: !2632)
!2643 = !DILocation(line: 180, column: 6, scope: !1239, inlinedAt: !2632)
!2644 = !DILocation(line: 180, column: 18, scope: !1239, inlinedAt: !2632)
!2645 = !DILocation(line: 1023, column: 10, scope: !2613, inlinedAt: !2623)
!2646 = !DILocation(line: 1024, column: 1, scope: !2613, inlinedAt: !2623)
!2647 = !DILocation(line: 1012, column: 3, scope: !2600)
!2648 = !DILocation(line: 1017, column: 28, scope: !2613)
!2649 = !DILocation(line: 1017, column: 43, scope: !2613)
!2650 = !DILocation(line: 1018, column: 36, scope: !2613)
!2651 = !DILocation(line: 1019, column: 36, scope: !2613)
!2652 = !DILocation(line: 1019, column: 48, scope: !2613)
!2653 = !DILocation(line: 1021, column: 3, scope: !2613)
!2654 = !DILocation(line: 1021, column: 30, scope: !2613)
!2655 = !DILocation(line: 1021, column: 26, scope: !2613)
!2656 = !DILocation(line: 171, column: 45, scope: !1239, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1022, column: 3, scope: !2613)
!2658 = !DILocation(line: 172, column: 33, scope: !1239, inlinedAt: !2657)
!2659 = !DILocation(line: 172, column: 57, scope: !1239, inlinedAt: !2657)
!2660 = !DILocation(line: 176, column: 6, scope: !1239, inlinedAt: !2657)
!2661 = !DILocation(line: 176, column: 12, scope: !1239, inlinedAt: !2657)
!2662 = !DILocation(line: 177, column: 8, scope: !1255, inlinedAt: !2657)
!2663 = !DILocation(line: 177, column: 23, scope: !1255, inlinedAt: !2657)
!2664 = !DILocation(line: 177, column: 19, scope: !1255, inlinedAt: !2657)
!2665 = !DILocation(line: 178, column: 5, scope: !1255, inlinedAt: !2657)
!2666 = !DILocation(line: 179, column: 6, scope: !1239, inlinedAt: !2657)
!2667 = !DILocation(line: 179, column: 17, scope: !1239, inlinedAt: !2657)
!2668 = !DILocation(line: 180, column: 6, scope: !1239, inlinedAt: !2657)
!2669 = !DILocation(line: 180, column: 18, scope: !1239, inlinedAt: !2657)
!2670 = !DILocation(line: 1023, column: 10, scope: !2613)
!2671 = !DILocation(line: 1024, column: 1, scope: !2613)
!2672 = !DILocation(line: 1023, column: 3, scope: !2613)
!2673 = distinct !DISubprogram(name: "quotearg_custom", scope: !143, file: !143, line: 1027, type: !2674, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!50, !69, !69, !69}
!2676 = !{!2677, !2678, !2679}
!2677 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2673, file: !143, line: 1027, type: !69)
!2678 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2673, file: !143, line: 1027, type: !69)
!2679 = !DILocalVariable(name: "arg", arg: 3, scope: !2673, file: !143, line: 1028, type: !69)
!2680 = !DILocation(line: 1027, column: 30, scope: !2673)
!2681 = !DILocation(line: 1027, column: 54, scope: !2673)
!2682 = !DILocation(line: 1028, column: 30, scope: !2673)
!2683 = !DILocation(line: 1009, column: 24, scope: !2600, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 1030, column: 10, scope: !2673)
!2685 = !DILocation(line: 1009, column: 39, scope: !2600, inlinedAt: !2684)
!2686 = !DILocation(line: 1010, column: 32, scope: !2600, inlinedAt: !2684)
!2687 = !DILocation(line: 1010, column: 57, scope: !2600, inlinedAt: !2684)
!2688 = !DILocation(line: 1017, column: 28, scope: !2613, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 1012, column: 10, scope: !2600, inlinedAt: !2684)
!2690 = !DILocation(line: 1017, column: 43, scope: !2613, inlinedAt: !2689)
!2691 = !DILocation(line: 1018, column: 36, scope: !2613, inlinedAt: !2689)
!2692 = !DILocation(line: 1019, column: 36, scope: !2613, inlinedAt: !2689)
!2693 = !DILocation(line: 1019, column: 48, scope: !2613, inlinedAt: !2689)
!2694 = !DILocation(line: 1021, column: 3, scope: !2613, inlinedAt: !2689)
!2695 = !DILocation(line: 1021, column: 30, scope: !2613, inlinedAt: !2689)
!2696 = !DILocation(line: 1021, column: 26, scope: !2613, inlinedAt: !2689)
!2697 = !DILocation(line: 171, column: 45, scope: !1239, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1022, column: 3, scope: !2613, inlinedAt: !2689)
!2699 = !DILocation(line: 172, column: 33, scope: !1239, inlinedAt: !2698)
!2700 = !DILocation(line: 172, column: 57, scope: !1239, inlinedAt: !2698)
!2701 = !DILocation(line: 176, column: 6, scope: !1239, inlinedAt: !2698)
!2702 = !DILocation(line: 176, column: 12, scope: !1239, inlinedAt: !2698)
!2703 = !DILocation(line: 177, column: 8, scope: !1255, inlinedAt: !2698)
!2704 = !DILocation(line: 177, column: 23, scope: !1255, inlinedAt: !2698)
!2705 = !DILocation(line: 177, column: 19, scope: !1255, inlinedAt: !2698)
!2706 = !DILocation(line: 178, column: 5, scope: !1255, inlinedAt: !2698)
!2707 = !DILocation(line: 179, column: 6, scope: !1239, inlinedAt: !2698)
!2708 = !DILocation(line: 179, column: 17, scope: !1239, inlinedAt: !2698)
!2709 = !DILocation(line: 180, column: 6, scope: !1239, inlinedAt: !2698)
!2710 = !DILocation(line: 180, column: 18, scope: !1239, inlinedAt: !2698)
!2711 = !DILocation(line: 1023, column: 10, scope: !2613, inlinedAt: !2689)
!2712 = !DILocation(line: 1024, column: 1, scope: !2613, inlinedAt: !2689)
!2713 = !DILocation(line: 1030, column: 3, scope: !2673)
!2714 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !143, file: !143, line: 1034, type: !2715, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!50, !69, !69, !69, !53}
!2717 = !{!2718, !2719, !2720, !2721}
!2718 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2714, file: !143, line: 1034, type: !69)
!2719 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2714, file: !143, line: 1034, type: !69)
!2720 = !DILocalVariable(name: "arg", arg: 3, scope: !2714, file: !143, line: 1035, type: !69)
!2721 = !DILocalVariable(name: "argsize", arg: 4, scope: !2714, file: !143, line: 1035, type: !53)
!2722 = !DILocation(line: 1034, column: 34, scope: !2714)
!2723 = !DILocation(line: 1034, column: 58, scope: !2714)
!2724 = !DILocation(line: 1035, column: 34, scope: !2714)
!2725 = !DILocation(line: 1035, column: 46, scope: !2714)
!2726 = !DILocation(line: 1017, column: 28, scope: !2613, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1037, column: 10, scope: !2714)
!2728 = !DILocation(line: 1017, column: 43, scope: !2613, inlinedAt: !2727)
!2729 = !DILocation(line: 1018, column: 36, scope: !2613, inlinedAt: !2727)
!2730 = !DILocation(line: 1019, column: 36, scope: !2613, inlinedAt: !2727)
!2731 = !DILocation(line: 1019, column: 48, scope: !2613, inlinedAt: !2727)
!2732 = !DILocation(line: 1021, column: 3, scope: !2613, inlinedAt: !2727)
!2733 = !DILocation(line: 1021, column: 30, scope: !2613, inlinedAt: !2727)
!2734 = !DILocation(line: 1021, column: 26, scope: !2613, inlinedAt: !2727)
!2735 = !DILocation(line: 171, column: 45, scope: !1239, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1022, column: 3, scope: !2613, inlinedAt: !2727)
!2737 = !DILocation(line: 172, column: 33, scope: !1239, inlinedAt: !2736)
!2738 = !DILocation(line: 172, column: 57, scope: !1239, inlinedAt: !2736)
!2739 = !DILocation(line: 176, column: 6, scope: !1239, inlinedAt: !2736)
!2740 = !DILocation(line: 176, column: 12, scope: !1239, inlinedAt: !2736)
!2741 = !DILocation(line: 177, column: 8, scope: !1255, inlinedAt: !2736)
!2742 = !DILocation(line: 177, column: 23, scope: !1255, inlinedAt: !2736)
!2743 = !DILocation(line: 177, column: 19, scope: !1255, inlinedAt: !2736)
!2744 = !DILocation(line: 178, column: 5, scope: !1255, inlinedAt: !2736)
!2745 = !DILocation(line: 179, column: 6, scope: !1239, inlinedAt: !2736)
!2746 = !DILocation(line: 179, column: 17, scope: !1239, inlinedAt: !2736)
!2747 = !DILocation(line: 180, column: 6, scope: !1239, inlinedAt: !2736)
!2748 = !DILocation(line: 180, column: 18, scope: !1239, inlinedAt: !2736)
!2749 = !DILocation(line: 1023, column: 10, scope: !2613, inlinedAt: !2727)
!2750 = !DILocation(line: 1024, column: 1, scope: !2613, inlinedAt: !2727)
!2751 = !DILocation(line: 1037, column: 3, scope: !2714)
!2752 = distinct !DISubprogram(name: "quote_n_mem", scope: !143, file: !143, line: 1052, type: !2753, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!69, !43, !69, !53}
!2755 = !{!2756, !2757, !2758}
!2756 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !143, line: 1052, type: !43)
!2757 = !DILocalVariable(name: "arg", arg: 2, scope: !2752, file: !143, line: 1052, type: !69)
!2758 = !DILocalVariable(name: "argsize", arg: 3, scope: !2752, file: !143, line: 1052, type: !53)
!2759 = !DILocation(line: 1052, column: 18, scope: !2752)
!2760 = !DILocation(line: 1052, column: 33, scope: !2752)
!2761 = !DILocation(line: 1052, column: 45, scope: !2752)
!2762 = !DILocation(line: 1054, column: 10, scope: !2752)
!2763 = !DILocation(line: 1054, column: 3, scope: !2752)
!2764 = distinct !DISubprogram(name: "quote_mem", scope: !143, file: !143, line: 1058, type: !2765, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!69, !69, !53}
!2767 = !{!2768, !2769}
!2768 = !DILocalVariable(name: "arg", arg: 1, scope: !2764, file: !143, line: 1058, type: !69)
!2769 = !DILocalVariable(name: "argsize", arg: 2, scope: !2764, file: !143, line: 1058, type: !53)
!2770 = !DILocation(line: 1058, column: 24, scope: !2764)
!2771 = !DILocation(line: 1058, column: 36, scope: !2764)
!2772 = !DILocation(line: 1052, column: 18, scope: !2752, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 1060, column: 10, scope: !2764)
!2774 = !DILocation(line: 1052, column: 33, scope: !2752, inlinedAt: !2773)
!2775 = !DILocation(line: 1052, column: 45, scope: !2752, inlinedAt: !2773)
!2776 = !DILocation(line: 1054, column: 10, scope: !2752, inlinedAt: !2773)
!2777 = !DILocation(line: 1060, column: 3, scope: !2764)
!2778 = distinct !DISubprogram(name: "quote_n", scope: !143, file: !143, line: 1064, type: !2779, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2781)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!69, !43, !69}
!2781 = !{!2782, !2783}
!2782 = !DILocalVariable(name: "n", arg: 1, scope: !2778, file: !143, line: 1064, type: !43)
!2783 = !DILocalVariable(name: "arg", arg: 2, scope: !2778, file: !143, line: 1064, type: !69)
!2784 = !DILocation(line: 1064, column: 14, scope: !2778)
!2785 = !DILocation(line: 1064, column: 29, scope: !2778)
!2786 = !DILocation(line: 1052, column: 18, scope: !2752, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 1066, column: 10, scope: !2778)
!2788 = !DILocation(line: 1052, column: 33, scope: !2752, inlinedAt: !2787)
!2789 = !DILocation(line: 1052, column: 45, scope: !2752, inlinedAt: !2787)
!2790 = !DILocation(line: 1054, column: 10, scope: !2752, inlinedAt: !2787)
!2791 = !DILocation(line: 1066, column: 3, scope: !2778)
!2792 = distinct !DISubprogram(name: "quote", scope: !143, file: !143, line: 1070, type: !2793, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!69, !69}
!2795 = !{!2796}
!2796 = !DILocalVariable(name: "arg", arg: 1, scope: !2792, file: !143, line: 1070, type: !69)
!2797 = !DILocation(line: 1070, column: 20, scope: !2792)
!2798 = !DILocation(line: 1064, column: 14, scope: !2778, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1072, column: 10, scope: !2792)
!2800 = !DILocation(line: 1064, column: 29, scope: !2778, inlinedAt: !2799)
!2801 = !DILocation(line: 1052, column: 18, scope: !2752, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 1066, column: 10, scope: !2778, inlinedAt: !2799)
!2803 = !DILocation(line: 1052, column: 33, scope: !2752, inlinedAt: !2802)
!2804 = !DILocation(line: 1052, column: 45, scope: !2752, inlinedAt: !2802)
!2805 = !DILocation(line: 1054, column: 10, scope: !2752, inlinedAt: !2802)
!2806 = !DILocation(line: 1072, column: 3, scope: !2792)
!2807 = distinct !DISubprogram(name: "version_etc_arn", scope: !545, file: !545, line: 62, type: !2808, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !2863)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !2810, !69, !69, !69, !2862, !53}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2812, line: 7, baseType: !2813)
!2812 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2814, line: 241, size: 1728, elements: !2815)
!2814 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2836, !2837, !2838, !2839, !2840, !2841, !2843, !2847, !2850, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2813, file: !2814, line: 242, baseType: !43, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2813, file: !2814, line: 247, baseType: !50, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2813, file: !2814, line: 248, baseType: !50, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2813, file: !2814, line: 249, baseType: !50, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2813, file: !2814, line: 250, baseType: !50, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2813, file: !2814, line: 251, baseType: !50, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2813, file: !2814, line: 252, baseType: !50, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2813, file: !2814, line: 253, baseType: !50, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2813, file: !2814, line: 254, baseType: !50, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2813, file: !2814, line: 256, baseType: !50, size: 64, offset: 576)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2813, file: !2814, line: 257, baseType: !50, size: 64, offset: 640)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2813, file: !2814, line: 258, baseType: !50, size: 64, offset: 704)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2813, file: !2814, line: 260, baseType: !2829, size: 64, offset: 768)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2814, line: 156, size: 192, elements: !2831)
!2831 = !{!2832, !2833, !2835}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2830, file: !2814, line: 157, baseType: !2829, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2830, file: !2814, line: 158, baseType: !2834, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2830, file: !2814, line: 162, baseType: !43, size: 32, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2813, file: !2814, line: 262, baseType: !2834, size: 64, offset: 832)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2813, file: !2814, line: 264, baseType: !43, size: 32, offset: 896)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2813, file: !2814, line: 268, baseType: !43, size: 32, offset: 928)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2813, file: !2814, line: 270, baseType: !47, size: 64, offset: 960)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2813, file: !2814, line: 274, baseType: !44, size: 16, offset: 1024)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2813, file: !2814, line: 275, baseType: !2842, size: 8, offset: 1040)
!2842 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2813, file: !2814, line: 276, baseType: !2844, size: 8, offset: 1048)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8, elements: !2845)
!2845 = !{!2846}
!2846 = !DISubrange(count: 1)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2813, file: !2814, line: 280, baseType: !2848, size: 64, offset: 1088)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2814, line: 150, baseType: null)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2813, file: !2814, line: 289, baseType: !2851, size: 64, offset: 1152)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !48, line: 141, baseType: !49)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2813, file: !2814, line: 297, baseType: !52, size: 64, offset: 1216)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2813, file: !2814, line: 298, baseType: !52, size: 64, offset: 1280)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2813, file: !2814, line: 299, baseType: !52, size: 64, offset: 1344)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2813, file: !2814, line: 300, baseType: !52, size: 64, offset: 1408)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2813, file: !2814, line: 302, baseType: !53, size: 64, offset: 1472)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2813, file: !2814, line: 303, baseType: !43, size: 32, offset: 1536)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2813, file: !2814, line: 305, baseType: !2859, size: 160, offset: 1568)
!2859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, elements: !2860)
!2860 = !{!2861}
!2861 = !DISubrange(count: 20)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2869}
!2864 = !DILocalVariable(name: "stream", arg: 1, scope: !2807, file: !545, line: 62, type: !2810)
!2865 = !DILocalVariable(name: "command_name", arg: 2, scope: !2807, file: !545, line: 63, type: !69)
!2866 = !DILocalVariable(name: "package", arg: 3, scope: !2807, file: !545, line: 63, type: !69)
!2867 = !DILocalVariable(name: "version", arg: 4, scope: !2807, file: !545, line: 64, type: !69)
!2868 = !DILocalVariable(name: "authors", arg: 5, scope: !2807, file: !545, line: 65, type: !2862)
!2869 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2807, file: !545, line: 65, type: !53)
!2870 = !DILocation(line: 62, column: 24, scope: !2807)
!2871 = !DILocation(line: 63, column: 30, scope: !2807)
!2872 = !DILocation(line: 63, column: 56, scope: !2807)
!2873 = !DILocation(line: 64, column: 30, scope: !2807)
!2874 = !DILocation(line: 65, column: 39, scope: !2807)
!2875 = !DILocation(line: 65, column: 55, scope: !2807)
!2876 = !DILocation(line: 67, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2807, file: !545, line: 67, column: 7)
!2878 = !DILocation(line: 67, column: 7, scope: !2807)
!2879 = !DILocation(line: 68, column: 5, scope: !2877)
!2880 = !DILocation(line: 70, column: 5, scope: !2877)
!2881 = !DILocation(line: 84, column: 3, scope: !2807)
!2882 = !DILocation(line: 86, column: 3, scope: !2807)
!2883 = !DILocation(line: 95, column: 3, scope: !2807)
!2884 = !DILocation(line: 99, column: 7, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2807, file: !545, line: 96, column: 5)
!2886 = !DILocation(line: 102, column: 7, scope: !2885)
!2887 = !DILocation(line: 103, column: 7, scope: !2885)
!2888 = !DILocation(line: 106, column: 7, scope: !2885)
!2889 = !DILocation(line: 107, column: 7, scope: !2885)
!2890 = !DILocation(line: 110, column: 7, scope: !2885)
!2891 = !DILocation(line: 112, column: 7, scope: !2885)
!2892 = !DILocation(line: 117, column: 7, scope: !2885)
!2893 = !DILocation(line: 119, column: 7, scope: !2885)
!2894 = !DILocation(line: 124, column: 7, scope: !2885)
!2895 = !DILocation(line: 126, column: 7, scope: !2885)
!2896 = !DILocation(line: 131, column: 7, scope: !2885)
!2897 = !DILocation(line: 134, column: 7, scope: !2885)
!2898 = !DILocation(line: 139, column: 7, scope: !2885)
!2899 = !DILocation(line: 142, column: 7, scope: !2885)
!2900 = !DILocation(line: 147, column: 7, scope: !2885)
!2901 = !DILocation(line: 151, column: 7, scope: !2885)
!2902 = !DILocation(line: 156, column: 7, scope: !2885)
!2903 = !DILocation(line: 160, column: 7, scope: !2885)
!2904 = !DILocation(line: 167, column: 7, scope: !2885)
!2905 = !DILocation(line: 171, column: 7, scope: !2885)
!2906 = !DILocation(line: 173, column: 1, scope: !2807)
!2907 = distinct !DISubprogram(name: "version_etc_ar", scope: !545, file: !545, line: 180, type: !2908, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2810, !69, !69, !69, !2862}
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916}
!2911 = !DILocalVariable(name: "stream", arg: 1, scope: !2907, file: !545, line: 180, type: !2810)
!2912 = !DILocalVariable(name: "command_name", arg: 2, scope: !2907, file: !545, line: 181, type: !69)
!2913 = !DILocalVariable(name: "package", arg: 3, scope: !2907, file: !545, line: 181, type: !69)
!2914 = !DILocalVariable(name: "version", arg: 4, scope: !2907, file: !545, line: 182, type: !69)
!2915 = !DILocalVariable(name: "authors", arg: 5, scope: !2907, file: !545, line: 182, type: !2862)
!2916 = !DILocalVariable(name: "n_authors", scope: !2907, file: !545, line: 184, type: !53)
!2917 = !DILocation(line: 180, column: 23, scope: !2907)
!2918 = !DILocation(line: 181, column: 29, scope: !2907)
!2919 = !DILocation(line: 181, column: 55, scope: !2907)
!2920 = !DILocation(line: 182, column: 29, scope: !2907)
!2921 = !DILocation(line: 182, column: 59, scope: !2907)
!2922 = !DILocation(line: 184, column: 10, scope: !2907)
!2923 = !DILocation(line: 186, column: 8, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2907, file: !545, line: 186, column: 3)
!2925 = !DILocation(line: 186, column: 23, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2924, file: !545, line: 186, column: 3)
!2927 = !DILocation(line: 186, column: 3, scope: !2924)
!2928 = !DILocation(line: 186, column: 52, scope: !2926)
!2929 = distinct !{!2929, !2927, !2930}
!2930 = !DILocation(line: 187, column: 5, scope: !2924)
!2931 = !DILocation(line: 188, column: 3, scope: !2907)
!2932 = !DILocation(line: 189, column: 1, scope: !2907)
!2933 = distinct !DISubprogram(name: "version_etc_va", scope: !545, file: !545, line: 196, type: !2934, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !2943)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{null, !2810, !69, !69, !69, !2936}
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !542, line: 189, size: 192, elements: !2938)
!2938 = !{!2939, !2940, !2941, !2942}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2937, file: !542, line: 189, baseType: !156, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2937, file: !542, line: 189, baseType: !156, size: 32, offset: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2937, file: !542, line: 189, baseType: !52, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2937, file: !542, line: 189, baseType: !52, size: 64, offset: 128)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950}
!2944 = !DILocalVariable(name: "stream", arg: 1, scope: !2933, file: !545, line: 196, type: !2810)
!2945 = !DILocalVariable(name: "command_name", arg: 2, scope: !2933, file: !545, line: 197, type: !69)
!2946 = !DILocalVariable(name: "package", arg: 3, scope: !2933, file: !545, line: 197, type: !69)
!2947 = !DILocalVariable(name: "version", arg: 4, scope: !2933, file: !545, line: 198, type: !69)
!2948 = !DILocalVariable(name: "authors", arg: 5, scope: !2933, file: !545, line: 198, type: !2936)
!2949 = !DILocalVariable(name: "n_authors", scope: !2933, file: !545, line: 200, type: !53)
!2950 = !DILocalVariable(name: "authtab", scope: !2933, file: !545, line: 201, type: !2951)
!2951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 640, elements: !146)
!2952 = !DILocation(line: 196, column: 23, scope: !2933)
!2953 = !DILocation(line: 197, column: 29, scope: !2933)
!2954 = !DILocation(line: 197, column: 55, scope: !2933)
!2955 = !DILocation(line: 198, column: 29, scope: !2933)
!2956 = !DILocation(line: 198, column: 46, scope: !2933)
!2957 = !DILocation(line: 201, column: 3, scope: !2933)
!2958 = !DILocation(line: 201, column: 15, scope: !2933)
!2959 = !DILocation(line: 200, column: 10, scope: !2933)
!2960 = !DILocation(line: 205, column: 35, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !545, line: 203, column: 3)
!2962 = distinct !DILexicalBlock(scope: !2933, file: !545, line: 203, column: 3)
!2963 = !DILocation(line: 205, column: 14, scope: !2961)
!2964 = !DILocation(line: 205, column: 33, scope: !2961)
!2965 = !DILocation(line: 205, column: 67, scope: !2961)
!2966 = !DILocation(line: 203, column: 3, scope: !2962)
!2967 = !DILocation(line: 208, column: 3, scope: !2933)
!2968 = !DILocation(line: 210, column: 1, scope: !2933)
!2969 = distinct !DISubprogram(name: "version_etc", scope: !545, file: !545, line: 227, type: !2970, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{null, !2810, !69, !69, !69, null}
!2972 = !{!2973, !2974, !2975, !2976, !2977}
!2973 = !DILocalVariable(name: "stream", arg: 1, scope: !2969, file: !545, line: 227, type: !2810)
!2974 = !DILocalVariable(name: "command_name", arg: 2, scope: !2969, file: !545, line: 228, type: !69)
!2975 = !DILocalVariable(name: "package", arg: 3, scope: !2969, file: !545, line: 228, type: !69)
!2976 = !DILocalVariable(name: "version", arg: 4, scope: !2969, file: !545, line: 229, type: !69)
!2977 = !DILocalVariable(name: "authors", scope: !2969, file: !545, line: 231, type: !2978)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !46, line: 46, baseType: !2979)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2980, line: 48, baseType: !2981)
!2980 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !542, line: 231, baseType: !2982)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2937, size: 192, elements: !2845)
!2983 = !DILocation(line: 227, column: 20, scope: !2969)
!2984 = !DILocation(line: 228, column: 26, scope: !2969)
!2985 = !DILocation(line: 228, column: 52, scope: !2969)
!2986 = !DILocation(line: 229, column: 26, scope: !2969)
!2987 = !DILocation(line: 231, column: 3, scope: !2969)
!2988 = !DILocation(line: 231, column: 11, scope: !2969)
!2989 = !DILocation(line: 233, column: 3, scope: !2969)
!2990 = !DILocation(line: 234, column: 3, scope: !2969)
!2991 = !DILocation(line: 235, column: 3, scope: !2969)
!2992 = !DILocation(line: 236, column: 1, scope: !2969)
!2993 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !545, file: !545, line: 239, type: !623, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !105)
!2994 = !DILocation(line: 245, column: 3, scope: !2993)
!2995 = !DILocation(line: 251, column: 3, scope: !2993)
!2996 = !DILocation(line: 256, column: 3, scope: !2993)
!2997 = !DILocation(line: 258, column: 1, scope: !2993)
!2998 = distinct !DISubprogram(name: "xnmalloc", scope: !553, file: !553, line: 105, type: !2999, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!52, !53, !53}
!3001 = !{!3002, !3003}
!3002 = !DILocalVariable(name: "n", arg: 1, scope: !2998, file: !553, line: 105, type: !53)
!3003 = !DILocalVariable(name: "s", arg: 2, scope: !2998, file: !553, line: 105, type: !53)
!3004 = !DILocation(line: 105, column: 18, scope: !2998)
!3005 = !DILocation(line: 105, column: 28, scope: !2998)
!3006 = !DILocation(line: 107, column: 7, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2998, file: !553, line: 107, column: 7)
!3008 = !DILocation(line: 107, column: 7, scope: !2998)
!3009 = !DILocation(line: 108, column: 5, scope: !3007)
!3010 = !DILocation(line: 109, column: 21, scope: !2998)
!3011 = !DILocalVariable(name: "n", arg: 1, scope: !3012, file: !3013, line: 39, type: !53)
!3012 = distinct !DISubprogram(name: "xmalloc", scope: !3013, file: !3013, line: 39, type: !3014, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3016)
!3013 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!52, !53}
!3016 = !{!3011, !3017}
!3017 = !DILocalVariable(name: "p", scope: !3012, file: !3013, line: 41, type: !52)
!3018 = !DILocation(line: 39, column: 17, scope: !3012, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 109, column: 10, scope: !2998)
!3020 = !DILocation(line: 41, column: 13, scope: !3012, inlinedAt: !3019)
!3021 = !DILocation(line: 41, column: 9, scope: !3012, inlinedAt: !3019)
!3022 = !DILocation(line: 42, column: 8, scope: !3023, inlinedAt: !3019)
!3023 = distinct !DILexicalBlock(scope: !3012, file: !3013, line: 42, column: 7)
!3024 = !DILocation(line: 42, column: 15, scope: !3023, inlinedAt: !3019)
!3025 = !DILocation(line: 42, column: 10, scope: !3023, inlinedAt: !3019)
!3026 = !DILocation(line: 43, column: 5, scope: !3023, inlinedAt: !3019)
!3027 = !DILocation(line: 109, column: 3, scope: !2998)
!3028 = !DILocation(line: 39, column: 17, scope: !3012)
!3029 = !DILocation(line: 41, column: 13, scope: !3012)
!3030 = !DILocation(line: 41, column: 9, scope: !3012)
!3031 = !DILocation(line: 42, column: 8, scope: !3023)
!3032 = !DILocation(line: 42, column: 15, scope: !3023)
!3033 = !DILocation(line: 42, column: 10, scope: !3023)
!3034 = !DILocation(line: 43, column: 5, scope: !3023)
!3035 = !DILocation(line: 44, column: 3, scope: !3012)
!3036 = distinct !DISubprogram(name: "xnrealloc", scope: !553, file: !553, line: 118, type: !3037, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!52, !52, !53, !53}
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "p", arg: 1, scope: !3036, file: !553, line: 118, type: !52)
!3041 = !DILocalVariable(name: "n", arg: 2, scope: !3036, file: !553, line: 118, type: !53)
!3042 = !DILocalVariable(name: "s", arg: 3, scope: !3036, file: !553, line: 118, type: !53)
!3043 = !DILocation(line: 118, column: 18, scope: !3036)
!3044 = !DILocation(line: 118, column: 28, scope: !3036)
!3045 = !DILocation(line: 118, column: 38, scope: !3036)
!3046 = !DILocation(line: 120, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3036, file: !553, line: 120, column: 7)
!3048 = !DILocation(line: 120, column: 7, scope: !3036)
!3049 = !DILocation(line: 121, column: 5, scope: !3047)
!3050 = !DILocation(line: 122, column: 25, scope: !3036)
!3051 = !DILocalVariable(name: "p", arg: 1, scope: !3052, file: !3013, line: 51, type: !52)
!3052 = distinct !DISubprogram(name: "xrealloc", scope: !3013, file: !3013, line: 51, type: !3053, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!52, !52, !53}
!3055 = !{!3051, !3056}
!3056 = !DILocalVariable(name: "n", arg: 2, scope: !3052, file: !3013, line: 51, type: !53)
!3057 = !DILocation(line: 51, column: 17, scope: !3052, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 122, column: 10, scope: !3036)
!3059 = !DILocation(line: 51, column: 27, scope: !3052, inlinedAt: !3058)
!3060 = !DILocation(line: 53, column: 8, scope: !3061, inlinedAt: !3058)
!3061 = distinct !DILexicalBlock(scope: !3052, file: !3013, line: 53, column: 7)
!3062 = !DILocation(line: 53, column: 13, scope: !3061, inlinedAt: !3058)
!3063 = !DILocation(line: 53, column: 10, scope: !3061, inlinedAt: !3058)
!3064 = !DILocation(line: 57, column: 7, scope: !3065, inlinedAt: !3058)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !3013, line: 54, column: 5)
!3066 = !DILocation(line: 58, column: 7, scope: !3065, inlinedAt: !3058)
!3067 = !DILocation(line: 61, column: 7, scope: !3052, inlinedAt: !3058)
!3068 = !DILocation(line: 62, column: 8, scope: !3069, inlinedAt: !3058)
!3069 = distinct !DILexicalBlock(scope: !3052, file: !3013, line: 62, column: 7)
!3070 = !DILocation(line: 62, column: 13, scope: !3069, inlinedAt: !3058)
!3071 = !DILocation(line: 62, column: 10, scope: !3069, inlinedAt: !3058)
!3072 = !DILocation(line: 63, column: 5, scope: !3069, inlinedAt: !3058)
!3073 = !DILocation(line: 122, column: 3, scope: !3036)
!3074 = !DILocation(line: 51, column: 17, scope: !3052)
!3075 = !DILocation(line: 51, column: 27, scope: !3052)
!3076 = !DILocation(line: 53, column: 8, scope: !3061)
!3077 = !DILocation(line: 53, column: 13, scope: !3061)
!3078 = !DILocation(line: 53, column: 10, scope: !3061)
!3079 = !DILocation(line: 57, column: 7, scope: !3065)
!3080 = !DILocation(line: 58, column: 7, scope: !3065)
!3081 = !DILocation(line: 61, column: 7, scope: !3052)
!3082 = !DILocation(line: 62, column: 8, scope: !3069)
!3083 = !DILocation(line: 62, column: 13, scope: !3069)
!3084 = !DILocation(line: 62, column: 10, scope: !3069)
!3085 = !DILocation(line: 63, column: 5, scope: !3069)
!3086 = !DILocation(line: 65, column: 1, scope: !3052)
!3087 = !DILocation(line: 180, column: 19, scope: !554)
!3088 = !DILocation(line: 180, column: 30, scope: !554)
!3089 = !DILocation(line: 180, column: 41, scope: !554)
!3090 = !DILocation(line: 182, column: 14, scope: !554)
!3091 = !DILocation(line: 182, column: 10, scope: !554)
!3092 = !DILocation(line: 184, column: 9, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !554, file: !553, line: 184, column: 7)
!3094 = !DILocation(line: 184, column: 7, scope: !554)
!3095 = !DILocation(line: 186, column: 13, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !553, line: 186, column: 11)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !553, line: 185, column: 5)
!3098 = !DILocation(line: 186, column: 11, scope: !3097)
!3099 = !DILocation(line: 194, column: 30, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3096, file: !553, line: 187, column: 9)
!3101 = !DILocation(line: 195, column: 16, scope: !3100)
!3102 = !DILocation(line: 195, column: 13, scope: !3100)
!3103 = !DILocation(line: 196, column: 9, scope: !3100)
!3104 = !DILocation(line: 204, column: 69, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !553, line: 204, column: 11)
!3106 = distinct !DILexicalBlock(scope: !3093, file: !553, line: 199, column: 5)
!3107 = !DILocation(line: 205, column: 11, scope: !3105)
!3108 = !DILocation(line: 204, column: 11, scope: !3106)
!3109 = !DILocation(line: 206, column: 9, scope: !3105)
!3110 = !DILocation(line: 210, column: 7, scope: !554)
!3111 = !DILocation(line: 211, column: 25, scope: !554)
!3112 = !DILocation(line: 51, column: 17, scope: !3052, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 211, column: 10, scope: !554)
!3114 = !DILocation(line: 51, column: 27, scope: !3052, inlinedAt: !3113)
!3115 = !DILocation(line: 53, column: 10, scope: !3061, inlinedAt: !3113)
!3116 = !DILocation(line: 207, column: 14, scope: !3106)
!3117 = !DILocation(line: 207, column: 18, scope: !3106)
!3118 = !DILocation(line: 207, column: 9, scope: !3106)
!3119 = !DILocation(line: 53, column: 8, scope: !3061, inlinedAt: !3113)
!3120 = !DILocation(line: 57, column: 7, scope: !3065, inlinedAt: !3113)
!3121 = !DILocation(line: 58, column: 7, scope: !3065, inlinedAt: !3113)
!3122 = !DILocation(line: 61, column: 7, scope: !3052, inlinedAt: !3113)
!3123 = !DILocation(line: 62, column: 8, scope: !3069, inlinedAt: !3113)
!3124 = !DILocation(line: 62, column: 13, scope: !3069, inlinedAt: !3113)
!3125 = !DILocation(line: 62, column: 10, scope: !3069, inlinedAt: !3113)
!3126 = !DILocation(line: 63, column: 5, scope: !3069, inlinedAt: !3113)
!3127 = !DILocation(line: 211, column: 3, scope: !554)
!3128 = distinct !DISubprogram(name: "xcharalloc", scope: !553, file: !553, line: 220, type: !2085, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3129)
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "n", arg: 1, scope: !3128, file: !553, line: 220, type: !53)
!3131 = !DILocation(line: 220, column: 20, scope: !3128)
!3132 = !DILocation(line: 39, column: 17, scope: !3012, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 222, column: 10, scope: !3128)
!3134 = !DILocation(line: 41, column: 13, scope: !3012, inlinedAt: !3133)
!3135 = !DILocation(line: 41, column: 9, scope: !3012, inlinedAt: !3133)
!3136 = !DILocation(line: 42, column: 8, scope: !3023, inlinedAt: !3133)
!3137 = !DILocation(line: 42, column: 15, scope: !3023, inlinedAt: !3133)
!3138 = !DILocation(line: 42, column: 10, scope: !3023, inlinedAt: !3133)
!3139 = !DILocation(line: 43, column: 5, scope: !3023, inlinedAt: !3133)
!3140 = !DILocation(line: 222, column: 3, scope: !3128)
!3141 = distinct !DISubprogram(name: "x2realloc", scope: !3013, file: !3013, line: 74, type: !3142, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!52, !52, !557}
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "p", arg: 1, scope: !3141, file: !3013, line: 74, type: !52)
!3146 = !DILocalVariable(name: "pn", arg: 2, scope: !3141, file: !3013, line: 74, type: !557)
!3147 = !DILocation(line: 74, column: 18, scope: !3141)
!3148 = !DILocation(line: 74, column: 29, scope: !3141)
!3149 = !DILocation(line: 180, column: 19, scope: !554, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 76, column: 10, scope: !3141)
!3151 = !DILocation(line: 180, column: 30, scope: !554, inlinedAt: !3150)
!3152 = !DILocation(line: 180, column: 41, scope: !554, inlinedAt: !3150)
!3153 = !DILocation(line: 182, column: 14, scope: !554, inlinedAt: !3150)
!3154 = !DILocation(line: 182, column: 10, scope: !554, inlinedAt: !3150)
!3155 = !DILocation(line: 184, column: 9, scope: !3093, inlinedAt: !3150)
!3156 = !DILocation(line: 184, column: 7, scope: !554, inlinedAt: !3150)
!3157 = !DILocation(line: 186, column: 13, scope: !3096, inlinedAt: !3150)
!3158 = !DILocation(line: 186, column: 11, scope: !3097, inlinedAt: !3150)
!3159 = !DILocation(line: 210, column: 7, scope: !554, inlinedAt: !3150)
!3160 = !DILocation(line: 51, column: 17, scope: !3052, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 211, column: 10, scope: !554, inlinedAt: !3150)
!3162 = !DILocation(line: 51, column: 27, scope: !3052, inlinedAt: !3161)
!3163 = !DILocation(line: 53, column: 10, scope: !3061, inlinedAt: !3161)
!3164 = !DILocation(line: 205, column: 11, scope: !3105, inlinedAt: !3150)
!3165 = !DILocation(line: 204, column: 11, scope: !3106, inlinedAt: !3150)
!3166 = !DILocation(line: 206, column: 9, scope: !3105, inlinedAt: !3150)
!3167 = !DILocation(line: 207, column: 14, scope: !3106, inlinedAt: !3150)
!3168 = !DILocation(line: 207, column: 18, scope: !3106, inlinedAt: !3150)
!3169 = !DILocation(line: 207, column: 9, scope: !3106, inlinedAt: !3150)
!3170 = !DILocation(line: 53, column: 8, scope: !3061, inlinedAt: !3161)
!3171 = !DILocation(line: 57, column: 7, scope: !3065, inlinedAt: !3161)
!3172 = !DILocation(line: 58, column: 7, scope: !3065, inlinedAt: !3161)
!3173 = !DILocation(line: 61, column: 7, scope: !3052, inlinedAt: !3161)
!3174 = !DILocation(line: 62, column: 8, scope: !3069, inlinedAt: !3161)
!3175 = !DILocation(line: 62, column: 13, scope: !3069, inlinedAt: !3161)
!3176 = !DILocation(line: 62, column: 10, scope: !3069, inlinedAt: !3161)
!3177 = !DILocation(line: 63, column: 5, scope: !3069, inlinedAt: !3161)
!3178 = !DILocation(line: 76, column: 3, scope: !3141)
!3179 = distinct !DISubprogram(name: "xzalloc", scope: !3013, file: !3013, line: 84, type: !3014, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3180)
!3180 = !{!3181}
!3181 = !DILocalVariable(name: "s", arg: 1, scope: !3179, file: !3013, line: 84, type: !53)
!3182 = !DILocation(line: 84, column: 17, scope: !3179)
!3183 = !DILocation(line: 39, column: 17, scope: !3012, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 86, column: 18, scope: !3179)
!3185 = !DILocation(line: 41, column: 13, scope: !3012, inlinedAt: !3184)
!3186 = !DILocation(line: 41, column: 9, scope: !3012, inlinedAt: !3184)
!3187 = !DILocation(line: 42, column: 8, scope: !3023, inlinedAt: !3184)
!3188 = !DILocation(line: 42, column: 15, scope: !3023, inlinedAt: !3184)
!3189 = !DILocation(line: 42, column: 10, scope: !3023, inlinedAt: !3184)
!3190 = !DILocation(line: 43, column: 5, scope: !3023, inlinedAt: !3184)
!3191 = !DILocation(line: 86, column: 10, scope: !3179)
!3192 = !DILocation(line: 86, column: 3, scope: !3179)
!3193 = distinct !DISubprogram(name: "xcalloc", scope: !3013, file: !3013, line: 93, type: !2999, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DILocalVariable(name: "n", arg: 1, scope: !3193, file: !3013, line: 93, type: !53)
!3196 = !DILocalVariable(name: "s", arg: 2, scope: !3193, file: !3013, line: 93, type: !53)
!3197 = !DILocalVariable(name: "p", scope: !3193, file: !3013, line: 95, type: !52)
!3198 = !DILocation(line: 93, column: 17, scope: !3193)
!3199 = !DILocation(line: 93, column: 27, scope: !3193)
!3200 = !DILocation(line: 100, column: 7, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3193, file: !3013, line: 100, column: 7)
!3202 = !DILocation(line: 101, column: 7, scope: !3201)
!3203 = !DILocation(line: 101, column: 18, scope: !3201)
!3204 = !DILocation(line: 95, column: 9, scope: !3193)
!3205 = !DILocation(line: 101, column: 16, scope: !3201)
!3206 = !DILocation(line: 100, column: 7, scope: !3193)
!3207 = !DILocation(line: 102, column: 5, scope: !3201)
!3208 = !DILocation(line: 103, column: 3, scope: !3193)
!3209 = distinct !DISubprogram(name: "xmemdup", scope: !3013, file: !3013, line: 111, type: !3210, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3214)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!52, !3212, !53}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3214 = !{!3215, !3216}
!3215 = !DILocalVariable(name: "p", arg: 1, scope: !3209, file: !3013, line: 111, type: !3212)
!3216 = !DILocalVariable(name: "s", arg: 2, scope: !3209, file: !3013, line: 111, type: !53)
!3217 = !DILocation(line: 111, column: 22, scope: !3209)
!3218 = !DILocation(line: 111, column: 32, scope: !3209)
!3219 = !DILocation(line: 39, column: 17, scope: !3012, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 113, column: 18, scope: !3209)
!3221 = !DILocation(line: 41, column: 13, scope: !3012, inlinedAt: !3220)
!3222 = !DILocation(line: 41, column: 9, scope: !3012, inlinedAt: !3220)
!3223 = !DILocation(line: 42, column: 8, scope: !3023, inlinedAt: !3220)
!3224 = !DILocation(line: 42, column: 15, scope: !3023, inlinedAt: !3220)
!3225 = !DILocation(line: 42, column: 10, scope: !3023, inlinedAt: !3220)
!3226 = !DILocation(line: 43, column: 5, scope: !3023, inlinedAt: !3220)
!3227 = !DILocation(line: 113, column: 10, scope: !3209)
!3228 = !DILocation(line: 113, column: 3, scope: !3209)
!3229 = distinct !DISubprogram(name: "xstrdup", scope: !3013, file: !3013, line: 119, type: !2286, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "string", arg: 1, scope: !3229, file: !3013, line: 119, type: !69)
!3232 = !DILocation(line: 119, column: 22, scope: !3229)
!3233 = !DILocation(line: 121, column: 27, scope: !3229)
!3234 = !DILocation(line: 121, column: 43, scope: !3229)
!3235 = !DILocation(line: 111, column: 22, scope: !3209, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 121, column: 10, scope: !3229)
!3237 = !DILocation(line: 111, column: 32, scope: !3209, inlinedAt: !3236)
!3238 = !DILocation(line: 39, column: 17, scope: !3012, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 113, column: 18, scope: !3209, inlinedAt: !3236)
!3240 = !DILocation(line: 41, column: 13, scope: !3012, inlinedAt: !3239)
!3241 = !DILocation(line: 41, column: 9, scope: !3012, inlinedAt: !3239)
!3242 = !DILocation(line: 42, column: 8, scope: !3023, inlinedAt: !3239)
!3243 = !DILocation(line: 42, column: 15, scope: !3023, inlinedAt: !3239)
!3244 = !DILocation(line: 42, column: 10, scope: !3023, inlinedAt: !3239)
!3245 = !DILocation(line: 43, column: 5, scope: !3023, inlinedAt: !3239)
!3246 = !DILocation(line: 113, column: 10, scope: !3209, inlinedAt: !3236)
!3247 = !DILocation(line: 121, column: 3, scope: !3229)
!3248 = distinct !DISubprogram(name: "xalloc_die", scope: !3249, file: !3249, line: 32, type: !623, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !566, variables: !105)
!3249 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3250 = !DILocation(line: 34, column: 10, scope: !3248)
!3251 = !DILocation(line: 34, column: 33, scope: !3248)
!3252 = !DILocation(line: 34, column: 3, scope: !3248)
!3253 = !DILocation(line: 40, column: 3, scope: !3248)
!3254 = distinct !DISubprogram(name: "xnumtoimax", scope: !3255, file: !3255, line: 36, type: !3256, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3258)
!3255 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!56, !69, !43, !56, !56, !69, !69, !43}
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3268}
!3259 = !DILocalVariable(name: "n_str", arg: 1, scope: !3254, file: !3255, line: 36, type: !69)
!3260 = !DILocalVariable(name: "base", arg: 2, scope: !3254, file: !3255, line: 36, type: !43)
!3261 = !DILocalVariable(name: "min", arg: 3, scope: !3254, file: !3255, line: 36, type: !56)
!3262 = !DILocalVariable(name: "max", arg: 4, scope: !3254, file: !3255, line: 36, type: !56)
!3263 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3254, file: !3255, line: 37, type: !69)
!3264 = !DILocalVariable(name: "err", arg: 6, scope: !3254, file: !3255, line: 37, type: !69)
!3265 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3254, file: !3255, line: 37, type: !43)
!3266 = !DILocalVariable(name: "s_err", scope: !3254, file: !3255, line: 39, type: !3267)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !572, line: 39, baseType: !571)
!3268 = !DILocalVariable(name: "tnum", scope: !3254, file: !3255, line: 41, type: !56)
!3269 = !DILocation(line: 36, column: 26, scope: !3254)
!3270 = !DILocation(line: 36, column: 37, scope: !3254)
!3271 = !DILocation(line: 36, column: 57, scope: !3254)
!3272 = !DILocation(line: 36, column: 76, scope: !3254)
!3273 = !DILocation(line: 37, column: 26, scope: !3254)
!3274 = !DILocation(line: 37, column: 48, scope: !3254)
!3275 = !DILocation(line: 37, column: 57, scope: !3254)
!3276 = !DILocation(line: 41, column: 3, scope: !3254)
!3277 = !DILocation(line: 41, column: 17, scope: !3254)
!3278 = !DILocation(line: 42, column: 11, scope: !3254)
!3279 = !DILocation(line: 39, column: 16, scope: !3254)
!3280 = !DILocation(line: 44, column: 7, scope: !3254)
!3281 = !DILocation(line: 69, column: 50, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !3255, line: 67, column: 5)
!3283 = distinct !DILexicalBlock(scope: !3254, file: !3255, line: 66, column: 7)
!3284 = !DILocation(line: 46, column: 11, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !3255, line: 46, column: 11)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !3255, line: 45, column: 5)
!3287 = distinct !DILexicalBlock(scope: !3254, file: !3255, line: 44, column: 7)
!3288 = !DILocation(line: 46, column: 16, scope: !3285)
!3289 = !DILocation(line: 46, column: 29, scope: !3285)
!3290 = !DILocation(line: 46, column: 22, scope: !3285)
!3291 = !DILocation(line: 51, column: 20, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !3255, line: 51, column: 15)
!3293 = distinct !DILexicalBlock(scope: !3285, file: !3255, line: 47, column: 9)
!3294 = !DILocation(line: 51, column: 15, scope: !3293)
!3295 = !DILocation(line: 52, column: 13, scope: !3292)
!3296 = !DILocation(line: 52, column: 19, scope: !3292)
!3297 = !DILocation(line: 54, column: 25, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3292, file: !3255, line: 54, column: 20)
!3299 = !DILocation(line: 55, column: 13, scope: !3298)
!3300 = !DILocation(line: 54, column: 20, scope: !3292)
!3301 = !DILocation(line: 62, column: 5, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3287, file: !3255, line: 61, column: 12)
!3303 = !DILocation(line: 62, column: 11, scope: !3302)
!3304 = !DILocation(line: 64, column: 5, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !3255, line: 63, column: 12)
!3306 = !DILocation(line: 64, column: 11, scope: !3305)
!3307 = !DILocation(line: 69, column: 14, scope: !3282)
!3308 = !DILocation(line: 69, column: 56, scope: !3282)
!3309 = !DILocation(line: 70, column: 29, scope: !3282)
!3310 = !DILocation(line: 69, column: 7, scope: !3282)
!3311 = !DILocation(line: 73, column: 10, scope: !3254)
!3312 = !DILocation(line: 71, column: 5, scope: !3282)
!3313 = !DILocation(line: 74, column: 1, scope: !3254)
!3314 = !DILocation(line: 73, column: 3, scope: !3254)
!3315 = distinct !DISubprogram(name: "xdectoimax", scope: !3255, file: !3255, line: 82, type: !3316, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!56, !69, !56, !56, !69, !69, !43}
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324}
!3319 = !DILocalVariable(name: "n_str", arg: 1, scope: !3315, file: !3255, line: 82, type: !69)
!3320 = !DILocalVariable(name: "min", arg: 2, scope: !3315, file: !3255, line: 82, type: !56)
!3321 = !DILocalVariable(name: "max", arg: 3, scope: !3315, file: !3255, line: 82, type: !56)
!3322 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3315, file: !3255, line: 83, type: !69)
!3323 = !DILocalVariable(name: "err", arg: 5, scope: !3315, file: !3255, line: 83, type: !69)
!3324 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3315, file: !3255, line: 83, type: !43)
!3325 = !DILocation(line: 82, column: 26, scope: !3315)
!3326 = !DILocation(line: 82, column: 47, scope: !3315)
!3327 = !DILocation(line: 82, column: 66, scope: !3315)
!3328 = !DILocation(line: 83, column: 26, scope: !3315)
!3329 = !DILocation(line: 83, column: 48, scope: !3315)
!3330 = !DILocation(line: 83, column: 57, scope: !3315)
!3331 = !DILocation(line: 85, column: 10, scope: !3315)
!3332 = !DILocation(line: 85, column: 3, scope: !3315)
!3333 = distinct !DISubprogram(name: "xstrtoimax", scope: !3334, file: !3334, line: 88, type: !3335, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3338)
!3334 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!3267, !69, !654, !43, !3337, !69}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!3338 = !{!3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3351, !3352}
!3339 = !DILocalVariable(name: "s", arg: 1, scope: !3333, file: !3334, line: 88, type: !69)
!3340 = !DILocalVariable(name: "ptr", arg: 2, scope: !3333, file: !3334, line: 88, type: !654)
!3341 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3333, file: !3334, line: 88, type: !43)
!3342 = !DILocalVariable(name: "val", arg: 4, scope: !3333, file: !3334, line: 89, type: !3337)
!3343 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3333, file: !3334, line: 89, type: !69)
!3344 = !DILocalVariable(name: "t_ptr", scope: !3333, file: !3334, line: 91, type: !50)
!3345 = !DILocalVariable(name: "p", scope: !3333, file: !3334, line: 92, type: !654)
!3346 = !DILocalVariable(name: "tmp", scope: !3333, file: !3334, line: 93, type: !56)
!3347 = !DILocalVariable(name: "err", scope: !3333, file: !3334, line: 94, type: !3267)
!3348 = !DILocalVariable(name: "base", scope: !3349, file: !3334, line: 141, type: !43)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !3334, line: 140, column: 5)
!3350 = distinct !DILexicalBlock(scope: !3333, file: !3334, line: 139, column: 7)
!3351 = !DILocalVariable(name: "suffixes", scope: !3349, file: !3334, line: 142, type: !43)
!3352 = !DILocalVariable(name: "overflow", scope: !3349, file: !3334, line: 143, type: !3267)
!3353 = !DILocation(line: 88, column: 24, scope: !3333)
!3354 = !DILocation(line: 88, column: 34, scope: !3333)
!3355 = !DILocation(line: 88, column: 43, scope: !3333)
!3356 = !DILocation(line: 89, column: 24, scope: !3333)
!3357 = !DILocation(line: 89, column: 41, scope: !3333)
!3358 = !DILocation(line: 91, column: 3, scope: !3333)
!3359 = !DILocation(line: 94, column: 16, scope: !3333)
!3360 = !DILocation(line: 96, column: 3, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !3334, line: 96, column: 3)
!3362 = distinct !DILexicalBlock(scope: !3333, file: !3334, line: 96, column: 3)
!3363 = !DILocation(line: 98, column: 8, scope: !3333)
!3364 = !DILocation(line: 92, column: 10, scope: !3333)
!3365 = !DILocation(line: 100, column: 3, scope: !3333)
!3366 = !DILocation(line: 100, column: 9, scope: !3333)
!3367 = !DILocalVariable(name: "nptr", arg: 1, scope: !3368, file: !3369, line: 324, type: !3372)
!3368 = distinct !DISubprogram(name: "strtoimax", scope: !3369, file: !3369, line: 324, type: !3370, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3374)
!3369 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!56, !3372, !3373, !43}
!3372 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!3373 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !654)
!3374 = !{!3367, !3375, !3376}
!3375 = !DILocalVariable(name: "endptr", arg: 2, scope: !3368, file: !3369, line: 324, type: !3373)
!3376 = !DILocalVariable(name: "base", arg: 3, scope: !3368, file: !3369, line: 324, type: !43)
!3377 = !DILocation(line: 324, column: 1, scope: !3368, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 112, column: 9, scope: !3333)
!3379 = !DILocation(line: 327, column: 10, scope: !3368, inlinedAt: !3378)
!3380 = !DILocation(line: 93, column: 14, scope: !3333)
!3381 = !DILocation(line: 114, column: 7, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3333, file: !3334, line: 114, column: 7)
!3383 = !DILocation(line: 114, column: 10, scope: !3382)
!3384 = !DILocation(line: 114, column: 7, scope: !3333)
!3385 = !DILocation(line: 118, column: 11, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !3334, line: 118, column: 11)
!3387 = distinct !DILexicalBlock(scope: !3382, file: !3334, line: 115, column: 5)
!3388 = !DILocation(line: 118, column: 26, scope: !3386)
!3389 = !DILocation(line: 118, column: 29, scope: !3386)
!3390 = !DILocation(line: 118, column: 33, scope: !3386)
!3391 = !DILocation(line: 118, column: 36, scope: !3386)
!3392 = !DILocation(line: 118, column: 11, scope: !3387)
!3393 = !DILocation(line: 123, column: 12, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3382, file: !3334, line: 123, column: 12)
!3395 = !DILocation(line: 123, column: 12, scope: !3382)
!3396 = !DILocation(line: 128, column: 5, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !3334, line: 124, column: 5)
!3398 = !DILocation(line: 133, column: 8, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3333, file: !3334, line: 133, column: 7)
!3400 = !DILocation(line: 133, column: 7, scope: !3333)
!3401 = !DILocation(line: 135, column: 12, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3399, file: !3334, line: 134, column: 5)
!3403 = !DILocation(line: 136, column: 7, scope: !3402)
!3404 = !DILocation(line: 139, column: 7, scope: !3350)
!3405 = !DILocation(line: 139, column: 11, scope: !3350)
!3406 = !DILocation(line: 139, column: 7, scope: !3333)
!3407 = !DILocation(line: 141, column: 11, scope: !3349)
!3408 = !DILocation(line: 142, column: 11, scope: !3349)
!3409 = !DILocation(line: 145, column: 12, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3349, file: !3334, line: 145, column: 11)
!3411 = !DILocation(line: 145, column: 11, scope: !3349)
!3412 = !DILocation(line: 147, column: 16, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3410, file: !3334, line: 146, column: 9)
!3414 = !DILocation(line: 148, column: 22, scope: !3413)
!3415 = !DILocation(line: 148, column: 11, scope: !3413)
!3416 = !DILocation(line: 151, column: 7, scope: !3349)
!3417 = !DILocation(line: 163, column: 15, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3334, line: 163, column: 15)
!3419 = distinct !DILexicalBlock(scope: !3349, file: !3334, line: 152, column: 9)
!3420 = !DILocation(line: 163, column: 15, scope: !3419)
!3421 = !DILocation(line: 164, column: 21, scope: !3418)
!3422 = !DILocation(line: 164, column: 13, scope: !3418)
!3423 = !DILocation(line: 167, column: 21, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !3334, line: 167, column: 21)
!3425 = distinct !DILexicalBlock(scope: !3418, file: !3334, line: 165, column: 15)
!3426 = !DILocation(line: 167, column: 29, scope: !3424)
!3427 = !DILocation(line: 167, column: 21, scope: !3425)
!3428 = !DILocation(line: 175, column: 17, scope: !3425)
!3429 = !DILocation(line: 179, column: 7, scope: !3349)
!3430 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3431, file: !3334, line: 60, type: !43)
!3431 = distinct !DISubprogram(name: "bkm_scale", scope: !3334, file: !3334, line: 60, type: !3432, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!3267, !3337, !43}
!3434 = !{!3435, !3430}
!3435 = !DILocalVariable(name: "x", arg: 1, scope: !3431, file: !3334, line: 60, type: !3337)
!3436 = !DILocation(line: 60, column: 31, scope: !3431, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 182, column: 22, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3349, file: !3334, line: 180, column: 9)
!3439 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3437)
!3440 = distinct !DILexicalBlock(scope: !3431, file: !3334, line: 62, column: 7)
!3441 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3437)
!3442 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3437)
!3443 = distinct !DILexicalBlock(scope: !3431, file: !3334, line: 67, column: 7)
!3444 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3437)
!3445 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3437)
!3446 = !DILocation(line: 60, column: 31, scope: !3431, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 189, column: 22, scope: !3438)
!3448 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3447)
!3449 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3447)
!3450 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3447)
!3451 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3447)
!3452 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3447)
!3453 = !DILocalVariable(name: "power", arg: 3, scope: !3454, file: !3334, line: 77, type: !43)
!3454 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3334, file: !3334, line: 77, type: !3455, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!3267, !3337, !43, !43}
!3457 = !{!3458, !3459, !3453, !3460}
!3458 = !DILocalVariable(name: "x", arg: 1, scope: !3454, file: !3334, line: 77, type: !3337)
!3459 = !DILocalVariable(name: "base", arg: 2, scope: !3454, file: !3334, line: 77, type: !43)
!3460 = !DILocalVariable(name: "err", scope: !3454, file: !3334, line: 79, type: !3267)
!3461 = !DILocation(line: 77, column: 50, scope: !3454, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 197, column: 22, scope: !3438)
!3463 = !DILocation(line: 79, column: 16, scope: !3454, inlinedAt: !3462)
!3464 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 81, column: 12, scope: !3454, inlinedAt: !3462)
!3466 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3465)
!3467 = !DILocation(line: 67, column: 24, scope: !3443, inlinedAt: !3465)
!3468 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3465)
!3469 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3465)
!3470 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3465)
!3471 = !DILocation(line: 77, column: 50, scope: !3454, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 202, column: 22, scope: !3438)
!3473 = !DILocation(line: 79, column: 16, scope: !3454, inlinedAt: !3472)
!3474 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 81, column: 12, scope: !3454, inlinedAt: !3472)
!3476 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3475)
!3477 = !DILocation(line: 67, column: 24, scope: !3443, inlinedAt: !3475)
!3478 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3475)
!3479 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3475)
!3480 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3475)
!3481 = !DILocation(line: 77, column: 50, scope: !3454, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 207, column: 22, scope: !3438)
!3483 = !DILocation(line: 79, column: 16, scope: !3454, inlinedAt: !3482)
!3484 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 81, column: 12, scope: !3454, inlinedAt: !3482)
!3486 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3485)
!3487 = !DILocation(line: 67, column: 24, scope: !3443, inlinedAt: !3485)
!3488 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3485)
!3489 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3485)
!3490 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3485)
!3491 = !DILocation(line: 77, column: 50, scope: !3454, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 212, column: 22, scope: !3438)
!3493 = !DILocation(line: 79, column: 16, scope: !3454, inlinedAt: !3492)
!3494 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 81, column: 12, scope: !3454, inlinedAt: !3492)
!3496 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3495)
!3497 = !DILocation(line: 67, column: 24, scope: !3443, inlinedAt: !3495)
!3498 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3495)
!3499 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3495)
!3500 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3495)
!3501 = !DILocation(line: 77, column: 50, scope: !3454, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 216, column: 22, scope: !3438)
!3503 = !DILocation(line: 79, column: 16, scope: !3454, inlinedAt: !3502)
!3504 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 81, column: 12, scope: !3454, inlinedAt: !3502)
!3506 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3505)
!3507 = !DILocation(line: 67, column: 24, scope: !3443, inlinedAt: !3505)
!3508 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3505)
!3509 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3505)
!3510 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3505)
!3511 = !DILocation(line: 77, column: 50, scope: !3454, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 221, column: 22, scope: !3438)
!3513 = !DILocation(line: 79, column: 16, scope: !3454, inlinedAt: !3512)
!3514 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 81, column: 12, scope: !3454, inlinedAt: !3512)
!3516 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3515)
!3517 = !DILocation(line: 67, column: 24, scope: !3443, inlinedAt: !3515)
!3518 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3515)
!3519 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3515)
!3520 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3515)
!3521 = !DILocation(line: 60, column: 31, scope: !3431, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 225, column: 22, scope: !3438)
!3523 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3522)
!3524 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3522)
!3525 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3522)
!3526 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3522)
!3527 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3522)
!3528 = !DILocation(line: 77, column: 50, scope: !3454, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 229, column: 22, scope: !3438)
!3530 = !DILocation(line: 79, column: 16, scope: !3454, inlinedAt: !3529)
!3531 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 81, column: 12, scope: !3454, inlinedAt: !3529)
!3533 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3532)
!3534 = !DILocation(line: 67, column: 24, scope: !3443, inlinedAt: !3532)
!3535 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3532)
!3536 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3532)
!3537 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3532)
!3538 = !DILocation(line: 77, column: 50, scope: !3454, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 233, column: 22, scope: !3438)
!3540 = !DILocation(line: 79, column: 16, scope: !3454, inlinedAt: !3539)
!3541 = !DILocation(line: 62, column: 38, scope: !3440, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 81, column: 12, scope: !3454, inlinedAt: !3539)
!3543 = !DILocation(line: 62, column: 7, scope: !3431, inlinedAt: !3542)
!3544 = !DILocation(line: 67, column: 24, scope: !3443, inlinedAt: !3542)
!3545 = !DILocation(line: 67, column: 39, scope: !3443, inlinedAt: !3542)
!3546 = !DILocation(line: 72, column: 6, scope: !3431, inlinedAt: !3542)
!3547 = !DILocation(line: 67, column: 7, scope: !3431, inlinedAt: !3542)
!3548 = !DILocation(line: 237, column: 16, scope: !3438)
!3549 = !DILocation(line: 238, column: 22, scope: !3438)
!3550 = !DILocation(line: 238, column: 11, scope: !3438)
!3551 = !DILocation(line: 143, column: 20, scope: !3349)
!3552 = !DILocation(line: 241, column: 11, scope: !3349)
!3553 = !DILocation(line: 242, column: 10, scope: !3349)
!3554 = !DILocation(line: 243, column: 11, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3349, file: !3334, line: 243, column: 11)
!3556 = !DILocation(line: 244, column: 13, scope: !3555)
!3557 = !DILocation(line: 243, column: 11, scope: !3349)
!3558 = !DILocation(line: 247, column: 8, scope: !3333)
!3559 = !DILocation(line: 248, column: 3, scope: !3333)
!3560 = !DILocation(line: 249, column: 1, scope: !3333)
!3561 = !DILocation(line: 81, column: 9, scope: !3454, inlinedAt: !3462)
!3562 = !DILocation(line: 81, column: 9, scope: !3454, inlinedAt: !3472)
!3563 = !DILocation(line: 81, column: 9, scope: !3454, inlinedAt: !3492)
!3564 = !DILocation(line: 81, column: 9, scope: !3454, inlinedAt: !3502)
!3565 = !DILocation(line: 81, column: 9, scope: !3454, inlinedAt: !3512)
!3566 = !DILocation(line: 81, column: 9, scope: !3454, inlinedAt: !3529)
!3567 = !DILocation(line: 81, column: 9, scope: !3454, inlinedAt: !3539)
!3568 = distinct !DISubprogram(name: "rpl_calloc", scope: !3569, file: !3569, line: 42, type: !2999, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3570)
!3569 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3570 = !{!3571, !3572, !3573, !3574}
!3571 = !DILocalVariable(name: "n", arg: 1, scope: !3568, file: !3569, line: 42, type: !53)
!3572 = !DILocalVariable(name: "s", arg: 2, scope: !3568, file: !3569, line: 42, type: !53)
!3573 = !DILocalVariable(name: "result", scope: !3568, file: !3569, line: 44, type: !52)
!3574 = !DILocalVariable(name: "bytes", scope: !3575, file: !3569, line: 56, type: !53)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3569, line: 53, column: 5)
!3576 = distinct !DILexicalBlock(scope: !3568, file: !3569, line: 47, column: 7)
!3577 = !DILocation(line: 42, column: 20, scope: !3568)
!3578 = !DILocation(line: 42, column: 30, scope: !3568)
!3579 = !DILocation(line: 47, column: 9, scope: !3576)
!3580 = !DILocation(line: 47, column: 19, scope: !3576)
!3581 = !DILocation(line: 47, column: 14, scope: !3576)
!3582 = !DILocation(line: 56, column: 24, scope: !3575)
!3583 = !DILocation(line: 56, column: 14, scope: !3575)
!3584 = !DILocation(line: 57, column: 17, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3575, file: !3569, line: 57, column: 11)
!3586 = !DILocation(line: 57, column: 21, scope: !3585)
!3587 = !DILocation(line: 57, column: 11, scope: !3575)
!3588 = !DILocation(line: 59, column: 11, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !3569, line: 58, column: 9)
!3590 = !DILocation(line: 59, column: 17, scope: !3589)
!3591 = !DILocation(line: 65, column: 12, scope: !3568)
!3592 = !DILocation(line: 44, column: 9, scope: !3568)
!3593 = !DILocation(line: 72, column: 3, scope: !3568)
!3594 = !DILocation(line: 73, column: 1, scope: !3568)
!3595 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3596, file: !3596, line: 334, type: !3597, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3611)
!3596 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!53, !3599, !69, !53, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1338, line: 6, baseType: !3602)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1340, line: 21, baseType: !3603)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1340, line: 13, size: 64, elements: !3604)
!3604 = !{!3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3603, file: !1340, line: 15, baseType: !43, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3603, file: !1340, line: 20, baseType: !3607, size: 32, offset: 32)
!3607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3603, file: !1340, line: 16, size: 32, elements: !3608)
!3608 = !{!3609, !3610}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3607, file: !1340, line: 18, baseType: !156, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3607, file: !1340, line: 19, baseType: !1349, size: 32)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618}
!3612 = !DILocalVariable(name: "pwc", arg: 1, scope: !3595, file: !3596, line: 334, type: !3599)
!3613 = !DILocalVariable(name: "s", arg: 2, scope: !3595, file: !3596, line: 334, type: !69)
!3614 = !DILocalVariable(name: "n", arg: 3, scope: !3595, file: !3596, line: 334, type: !53)
!3615 = !DILocalVariable(name: "ps", arg: 4, scope: !3595, file: !3596, line: 334, type: !3600)
!3616 = !DILocalVariable(name: "ret", scope: !3595, file: !3596, line: 336, type: !53)
!3617 = !DILocalVariable(name: "wc", scope: !3595, file: !3596, line: 337, type: !1354)
!3618 = !DILocalVariable(name: "uc", scope: !3619, file: !3596, line: 398, type: !537)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !3596, line: 397, column: 5)
!3620 = distinct !DILexicalBlock(scope: !3595, file: !3596, line: 396, column: 7)
!3621 = !DILocation(line: 334, column: 23, scope: !3595)
!3622 = !DILocation(line: 334, column: 40, scope: !3595)
!3623 = !DILocation(line: 334, column: 50, scope: !3595)
!3624 = !DILocation(line: 334, column: 64, scope: !3595)
!3625 = !DILocation(line: 337, column: 3, scope: !3595)
!3626 = !DILocation(line: 353, column: 9, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3595, file: !3596, line: 353, column: 7)
!3628 = !DILocation(line: 353, column: 7, scope: !3595)
!3629 = !DILocation(line: 388, column: 9, scope: !3595)
!3630 = !DILocation(line: 336, column: 10, scope: !3595)
!3631 = !DILocation(line: 396, column: 19, scope: !3620)
!3632 = !DILocation(line: 396, column: 31, scope: !3620)
!3633 = !DILocation(line: 396, column: 26, scope: !3620)
!3634 = !DILocation(line: 396, column: 41, scope: !3620)
!3635 = !DILocation(line: 396, column: 7, scope: !3595)
!3636 = !DILocation(line: 398, column: 26, scope: !3619)
!3637 = !DILocation(line: 398, column: 21, scope: !3619)
!3638 = !DILocation(line: 399, column: 14, scope: !3619)
!3639 = !DILocation(line: 399, column: 12, scope: !3619)
!3640 = !DILocation(line: 405, column: 1, scope: !3595)
!3641 = distinct !DISubprogram(name: "close_stream", scope: !3642, file: !3642, line: 56, type: !3643, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !3685)
!3642 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!43, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2812, line: 7, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2814, line: 241, size: 1728, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3647, file: !2814, line: 242, baseType: !43, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3647, file: !2814, line: 247, baseType: !50, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3647, file: !2814, line: 248, baseType: !50, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3647, file: !2814, line: 249, baseType: !50, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3647, file: !2814, line: 250, baseType: !50, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3647, file: !2814, line: 251, baseType: !50, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3647, file: !2814, line: 252, baseType: !50, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3647, file: !2814, line: 253, baseType: !50, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3647, file: !2814, line: 254, baseType: !50, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3647, file: !2814, line: 256, baseType: !50, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3647, file: !2814, line: 257, baseType: !50, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3647, file: !2814, line: 258, baseType: !50, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3647, file: !2814, line: 260, baseType: !3662, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2814, line: 156, size: 192, elements: !3664)
!3664 = !{!3665, !3666, !3668}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3663, file: !2814, line: 157, baseType: !3662, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3663, file: !2814, line: 158, baseType: !3667, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3663, file: !2814, line: 162, baseType: !43, size: 32, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3647, file: !2814, line: 262, baseType: !3667, size: 64, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3647, file: !2814, line: 264, baseType: !43, size: 32, offset: 896)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3647, file: !2814, line: 268, baseType: !43, size: 32, offset: 928)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3647, file: !2814, line: 270, baseType: !47, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3647, file: !2814, line: 274, baseType: !44, size: 16, offset: 1024)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3647, file: !2814, line: 275, baseType: !2842, size: 8, offset: 1040)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3647, file: !2814, line: 276, baseType: !2844, size: 8, offset: 1048)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3647, file: !2814, line: 280, baseType: !2848, size: 64, offset: 1088)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3647, file: !2814, line: 289, baseType: !2851, size: 64, offset: 1152)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3647, file: !2814, line: 297, baseType: !52, size: 64, offset: 1216)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3647, file: !2814, line: 298, baseType: !52, size: 64, offset: 1280)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3647, file: !2814, line: 299, baseType: !52, size: 64, offset: 1344)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3647, file: !2814, line: 300, baseType: !52, size: 64, offset: 1408)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3647, file: !2814, line: 302, baseType: !53, size: 64, offset: 1472)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3647, file: !2814, line: 303, baseType: !43, size: 32, offset: 1536)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3647, file: !2814, line: 305, baseType: !2859, size: 160, offset: 1568)
!3685 = !{!3686, !3687, !3689, !3690}
!3686 = !DILocalVariable(name: "stream", arg: 1, scope: !3641, file: !3642, line: 56, type: !3645)
!3687 = !DILocalVariable(name: "some_pending", scope: !3641, file: !3642, line: 58, type: !3688)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3689 = !DILocalVariable(name: "prev_fail", scope: !3641, file: !3642, line: 59, type: !3688)
!3690 = !DILocalVariable(name: "fclose_fail", scope: !3641, file: !3642, line: 60, type: !3688)
!3691 = !DILocation(line: 56, column: 21, scope: !3641)
!3692 = !DILocation(line: 58, column: 30, scope: !3641)
!3693 = !DILocalVariable(name: "__stream", arg: 1, scope: !3694, file: !3695, line: 132, type: !3645)
!3694 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3695, file: !3695, line: 132, type: !3643, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !3696)
!3695 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3696 = !{!3693}
!3697 = !DILocation(line: 132, column: 1, scope: !3694, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 59, column: 27, scope: !3641)
!3699 = !DILocation(line: 134, column: 10, scope: !3694, inlinedAt: !3698)
!3700 = !{!3701, !779, i64 0}
!3701 = !{!"_IO_FILE", !779, i64 0, !615, i64 8, !615, i64 16, !615, i64 24, !615, i64 32, !615, i64 40, !615, i64 48, !615, i64 56, !615, i64 64, !615, i64 72, !615, i64 80, !615, i64 88, !615, i64 96, !615, i64 104, !779, i64 112, !779, i64 116, !847, i64 120, !744, i64 128, !616, i64 130, !616, i64 131, !615, i64 136, !847, i64 144, !615, i64 152, !615, i64 160, !615, i64 168, !615, i64 176, !847, i64 184, !779, i64 192, !616, i64 196}
!3702 = !DILocation(line: 59, column: 43, scope: !3641)
!3703 = !DILocation(line: 60, column: 29, scope: !3641)
!3704 = !DILocation(line: 60, column: 45, scope: !3641)
!3705 = !DILocation(line: 70, column: 17, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3641, file: !3642, line: 70, column: 7)
!3707 = !DILocation(line: 58, column: 50, scope: !3641)
!3708 = !DILocation(line: 70, column: 33, scope: !3706)
!3709 = !DILocation(line: 70, column: 53, scope: !3706)
!3710 = !DILocation(line: 70, column: 59, scope: !3706)
!3711 = !DILocation(line: 70, column: 7, scope: !3641)
!3712 = !DILocation(line: 72, column: 11, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3706, file: !3642, line: 71, column: 5)
!3714 = !DILocation(line: 73, column: 9, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3713, file: !3642, line: 72, column: 11)
!3716 = !DILocation(line: 73, column: 15, scope: !3715)
!3717 = !DILocation(line: 78, column: 1, scope: !3641)
!3718 = distinct !DISubprogram(name: "hard_locale", scope: !3719, file: !3719, line: 38, type: !3720, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3722)
!3719 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!64, !43}
!3722 = !{!3723, !3724, !3725}
!3723 = !DILocalVariable(name: "category", arg: 1, scope: !3718, file: !3719, line: 38, type: !43)
!3724 = !DILocalVariable(name: "hard", scope: !3718, file: !3719, line: 40, type: !64)
!3725 = !DILocalVariable(name: "p", scope: !3718, file: !3719, line: 41, type: !69)
!3726 = !DILocation(line: 38, column: 18, scope: !3718)
!3727 = !DILocation(line: 40, column: 8, scope: !3718)
!3728 = !DILocation(line: 41, column: 19, scope: !3718)
!3729 = !DILocation(line: 41, column: 15, scope: !3718)
!3730 = !DILocation(line: 43, column: 7, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3718, file: !3719, line: 43, column: 7)
!3732 = !DILocation(line: 43, column: 7, scope: !3718)
!3733 = !DILocation(line: 47, column: 15, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !3719, line: 47, column: 15)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !3719, line: 46, column: 9)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !3719, line: 45, column: 11)
!3737 = distinct !DILexicalBlock(scope: !3731, file: !3719, line: 44, column: 5)
!3738 = !DILocation(line: 47, column: 31, scope: !3734)
!3739 = !DILocation(line: 47, column: 36, scope: !3734)
!3740 = !DILocation(line: 47, column: 39, scope: !3734)
!3741 = !DILocation(line: 47, column: 59, scope: !3734)
!3742 = !DILocation(line: 47, column: 15, scope: !3735)
!3743 = !DILocation(line: 48, column: 13, scope: !3734)
!3744 = !DILocation(line: 71, column: 3, scope: !3718)
!3745 = distinct !DISubprogram(name: "locale_charset", scope: !539, file: !539, line: 393, type: !3746, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !194, variables: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!69}
!3748 = !{!3749, !3750}
!3749 = !DILocalVariable(name: "codeset", scope: !3745, file: !539, line: 395, type: !69)
!3750 = !DILocalVariable(name: "aliases", scope: !3745, file: !539, line: 396, type: !69)
!3751 = !DILocalVariable(name: "buf1", scope: !3752, file: !539, line: 196, type: !3819)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !539, line: 194, column: 21)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !539, line: 193, column: 19)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !539, line: 193, column: 19)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !539, line: 188, column: 17)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !539, line: 181, column: 19)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !539, line: 177, column: 13)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !539, line: 173, column: 15)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !539, line: 161, column: 9)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !539, line: 157, column: 11)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !539, line: 130, column: 5)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !539, line: 129, column: 7)
!3763 = distinct !DISubprogram(name: "get_charset_aliases", scope: !539, file: !539, line: 124, type: !3746, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !194, variables: !3764)
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3771, !3772, !3773, !3774, !3815, !3816, !3817, !3751, !3818, !3822, !3823, !3824}
!3765 = !DILocalVariable(name: "cp", scope: !3763, file: !539, line: 126, type: !69)
!3766 = !DILocalVariable(name: "dir", scope: !3761, file: !539, line: 132, type: !69)
!3767 = !DILocalVariable(name: "base", scope: !3761, file: !539, line: 133, type: !69)
!3768 = !DILocalVariable(name: "file_name", scope: !3761, file: !539, line: 134, type: !50)
!3769 = !DILocalVariable(name: "dir_len", scope: !3770, file: !539, line: 144, type: !53)
!3770 = distinct !DILexicalBlock(scope: !3761, file: !539, line: 143, column: 7)
!3771 = !DILocalVariable(name: "base_len", scope: !3770, file: !539, line: 145, type: !53)
!3772 = !DILocalVariable(name: "add_slash", scope: !3770, file: !539, line: 146, type: !43)
!3773 = !DILocalVariable(name: "fd", scope: !3759, file: !539, line: 162, type: !43)
!3774 = !DILocalVariable(name: "fp", scope: !3757, file: !539, line: 178, type: !3775)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2812, line: 7, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2814, line: 241, size: 1728, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3777, file: !2814, line: 242, baseType: !43, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3777, file: !2814, line: 247, baseType: !50, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3777, file: !2814, line: 248, baseType: !50, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3777, file: !2814, line: 249, baseType: !50, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3777, file: !2814, line: 250, baseType: !50, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3777, file: !2814, line: 251, baseType: !50, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3777, file: !2814, line: 252, baseType: !50, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3777, file: !2814, line: 253, baseType: !50, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3777, file: !2814, line: 254, baseType: !50, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3777, file: !2814, line: 256, baseType: !50, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3777, file: !2814, line: 257, baseType: !50, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3777, file: !2814, line: 258, baseType: !50, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3777, file: !2814, line: 260, baseType: !3792, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2814, line: 156, size: 192, elements: !3794)
!3794 = !{!3795, !3796, !3798}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3793, file: !2814, line: 157, baseType: !3792, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3793, file: !2814, line: 158, baseType: !3797, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3793, file: !2814, line: 162, baseType: !43, size: 32, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3777, file: !2814, line: 262, baseType: !3797, size: 64, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3777, file: !2814, line: 264, baseType: !43, size: 32, offset: 896)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3777, file: !2814, line: 268, baseType: !43, size: 32, offset: 928)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3777, file: !2814, line: 270, baseType: !47, size: 64, offset: 960)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3777, file: !2814, line: 274, baseType: !44, size: 16, offset: 1024)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3777, file: !2814, line: 275, baseType: !2842, size: 8, offset: 1040)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3777, file: !2814, line: 276, baseType: !2844, size: 8, offset: 1048)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3777, file: !2814, line: 280, baseType: !2848, size: 64, offset: 1088)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3777, file: !2814, line: 289, baseType: !2851, size: 64, offset: 1152)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3777, file: !2814, line: 297, baseType: !52, size: 64, offset: 1216)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3777, file: !2814, line: 298, baseType: !52, size: 64, offset: 1280)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3777, file: !2814, line: 299, baseType: !52, size: 64, offset: 1344)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3777, file: !2814, line: 300, baseType: !52, size: 64, offset: 1408)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3777, file: !2814, line: 302, baseType: !53, size: 64, offset: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3777, file: !2814, line: 303, baseType: !43, size: 32, offset: 1536)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3777, file: !2814, line: 305, baseType: !2859, size: 160, offset: 1568)
!3815 = !DILocalVariable(name: "res_ptr", scope: !3755, file: !539, line: 190, type: !50)
!3816 = !DILocalVariable(name: "res_size", scope: !3755, file: !539, line: 191, type: !53)
!3817 = !DILocalVariable(name: "c", scope: !3752, file: !539, line: 195, type: !43)
!3818 = !DILocalVariable(name: "buf2", scope: !3752, file: !539, line: 197, type: !3819)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 408, elements: !3820)
!3820 = !{!3821}
!3821 = !DISubrange(count: 51)
!3822 = !DILocalVariable(name: "l1", scope: !3752, file: !539, line: 198, type: !53)
!3823 = !DILocalVariable(name: "l2", scope: !3752, file: !539, line: 198, type: !53)
!3824 = !DILocalVariable(name: "old_res_ptr", scope: !3752, file: !539, line: 199, type: !50)
!3825 = !DILocation(line: 196, column: 28, scope: !3752, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 589, column: 18, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3745, file: !539, line: 589, column: 3)
!3828 = !DILocation(line: 197, column: 28, scope: !3752, inlinedAt: !3826)
!3829 = !DILocation(line: 403, column: 13, scope: !3745)
!3830 = !DILocation(line: 395, column: 15, scope: !3745)
!3831 = !DILocation(line: 584, column: 15, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3745, file: !539, line: 584, column: 7)
!3833 = !DILocation(line: 584, column: 7, scope: !3745)
!3834 = !DILocation(line: 128, column: 8, scope: !3763, inlinedAt: !3826)
!3835 = !DILocation(line: 126, column: 15, scope: !3763, inlinedAt: !3826)
!3836 = !DILocation(line: 129, column: 10, scope: !3762, inlinedAt: !3826)
!3837 = !DILocation(line: 129, column: 7, scope: !3763, inlinedAt: !3826)
!3838 = !DILocation(line: 138, column: 13, scope: !3761, inlinedAt: !3826)
!3839 = !DILocation(line: 132, column: 19, scope: !3761, inlinedAt: !3826)
!3840 = !DILocation(line: 139, column: 15, scope: !3841, inlinedAt: !3826)
!3841 = distinct !DILexicalBlock(scope: !3761, file: !539, line: 139, column: 11)
!3842 = !DILocation(line: 139, column: 23, scope: !3841, inlinedAt: !3826)
!3843 = !DILocation(line: 139, column: 26, scope: !3841, inlinedAt: !3826)
!3844 = !DILocation(line: 139, column: 33, scope: !3841, inlinedAt: !3826)
!3845 = !DILocation(line: 139, column: 11, scope: !3761, inlinedAt: !3826)
!3846 = !DILocation(line: 140, column: 9, scope: !3841, inlinedAt: !3826)
!3847 = !DILocation(line: 144, column: 26, scope: !3770, inlinedAt: !3826)
!3848 = !DILocation(line: 144, column: 16, scope: !3770, inlinedAt: !3826)
!3849 = !DILocation(line: 145, column: 16, scope: !3770, inlinedAt: !3826)
!3850 = !DILocation(line: 146, column: 34, scope: !3770, inlinedAt: !3826)
!3851 = !DILocation(line: 146, column: 38, scope: !3770, inlinedAt: !3826)
!3852 = !DILocation(line: 146, column: 42, scope: !3770, inlinedAt: !3826)
!3853 = !DILocation(line: 147, column: 48, scope: !3770, inlinedAt: !3826)
!3854 = !DILocation(line: 147, column: 46, scope: !3770, inlinedAt: !3826)
!3855 = !DILocation(line: 147, column: 69, scope: !3770, inlinedAt: !3826)
!3856 = !DILocation(line: 147, column: 30, scope: !3770, inlinedAt: !3826)
!3857 = !DILocation(line: 134, column: 13, scope: !3761, inlinedAt: !3826)
!3858 = !DILocation(line: 148, column: 13, scope: !3770, inlinedAt: !3826)
!3859 = !DILocation(line: 150, column: 13, scope: !3860, inlinedAt: !3826)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !539, line: 149, column: 11)
!3861 = distinct !DILexicalBlock(scope: !3770, file: !539, line: 148, column: 13)
!3862 = !DILocation(line: 151, column: 17, scope: !3860, inlinedAt: !3826)
!3863 = !DILocation(line: 152, column: 34, scope: !3864, inlinedAt: !3826)
!3864 = distinct !DILexicalBlock(scope: !3860, file: !539, line: 151, column: 17)
!3865 = !DILocation(line: 153, column: 41, scope: !3860, inlinedAt: !3826)
!3866 = !DILocation(line: 153, column: 13, scope: !3860, inlinedAt: !3826)
!3867 = !DILocation(line: 157, column: 11, scope: !3761, inlinedAt: !3826)
!3868 = !DILocation(line: 171, column: 16, scope: !3759, inlinedAt: !3826)
!3869 = !DILocation(line: 162, column: 15, scope: !3759, inlinedAt: !3826)
!3870 = !DILocation(line: 173, column: 18, scope: !3758, inlinedAt: !3826)
!3871 = !DILocation(line: 173, column: 15, scope: !3759, inlinedAt: !3826)
!3872 = !DILocation(line: 180, column: 20, scope: !3757, inlinedAt: !3826)
!3873 = !DILocation(line: 178, column: 21, scope: !3757, inlinedAt: !3826)
!3874 = !DILocation(line: 181, column: 22, scope: !3756, inlinedAt: !3826)
!3875 = !DILocation(line: 181, column: 19, scope: !3757, inlinedAt: !3826)
!3876 = !DILocation(line: 184, column: 19, scope: !3877, inlinedAt: !3826)
!3877 = distinct !DILexicalBlock(scope: !3756, file: !539, line: 182, column: 17)
!3878 = !DILocation(line: 186, column: 17, scope: !3877, inlinedAt: !3826)
!3879 = !DILocation(line: 190, column: 25, scope: !3755, inlinedAt: !3826)
!3880 = !DILocation(line: 191, column: 26, scope: !3755, inlinedAt: !3826)
!3881 = !DILocation(line: 193, column: 19, scope: !3755, inlinedAt: !3826)
!3882 = !DILocation(line: 196, column: 23, scope: !3752, inlinedAt: !3826)
!3883 = !DILocation(line: 197, column: 23, scope: !3752, inlinedAt: !3826)
!3884 = !DILocalVariable(name: "__fp", arg: 1, scope: !3885, file: !3695, line: 63, type: !3775)
!3885 = distinct !DISubprogram(name: "getc_unlocked", scope: !3695, file: !3695, line: 63, type: !3886, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !194, variables: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!43, !3775}
!3888 = !{!3884}
!3889 = !DILocation(line: 63, column: 22, scope: !3885, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 201, column: 27, scope: !3752, inlinedAt: !3826)
!3891 = !DILocation(line: 65, column: 10, scope: !3885, inlinedAt: !3890)
!3892 = !{!3701, !615, i64 8}
!3893 = !{!3701, !615, i64 16}
!3894 = !{!"branch_weights", i32 2000, i32 1}
!3895 = !DILocation(line: 195, column: 27, scope: !3752, inlinedAt: !3826)
!3896 = !DILocation(line: 202, column: 27, scope: !3752, inlinedAt: !3826)
!3897 = distinct !{!3897, !3898, !3901}
!3898 = !DILocation(line: 209, column: 27, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !539, line: 207, column: 25)
!3900 = distinct !DILexicalBlock(scope: !3752, file: !539, line: 206, column: 27)
!3901 = !DILocation(line: 211, column: 58, scope: !3899)
!3902 = !DILocation(line: 65, column: 10, scope: !3885, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 210, column: 33, scope: !3899, inlinedAt: !3826)
!3904 = !DILocation(line: 63, column: 22, scope: !3885, inlinedAt: !3903)
!3905 = !DILocation(line: 210, column: 29, scope: !3899, inlinedAt: !3826)
!3906 = distinct !{!3906, !3907, !3908}
!3907 = !DILocation(line: 193, column: 19, scope: !3754)
!3908 = !DILocation(line: 241, column: 21, scope: !3754)
!3909 = !DILocation(line: 216, column: 23, scope: !3752, inlinedAt: !3826)
!3910 = !DILocation(line: 217, column: 27, scope: !3911, inlinedAt: !3826)
!3911 = distinct !DILexicalBlock(scope: !3752, file: !539, line: 217, column: 27)
!3912 = !DILocation(line: 217, column: 64, scope: !3911, inlinedAt: !3826)
!3913 = !DILocation(line: 217, column: 27, scope: !3752, inlinedAt: !3826)
!3914 = !DILocation(line: 219, column: 28, scope: !3752, inlinedAt: !3826)
!3915 = !DILocation(line: 198, column: 30, scope: !3752, inlinedAt: !3826)
!3916 = !DILocation(line: 220, column: 28, scope: !3752, inlinedAt: !3826)
!3917 = !DILocation(line: 198, column: 34, scope: !3752, inlinedAt: !3826)
!3918 = !DILocation(line: 199, column: 29, scope: !3752, inlinedAt: !3826)
!3919 = !DILocation(line: 222, column: 36, scope: !3920, inlinedAt: !3826)
!3920 = distinct !DILexicalBlock(scope: !3752, file: !539, line: 222, column: 27)
!3921 = !DILocation(line: 222, column: 27, scope: !3752, inlinedAt: !3826)
!3922 = !DILocation(line: 225, column: 63, scope: !3923, inlinedAt: !3826)
!3923 = distinct !DILexicalBlock(scope: !3920, file: !539, line: 223, column: 25)
!3924 = !DILocation(line: 225, column: 46, scope: !3923, inlinedAt: !3826)
!3925 = !DILocation(line: 226, column: 25, scope: !3923, inlinedAt: !3826)
!3926 = !DILocation(line: 229, column: 36, scope: !3927, inlinedAt: !3826)
!3927 = distinct !DILexicalBlock(scope: !3920, file: !539, line: 228, column: 25)
!3928 = !DILocation(line: 230, column: 73, scope: !3927, inlinedAt: !3826)
!3929 = !DILocation(line: 230, column: 46, scope: !3927, inlinedAt: !3826)
!3930 = !DILocation(line: 232, column: 35, scope: !3931, inlinedAt: !3826)
!3931 = distinct !DILexicalBlock(scope: !3752, file: !539, line: 232, column: 27)
!3932 = !DILocation(line: 232, column: 27, scope: !3752, inlinedAt: !3826)
!3933 = !DILocation(line: 236, column: 27, scope: !3934, inlinedAt: !3826)
!3934 = distinct !DILexicalBlock(scope: !3931, file: !539, line: 233, column: 25)
!3935 = !DILocation(line: 237, column: 27, scope: !3934, inlinedAt: !3826)
!3936 = !DILocation(line: 241, column: 21, scope: !3753, inlinedAt: !3826)
!3937 = !DILocation(line: 239, column: 39, scope: !3752, inlinedAt: !3826)
!3938 = !DILocation(line: 239, column: 50, scope: !3752, inlinedAt: !3826)
!3939 = !DILocation(line: 239, column: 61, scope: !3752, inlinedAt: !3826)
!3940 = !DILocalVariable(name: "__dest", arg: 1, scope: !3941, file: !3942, line: 88, type: !3945)
!3941 = distinct !DISubprogram(name: "strcpy", scope: !3942, file: !3942, line: 88, type: !3943, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !194, variables: !3946)
!3942 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!50, !3945, !3372}
!3945 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3946 = !{!3940, !3947}
!3947 = !DILocalVariable(name: "__src", arg: 2, scope: !3941, file: !3942, line: 88, type: !3372)
!3948 = !DILocation(line: 88, column: 1, scope: !3941, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 239, column: 23, scope: !3752, inlinedAt: !3826)
!3950 = !DILocation(line: 90, column: 49, scope: !3941, inlinedAt: !3949)
!3951 = !DILocation(line: 90, column: 10, scope: !3941, inlinedAt: !3949)
!3952 = !DILocation(line: 88, column: 1, scope: !3941, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 240, column: 23, scope: !3752, inlinedAt: !3826)
!3954 = !DILocation(line: 90, column: 49, scope: !3941, inlinedAt: !3953)
!3955 = !DILocation(line: 90, column: 10, scope: !3941, inlinedAt: !3953)
!3956 = !DILocation(line: 193, column: 19, scope: !3753, inlinedAt: !3826)
!3957 = !DILocation(line: 242, column: 19, scope: !3755, inlinedAt: !3826)
!3958 = !DILocation(line: 243, column: 32, scope: !3959, inlinedAt: !3826)
!3959 = distinct !DILexicalBlock(scope: !3755, file: !539, line: 243, column: 23)
!3960 = !DILocation(line: 243, column: 23, scope: !3755, inlinedAt: !3826)
!3961 = !DILocation(line: 247, column: 33, scope: !3962, inlinedAt: !3826)
!3962 = distinct !DILexicalBlock(scope: !3959, file: !539, line: 246, column: 21)
!3963 = !DILocation(line: 247, column: 45, scope: !3962, inlinedAt: !3826)
!3964 = !DILocation(line: 253, column: 11, scope: !3759, inlinedAt: !3826)
!3965 = !DILocation(line: 377, column: 23, scope: !3761, inlinedAt: !3826)
!3966 = !DILocation(line: 378, column: 5, scope: !3761, inlinedAt: !3826)
!3967 = !DILocation(line: 396, column: 15, scope: !3745)
!3968 = !DILocation(line: 590, column: 8, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3827, file: !539, line: 589, column: 3)
!3970 = !DILocation(line: 590, column: 17, scope: !3969)
!3971 = !DILocation(line: 589, column: 3, scope: !3827)
!3972 = !DILocation(line: 592, column: 9, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3969, file: !539, line: 592, column: 9)
!3974 = !DILocation(line: 592, column: 35, scope: !3973)
!3975 = !DILocation(line: 593, column: 9, scope: !3973)
!3976 = !DILocation(line: 593, column: 24, scope: !3973)
!3977 = !DILocation(line: 593, column: 31, scope: !3973)
!3978 = !DILocation(line: 593, column: 34, scope: !3973)
!3979 = !DILocation(line: 593, column: 45, scope: !3973)
!3980 = !DILocation(line: 592, column: 9, scope: !3969)
!3981 = !DILocation(line: 595, column: 29, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3973, file: !539, line: 594, column: 7)
!3983 = !DILocation(line: 595, column: 27, scope: !3982)
!3984 = !DILocation(line: 595, column: 46, scope: !3982)
!3985 = !DILocation(line: 596, column: 9, scope: !3982)
!3986 = !DILocation(line: 591, column: 19, scope: !3969)
!3987 = !DILocation(line: 591, column: 36, scope: !3969)
!3988 = !DILocation(line: 591, column: 16, scope: !3969)
!3989 = !DILocation(line: 591, column: 52, scope: !3969)
!3990 = !DILocation(line: 591, column: 69, scope: !3969)
!3991 = !DILocation(line: 591, column: 49, scope: !3969)
!3992 = distinct !{!3992, !3971, !3993}
!3993 = !DILocation(line: 597, column: 7, scope: !3827)
!3994 = !DILocation(line: 602, column: 7, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3745, file: !539, line: 602, column: 7)
!3996 = !DILocation(line: 602, column: 18, scope: !3995)
!3997 = !DILocation(line: 602, column: 7, scope: !3745)
!3998 = !DILocation(line: 612, column: 3, scope: !3745)
!3999 = distinct !DISubprogram(name: "rpl_fclose", scope: !4000, file: !4000, line: 56, type: !4001, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !4043)
!4000 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!43, !4003}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2812, line: 7, baseType: !4005)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2814, line: 241, size: 1728, elements: !4006)
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4005, file: !2814, line: 242, baseType: !43, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4005, file: !2814, line: 247, baseType: !50, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4005, file: !2814, line: 248, baseType: !50, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4005, file: !2814, line: 249, baseType: !50, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4005, file: !2814, line: 250, baseType: !50, size: 64, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4005, file: !2814, line: 251, baseType: !50, size: 64, offset: 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4005, file: !2814, line: 252, baseType: !50, size: 64, offset: 384)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4005, file: !2814, line: 253, baseType: !50, size: 64, offset: 448)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4005, file: !2814, line: 254, baseType: !50, size: 64, offset: 512)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4005, file: !2814, line: 256, baseType: !50, size: 64, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4005, file: !2814, line: 257, baseType: !50, size: 64, offset: 640)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4005, file: !2814, line: 258, baseType: !50, size: 64, offset: 704)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4005, file: !2814, line: 260, baseType: !4020, size: 64, offset: 768)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2814, line: 156, size: 192, elements: !4022)
!4022 = !{!4023, !4024, !4026}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4021, file: !2814, line: 157, baseType: !4020, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4021, file: !2814, line: 158, baseType: !4025, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4021, file: !2814, line: 162, baseType: !43, size: 32, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4005, file: !2814, line: 262, baseType: !4025, size: 64, offset: 832)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4005, file: !2814, line: 264, baseType: !43, size: 32, offset: 896)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4005, file: !2814, line: 268, baseType: !43, size: 32, offset: 928)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4005, file: !2814, line: 270, baseType: !47, size: 64, offset: 960)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4005, file: !2814, line: 274, baseType: !44, size: 16, offset: 1024)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4005, file: !2814, line: 275, baseType: !2842, size: 8, offset: 1040)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4005, file: !2814, line: 276, baseType: !2844, size: 8, offset: 1048)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4005, file: !2814, line: 280, baseType: !2848, size: 64, offset: 1088)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4005, file: !2814, line: 289, baseType: !2851, size: 64, offset: 1152)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4005, file: !2814, line: 297, baseType: !52, size: 64, offset: 1216)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4005, file: !2814, line: 298, baseType: !52, size: 64, offset: 1280)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4005, file: !2814, line: 299, baseType: !52, size: 64, offset: 1344)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4005, file: !2814, line: 300, baseType: !52, size: 64, offset: 1408)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4005, file: !2814, line: 302, baseType: !53, size: 64, offset: 1472)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4005, file: !2814, line: 303, baseType: !43, size: 32, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4005, file: !2814, line: 305, baseType: !2859, size: 160, offset: 1568)
!4043 = !{!4044, !4045, !4046, !4047}
!4044 = !DILocalVariable(name: "fp", arg: 1, scope: !3999, file: !4000, line: 56, type: !4003)
!4045 = !DILocalVariable(name: "saved_errno", scope: !3999, file: !4000, line: 58, type: !43)
!4046 = !DILocalVariable(name: "fd", scope: !3999, file: !4000, line: 59, type: !43)
!4047 = !DILocalVariable(name: "result", scope: !3999, file: !4000, line: 60, type: !43)
!4048 = !DILocation(line: 56, column: 19, scope: !3999)
!4049 = !DILocation(line: 58, column: 7, scope: !3999)
!4050 = !DILocation(line: 60, column: 7, scope: !3999)
!4051 = !DILocation(line: 63, column: 8, scope: !3999)
!4052 = !DILocation(line: 59, column: 7, scope: !3999)
!4053 = !DILocation(line: 64, column: 10, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !3999, file: !4000, line: 64, column: 7)
!4055 = !DILocation(line: 64, column: 7, scope: !3999)
!4056 = !DILocation(line: 65, column: 12, scope: !4054)
!4057 = !DILocation(line: 65, column: 5, scope: !4054)
!4058 = !DILocation(line: 70, column: 9, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !3999, file: !4000, line: 70, column: 7)
!4060 = !DILocation(line: 70, column: 23, scope: !4059)
!4061 = !DILocation(line: 70, column: 33, scope: !4059)
!4062 = !DILocation(line: 70, column: 26, scope: !4059)
!4063 = !DILocation(line: 70, column: 59, scope: !4059)
!4064 = !DILocation(line: 71, column: 7, scope: !4059)
!4065 = !DILocation(line: 71, column: 10, scope: !4059)
!4066 = !DILocation(line: 70, column: 7, scope: !3999)
!4067 = !DILocation(line: 98, column: 12, scope: !3999)
!4068 = !DILocation(line: 103, column: 7, scope: !3999)
!4069 = !DILocation(line: 72, column: 19, scope: !4059)
!4070 = !DILocation(line: 103, column: 19, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !3999, file: !4000, line: 103, column: 7)
!4072 = !DILocation(line: 105, column: 13, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4071, file: !4000, line: 104, column: 5)
!4074 = !DILocation(line: 107, column: 5, scope: !4073)
!4075 = !DILocation(line: 110, column: 1, scope: !3999)
!4076 = distinct !DISubprogram(name: "rpl_fflush", scope: !4077, file: !4077, line: 127, type: !4078, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !4120)
!4077 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!43, !4080}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2812, line: 7, baseType: !4082)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2814, line: 241, size: 1728, elements: !4083)
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4082, file: !2814, line: 242, baseType: !43, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4082, file: !2814, line: 247, baseType: !50, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4082, file: !2814, line: 248, baseType: !50, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4082, file: !2814, line: 249, baseType: !50, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4082, file: !2814, line: 250, baseType: !50, size: 64, offset: 256)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4082, file: !2814, line: 251, baseType: !50, size: 64, offset: 320)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4082, file: !2814, line: 252, baseType: !50, size: 64, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4082, file: !2814, line: 253, baseType: !50, size: 64, offset: 448)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4082, file: !2814, line: 254, baseType: !50, size: 64, offset: 512)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4082, file: !2814, line: 256, baseType: !50, size: 64, offset: 576)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4082, file: !2814, line: 257, baseType: !50, size: 64, offset: 640)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4082, file: !2814, line: 258, baseType: !50, size: 64, offset: 704)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4082, file: !2814, line: 260, baseType: !4097, size: 64, offset: 768)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2814, line: 156, size: 192, elements: !4099)
!4099 = !{!4100, !4101, !4103}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4098, file: !2814, line: 157, baseType: !4097, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4098, file: !2814, line: 158, baseType: !4102, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4098, file: !2814, line: 162, baseType: !43, size: 32, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4082, file: !2814, line: 262, baseType: !4102, size: 64, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4082, file: !2814, line: 264, baseType: !43, size: 32, offset: 896)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4082, file: !2814, line: 268, baseType: !43, size: 32, offset: 928)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4082, file: !2814, line: 270, baseType: !47, size: 64, offset: 960)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4082, file: !2814, line: 274, baseType: !44, size: 16, offset: 1024)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4082, file: !2814, line: 275, baseType: !2842, size: 8, offset: 1040)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4082, file: !2814, line: 276, baseType: !2844, size: 8, offset: 1048)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4082, file: !2814, line: 280, baseType: !2848, size: 64, offset: 1088)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4082, file: !2814, line: 289, baseType: !2851, size: 64, offset: 1152)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4082, file: !2814, line: 297, baseType: !52, size: 64, offset: 1216)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4082, file: !2814, line: 298, baseType: !52, size: 64, offset: 1280)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4082, file: !2814, line: 299, baseType: !52, size: 64, offset: 1344)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4082, file: !2814, line: 300, baseType: !52, size: 64, offset: 1408)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4082, file: !2814, line: 302, baseType: !53, size: 64, offset: 1472)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4082, file: !2814, line: 303, baseType: !43, size: 32, offset: 1536)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4082, file: !2814, line: 305, baseType: !2859, size: 160, offset: 1568)
!4120 = !{!4121}
!4121 = !DILocalVariable(name: "stream", arg: 1, scope: !4076, file: !4077, line: 127, type: !4080)
!4122 = !DILocation(line: 127, column: 19, scope: !4076)
!4123 = !DILocation(line: 148, column: 14, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4076, file: !4077, line: 148, column: 7)
!4125 = !DILocation(line: 148, column: 22, scope: !4124)
!4126 = !DILocation(line: 148, column: 27, scope: !4124)
!4127 = !DILocation(line: 148, column: 7, scope: !4076)
!4128 = !DILocation(line: 149, column: 12, scope: !4124)
!4129 = !DILocation(line: 149, column: 5, scope: !4124)
!4130 = !DILocalVariable(name: "fp", arg: 1, scope: !4131, file: !4077, line: 40, type: !4080)
!4131 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4077, file: !4077, line: 40, type: !4132, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !4134)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !4080}
!4134 = !{!4130}
!4135 = !DILocation(line: 40, column: 48, scope: !4131, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 153, column: 3, scope: !4076)
!4137 = !DILocation(line: 42, column: 11, scope: !4138, inlinedAt: !4136)
!4138 = distinct !DILexicalBlock(scope: !4131, file: !4077, line: 42, column: 7)
!4139 = !DILocation(line: 42, column: 18, scope: !4138, inlinedAt: !4136)
!4140 = !DILocation(line: 42, column: 7, scope: !4131, inlinedAt: !4136)
!4141 = !DILocation(line: 44, column: 5, scope: !4138, inlinedAt: !4136)
!4142 = !DILocation(line: 155, column: 10, scope: !4076)
!4143 = !DILocation(line: 155, column: 3, scope: !4076)
!4144 = !DILocation(line: 229, column: 1, scope: !4076)
!4145 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4146, file: !4146, line: 28, type: !4147, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !4189)
!4146 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!43, !4149, !45, !43}
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2812, line: 7, baseType: !4151)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2814, line: 241, size: 1728, elements: !4152)
!4152 = !{!4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4151, file: !2814, line: 242, baseType: !43, size: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4151, file: !2814, line: 247, baseType: !50, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4151, file: !2814, line: 248, baseType: !50, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4151, file: !2814, line: 249, baseType: !50, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4151, file: !2814, line: 250, baseType: !50, size: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4151, file: !2814, line: 251, baseType: !50, size: 64, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4151, file: !2814, line: 252, baseType: !50, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4151, file: !2814, line: 253, baseType: !50, size: 64, offset: 448)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4151, file: !2814, line: 254, baseType: !50, size: 64, offset: 512)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4151, file: !2814, line: 256, baseType: !50, size: 64, offset: 576)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4151, file: !2814, line: 257, baseType: !50, size: 64, offset: 640)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4151, file: !2814, line: 258, baseType: !50, size: 64, offset: 704)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4151, file: !2814, line: 260, baseType: !4166, size: 64, offset: 768)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2814, line: 156, size: 192, elements: !4168)
!4168 = !{!4169, !4170, !4172}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4167, file: !2814, line: 157, baseType: !4166, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4167, file: !2814, line: 158, baseType: !4171, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4167, file: !2814, line: 162, baseType: !43, size: 32, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4151, file: !2814, line: 262, baseType: !4171, size: 64, offset: 832)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4151, file: !2814, line: 264, baseType: !43, size: 32, offset: 896)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4151, file: !2814, line: 268, baseType: !43, size: 32, offset: 928)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4151, file: !2814, line: 270, baseType: !47, size: 64, offset: 960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4151, file: !2814, line: 274, baseType: !44, size: 16, offset: 1024)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4151, file: !2814, line: 275, baseType: !2842, size: 8, offset: 1040)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4151, file: !2814, line: 276, baseType: !2844, size: 8, offset: 1048)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4151, file: !2814, line: 280, baseType: !2848, size: 64, offset: 1088)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4151, file: !2814, line: 289, baseType: !2851, size: 64, offset: 1152)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4151, file: !2814, line: 297, baseType: !52, size: 64, offset: 1216)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4151, file: !2814, line: 298, baseType: !52, size: 64, offset: 1280)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4151, file: !2814, line: 299, baseType: !52, size: 64, offset: 1344)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4151, file: !2814, line: 300, baseType: !52, size: 64, offset: 1408)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4151, file: !2814, line: 302, baseType: !53, size: 64, offset: 1472)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4151, file: !2814, line: 303, baseType: !43, size: 32, offset: 1536)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4151, file: !2814, line: 305, baseType: !2859, size: 160, offset: 1568)
!4189 = !{!4190, !4191, !4192, !4193}
!4190 = !DILocalVariable(name: "fp", arg: 1, scope: !4145, file: !4146, line: 28, type: !4149)
!4191 = !DILocalVariable(name: "offset", arg: 2, scope: !4145, file: !4146, line: 28, type: !45)
!4192 = !DILocalVariable(name: "whence", arg: 3, scope: !4145, file: !4146, line: 28, type: !43)
!4193 = !DILocalVariable(name: "pos", scope: !4194, file: !4146, line: 116, type: !45)
!4194 = distinct !DILexicalBlock(scope: !4195, file: !4146, line: 112, column: 5)
!4195 = distinct !DILexicalBlock(scope: !4145, file: !4146, line: 51, column: 7)
!4196 = !DILocation(line: 28, column: 15, scope: !4145)
!4197 = !DILocation(line: 28, column: 25, scope: !4145)
!4198 = !DILocation(line: 28, column: 37, scope: !4145)
!4199 = !DILocation(line: 51, column: 11, scope: !4195)
!4200 = !DILocation(line: 51, column: 31, scope: !4195)
!4201 = !DILocation(line: 51, column: 24, scope: !4195)
!4202 = !DILocation(line: 52, column: 7, scope: !4195)
!4203 = !DILocation(line: 52, column: 14, scope: !4195)
!4204 = !{!3701, !615, i64 40}
!4205 = !DILocation(line: 52, column: 35, scope: !4195)
!4206 = !{!3701, !615, i64 32}
!4207 = !DILocation(line: 52, column: 28, scope: !4195)
!4208 = !DILocation(line: 53, column: 7, scope: !4195)
!4209 = !DILocation(line: 53, column: 14, scope: !4195)
!4210 = !{!3701, !615, i64 72}
!4211 = !DILocation(line: 53, column: 28, scope: !4195)
!4212 = !DILocation(line: 51, column: 7, scope: !4145)
!4213 = !DILocation(line: 116, column: 26, scope: !4194)
!4214 = !DILocation(line: 116, column: 19, scope: !4194)
!4215 = !DILocation(line: 116, column: 13, scope: !4194)
!4216 = !DILocation(line: 117, column: 15, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4194, file: !4146, line: 117, column: 11)
!4218 = !DILocation(line: 117, column: 11, scope: !4194)
!4219 = !DILocation(line: 127, column: 11, scope: !4194)
!4220 = !DILocation(line: 127, column: 18, scope: !4194)
!4221 = !DILocation(line: 128, column: 11, scope: !4194)
!4222 = !DILocation(line: 128, column: 19, scope: !4194)
!4223 = !{!3701, !847, i64 144}
!4224 = !DILocation(line: 159, column: 7, scope: !4194)
!4225 = !DILocation(line: 161, column: 10, scope: !4145)
!4226 = !DILocation(line: 161, column: 3, scope: !4145)
!4227 = !DILocation(line: 162, column: 1, scope: !4145)
