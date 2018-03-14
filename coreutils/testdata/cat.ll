; ModuleID = 'coreutils-8.27/src/cat.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Concatenate FILE(s) to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [335 x i8] c"\0A  -A, --show-all           equivalent to -vET\0A  -b, --number-nonblank    number nonempty output lines, overrides -n\0A  -e                       equivalent to -vE\0A  -E, --show-ends          display $ at end of each line\0A  -n, --number             number all output lines\0A  -s, --squeeze-blank      suppress repeated empty output lines\0A\00", align 1
@.str.4 = private unnamed_addr constant [212 x i8] c"  -t                       equivalent to -vT\0A  -T, --show-tabs          display TAB characters as ^I\0A  -u                       (ignored)\0A  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [137 x i8] c"\0AExamples:\0A  %s f - g  Output f's contents, then standard input, then g's contents.\0A  %s        Copy standard input to standard output.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"benstuvAET\00", align 1
@main.long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.23 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@infile = internal unnamed_addr global i8* null, align 8, !dbg !45
@optind = external local_unnamed_addr global i32, align 4
@input_desc = internal unnamed_addr global i32 0, align 4, !dbg !49
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"%s: input file is output file\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@newlines2 = internal unnamed_addr global i32 0, align 4, !dbg !71
@.str.47 = private unnamed_addr constant [22 x i8] c"cannot do ioctl on %s\00", align 1
@line_num_start = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), align 8, !dbg !75
@line_buf = internal global [20 x i8] c"                 0\09\00", align 16, !dbg !77
@line_num_print = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 12), align 8, !dbg !82
@.str.29 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"number-nonblank\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"squeeze-blank\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"show-nonprinting\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"show-ends\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"show-tabs\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"show-all\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8, !dbg !163
@.str.31 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !169
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !174
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !177
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !184
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !191
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !219
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !224
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !236
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.62 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.64 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.66 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.67 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !243
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !250
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !238
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !252
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.94 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.98 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.99 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !258
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !267
@.str.3.125 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.126 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.127 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.128 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.129 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !707 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !711, metadata !712), !dbg !713
  %2 = icmp eq i32 %0, 0, !dbg !714
  br i1 %2, label %8, label %3, !dbg !716

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !717, !tbaa !719
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !717
  %6 = load i8*, i8** @program_name, align 8, !dbg !717, !tbaa !719
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !717
  br label %48, !dbg !717

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !723
  %10 = load i8*, i8** @program_name, align 8, !dbg !723, !tbaa !719
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !723
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !725
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !719
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !725
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !726
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !726, !tbaa !719
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !726
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([335 x i8], [335 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !731
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !719
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !731
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !732
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !732, !tbaa !719
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !732
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !733
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733, !tbaa !719
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !733
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !734
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !719
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !734
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !735
  %31 = load i8*, i8** @program_name, align 8, !dbg !735, !tbaa !719
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* %31, i8* %31) #10, !dbg !735
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !59, metadata !712) #10, !dbg !736
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !59, metadata !712) #10, !dbg !736
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !738
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !738
  %35 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !739
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !67, metadata !712) #10, !dbg !740
  %36 = icmp eq i8* %35, null, !dbg !741
  br i1 %36, label %43, label %37, !dbg !743

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #14, !dbg !744
  %39 = icmp eq i32 %38, 0, !dbg !744
  br i1 %39, label %43, label %40, !dbg !745

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !746
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !746
  br label %43, !dbg !748

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !749
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !749
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !750
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #10, !dbg !750
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #15, !dbg !751
  unreachable, !dbg !751
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !85, metadata !712), !dbg !752
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !86, metadata !712), !dbg !753
  %5 = tail call i32 @getpagesize() #16, !dbg !754
  %6 = sext i32 %5 to i64, !dbg !754
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !89, metadata !712), !dbg !755
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !92, metadata !712), !dbg !756
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !105, metadata !712), !dbg !757
  %7 = bitcast %struct.stat* %4 to i8*, !dbg !758
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #10, !dbg !758
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !144, metadata !712), !dbg !759
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !145, metadata !712), !dbg !760
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !146, metadata !712), !dbg !761
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !147, metadata !712), !dbg !762
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !148, metadata !712), !dbg !763
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !149, metadata !712), !dbg !764
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !150, metadata !712), !dbg !765
  %8 = load i8*, i8** %1, align 8, !dbg !766, !tbaa !719
  tail call void @set_program_name(i8* %8) #10, !dbg !767
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !768
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !769
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !770
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !771
  br label %13, !dbg !772

; <label>:13:                                     ; preds = %21, %2
  %14 = phi i8 [ 0, %2 ], [ %22, %21 ]
  %15 = phi i8 [ 0, %2 ], [ %23, %21 ]
  %16 = phi i8 [ 0, %2 ], [ %24, %21 ]
  %17 = phi i8 [ 0, %2 ], [ %25, %21 ]
  %18 = phi i8 [ 0, %2 ], [ %26, %21 ]
  %19 = phi i8 [ 0, %2 ], [ %27, %21 ]
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !149, metadata !712), !dbg !764
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !148, metadata !712), !dbg !763
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !147, metadata !712), !dbg !762
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !146, metadata !712), !dbg !761
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !145, metadata !712), !dbg !760
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !144, metadata !712), !dbg !759
  %20 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null) #10, !dbg !773
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !94, metadata !712), !dbg !774
  switch i32 %20, label %41 [
    i32 -1, label %42
    i32 98, label %28
    i32 101, label %29
    i32 110, label %30
    i32 115, label %31
    i32 116, label %32
    i32 117, label %21
    i32 118, label %33
    i32 65, label %34
    i32 69, label %35
    i32 84, label %36
    i32 -130, label %37
    i32 -131, label %38
  ], !dbg !772

; <label>:21:                                     ; preds = %13, %36, %35, %34, %33, %32, %31, %30, %29, %28
  %22 = phi i8 [ %14, %36 ], [ %14, %35 ], [ %14, %34 ], [ %14, %33 ], [ %14, %32 ], [ %14, %31 ], [ 1, %30 ], [ %14, %29 ], [ 1, %28 ], [ %14, %13 ]
  %23 = phi i8 [ %15, %36 ], [ %15, %35 ], [ %15, %34 ], [ %15, %33 ], [ %15, %32 ], [ %15, %31 ], [ %15, %30 ], [ %15, %29 ], [ 1, %28 ], [ %15, %13 ]
  %24 = phi i8 [ %16, %36 ], [ %16, %35 ], [ %16, %34 ], [ %16, %33 ], [ %16, %32 ], [ 1, %31 ], [ %16, %30 ], [ %16, %29 ], [ %16, %28 ], [ %16, %13 ]
  %25 = phi i8 [ %17, %36 ], [ 1, %35 ], [ 1, %34 ], [ %17, %33 ], [ %17, %32 ], [ %17, %31 ], [ %17, %30 ], [ 1, %29 ], [ %17, %28 ], [ %17, %13 ]
  %26 = phi i8 [ %18, %36 ], [ %18, %35 ], [ 1, %34 ], [ 1, %33 ], [ 1, %32 ], [ %18, %31 ], [ %18, %30 ], [ 1, %29 ], [ %18, %28 ], [ %18, %13 ]
  %27 = phi i8 [ 1, %36 ], [ %19, %35 ], [ 1, %34 ], [ %19, %33 ], [ 1, %32 ], [ %19, %31 ], [ %19, %30 ], [ %19, %29 ], [ %19, %28 ], [ %19, %13 ]
  br label %13, !dbg !764, !llvm.loop !775

; <label>:28:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !144, metadata !712), !dbg !759
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !145, metadata !712), !dbg !760
  br label %21, !dbg !777

; <label>:29:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !147, metadata !712), !dbg !762
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !148, metadata !712), !dbg !763
  br label %21, !dbg !780

; <label>:30:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !144, metadata !712), !dbg !759
  br label %21, !dbg !781

; <label>:31:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !146, metadata !712), !dbg !761
  br label %21, !dbg !782

; <label>:32:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !149, metadata !712), !dbg !764
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !148, metadata !712), !dbg !763
  br label %21, !dbg !783

; <label>:33:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !148, metadata !712), !dbg !763
  br label %21, !dbg !784

; <label>:34:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !148, metadata !712), !dbg !763
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !147, metadata !712), !dbg !762
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !149, metadata !712), !dbg !764
  br label %21, !dbg !785

; <label>:35:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !147, metadata !712), !dbg !762
  br label %21, !dbg !786

; <label>:36:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !149, metadata !712), !dbg !764
  br label %21, !dbg !787

; <label>:37:                                     ; preds = %13
  tail call void @usage(i32 0) #17, !dbg !788
  unreachable, !dbg !788

; <label>:38:                                     ; preds = %13
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !789, !tbaa !719
  %40 = load i8*, i8** @Version, align 8, !dbg !789, !tbaa !719
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* null) #10, !dbg !789
  tail call void @exit(i32 0) #15, !dbg !789
  unreachable, !dbg !789

; <label>:41:                                     ; preds = %13
  tail call void @usage(i32 1) #17, !dbg !790
  unreachable, !dbg !790

; <label>:42:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !106, metadata !712), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !792, metadata !712) #10, !dbg !800
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !799, metadata !712) #10, !dbg !800
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !803, metadata !712), !dbg !808
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !803, metadata !712), !dbg !810
  %43 = call i32 @__fxstat(i32 1, i32 1, %struct.stat* nonnull %4) #10, !dbg !813
  %44 = icmp slt i32 %43, 0, !dbg !814
  br i1 %44, label %45, label %49, !dbg !815

; <label>:45:                                     ; preds = %42
  %46 = tail call i32* @__errno_location() #16, !dbg !816
  %47 = load i32, i32* %46, align 4, !dbg !816, !tbaa !817
  %48 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !816
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* %48) #10, !dbg !816
  unreachable, !dbg !816

; <label>:49:                                     ; preds = %42
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !106, metadata !712), !dbg !791
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 9, !dbg !819
  %51 = load i64, i64* %50, align 8, !dbg !819, !tbaa !820
  %52 = icmp sgt i64 %51, 0, !dbg !819
  %53 = icmp ult i64 %51, 2305843009213693953, !dbg !819
  %54 = and i1 %52, %53, !dbg !819
  %55 = and i1 %52, %53, !dbg !819
  %56 = xor i1 %55, true, !dbg !819
  %57 = icmp slt i64 %51, 131072, !dbg !819
  %58 = or i1 %57, %56, !dbg !819
  %59 = select i1 %54, i64 %51, i64 512, !dbg !819
  %60 = select i1 %58, i64 131072, i64 %59, !dbg !819
  call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !87, metadata !712), !dbg !824
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0, !dbg !825
  %62 = load i64, i64* %61, align 8, !dbg !825, !tbaa !826
  call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !96, metadata !712), !dbg !827
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1, !dbg !828
  %64 = load i64, i64* %63, align 8, !dbg !828, !tbaa !829
  call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !101, metadata !712), !dbg !830
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !831
  %66 = load i32, i32* %65, align 8, !dbg !831, !tbaa !832
  %67 = and i32 %66, 61440, !dbg !831
  %68 = icmp eq i32 %67, 32768, !dbg !831
  %69 = icmp eq i8 %14, 0, !dbg !833
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !150, metadata !712), !dbg !765
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8** @infile, align 8, !dbg !835, !tbaa !719
  %70 = load i32, i32* @optind, align 4, !dbg !836, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !95, metadata !712), !dbg !837
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8
  %72 = or i8 %16, %14
  %73 = or i8 %72, %17
  %74 = or i8 %73, %18
  %75 = or i8 %74, %19
  %76 = icmp eq i8 %75, 0
  %77 = add nsw i64 %6, -1
  %78 = add nsw i64 %6, 18
  %79 = add i64 %78, %60
  %80 = icmp eq i8 %18, 0
  %81 = icmp ne i8 %19, 0
  %82 = icmp ne i8 %15, 0
  %83 = icmp eq i8 %17, 0
  %84 = icmp eq i8 %16, 0
  %85 = bitcast i32* %3 to i8*
  %86 = or i1 %69, %82
  %87 = xor i1 %81, true
  %88 = sext i32 %70 to i64, !dbg !838
  %89 = sext i32 %0 to i64, !dbg !838
  br label %90, !dbg !838, !llvm.loop !839

; <label>:90:                                     ; preds = %476, %49
  %91 = phi i64 [ %479, %476 ], [ %88, %49 ]
  %92 = phi i8 [ %477, %476 ], [ 1, %49 ]
  %93 = phi i8 [ %478, %476 ], [ 0, %49 ]
  call void @llvm.dbg.value(metadata i8 %93, i64 0, metadata !105, metadata !712), !dbg !757
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !95, metadata !712), !dbg !837
  call void @llvm.dbg.value(metadata i8 %92, i64 0, metadata !92, metadata !712), !dbg !756
  %94 = icmp slt i64 %91, %89, !dbg !841
  br i1 %94, label %97, label %95, !dbg !843

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** @infile, align 8, !dbg !844, !tbaa !719
  br label %102, !dbg !843

; <label>:97:                                     ; preds = %90
  %98 = getelementptr inbounds i8*, i8** %1, i64 %91, !dbg !846
  %99 = bitcast i8** %98 to i64*, !dbg !846
  %100 = load i64, i64* %99, align 8, !dbg !846, !tbaa !719
  store i64 %100, i64* bitcast (i8** @infile to i64*), align 8, !dbg !847, !tbaa !719
  %101 = inttoptr i64 %100 to i8*, !dbg !848
  br label %102, !dbg !848

; <label>:102:                                    ; preds = %95, %97
  %103 = phi i8* [ %96, %95 ], [ %101, %97 ], !dbg !844
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !844
  %105 = icmp eq i32 %104, 0, !dbg !844
  br i1 %105, label %106, label %107, !dbg !849

; <label>:106:                                    ; preds = %102
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !105, metadata !712), !dbg !757
  store i32 0, i32* @input_desc, align 4, !dbg !850, !tbaa !817
  br label %115, !dbg !852

; <label>:107:                                    ; preds = %102
  %108 = call i32 (i8*, i32, ...) @open(i8* %103, i32 0) #10, !dbg !853
  store i32 %108, i32* @input_desc, align 4, !dbg !855, !tbaa !817
  %109 = icmp slt i32 %108, 0, !dbg !856
  br i1 %109, label %110, label %115, !dbg !858

; <label>:110:                                    ; preds = %107
  %111 = tail call i32* @__errno_location() #16, !dbg !859
  %112 = load i32, i32* %111, align 4, !dbg !859, !tbaa !817
  %113 = load i8*, i8** @infile, align 8, !dbg !861, !tbaa !719
  %114 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %113) #10, !dbg !861
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %114) #10, !dbg !862
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !92, metadata !712), !dbg !756
  br label %476, !dbg !863

; <label>:115:                                    ; preds = %106, %107
  %116 = phi i32 [ 0, %106 ], [ %108, %107 ], !dbg !864
  %117 = phi i8 [ 1, %106 ], [ %93, %107 ]
  call void @llvm.dbg.value(metadata i8 %117, i64 0, metadata !105, metadata !712), !dbg !757
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !106, metadata !712), !dbg !791
  call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !792, metadata !712) #10, !dbg !866
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !799, metadata !712) #10, !dbg !866
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !803, metadata !712), !dbg !808
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !803, metadata !712), !dbg !810
  %118 = call i32 @__fxstat(i32 1, i32 %116, %struct.stat* nonnull %4) #10, !dbg !868
  %119 = icmp slt i32 %118, 0, !dbg !869
  br i1 %119, label %120, label %125, !dbg !870

; <label>:120:                                    ; preds = %115
  %121 = tail call i32* @__errno_location() #16, !dbg !871
  %122 = load i32, i32* %121, align 4, !dbg !871, !tbaa !817
  %123 = load i8*, i8** @infile, align 8, !dbg !873, !tbaa !719
  %124 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %123) #10, !dbg !873
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %124) #10, !dbg !874
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !92, metadata !712), !dbg !756
  br label %462, !dbg !875

; <label>:125:                                    ; preds = %115
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !106, metadata !712), !dbg !791
  %126 = load i64, i64* %50, align 8, !dbg !876, !tbaa !820
  %127 = icmp sgt i64 %126, 0, !dbg !876
  %128 = icmp ult i64 %126, 2305843009213693953, !dbg !876
  %129 = and i1 %127, %128, !dbg !876
  %130 = and i1 %127, %128, !dbg !876
  %131 = xor i1 %130, true, !dbg !876
  %132 = icmp slt i64 %126, 131072, !dbg !876
  %133 = or i1 %132, %131, !dbg !876
  %134 = select i1 %129, i64 %126, i64 512, !dbg !876
  %135 = select i1 %133, i64 131072, i64 %134, !dbg !876
  call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !88, metadata !712), !dbg !877
  %136 = load i32, i32* @input_desc, align 4, !dbg !878, !tbaa !817
  call void @fdadvise(i32 %136, i64 0, i64 0, i32 2) #10, !dbg !879
  %137 = load i64, i64* %61, align 8, !dbg !880
  %138 = icmp eq i64 %137, %62, !dbg !882
  %139 = and i1 %68, %138, !dbg !883
  %140 = load i64, i64* %63, align 8, !dbg !884
  %141 = icmp eq i64 %140, %64, !dbg !885
  %142 = and i1 %139, %141, !dbg !883
  br i1 %142, label %143, label %152, !dbg !883

; <label>:143:                                    ; preds = %125
  %144 = load i32, i32* @input_desc, align 4, !dbg !886, !tbaa !817
  %145 = call i64 @lseek(i32 %144, i64 0, i32 1) #10, !dbg !887
  %146 = load i64, i64* %71, align 8, !dbg !888, !tbaa !889
  %147 = icmp slt i64 %145, %146, !dbg !890
  br i1 %147, label %148, label %152, !dbg !891

; <label>:148:                                    ; preds = %143
  %149 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !892
  %150 = load i8*, i8** @infile, align 8, !dbg !894, !tbaa !719
  %151 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %150) #10, !dbg !894
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %149, i8* %151) #10, !dbg !895
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !92, metadata !712), !dbg !756
  br label %462, !dbg !896

; <label>:152:                                    ; preds = %143, %125
  br i1 %76, label %153, label %179, !dbg !897

; <label>:153:                                    ; preds = %152
  %154 = icmp ugt i64 %135, %60, !dbg !899
  %155 = select i1 %154, i64 %135, i64 %60, !dbg !899
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !88, metadata !712), !dbg !877
  %156 = add i64 %77, %155, !dbg !901
  %157 = call noalias i8* @xmalloc(i64 %156) #10, !dbg !902
  call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !90, metadata !712), !dbg !903
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !904, metadata !712), !dbg !912
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !909, metadata !712), !dbg !914
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !910, metadata !712), !dbg !915
  %158 = getelementptr inbounds i8, i8* %157, i64 %6, !dbg !916
  %159 = getelementptr inbounds i8, i8* %158, i64 -1, !dbg !917
  tail call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !911, metadata !712), !dbg !918
  %160 = ptrtoint i8* %159 to i64, !dbg !919
  %161 = urem i64 %160, %6, !dbg !920
  %162 = sub i64 0, %161, !dbg !921
  %163 = getelementptr inbounds i8, i8* %159, i64 %162, !dbg !921
  call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !922, metadata !712) #10, !dbg !932
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !927, metadata !712) #10, !dbg !934
  br label %164, !dbg !935

; <label>:164:                                    ; preds = %172, %153
  %165 = load i32, i32* @input_desc, align 4, !dbg !936, !tbaa !817
  %166 = call i64 @safe_read(i32 %165, i8* %163, i64 %155) #10, !dbg !937
  call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !928, metadata !712) #10, !dbg !938
  switch i64 %166, label %172 [
    i64 -1, label %167
    i64 0, label %457
  ], !dbg !939

; <label>:167:                                    ; preds = %164
  %168 = tail call i32* @__errno_location() #16, !dbg !940
  %169 = load i32, i32* %168, align 4, !dbg !940, !tbaa !817
  %170 = load i8*, i8** @infile, align 8, !dbg !943, !tbaa !719
  %171 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %170) #10, !dbg !943
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %171) #10, !dbg !944
  br label %457, !dbg !945

; <label>:172:                                    ; preds = %164
  call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !929, metadata !712) #10, !dbg !946
  %173 = call i64 @full_write(i32 1, i8* %163, i64 %166) #10, !dbg !947
  %174 = icmp eq i64 %173, %166, !dbg !949
  br i1 %174, label %164, label %175, !dbg !950, !llvm.loop !951

; <label>:175:                                    ; preds = %172
  %176 = tail call i32* @__errno_location() #16, !dbg !954
  %177 = load i32, i32* %176, align 4, !dbg !954, !tbaa !817
  %178 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !954
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %177, i8* %178) #10, !dbg !954
  unreachable, !dbg !954

; <label>:179:                                    ; preds = %152
  %180 = add i64 %135, %6, !dbg !955
  %181 = call noalias i8* @xmalloc(i64 %180) #10, !dbg !957
  call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !90, metadata !712), !dbg !903
  %182 = shl i64 %135, 2, !dbg !958
  %183 = add i64 %79, %182, !dbg !959
  %184 = call noalias i8* @xmalloc(i64 %183) #10, !dbg !960
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !91, metadata !712), !dbg !961
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !904, metadata !712), !dbg !962
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !909, metadata !712), !dbg !964
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !910, metadata !712), !dbg !965
  %185 = getelementptr inbounds i8, i8* %181, i64 %6, !dbg !966
  %186 = getelementptr inbounds i8, i8* %185, i64 -1, !dbg !967
  tail call void @llvm.dbg.value(metadata i8* %186, i64 0, metadata !911, metadata !712), !dbg !968
  %187 = ptrtoint i8* %186 to i64, !dbg !969
  %188 = urem i64 %187, %6, !dbg !970
  %189 = sub i64 0, %188, !dbg !971
  %190 = getelementptr inbounds i8, i8* %186, i64 %189, !dbg !971
  tail call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !904, metadata !712), !dbg !972
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !909, metadata !712), !dbg !974
  tail call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !910, metadata !712), !dbg !975
  %191 = getelementptr inbounds i8, i8* %184, i64 %6, !dbg !976
  %192 = getelementptr inbounds i8, i8* %191, i64 -1, !dbg !977
  tail call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !911, metadata !712), !dbg !978
  %193 = ptrtoint i8* %192 to i64, !dbg !979
  %194 = urem i64 %193, %6, !dbg !980
  %195 = sub i64 0, %194, !dbg !981
  %196 = getelementptr inbounds i8, i8* %192, i64 %195, !dbg !981
  call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !982, metadata !712) #10, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !987, metadata !712) #10, !dbg !1015
  call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !988, metadata !712) #10, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !989, metadata !712) #10, !dbg !1017
  call void @llvm.dbg.value(metadata i1 %80, i64 0, metadata !990, metadata !712) #10, !dbg !1018
  call void @llvm.dbg.value(metadata i1 %81, i64 0, metadata !991, metadata !712) #10, !dbg !1019
  call void @llvm.dbg.value(metadata i1 %69, i64 0, metadata !992, metadata !712) #10, !dbg !1020
  call void @llvm.dbg.value(metadata i1 %82, i64 0, metadata !993, metadata !712) #10, !dbg !1021
  call void @llvm.dbg.value(metadata i1 %83, i64 0, metadata !994, metadata !712) #10, !dbg !1022
  call void @llvm.dbg.value(metadata i1 %84, i64 0, metadata !995, metadata !712) #10, !dbg !1023
  %197 = load i32, i32* @newlines2, align 4, !dbg !1024, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %197, i64 0, metadata !1001, metadata !712) #10, !dbg !1025
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1002, metadata !712) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !998, metadata !712) #10, !dbg !1027
  %198 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %199 = ptrtoint i8* %196 to i64, !dbg !1031
  %200 = getelementptr inbounds i8, i8* %196, i64 %60
  br label %201, !dbg !1032, !llvm.loop !1033

; <label>:201:                                    ; preds = %346, %179
  %202 = phi i64 [ %199, %179 ], [ %347, %346 ]
  %203 = phi i8* [ %198, %179 ], [ %348, %346 ]
  %204 = phi i8* [ %190, %179 ], [ %340, %346 ]
  %205 = phi i32 [ %197, %179 ], [ %349, %346 ]
  %206 = phi i8 [ 1, %179 ], [ %342, %346 ]
  call void @llvm.dbg.value(metadata i8 %206, i64 0, metadata !1002, metadata !712) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !1001, metadata !712) #10, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !998, metadata !712) #10, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %203, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  %207 = inttoptr i64 %202 to i8*, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %207, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %208 = icmp ugt i8* %200, %207, !dbg !1037
  br i1 %208, label %226, label %209, !dbg !1038, !llvm.loop !1039

; <label>:209:                                    ; preds = %201
  br label %210, !dbg !1042

; <label>:210:                                    ; preds = %209, %218
  %211 = phi i8* [ %219, %218 ], [ %196, %209 ]
  call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !1003, metadata !712) #10, !dbg !1045
  %212 = call i64 @full_write(i32 1, i8* %211, i64 %60) #10, !dbg !1042
  %213 = icmp eq i64 %212, %60, !dbg !1046
  br i1 %213, label %218, label %214, !dbg !1047

; <label>:214:                                    ; preds = %210
  %215 = tail call i32* @__errno_location() #16, !dbg !1048
  %216 = load i32, i32* %215, align 4, !dbg !1048, !tbaa !817
  %217 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1048
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %216, i8* %217) #10, !dbg !1048
  unreachable, !dbg !1048

; <label>:218:                                    ; preds = %210
  %219 = getelementptr inbounds i8, i8* %211, i64 %60, !dbg !1049
  call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !1003, metadata !712) #10, !dbg !1045
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !999, metadata !1050) #10, !dbg !1030
  %220 = ptrtoint i8* %219 to i64, !dbg !1051
  %221 = sub i64 %202, %220, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %221, i64 0, metadata !1008, metadata !712) #10, !dbg !1052
  %222 = icmp ult i64 %221, %60, !dbg !1053
  br i1 %222, label %223, label %210, !dbg !1054, !llvm.loop !1039

; <label>:223:                                    ; preds = %218
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %196, i8* %219, i64 %221, i32 1, i1 false) #10, !dbg !1055
  %224 = getelementptr inbounds i8, i8* %196, i64 %221, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %225 = ptrtoint i8* %224 to i64, !dbg !1057
  br label %226, !dbg !1058

; <label>:226:                                    ; preds = %223, %201
  %227 = phi i64 [ %202, %201 ], [ %225, %223 ]
  %228 = icmp ugt i8* %203, %204, !dbg !1059
  br i1 %228, label %229, label %288, !dbg !1060

; <label>:229:                                    ; preds = %226
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1009, metadata !712) #10, !dbg !1061
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %85) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1012, metadata !712) #10, !dbg !1063
  store i32 0, i32* %3, align 4, !dbg !1063, !tbaa !817
  %230 = and i8 %206, 1, !dbg !1064
  %231 = icmp eq i8 %230, 0, !dbg !1064
  br i1 %231, label %247, label %232, !dbg !1066

; <label>:232:                                    ; preds = %229
  %233 = load i32, i32* @input_desc, align 4, !dbg !1067, !tbaa !817
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1012, metadata !712) #10, !dbg !1063
  %234 = call i32 (i32, i64, ...) @ioctl(i32 %233, i64 21531, i32* nonnull %3) #10, !dbg !1068
  %235 = icmp slt i32 %234, 0, !dbg !1069
  br i1 %235, label %236, label %243, !dbg !1070

; <label>:236:                                    ; preds = %232
  %237 = tail call i32* @__errno_location() #16, !dbg !1071
  %238 = load i32, i32* %237, align 4, !dbg !1071, !tbaa !817
  switch i32 %238, label %239 [
    i32 95, label %243
    i32 25, label %243
    i32 22, label %243
    i32 19, label %243
    i32 38, label %243
  ], !dbg !1074

; <label>:239:                                    ; preds = %236
  %240 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !1075
  %241 = load i8*, i8** @infile, align 8, !dbg !1077, !tbaa !719
  %242 = call i8* @quotearg_style(i32 4, i8* %241) #10, !dbg !1077
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %238, i8* %240, i8* %242) #10, !dbg !1078
  br label %455, !dbg !1079

; <label>:243:                                    ; preds = %236, %236, %236, %236, %236, %232
  %244 = phi i8 [ 0, %236 ], [ 0, %236 ], [ 0, %236 ], [ 0, %236 ], [ 0, %236 ], [ %206, %232 ]
  %245 = load i32, i32* %3, align 4, !dbg !1080, !tbaa !817
  call void @llvm.dbg.value(metadata i8 %244, i64 0, metadata !1002, metadata !712) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i32 %245, i64 0, metadata !1012, metadata !712) #10, !dbg !1063
  %246 = icmp eq i32 %245, 0, !dbg !1082
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1009, metadata !712) #10, !dbg !1061
  br i1 %246, label %247, label %258, !dbg !1083

; <label>:247:                                    ; preds = %243, %229
  %248 = phi i8 [ %244, %243 ], [ %206, %229 ]
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1084, metadata !712) #10, !dbg !1091
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1089, metadata !712) #10, !dbg !1094
  %249 = sub i64 %227, %199, !dbg !1095
  call void @llvm.dbg.value(metadata i64 %249, i64 0, metadata !1090, metadata !712) #10, !dbg !1096
  %250 = icmp eq i64 %249, 0, !dbg !1097
  br i1 %250, label %258, label %251, !dbg !1099

; <label>:251:                                    ; preds = %247
  %252 = call i64 @full_write(i32 1, i8* %196, i64 %249) #10, !dbg !1100
  %253 = icmp eq i64 %252, %249, !dbg !1103
  br i1 %253, label %258, label %254, !dbg !1104

; <label>:254:                                    ; preds = %251
  %255 = tail call i32* @__errno_location() #16, !dbg !1105
  %256 = load i32, i32* %255, align 4, !dbg !1105, !tbaa !817
  %257 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1105
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %256, i8* %257) #10, !dbg !1105
  unreachable, !dbg !1105

; <label>:258:                                    ; preds = %251, %247, %243
  %259 = phi i8 [ %244, %243 ], [ %248, %247 ], [ %248, %251 ]
  %260 = phi i64 [ %227, %243 ], [ %227, %247 ], [ %199, %251 ]
  %261 = load i32, i32* @input_desc, align 4, !dbg !1106, !tbaa !817
  %262 = call i64 @safe_read(i32 %261, i8* %190, i64 %135) #10, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %262, i64 0, metadata !1000, metadata !712) #10, !dbg !1108
  switch i64 %262, label %286 [
    i64 -1, label %263
    i64 0, label %276
  ], !dbg !1109

; <label>:263:                                    ; preds = %258
  %264 = tail call i32* @__errno_location() #16, !dbg !1110
  %265 = load i32, i32* %264, align 4, !dbg !1110, !tbaa !817
  %266 = load i8*, i8** @infile, align 8, !dbg !1113, !tbaa !719
  %267 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %266) #10, !dbg !1113
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %267) #10, !dbg !1114
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1084, metadata !712) #10, !dbg !1115
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1089, metadata !712) #10, !dbg !1117
  %268 = sub i64 %260, %199, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %268, i64 0, metadata !1090, metadata !712) #10, !dbg !1119
  %269 = icmp eq i64 %268, 0, !dbg !1120
  br i1 %269, label %455, label %270, !dbg !1121

; <label>:270:                                    ; preds = %263
  %271 = call i64 @full_write(i32 1, i8* %196, i64 %268) #10, !dbg !1122
  %272 = icmp eq i64 %271, %268, !dbg !1123
  br i1 %272, label %455, label %273, !dbg !1124

; <label>:273:                                    ; preds = %270
  %274 = load i32, i32* %264, align 4, !dbg !1125, !tbaa !817
  %275 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1125
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %274, i8* %275) #10, !dbg !1125
  unreachable, !dbg !1125

; <label>:276:                                    ; preds = %258
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1084, metadata !712) #10, !dbg !1126
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1089, metadata !712) #10, !dbg !1130
  %277 = sub i64 %260, %199, !dbg !1131
  call void @llvm.dbg.value(metadata i64 %277, i64 0, metadata !1090, metadata !712) #10, !dbg !1132
  %278 = icmp eq i64 %277, 0, !dbg !1133
  br i1 %278, label %455, label %279, !dbg !1134

; <label>:279:                                    ; preds = %276
  %280 = call i64 @full_write(i32 1, i8* %196, i64 %277) #10, !dbg !1135
  %281 = icmp eq i64 %280, %277, !dbg !1136
  br i1 %281, label %455, label %282, !dbg !1137

; <label>:282:                                    ; preds = %279
  %283 = tail call i32* @__errno_location() #16, !dbg !1138
  %284 = load i32, i32* %283, align 4, !dbg !1138, !tbaa !817
  %285 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1138
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %284, i8* %285) #10, !dbg !1138
  unreachable, !dbg !1138

; <label>:286:                                    ; preds = %258
  call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  %287 = getelementptr inbounds i8, i8* %190, i64 %262, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %287, i64 0, metadata !998, metadata !712) #10, !dbg !1027
  store i8 10, i8* %287, align 1, !dbg !1140, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %244, i64 0, metadata !1002, metadata !712) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %287, i64 0, metadata !998, metadata !712) #10, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #10, !dbg !1142
  br label %337

; <label>:288:                                    ; preds = %226
  %289 = add nsw i32 %205, 1, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %289, i64 0, metadata !1001, metadata !712) #10, !dbg !1025
  %290 = icmp sgt i32 %205, -1, !dbg !1146
  br i1 %290, label %291, label %325, !dbg !1147

; <label>:291:                                    ; preds = %288
  %292 = icmp eq i32 %205, 0, !dbg !1148
  %293 = or i1 %84, %292, !dbg !1151
  %294 = select i1 %292, i32 %289, i32 2, !dbg !1151
  br i1 %293, label %295, label %337, !dbg !1151

; <label>:295:                                    ; preds = %291
  call void @llvm.dbg.value(metadata i32 %294, i64 0, metadata !1001, metadata !712) #10, !dbg !1025
  br i1 %86, label %325, label %296, !dbg !1152

; <label>:296:                                    ; preds = %295
  %297 = load i8*, i8** @line_num_start, align 8
  br label %298, !dbg !1154, !llvm.loop !1160

; <label>:298:                                    ; preds = %303, %296
  %299 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %296 ], [ %304, %303 ]
  call void @llvm.dbg.value(metadata i8* %299, i64 0, metadata !1157, metadata !712) #10, !dbg !1163
  %300 = load i8, i8* %299, align 1, !dbg !1164, !tbaa !1141
  %301 = add i8 %300, 1, !dbg !1164
  store i8 %301, i8* %299, align 1, !dbg !1164, !tbaa !1141
  %302 = icmp slt i8 %300, 57, !dbg !1167
  br i1 %302, label %317, label %303, !dbg !1168

; <label>:303:                                    ; preds = %298
  %304 = getelementptr inbounds i8, i8* %299, i64 -1, !dbg !1169
  call void @llvm.dbg.value(metadata i8* %304, i64 0, metadata !1157, metadata !712) #10, !dbg !1163
  store i8 48, i8* %299, align 1, !dbg !1170, !tbaa !1141
  %305 = icmp ult i8* %304, %297, !dbg !1171
  br i1 %305, label %306, label %298, !dbg !1172, !llvm.loop !1160

; <label>:306:                                    ; preds = %303
  %307 = icmp ugt i8* %297, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1173
  br i1 %307, label %308, label %310, !dbg !1175

; <label>:308:                                    ; preds = %306
  %309 = getelementptr inbounds i8, i8* %297, i64 -1, !dbg !1176
  store i8* %309, i8** @line_num_start, align 8, !dbg !1176, !tbaa !719
  store i8 49, i8* %309, align 1, !dbg !1177, !tbaa !1141
  br label %311, !dbg !1178

; <label>:310:                                    ; preds = %306
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1179, !tbaa !1141
  br label %311

; <label>:311:                                    ; preds = %310, %308
  %312 = phi i8* [ %297, %310 ], [ %309, %308 ], !dbg !1180
  %313 = load i8*, i8** @line_num_print, align 8, !dbg !1182, !tbaa !719
  %314 = icmp ult i8* %312, %313, !dbg !1183
  br i1 %314, label %315, label %319, !dbg !1184

; <label>:315:                                    ; preds = %311
  %316 = getelementptr inbounds i8, i8* %313, i64 -1, !dbg !1185
  store i8* %316, i8** @line_num_print, align 8, !dbg !1185, !tbaa !719
  br label %319, !dbg !1186

; <label>:317:                                    ; preds = %298
  %318 = load i8*, i8** @line_num_print, align 8, !dbg !1187, !tbaa !719
  br label %319, !dbg !1188

; <label>:319:                                    ; preds = %317, %315, %311
  %320 = phi i8* [ %318, %317 ], [ %313, %311 ], [ %316, %315 ], !dbg !1187
  %321 = inttoptr i64 %227 to i8*, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %321, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  call void @llvm.dbg.value(metadata i8* %321, i64 0, metadata !1189, metadata !712) #10, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %320, i64 0, metadata !1197, metadata !712) #10, !dbg !1198
  %322 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %321, i1 false, i1 true) #10, !dbg !1200
  %323 = call i8* @__stpcpy_chk(i8* nonnull %321, i8* nonnull %320, i64 %322) #10, !dbg !1201
  call void @llvm.dbg.value(metadata i8* %323, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %324 = ptrtoint i8* %323 to i64, !dbg !1202
  br label %325, !dbg !1203

; <label>:325:                                    ; preds = %319, %295, %288
  %326 = phi i64 [ %227, %295 ], [ %324, %319 ], [ %227, %288 ]
  %327 = phi i32 [ %294, %295 ], [ %294, %319 ], [ %289, %288 ]
  call void @llvm.dbg.value(metadata i32 %327, i64 0, metadata !1001, metadata !712) #10, !dbg !1025
  br i1 %83, label %332, label %328, !dbg !1204

; <label>:328:                                    ; preds = %325
  %329 = inttoptr i64 %326 to i8*, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %329, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %330 = getelementptr inbounds i8, i8* %329, i64 1, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %330, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %331 = ptrtoint i8* %330 to i64, !dbg !1205
  store i8 36, i8* %329, align 1, !dbg !1207, !tbaa !1141
  br label %332, !dbg !1208

; <label>:332:                                    ; preds = %325, %328
  %333 = phi i64 [ %331, %328 ], [ %326, %325 ]
  %334 = inttoptr i64 %333 to i8*, !dbg !1209
  call void @llvm.dbg.value(metadata i8* %334, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %335 = getelementptr inbounds i8, i8* %334, i64 1, !dbg !1209
  call void @llvm.dbg.value(metadata i8* %335, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %336 = ptrtoint i8* %335 to i64, !dbg !1209
  store i8 10, i8* %334, align 1, !dbg !1210, !tbaa !1141
  br label %337

; <label>:337:                                    ; preds = %332, %291, %286
  %338 = phi i64 [ %260, %286 ], [ %336, %332 ], [ %227, %291 ]
  %339 = phi i8* [ %190, %286 ], [ %203, %332 ], [ %203, %291 ]
  %340 = phi i8* [ %287, %286 ], [ %204, %332 ], [ %204, %291 ]
  %341 = phi i32 [ %205, %286 ], [ %327, %332 ], [ 2, %291 ]
  %342 = phi i8 [ %259, %286 ], [ %206, %332 ], [ %206, %291 ]
  %343 = getelementptr inbounds i8, i8* %339, i64 1
  %344 = load i8, i8* %339, align 1, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %342, i64 0, metadata !1002, metadata !712) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i32 %341, i64 0, metadata !1001, metadata !712) #10, !dbg !1025
  call void @llvm.dbg.value(metadata i8 %344, i64 0, metadata !996, metadata !712) #10, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %340, i64 0, metadata !998, metadata !712) #10, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %343, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  %345 = icmp eq i8 %344, 10, !dbg !1212
  br i1 %345, label %346, label %350, !dbg !1213

; <label>:346:                                    ; preds = %423, %445, %337
  %347 = phi i64 [ %338, %337 ], [ %436, %445 ], [ %387, %423 ]
  %348 = phi i8* [ %343, %337 ], [ %437, %445 ], [ %388, %423 ]
  %349 = phi i32 [ %341, %337 ], [ -1, %445 ], [ -1, %423 ]
  br label %201, !dbg !1026, !llvm.loop !1033

; <label>:350:                                    ; preds = %337
  %351 = icmp slt i32 %341, 0, !dbg !1214
  %352 = or i1 %69, %351, !dbg !1216
  br i1 %352, label %382, label %353, !dbg !1216

; <label>:353:                                    ; preds = %350
  %354 = load i8*, i8** @line_num_start, align 8
  br label %355, !dbg !1217, !llvm.loop !1160

; <label>:355:                                    ; preds = %360, %353
  %356 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %353 ], [ %361, %360 ]
  call void @llvm.dbg.value(metadata i8* %356, i64 0, metadata !1157, metadata !712) #10, !dbg !1220
  %357 = load i8, i8* %356, align 1, !dbg !1221, !tbaa !1141
  %358 = add i8 %357, 1, !dbg !1221
  store i8 %358, i8* %356, align 1, !dbg !1221, !tbaa !1141
  %359 = icmp slt i8 %357, 57, !dbg !1222
  br i1 %359, label %374, label %360, !dbg !1223

; <label>:360:                                    ; preds = %355
  %361 = getelementptr inbounds i8, i8* %356, i64 -1, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %361, i64 0, metadata !1157, metadata !712) #10, !dbg !1220
  store i8 48, i8* %356, align 1, !dbg !1225, !tbaa !1141
  %362 = icmp ult i8* %361, %354, !dbg !1226
  br i1 %362, label %363, label %355, !dbg !1227, !llvm.loop !1160

; <label>:363:                                    ; preds = %360
  %364 = icmp ugt i8* %354, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1228
  br i1 %364, label %365, label %367, !dbg !1229

; <label>:365:                                    ; preds = %363
  %366 = getelementptr inbounds i8, i8* %354, i64 -1, !dbg !1230
  store i8* %366, i8** @line_num_start, align 8, !dbg !1230, !tbaa !719
  store i8 49, i8* %366, align 1, !dbg !1231, !tbaa !1141
  br label %368, !dbg !1232

; <label>:367:                                    ; preds = %363
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1233, !tbaa !1141
  br label %368

; <label>:368:                                    ; preds = %367, %365
  %369 = phi i8* [ %354, %367 ], [ %366, %365 ], !dbg !1234
  %370 = load i8*, i8** @line_num_print, align 8, !dbg !1235, !tbaa !719
  %371 = icmp ult i8* %369, %370, !dbg !1236
  br i1 %371, label %372, label %376, !dbg !1237

; <label>:372:                                    ; preds = %368
  %373 = getelementptr inbounds i8, i8* %370, i64 -1, !dbg !1238
  store i8* %373, i8** @line_num_print, align 8, !dbg !1238, !tbaa !719
  br label %376, !dbg !1239

; <label>:374:                                    ; preds = %355
  %375 = load i8*, i8** @line_num_print, align 8, !dbg !1240, !tbaa !719
  br label %376, !dbg !1241

; <label>:376:                                    ; preds = %374, %372, %368
  %377 = phi i8* [ %375, %374 ], [ %370, %368 ], [ %373, %372 ], !dbg !1240
  %378 = inttoptr i64 %338 to i8*, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %378, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  call void @llvm.dbg.value(metadata i8* %378, i64 0, metadata !1189, metadata !712) #10, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %377, i64 0, metadata !1197, metadata !712) #10, !dbg !1242
  %379 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %378, i1 false, i1 true) #10, !dbg !1244
  %380 = call i8* @__stpcpy_chk(i8* nonnull %378, i8* nonnull %377, i64 %379) #10, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %380, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %381 = ptrtoint i8* %380 to i64, !dbg !1246
  br label %382, !dbg !1247

; <label>:382:                                    ; preds = %376, %350
  %383 = phi i64 [ %338, %350 ], [ %381, %376 ]
  br i1 %80, label %385, label %384, !dbg !1248

; <label>:384:                                    ; preds = %382
  br label %386, !dbg !1249

; <label>:385:                                    ; preds = %382
  br label %435, !dbg !1254

; <label>:386:                                    ; preds = %384, %430
  %387 = phi i64 [ %432, %430 ], [ %383, %384 ]
  %388 = phi i8* [ %433, %430 ], [ %343, %384 ]
  %389 = phi i8 [ %434, %430 ], [ %344, %384 ]
  call void @llvm.dbg.value(metadata i8 %389, i64 0, metadata !996, metadata !712) #10, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %388, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  %390 = icmp ugt i8 %389, 31, !dbg !1249
  br i1 %390, label %391, label %417, !dbg !1258

; <label>:391:                                    ; preds = %386
  %392 = icmp ult i8 %389, 127, !dbg !1259
  br i1 %392, label %393, label %396, !dbg !1262

; <label>:393:                                    ; preds = %391
  %394 = inttoptr i64 %387 to i8*, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %394, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %395 = getelementptr inbounds i8, i8* %394, i64 1, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %395, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 %389, i8* %394, align 1, !dbg !1264, !tbaa !1141
  br label %430, !dbg !1265

; <label>:396:                                    ; preds = %391
  %397 = icmp eq i8 %389, 127, !dbg !1266
  %398 = inttoptr i64 %387 to i8*
  call void @llvm.dbg.value(metadata i8* %398, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %399 = getelementptr inbounds i8, i8* %398, i64 1
  call void @llvm.dbg.value(metadata i8* %399, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  br i1 %397, label %400, label %402, !dbg !1268

; <label>:400:                                    ; preds = %396
  store i8 94, i8* %398, align 1, !dbg !1269, !tbaa !1141
  call void @llvm.dbg.value(metadata i8* %399, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %401 = getelementptr inbounds i8, i8* %398, i64 2, !dbg !1271
  call void @llvm.dbg.value(metadata i8* %401, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 63, i8* %399, align 1, !dbg !1272, !tbaa !1141
  br label %430, !dbg !1273

; <label>:402:                                    ; preds = %396
  store i8 77, i8* %398, align 1, !dbg !1274, !tbaa !1141
  call void @llvm.dbg.value(metadata i8* %399, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %403 = getelementptr inbounds i8, i8* %398, i64 2, !dbg !1276
  call void @llvm.dbg.value(metadata i8* %403, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 45, i8* %399, align 1, !dbg !1277, !tbaa !1141
  %404 = icmp ugt i8 %389, -97, !dbg !1278
  br i1 %404, label %405, label %413, !dbg !1280

; <label>:405:                                    ; preds = %402
  %406 = icmp eq i8 %389, -1, !dbg !1281
  br i1 %406, label %410, label %407, !dbg !1284

; <label>:407:                                    ; preds = %405
  %408 = xor i8 %389, -128, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %403, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %409 = getelementptr inbounds i8, i8* %398, i64 3, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %409, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 %408, i8* %403, align 1, !dbg !1287, !tbaa !1141
  br label %430, !dbg !1288

; <label>:410:                                    ; preds = %405
  call void @llvm.dbg.value(metadata i8* %403, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %411 = getelementptr inbounds i8, i8* %398, i64 3, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %411, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 94, i8* %403, align 1, !dbg !1291, !tbaa !1141
  call void @llvm.dbg.value(metadata i8* %411, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %412 = getelementptr inbounds i8, i8* %398, i64 4, !dbg !1292
  call void @llvm.dbg.value(metadata i8* %412, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 63, i8* %411, align 1, !dbg !1293, !tbaa !1141
  br label %430

; <label>:413:                                    ; preds = %402
  call void @llvm.dbg.value(metadata i8* %403, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %414 = getelementptr inbounds i8, i8* %398, i64 3, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %414, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 94, i8* %403, align 1, !dbg !1296, !tbaa !1141
  %415 = add i8 %389, -64, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %414, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %416 = getelementptr inbounds i8, i8* %398, i64 4, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %416, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 %415, i8* %414, align 1, !dbg !1299, !tbaa !1141
  br label %430

; <label>:417:                                    ; preds = %386
  %418 = icmp ne i8 %389, 9, !dbg !1300
  %419 = or i1 %81, %418, !dbg !1302
  br i1 %419, label %423, label %420, !dbg !1302

; <label>:420:                                    ; preds = %417
  %421 = inttoptr i64 %387 to i8*, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %421, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %422 = getelementptr inbounds i8, i8* %421, i64 1, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %422, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 9, i8* %421, align 1, !dbg !1304, !tbaa !1141
  br label %430, !dbg !1305

; <label>:423:                                    ; preds = %417
  %424 = icmp eq i8 %389, 10, !dbg !1306
  br i1 %424, label %346, label %425, !dbg !1308, !llvm.loop !1033

; <label>:425:                                    ; preds = %423
  %426 = inttoptr i64 %387 to i8*, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %426, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %427 = getelementptr inbounds i8, i8* %426, i64 1, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %427, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 94, i8* %426, align 1, !dbg !1311, !tbaa !1141
  %428 = add i8 %389, 64, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %427, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %429 = getelementptr inbounds i8, i8* %426, i64 2, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %429, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 %428, i8* %427, align 1, !dbg !1314, !tbaa !1141
  br label %430

; <label>:430:                                    ; preds = %425, %420, %413, %410, %407, %400, %393
  %431 = phi i8* [ %395, %393 ], [ %401, %400 ], [ %412, %410 ], [ %409, %407 ], [ %416, %413 ], [ %429, %425 ], [ %422, %420 ]
  %432 = ptrtoint i8* %431 to i64
  %433 = getelementptr inbounds i8, i8* %388, i64 1, !dbg !1315
  call void @llvm.dbg.value(metadata i8* %433, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  %434 = load i8, i8* %388, align 1, !dbg !1316, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %434, i64 0, metadata !996, metadata !712) #10, !dbg !1211
  br label %386, !dbg !1317, !llvm.loop !1318

; <label>:435:                                    ; preds = %385, %450
  %436 = phi i64 [ %452, %450 ], [ %383, %385 ]
  %437 = phi i8* [ %453, %450 ], [ %343, %385 ]
  %438 = phi i8 [ %454, %450 ], [ %344, %385 ]
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !996, metadata !712) #10, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %437, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  %439 = icmp ne i8 %438, 9, !dbg !1254
  %440 = or i1 %439, %87, !dbg !1321
  br i1 %440, label %445, label %441, !dbg !1321

; <label>:441:                                    ; preds = %435
  %442 = inttoptr i64 %436 to i8*, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %442, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %443 = getelementptr inbounds i8, i8* %442, i64 1, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %443, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 94, i8* %442, align 1, !dbg !1324, !tbaa !1141
  call void @llvm.dbg.value(metadata i8* %443, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %444 = getelementptr inbounds i8, i8* %442, i64 2, !dbg !1325
  call void @llvm.dbg.value(metadata i8* %444, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 73, i8* %443, align 1, !dbg !1326, !tbaa !1141
  br label %450, !dbg !1327

; <label>:445:                                    ; preds = %435
  %446 = icmp eq i8 %438, 10, !dbg !1328
  br i1 %446, label %346, label %447, !dbg !1330, !llvm.loop !1033

; <label>:447:                                    ; preds = %445
  %448 = inttoptr i64 %436 to i8*, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %448, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  %449 = getelementptr inbounds i8, i8* %448, i64 1, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %449, i64 0, metadata !999, metadata !712) #10, !dbg !1030
  store i8 %438, i8* %448, align 1, !dbg !1332, !tbaa !1141
  br label %450

; <label>:450:                                    ; preds = %447, %441
  %451 = phi i8* [ %449, %447 ], [ %444, %441 ]
  %452 = ptrtoint i8* %451 to i64
  %453 = getelementptr inbounds i8, i8* %437, i64 1, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %453, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  %454 = load i8, i8* %437, align 1, !dbg !1334, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %454, i64 0, metadata !996, metadata !712) #10, !dbg !1211
  br label %435, !dbg !1335, !llvm.loop !1336

; <label>:455:                                    ; preds = %239, %263, %270, %276, %279
  %456 = phi i8 [ 0, %239 ], [ 0, %270 ], [ 0, %263 ], [ 1, %279 ], [ 1, %276 ]
  store i32 %205, i32* @newlines2, align 4, !tbaa !817
  call void @llvm.dbg.value(metadata i8 %244, i64 0, metadata !1002, metadata !712) #10, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !997, metadata !712) #10, !dbg !1029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #10, !dbg !1142
  call void @free(i8* %184) #10, !dbg !1339
  br label %457

; <label>:457:                                    ; preds = %164, %167, %455
  %458 = phi i8 [ %456, %455 ], [ 0, %167 ], [ 1, %164 ]
  %459 = phi i8* [ %181, %455 ], [ %157, %167 ], [ %157, %164 ]
  %460 = and i8 %92, 1
  %461 = and i8 %460, %458
  call void @llvm.dbg.value(metadata i8* %459, i64 0, metadata !90, metadata !712), !dbg !903
  call void @llvm.dbg.value(metadata i8 %461, i64 0, metadata !92, metadata !712), !dbg !756
  call void @free(i8* %459) #10, !dbg !1340
  br label %462, !dbg !1340

; <label>:462:                                    ; preds = %457, %148, %120
  %463 = phi i8 [ 0, %120 ], [ 0, %148 ], [ %461, %457 ]
  call void @llvm.dbg.value(metadata i8 %463, i64 0, metadata !92, metadata !712), !dbg !756
  %464 = load i8*, i8** @infile, align 8, !dbg !1341, !tbaa !719
  %465 = call i32 @strcmp(i8* %464, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !1341
  %466 = icmp eq i32 %465, 0, !dbg !1341
  br i1 %466, label %476, label %467, !dbg !1343

; <label>:467:                                    ; preds = %462
  %468 = load i32, i32* @input_desc, align 4, !dbg !1344, !tbaa !817
  %469 = call i32 @close(i32 %468) #10, !dbg !1345
  %470 = icmp slt i32 %469, 0, !dbg !1346
  br i1 %470, label %471, label %476, !dbg !1347

; <label>:471:                                    ; preds = %467
  %472 = tail call i32* @__errno_location() #16, !dbg !1348
  %473 = load i32, i32* %472, align 4, !dbg !1348, !tbaa !817
  %474 = load i8*, i8** @infile, align 8, !dbg !1350, !tbaa !719
  %475 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %474) #10, !dbg !1350
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %473, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %475) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !92, metadata !712), !dbg !756
  br label %476, !dbg !1352

; <label>:476:                                    ; preds = %462, %467, %471, %110
  %477 = phi i8 [ %463, %462 ], [ 0, %471 ], [ %463, %467 ], [ 0, %110 ]
  %478 = phi i8 [ %117, %462 ], [ %117, %471 ], [ %117, %467 ], [ %93, %110 ]
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !105, metadata !712), !dbg !757
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !92, metadata !712), !dbg !756
  %479 = add nsw i64 %91, 1, !dbg !1353
  %480 = icmp slt i64 %479, %89, !dbg !1354
  br i1 %480, label %90, label %481, !dbg !1355, !llvm.loop !839

; <label>:481:                                    ; preds = %476
  %482 = and i8 %478, 1, !dbg !1356
  %483 = icmp eq i8 %482, 0, !dbg !1356
  br i1 %483, label %491, label %484, !dbg !1358

; <label>:484:                                    ; preds = %481
  %485 = call i32 @close(i32 0) #10, !dbg !1359
  %486 = icmp slt i32 %485, 0, !dbg !1360
  br i1 %486, label %487, label %491, !dbg !1361

; <label>:487:                                    ; preds = %484
  %488 = tail call i32* @__errno_location() #16, !dbg !1362
  %489 = load i32, i32* %488, align 4, !dbg !1362, !tbaa !817
  %490 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !1362
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %489, i8* %490) #10, !dbg !1362
  unreachable, !dbg !1362

; <label>:491:                                    ; preds = %481, %484
  %492 = and i8 %477, 1, !dbg !1363
  %493 = xor i8 %492, 1, !dbg !1363
  %494 = zext i8 %493 to i32, !dbg !1363
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #10, !dbg !1364
  ret i32 %494, !dbg !1364
}

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1365 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1367, metadata !712), !dbg !1368
  store i8* %0, i8** @file_name, align 8, !dbg !1369, !tbaa !719
  ret void, !dbg !1370
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1371 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1375, metadata !712), !dbg !1376
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1377, !tbaa !1378
  ret void, !dbg !1380
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1381 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1386, !tbaa !719
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1387
  %3 = icmp eq i32 %2, 0, !dbg !1388
  br i1 %3, label %21, label %4, !dbg !1389

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1390, !tbaa !1378, !range !1391
  %6 = icmp eq i8 %5, 0, !dbg !1390
  %7 = tail call i32* @__errno_location() #16, !dbg !1392
  br i1 %6, label %11, label %8, !dbg !1394

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1395, !tbaa !817
  %10 = icmp eq i32 %9, 32, !dbg !1396
  br i1 %10, label %21, label %11, !dbg !1397

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !1398
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1383, metadata !712), !dbg !1399
  %13 = load i8*, i8** @file_name, align 8, !dbg !1400, !tbaa !719
  %14 = icmp eq i8* %13, null, !dbg !1400
  %15 = load i32, i32* %7, align 4, !tbaa !817
  br i1 %14, label %18, label %16, !dbg !1401

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1402
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1403
  br label %19, !dbg !1403

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #10, !dbg !1404
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1405, !tbaa !817
  tail call void @_exit(i32 %20) #15, !dbg !1406
  unreachable, !dbg !1406

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1407, !tbaa !719
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1409
  %24 = icmp eq i32 %23, 0, !dbg !1410
  br i1 %24, label %27, label %25, !dbg !1411

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1412, !tbaa !817
  tail call void @_exit(i32 %26) #15, !dbg !1413
  unreachable, !dbg !1413

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1414
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1415 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1423, metadata !712), !dbg !1429
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1424, metadata !712), !dbg !1430
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1425, metadata !712), !dbg !1431
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1426, metadata !712), !dbg !1432
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1433
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1427, metadata !712), !dbg !1433
  ret void, !dbg !1434
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1435 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1488, metadata !712), !dbg !1490
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1489, metadata !712), !dbg !1491
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1492
  br i1 %3, label %7, label %4, !dbg !1494

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1495
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1423, metadata !712) #10, !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1424, metadata !712) #10, !dbg !1498
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1425, metadata !712) #10, !dbg !1499
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1426, metadata !712) #10, !dbg !1500
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1501
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1427, metadata !712) #10, !dbg !1501
  br label %7, !dbg !1502

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1503
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @full_write(i32, i8*, i64) local_unnamed_addr #6 !dbg !1504 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1507, metadata !712), !dbg !1514
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1508, metadata !712), !dbg !1515
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1509, metadata !712), !dbg !1516
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1510, metadata !712), !dbg !1517
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1511, metadata !712), !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1509, metadata !712), !dbg !1516
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1511, metadata !712), !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1510, metadata !712), !dbg !1517
  %4 = icmp eq i64 %2, 0, !dbg !1519
  br i1 %4, label %18, label %5, !dbg !1520

; <label>:5:                                      ; preds = %3
  br label %6, !dbg !1521

; <label>:6:                                      ; preds = %5, %13
  %7 = phi i64 [ %16, %13 ], [ %2, %5 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %5 ]
  %9 = phi i64 [ %14, %13 ], [ 0, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1510, metadata !712), !dbg !1517
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1511, metadata !712), !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1509, metadata !712), !dbg !1516
  %10 = tail call i64 @safe_write(i32 %0, i8* %8, i64 %7) #10, !dbg !1521
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1512, metadata !712), !dbg !1522
  switch i64 %10, label %13 [
    i64 -1, label %18
    i64 0, label %11
  ], !dbg !1523

; <label>:11:                                     ; preds = %6
  %12 = tail call i32* @__errno_location() #16, !dbg !1524
  store i32 28, i32* %12, align 4, !dbg !1527, !tbaa !817
  br label %18, !dbg !1528

; <label>:13:                                     ; preds = %6
  %14 = add i64 %10, %9, !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1510, metadata !712), !dbg !1517
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !1530
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1511, metadata !712), !dbg !1518
  %16 = sub i64 %7, %10, !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1509, metadata !712), !dbg !1516
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1509, metadata !712), !dbg !1516
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1511, metadata !712), !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1510, metadata !712), !dbg !1517
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1509, metadata !712), !dbg !1516
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1511, metadata !712), !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1510, metadata !712), !dbg !1517
  %17 = icmp eq i64 %16, 0, !dbg !1519
  br i1 %17, label %18, label %6, !dbg !1520, !llvm.loop !1532

; <label>:18:                                     ; preds = %13, %6, %3, %11
  %19 = phi i64 [ %9, %11 ], [ 0, %3 ], [ %14, %13 ], [ %9, %6 ]
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1510, metadata !712), !dbg !1517
  ret i64 %19, !dbg !1534
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1535 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1537, metadata !712), !dbg !1540
  %2 = icmp eq i8* %0, null, !dbg !1541
  br i1 %2, label %3, label %6, !dbg !1543

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1544, !tbaa !719
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1546
  tail call void @abort() #15, !dbg !1547
  unreachable, !dbg !1547

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1548
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1538, metadata !712), !dbg !1549
  %8 = icmp eq i8* %7, null, !dbg !1550
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1551
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1552
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1539, metadata !712), !dbg !1553
  %11 = ptrtoint i8* %10 to i64, !dbg !1554
  %12 = ptrtoint i8* %0 to i64, !dbg !1554
  %13 = sub i64 %11, %12, !dbg !1554
  %14 = icmp sgt i64 %13, 6, !dbg !1556
  br i1 %14, label %15, label %24, !dbg !1557

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1558
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #14, !dbg !1559
  %18 = icmp eq i32 %17, 0, !dbg !1560
  br i1 %18, label %19, label %24, !dbg !1561

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1537, metadata !712), !dbg !1540
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #14, !dbg !1562
  %21 = icmp eq i32 %20, 0, !dbg !1565
  br i1 %21, label %22, label %24, !dbg !1566

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1567
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1537, metadata !712), !dbg !1540
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1569, !tbaa !719
  br label %24, !dbg !1570

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1537, metadata !712), !dbg !1540
  store i8* %25, i8** @program_name, align 8, !dbg !1571, !tbaa !719
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1572, !tbaa !719
  ret void, !dbg !1573
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1574 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1579, metadata !712), !dbg !1582
  %2 = tail call i32* @__errno_location() #16, !dbg !1583
  %3 = load i32, i32* %2, align 4, !dbg !1583, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1580, metadata !712), !dbg !1584
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1585
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1585
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1585
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1586
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1586
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1581, metadata !712), !dbg !1587
  store i32 %3, i32* %2, align 4, !dbg !1588, !tbaa !817
  ret %struct.quoting_options* %8, !dbg !1589
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1590 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1596, metadata !712), !dbg !1597
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1598
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1598
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1599
  %5 = load i32, i32* %4, align 8, !dbg !1599, !tbaa !1600
  ret i32 %5, !dbg !1602
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1603 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1607, metadata !712), !dbg !1609
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1608, metadata !712), !dbg !1610
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1611
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1611
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1612
  store i32 %1, i32* %5, align 8, !dbg !1613, !tbaa !1600
  ret void, !dbg !1614
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1615 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1619, metadata !712), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1620, metadata !712), !dbg !1628
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1621, metadata !712), !dbg !1629
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1622, metadata !712), !dbg !1630
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1631
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1631
  %6 = lshr i8 %1, 5, !dbg !1632
  %7 = zext i8 %6 to i64, !dbg !1632
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1633
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1623, metadata !712), !dbg !1634
  %9 = and i8 %1, 31, !dbg !1635
  %10 = zext i8 %9 to i32, !dbg !1636
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1625, metadata !712), !dbg !1637
  %11 = load i32, i32* %8, align 4, !dbg !1638, !tbaa !817
  %12 = lshr i32 %11, %10, !dbg !1639
  %13 = and i32 %12, 1, !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1626, metadata !712), !dbg !1641
  %14 = and i32 %2, 1, !dbg !1642
  %15 = xor i32 %13, %14, !dbg !1643
  %16 = shl i32 %15, %10, !dbg !1644
  %17 = xor i32 %16, %11, !dbg !1645
  store i32 %17, i32* %8, align 4, !dbg !1645, !tbaa !817
  ret i32 %13, !dbg !1646
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1647 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1651, metadata !712), !dbg !1654
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1652, metadata !712), !dbg !1655
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1651, metadata !712), !dbg !1654
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1651, metadata !712), !dbg !1654
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1659
  %6 = load i32, i32* %5, align 4, !dbg !1659, !tbaa !1660
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1653, metadata !712), !dbg !1661
  store i32 %1, i32* %5, align 4, !dbg !1662, !tbaa !1660
  ret i32 %6, !dbg !1663
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1664 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1668, metadata !712), !dbg !1671
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1669, metadata !712), !dbg !1672
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1670, metadata !712), !dbg !1673
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1674
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1668, metadata !712), !dbg !1671
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1668, metadata !712), !dbg !1671
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1677
  store i32 10, i32* %6, align 8, !dbg !1678, !tbaa !1600
  %7 = icmp ne i8* %1, null, !dbg !1679
  %8 = icmp ne i8* %2, null, !dbg !1681
  %9 = and i1 %7, %8, !dbg !1682
  br i1 %9, label %11, label %10, !dbg !1682

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1683
  unreachable, !dbg !1683

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1684
  store i8* %1, i8** %12, align 8, !dbg !1685, !tbaa !1686
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1687
  store i8* %2, i8** %13, align 8, !dbg !1688, !tbaa !1689
  ret void, !dbg !1690
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1691 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1695, metadata !712), !dbg !1703
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1696, metadata !712), !dbg !1704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1697, metadata !712), !dbg !1705
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1698, metadata !712), !dbg !1706
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1699, metadata !712), !dbg !1707
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1708
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1700, metadata !712), !dbg !1709
  %8 = tail call i32* @__errno_location() #16, !dbg !1710
  %9 = load i32, i32* %8, align 4, !dbg !1710, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1701, metadata !712), !dbg !1711
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1712
  %11 = load i32, i32* %10, align 8, !dbg !1712, !tbaa !1600
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1713
  %13 = load i32, i32* %12, align 4, !dbg !1713, !tbaa !1660
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1714
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1715
  %16 = load i8*, i8** %15, align 8, !dbg !1715, !tbaa !1686
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1716
  %18 = load i8*, i8** %17, align 8, !dbg !1716, !tbaa !1689
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1717
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1702, metadata !712), !dbg !1718
  store i32 %9, i32* %8, align 4, !dbg !1719, !tbaa !817
  ret i64 %19, !dbg !1720
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1721 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1727, metadata !712), !dbg !1791
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1728, metadata !712), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1729, metadata !712), !dbg !1793
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1730, metadata !712), !dbg !1794
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1731, metadata !712), !dbg !1795
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1732, metadata !712), !dbg !1796
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1733, metadata !712), !dbg !1797
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1734, metadata !712), !dbg !1798
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1735, metadata !712), !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1737, metadata !712), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1738, metadata !712), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1739, metadata !712), !dbg !1802
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1740, metadata !712), !dbg !1803
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1741, metadata !712), !dbg !1804
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1805
  %14 = icmp eq i64 %13, 1, !dbg !1806
  %15 = lshr i32 %5, 1, !dbg !1807
  %16 = trunc i32 %15 to i8, !dbg !1807
  %17 = and i8 %16, 1, !dbg !1807
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1743, metadata !712), !dbg !1807
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !712), !dbg !1808
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1745, metadata !712), !dbg !1809
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1746, metadata !712), !dbg !1810
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1811

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1746, metadata !712), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1745, metadata !712), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1743, metadata !712), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1730, metadata !712), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1741, metadata !712), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1740, metadata !712), !dbg !1803
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1739, metadata !712), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1738, metadata !712), !dbg !1801
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1735, metadata !712), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1734, metadata !712), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1731, metadata !712), !dbg !1795
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
  ], !dbg !1812

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1731, metadata !712), !dbg !1795
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1743, metadata !712), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1743, metadata !712), !dbg !1807
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1731, metadata !712), !dbg !1795
  br label %94, !dbg !1813

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1743, metadata !712), !dbg !1807
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1731, metadata !712), !dbg !1795
  %43 = and i8 %36, 1, !dbg !1815
  %44 = icmp eq i8 %43, 0, !dbg !1815
  br i1 %44, label %45, label %94, !dbg !1813

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1817
  br i1 %46, label %94, label %47, !dbg !1820

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1817, !tbaa !1141
  br label %94, !dbg !1817

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %28), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1734, metadata !712), !dbg !1798
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %28), !dbg !1825
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1735, metadata !712), !dbg !1799
  br label %51, !dbg !1826

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1735, metadata !712), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1734, metadata !712), !dbg !1798
  %54 = and i8 %36, 1, !dbg !1827
  %55 = icmp eq i8 %54, 0, !dbg !1827
  br i1 %55, label %56, label %72, !dbg !1829

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1739, metadata !712), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1739, metadata !712), !dbg !1802
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1737, metadata !712), !dbg !1800
  %57 = load i8, i8* %52, align 1, !dbg !1830, !tbaa !1141
  %58 = icmp eq i8 %57, 0, !dbg !1833
  br i1 %58, label %72, label %59, !dbg !1833

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1834

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1739, metadata !712), !dbg !1802
  %64 = icmp ult i64 %63, %40, !dbg !1834
  br i1 %64, label %65, label %67, !dbg !1837

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1834
  store i8 %61, i8* %66, align 1, !dbg !1834, !tbaa !1141
  br label %67, !dbg !1834

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1737, metadata !712), !dbg !1800
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1838
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1739, metadata !712), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1739, metadata !712), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1737, metadata !712), !dbg !1800
  %70 = load i8, i8* %69, align 1, !dbg !1830, !tbaa !1141
  %71 = icmp eq i8 %70, 0, !dbg !1833
  br i1 %71, label %72, label %60, !dbg !1833, !llvm.loop !1839

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1741, metadata !712), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1739, metadata !712), !dbg !1802
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1740, metadata !712), !dbg !1803
  br label %94, !dbg !1842

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1741, metadata !712), !dbg !1804
  br label %76, !dbg !1843

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1741, metadata !712), !dbg !1804
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1743, metadata !712), !dbg !1807
  br label %78, !dbg !1844

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1743, metadata !712), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1741, metadata !712), !dbg !1804
  %81 = and i8 %80, 1, !dbg !1845
  %82 = icmp eq i8 %81, 0, !dbg !1845
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1741, metadata !712), !dbg !1804
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1847
  br label %84, !dbg !1847

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1743, metadata !712), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1741, metadata !712), !dbg !1804
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1731, metadata !712), !dbg !1795
  %87 = and i8 %86, 1, !dbg !1848
  %88 = icmp eq i8 %87, 0, !dbg !1848
  br i1 %88, label %89, label %94, !dbg !1850

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1851
  br i1 %90, label %94, label %91, !dbg !1854

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1851, !tbaa !1141
  br label %94, !dbg !1851

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1743, metadata !712), !dbg !1807
  br label %94, !dbg !1855

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1856
  unreachable, !dbg !1856

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1743, metadata !712), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1741, metadata !712), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1740, metadata !712), !dbg !1803
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1739, metadata !712), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1735, metadata !712), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1734, metadata !712), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1731, metadata !712), !dbg !1795
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1736, metadata !712), !dbg !1857
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
  br label %122, !dbg !1858

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1746, metadata !712), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1745, metadata !712), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1730, metadata !712), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1738, metadata !712), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1736, metadata !712), !dbg !1857
  %131 = icmp eq i64 %126, -1, !dbg !1859
  br i1 %131, label %134, label %132, !dbg !1860

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1861
  br i1 %133, label %590, label %138, !dbg !1862

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1863
  %136 = load i8, i8* %135, align 1, !dbg !1863, !tbaa !1141
  %137 = icmp eq i8 %136, 0, !dbg !1864
  br i1 %137, label %590, label %138, !dbg !1862

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1752, metadata !712), !dbg !1865
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1753, metadata !712), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1754, metadata !712), !dbg !1867
  br i1 %108, label %139, label %154, !dbg !1868

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1870
  %141 = and i1 %109, %131, !dbg !1871
  br i1 %141, label %142, label %144, !dbg !1871

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1730, metadata !712), !dbg !1794
  br label %144, !dbg !1873

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1730, metadata !712), !dbg !1794
  %146 = icmp ugt i64 %140, %145, !dbg !1874
  br i1 %146, label %154, label %147, !dbg !1875

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1876
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1877
  %150 = icmp ne i32 %149, 0, !dbg !1878
  %151 = or i1 %150, %111, !dbg !1879
  %152 = xor i1 %150, true, !dbg !1879
  %153 = zext i1 %152 to i8, !dbg !1879
  br i1 %151, label %154, label %635, !dbg !1879

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1752, metadata !712), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1730, metadata !712), !dbg !1794
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1880
  %158 = load i8, i8* %157, align 1, !dbg !1880, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1747, metadata !712), !dbg !1881
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
  ], !dbg !1882

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1883

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1884

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1753, metadata !712), !dbg !1866
  %162 = and i8 %127, 1, !dbg !1888
  %163 = icmp eq i8 %162, 0, !dbg !1888
  %164 = and i1 %113, %163, !dbg !1888
  br i1 %164, label %165, label %181, !dbg !1888

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1890
  br i1 %166, label %167, label %169, !dbg !1894

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1890
  store i8 39, i8* %168, align 1, !dbg !1890, !tbaa !1141
  br label %169, !dbg !1890

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1737, metadata !712), !dbg !1800
  %171 = icmp ult i64 %170, %130, !dbg !1895
  br i1 %171, label %172, label %174, !dbg !1898

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1895
  store i8 36, i8* %173, align 1, !dbg !1895, !tbaa !1141
  br label %174, !dbg !1895

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1737, metadata !712), !dbg !1800
  %176 = icmp ult i64 %175, %130, !dbg !1899
  br i1 %176, label %177, label %179, !dbg !1902

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1899
  store i8 39, i8* %178, align 1, !dbg !1899, !tbaa !1141
  br label %179, !dbg !1899

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1744, metadata !712), !dbg !1808
  br label %181, !dbg !1903

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1737, metadata !712), !dbg !1800
  %184 = icmp ult i64 %182, %130, !dbg !1904
  br i1 %184, label %185, label %187, !dbg !1907

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1904
  store i8 92, i8* %186, align 1, !dbg !1904, !tbaa !1141
  br label %187, !dbg !1904

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1737, metadata !712), !dbg !1800
  br i1 %105, label %189, label %470, !dbg !1908

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1910
  %191 = icmp ult i64 %190, %155, !dbg !1911
  br i1 %191, label %192, label %470, !dbg !1912

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1913
  %194 = load i8, i8* %193, align 1, !dbg !1913, !tbaa !1141
  %195 = add i8 %194, -48, !dbg !1914
  %196 = icmp ult i8 %195, 10, !dbg !1914
  br i1 %196, label %197, label %470, !dbg !1914

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1915
  br i1 %198, label %199, label %201, !dbg !1919

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1915
  store i8 48, i8* %200, align 1, !dbg !1915, !tbaa !1141
  br label %201, !dbg !1915

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1737, metadata !712), !dbg !1800
  %203 = icmp ult i64 %202, %130, !dbg !1920
  br i1 %203, label %204, label %206, !dbg !1923

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1920
  store i8 48, i8* %205, align 1, !dbg !1920, !tbaa !1141
  br label %206, !dbg !1920

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1737, metadata !712), !dbg !1800
  br label %470, !dbg !1924

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1925

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1926

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1927

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1929

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1931
  %214 = icmp ult i64 %213, %155, !dbg !1932
  br i1 %214, label %215, label %470, !dbg !1933

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1934
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1935
  %218 = load i8, i8* %217, align 1, !dbg !1935, !tbaa !1141
  %219 = icmp eq i8 %218, 63, !dbg !1936
  br i1 %219, label %220, label %470, !dbg !1937

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1938
  %222 = load i8, i8* %221, align 1, !dbg !1938, !tbaa !1141
  %223 = sext i8 %222 to i32, !dbg !1938
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
  ], !dbg !1939

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1940

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1747, metadata !712), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1736, metadata !712), !dbg !1857
  %226 = icmp ult i64 %124, %130, !dbg !1942
  br i1 %226, label %227, label %229, !dbg !1945

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1942
  store i8 63, i8* %228, align 1, !dbg !1942, !tbaa !1141
  br label %229, !dbg !1942

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1737, metadata !712), !dbg !1800
  %231 = icmp ult i64 %230, %130, !dbg !1946
  br i1 %231, label %232, label %234, !dbg !1949

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1946
  store i8 34, i8* %233, align 1, !dbg !1946, !tbaa !1141
  br label %234, !dbg !1946

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1737, metadata !712), !dbg !1800
  %236 = icmp ult i64 %235, %130, !dbg !1950
  br i1 %236, label %237, label %239, !dbg !1953

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1950
  store i8 34, i8* %238, align 1, !dbg !1950, !tbaa !1141
  br label %239, !dbg !1950

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1737, metadata !712), !dbg !1800
  %241 = icmp ult i64 %240, %130, !dbg !1954
  br i1 %241, label %242, label %244, !dbg !1957

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1954
  store i8 63, i8* %243, align 1, !dbg !1954, !tbaa !1141
  br label %244, !dbg !1954

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1737, metadata !712), !dbg !1800
  br label %470, !dbg !1958

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1751, metadata !712), !dbg !1959
  br label %256, !dbg !1960

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1751, metadata !712), !dbg !1959
  br label %256, !dbg !1961

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1751, metadata !712), !dbg !1959
  br label %254, !dbg !1962

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1751, metadata !712), !dbg !1959
  br label %254, !dbg !1963

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1751, metadata !712), !dbg !1959
  br label %256, !dbg !1964

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1751, metadata !712), !dbg !1959
  br i1 %113, label %252, label %253, !dbg !1965

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1966

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1969

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1751, metadata !712), !dbg !1959
  br i1 %117, label %256, label %635, !dbg !1971

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1751, metadata !712), !dbg !1959
  br i1 %104, label %497, label %470, !dbg !1973

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1974
  br i1 %259, label %260, label %265, !dbg !1976

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1977, !tbaa !1141
  %262 = icmp ne i8 %261, 0, !dbg !1978
  %263 = icmp ne i64 %123, 0, !dbg !1979
  %264 = or i1 %263, %262, !dbg !1981
  br i1 %264, label %470, label %271, !dbg !1981

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1982
  %267 = icmp ne i64 %123, 0, !dbg !1979
  %268 = or i1 %267, %266, !dbg !1976
  br i1 %268, label %470, label %271, !dbg !1976

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1979
  br i1 %270, label %271, label %470, !dbg !1983

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1754, metadata !712), !dbg !1867
  br label %272, !dbg !1984

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1754, metadata !712), !dbg !1867
  br i1 %117, label %470, label %635, !dbg !1985

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1745, metadata !712), !dbg !1809
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1754, metadata !712), !dbg !1867
  br i1 %113, label %275, label %470, !dbg !1987

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1988

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1991
  %278 = icmp ne i64 %125, 0, !dbg !1993
  %279 = or i1 %278, %277, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1738, metadata !712), !dbg !1801
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1728, metadata !712), !dbg !1792
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1994
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1738, metadata !712), !dbg !1801
  %282 = icmp ult i64 %124, %281, !dbg !1995
  br i1 %282, label %283, label %285, !dbg !1998

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1995
  store i8 39, i8* %284, align 1, !dbg !1995, !tbaa !1141
  br label %285, !dbg !1995

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1737, metadata !712), !dbg !1800
  %287 = icmp ult i64 %286, %281, !dbg !1999
  br i1 %287, label %288, label %290, !dbg !2002

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1999
  store i8 92, i8* %289, align 1, !dbg !1999, !tbaa !1141
  br label %290, !dbg !1999

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1737, metadata !712), !dbg !1800
  %292 = icmp ult i64 %291, %281, !dbg !2003
  br i1 %292, label %293, label %295, !dbg !2006

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2003
  store i8 39, i8* %294, align 1, !dbg !2003, !tbaa !1141
  br label %295, !dbg !2003

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !712), !dbg !1808
  br label %470, !dbg !2007

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2008

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1755, metadata !712), !dbg !2009
  %299 = tail call i16** @__ctype_b_loc() #16, !dbg !2010
  %300 = load i16*, i16** %299, align 8, !dbg !2010, !tbaa !719
  %301 = zext i8 %158 to i64, !dbg !2010
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2010
  %303 = load i16, i16* %302, align 2, !dbg !2010, !tbaa !2012
  %304 = lshr i16 %303, 14, !dbg !2014
  %305 = trunc i16 %304 to i8, !dbg !2014
  %306 = and i8 %305, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1758, metadata !712), !dbg !2015
  br label %362, !dbg !2016

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2017
  store i64 0, i64* %10, align 8, !dbg !2018
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1755, metadata !712), !dbg !2009
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1758, metadata !712), !dbg !2015
  %308 = icmp eq i64 %155, -1, !dbg !2019
  br i1 %308, label %309, label %311, !dbg !2021

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1730, metadata !712), !dbg !1794
  br label %311, !dbg !2023

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1730, metadata !712), !dbg !1794
  br label %313, !dbg !2024, !llvm.loop !2025

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1758, metadata !712), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1755, metadata !712), !dbg !2009
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2027
  %316 = add i64 %314, %123, !dbg !2028
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2029
  %318 = sub i64 %312, %316, !dbg !2030
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1759, metadata !712), !dbg !2031
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1777, metadata !712), !dbg !2032
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1780, metadata !712), !dbg !2034
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2035

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1758, metadata !712), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1755, metadata !712), !dbg !2009
  %321 = icmp ugt i64 %312, %316, !dbg !2036
  br i1 %321, label %322, label %347, !dbg !2038

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2039

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1755, metadata !712), !dbg !2009
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2039
  %327 = load i8, i8* %326, align 1, !dbg !2039, !tbaa !1141
  %328 = icmp eq i8 %327, 0, !dbg !2038
  br i1 %328, label %347, label %329, !dbg !2040

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1755, metadata !712), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1755, metadata !712), !dbg !2009
  %331 = add i64 %330, %123, !dbg !2042
  %332 = icmp ult i64 %331, %312, !dbg !2036
  br i1 %332, label %323, label %347, !dbg !2038, !llvm.loop !2043

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2044
  %335 = and i1 %115, %334, !dbg !2047
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1781, metadata !712), !dbg !2048
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1781, metadata !712), !dbg !2048
  br i1 %335, label %336, label %350, !dbg !2047

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2049

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1781, metadata !712), !dbg !2048
  %339 = add i64 %338, %316, !dbg !2049
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2050
  %341 = load i8, i8* %340, align 1, !dbg !2050, !tbaa !1141
  %342 = sext i8 %341 to i32, !dbg !2050
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2051

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1781, metadata !712), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1781, metadata !712), !dbg !2048
  %345 = icmp ult i64 %344, %319, !dbg !2044
  br i1 %345, label %337, label %350, !dbg !2053, !llvm.loop !2054

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2056

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1758, metadata !712), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1755, metadata !712), !dbg !2009
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2056
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2057, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1777, metadata !712), !dbg !2032
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !2059
  %353 = icmp eq i32 %352, 0, !dbg !2059
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1758, metadata !712), !dbg !2015
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2060
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1758, metadata !712), !dbg !2015
  %355 = add i64 %319, %314, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1755, metadata !712), !dbg !2009
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1758, metadata !712), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1755, metadata !712), !dbg !2009
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2056
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1759, metadata !712), !dbg !2031
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2062
  %357 = icmp eq i32 %356, 0, !dbg !2063
  br i1 %357, label %313, label %358, !dbg !2064, !llvm.loop !2025

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2065
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1758, metadata !712), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1755, metadata !712), !dbg !2009
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2056
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2065
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1758, metadata !712), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1755, metadata !712), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1730, metadata !712), !dbg !1794
  %366 = and i8 %365, 1, !dbg !2066
  %367 = icmp ne i8 %366, 0, !dbg !2066
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1754, metadata !712), !dbg !1867
  %368 = icmp ult i64 %364, 2, !dbg !2067
  %369 = or i1 %367, %112, !dbg !2068
  %370 = and i1 %368, %369, !dbg !2069
  br i1 %370, label %470, label %371, !dbg !2069

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1788, metadata !712), !dbg !2071
  br label %373, !dbg !2072

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1753, metadata !712), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1752, metadata !712), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1747, metadata !712), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1736, metadata !712), !dbg !1857
  br i1 %369, label %426, label %380, !dbg !2073

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2078

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1753, metadata !712), !dbg !1866
  %382 = and i8 %376, 1, !dbg !2081
  %383 = icmp eq i8 %382, 0, !dbg !2081
  %384 = and i1 %113, %383, !dbg !2081
  br i1 %384, label %385, label %401, !dbg !2081

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2083
  br i1 %386, label %387, label %389, !dbg !2087

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2083
  store i8 39, i8* %388, align 1, !dbg !2083, !tbaa !1141
  br label %389, !dbg !2083

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1737, metadata !712), !dbg !1800
  %391 = icmp ult i64 %390, %130, !dbg !2088
  br i1 %391, label %392, label %394, !dbg !2091

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2088
  store i8 36, i8* %393, align 1, !dbg !2088, !tbaa !1141
  br label %394, !dbg !2088

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1737, metadata !712), !dbg !1800
  %396 = icmp ult i64 %395, %130, !dbg !2092
  br i1 %396, label %397, label %399, !dbg !2095

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2092
  store i8 39, i8* %398, align 1, !dbg !2092, !tbaa !1141
  br label %399, !dbg !2092

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1744, metadata !712), !dbg !1808
  br label %401, !dbg !2096

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1737, metadata !712), !dbg !1800
  %404 = icmp ult i64 %402, %130, !dbg !2097
  br i1 %404, label %405, label %407, !dbg !2100

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2097
  store i8 92, i8* %406, align 1, !dbg !2097, !tbaa !1141
  br label %407, !dbg !2097

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1737, metadata !712), !dbg !1800
  %409 = icmp ult i64 %408, %130, !dbg !2101
  br i1 %409, label %410, label %414, !dbg !2104

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2101
  %412 = or i8 %411, 48, !dbg !2101
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2101
  store i8 %412, i8* %413, align 1, !dbg !2101, !tbaa !1141
  br label %414, !dbg !2101

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1737, metadata !712), !dbg !1800
  %416 = icmp ult i64 %415, %130, !dbg !2105
  br i1 %416, label %417, label %422, !dbg !2108

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2105
  %419 = and i8 %418, 7, !dbg !2105
  %420 = or i8 %419, 48, !dbg !2105
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2105
  store i8 %420, i8* %421, align 1, !dbg !2105, !tbaa !1141
  br label %422, !dbg !2105

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1737, metadata !712), !dbg !1800
  %424 = and i8 %377, 7, !dbg !2109
  %425 = or i8 %424, 48, !dbg !2110
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1747, metadata !712), !dbg !1881
  br label %435, !dbg !2111

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2112
  %428 = icmp eq i8 %427, 0, !dbg !2112
  br i1 %428, label %435, label %429, !dbg !2114

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2115
  br i1 %430, label %431, label %433, !dbg !2119

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2115
  store i8 92, i8* %432, align 1, !dbg !2115, !tbaa !1141
  br label %433, !dbg !2115

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1752, metadata !712), !dbg !1865
  br label %435, !dbg !2120

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1753, metadata !712), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1752, metadata !712), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1747, metadata !712), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1737, metadata !712), !dbg !1800
  %441 = add i64 %374, 1, !dbg !2121
  %442 = icmp ugt i64 %372, %441, !dbg !2123
  br i1 %442, label %443, label %535, !dbg !2124

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2125
  %445 = icmp ne i8 %444, 0, !dbg !2125
  %446 = and i8 %440, 1, !dbg !2125
  %447 = icmp eq i8 %446, 0, !dbg !2125
  %448 = and i1 %445, %447, !dbg !2125
  br i1 %448, label %449, label %460, !dbg !2125

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2128
  br i1 %450, label %451, label %453, !dbg !2132

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2128
  store i8 39, i8* %452, align 1, !dbg !2128, !tbaa !1141
  br label %453, !dbg !2128

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1737, metadata !712), !dbg !1800
  %455 = icmp ult i64 %454, %130, !dbg !2133
  br i1 %455, label %456, label %458, !dbg !2136

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2133
  store i8 39, i8* %457, align 1, !dbg !2133, !tbaa !1141
  br label %458, !dbg !2133

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !712), !dbg !1808
  br label %460, !dbg !2137

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1737, metadata !712), !dbg !1800
  %463 = icmp ult i64 %461, %130, !dbg !2138
  br i1 %463, label %464, label %466, !dbg !2141

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2138
  store i8 %438, i8* %465, align 1, !dbg !2138, !tbaa !1141
  br label %466, !dbg !2138

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1736, metadata !712), !dbg !1857
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2142
  %469 = load i8, i8* %468, align 1, !dbg !2142, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1747, metadata !712), !dbg !1881
  br label %373, !dbg !2143, !llvm.loop !2144

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1754, metadata !712), !dbg !1867
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1753, metadata !712), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1752, metadata !712), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1747, metadata !712), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1745, metadata !712), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1730, metadata !712), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1738, metadata !712), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1736, metadata !712), !dbg !1857
  br i1 %106, label %482, label %481, !dbg !2147

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2149

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2150

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2151
  %485 = zext i8 %484 to i64, !dbg !2151
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2152
  %487 = load i32, i32* %486, align 4, !dbg !2152, !tbaa !817
  %488 = and i8 %477, 31, !dbg !2153
  %489 = zext i8 %488 to i32, !dbg !2154
  %490 = shl i32 1, %489, !dbg !2155
  %491 = and i32 %487, %490, !dbg !2155
  %492 = icmp eq i32 %491, 0, !dbg !2155
  %493 = icmp eq i8 %156, 0, !dbg !2156
  %494 = and i1 %493, %492, !dbg !2157
  br i1 %494, label %535, label %497, !dbg !2157

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2156
  br i1 %496, label %535, label %497, !dbg !2158

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1754, metadata !712), !dbg !1867
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1747, metadata !712), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1745, metadata !712), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1730, metadata !712), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1738, metadata !712), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1736, metadata !712), !dbg !1857
  br i1 %111, label %507, label %635, !dbg !2159

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1753, metadata !712), !dbg !1866
  %508 = and i8 %502, 1, !dbg !2161
  %509 = icmp eq i8 %508, 0, !dbg !2161
  %510 = and i1 %113, %509, !dbg !2161
  br i1 %510, label %511, label %527, !dbg !2161

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2163
  br i1 %512, label %513, label %515, !dbg !2167

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2163
  store i8 39, i8* %514, align 1, !dbg !2163, !tbaa !1141
  br label %515, !dbg !2163

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1737, metadata !712), !dbg !1800
  %517 = icmp ult i64 %516, %506, !dbg !2168
  br i1 %517, label %518, label %520, !dbg !2171

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2168
  store i8 36, i8* %519, align 1, !dbg !2168, !tbaa !1141
  br label %520, !dbg !2168

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1737, metadata !712), !dbg !1800
  %522 = icmp ult i64 %521, %506, !dbg !2172
  br i1 %522, label %523, label %525, !dbg !2175

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2172
  store i8 39, i8* %524, align 1, !dbg !2172, !tbaa !1141
  br label %525, !dbg !2172

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1744, metadata !712), !dbg !1808
  br label %527, !dbg !2176

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1737, metadata !712), !dbg !1800
  %530 = icmp ult i64 %528, %506, !dbg !2177
  br i1 %530, label %531, label %533, !dbg !2180

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2177
  store i8 92, i8* %532, align 1, !dbg !2177, !tbaa !1141
  br label %533, !dbg !2177

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1754, metadata !712), !dbg !1867
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1753, metadata !712), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1747, metadata !712), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1745, metadata !712), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1730, metadata !712), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1738, metadata !712), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1736, metadata !712), !dbg !1857
  br label %562, !dbg !2181

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1754, metadata !712), !dbg !1867
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1753, metadata !712), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1747, metadata !712), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1745, metadata !712), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1730, metadata !712), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1738, metadata !712), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1736, metadata !712), !dbg !1857
  %546 = and i8 %540, 1, !dbg !2181
  %547 = icmp ne i8 %546, 0, !dbg !2181
  %548 = and i8 %543, 1, !dbg !2181
  %549 = icmp eq i8 %548, 0, !dbg !2181
  %550 = and i1 %547, %549, !dbg !2181
  br i1 %550, label %551, label %562, !dbg !2181

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2184
  br i1 %552, label %553, label %555, !dbg !2188

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2184
  store i8 39, i8* %554, align 1, !dbg !2184, !tbaa !1141
  br label %555, !dbg !2184

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1737, metadata !712), !dbg !1800
  %557 = icmp ult i64 %556, %545, !dbg !2189
  br i1 %557, label %558, label %560, !dbg !2192

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2189
  store i8 39, i8* %559, align 1, !dbg !2189, !tbaa !1141
  br label %560, !dbg !2189

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !712), !dbg !1808
  br label %562, !dbg !2193

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1737, metadata !712), !dbg !1800
  %572 = icmp ult i64 %570, %563, !dbg !2194
  br i1 %572, label %573, label %575, !dbg !2197

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2194
  store i8 %565, i8* %574, align 1, !dbg !2194, !tbaa !1141
  br label %575, !dbg !2194

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1737, metadata !712), !dbg !1800
  %577 = and i8 %564, 1, !dbg !2198
  %578 = icmp eq i8 %577, 0, !dbg !2198
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1746, metadata !712), !dbg !1810
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2200
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1746, metadata !712), !dbg !1810
  br label %580, !dbg !2201

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1746, metadata !712), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1745, metadata !712), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1744, metadata !712), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1730, metadata !712), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1738, metadata !712), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1736, metadata !712), !dbg !1857
  %589 = add i64 %581, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1736, metadata !712), !dbg !1857
  br label %122, !dbg !2203, !llvm.loop !2204

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2206
  %593 = and i1 %113, %592, !dbg !2208
  %594 = xor i1 %593, true, !dbg !2208
  %595 = or i1 %111, %594, !dbg !2208
  br i1 %595, label %596, label %635, !dbg !2208

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2209
  %598 = xor i1 %597, true, !dbg !2209
  %599 = and i8 %128, 1, !dbg !2211
  %600 = icmp eq i8 %599, 0, !dbg !2211
  %601 = or i1 %600, %598, !dbg !2209
  br i1 %601, label %611, label %602, !dbg !2209

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2212
  %604 = icmp eq i8 %603, 0, !dbg !2212
  br i1 %604, label %607, label %605, !dbg !2215

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2216
  br label %645, !dbg !2217

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2218
  %609 = icmp ne i64 %125, 0, !dbg !2220
  %610 = and i1 %609, %608, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1737, metadata !712), !dbg !1800
  br i1 %610, label %27, label %611, !dbg !2221

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2222
  %613 = and i1 %612, %111, !dbg !2224
  br i1 %613, label %614, label %630, !dbg !2224

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1739, metadata !712), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1737, metadata !712), !dbg !1800
  %615 = load i8, i8* %99, align 1, !dbg !2225, !tbaa !1141
  %616 = icmp eq i8 %615, 0, !dbg !2228
  br i1 %616, label %630, label %617, !dbg !2228

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2229

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1737, metadata !712), !dbg !1800
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1739, metadata !712), !dbg !1802
  %622 = icmp ult i64 %621, %130, !dbg !2229
  br i1 %622, label %623, label %625, !dbg !2232

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2229
  store i8 %619, i8* %624, align 1, !dbg !2229, !tbaa !1141
  br label %625, !dbg !2229

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1737, metadata !712), !dbg !1800
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2233
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1739, metadata !712), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1739, metadata !712), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1737, metadata !712), !dbg !1800
  %628 = load i8, i8* %627, align 1, !dbg !2225, !tbaa !1141
  %629 = icmp eq i8 %628, 0, !dbg !2228
  br i1 %629, label %630, label %618, !dbg !2228, !llvm.loop !2234

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1737, metadata !712), !dbg !1800
  %632 = icmp ult i64 %631, %130, !dbg !2236
  br i1 %632, label %633, label %645, !dbg !2238

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2239
  store i8 0, i8* %634, align 1, !dbg !2240, !tbaa !1141
  br label %645, !dbg !2239

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1728, metadata !712), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1730, metadata !712), !dbg !1794
  %639 = icmp ne i32 %636, 2, !dbg !2241
  %640 = icmp eq i8 %103, 0, !dbg !2243
  %641 = or i1 %639, %640, !dbg !2244
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1731, metadata !712), !dbg !1795
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1731, metadata !712), !dbg !1795
  %643 = and i32 %5, -3, !dbg !2245
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2246
  br label %645, !dbg !2247

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2248
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2249 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2253, metadata !712), !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2254, metadata !712), !dbg !2258
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2259
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2255, metadata !712), !dbg !2260
  %4 = icmp eq i8* %3, %0, !dbg !2261
  br i1 %4, label %5, label %75, !dbg !2263

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2264
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2256, metadata !712), !dbg !2265
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2266, metadata !712), !dbg !2282
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2280, metadata !712), !dbg !2285
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2281, metadata !712), !dbg !2286
  %7 = load i8, i8* %6, align 1, !dbg !2287, !tbaa !1141
  %8 = sext i8 %7 to i32, !dbg !2287
  %9 = and i32 %8, -33, !dbg !2287
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2287

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2289, metadata !712), !dbg !2303
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2301, metadata !712), !dbg !2307
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2302, metadata !712), !dbg !2308
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2309
  %12 = load i8, i8* %11, align 1, !dbg !2309, !tbaa !1141
  %13 = sext i8 %12 to i32, !dbg !2309
  %14 = and i32 %13, -33, !dbg !2309
  %15 = icmp eq i32 %14, 84, !dbg !2309
  br i1 %15, label %16, label %72, !dbg !2309

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2311, metadata !712), !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2322, metadata !712), !dbg !2328
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2323, metadata !712), !dbg !2329
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2330
  %18 = load i8, i8* %17, align 1, !dbg !2330, !tbaa !1141
  %19 = sext i8 %18 to i32, !dbg !2330
  %20 = and i32 %19, -33, !dbg !2330
  %21 = icmp eq i32 %20, 70, !dbg !2330
  br i1 %21, label %22, label %72, !dbg !2330

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2332, metadata !712), !dbg !2344
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2342, metadata !712), !dbg !2348
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2343, metadata !712), !dbg !2349
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2350
  %24 = load i8, i8* %23, align 1, !dbg !2350, !tbaa !1141
  %25 = icmp eq i8 %24, 45, !dbg !2350
  br i1 %25, label %26, label %72, !dbg !2352

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2353, metadata !712), !dbg !2364
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2362, metadata !712), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2363, metadata !712), !dbg !2369
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2370
  %28 = load i8, i8* %27, align 1, !dbg !2370, !tbaa !1141
  %29 = icmp eq i8 %28, 56, !dbg !2370
  br i1 %29, label %30, label %72, !dbg !2372

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2373, metadata !712), !dbg !2383
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2381, metadata !712), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2382, metadata !712), !dbg !2388
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2389
  %32 = load i8, i8* %31, align 1, !dbg !2389, !tbaa !1141
  %33 = icmp eq i8 %32, 0, !dbg !2389
  br i1 %33, label %34, label %72, !dbg !2391

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2392, !tbaa !1141
  %36 = icmp eq i8 %35, 96, !dbg !2393
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !2392
  br label %75, !dbg !2394

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2289, metadata !712), !dbg !2395
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2301, metadata !712), !dbg !2399
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2302, metadata !712), !dbg !2400
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2401
  %40 = load i8, i8* %39, align 1, !dbg !2401, !tbaa !1141
  %41 = sext i8 %40 to i32, !dbg !2401
  %42 = and i32 %41, -33, !dbg !2401
  %43 = icmp eq i32 %42, 66, !dbg !2401
  br i1 %43, label %44, label %72, !dbg !2401

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2311, metadata !712), !dbg !2402
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2322, metadata !712), !dbg !2404
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2323, metadata !712), !dbg !2405
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2406
  %46 = load i8, i8* %45, align 1, !dbg !2406, !tbaa !1141
  %47 = icmp eq i8 %46, 49, !dbg !2406
  br i1 %47, label %48, label %72, !dbg !2407

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2332, metadata !712), !dbg !2408
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2342, metadata !712), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2343, metadata !712), !dbg !2411
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2412
  %50 = load i8, i8* %49, align 1, !dbg !2412, !tbaa !1141
  %51 = icmp eq i8 %50, 56, !dbg !2412
  br i1 %51, label %52, label %72, !dbg !2413

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2353, metadata !712), !dbg !2414
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2362, metadata !712), !dbg !2416
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2363, metadata !712), !dbg !2417
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2418
  %54 = load i8, i8* %53, align 1, !dbg !2418, !tbaa !1141
  %55 = icmp eq i8 %54, 48, !dbg !2418
  br i1 %55, label %56, label %72, !dbg !2419

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2373, metadata !712), !dbg !2420
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2381, metadata !712), !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2382, metadata !712), !dbg !2423
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2424
  %58 = load i8, i8* %57, align 1, !dbg !2424, !tbaa !1141
  %59 = icmp eq i8 %58, 51, !dbg !2424
  br i1 %59, label %60, label %72, !dbg !2425

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2426, metadata !712), !dbg !2435
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2433, metadata !712), !dbg !2439
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2434, metadata !712), !dbg !2440
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2441
  %62 = load i8, i8* %61, align 1, !dbg !2441, !tbaa !1141
  %63 = icmp eq i8 %62, 48, !dbg !2441
  br i1 %63, label %64, label %72, !dbg !2443

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2444, metadata !712), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2450, metadata !712), !dbg !2456
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2451, metadata !712), !dbg !2457
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2458
  %66 = load i8, i8* %65, align 1, !dbg !2458, !tbaa !1141
  %67 = icmp eq i8 %66, 0, !dbg !2458
  br i1 %67, label %68, label %72, !dbg !2460

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2461, !tbaa !1141
  %70 = icmp eq i8 %69, 96, !dbg !2462
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.67, i64 0, i64 0), !dbg !2461
  br label %75, !dbg !2463

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2464
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !2465
  br label %75, !dbg !2466

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2467
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2468 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2472, metadata !712), !dbg !2475
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2473, metadata !712), !dbg !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2474, metadata !712), !dbg !2477
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2478, metadata !712) #10, !dbg !2491
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2483, metadata !712) #10, !dbg !2493
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2484, metadata !712) #10, !dbg !2494
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2485, metadata !712) #10, !dbg !2495
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2496
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2486, metadata !712) #10, !dbg !2497
  %6 = tail call i32* @__errno_location() #16, !dbg !2498
  %7 = load i32, i32* %6, align 4, !dbg !2498, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2487, metadata !712) #10, !dbg !2499
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2500
  %9 = load i32, i32* %8, align 4, !dbg !2500, !tbaa !1660
  %10 = or i32 %9, 1, !dbg !2501
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2488, metadata !712) #10, !dbg !2502
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2503
  %12 = load i32, i32* %11, align 8, !dbg !2503, !tbaa !1600
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2504
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2505
  %15 = load i8*, i8** %14, align 8, !dbg !2505, !tbaa !1686
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2506
  %17 = load i8*, i8** %16, align 8, !dbg !2506, !tbaa !1689
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2507
  %19 = add i64 %18, 1, !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2489, metadata !712) #10, !dbg !2509
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2510, metadata !712) #10, !dbg !2515
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2517
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2490, metadata !712) #10, !dbg !2518
  %21 = load i32, i32* %11, align 8, !dbg !2519, !tbaa !1600
  %22 = load i8*, i8** %14, align 8, !dbg !2520, !tbaa !1686
  %23 = load i8*, i8** %16, align 8, !dbg !2521, !tbaa !1689
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2522
  store i32 %7, i32* %6, align 4, !dbg !2523, !tbaa !817
  ret i8* %20, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2479 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2478, metadata !712), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2483, metadata !712), !dbg !2526
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2484, metadata !712), !dbg !2527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2485, metadata !712), !dbg !2528
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2529
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2529
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2486, metadata !712), !dbg !2530
  %7 = tail call i32* @__errno_location() #16, !dbg !2531
  %8 = load i32, i32* %7, align 4, !dbg !2531, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2487, metadata !712), !dbg !2532
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2533
  %10 = load i32, i32* %9, align 4, !dbg !2533, !tbaa !1660
  %11 = icmp ne i64* %2, null, !dbg !2534
  %12 = xor i1 %11, true, !dbg !2534
  %13 = zext i1 %12 to i32, !dbg !2534
  %14 = or i32 %10, %13, !dbg !2535
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2488, metadata !712), !dbg !2536
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2537
  %16 = load i32, i32* %15, align 8, !dbg !2537, !tbaa !1600
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2538
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2539
  %19 = load i8*, i8** %18, align 8, !dbg !2539, !tbaa !1686
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2540
  %21 = load i8*, i8** %20, align 8, !dbg !2540, !tbaa !1689
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2541
  %23 = add i64 %22, 1, !dbg !2542
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2489, metadata !712), !dbg !2543
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2510, metadata !712) #10, !dbg !2544
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2546
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2490, metadata !712), !dbg !2547
  %25 = load i32, i32* %15, align 8, !dbg !2548, !tbaa !1600
  %26 = load i8*, i8** %18, align 8, !dbg !2549, !tbaa !1686
  %27 = load i8*, i8** %20, align 8, !dbg !2550, !tbaa !1689
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2551
  store i32 %8, i32* %7, align 4, !dbg !2552, !tbaa !817
  br i1 %11, label %29, label %30, !dbg !2553

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2554, !tbaa !2556
  br label %30, !dbg !2557

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2558
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2559 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2563, !tbaa !719
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2561, metadata !712), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2562, metadata !712), !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2562, metadata !712), !dbg !2565
  %2 = load i32, i32* @nslots, align 4, !dbg !2566, !tbaa !817
  %3 = icmp sgt i32 %2, 1, !dbg !2569
  br i1 %3, label %4, label %13, !dbg !2570

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2571

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2562, metadata !712), !dbg !2565
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2571
  %8 = load i8*, i8** %7, align 8, !dbg !2571, !tbaa !2572
  tail call void @free(i8* %8) #10, !dbg !2574
  %9 = add nuw i64 %6, 1, !dbg !2575
  %10 = load i32, i32* @nslots, align 4, !dbg !2566, !tbaa !817
  %11 = sext i32 %10 to i64, !dbg !2569
  %12 = icmp slt i64 %9, %11, !dbg !2569
  br i1 %12, label %5, label %13, !dbg !2570, !llvm.loop !2576

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2578
  %15 = load i8*, i8** %14, align 8, !dbg !2578, !tbaa !2572
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2580
  br i1 %16, label %18, label %17, !dbg !2581

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2582
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2584, !tbaa !2585
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2586, !tbaa !2572
  br label %18, !dbg !2587

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2588
  br i1 %19, label %22, label %20, !dbg !2590

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2591
  tail call void @free(i8* %21) #10, !dbg !2593
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2594, !tbaa !719
  br label %22, !dbg !2595

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2596, !tbaa !817
  ret void, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2598 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2602, metadata !712), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2603, metadata !712), !dbg !2605
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2606
  ret i8* %3, !dbg !2607
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2608 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2612, metadata !712), !dbg !2626
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2613, metadata !712), !dbg !2627
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2614, metadata !712), !dbg !2628
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2615, metadata !712), !dbg !2629
  %5 = tail call i32* @__errno_location() #16, !dbg !2630
  %6 = load i32, i32* %5, align 4, !dbg !2630, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2616, metadata !712), !dbg !2631
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2632, !tbaa !719
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2617, metadata !712), !dbg !2633
  %8 = icmp slt i32 %0, 0, !dbg !2634
  br i1 %8, label %9, label %10, !dbg !2636

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2637
  unreachable, !dbg !2637

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2638, !tbaa !817
  %12 = icmp sgt i32 %11, %0, !dbg !2639
  br i1 %12, label %34, label %13, !dbg !2640

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2641
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2642
  br i1 %15, label %16, label %17, !dbg !2644

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2645
  unreachable, !dbg !2645

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2646
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2646
  %20 = add nsw i32 %0, 1, !dbg !2647
  %21 = sext i32 %20 to i64, !dbg !2648
  %22 = shl nsw i64 %21, 4, !dbg !2649
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2650
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2650
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2617, metadata !712), !dbg !2633
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2651, !tbaa !719
  br i1 %14, label %25, label %26, !dbg !2652

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2653, !tbaa.struct !2655
  br label %26, !dbg !2656

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2657, !tbaa !817
  %28 = sext i32 %27 to i64, !dbg !2658
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2658
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2659
  %31 = sub nsw i32 %20, %27, !dbg !2660
  %32 = sext i32 %31 to i64, !dbg !2661
  %33 = shl nsw i64 %32, 4, !dbg !2662
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2659
  store i32 %20, i32* @nslots, align 4, !dbg !2663, !tbaa !817
  br label %34, !dbg !2664

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2617, metadata !712), !dbg !2633
  %36 = sext i32 %0 to i64, !dbg !2665
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2666
  %38 = load i64, i64* %37, align 8, !dbg !2666, !tbaa !2585
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2621, metadata !712), !dbg !2667
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2668
  %40 = load i8*, i8** %39, align 8, !dbg !2668, !tbaa !2572
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2623, metadata !712), !dbg !2669
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2670
  %42 = load i32, i32* %41, align 4, !dbg !2670, !tbaa !1660
  %43 = or i32 %42, 1, !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2624, metadata !712), !dbg !2672
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2673
  %45 = load i32, i32* %44, align 8, !dbg !2673, !tbaa !1600
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2674
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2675
  %48 = load i8*, i8** %47, align 8, !dbg !2675, !tbaa !1686
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2676
  %50 = load i8*, i8** %49, align 8, !dbg !2676, !tbaa !1689
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2625, metadata !712), !dbg !2678
  %52 = icmp ugt i64 %38, %51, !dbg !2679
  br i1 %52, label %63, label %53, !dbg !2681

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2682
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2621, metadata !712), !dbg !2667
  store i64 %54, i64* %37, align 8, !dbg !2684, !tbaa !2585
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2685
  br i1 %55, label %57, label %56, !dbg !2687

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2688
  br label %57, !dbg !2688

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2510, metadata !712) #10, !dbg !2689
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2623, metadata !712), !dbg !2669
  store i8* %58, i8** %39, align 8, !dbg !2692, !tbaa !2572
  %59 = load i32, i32* %44, align 8, !dbg !2693, !tbaa !1600
  %60 = load i8*, i8** %47, align 8, !dbg !2694, !tbaa !1686
  %61 = load i8*, i8** %49, align 8, !dbg !2695, !tbaa !1689
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2696
  br label %63, !dbg !2697

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2623, metadata !712), !dbg !2669
  store i32 %6, i32* %5, align 4, !dbg !2698, !tbaa !817
  ret i8* %64, !dbg !2699
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2700 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2704, metadata !712), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2705, metadata !712), !dbg !2708
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2706, metadata !712), !dbg !2709
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2710
  ret i8* %4, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2712 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2716, metadata !712), !dbg !2717
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2602, metadata !712) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2603, metadata !712) #10, !dbg !2720
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2721
  ret i8* %2, !dbg !2722
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2723 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2727, metadata !712), !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2728, metadata !712), !dbg !2730
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2704, metadata !712) #10, !dbg !2731
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2705, metadata !712) #10, !dbg !2733
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2706, metadata !712) #10, !dbg !2734
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2735
  ret i8* %3, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2737 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2745, metadata !2751), !dbg !2752
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2741, metadata !712), !dbg !2754
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2742, metadata !712), !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2743, metadata !712), !dbg !2756
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2757
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2757
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2744, metadata !712), !dbg !2758
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2750, metadata !712) #10, !dbg !2759
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2760
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2760
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2745, metadata !712) #10, !dbg !2752
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2745, metadata !2761) #10, !dbg !2752
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2752
  %8 = icmp eq i32 %1, 10, !dbg !2762
  br i1 %8, label %9, label %10, !dbg !2764

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2765, !noalias !2766
  unreachable, !dbg !2765

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2745, metadata !2761) #10, !dbg !2752
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2769
  store i32 %1, i32* %11, align 8, !dbg !2769, !alias.scope !2766
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2769
  %13 = bitcast i32* %12 to i8*, !dbg !2769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2769
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2770
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2744, metadata !712), !dbg !2758
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2771
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2772
  ret i8* %14, !dbg !2773
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2774 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2745, metadata !2751), !dbg !2783
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2778, metadata !712), !dbg !2785
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2779, metadata !712), !dbg !2786
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2780, metadata !712), !dbg !2787
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2781, metadata !712), !dbg !2788
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2782, metadata !712), !dbg !2790
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2750, metadata !712) #10, !dbg !2791
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2792
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2745, metadata !712) #10, !dbg !2783
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2745, metadata !2761) #10, !dbg !2783
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2783
  %9 = icmp eq i32 %1, 10, !dbg !2793
  br i1 %9, label %10, label %11, !dbg !2794

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2795, !noalias !2796
  unreachable, !dbg !2795

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2745, metadata !2761) #10, !dbg !2783
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2799
  store i32 %1, i32* %12, align 8, !dbg !2799, !alias.scope !2796
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2799
  %14 = bitcast i32* %13 to i8*, !dbg !2799
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2799
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2782, metadata !712), !dbg !2790
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2801
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2802
  ret i8* %15, !dbg !2803
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2804 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2745, metadata !2751), !dbg !2810
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2808, metadata !712), !dbg !2813
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2809, metadata !712), !dbg !2814
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2741, metadata !712) #10, !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2742, metadata !712) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2743, metadata !712) #10, !dbg !2817
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2818
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2744, metadata !712) #10, !dbg !2819
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2750, metadata !712) #10, !dbg !2820
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2821
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2821
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2745, metadata !712) #10, !dbg !2810
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2745, metadata !2761) #10, !dbg !2810
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2810
  %7 = icmp eq i32 %0, 10, !dbg !2822
  br i1 %7, label %8, label %9, !dbg !2823

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2824, !noalias !2825
  unreachable, !dbg !2824

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2745, metadata !2761) #10, !dbg !2810
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2828
  store i32 %0, i32* %10, align 8, !dbg !2828, !alias.scope !2825
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2828
  %12 = bitcast i32* %11 to i8*, !dbg !2828
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2828
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2744, metadata !712) #10, !dbg !2819
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2830
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2831
  ret i8* %13, !dbg !2832
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2833 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2745, metadata !2751), !dbg !2840
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2837, metadata !712), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2838, metadata !712), !dbg !2844
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2839, metadata !712), !dbg !2845
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2778, metadata !712) #10, !dbg !2846
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2779, metadata !712) #10, !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2780, metadata !712) #10, !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2781, metadata !712) #10, !dbg !2849
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2850
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2850
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2782, metadata !712) #10, !dbg !2851
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2750, metadata !712) #10, !dbg !2852
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2853
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2853
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2745, metadata !712) #10, !dbg !2840
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2745, metadata !2761) #10, !dbg !2840
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2840
  %8 = icmp eq i32 %0, 10, !dbg !2854
  br i1 %8, label %9, label %10, !dbg !2855

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2856, !noalias !2857
  unreachable, !dbg !2856

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2745, metadata !2761) #10, !dbg !2840
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2860
  store i32 %0, i32* %11, align 8, !dbg !2860, !alias.scope !2857
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2860
  %13 = bitcast i32* %12 to i8*, !dbg !2860
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2860
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2782, metadata !712) #10, !dbg !2851
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2862
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2863
  ret i8* %14, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2865 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !712), !dbg !2873
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2870, metadata !712), !dbg !2874
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2871, metadata !712), !dbg !2875
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2876
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2876
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2877, !tbaa.struct !2878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2872, metadata !712), !dbg !2879
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1619, metadata !712), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1620, metadata !712), !dbg !2882
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1621, metadata !712), !dbg !2883
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1622, metadata !712), !dbg !2884
  %6 = lshr i8 %2, 5, !dbg !2885
  %7 = zext i8 %6 to i64, !dbg !2885
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2886
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1623, metadata !712), !dbg !2887
  %9 = and i8 %2, 31, !dbg !2888
  %10 = zext i8 %9 to i32, !dbg !2889
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1625, metadata !712), !dbg !2890
  %11 = load i32, i32* %8, align 4, !dbg !2891, !tbaa !817
  %12 = lshr i32 %11, %10, !dbg !2892
  %13 = and i32 %12, 1, !dbg !2893
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1626, metadata !712), !dbg !2894
  %14 = xor i32 %13, 1, !dbg !2895
  %15 = shl i32 %14, %10, !dbg !2896
  %16 = xor i32 %15, %11, !dbg !2897
  store i32 %16, i32* %8, align 4, !dbg !2897, !tbaa !817
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2872, metadata !712), !dbg !2879
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2898
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2899
  ret i8* %17, !dbg !2900
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2901 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2905, metadata !712), !dbg !2907
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2906, metadata !712), !dbg !2908
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !712) #10, !dbg !2909
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2870, metadata !712) #10, !dbg !2911
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2871, metadata !712) #10, !dbg !2912
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2913
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2914, !tbaa.struct !2878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2872, metadata !712) #10, !dbg !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1619, metadata !712) #10, !dbg !2916
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1620, metadata !712) #10, !dbg !2918
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1621, metadata !712) #10, !dbg !2919
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1622, metadata !712) #10, !dbg !2920
  %5 = lshr i8 %1, 5, !dbg !2921
  %6 = zext i8 %5 to i64, !dbg !2921
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2922
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1623, metadata !712) #10, !dbg !2923
  %8 = and i8 %1, 31, !dbg !2924
  %9 = zext i8 %8 to i32, !dbg !2925
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1625, metadata !712) #10, !dbg !2926
  %10 = load i32, i32* %7, align 4, !dbg !2927, !tbaa !817
  %11 = lshr i32 %10, %9, !dbg !2928
  %12 = and i32 %11, 1, !dbg !2929
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1626, metadata !712) #10, !dbg !2930
  %13 = xor i32 %12, 1, !dbg !2931
  %14 = shl i32 %13, %9, !dbg !2932
  %15 = xor i32 %14, %10, !dbg !2933
  store i32 %15, i32* %7, align 4, !dbg !2933, !tbaa !817
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2872, metadata !712) #10, !dbg !2915
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2934
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2935
  ret i8* %16, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2937 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2939, metadata !712), !dbg !2940
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2905, metadata !712) #10, !dbg !2941
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2906, metadata !712) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !712) #10, !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2870, metadata !712) #10, !dbg !2946
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2871, metadata !712) #10, !dbg !2947
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2948
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2949, !tbaa.struct !2878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2872, metadata !712) #10, !dbg !2950
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1619, metadata !712) #10, !dbg !2951
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1620, metadata !712) #10, !dbg !2953
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1621, metadata !712) #10, !dbg !2954
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1622, metadata !712) #10, !dbg !2955
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2956
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1623, metadata !712) #10, !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1625, metadata !712) #10, !dbg !2958
  %5 = load i32, i32* %4, align 4, !dbg !2959, !tbaa !817
  %6 = or i32 %5, 67108864, !dbg !2960
  store i32 %6, i32* %4, align 4, !dbg !2960, !tbaa !817
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2872, metadata !712) #10, !dbg !2950
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2961
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2962
  ret i8* %7, !dbg !2963
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2964 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2966, metadata !712), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2967, metadata !712), !dbg !2969
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !712) #10, !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2870, metadata !712) #10, !dbg !2972
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2871, metadata !712) #10, !dbg !2973
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2974
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2974
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2975, !tbaa.struct !2878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2872, metadata !712) #10, !dbg !2976
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1619, metadata !712) #10, !dbg !2977
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1620, metadata !712) #10, !dbg !2979
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1621, metadata !712) #10, !dbg !2980
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1622, metadata !712) #10, !dbg !2981
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2982
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1623, metadata !712) #10, !dbg !2983
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1625, metadata !712) #10, !dbg !2984
  %6 = load i32, i32* %5, align 4, !dbg !2985, !tbaa !817
  %7 = or i32 %6, 67108864, !dbg !2986
  store i32 %7, i32* %5, align 4, !dbg !2986, !tbaa !817
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2872, metadata !712) #10, !dbg !2976
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2987
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2988
  ret i8* %8, !dbg !2989
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2990 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2745, metadata !2751), !dbg !2996
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2992, metadata !712), !dbg !2998
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2993, metadata !712), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2994, metadata !712), !dbg !3000
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3001
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3001
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2750, metadata !712) #10, !dbg !3002
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3003
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3003
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2745, metadata !712) #10, !dbg !2996
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2745, metadata !2761) #10, !dbg !2996
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2996
  %9 = icmp eq i32 %1, 10, !dbg !3004
  br i1 %9, label %10, label %11, !dbg !3005

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3006, !noalias !3007
  unreachable, !dbg !3006

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2745, metadata !2761) #10, !dbg !2996
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3010
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3010
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3011
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3012
  store i32 %1, i32* %13, align 8, !dbg !3012
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3012
  %15 = bitcast i32* %14 to i8*, !dbg !3012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2995, metadata !712), !dbg !3013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1619, metadata !712), !dbg !3014
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1620, metadata !712), !dbg !3016
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1621, metadata !712), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1622, metadata !712), !dbg !3018
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3019
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1623, metadata !712), !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1625, metadata !712), !dbg !3021
  %17 = load i32, i32* %16, align 4, !dbg !3022, !tbaa !817
  %18 = or i32 %17, 67108864, !dbg !3023
  store i32 %18, i32* %16, align 4, !dbg !3023, !tbaa !817
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2995, metadata !712), !dbg !3013
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3024
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3025
  ret i8* %19, !dbg !3026
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3027 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3031, metadata !712), !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3032, metadata !712), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3033, metadata !712), !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3034, metadata !712), !dbg !3038
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3039, metadata !712) #10, !dbg !3049
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3044, metadata !712) #10, !dbg !3051
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3045, metadata !712) #10, !dbg !3052
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3046, metadata !712) #10, !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3047, metadata !712) #10, !dbg !3054
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3055
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3056, !tbaa.struct !2878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3048, metadata !712) #10, !dbg !3057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1668, metadata !712) #10, !dbg !3058
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1669, metadata !712) #10, !dbg !3060
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1670, metadata !712) #10, !dbg !3061
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1668, metadata !712) #10, !dbg !3058
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1668, metadata !712) #10, !dbg !3058
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3062
  store i32 10, i32* %7, align 8, !dbg !3063, !tbaa !1600
  %8 = icmp ne i8* %1, null, !dbg !3064
  %9 = icmp ne i8* %2, null, !dbg !3065
  %10 = and i1 %8, %9, !dbg !3066
  br i1 %10, label %12, label %11, !dbg !3066

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3067
  unreachable, !dbg !3067

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3068
  store i8* %1, i8** %13, align 8, !dbg !3069, !tbaa !1686
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3070
  store i8* %2, i8** %14, align 8, !dbg !3071, !tbaa !1689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3048, metadata !712) #10, !dbg !3057
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3072
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3073
  ret i8* %15, !dbg !3074
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3040 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3039, metadata !712), !dbg !3075
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3044, metadata !712), !dbg !3076
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3045, metadata !712), !dbg !3077
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3046, metadata !712), !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3047, metadata !712), !dbg !3079
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3080
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3081, !tbaa.struct !2878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3048, metadata !712), !dbg !3082
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1668, metadata !712) #10, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1669, metadata !712) #10, !dbg !3085
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1670, metadata !712) #10, !dbg !3086
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1668, metadata !712) #10, !dbg !3083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1668, metadata !712) #10, !dbg !3083
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3087
  store i32 10, i32* %8, align 8, !dbg !3088, !tbaa !1600
  %9 = icmp ne i8* %1, null, !dbg !3089
  %10 = icmp ne i8* %2, null, !dbg !3090
  %11 = and i1 %9, %10, !dbg !3091
  br i1 %11, label %13, label %12, !dbg !3091

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3092
  unreachable, !dbg !3092

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3093
  store i8* %1, i8** %14, align 8, !dbg !3094, !tbaa !1686
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3095
  store i8* %2, i8** %15, align 8, !dbg !3096, !tbaa !1689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3048, metadata !712), !dbg !3082
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3097
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3098
  ret i8* %16, !dbg !3099
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3100 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3104, metadata !712), !dbg !3107
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3105, metadata !712), !dbg !3108
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3106, metadata !712), !dbg !3109
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3031, metadata !712) #10, !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3032, metadata !712) #10, !dbg !3112
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3033, metadata !712) #10, !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3034, metadata !712) #10, !dbg !3114
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3039, metadata !712) #10, !dbg !3115
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3044, metadata !712) #10, !dbg !3117
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3045, metadata !712) #10, !dbg !3118
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3046, metadata !712) #10, !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3047, metadata !712) #10, !dbg !3120
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3121
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3121
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3122, !tbaa.struct !2878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3048, metadata !712) #10, !dbg !3123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1668, metadata !712) #10, !dbg !3124
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1669, metadata !712) #10, !dbg !3126
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1670, metadata !712) #10, !dbg !3127
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1668, metadata !712) #10, !dbg !3124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1668, metadata !712) #10, !dbg !3124
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3128
  store i32 10, i32* %6, align 8, !dbg !3129, !tbaa !1600
  %7 = icmp ne i8* %0, null, !dbg !3130
  %8 = icmp ne i8* %1, null, !dbg !3131
  %9 = and i1 %7, %8, !dbg !3132
  br i1 %9, label %11, label %10, !dbg !3132

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3133
  unreachable, !dbg !3133

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3134
  store i8* %0, i8** %12, align 8, !dbg !3135, !tbaa !1686
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3136
  store i8* %1, i8** %13, align 8, !dbg !3137, !tbaa !1689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3048, metadata !712) #10, !dbg !3123
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3138
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3139
  ret i8* %14, !dbg !3140
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3141 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3145, metadata !712), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3146, metadata !712), !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3147, metadata !712), !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3148, metadata !712), !dbg !3152
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3039, metadata !712) #10, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3044, metadata !712) #10, !dbg !3155
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3045, metadata !712) #10, !dbg !3156
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3046, metadata !712) #10, !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3047, metadata !712) #10, !dbg !3158
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3159
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3160, !tbaa.struct !2878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3048, metadata !712) #10, !dbg !3161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1668, metadata !712) #10, !dbg !3162
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1669, metadata !712) #10, !dbg !3164
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1670, metadata !712) #10, !dbg !3165
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1668, metadata !712) #10, !dbg !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1668, metadata !712) #10, !dbg !3162
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3166
  store i32 10, i32* %7, align 8, !dbg !3167, !tbaa !1600
  %8 = icmp ne i8* %0, null, !dbg !3168
  %9 = icmp ne i8* %1, null, !dbg !3169
  %10 = and i1 %8, %9, !dbg !3170
  br i1 %10, label %12, label %11, !dbg !3170

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3171
  unreachable, !dbg !3171

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3172
  store i8* %0, i8** %13, align 8, !dbg !3173, !tbaa !1686
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3174
  store i8* %1, i8** %14, align 8, !dbg !3175, !tbaa !1689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3048, metadata !712) #10, !dbg !3161
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3176
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3177
  ret i8* %15, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3179 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3183, metadata !712), !dbg !3186
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3184, metadata !712), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3185, metadata !712), !dbg !3188
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3189
  ret i8* %4, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3191 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3195, metadata !712), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3196, metadata !712), !dbg !3198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3183, metadata !712) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3184, metadata !712) #10, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3185, metadata !712) #10, !dbg !3202
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3203
  ret i8* %3, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3205 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3209, metadata !712), !dbg !3211
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3210, metadata !712), !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3183, metadata !712) #10, !dbg !3213
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3184, metadata !712) #10, !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3185, metadata !712) #10, !dbg !3216
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3217
  ret i8* %3, !dbg !3218
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3219 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3223, metadata !712), !dbg !3224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3209, metadata !712) #10, !dbg !3225
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3210, metadata !712) #10, !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3183, metadata !712) #10, !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3184, metadata !712) #10, !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3185, metadata !712) #10, !dbg !3231
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3232
  ret i8* %2, !dbg !3233
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !627 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !631, metadata !712), !dbg !3234
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !632, metadata !712), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !633, metadata !712), !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !633, metadata !712), !dbg !3236
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !634, metadata !712), !dbg !3238
  %5 = icmp sgt i64 %4, -1, !dbg !3239
  br i1 %5, label %25, label %6, !dbg !3241

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #16, !dbg !3242
  br label %11, !dbg !3241

; <label>:8:                                      ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !633, metadata !712), !dbg !3236
  %9 = tail call i64 @read(i32 %0, i8* %1, i64 2147475456) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !634, metadata !712), !dbg !3238
  %10 = icmp sgt i64 %9, -1, !dbg !3239
  br i1 %10, label %25, label %11, !dbg !3241, !llvm.loop !3244

; <label>:11:                                     ; preds = %6, %8
  %12 = phi i64 [ %4, %6 ], [ %9, %8 ]
  %13 = phi i64 [ %2, %6 ], [ 2147475456, %8 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !633, metadata !712), !dbg !3236
  br label %17, !dbg !3241

; <label>:14:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !633, metadata !712), !dbg !3236
  %15 = tail call i64 @read(i32 %0, i8* %1, i64 %13) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !634, metadata !712), !dbg !3238
  %16 = icmp sgt i64 %15, -1, !dbg !3239
  br i1 %16, label %25, label %17, !dbg !3241

; <label>:17:                                     ; preds = %11, %14
  %18 = phi i64 [ %12, %11 ], [ %15, %14 ]
  %19 = load i32, i32* %7, align 4, !dbg !3242, !tbaa !817
  %20 = icmp eq i32 %19, 4, !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !633, metadata !712), !dbg !3236
  br i1 %20, label %14, label %21, !dbg !3247, !llvm.loop !3244

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i32 %19, 22, !dbg !3248
  %23 = icmp ugt i64 %13, 2147475456, !dbg !3250
  %24 = and i1 %23, %22, !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !633, metadata !712), !dbg !3236
  br i1 %24, label %8, label %25

; <label>:25:                                     ; preds = %21, %8, %14, %3
  %26 = phi i64 [ %4, %3 ], [ %15, %14 ], [ %9, %8 ], [ %18, %21 ]
  ret i64 %26, !dbg !3252
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_write(i32, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !646 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !652, metadata !712), !dbg !3253
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !653, metadata !712), !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !654, metadata !712), !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !654, metadata !712), !dbg !3255
  %4 = tail call i64 @write(i32 %0, i8* %1, i64 %2) #10, !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !655, metadata !712), !dbg !3257
  %5 = icmp sgt i64 %4, -1, !dbg !3258
  br i1 %5, label %25, label %6, !dbg !3260

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #16, !dbg !3261
  br label %11, !dbg !3260

; <label>:8:                                      ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !654, metadata !712), !dbg !3255
  %9 = tail call i64 @write(i32 %0, i8* %1, i64 2147475456) #10, !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !655, metadata !712), !dbg !3257
  %10 = icmp sgt i64 %9, -1, !dbg !3258
  br i1 %10, label %25, label %11, !dbg !3260, !llvm.loop !3263

; <label>:11:                                     ; preds = %6, %8
  %12 = phi i64 [ %4, %6 ], [ %9, %8 ]
  %13 = phi i64 [ %2, %6 ], [ 2147475456, %8 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !654, metadata !712), !dbg !3255
  br label %17, !dbg !3260

; <label>:14:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !654, metadata !712), !dbg !3255
  %15 = tail call i64 @write(i32 %0, i8* %1, i64 %13) #10, !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !655, metadata !712), !dbg !3257
  %16 = icmp sgt i64 %15, -1, !dbg !3258
  br i1 %16, label %25, label %17, !dbg !3260

; <label>:17:                                     ; preds = %11, %14
  %18 = phi i64 [ %12, %11 ], [ %15, %14 ]
  %19 = load i32, i32* %7, align 4, !dbg !3261, !tbaa !817
  %20 = icmp eq i32 %19, 4, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !654, metadata !712), !dbg !3255
  br i1 %20, label %14, label %21, !dbg !3266, !llvm.loop !3263

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i32 %19, 22, !dbg !3267
  %23 = icmp ugt i64 %13, 2147475456, !dbg !3269
  %24 = and i1 %23, %22, !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !654, metadata !712), !dbg !3255
  br i1 %24, label %8, label %25

; <label>:25:                                     ; preds = %21, %8, %14, %3
  %26 = phi i64 [ %4, %3 ], [ %15, %14 ], [ %9, %8 ], [ %18, %21 ]
  ret i64 %26, !dbg !3271
}

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3272 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3317, metadata !712), !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3318, metadata !712), !dbg !3324
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3319, metadata !712), !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3320, metadata !712), !dbg !3326
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3321, metadata !712), !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3322, metadata !712), !dbg !3328
  %7 = icmp eq i8* %1, null, !dbg !3329
  br i1 %7, label %10, label %8, !dbg !3331

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3332
  br label %12, !dbg !3332

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3333
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #10, !dbg !3334
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3334
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.81, i64 0, i64 0), i32 5) #10, !dbg !3335
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3335
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
  ], !dbg !3336

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3337
  unreachable, !dbg !3337

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #10, !dbg !3339
  %20 = load i8*, i8** %4, align 8, !dbg !3339, !tbaa !719
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3339
  br label %146, !dbg !3340

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.83, i64 0, i64 0), i32 5) #10, !dbg !3341
  %24 = load i8*, i8** %4, align 8, !dbg !3341, !tbaa !719
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3341
  %26 = load i8*, i8** %25, align 8, !dbg !3341, !tbaa !719
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3341
  br label %146, !dbg !3342

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #10, !dbg !3343
  %30 = load i8*, i8** %4, align 8, !dbg !3343, !tbaa !719
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3343
  %32 = load i8*, i8** %31, align 8, !dbg !3343, !tbaa !719
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3343
  %34 = load i8*, i8** %33, align 8, !dbg !3343, !tbaa !719
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3343
  br label %146, !dbg !3344

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #10, !dbg !3345
  %38 = load i8*, i8** %4, align 8, !dbg !3345, !tbaa !719
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3345
  %40 = load i8*, i8** %39, align 8, !dbg !3345, !tbaa !719
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3345
  %42 = load i8*, i8** %41, align 8, !dbg !3345, !tbaa !719
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3345
  %44 = load i8*, i8** %43, align 8, !dbg !3345, !tbaa !719
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3345
  br label %146, !dbg !3346

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #10, !dbg !3347
  %48 = load i8*, i8** %4, align 8, !dbg !3347, !tbaa !719
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3347
  %50 = load i8*, i8** %49, align 8, !dbg !3347, !tbaa !719
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3347
  %52 = load i8*, i8** %51, align 8, !dbg !3347, !tbaa !719
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3347
  %54 = load i8*, i8** %53, align 8, !dbg !3347, !tbaa !719
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3347
  %56 = load i8*, i8** %55, align 8, !dbg !3347, !tbaa !719
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3347
  br label %146, !dbg !3348

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #10, !dbg !3349
  %60 = load i8*, i8** %4, align 8, !dbg !3349, !tbaa !719
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3349
  %62 = load i8*, i8** %61, align 8, !dbg !3349, !tbaa !719
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3349
  %64 = load i8*, i8** %63, align 8, !dbg !3349, !tbaa !719
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3349
  %66 = load i8*, i8** %65, align 8, !dbg !3349, !tbaa !719
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3349
  %68 = load i8*, i8** %67, align 8, !dbg !3349, !tbaa !719
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3349
  %70 = load i8*, i8** %69, align 8, !dbg !3349, !tbaa !719
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3349
  br label %146, !dbg !3350

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #10, !dbg !3351
  %74 = load i8*, i8** %4, align 8, !dbg !3351, !tbaa !719
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3351
  %76 = load i8*, i8** %75, align 8, !dbg !3351, !tbaa !719
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3351
  %78 = load i8*, i8** %77, align 8, !dbg !3351, !tbaa !719
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3351
  %80 = load i8*, i8** %79, align 8, !dbg !3351, !tbaa !719
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3351
  %82 = load i8*, i8** %81, align 8, !dbg !3351, !tbaa !719
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3351
  %84 = load i8*, i8** %83, align 8, !dbg !3351, !tbaa !719
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3351
  %86 = load i8*, i8** %85, align 8, !dbg !3351, !tbaa !719
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3351
  br label %146, !dbg !3352

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #10, !dbg !3353
  %90 = load i8*, i8** %4, align 8, !dbg !3353, !tbaa !719
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3353
  %92 = load i8*, i8** %91, align 8, !dbg !3353, !tbaa !719
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3353
  %94 = load i8*, i8** %93, align 8, !dbg !3353, !tbaa !719
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3353
  %96 = load i8*, i8** %95, align 8, !dbg !3353, !tbaa !719
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3353
  %98 = load i8*, i8** %97, align 8, !dbg !3353, !tbaa !719
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3353
  %100 = load i8*, i8** %99, align 8, !dbg !3353, !tbaa !719
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3353
  %102 = load i8*, i8** %101, align 8, !dbg !3353, !tbaa !719
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3353
  %104 = load i8*, i8** %103, align 8, !dbg !3353, !tbaa !719
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3353
  br label %146, !dbg !3354

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #10, !dbg !3355
  %108 = load i8*, i8** %4, align 8, !dbg !3355, !tbaa !719
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3355
  %110 = load i8*, i8** %109, align 8, !dbg !3355, !tbaa !719
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3355
  %112 = load i8*, i8** %111, align 8, !dbg !3355, !tbaa !719
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3355
  %114 = load i8*, i8** %113, align 8, !dbg !3355, !tbaa !719
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3355
  %116 = load i8*, i8** %115, align 8, !dbg !3355, !tbaa !719
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3355
  %118 = load i8*, i8** %117, align 8, !dbg !3355, !tbaa !719
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3355
  %120 = load i8*, i8** %119, align 8, !dbg !3355, !tbaa !719
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3355
  %122 = load i8*, i8** %121, align 8, !dbg !3355, !tbaa !719
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3355
  %124 = load i8*, i8** %123, align 8, !dbg !3355, !tbaa !719
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3355
  br label %146, !dbg !3356

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #10, !dbg !3357
  %128 = load i8*, i8** %4, align 8, !dbg !3357, !tbaa !719
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3357
  %130 = load i8*, i8** %129, align 8, !dbg !3357, !tbaa !719
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3357
  %132 = load i8*, i8** %131, align 8, !dbg !3357, !tbaa !719
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3357
  %134 = load i8*, i8** %133, align 8, !dbg !3357, !tbaa !719
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3357
  %136 = load i8*, i8** %135, align 8, !dbg !3357, !tbaa !719
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3357
  %138 = load i8*, i8** %137, align 8, !dbg !3357, !tbaa !719
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3357
  %140 = load i8*, i8** %139, align 8, !dbg !3357, !tbaa !719
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3357
  %142 = load i8*, i8** %141, align 8, !dbg !3357, !tbaa !719
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3357
  %144 = load i8*, i8** %143, align 8, !dbg !3357, !tbaa !719
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3357
  br label %146, !dbg !3358

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3360 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3364, metadata !712), !dbg !3370
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3365, metadata !712), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3366, metadata !712), !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3367, metadata !712), !dbg !3373
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3368, metadata !712), !dbg !3374
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3369, metadata !712), !dbg !3375
  br label %6, !dbg !3376

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3369, metadata !712), !dbg !3375
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3378
  %9 = load i8*, i8** %8, align 8, !dbg !3378, !tbaa !719
  %10 = icmp eq i8* %9, null, !dbg !3380
  %11 = add i64 %7, 1, !dbg !3381
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3369, metadata !712), !dbg !3375
  br i1 %10, label %12, label %6, !dbg !3380, !llvm.loop !3382

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3384
  ret void, !dbg !3385
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3386 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3397, metadata !712), !dbg !3405
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3398, metadata !712), !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3399, metadata !712), !dbg !3407
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3400, metadata !712), !dbg !3408
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3401, metadata !712), !dbg !3409
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3410
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3410
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3403, metadata !712), !dbg !3411
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %11 = load i32, i32* %8, align 8, !dbg !3413
  %12 = icmp ult i32 %11, 41, !dbg !3413
  br i1 %12, label %13, label %18, !dbg !3413

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3413
  %15 = sext i32 %11 to i64, !dbg !3413
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3413
  %17 = add i32 %11, 8, !dbg !3413
  store i32 %17, i32* %8, align 8, !dbg !3413
  br label %21, !dbg !3413

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3413
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3413
  store i8* %20, i8** %10, align 8, !dbg !3413
  br label %21, !dbg !3413

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3413
  %25 = load i8*, i8** %24, align 8, !dbg !3413
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3416
  store i8* %25, i8** %26, align 16, !dbg !3417, !tbaa !719
  %27 = icmp eq i8* %25, null, !dbg !3418
  br i1 %27, label %30, label %28, !dbg !3419

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %29 = icmp ult i32 %22, 41, !dbg !3413
  br i1 %29, label %35, label %32, !dbg !3413

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3420
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3421
  ret void, !dbg !3421

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3413
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3413
  store i8* %34, i8** %10, align 8, !dbg !3413
  br label %40, !dbg !3413

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3413
  %37 = sext i32 %22 to i64, !dbg !3413
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3413
  %39 = add i32 %22, 8, !dbg !3413
  store i32 %39, i32* %8, align 8, !dbg !3413
  br label %40, !dbg !3413

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3413
  %44 = load i8*, i8** %43, align 8, !dbg !3413
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3416
  store i8* %44, i8** %45, align 8, !dbg !3417, !tbaa !719
  %46 = icmp eq i8* %44, null, !dbg !3418
  br i1 %46, label %30, label %47, !dbg !3419

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %48 = icmp ult i32 %41, 41, !dbg !3413
  br i1 %48, label %52, label %49, !dbg !3413

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3413
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3413
  store i8* %51, i8** %10, align 8, !dbg !3413
  br label %57, !dbg !3413

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3413
  %54 = sext i32 %41 to i64, !dbg !3413
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3413
  %56 = add i32 %41, 8, !dbg !3413
  store i32 %56, i32* %8, align 8, !dbg !3413
  br label %57, !dbg !3413

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3413
  %61 = load i8*, i8** %60, align 8, !dbg !3413
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3416
  store i8* %61, i8** %62, align 16, !dbg !3417, !tbaa !719
  %63 = icmp eq i8* %61, null, !dbg !3418
  br i1 %63, label %30, label %64, !dbg !3419

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %65 = icmp ult i32 %58, 41, !dbg !3413
  br i1 %65, label %69, label %66, !dbg !3413

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3413
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3413
  store i8* %68, i8** %10, align 8, !dbg !3413
  br label %74, !dbg !3413

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3413
  %71 = sext i32 %58 to i64, !dbg !3413
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3413
  %73 = add i32 %58, 8, !dbg !3413
  store i32 %73, i32* %8, align 8, !dbg !3413
  br label %74, !dbg !3413

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3413
  %78 = load i8*, i8** %77, align 8, !dbg !3413
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3416
  store i8* %78, i8** %79, align 8, !dbg !3417, !tbaa !719
  %80 = icmp eq i8* %78, null, !dbg !3418
  br i1 %80, label %30, label %81, !dbg !3419

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %82 = icmp ult i32 %75, 41, !dbg !3413
  br i1 %82, label %86, label %83, !dbg !3413

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3413
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3413
  store i8* %85, i8** %10, align 8, !dbg !3413
  br label %91, !dbg !3413

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3413
  %88 = sext i32 %75 to i64, !dbg !3413
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3413
  %90 = add i32 %75, 8, !dbg !3413
  store i32 %90, i32* %8, align 8, !dbg !3413
  br label %91, !dbg !3413

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3413
  %95 = load i8*, i8** %94, align 8, !dbg !3413
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3416
  store i8* %95, i8** %96, align 16, !dbg !3417, !tbaa !719
  %97 = icmp eq i8* %95, null, !dbg !3418
  br i1 %97, label %30, label %98, !dbg !3419

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %99 = icmp ult i32 %92, 41, !dbg !3413
  br i1 %99, label %103, label %100, !dbg !3413

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3413
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3413
  store i8* %102, i8** %10, align 8, !dbg !3413
  br label %108, !dbg !3413

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3413
  %105 = sext i32 %92 to i64, !dbg !3413
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3413
  %107 = add i32 %92, 8, !dbg !3413
  store i32 %107, i32* %8, align 8, !dbg !3413
  br label %108, !dbg !3413

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3413
  %111 = load i8*, i8** %110, align 8, !dbg !3413
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3416
  store i8* %111, i8** %112, align 8, !dbg !3417, !tbaa !719
  %113 = icmp eq i8* %111, null, !dbg !3418
  br i1 %113, label %30, label %114, !dbg !3419

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %115 = load i8*, i8** %10, align 8, !dbg !3413
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3413
  store i8* %116, i8** %10, align 8, !dbg !3413
  %117 = bitcast i8* %115 to i8**, !dbg !3413
  %118 = load i8*, i8** %117, align 8, !dbg !3413
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3416
  store i8* %118, i8** %119, align 16, !dbg !3417, !tbaa !719
  %120 = icmp eq i8* %118, null, !dbg !3418
  br i1 %120, label %30, label %121, !dbg !3419

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %122 = load i8*, i8** %10, align 8, !dbg !3413
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3413
  store i8* %123, i8** %10, align 8, !dbg !3413
  %124 = bitcast i8* %122 to i8**, !dbg !3413
  %125 = load i8*, i8** %124, align 8, !dbg !3413
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3416
  store i8* %125, i8** %126, align 8, !dbg !3417, !tbaa !719
  %127 = icmp eq i8* %125, null, !dbg !3418
  br i1 %127, label %30, label %128, !dbg !3419

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %129 = load i8*, i8** %10, align 8, !dbg !3413
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3413
  store i8* %130, i8** %10, align 8, !dbg !3413
  %131 = bitcast i8* %129 to i8**, !dbg !3413
  %132 = load i8*, i8** %131, align 8, !dbg !3413
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3416
  store i8* %132, i8** %133, align 16, !dbg !3417, !tbaa !719
  %134 = icmp eq i8* %132, null, !dbg !3418
  br i1 %134, label %30, label %135, !dbg !3419

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3402, metadata !712), !dbg !3412
  %136 = load i8*, i8** %10, align 8, !dbg !3413
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3413
  store i8* %137, i8** %10, align 8, !dbg !3413
  %138 = bitcast i8* %136 to i8**, !dbg !3413
  %139 = load i8*, i8** %138, align 8, !dbg !3413
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3416
  store i8* %139, i8** %140, align 8, !dbg !3417, !tbaa !719
  %141 = icmp eq i8* %139, null, !dbg !3418
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3402, metadata !712), !dbg !3412
  %142 = select i1 %141, i64 9, i64 10, !dbg !3419
  br label %30, !dbg !3419
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3422 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3426, metadata !712), !dbg !3436
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3427, metadata !712), !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3428, metadata !712), !dbg !3438
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3429, metadata !712), !dbg !3439
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3440
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3440
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3430, metadata !712), !dbg !3441
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3442
  call void @llvm.va_start(i8* nonnull %6), !dbg !3442
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3443
  call void @llvm.va_end(i8* nonnull %6), !dbg !3444
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3445
  ret void, !dbg !3445
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3446 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.94, i64 0, i64 0), i32 5) #10, !dbg !3447
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.95, i64 0, i64 0)) #10, !dbg !3447
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #10, !dbg !3448
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.98, i64 0, i64 0)) #10, !dbg !3448
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.99, i64 0, i64 0), i32 5) #10, !dbg !3449
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3449, !tbaa !719
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3449
  ret void, !dbg !3450
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3451 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3455, metadata !712), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3456, metadata !712), !dbg !3458
  %3 = udiv i64 9223372036854775807, %1, !dbg !3459
  %4 = icmp ult i64 %3, %0, !dbg !3459
  br i1 %4, label %5, label %6, !dbg !3461

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3462
  unreachable, !dbg !3462

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3464, metadata !712) #10, !dbg !3471
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3470, metadata !712) #10, !dbg !3474
  %9 = icmp eq i8* %8, null, !dbg !3475
  %10 = icmp ne i64 %7, 0, !dbg !3477
  %11 = and i1 %10, %9, !dbg !3478
  br i1 %11, label %12, label %13, !dbg !3478

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3479
  unreachable, !dbg !3479

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3480
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3465 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3464, metadata !712), !dbg !3481
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3482
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3470, metadata !712), !dbg !3483
  %3 = icmp eq i8* %2, null, !dbg !3484
  %4 = icmp ne i64 %0, 0, !dbg !3485
  %5 = and i1 %4, %3, !dbg !3486
  br i1 %5, label %6, label %7, !dbg !3486

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3487
  unreachable, !dbg !3487

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3488
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3489 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3493, metadata !712), !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3494, metadata !712), !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3495, metadata !712), !dbg !3498
  %4 = udiv i64 9223372036854775807, %2, !dbg !3499
  %5 = icmp ult i64 %4, %1, !dbg !3499
  br i1 %5, label %6, label %7, !dbg !3501

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3502
  unreachable, !dbg !3502

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3504, metadata !712) #10, !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3509, metadata !712) #10, !dbg !3512
  %9 = icmp eq i64 %8, 0, !dbg !3513
  %10 = icmp ne i8* %0, null, !dbg !3515
  %11 = and i1 %10, %9, !dbg !3516
  br i1 %11, label %12, label %13, !dbg !3516

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3517
  br label %19, !dbg !3519

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3520
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3504, metadata !712) #10, !dbg !3510
  %15 = icmp eq i8* %14, null, !dbg !3521
  %16 = icmp ne i64 %8, 0, !dbg !3523
  %17 = and i1 %16, %15, !dbg !3524
  br i1 %17, label %18, label %19, !dbg !3524

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3525
  unreachable, !dbg !3525

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3526
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3505 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3504, metadata !712), !dbg !3527
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3509, metadata !712), !dbg !3528
  %3 = icmp eq i64 %1, 0, !dbg !3529
  %4 = icmp ne i8* %0, null, !dbg !3530
  %5 = and i1 %4, %3, !dbg !3531
  br i1 %5, label %6, label %7, !dbg !3531

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3532
  br label %13, !dbg !3533

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3534
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3504, metadata !712), !dbg !3527
  %9 = icmp eq i8* %8, null, !dbg !3535
  %10 = icmp ne i64 %1, 0, !dbg !3536
  %11 = and i1 %10, %9, !dbg !3537
  br i1 %11, label %12, label %13, !dbg !3537

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3538
  unreachable, !dbg !3538

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3539
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !672 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !677, metadata !712), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !678, metadata !712), !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !679, metadata !712), !dbg !3542
  %4 = load i64, i64* %1, align 8, !dbg !3543, !tbaa !2556
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !680, metadata !712), !dbg !3544
  %5 = icmp eq i8* %0, null, !dbg !3545
  br i1 %5, label %6, label %13, !dbg !3547

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3548
  br i1 %7, label %8, label %17, !dbg !3551

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3552
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !680, metadata !712), !dbg !3544
  %10 = icmp ugt i64 %2, 128, !dbg !3554
  %11 = zext i1 %10 to i64, !dbg !3554
  %12 = add nuw nsw i64 %9, %11, !dbg !3555
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !680, metadata !712), !dbg !3544
  br label %17, !dbg !3556

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3557
  %15 = icmp ugt i64 %14, %4, !dbg !3560
  br i1 %15, label %20, label %16, !dbg !3561

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3562
  unreachable, !dbg !3562

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !680, metadata !712), !dbg !3544
  store i64 %18, i64* %1, align 8, !dbg !3563, !tbaa !2556
  %19 = mul i64 %18, %2, !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3504, metadata !712) #10, !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3509, metadata !712) #10, !dbg !3567
  br label %27, !dbg !3568

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3569
  %22 = add i64 %4, 1, !dbg !3570
  %23 = add i64 %22, %21, !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !680, metadata !712), !dbg !3544
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !680, metadata !712), !dbg !3544
  store i64 %23, i64* %1, align 8, !dbg !3563, !tbaa !2556
  %24 = mul i64 %23, %2, !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3504, metadata !712) #10, !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3509, metadata !712) #10, !dbg !3567
  %25 = icmp eq i64 %24, 0, !dbg !3572
  br i1 %25, label %26, label %27, !dbg !3568

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3573
  br label %34, !dbg !3574

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3504, metadata !712) #10, !dbg !3565
  %30 = icmp eq i8* %29, null, !dbg !3576
  %31 = icmp ne i64 %28, 0, !dbg !3577
  %32 = and i1 %31, %30, !dbg !3578
  br i1 %32, label %33, label %34, !dbg !3578

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3579
  unreachable, !dbg !3579

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3580
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3581 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3583, metadata !712), !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3464, metadata !712) #10, !dbg !3585
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3587
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3470, metadata !712) #10, !dbg !3588
  %3 = icmp eq i8* %2, null, !dbg !3589
  %4 = icmp ne i64 %0, 0, !dbg !3590
  %5 = and i1 %4, %3, !dbg !3591
  br i1 %5, label %6, label %7, !dbg !3591

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3592
  unreachable, !dbg !3592

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3593
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3594 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3598, metadata !712), !dbg !3600
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3599, metadata !712), !dbg !3601
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !677, metadata !712) #10, !dbg !3602
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !678, metadata !712) #10, !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !679, metadata !712) #10, !dbg !3605
  %3 = load i64, i64* %1, align 8, !dbg !3606, !tbaa !2556
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !680, metadata !712) #10, !dbg !3607
  %4 = icmp eq i8* %0, null, !dbg !3608
  br i1 %4, label %5, label %8, !dbg !3609

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !680, metadata !712) #10, !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !680, metadata !712) #10, !dbg !3607
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3611
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !680, metadata !712) #10, !dbg !3607
  store i64 %7, i64* %1, align 8, !dbg !3612, !tbaa !2556
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3504, metadata !712) #10, !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3509, metadata !712) #10, !dbg !3615
  br label %17, !dbg !3616

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3617
  br i1 %9, label %11, label %10, !dbg !3618

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3619
  unreachable, !dbg !3619

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3620
  %13 = add i64 %3, 1, !dbg !3621
  %14 = add i64 %13, %12, !dbg !3622
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !680, metadata !712) #10, !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !680, metadata !712) #10, !dbg !3607
  store i64 %14, i64* %1, align 8, !dbg !3612, !tbaa !2556
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3504, metadata !712) #10, !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3509, metadata !712) #10, !dbg !3615
  %15 = icmp eq i64 %14, 0, !dbg !3623
  br i1 %15, label %16, label %17, !dbg !3616

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3624
  br label %24, !dbg !3625

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3626
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3504, metadata !712) #10, !dbg !3613
  %20 = icmp eq i8* %19, null, !dbg !3627
  %21 = icmp ne i64 %18, 0, !dbg !3628
  %22 = and i1 %21, %20, !dbg !3629
  br i1 %22, label %23, label %24, !dbg !3629

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3630
  unreachable, !dbg !3630

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3631
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3632 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3634, metadata !712), !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3464, metadata !712) #10, !dbg !3636
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3638
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3470, metadata !712) #10, !dbg !3639
  %3 = icmp eq i8* %2, null, !dbg !3640
  %4 = icmp ne i64 %0, 0, !dbg !3641
  %5 = and i1 %4, %3, !dbg !3642
  br i1 %5, label %6, label %7, !dbg !3642

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3643
  unreachable, !dbg !3643

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3644
  ret i8* %2, !dbg !3645
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3646 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3648, metadata !712), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3649, metadata !712), !dbg !3652
  %3 = udiv i64 9223372036854775807, %1, !dbg !3653
  %4 = icmp ult i64 %3, %0, !dbg !3653
  br i1 %4, label %8, label %5, !dbg !3655

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3656
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3650, metadata !712), !dbg !3657
  %7 = icmp eq i8* %6, null, !dbg !3658
  br i1 %7, label %8, label %9, !dbg !3659

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3660
  unreachable, !dbg !3660

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3661
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3662 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !712), !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3665, metadata !712), !dbg !3667
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3464, metadata !712) #10, !dbg !3668
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3670
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3470, metadata !712) #10, !dbg !3671
  %4 = icmp eq i8* %3, null, !dbg !3672
  %5 = icmp ne i64 %1, 0, !dbg !3673
  %6 = and i1 %5, %4, !dbg !3674
  br i1 %6, label %7, label %8, !dbg !3674

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3675
  unreachable, !dbg !3675

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3676
  ret i8* %3, !dbg !3677
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3678 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3680, metadata !712), !dbg !3681
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3682
  %3 = add i64 %2, 1, !dbg !3683
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !712) #10, !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3665, metadata !712) #10, !dbg !3686
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3464, metadata !712) #10, !dbg !3687
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3689
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3470, metadata !712) #10, !dbg !3690
  %5 = icmp eq i8* %4, null, !dbg !3691
  %6 = icmp ne i64 %3, 0, !dbg !3692
  %7 = and i1 %6, %5, !dbg !3693
  br i1 %7, label %8, label %9, !dbg !3693

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3694
  unreachable, !dbg !3694

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3695
  ret i8* %4, !dbg !3696
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3697 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3699, !tbaa !817
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #10, !dbg !3700
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #10, !dbg !3701
  tail call void @abort() #15, !dbg !3702
  unreachable, !dbg !3702
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3703 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3706, metadata !712), !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3707, metadata !712), !dbg !3713
  %3 = icmp eq i64 %0, 0, !dbg !3714
  %4 = icmp eq i64 %1, 0, !dbg !3715
  %5 = or i1 %3, %4, !dbg !3716
  br i1 %5, label %12, label %6, !dbg !3716

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3717
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3709, metadata !712), !dbg !3718
  %8 = udiv i64 %7, %1, !dbg !3719
  %9 = icmp eq i64 %8, %0, !dbg !3721
  br i1 %9, label %12, label %10, !dbg !3722

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #16, !dbg !3723
  store i32 12, i32* %11, align 4, !dbg !3725, !tbaa !817
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3706, metadata !712), !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3707, metadata !712), !dbg !3713
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3726
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3708, metadata !712), !dbg !3727
  br label %16, !dbg !3728

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3729
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3730 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3747, metadata !712), !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3748, metadata !712), !dbg !3757
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3749, metadata !712), !dbg !3758
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3750, metadata !712), !dbg !3759
  %6 = bitcast i32* %5 to i8*, !dbg !3760
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3760
  %7 = icmp eq i32* %0, null, !dbg !3761
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3747, metadata !712), !dbg !3756
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3763
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3747, metadata !712), !dbg !3756
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3764
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3751, metadata !712), !dbg !3765
  %10 = icmp ugt i64 %9, -3, !dbg !3766
  %11 = icmp ne i64 %2, 0, !dbg !3767
  %12 = and i1 %11, %10, !dbg !3768
  br i1 %12, label %13, label %18, !dbg !3768

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3769
  br i1 %14, label %18, label %15, !dbg !3770

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3771, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3753, metadata !712), !dbg !3772
  %17 = zext i8 %16 to i32, !dbg !3773
  store i32 %17, i32* %8, align 4, !dbg !3774, !tbaa !817
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3775
  ret i64 %19, !dbg !3775
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3776 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3821, metadata !712), !dbg !3826
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3827
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3828, metadata !712), !dbg !3832
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3834
  %4 = load i32, i32* %3, align 8, !dbg !3834, !tbaa !3835
  %5 = and i32 %4, 32, !dbg !3834
  %6 = icmp eq i32 %5, 0, !dbg !3837
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3838
  %8 = icmp ne i32 %7, 0, !dbg !3839
  br i1 %6, label %9, label %19, !dbg !3840

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3842
  %11 = xor i1 %8, true, !dbg !3843
  %12 = or i1 %10, %11, !dbg !3843
  %13 = sext i1 %8 to i32, !dbg !3843
  br i1 %12, label %22, label %14, !dbg !3843

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #16, !dbg !3844
  %16 = load i32, i32* %15, align 4, !dbg !3844, !tbaa !817
  %17 = icmp ne i32 %16, 9, !dbg !3845
  %18 = sext i1 %17 to i32, !dbg !3846
  br label %22, !dbg !3846

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3847

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #16, !dbg !3849
  store i32 0, i32* %21, align 4, !dbg !3851, !tbaa !817
  br label %22, !dbg !3849

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3852
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3853 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3858, metadata !712), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3859, metadata !712), !dbg !3862
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3863
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3860, metadata !712), !dbg !3864
  %3 = icmp eq i8* %2, null, !dbg !3865
  br i1 %3, label %11, label %4, !dbg !3867

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0)) #14, !dbg !3868
  %6 = icmp eq i32 %5, 0, !dbg !3873
  br i1 %6, label %10, label %7, !dbg !3874

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0)) #14, !dbg !3875
  %9 = icmp eq i32 %8, 0, !dbg !3876
  br i1 %9, label %10, label %11, !dbg !3877

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3859, metadata !712), !dbg !3862
  br label %11, !dbg !3878

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3879
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3880 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3886, metadata !712), !dbg !3960
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3953, metadata !712), !dbg !3963
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3964
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3884, metadata !712), !dbg !3965
  %4 = icmp eq i8* %3, null, !dbg !3966
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), i8* %3, !dbg !3968
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3884, metadata !712), !dbg !3965
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3969, !tbaa !719
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3900, metadata !712) #10, !dbg !3970
  %7 = icmp eq i8* %6, null, !dbg !3971
  br i1 %7, label %8, label %123, !dbg !3972

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.125, i64 0, i64 0)) #10, !dbg !3973
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3901, metadata !712) #10, !dbg !3974
  %10 = icmp eq i8* %9, null, !dbg !3975
  br i1 %10, label %14, label %11, !dbg !3977

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3978, !tbaa !1141
  %13 = icmp eq i8 %12, 0, !dbg !3979
  br i1 %13, label %14, label %15, !dbg !3980

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3981

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.126, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3901, metadata !712) #10, !dbg !3974
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3982
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3904, metadata !712) #10, !dbg !3983
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3906, metadata !712) #10, !dbg !3984
  %18 = icmp eq i64 %17, 0, !dbg !3985
  br i1 %18, label %24, label %19, !dbg !3986

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3987
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3987
  %22 = load i8, i8* %21, align 1, !dbg !3987, !tbaa !1141
  %23 = icmp ne i8 %22, 47, !dbg !3987
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3988
  %27 = add i64 %17, 14, !dbg !3989
  %28 = add i64 %27, %26, !dbg !3990
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3991
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3903, metadata !712) #10, !dbg !3992
  %30 = icmp eq i8* %29, null, !dbg !3993
  br i1 %30, label %121, label %31, !dbg !3993

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3994
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3997

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3998, !tbaa !1141
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4000
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.127, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4001
  br label %37, !dbg !4002

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4000
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.127, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4001
  br label %37, !dbg !4002

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3908, metadata !712) #10, !dbg !4004
  %39 = icmp slt i32 %38, 0, !dbg !4005
  br i1 %39, label %119, label %40, !dbg !4006

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.128, i64 0, i64 0)) #10, !dbg !4007
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3909, metadata !712) #10, !dbg !4008
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4009
  br i1 %42, label %43, label %45, !dbg !4010

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !4011
  br label %119, !dbg !4013

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3950, metadata !712) #10, !dbg !4014
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3951, metadata !712) #10, !dbg !4015
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4016

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4017

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3950, metadata !712) #10, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3951, metadata !712) #10, !dbg !4015
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4017
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4018
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4019, metadata !712) #10, !dbg !4024
  %54 = load i8*, i8** %48, align 8, !dbg !4026, !tbaa !4027
  %55 = load i8*, i8** %49, align 8, !dbg !4026, !tbaa !4028
  %56 = icmp ult i8* %54, %55, !dbg !4026
  br i1 %56, label %59, label %57, !dbg !4026, !prof !4029

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4026
  br label %63, !dbg !4026

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4026
  store i8* %60, i8** %48, align 8, !dbg !4026, !tbaa !4027
  %61 = load i8, i8* %54, align 1, !dbg !4026, !tbaa !1141
  %62 = zext i8 %61 to i32, !dbg !4026
  br label %63, !dbg !4026

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4026
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3952, metadata !712) #10, !dbg !4030
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4031, !llvm.loop !4032

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4037

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4019, metadata !712) #10, !dbg !4039
  %67 = load i8*, i8** %48, align 8, !dbg !4037, !tbaa !4027
  %68 = load i8*, i8** %49, align 8, !dbg !4037, !tbaa !4028
  %69 = icmp ult i8* %67, %68, !dbg !4037
  br i1 %69, label %72, label %70, !dbg !4037, !prof !4029

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4037
  br label %76, !dbg !4037

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4037
  store i8* %73, i8** %48, align 8, !dbg !4037, !tbaa !4027
  %74 = load i8, i8* %67, align 1, !dbg !4037, !tbaa !1141
  %75 = zext i8 %74 to i32, !dbg !4037
  br label %76, !dbg !4037

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4037
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3952, metadata !712) #10, !dbg !4030
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4040, !llvm.loop !4041

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !4044
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.129, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !4045
  %81 = icmp slt i32 %80, 2, !dbg !4047
  br i1 %81, label %112, label %82, !dbg !4048

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3957, metadata !712) #10, !dbg !4050
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4051
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3958, metadata !712) #10, !dbg !4052
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3959, metadata !712) #10, !dbg !4053
  %85 = icmp eq i64 %51, 0, !dbg !4054
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4056

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3951, metadata !712) #10, !dbg !4015
  %90 = add i64 %87, 2, !dbg !4057
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3950, metadata !712) #10, !dbg !4014
  br label %96, !dbg !4060

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4061
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3951, metadata !712) #10, !dbg !4015
  %94 = add i64 %93, 1, !dbg !4063
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3950, metadata !712) #10, !dbg !4014
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3950, metadata !712) #10, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3951, metadata !712) #10, !dbg !4015
  %99 = icmp eq i8* %98, null, !dbg !4065
  br i1 %99, label %100, label %102, !dbg !4067

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3951, metadata !712) #10, !dbg !4015
  call void @free(i8* %52) #10, !dbg !4068
  br label %112, !dbg !4070

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4071
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4071
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4072
  %104 = xor i64 %84, -1, !dbg !4073
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4073
  %106 = xor i64 %83, -1, !dbg !4074
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4074
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4075, metadata !712) #10, !dbg !4079
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4078, metadata !712) #10, !dbg !4079
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !4081
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !4082
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4075, metadata !712) #10, !dbg !4083
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4078, metadata !712) #10, !dbg !4083
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !4085
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3950, metadata !712) #10, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3951, metadata !712) #10, !dbg !4015
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4071
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4071
  br label %50, !dbg !4087, !llvm.loop !4041

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4071
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4071
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4088
  %116 = icmp eq i64 %113, 0, !dbg !4089
  br i1 %116, label %119, label %117, !dbg !4091

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4092
  store i8 0, i8* %118, align 1, !dbg !4094, !tbaa !1141
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3900, metadata !712) #10, !dbg !3970
  call void @free(i8* %29) #10, !dbg !4095
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3900, metadata !712) #10, !dbg !3970
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4096, !tbaa !719
  br label %123, !dbg !4097

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3900, metadata !712) #10, !dbg !3970
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3885, metadata !712), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3885, metadata !712), !dbg !4098
  %125 = load i8, i8* %124, align 1, !dbg !4099, !tbaa !1141
  %126 = icmp eq i8 %125, 0, !dbg !4101
  br i1 %126, label %152, label %127, !dbg !4102

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4103

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3885, metadata !712), !dbg !4098
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4103
  %132 = icmp eq i32 %131, 0, !dbg !4105
  br i1 %132, label %139, label %133, !dbg !4106

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4107
  br i1 %134, label %135, label %143, !dbg !4108

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4109
  %137 = load i8, i8* %136, align 1, !dbg !4109, !tbaa !1141
  %138 = icmp eq i8 %137, 0, !dbg !4110
  br i1 %138, label %139, label %143, !dbg !4111

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4112
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4114
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4115
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3884, metadata !712), !dbg !3965
  br label %152, !dbg !4116

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4117
  %145 = add i64 %144, 1, !dbg !4118
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4119
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3885, metadata !712), !dbg !4098
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4120
  %148 = add i64 %147, 1, !dbg !4121
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4122
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3885, metadata !712), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3885, metadata !712), !dbg !4098
  %150 = load i8, i8* %149, align 1, !dbg !4099, !tbaa !1141
  %151 = icmp eq i8 %150, 0, !dbg !4101
  br i1 %151, label %152, label %128, !dbg !4102, !llvm.loop !4123

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3884, metadata !712), !dbg !3965
  %154 = load i8, i8* %153, align 1, !dbg !4125, !tbaa !1141
  %155 = icmp eq i8 %154, 0, !dbg !4127
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %153, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3884, metadata !712), !dbg !3965
  ret i8* %156, !dbg !4129
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

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4130 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4175, metadata !712), !dbg !4179
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4176, metadata !712), !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4178, metadata !712), !dbg !4181
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4177, metadata !712), !dbg !4183
  %3 = icmp slt i32 %2, 0, !dbg !4184
  br i1 %3, label %4, label %6, !dbg !4186

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4187
  br label %24, !dbg !4188

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4189
  %8 = icmp eq i32 %7, 0, !dbg !4189
  br i1 %8, label %13, label %9, !dbg !4191

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4192
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4193
  %12 = icmp eq i64 %11, -1, !dbg !4194
  br i1 %12, label %16, label %13, !dbg !4195

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4196
  %15 = icmp eq i32 %14, 0, !dbg !4196
  br i1 %15, label %16, label %18, !dbg !4197

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4176, metadata !712), !dbg !4180
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4178, metadata !712), !dbg !4181
  br label %24, !dbg !4199

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #16, !dbg !4200
  %20 = load i32, i32* %19, align 4, !dbg !4200, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4176, metadata !712), !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4176, metadata !712), !dbg !4180
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4178, metadata !712), !dbg !4181
  %22 = icmp eq i32 %20, 0, !dbg !4201
  br i1 %22, label %24, label %23, !dbg !4199

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4203, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4178, metadata !712), !dbg !4181
  br label %24, !dbg !4205

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4206
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4207 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4252, metadata !712), !dbg !4253
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4254
  br i1 %2, label %6, label %3, !dbg !4256

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4257
  %5 = icmp eq i32 %4, 0, !dbg !4257
  br i1 %5, label %6, label %8, !dbg !4258

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4259
  br label %17, !dbg !4260

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4261, metadata !712) #10, !dbg !4266
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4268
  %10 = load i32, i32* %9, align 8, !dbg !4268, !tbaa !3835
  %11 = and i32 %10, 256, !dbg !4270
  %12 = icmp eq i32 %11, 0, !dbg !4270
  br i1 %12, label %15, label %13, !dbg !4271

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4272
  br label %15, !dbg !4272

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4273
  br label %17, !dbg !4274

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4275
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4276 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4321, metadata !712), !dbg !4327
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4322, metadata !712), !dbg !4328
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4323, metadata !712), !dbg !4329
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4330
  %5 = load i8*, i8** %4, align 8, !dbg !4330, !tbaa !4028
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4331
  %7 = load i8*, i8** %6, align 8, !dbg !4331, !tbaa !4027
  %8 = icmp eq i8* %5, %7, !dbg !4332
  br i1 %8, label %9, label %28, !dbg !4333

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4334
  %11 = load i8*, i8** %10, align 8, !dbg !4334, !tbaa !4335
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4336
  %13 = load i8*, i8** %12, align 8, !dbg !4336, !tbaa !4337
  %14 = icmp eq i8* %11, %13, !dbg !4338
  br i1 %14, label %15, label %28, !dbg !4339

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4340
  %17 = load i8*, i8** %16, align 8, !dbg !4340, !tbaa !4341
  %18 = icmp eq i8* %17, null, !dbg !4342
  br i1 %18, label %19, label %28, !dbg !4343

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4344
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4345
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4324, metadata !712), !dbg !4346
  %22 = icmp eq i64 %21, -1, !dbg !4347
  br i1 %22, label %30, label %23, !dbg !4349

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4350
  %25 = load i32, i32* %24, align 8, !dbg !4351, !tbaa !3835
  %26 = and i32 %25, -17, !dbg !4351
  store i32 %26, i32* %24, align 8, !dbg !4351, !tbaa !3835
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4352
  store i64 %21, i64* %27, align 8, !dbg !4353, !tbaa !4354
  br label %30, !dbg !4355

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4356
  br label %30, !dbg !4357

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4358
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

!llvm.dbg.cu = !{!10, !165, !171, !179, !616, !619, !186, !193, !622, !642, !659, !260, !667, !684, !686, !688, !691, !693, !269, !695, !697, !699}
!llvm.ident = !{!701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701}
!llvm.module.flags = !{!702, !703, !704, !705, !706}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 548, type: !151, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 503, type: !4, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !84)
!3 = !DIFile(filename: "src/cat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !39, globals: !44)
!11 = !{!12, !26, !35}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!15 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!16 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!17 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!18 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!19 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!20 = !DIEnumerator(name: "c_quoting_style", value: 5)
!21 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!22 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!23 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!24 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!25 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 45, size: 32, elements: !28)
!27 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!30 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!31 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!32 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!33 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!34 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 73, size: 32, elements: !37)
!36 = !DIFile(filename: "src/ioblksize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!37 = !{!38}
!38 = !DIEnumerator(name: "IO_BUFSIZE", value: 131072)
!39 = !{!8, !40, !41}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 62, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!43 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !{!0, !45, !49, !51, !71, !73, !75, !77, !82}
!45 = !DIGlobalVariableExpression(var: !46)
!46 = distinct !DIGlobalVariable(name: "infile", scope: !10, file: !3, line: 52, type: !47, isLocal: true, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!49 = !DIGlobalVariableExpression(var: !50)
!50 = distinct !DIGlobalVariable(name: "input_desc", scope: !10, file: !3, line: 55, type: !6, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "infomap", scope: !53, file: !54, line: 632, type: !68, isLocal: true, isDefinition: true)
!53 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !54, file: !54, line: 630, type: !55, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !57)
!54 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !DISubroutineType(types: !56)
!56 = !{null, !47}
!57 = !{!58, !59, !60, !67}
!58 = !DILocalVariable(name: "program", arg: 1, scope: !53, file: !54, line: 630, type: !47)
!59 = !DILocalVariable(name: "node", scope: !53, file: !54, line: 642, type: !47)
!60 = !DILocalVariable(name: "map_prog", scope: !53, file: !54, line: 643, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !53, file: !54, line: 632, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !63, file: !54, line: 632, baseType: !47, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !63, file: !54, line: 632, baseType: !47, size: 64, offset: 64)
!67 = !DILocalVariable(name: "lc_messages", scope: !53, file: !54, line: 655, type: !47)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 896, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 7)
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "newlines2", scope: !10, file: !3, line: 79, type: !6, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "line_num_end", scope: !10, file: !3, line: 76, type: !8, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "line_num_start", scope: !10, file: !3, line: 73, type: !8, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "line_buf", scope: !10, file: !3, line: 61, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 20)
!82 = !DIGlobalVariableExpression(var: !83)
!83 = distinct !DIGlobalVariable(name: "line_num_print", scope: !10, file: !3, line: 70, type: !8, isLocal: true, isDefinition: true)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !101, !104, !105, !106, !144, !145, !146, !147, !148, !149, !150}
!85 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 503, type: !6)
!86 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 503, type: !7)
!87 = !DILocalVariable(name: "outsize", scope: !2, file: !3, line: 506, type: !41)
!88 = !DILocalVariable(name: "insize", scope: !2, file: !3, line: 509, type: !41)
!89 = !DILocalVariable(name: "page_size", scope: !2, file: !3, line: 511, type: !41)
!90 = !DILocalVariable(name: "inbuf", scope: !2, file: !3, line: 514, type: !8)
!91 = !DILocalVariable(name: "outbuf", scope: !2, file: !3, line: 517, type: !8)
!92 = !DILocalVariable(name: "ok", scope: !2, file: !3, line: 519, type: !93)
!93 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!94 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 520, type: !6)
!95 = !DILocalVariable(name: "argind", scope: !2, file: !3, line: 523, type: !6)
!96 = !DILocalVariable(name: "out_dev", scope: !2, file: !3, line: 526, type: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !98, line: 60, baseType: !99)
!98 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !100, line: 133, baseType: !43)
!100 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !DILocalVariable(name: "out_ino", scope: !2, file: !3, line: 529, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !98, line: 48, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !100, line: 136, baseType: !43)
!104 = !DILocalVariable(name: "out_isreg", scope: !2, file: !3, line: 532, type: !93)
!105 = !DILocalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 535, type: !93)
!106 = !DILocalVariable(name: "stat_buf", scope: !2, file: !3, line: 537, type: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !108, line: 46, size: 1152, elements: !109)
!108 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!110, !111, !112, !114, !117, !119, !121, !122, !123, !126, !128, !130, !138, !139, !140}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !107, file: !108, line: 48, baseType: !99, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !107, file: !108, line: 53, baseType: !103, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !107, file: !108, line: 61, baseType: !113, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !100, line: 139, baseType: !43)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !107, file: !108, line: 62, baseType: !115, size: 32, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !100, line: 138, baseType: !116)
!116 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !107, file: !108, line: 64, baseType: !118, size: 32, offset: 224)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !100, line: 134, baseType: !116)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !107, file: !108, line: 65, baseType: !120, size: 32, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !100, line: 135, baseType: !116)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !107, file: !108, line: 67, baseType: !6, size: 32, offset: 288)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !107, file: !108, line: 69, baseType: !99, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !107, file: !108, line: 74, baseType: !124, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !100, line: 140, baseType: !125)
!125 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !107, file: !108, line: 78, baseType: !127, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !100, line: 162, baseType: !125)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !107, file: !108, line: 80, baseType: !129, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !100, line: 167, baseType: !125)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !107, file: !108, line: 91, baseType: !131, size: 128, offset: 576)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !132, line: 8, size: 128, elements: !133)
!132 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{!134, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !131, file: !132, line: 10, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !100, line: 148, baseType: !125)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !131, file: !132, line: 11, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !100, line: 184, baseType: !125)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !107, file: !108, line: 92, baseType: !131, size: 128, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !107, file: !108, line: 93, baseType: !131, size: 128, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !107, file: !108, line: 106, baseType: !141, size: 192, offset: 960)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 192, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 3)
!144 = !DILocalVariable(name: "number", scope: !2, file: !3, line: 540, type: !93)
!145 = !DILocalVariable(name: "number_nonblank", scope: !2, file: !3, line: 541, type: !93)
!146 = !DILocalVariable(name: "squeeze_blank", scope: !2, file: !3, line: 542, type: !93)
!147 = !DILocalVariable(name: "show_ends", scope: !2, file: !3, line: 543, type: !93)
!148 = !DILocalVariable(name: "show_nonprinting", scope: !2, file: !3, line: 544, type: !93)
!149 = !DILocalVariable(name: "show_tabs", scope: !2, file: !3, line: 545, type: !93)
!150 = !DILocalVariable(name: "file_open_mode", scope: !2, file: !3, line: 546, type: !6)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2560, elements: !161)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !154, line: 50, size: 256, elements: !155)
!154 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!155 = !{!156, !157, !158, !160}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !154, line: 52, baseType: !47, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !153, file: !154, line: 55, baseType: !6, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !153, file: !154, line: 56, baseType: !159, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !153, file: !154, line: 57, baseType: !6, size: 32, offset: 192)
!161 = !{!162}
!162 = !DISubrange(count: 10)
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "Version", scope: !165, file: !166, line: 2, type: !47, isLocal: false, isDefinition: true)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, globals: !168)
!166 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !{}
!168 = !{!163}
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "file_name", scope: !171, file: !176, line: 36, type: !47, isLocal: true, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, globals: !173)
!172 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !{!169, !174}
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !171, file: !176, line: 46, type: !93, isLocal: true, isDefinition: true)
!176 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "exit_failure", scope: !179, file: !182, line: 24, type: !183, isLocal: false, isDefinition: true)
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, globals: !181)
!180 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !{!177}
!182 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "program_name", scope: !186, file: !190, line: 33, type: !47, isLocal: false, isDefinition: true)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !188, globals: !189)
!187 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !{!40, !8}
!189 = !{!184}
!190 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !193, file: !221, line: 77, type: !254, isLocal: false, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !195, retainedTypes: !216, globals: !218)
!194 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !{!12, !196, !201}
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, size: 32, elements: !197)
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!199 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!200 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !202, line: 46, size: 32, elements: !203)
!202 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!204 = !DIEnumerator(name: "_ISupper", value: 256)
!205 = !DIEnumerator(name: "_ISlower", value: 512)
!206 = !DIEnumerator(name: "_ISalpha", value: 1024)
!207 = !DIEnumerator(name: "_ISdigit", value: 2048)
!208 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!209 = !DIEnumerator(name: "_ISspace", value: 8192)
!210 = !DIEnumerator(name: "_ISprint", value: 16384)
!211 = !DIEnumerator(name: "_ISgraph", value: 32768)
!212 = !DIEnumerator(name: "_ISblank", value: 1)
!213 = !DIEnumerator(name: "_IScntrl", value: 2)
!214 = !DIEnumerator(name: "_ISpunct", value: 4)
!215 = !DIEnumerator(name: "_ISalnum", value: 8)
!216 = !{!6, !217, !41, !8}
!217 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!218 = !{!191, !219, !224, !236, !238, !243, !250, !252}
!219 = !DIGlobalVariableExpression(var: !220)
!220 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !193, file: !221, line: 93, type: !222, isLocal: false, isDefinition: true)
!221 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 320, elements: !161)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!224 = !DIGlobalVariableExpression(var: !225)
!225 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !193, file: !221, line: 1043, type: !226, isLocal: false, isDefinition: true)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !221, line: 57, size: 448, elements: !227)
!227 = !{!228, !229, !230, !234, !235}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !226, file: !221, line: 60, baseType: !12, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !221, line: 63, baseType: !6, size: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !226, file: !221, line: 67, baseType: !231, size: 256, offset: 64)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 256, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !226, file: !221, line: 70, baseType: !47, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !226, file: !221, line: 73, baseType: !47, size: 64, offset: 384)
!236 = !DIGlobalVariableExpression(var: !237)
!237 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !193, file: !221, line: 108, type: !226, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "slot0", scope: !193, file: !221, line: 834, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 256)
!243 = !DIGlobalVariableExpression(var: !244)
!244 = distinct !DIGlobalVariable(name: "slotvec", scope: !193, file: !221, line: 837, type: !245, isLocal: true, isDefinition: true)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !221, line: 826, size: 128, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !246, file: !221, line: 828, baseType: !41, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !246, file: !221, line: 829, baseType: !8, size: 64, offset: 64)
!250 = !DIGlobalVariableExpression(var: !251)
!251 = distinct !DIGlobalVariable(name: "nslots", scope: !193, file: !221, line: 835, type: !6, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253)
!253 = distinct !DIGlobalVariable(name: "slotvec0", scope: !193, file: !221, line: 836, type: !246, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 704, elements: !256)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!256 = !{!257}
!257 = !DISubrange(count: 11)
!258 = !DIGlobalVariableExpression(var: !259)
!259 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !260, file: !263, line: 26, type: !264, isLocal: false, isDefinition: true)
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, globals: !262)
!261 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!262 = !{!258}
!263 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 376, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 47)
!267 = !DIGlobalVariableExpression(var: !268)
!268 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !269, file: !614, line: 120, type: !615, isLocal: true, isDefinition: true)
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !271, retainedTypes: !610, globals: !613)
!270 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!271 = !{!272}
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 41, size: 32, elements: !274)
!273 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!275 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!276 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!277 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!278 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!279 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!280 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!281 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!282 = !DIEnumerator(name: "DAY_1", value: 131079)
!283 = !DIEnumerator(name: "DAY_2", value: 131080)
!284 = !DIEnumerator(name: "DAY_3", value: 131081)
!285 = !DIEnumerator(name: "DAY_4", value: 131082)
!286 = !DIEnumerator(name: "DAY_5", value: 131083)
!287 = !DIEnumerator(name: "DAY_6", value: 131084)
!288 = !DIEnumerator(name: "DAY_7", value: 131085)
!289 = !DIEnumerator(name: "ABMON_1", value: 131086)
!290 = !DIEnumerator(name: "ABMON_2", value: 131087)
!291 = !DIEnumerator(name: "ABMON_3", value: 131088)
!292 = !DIEnumerator(name: "ABMON_4", value: 131089)
!293 = !DIEnumerator(name: "ABMON_5", value: 131090)
!294 = !DIEnumerator(name: "ABMON_6", value: 131091)
!295 = !DIEnumerator(name: "ABMON_7", value: 131092)
!296 = !DIEnumerator(name: "ABMON_8", value: 131093)
!297 = !DIEnumerator(name: "ABMON_9", value: 131094)
!298 = !DIEnumerator(name: "ABMON_10", value: 131095)
!299 = !DIEnumerator(name: "ABMON_11", value: 131096)
!300 = !DIEnumerator(name: "ABMON_12", value: 131097)
!301 = !DIEnumerator(name: "MON_1", value: 131098)
!302 = !DIEnumerator(name: "MON_2", value: 131099)
!303 = !DIEnumerator(name: "MON_3", value: 131100)
!304 = !DIEnumerator(name: "MON_4", value: 131101)
!305 = !DIEnumerator(name: "MON_5", value: 131102)
!306 = !DIEnumerator(name: "MON_6", value: 131103)
!307 = !DIEnumerator(name: "MON_7", value: 131104)
!308 = !DIEnumerator(name: "MON_8", value: 131105)
!309 = !DIEnumerator(name: "MON_9", value: 131106)
!310 = !DIEnumerator(name: "MON_10", value: 131107)
!311 = !DIEnumerator(name: "MON_11", value: 131108)
!312 = !DIEnumerator(name: "MON_12", value: 131109)
!313 = !DIEnumerator(name: "AM_STR", value: 131110)
!314 = !DIEnumerator(name: "PM_STR", value: 131111)
!315 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!316 = !DIEnumerator(name: "D_FMT", value: 131113)
!317 = !DIEnumerator(name: "T_FMT", value: 131114)
!318 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!319 = !DIEnumerator(name: "ERA", value: 131116)
!320 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!321 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!322 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!323 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!324 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!325 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!326 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!327 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!328 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!329 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!330 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!331 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!332 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!333 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!334 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!335 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!336 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!337 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!338 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!339 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!340 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!341 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!342 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!343 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!344 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!345 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!346 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!347 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!348 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!349 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!350 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!351 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!352 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!353 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!354 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!355 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!356 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!357 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!358 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!359 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!360 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!361 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!362 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!363 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!364 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!365 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!366 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!367 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!368 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!369 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!370 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!371 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!372 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!373 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!374 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!375 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!376 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!377 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!378 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!379 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!380 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!381 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!382 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!383 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!384 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!385 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!386 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!387 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!388 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!389 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!390 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!391 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!392 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!393 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!394 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!395 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!396 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!397 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!398 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!399 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!400 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!401 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!402 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!403 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!404 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!405 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!406 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!407 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!408 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!409 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!410 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!411 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!412 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!413 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!416 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!417 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!418 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!419 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!420 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!421 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!422 = !DIEnumerator(name: "CODESET", value: 14)
!423 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!424 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!425 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!426 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!478 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!479 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!494 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!495 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!496 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!497 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!498 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!499 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!500 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!501 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!502 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!503 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!504 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!505 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!506 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!507 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!508 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!509 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!510 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!511 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!512 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!513 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!514 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!515 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!516 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!533 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!534 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!537 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!538 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!539 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!540 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!541 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!542 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!543 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!544 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!545 = !DIEnumerator(name: "THOUSEP", value: 65537)
!546 = !DIEnumerator(name: "__GROUPING", value: 65538)
!547 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!548 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!549 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!550 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!551 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!552 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!553 = !DIEnumerator(name: "__YESSTR", value: 327682)
!554 = !DIEnumerator(name: "__NOSTR", value: 327683)
!555 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!556 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!557 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!558 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!559 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!560 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!561 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!562 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!563 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!565 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!566 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!567 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!568 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!569 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!570 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!571 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!572 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!577 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!578 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!579 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!580 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!581 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!582 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!583 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!584 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!585 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!586 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!587 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!588 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!589 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!590 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!591 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!608 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!609 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!610 = !{!40, !8, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!613 = !{!267}
!614 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !618)
!617 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = !{!26}
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !621)
!620 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = !{!47, !41}
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !624)
!623 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = !{!625}
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !627, file: !626, line: 62, size: 32, elements: !640)
!626 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!627 = distinct !DISubprogram(name: "safe_read", scope: !626, file: !626, line: 56, type: !628, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!41, !6, !40, !41}
!630 = !{!631, !632, !633, !634}
!631 = !DILocalVariable(name: "fd", arg: 1, scope: !627, file: !626, line: 56, type: !6)
!632 = !DILocalVariable(name: "buf", arg: 2, scope: !627, file: !626, line: 56, type: !40)
!633 = !DILocalVariable(name: "count", arg: 3, scope: !627, file: !626, line: 56, type: !41)
!634 = !DILocalVariable(name: "result", scope: !635, file: !626, line: 66, type: !638)
!635 = distinct !DILexicalBlock(scope: !636, file: !626, line: 65, column: 5)
!636 = distinct !DILexicalBlock(scope: !637, file: !626, line: 64, column: 3)
!637 = distinct !DILexicalBlock(scope: !627, file: !626, line: 64, column: 3)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !98, line: 109, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !100, line: 181, baseType: !125)
!640 = !{!641}
!641 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!642 = distinct !DICompileUnit(language: DW_LANG_C99, file: !643, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !644)
!643 = !DIFile(filename: "./lib/safe-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!644 = !{!645}
!645 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !646, file: !623, line: 62, size: 32, elements: !640)
!646 = distinct !DISubprogram(name: "safe_write", scope: !623, file: !623, line: 56, type: !647, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !651)
!647 = !DISubroutineType(types: !648)
!648 = !{!41, !6, !649, !41}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!651 = !{!652, !653, !654, !655}
!652 = !DILocalVariable(name: "fd", arg: 1, scope: !646, file: !623, line: 56, type: !6)
!653 = !DILocalVariable(name: "buf", arg: 2, scope: !646, file: !623, line: 56, type: !649)
!654 = !DILocalVariable(name: "count", arg: 3, scope: !646, file: !623, line: 56, type: !41)
!655 = !DILocalVariable(name: "result", scope: !656, file: !623, line: 66, type: !638)
!656 = distinct !DILexicalBlock(scope: !657, file: !623, line: 65, column: 5)
!657 = distinct !DILexicalBlock(scope: !658, file: !623, line: 64, column: 3)
!658 = distinct !DILexicalBlock(scope: !646, file: !623, line: 64, column: 3)
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !661, retainedTypes: !666)
!660 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!661 = !{!662}
!662 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !663, line: 41, size: 32, elements: !664)
!663 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!664 = !{!665}
!665 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!666 = !{!40}
!667 = distinct !DICompileUnit(language: DW_LANG_C99, file: !668, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !669, retainedTypes: !683)
!668 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = !{!670}
!670 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !672, file: !671, line: 192, size: 32, elements: !681)
!671 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = distinct !DISubprogram(name: "x2nrealloc", scope: !671, file: !671, line: 180, type: !673, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !676)
!673 = !DISubroutineType(types: !674)
!674 = !{!40, !40, !675, !41}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!676 = !{!677, !678, !679, !680}
!677 = !DILocalVariable(name: "p", arg: 1, scope: !672, file: !671, line: 180, type: !40)
!678 = !DILocalVariable(name: "pn", arg: 2, scope: !672, file: !671, line: 180, type: !675)
!679 = !DILocalVariable(name: "s", arg: 3, scope: !672, file: !671, line: 180, type: !41)
!680 = !DILocalVariable(name: "n", scope: !672, file: !671, line: 182, type: !41)
!681 = !{!682}
!682 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!683 = !{!41, !8, !40}
!684 = distinct !DICompileUnit(language: DW_LANG_C99, file: !685, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167)
!685 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!686 = distinct !DICompileUnit(language: DW_LANG_C99, file: !687, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !666)
!687 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!688 = distinct !DICompileUnit(language: DW_LANG_C99, file: !689, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !690)
!689 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!690 = !{!41}
!691 = distinct !DICompileUnit(language: DW_LANG_C99, file: !692, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167)
!692 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167)
!694 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167)
!696 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !666)
!698 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !666)
!700 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!701 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!702 = !{i32 2, !"Dwarf Version", i32 4}
!703 = !{i32 2, !"Debug Info Version", i32 3}
!704 = !{i32 1, !"wchar_size", i32 4}
!705 = !{i32 7, !"PIC Level", i32 2}
!706 = !{i32 7, !"PIE Level", i32 2}
!707 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !708, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !10, variables: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !6}
!710 = !{!711}
!711 = !DILocalVariable(name: "status", arg: 1, scope: !707, file: !3, line: 82, type: !6)
!712 = !DIExpression()
!713 = !DILocation(line: 82, column: 12, scope: !707)
!714 = !DILocation(line: 84, column: 14, scope: !715)
!715 = distinct !DILexicalBlock(scope: !707, file: !3, line: 84, column: 7)
!716 = !DILocation(line: 84, column: 7, scope: !707)
!717 = !DILocation(line: 85, column: 5, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !3, line: 85, column: 5)
!719 = !{!720, !720, i64 0}
!720 = !{!"any pointer", !721, i64 0}
!721 = !{!"omnipotent char", !722, i64 0}
!722 = !{!"Simple C/C++ TBAA"}
!723 = !DILocation(line: 88, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !715, file: !3, line: 87, column: 5)
!725 = !DILocation(line: 92, column: 7, scope: !724)
!726 = !DILocation(line: 580, column: 3, scope: !727, inlinedAt: !730)
!727 = distinct !DISubprogram(name: "emit_stdin_note", scope: !54, file: !54, line: 578, type: !728, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !167)
!728 = !DISubroutineType(types: !729)
!729 = !{null}
!730 = distinct !DILocation(line: 96, column: 7, scope: !724)
!731 = !DILocation(line: 98, column: 7, scope: !724)
!732 = !DILocation(line: 107, column: 7, scope: !724)
!733 = !DILocation(line: 113, column: 7, scope: !724)
!734 = !DILocation(line: 114, column: 7, scope: !724)
!735 = !DILocation(line: 115, column: 7, scope: !724)
!736 = !DILocation(line: 642, column: 15, scope: !53, inlinedAt: !737)
!737 = distinct !DILocation(line: 122, column: 7, scope: !724)
!738 = !DILocation(line: 651, column: 3, scope: !53, inlinedAt: !737)
!739 = !DILocation(line: 655, column: 29, scope: !53, inlinedAt: !737)
!740 = !DILocation(line: 655, column: 15, scope: !53, inlinedAt: !737)
!741 = !DILocation(line: 656, column: 7, scope: !742, inlinedAt: !737)
!742 = distinct !DILexicalBlock(scope: !53, file: !54, line: 656, column: 7)
!743 = !DILocation(line: 656, column: 19, scope: !742, inlinedAt: !737)
!744 = !DILocation(line: 656, column: 22, scope: !742, inlinedAt: !737)
!745 = !DILocation(line: 656, column: 7, scope: !53, inlinedAt: !737)
!746 = !DILocation(line: 662, column: 7, scope: !747, inlinedAt: !737)
!747 = distinct !DILexicalBlock(scope: !742, file: !54, line: 657, column: 5)
!748 = !DILocation(line: 664, column: 5, scope: !747, inlinedAt: !737)
!749 = !DILocation(line: 665, column: 3, scope: !53, inlinedAt: !737)
!750 = !DILocation(line: 667, column: 3, scope: !53, inlinedAt: !737)
!751 = !DILocation(line: 124, column: 3, scope: !707)
!752 = !DILocation(line: 503, column: 11, scope: !2)
!753 = !DILocation(line: 503, column: 24, scope: !2)
!754 = !DILocation(line: 511, column: 22, scope: !2)
!755 = !DILocation(line: 511, column: 10, scope: !2)
!756 = !DILocation(line: 519, column: 8, scope: !2)
!757 = !DILocation(line: 535, column: 8, scope: !2)
!758 = !DILocation(line: 537, column: 3, scope: !2)
!759 = !DILocation(line: 540, column: 8, scope: !2)
!760 = !DILocation(line: 541, column: 8, scope: !2)
!761 = !DILocation(line: 542, column: 8, scope: !2)
!762 = !DILocation(line: 543, column: 8, scope: !2)
!763 = !DILocation(line: 544, column: 8, scope: !2)
!764 = !DILocation(line: 545, column: 8, scope: !2)
!765 = !DILocation(line: 546, column: 7, scope: !2)
!766 = !DILocation(line: 563, column: 21, scope: !2)
!767 = !DILocation(line: 563, column: 3, scope: !2)
!768 = !DILocation(line: 564, column: 3, scope: !2)
!769 = !DILocation(line: 565, column: 3, scope: !2)
!770 = !DILocation(line: 566, column: 3, scope: !2)
!771 = !DILocation(line: 572, column: 3, scope: !2)
!772 = !DILocation(line: 576, column: 3, scope: !2)
!773 = !DILocation(line: 576, column: 15, scope: !2)
!774 = !DILocation(line: 520, column: 7, scope: !2)
!775 = distinct !{!775, !772, !776}
!776 = !DILocation(line: 633, column: 5, scope: !2)
!777 = !DILocation(line: 584, column: 11, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 580, column: 9)
!779 = distinct !DILexicalBlock(scope: !2, file: !3, line: 578, column: 5)
!780 = !DILocation(line: 589, column: 11, scope: !778)
!781 = !DILocation(line: 593, column: 11, scope: !778)
!782 = !DILocation(line: 597, column: 11, scope: !778)
!783 = !DILocation(line: 602, column: 11, scope: !778)
!784 = !DILocation(line: 610, column: 11, scope: !778)
!785 = !DILocation(line: 616, column: 11, scope: !778)
!786 = !DILocation(line: 620, column: 11, scope: !778)
!787 = !DILocation(line: 624, column: 11, scope: !778)
!788 = !DILocation(line: 626, column: 9, scope: !778)
!789 = !DILocation(line: 628, column: 9, scope: !778)
!790 = !DILocation(line: 631, column: 11, scope: !778)
!791 = !DILocation(line: 537, column: 15, scope: !2)
!792 = !DILocalVariable(name: "__fd", arg: 1, scope: !793, file: !794, line: 463, type: !6)
!793 = distinct !DISubprogram(name: "fstat", scope: !794, file: !794, line: 463, type: !795, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !798)
!794 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!795 = !DISubroutineType(types: !796)
!796 = !{!6, !6, !797}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!798 = !{!792, !799}
!799 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !793, file: !794, line: 463, type: !797)
!800 = !DILocation(line: 463, column: 1, scope: !793, inlinedAt: !801)
!801 = distinct !DILocation(line: 637, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !2, file: !3, line: 637, column: 7)
!803 = !DILocalVariable(name: "sb", arg: 1, scope: !804, file: !36, line: 75, type: !107)
!804 = distinct !DISubprogram(name: "io_blksize", scope: !36, file: !36, line: 75, type: !805, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{!41, !107}
!807 = !{!803}
!808 = !DILocation(line: 75, column: 25, scope: !804, inlinedAt: !809)
!809 = distinct !DILocation(line: 640, column: 13, scope: !2)
!810 = !DILocation(line: 75, column: 25, scope: !804, inlinedAt: !811)
!811 = distinct !DILocation(line: 687, column: 16, scope: !812)
!812 = distinct !DILexicalBlock(scope: !2, file: !3, line: 659, column: 5)
!813 = !DILocation(line: 465, column: 10, scope: !793, inlinedAt: !801)
!814 = !DILocation(line: 637, column: 40, scope: !802)
!815 = !DILocation(line: 637, column: 7, scope: !2)
!816 = !DILocation(line: 638, column: 5, scope: !802)
!817 = !{!818, !818, i64 0}
!818 = !{!"int", !721, i64 0}
!819 = !DILocation(line: 77, column: 10, scope: !804, inlinedAt: !809)
!820 = !{!821, !822, i64 56}
!821 = !{!"stat", !822, i64 0, !822, i64 8, !822, i64 16, !818, i64 24, !818, i64 28, !818, i64 32, !818, i64 36, !822, i64 40, !822, i64 48, !822, i64 56, !822, i64 64, !823, i64 72, !823, i64 88, !823, i64 104, !721, i64 120}
!822 = !{!"long", !721, i64 0}
!823 = !{!"timespec", !822, i64 0, !822, i64 8}
!824 = !DILocation(line: 506, column: 10, scope: !2)
!825 = !DILocation(line: 641, column: 22, scope: !2)
!826 = !{!821, !822, i64 0}
!827 = !DILocation(line: 526, column: 9, scope: !2)
!828 = !DILocation(line: 642, column: 22, scope: !2)
!829 = !{!821, !822, i64 8}
!830 = !DILocation(line: 529, column: 9, scope: !2)
!831 = !DILocation(line: 643, column: 15, scope: !2)
!832 = !{!821, !818, i64 24}
!833 = !DILocation(line: 645, column: 10, scope: !834)
!834 = distinct !DILexicalBlock(scope: !2, file: !3, line: 645, column: 7)
!835 = !DILocation(line: 655, column: 10, scope: !2)
!836 = !DILocation(line: 656, column: 12, scope: !2)
!837 = !DILocation(line: 523, column: 7, scope: !2)
!838 = !DILocation(line: 658, column: 3, scope: !2)
!839 = distinct !{!839, !838, !840}
!840 = !DILocation(line: 761, column: 25, scope: !2)
!841 = !DILocation(line: 660, column: 18, scope: !842)
!842 = distinct !DILexicalBlock(scope: !812, file: !3, line: 660, column: 11)
!843 = !DILocation(line: 660, column: 11, scope: !812)
!844 = !DILocation(line: 663, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !812, file: !3, line: 663, column: 11)
!846 = !DILocation(line: 661, column: 18, scope: !842)
!847 = !DILocation(line: 661, column: 16, scope: !842)
!848 = !DILocation(line: 661, column: 9, scope: !842)
!849 = !DILocation(line: 663, column: 11, scope: !812)
!850 = !DILocation(line: 666, column: 22, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !3, line: 664, column: 9)
!852 = !DILocation(line: 667, column: 15, scope: !851)
!853 = !DILocation(line: 672, column: 24, scope: !854)
!854 = distinct !DILexicalBlock(scope: !845, file: !3, line: 671, column: 9)
!855 = !DILocation(line: 672, column: 22, scope: !854)
!856 = !DILocation(line: 673, column: 26, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !3, line: 673, column: 15)
!858 = !DILocation(line: 673, column: 15, scope: !854)
!859 = !DILocation(line: 675, column: 25, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 674, column: 13)
!861 = !DILocation(line: 675, column: 38, scope: !860)
!862 = !DILocation(line: 675, column: 15, scope: !860)
!863 = !DILocation(line: 677, column: 15, scope: !860)
!864 = !DILocation(line: 681, column: 18, scope: !865)
!865 = distinct !DILexicalBlock(scope: !812, file: !3, line: 681, column: 11)
!866 = !DILocation(line: 463, column: 1, scope: !793, inlinedAt: !867)
!867 = distinct !DILocation(line: 681, column: 11, scope: !865)
!868 = !DILocation(line: 465, column: 10, scope: !793, inlinedAt: !867)
!869 = !DILocation(line: 681, column: 41, scope: !865)
!870 = !DILocation(line: 681, column: 11, scope: !812)
!871 = !DILocation(line: 683, column: 21, scope: !872)
!872 = distinct !DILexicalBlock(scope: !865, file: !3, line: 682, column: 9)
!873 = !DILocation(line: 683, column: 34, scope: !872)
!874 = !DILocation(line: 683, column: 11, scope: !872)
!875 = !DILocation(line: 685, column: 11, scope: !872)
!876 = !DILocation(line: 77, column: 10, scope: !804, inlinedAt: !811)
!877 = !DILocation(line: 509, column: 10, scope: !2)
!878 = !DILocation(line: 689, column: 17, scope: !812)
!879 = !DILocation(line: 689, column: 7, scope: !812)
!880 = !DILocation(line: 696, column: 23, scope: !881)
!881 = distinct !DILexicalBlock(scope: !812, file: !3, line: 695, column: 11)
!882 = !DILocation(line: 696, column: 30, scope: !881)
!883 = !DILocation(line: 696, column: 11, scope: !881)
!884 = !DILocation(line: 696, column: 53, scope: !881)
!885 = !DILocation(line: 696, column: 60, scope: !881)
!886 = !DILocation(line: 697, column: 21, scope: !881)
!887 = !DILocation(line: 697, column: 14, scope: !881)
!888 = !DILocation(line: 697, column: 57, scope: !881)
!889 = !{!821, !822, i64 48}
!890 = !DILocation(line: 697, column: 46, scope: !881)
!891 = !DILocation(line: 695, column: 11, scope: !812)
!892 = !DILocation(line: 699, column: 24, scope: !893)
!893 = distinct !DILexicalBlock(scope: !881, file: !3, line: 698, column: 9)
!894 = !DILocation(line: 699, column: 60, scope: !893)
!895 = !DILocation(line: 699, column: 11, scope: !893)
!896 = !DILocation(line: 701, column: 11, scope: !893)
!897 = !DILocation(line: 707, column: 21, scope: !898)
!898 = distinct !DILexicalBlock(scope: !812, file: !3, line: 707, column: 11)
!899 = !DILocation(line: 710, column: 20, scope: !900)
!900 = distinct !DILexicalBlock(scope: !898, file: !3, line: 709, column: 9)
!901 = !DILocation(line: 711, column: 47, scope: !900)
!902 = !DILocation(line: 711, column: 19, scope: !900)
!903 = !DILocation(line: 514, column: 9, scope: !2)
!904 = !DILocalVariable(name: "ptr", arg: 1, scope: !905, file: !54, line: 498, type: !649)
!905 = distinct !DISubprogram(name: "ptr_align", scope: !54, file: !54, line: 498, type: !906, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!40, !649, !41}
!908 = !{!904, !909, !910, !911}
!909 = !DILocalVariable(name: "alignment", arg: 2, scope: !905, file: !54, line: 498, type: !41)
!910 = !DILocalVariable(name: "p0", scope: !905, file: !54, line: 500, type: !47)
!911 = !DILocalVariable(name: "p1", scope: !905, file: !54, line: 501, type: !47)
!912 = !DILocation(line: 498, column: 24, scope: !905, inlinedAt: !913)
!913 = distinct !DILocation(line: 713, column: 29, scope: !900)
!914 = !DILocation(line: 498, column: 36, scope: !905, inlinedAt: !913)
!915 = !DILocation(line: 500, column: 15, scope: !905, inlinedAt: !913)
!916 = !DILocation(line: 501, column: 23, scope: !905, inlinedAt: !913)
!917 = !DILocation(line: 501, column: 35, scope: !905, inlinedAt: !913)
!918 = !DILocation(line: 501, column: 15, scope: !905, inlinedAt: !913)
!919 = !DILocation(line: 502, column: 25, scope: !905, inlinedAt: !913)
!920 = !DILocation(line: 502, column: 37, scope: !905, inlinedAt: !913)
!921 = !DILocation(line: 502, column: 23, scope: !905, inlinedAt: !913)
!922 = !DILocalVariable(name: "buf", arg: 1, scope: !923, file: !3, line: 154, type: !8)
!923 = distinct !DISubprogram(name: "simple_cat", scope: !3, file: !3, line: 152, type: !924, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !926)
!924 = !DISubroutineType(types: !925)
!925 = !{!93, !8, !41}
!926 = !{!922, !927, !928, !929}
!927 = !DILocalVariable(name: "bufsize", arg: 2, scope: !923, file: !3, line: 158, type: !41)
!928 = !DILocalVariable(name: "n_read", scope: !923, file: !3, line: 161, type: !41)
!929 = !DILocalVariable(name: "n", scope: !930, file: !3, line: 185, type: !41)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 183, column: 7)
!931 = distinct !DILexicalBlock(scope: !923, file: !3, line: 166, column: 5)
!932 = !DILocation(line: 154, column: 12, scope: !923, inlinedAt: !933)
!933 = distinct !DILocation(line: 713, column: 17, scope: !900)
!934 = !DILocation(line: 158, column: 13, scope: !923, inlinedAt: !933)
!935 = !DILocation(line: 165, column: 3, scope: !923, inlinedAt: !933)
!936 = !DILocation(line: 169, column: 27, scope: !931, inlinedAt: !933)
!937 = !DILocation(line: 169, column: 16, scope: !931, inlinedAt: !933)
!938 = !DILocation(line: 161, column: 10, scope: !923, inlinedAt: !933)
!939 = !DILocation(line: 170, column: 11, scope: !931, inlinedAt: !933)
!940 = !DILocation(line: 172, column: 21, scope: !941, inlinedAt: !933)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 171, column: 9)
!942 = distinct !DILexicalBlock(scope: !931, file: !3, line: 170, column: 11)
!943 = !DILocation(line: 172, column: 34, scope: !941, inlinedAt: !933)
!944 = !DILocation(line: 172, column: 11, scope: !941, inlinedAt: !933)
!945 = !DILocation(line: 173, column: 11, scope: !941, inlinedAt: !933)
!946 = !DILocation(line: 185, column: 16, scope: !930, inlinedAt: !933)
!947 = !DILocation(line: 186, column: 13, scope: !948, inlinedAt: !933)
!948 = distinct !DILexicalBlock(scope: !930, file: !3, line: 186, column: 13)
!949 = !DILocation(line: 186, column: 48, scope: !948, inlinedAt: !933)
!950 = !DILocation(line: 186, column: 13, scope: !930, inlinedAt: !933)
!951 = distinct !{!951, !952, !953}
!952 = !DILocation(line: 165, column: 3, scope: !923)
!953 = !DILocation(line: 189, column: 5, scope: !923)
!954 = !DILocation(line: 187, column: 11, scope: !948, inlinedAt: !933)
!955 = !DILocation(line: 717, column: 51, scope: !956)
!956 = distinct !DILexicalBlock(scope: !898, file: !3, line: 716, column: 9)
!957 = !DILocation(line: 717, column: 19, scope: !956)
!958 = !DILocation(line: 741, column: 50, scope: !956)
!959 = !DILocation(line: 742, column: 41, scope: !956)
!960 = !DILocation(line: 741, column: 20, scope: !956)
!961 = !DILocation(line: 517, column: 9, scope: !2)
!962 = !DILocation(line: 498, column: 24, scope: !905, inlinedAt: !963)
!963 = distinct !DILocation(line: 744, column: 22, scope: !956)
!964 = !DILocation(line: 498, column: 36, scope: !905, inlinedAt: !963)
!965 = !DILocation(line: 500, column: 15, scope: !905, inlinedAt: !963)
!966 = !DILocation(line: 501, column: 23, scope: !905, inlinedAt: !963)
!967 = !DILocation(line: 501, column: 35, scope: !905, inlinedAt: !963)
!968 = !DILocation(line: 501, column: 15, scope: !905, inlinedAt: !963)
!969 = !DILocation(line: 502, column: 25, scope: !905, inlinedAt: !963)
!970 = !DILocation(line: 502, column: 37, scope: !905, inlinedAt: !963)
!971 = !DILocation(line: 502, column: 23, scope: !905, inlinedAt: !963)
!972 = !DILocation(line: 498, column: 24, scope: !905, inlinedAt: !973)
!973 = distinct !DILocation(line: 745, column: 22, scope: !956)
!974 = !DILocation(line: 498, column: 36, scope: !905, inlinedAt: !973)
!975 = !DILocation(line: 500, column: 15, scope: !905, inlinedAt: !973)
!976 = !DILocation(line: 501, column: 23, scope: !905, inlinedAt: !973)
!977 = !DILocation(line: 501, column: 35, scope: !905, inlinedAt: !973)
!978 = !DILocation(line: 501, column: 15, scope: !905, inlinedAt: !973)
!979 = !DILocation(line: 502, column: 25, scope: !905, inlinedAt: !973)
!980 = !DILocation(line: 502, column: 37, scope: !905, inlinedAt: !973)
!981 = !DILocation(line: 502, column: 23, scope: !905, inlinedAt: !973)
!982 = !DILocalVariable(name: "inbuf", arg: 1, scope: !983, file: !3, line: 218, type: !8)
!983 = distinct !DISubprogram(name: "cat", scope: !3, file: !3, line: 216, type: !984, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !986)
!984 = !DISubroutineType(types: !985)
!985 = !{!93, !8, !41, !8, !41, !93, !93, !93, !93, !93, !93}
!986 = !{!982, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1008, !1009, !1012}
!987 = !DILocalVariable(name: "insize", arg: 2, scope: !983, file: !3, line: 221, type: !41)
!988 = !DILocalVariable(name: "outbuf", arg: 3, scope: !983, file: !3, line: 224, type: !8)
!989 = !DILocalVariable(name: "outsize", arg: 4, scope: !983, file: !3, line: 227, type: !41)
!990 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !983, file: !3, line: 230, type: !93)
!991 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !983, file: !3, line: 231, type: !93)
!992 = !DILocalVariable(name: "number", arg: 7, scope: !983, file: !3, line: 232, type: !93)
!993 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !983, file: !3, line: 233, type: !93)
!994 = !DILocalVariable(name: "show_ends", arg: 9, scope: !983, file: !3, line: 234, type: !93)
!995 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !983, file: !3, line: 235, type: !93)
!996 = !DILocalVariable(name: "ch", scope: !983, file: !3, line: 238, type: !612)
!997 = !DILocalVariable(name: "bpin", scope: !983, file: !3, line: 241, type: !8)
!998 = !DILocalVariable(name: "eob", scope: !983, file: !3, line: 245, type: !8)
!999 = !DILocalVariable(name: "bpout", scope: !983, file: !3, line: 248, type: !8)
!1000 = !DILocalVariable(name: "n_read", scope: !983, file: !3, line: 251, type: !41)
!1001 = !DILocalVariable(name: "newlines", scope: !983, file: !3, line: 258, type: !6)
!1002 = !DILocalVariable(name: "use_fionread", scope: !983, file: !3, line: 263, type: !93)
!1003 = !DILocalVariable(name: "wp", scope: !1004, file: !3, line: 282, type: !8)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 281, column: 13)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 280, column: 15)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 277, column: 9)
!1007 = distinct !DILexicalBlock(scope: !983, file: !3, line: 275, column: 5)
!1008 = !DILocalVariable(name: "remaining_bytes", scope: !1004, file: !3, line: 283, type: !41)
!1009 = !DILocalVariable(name: "input_pending", scope: !1010, file: !3, line: 304, type: !93)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 303, column: 13)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 302, column: 15)
!1012 = !DILocalVariable(name: "n_to_read", scope: !1010, file: !3, line: 306, type: !6)
!1013 = !DILocation(line: 218, column: 12, scope: !983, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 744, column: 17, scope: !956)
!1015 = !DILocation(line: 221, column: 13, scope: !983, inlinedAt: !1014)
!1016 = !DILocation(line: 224, column: 12, scope: !983, inlinedAt: !1014)
!1017 = !DILocation(line: 227, column: 13, scope: !983, inlinedAt: !1014)
!1018 = !DILocation(line: 230, column: 11, scope: !983, inlinedAt: !1014)
!1019 = !DILocation(line: 231, column: 11, scope: !983, inlinedAt: !1014)
!1020 = !DILocation(line: 232, column: 11, scope: !983, inlinedAt: !1014)
!1021 = !DILocation(line: 233, column: 11, scope: !983, inlinedAt: !1014)
!1022 = !DILocation(line: 234, column: 11, scope: !983, inlinedAt: !1014)
!1023 = !DILocation(line: 235, column: 11, scope: !983, inlinedAt: !1014)
!1024 = !DILocation(line: 258, column: 18, scope: !983, inlinedAt: !1014)
!1025 = !DILocation(line: 258, column: 7, scope: !983, inlinedAt: !1014)
!1026 = !DILocation(line: 263, column: 8, scope: !983, inlinedAt: !1014)
!1027 = !DILocation(line: 245, column: 9, scope: !983, inlinedAt: !1014)
!1028 = !DILocation(line: 270, column: 14, scope: !983, inlinedAt: !1014)
!1029 = !DILocation(line: 241, column: 9, scope: !983, inlinedAt: !1014)
!1030 = !DILocation(line: 248, column: 9, scope: !983, inlinedAt: !1014)
!1031 = !DILocation(line: 272, column: 9, scope: !983, inlinedAt: !1014)
!1032 = !DILocation(line: 274, column: 3, scope: !983, inlinedAt: !1014)
!1033 = distinct !{!1033, !1034, !1035}
!1034 = !DILocation(line: 276, column: 7, scope: !1007)
!1035 = !DILocation(line: 410, column: 24, scope: !1007)
!1036 = !DILocation(line: 280, column: 35, scope: !1005, inlinedAt: !1014)
!1037 = !DILocation(line: 280, column: 32, scope: !1005, inlinedAt: !1014)
!1038 = !DILocation(line: 280, column: 15, scope: !1006, inlinedAt: !1014)
!1039 = distinct !{!1039, !1040, !1041}
!1040 = !DILocation(line: 284, column: 15, scope: !1004)
!1041 = !DILocation(line: 291, column: 48, scope: !1004)
!1042 = !DILocation(line: 286, column: 23, scope: !1043, inlinedAt: !1014)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 286, column: 23)
!1044 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 285, column: 17)
!1045 = !DILocation(line: 282, column: 21, scope: !1004, inlinedAt: !1014)
!1046 = !DILocation(line: 286, column: 63, scope: !1043, inlinedAt: !1014)
!1047 = !DILocation(line: 286, column: 23, scope: !1044, inlinedAt: !1014)
!1048 = !DILocation(line: 287, column: 21, scope: !1043, inlinedAt: !1014)
!1049 = !DILocation(line: 288, column: 22, scope: !1044, inlinedAt: !1014)
!1050 = !DIExpression(DW_OP_deref)
!1051 = !DILocation(line: 289, column: 43, scope: !1044, inlinedAt: !1014)
!1052 = !DILocation(line: 283, column: 22, scope: !1004, inlinedAt: !1014)
!1053 = !DILocation(line: 291, column: 30, scope: !1004, inlinedAt: !1014)
!1054 = !DILocation(line: 290, column: 17, scope: !1044, inlinedAt: !1014)
!1055 = !DILocation(line: 296, column: 15, scope: !1004, inlinedAt: !1014)
!1056 = !DILocation(line: 297, column: 30, scope: !1004, inlinedAt: !1014)
!1057 = !DILocation(line: 297, column: 21, scope: !1004, inlinedAt: !1014)
!1058 = !DILocation(line: 298, column: 13, scope: !1004, inlinedAt: !1014)
!1059 = !DILocation(line: 302, column: 20, scope: !1011, inlinedAt: !1014)
!1060 = !DILocation(line: 302, column: 15, scope: !1006, inlinedAt: !1014)
!1061 = !DILocation(line: 304, column: 20, scope: !1010, inlinedAt: !1014)
!1062 = !DILocation(line: 306, column: 15, scope: !1010, inlinedAt: !1014)
!1063 = !DILocation(line: 306, column: 19, scope: !1010, inlinedAt: !1014)
!1064 = !DILocation(line: 312, column: 19, scope: !1065, inlinedAt: !1014)
!1065 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 312, column: 19)
!1066 = !DILocation(line: 313, column: 19, scope: !1065, inlinedAt: !1014)
!1067 = !DILocation(line: 313, column: 29, scope: !1065, inlinedAt: !1014)
!1068 = !DILocation(line: 313, column: 22, scope: !1065, inlinedAt: !1014)
!1069 = !DILocation(line: 313, column: 63, scope: !1065, inlinedAt: !1014)
!1070 = !DILocation(line: 312, column: 19, scope: !1010, inlinedAt: !1014)
!1071 = !DILocation(line: 321, column: 23, scope: !1072, inlinedAt: !1014)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 321, column: 23)
!1073 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 314, column: 17)
!1074 = !DILocation(line: 321, column: 43, scope: !1072, inlinedAt: !1014)
!1075 = !DILocation(line: 327, column: 40, scope: !1076, inlinedAt: !1014)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 326, column: 21)
!1077 = !DILocation(line: 328, column: 30, scope: !1076, inlinedAt: !1014)
!1078 = !DILocation(line: 327, column: 23, scope: !1076, inlinedAt: !1014)
!1079 = !DILocation(line: 330, column: 23, scope: !1076, inlinedAt: !1014)
!1080 = !DILocation(line: 333, column: 19, scope: !1081, inlinedAt: !1014)
!1081 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 333, column: 19)
!1082 = !DILocation(line: 333, column: 29, scope: !1081, inlinedAt: !1014)
!1083 = !DILocation(line: 337, column: 19, scope: !1010, inlinedAt: !1014)
!1084 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1085, file: !3, line: 197, type: !8)
!1085 = distinct !DISubprogram(name: "write_pending", scope: !3, file: !3, line: 197, type: !1086, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !8, !7}
!1088 = !{!1084, !1089, !1090}
!1089 = !DILocalVariable(name: "bpout", arg: 2, scope: !1085, file: !3, line: 197, type: !7)
!1090 = !DILocalVariable(name: "n_write", scope: !1085, file: !3, line: 199, type: !41)
!1091 = !DILocation(line: 197, column: 22, scope: !1085, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 338, column: 17, scope: !1093, inlinedAt: !1014)
!1093 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 337, column: 19)
!1094 = !DILocation(line: 197, column: 37, scope: !1085, inlinedAt: !1092)
!1095 = !DILocation(line: 199, column: 27, scope: !1085, inlinedAt: !1092)
!1096 = !DILocation(line: 199, column: 10, scope: !1085, inlinedAt: !1092)
!1097 = !DILocation(line: 200, column: 9, scope: !1098, inlinedAt: !1092)
!1098 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 200, column: 7)
!1099 = !DILocation(line: 200, column: 7, scope: !1085, inlinedAt: !1092)
!1100 = !DILocation(line: 202, column: 11, scope: !1101, inlinedAt: !1092)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 202, column: 11)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 201, column: 5)
!1103 = !DILocation(line: 202, column: 55, scope: !1101, inlinedAt: !1092)
!1104 = !DILocation(line: 202, column: 11, scope: !1102, inlinedAt: !1092)
!1105 = !DILocation(line: 203, column: 9, scope: !1101, inlinedAt: !1092)
!1106 = !DILocation(line: 342, column: 35, scope: !1010, inlinedAt: !1014)
!1107 = !DILocation(line: 342, column: 24, scope: !1010, inlinedAt: !1014)
!1108 = !DILocation(line: 251, column: 10, scope: !983, inlinedAt: !1014)
!1109 = !DILocation(line: 343, column: 19, scope: !1010, inlinedAt: !1014)
!1110 = !DILocation(line: 345, column: 29, scope: !1111, inlinedAt: !1014)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 344, column: 17)
!1112 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 343, column: 19)
!1113 = !DILocation(line: 345, column: 42, scope: !1111, inlinedAt: !1014)
!1114 = !DILocation(line: 345, column: 19, scope: !1111, inlinedAt: !1014)
!1115 = !DILocation(line: 197, column: 22, scope: !1085, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 346, column: 19, scope: !1111, inlinedAt: !1014)
!1117 = !DILocation(line: 197, column: 37, scope: !1085, inlinedAt: !1116)
!1118 = !DILocation(line: 199, column: 27, scope: !1085, inlinedAt: !1116)
!1119 = !DILocation(line: 199, column: 10, scope: !1085, inlinedAt: !1116)
!1120 = !DILocation(line: 200, column: 9, scope: !1098, inlinedAt: !1116)
!1121 = !DILocation(line: 200, column: 7, scope: !1085, inlinedAt: !1116)
!1122 = !DILocation(line: 202, column: 11, scope: !1101, inlinedAt: !1116)
!1123 = !DILocation(line: 202, column: 55, scope: !1101, inlinedAt: !1116)
!1124 = !DILocation(line: 202, column: 11, scope: !1102, inlinedAt: !1116)
!1125 = !DILocation(line: 203, column: 9, scope: !1101, inlinedAt: !1116)
!1126 = !DILocation(line: 197, column: 22, scope: !1085, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 352, column: 19, scope: !1128, inlinedAt: !1014)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 351, column: 17)
!1129 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 350, column: 19)
!1130 = !DILocation(line: 197, column: 37, scope: !1085, inlinedAt: !1127)
!1131 = !DILocation(line: 199, column: 27, scope: !1085, inlinedAt: !1127)
!1132 = !DILocation(line: 199, column: 10, scope: !1085, inlinedAt: !1127)
!1133 = !DILocation(line: 200, column: 9, scope: !1098, inlinedAt: !1127)
!1134 = !DILocation(line: 200, column: 7, scope: !1085, inlinedAt: !1127)
!1135 = !DILocation(line: 202, column: 11, scope: !1101, inlinedAt: !1127)
!1136 = !DILocation(line: 202, column: 55, scope: !1101, inlinedAt: !1127)
!1137 = !DILocation(line: 202, column: 11, scope: !1102, inlinedAt: !1127)
!1138 = !DILocation(line: 203, column: 9, scope: !1101, inlinedAt: !1127)
!1139 = !DILocation(line: 361, column: 26, scope: !1010, inlinedAt: !1014)
!1140 = !DILocation(line: 362, column: 20, scope: !1010, inlinedAt: !1014)
!1141 = !{!721, !721, i64 0}
!1142 = !DILocation(line: 363, column: 13, scope: !1011, inlinedAt: !1014)
!1143 = !DILocation(line: 371, column: 19, scope: !1144, inlinedAt: !1014)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 371, column: 19)
!1145 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 365, column: 13)
!1146 = !DILocation(line: 371, column: 30, scope: !1144, inlinedAt: !1014)
!1147 = !DILocation(line: 371, column: 19, scope: !1145, inlinedAt: !1014)
!1148 = !DILocation(line: 373, column: 32, scope: !1149, inlinedAt: !1014)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 373, column: 23)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 372, column: 17)
!1151 = !DILocation(line: 373, column: 23, scope: !1150, inlinedAt: !1014)
!1152 = !DILocation(line: 392, column: 30, scope: !1153, inlinedAt: !1014)
!1153 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 392, column: 23)
!1154 = !DILocation(line: 133, column: 3, scope: !1155, inlinedAt: !1158)
!1155 = distinct !DISubprogram(name: "next_line_num", scope: !3, file: !3, line: 130, type: !728, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !1156)
!1156 = !{!1157}
!1157 = !DILocalVariable(name: "endp", scope: !1155, file: !3, line: 132, type: !8)
!1158 = distinct !DILocation(line: 394, column: 23, scope: !1159, inlinedAt: !1014)
!1159 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 393, column: 21)
!1160 = distinct !{!1160, !1161, !1162}
!1161 = !DILocation(line: 133, column: 3, scope: !1155)
!1162 = !DILocation(line: 139, column: 32, scope: !1155)
!1163 = !DILocation(line: 132, column: 9, scope: !1155, inlinedAt: !1158)
!1164 = !DILocation(line: 135, column: 18, scope: !1165, inlinedAt: !1158)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 135, column: 11)
!1166 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 134, column: 5)
!1167 = !DILocation(line: 135, column: 21, scope: !1165, inlinedAt: !1158)
!1168 = !DILocation(line: 135, column: 11, scope: !1166, inlinedAt: !1158)
!1169 = !DILocation(line: 137, column: 12, scope: !1166, inlinedAt: !1158)
!1170 = !DILocation(line: 137, column: 15, scope: !1166, inlinedAt: !1158)
!1171 = !DILocation(line: 139, column: 15, scope: !1155, inlinedAt: !1158)
!1172 = !DILocation(line: 138, column: 5, scope: !1166, inlinedAt: !1158)
!1173 = !DILocation(line: 140, column: 22, scope: !1174, inlinedAt: !1158)
!1174 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 140, column: 7)
!1175 = !DILocation(line: 140, column: 7, scope: !1155, inlinedAt: !1158)
!1176 = !DILocation(line: 141, column: 6, scope: !1174, inlinedAt: !1158)
!1177 = !DILocation(line: 141, column: 23, scope: !1174, inlinedAt: !1158)
!1178 = !DILocation(line: 141, column: 5, scope: !1174, inlinedAt: !1158)
!1179 = !DILocation(line: 143, column: 15, scope: !1174, inlinedAt: !1158)
!1180 = !DILocation(line: 144, column: 7, scope: !1181, inlinedAt: !1158)
!1181 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 144, column: 7)
!1182 = !DILocation(line: 144, column: 24, scope: !1181, inlinedAt: !1158)
!1183 = !DILocation(line: 144, column: 22, scope: !1181, inlinedAt: !1158)
!1184 = !DILocation(line: 144, column: 7, scope: !1155, inlinedAt: !1158)
!1185 = !DILocation(line: 145, column: 19, scope: !1181, inlinedAt: !1158)
!1186 = !DILocation(line: 145, column: 5, scope: !1181, inlinedAt: !1158)
!1187 = !DILocation(line: 395, column: 46, scope: !1159, inlinedAt: !1014)
!1188 = !DILocation(line: 395, column: 39, scope: !1159, inlinedAt: !1014)
!1189 = !DILocalVariable(name: "__dest", arg: 1, scope: !1190, file: !1191, line: 95, type: !1194)
!1190 = distinct !DISubprogram(name: "stpcpy", scope: !1191, file: !1191, line: 95, type: !1192, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !1196)
!1191 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!8, !1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1195 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!1196 = !{!1189, !1197}
!1197 = !DILocalVariable(name: "__src", arg: 2, scope: !1190, file: !1191, line: 95, type: !1195)
!1198 = !DILocation(line: 95, column: 1, scope: !1190, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 395, column: 31, scope: !1159, inlinedAt: !1014)
!1200 = !DILocation(line: 97, column: 49, scope: !1190, inlinedAt: !1199)
!1201 = !DILocation(line: 97, column: 10, scope: !1190, inlinedAt: !1199)
!1202 = !DILocation(line: 395, column: 29, scope: !1159, inlinedAt: !1014)
!1203 = !DILocation(line: 396, column: 21, scope: !1159, inlinedAt: !1014)
!1204 = !DILocation(line: 401, column: 19, scope: !1145, inlinedAt: !1014)
!1205 = !DILocation(line: 402, column: 23, scope: !1206, inlinedAt: !1014)
!1206 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 401, column: 19)
!1207 = !DILocation(line: 402, column: 26, scope: !1206, inlinedAt: !1014)
!1208 = !DILocation(line: 402, column: 17, scope: !1206, inlinedAt: !1014)
!1209 = !DILocation(line: 406, column: 21, scope: !1145, inlinedAt: !1014)
!1210 = !DILocation(line: 406, column: 24, scope: !1145, inlinedAt: !1014)
!1211 = !DILocation(line: 238, column: 17, scope: !983, inlinedAt: !1014)
!1212 = !DILocation(line: 410, column: 17, scope: !1007, inlinedAt: !1014)
!1213 = !DILocation(line: 409, column: 9, scope: !1006, inlinedAt: !1014)
!1214 = !DILocation(line: 414, column: 20, scope: !1215, inlinedAt: !1014)
!1215 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 414, column: 11)
!1216 = !DILocation(line: 414, column: 25, scope: !1215, inlinedAt: !1014)
!1217 = !DILocation(line: 133, column: 3, scope: !1155, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 416, column: 11, scope: !1219, inlinedAt: !1014)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 415, column: 9)
!1220 = !DILocation(line: 132, column: 9, scope: !1155, inlinedAt: !1218)
!1221 = !DILocation(line: 135, column: 18, scope: !1165, inlinedAt: !1218)
!1222 = !DILocation(line: 135, column: 21, scope: !1165, inlinedAt: !1218)
!1223 = !DILocation(line: 135, column: 11, scope: !1166, inlinedAt: !1218)
!1224 = !DILocation(line: 137, column: 12, scope: !1166, inlinedAt: !1218)
!1225 = !DILocation(line: 137, column: 15, scope: !1166, inlinedAt: !1218)
!1226 = !DILocation(line: 139, column: 15, scope: !1155, inlinedAt: !1218)
!1227 = !DILocation(line: 138, column: 5, scope: !1166, inlinedAt: !1218)
!1228 = !DILocation(line: 140, column: 22, scope: !1174, inlinedAt: !1218)
!1229 = !DILocation(line: 140, column: 7, scope: !1155, inlinedAt: !1218)
!1230 = !DILocation(line: 141, column: 6, scope: !1174, inlinedAt: !1218)
!1231 = !DILocation(line: 141, column: 23, scope: !1174, inlinedAt: !1218)
!1232 = !DILocation(line: 141, column: 5, scope: !1174, inlinedAt: !1218)
!1233 = !DILocation(line: 143, column: 15, scope: !1174, inlinedAt: !1218)
!1234 = !DILocation(line: 144, column: 7, scope: !1181, inlinedAt: !1218)
!1235 = !DILocation(line: 144, column: 24, scope: !1181, inlinedAt: !1218)
!1236 = !DILocation(line: 144, column: 22, scope: !1181, inlinedAt: !1218)
!1237 = !DILocation(line: 144, column: 7, scope: !1155, inlinedAt: !1218)
!1238 = !DILocation(line: 145, column: 19, scope: !1181, inlinedAt: !1218)
!1239 = !DILocation(line: 145, column: 5, scope: !1181, inlinedAt: !1218)
!1240 = !DILocation(line: 417, column: 34, scope: !1219, inlinedAt: !1014)
!1241 = !DILocation(line: 417, column: 27, scope: !1219, inlinedAt: !1014)
!1242 = !DILocation(line: 95, column: 1, scope: !1190, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 417, column: 19, scope: !1219, inlinedAt: !1014)
!1244 = !DILocation(line: 97, column: 49, scope: !1190, inlinedAt: !1243)
!1245 = !DILocation(line: 97, column: 10, scope: !1190, inlinedAt: !1243)
!1246 = !DILocation(line: 417, column: 17, scope: !1219, inlinedAt: !1014)
!1247 = !DILocation(line: 418, column: 9, scope: !1219, inlinedAt: !1014)
!1248 = !DILocation(line: 428, column: 11, scope: !1007, inlinedAt: !1014)
!1249 = !DILocation(line: 432, column: 22, scope: !1250, inlinedAt: !1014)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 432, column: 19)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 431, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 429, column: 9)
!1253 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 428, column: 11)
!1254 = !DILocation(line: 483, column: 22, scope: !1255, inlinedAt: !1014)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 483, column: 19)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 482, column: 13)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 479, column: 9)
!1258 = !DILocation(line: 432, column: 19, scope: !1251, inlinedAt: !1014)
!1259 = !DILocation(line: 434, column: 26, scope: !1260, inlinedAt: !1014)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 434, column: 23)
!1261 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 433, column: 17)
!1262 = !DILocation(line: 434, column: 23, scope: !1261, inlinedAt: !1014)
!1263 = !DILocation(line: 435, column: 27, scope: !1260, inlinedAt: !1014)
!1264 = !DILocation(line: 435, column: 30, scope: !1260, inlinedAt: !1014)
!1265 = !DILocation(line: 435, column: 21, scope: !1260, inlinedAt: !1014)
!1266 = !DILocation(line: 436, column: 31, scope: !1267, inlinedAt: !1014)
!1267 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 436, column: 28)
!1268 = !DILocation(line: 436, column: 28, scope: !1260, inlinedAt: !1014)
!1269 = !DILocation(line: 438, column: 32, scope: !1270, inlinedAt: !1014)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 437, column: 21)
!1271 = !DILocation(line: 439, column: 29, scope: !1270, inlinedAt: !1014)
!1272 = !DILocation(line: 439, column: 32, scope: !1270, inlinedAt: !1014)
!1273 = !DILocation(line: 440, column: 21, scope: !1270, inlinedAt: !1014)
!1274 = !DILocation(line: 443, column: 32, scope: !1275, inlinedAt: !1014)
!1275 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 442, column: 21)
!1276 = !DILocation(line: 444, column: 29, scope: !1275, inlinedAt: !1014)
!1277 = !DILocation(line: 444, column: 32, scope: !1275, inlinedAt: !1014)
!1278 = !DILocation(line: 445, column: 30, scope: !1279, inlinedAt: !1014)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 445, column: 27)
!1280 = !DILocation(line: 445, column: 27, scope: !1275, inlinedAt: !1014)
!1281 = !DILocation(line: 447, column: 34, scope: !1282, inlinedAt: !1014)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 447, column: 31)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 446, column: 25)
!1284 = !DILocation(line: 447, column: 31, scope: !1283, inlinedAt: !1014)
!1285 = !DILocation(line: 448, column: 43, scope: !1282, inlinedAt: !1014)
!1286 = !DILocation(line: 448, column: 35, scope: !1282, inlinedAt: !1014)
!1287 = !DILocation(line: 448, column: 38, scope: !1282, inlinedAt: !1014)
!1288 = !DILocation(line: 448, column: 29, scope: !1282, inlinedAt: !1014)
!1289 = !DILocation(line: 451, column: 37, scope: !1290, inlinedAt: !1014)
!1290 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 450, column: 29)
!1291 = !DILocation(line: 451, column: 40, scope: !1290, inlinedAt: !1014)
!1292 = !DILocation(line: 452, column: 37, scope: !1290, inlinedAt: !1014)
!1293 = !DILocation(line: 452, column: 40, scope: !1290, inlinedAt: !1014)
!1294 = !DILocation(line: 457, column: 33, scope: !1295, inlinedAt: !1014)
!1295 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 456, column: 25)
!1296 = !DILocation(line: 457, column: 36, scope: !1295, inlinedAt: !1014)
!1297 = !DILocation(line: 458, column: 47, scope: !1295, inlinedAt: !1014)
!1298 = !DILocation(line: 458, column: 33, scope: !1295, inlinedAt: !1014)
!1299 = !DILocation(line: 458, column: 36, scope: !1295, inlinedAt: !1014)
!1300 = !DILocation(line: 462, column: 27, scope: !1301, inlinedAt: !1014)
!1301 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 462, column: 24)
!1302 = !DILocation(line: 462, column: 35, scope: !1301, inlinedAt: !1014)
!1303 = !DILocation(line: 463, column: 23, scope: !1301, inlinedAt: !1014)
!1304 = !DILocation(line: 463, column: 26, scope: !1301, inlinedAt: !1014)
!1305 = !DILocation(line: 463, column: 17, scope: !1301, inlinedAt: !1014)
!1306 = !DILocation(line: 464, column: 27, scope: !1307, inlinedAt: !1014)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 464, column: 24)
!1308 = !DILocation(line: 464, column: 24, scope: !1301, inlinedAt: !1014)
!1309 = !DILocation(line: 471, column: 25, scope: !1310, inlinedAt: !1014)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 470, column: 17)
!1311 = !DILocation(line: 471, column: 28, scope: !1310, inlinedAt: !1014)
!1312 = !DILocation(line: 472, column: 33, scope: !1310, inlinedAt: !1014)
!1313 = !DILocation(line: 472, column: 25, scope: !1310, inlinedAt: !1014)
!1314 = !DILocation(line: 472, column: 28, scope: !1310, inlinedAt: !1014)
!1315 = !DILocation(line: 475, column: 25, scope: !1251, inlinedAt: !1014)
!1316 = !DILocation(line: 475, column: 20, scope: !1251, inlinedAt: !1014)
!1317 = !DILocation(line: 430, column: 11, scope: !1252, inlinedAt: !1014)
!1318 = distinct !{!1318, !1319, !1320}
!1319 = !DILocation(line: 430, column: 11, scope: !1252)
!1320 = !DILocation(line: 476, column: 13, scope: !1252)
!1321 = !DILocation(line: 483, column: 30, scope: !1255, inlinedAt: !1014)
!1322 = !DILocation(line: 485, column: 25, scope: !1323, inlinedAt: !1014)
!1323 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 484, column: 17)
!1324 = !DILocation(line: 485, column: 28, scope: !1323, inlinedAt: !1014)
!1325 = !DILocation(line: 486, column: 25, scope: !1323, inlinedAt: !1014)
!1326 = !DILocation(line: 486, column: 28, scope: !1323, inlinedAt: !1014)
!1327 = !DILocation(line: 487, column: 17, scope: !1323, inlinedAt: !1014)
!1328 = !DILocation(line: 488, column: 27, scope: !1329, inlinedAt: !1014)
!1329 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 488, column: 24)
!1330 = !DILocation(line: 488, column: 24, scope: !1255, inlinedAt: !1014)
!1331 = !DILocation(line: 489, column: 23, scope: !1329, inlinedAt: !1014)
!1332 = !DILocation(line: 489, column: 26, scope: !1329, inlinedAt: !1014)
!1333 = !DILocation(line: 496, column: 25, scope: !1256, inlinedAt: !1014)
!1334 = !DILocation(line: 496, column: 20, scope: !1256, inlinedAt: !1014)
!1335 = !DILocation(line: 481, column: 11, scope: !1257, inlinedAt: !1014)
!1336 = distinct !{!1336, !1337, !1338}
!1337 = !DILocation(line: 481, column: 11, scope: !1257)
!1338 = !DILocation(line: 497, column: 13, scope: !1257)
!1339 = !DILocation(line: 749, column: 11, scope: !956)
!1340 = !DILocation(line: 752, column: 7, scope: !812)
!1341 = !DILocation(line: 755, column: 12, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !812, file: !3, line: 755, column: 11)
!1343 = !DILocation(line: 755, column: 32, scope: !1342)
!1344 = !DILocation(line: 755, column: 42, scope: !1342)
!1345 = !DILocation(line: 755, column: 35, scope: !1342)
!1346 = !DILocation(line: 755, column: 54, scope: !1342)
!1347 = !DILocation(line: 755, column: 11, scope: !812)
!1348 = !DILocation(line: 757, column: 21, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 756, column: 9)
!1350 = !DILocation(line: 757, column: 34, scope: !1349)
!1351 = !DILocation(line: 757, column: 11, scope: !1349)
!1352 = !DILocation(line: 759, column: 9, scope: !1349)
!1353 = !DILocation(line: 761, column: 10, scope: !2)
!1354 = !DILocation(line: 761, column: 19, scope: !2)
!1355 = !DILocation(line: 760, column: 5, scope: !812)
!1356 = !DILocation(line: 763, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !2, file: !3, line: 763, column: 7)
!1358 = !DILocation(line: 763, column: 23, scope: !1357)
!1359 = !DILocation(line: 763, column: 26, scope: !1357)
!1360 = !DILocation(line: 763, column: 47, scope: !1357)
!1361 = !DILocation(line: 763, column: 7, scope: !2)
!1362 = !DILocation(line: 764, column: 5, scope: !1357)
!1363 = !DILocation(line: 766, column: 10, scope: !2)
!1364 = !DILocation(line: 767, column: 1, scope: !2)
!1365 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !176, file: !176, line: 41, type: !55, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1366)
!1366 = !{!1367}
!1367 = !DILocalVariable(name: "file", arg: 1, scope: !1365, file: !176, line: 41, type: !47)
!1368 = !DILocation(line: 41, column: 41, scope: !1365)
!1369 = !DILocation(line: 43, column: 13, scope: !1365)
!1370 = !DILocation(line: 44, column: 1, scope: !1365)
!1371 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !176, file: !176, line: 78, type: !1372, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !93}
!1374 = !{!1375}
!1375 = !DILocalVariable(name: "ignore", arg: 1, scope: !1371, file: !176, line: 78, type: !93)
!1376 = !DILocation(line: 78, column: 37, scope: !1371)
!1377 = !DILocation(line: 80, column: 16, scope: !1371)
!1378 = !{!1379, !1379, i64 0}
!1379 = !{!"_Bool", !721, i64 0}
!1380 = !DILocation(line: 81, column: 1, scope: !1371)
!1381 = distinct !DISubprogram(name: "close_stdout", scope: !176, file: !176, line: 107, type: !728, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1382)
!1382 = !{!1383}
!1383 = !DILocalVariable(name: "write_error", scope: !1384, file: !176, line: 112, type: !47)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !176, line: 111, column: 5)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !176, line: 109, column: 7)
!1386 = !DILocation(line: 109, column: 21, scope: !1385)
!1387 = !DILocation(line: 109, column: 7, scope: !1385)
!1388 = !DILocation(line: 109, column: 29, scope: !1385)
!1389 = !DILocation(line: 110, column: 7, scope: !1385)
!1390 = !DILocation(line: 110, column: 12, scope: !1385)
!1391 = !{i8 0, i8 2}
!1392 = !DILocation(line: 114, column: 19, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1384, file: !176, line: 113, column: 11)
!1394 = !DILocation(line: 110, column: 25, scope: !1385)
!1395 = !DILocation(line: 110, column: 28, scope: !1385)
!1396 = !DILocation(line: 110, column: 34, scope: !1385)
!1397 = !DILocation(line: 109, column: 7, scope: !1381)
!1398 = !DILocation(line: 112, column: 33, scope: !1384)
!1399 = !DILocation(line: 112, column: 19, scope: !1384)
!1400 = !DILocation(line: 113, column: 11, scope: !1393)
!1401 = !DILocation(line: 113, column: 11, scope: !1384)
!1402 = !DILocation(line: 114, column: 36, scope: !1393)
!1403 = !DILocation(line: 114, column: 9, scope: !1393)
!1404 = !DILocation(line: 117, column: 9, scope: !1393)
!1405 = !DILocation(line: 119, column: 14, scope: !1384)
!1406 = !DILocation(line: 119, column: 7, scope: !1384)
!1407 = !DILocation(line: 122, column: 22, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1381, file: !176, line: 122, column: 8)
!1409 = !DILocation(line: 122, column: 8, scope: !1408)
!1410 = !DILocation(line: 122, column: 30, scope: !1408)
!1411 = !DILocation(line: 122, column: 8, scope: !1381)
!1412 = !DILocation(line: 123, column: 13, scope: !1408)
!1413 = !DILocation(line: 123, column: 6, scope: !1408)
!1414 = !DILocation(line: 124, column: 1, scope: !1381)
!1415 = distinct !DISubprogram(name: "fdadvise", scope: !1416, file: !1416, line: 31, type: !1417, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !1422)
!1416 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !6, !1419, !1419, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1420, line: 57, baseType: !124)
!1420 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !27, line: 52, baseType: !26)
!1422 = !{!1423, !1424, !1425, !1426, !1427}
!1423 = !DILocalVariable(name: "fd", arg: 1, scope: !1415, file: !1416, line: 31, type: !6)
!1424 = !DILocalVariable(name: "offset", arg: 2, scope: !1415, file: !1416, line: 31, type: !1419)
!1425 = !DILocalVariable(name: "len", arg: 3, scope: !1415, file: !1416, line: 31, type: !1419)
!1426 = !DILocalVariable(name: "advice", arg: 4, scope: !1415, file: !1416, line: 31, type: !1421)
!1427 = !DILocalVariable(name: "__x", scope: !1428, file: !1416, line: 34, type: !6)
!1428 = distinct !DILexicalBlock(scope: !1415, file: !1416, line: 34, column: 3)
!1429 = !DILocation(line: 31, column: 15, scope: !1415)
!1430 = !DILocation(line: 31, column: 25, scope: !1415)
!1431 = !DILocation(line: 31, column: 39, scope: !1415)
!1432 = !DILocation(line: 31, column: 54, scope: !1415)
!1433 = !DILocation(line: 34, column: 3, scope: !1428)
!1434 = !DILocation(line: 36, column: 1, scope: !1415)
!1435 = distinct !DISubprogram(name: "fadvise", scope: !1416, file: !1416, line: 39, type: !1436, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !1487)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1438, !1421}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1440, line: 7, baseType: !1441)
!1440 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1442, line: 241, size: 1728, elements: !1443)
!1442 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1464, !1465, !1466, !1467, !1468, !1469, !1471, !1475, !1478, !1480, !1481, !1482, !1483, !1484, !1485, !1486}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1441, file: !1442, line: 242, baseType: !6, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1441, file: !1442, line: 247, baseType: !8, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1441, file: !1442, line: 248, baseType: !8, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1441, file: !1442, line: 249, baseType: !8, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1441, file: !1442, line: 250, baseType: !8, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1441, file: !1442, line: 251, baseType: !8, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1441, file: !1442, line: 252, baseType: !8, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1441, file: !1442, line: 253, baseType: !8, size: 64, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1441, file: !1442, line: 254, baseType: !8, size: 64, offset: 512)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1441, file: !1442, line: 256, baseType: !8, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1441, file: !1442, line: 257, baseType: !8, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1441, file: !1442, line: 258, baseType: !8, size: 64, offset: 704)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1441, file: !1442, line: 260, baseType: !1457, size: 64, offset: 768)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1442, line: 156, size: 192, elements: !1459)
!1459 = !{!1460, !1461, !1463}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1458, file: !1442, line: 157, baseType: !1457, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1458, file: !1442, line: 158, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1458, file: !1442, line: 162, baseType: !6, size: 32, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1441, file: !1442, line: 262, baseType: !1462, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1441, file: !1442, line: 264, baseType: !6, size: 32, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1441, file: !1442, line: 268, baseType: !6, size: 32, offset: 928)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1441, file: !1442, line: 270, baseType: !124, size: 64, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1441, file: !1442, line: 274, baseType: !217, size: 16, offset: 1024)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1441, file: !1442, line: 275, baseType: !1470, size: 8, offset: 1040)
!1470 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1441, file: !1442, line: 276, baseType: !1472, size: 8, offset: 1048)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !1473)
!1473 = !{!1474}
!1474 = !DISubrange(count: 1)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1441, file: !1442, line: 280, baseType: !1476, size: 64, offset: 1088)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1442, line: 150, baseType: null)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1441, file: !1442, line: 289, baseType: !1479, size: 64, offset: 1152)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !100, line: 141, baseType: !125)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1441, file: !1442, line: 297, baseType: !40, size: 64, offset: 1216)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1441, file: !1442, line: 298, baseType: !40, size: 64, offset: 1280)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1441, file: !1442, line: 299, baseType: !40, size: 64, offset: 1344)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1441, file: !1442, line: 300, baseType: !40, size: 64, offset: 1408)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1441, file: !1442, line: 302, baseType: !41, size: 64, offset: 1472)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1441, file: !1442, line: 303, baseType: !6, size: 32, offset: 1536)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1441, file: !1442, line: 305, baseType: !79, size: 160, offset: 1568)
!1487 = !{!1488, !1489}
!1488 = !DILocalVariable(name: "fp", arg: 1, scope: !1435, file: !1416, line: 39, type: !1438)
!1489 = !DILocalVariable(name: "advice", arg: 2, scope: !1435, file: !1416, line: 39, type: !1421)
!1490 = !DILocation(line: 39, column: 16, scope: !1435)
!1491 = !DILocation(line: 39, column: 30, scope: !1435)
!1492 = !DILocation(line: 41, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1435, file: !1416, line: 41, column: 7)
!1494 = !DILocation(line: 41, column: 7, scope: !1435)
!1495 = !DILocation(line: 42, column: 15, scope: !1493)
!1496 = !DILocation(line: 31, column: 15, scope: !1415, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 42, column: 5, scope: !1493)
!1498 = !DILocation(line: 31, column: 25, scope: !1415, inlinedAt: !1497)
!1499 = !DILocation(line: 31, column: 39, scope: !1415, inlinedAt: !1497)
!1500 = !DILocation(line: 31, column: 54, scope: !1415, inlinedAt: !1497)
!1501 = !DILocation(line: 34, column: 3, scope: !1428, inlinedAt: !1497)
!1502 = !DILocation(line: 42, column: 5, scope: !1493)
!1503 = !DILocation(line: 43, column: 1, scope: !1435)
!1504 = distinct !DISubprogram(name: "full_write", scope: !1505, file: !1505, line: 58, type: !647, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !1506)
!1505 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512}
!1507 = !DILocalVariable(name: "fd", arg: 1, scope: !1504, file: !1505, line: 58, type: !6)
!1508 = !DILocalVariable(name: "buf", arg: 2, scope: !1504, file: !1505, line: 58, type: !649)
!1509 = !DILocalVariable(name: "count", arg: 3, scope: !1504, file: !1505, line: 58, type: !41)
!1510 = !DILocalVariable(name: "total", scope: !1504, file: !1505, line: 60, type: !41)
!1511 = !DILocalVariable(name: "ptr", scope: !1504, file: !1505, line: 61, type: !47)
!1512 = !DILocalVariable(name: "n_rw", scope: !1513, file: !1505, line: 65, type: !41)
!1513 = distinct !DILexicalBlock(scope: !1504, file: !1505, line: 64, column: 5)
!1514 = !DILocation(line: 58, column: 14, scope: !1504)
!1515 = !DILocation(line: 58, column: 30, scope: !1504)
!1516 = !DILocation(line: 58, column: 42, scope: !1504)
!1517 = !DILocation(line: 60, column: 10, scope: !1504)
!1518 = !DILocation(line: 61, column: 15, scope: !1504)
!1519 = !DILocation(line: 63, column: 16, scope: !1504)
!1520 = !DILocation(line: 63, column: 3, scope: !1504)
!1521 = !DILocation(line: 65, column: 21, scope: !1513)
!1522 = !DILocation(line: 65, column: 14, scope: !1513)
!1523 = !DILocation(line: 66, column: 11, scope: !1513)
!1524 = !DILocation(line: 70, column: 11, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !1505, line: 69, column: 9)
!1526 = distinct !DILexicalBlock(scope: !1513, file: !1505, line: 68, column: 11)
!1527 = !DILocation(line: 70, column: 17, scope: !1525)
!1528 = !DILocation(line: 71, column: 11, scope: !1525)
!1529 = !DILocation(line: 73, column: 13, scope: !1513)
!1530 = !DILocation(line: 74, column: 11, scope: !1513)
!1531 = !DILocation(line: 75, column: 13, scope: !1513)
!1532 = distinct !{!1532, !1520, !1533}
!1533 = !DILocation(line: 76, column: 5, scope: !1504)
!1534 = !DILocation(line: 78, column: 3, scope: !1504)
!1535 = distinct !DISubprogram(name: "set_program_name", scope: !190, file: !190, line: 39, type: !55, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !1536)
!1536 = !{!1537, !1538, !1539}
!1537 = !DILocalVariable(name: "argv0", arg: 1, scope: !1535, file: !190, line: 39, type: !47)
!1538 = !DILocalVariable(name: "slash", scope: !1535, file: !190, line: 46, type: !47)
!1539 = !DILocalVariable(name: "base", scope: !1535, file: !190, line: 47, type: !47)
!1540 = !DILocation(line: 39, column: 31, scope: !1535)
!1541 = !DILocation(line: 51, column: 13, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1535, file: !190, line: 51, column: 7)
!1543 = !DILocation(line: 51, column: 7, scope: !1535)
!1544 = !DILocation(line: 55, column: 14, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !190, line: 52, column: 5)
!1546 = !DILocation(line: 54, column: 7, scope: !1545)
!1547 = !DILocation(line: 56, column: 7, scope: !1545)
!1548 = !DILocation(line: 59, column: 11, scope: !1535)
!1549 = !DILocation(line: 46, column: 15, scope: !1535)
!1550 = !DILocation(line: 60, column: 17, scope: !1535)
!1551 = !DILocation(line: 60, column: 33, scope: !1535)
!1552 = !DILocation(line: 60, column: 11, scope: !1535)
!1553 = !DILocation(line: 47, column: 15, scope: !1535)
!1554 = !DILocation(line: 61, column: 12, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1535, file: !190, line: 61, column: 7)
!1556 = !DILocation(line: 61, column: 20, scope: !1555)
!1557 = !DILocation(line: 61, column: 25, scope: !1555)
!1558 = !DILocation(line: 61, column: 42, scope: !1555)
!1559 = !DILocation(line: 61, column: 28, scope: !1555)
!1560 = !DILocation(line: 61, column: 61, scope: !1555)
!1561 = !DILocation(line: 61, column: 7, scope: !1535)
!1562 = !DILocation(line: 64, column: 11, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !190, line: 64, column: 11)
!1564 = distinct !DILexicalBlock(scope: !1555, file: !190, line: 62, column: 5)
!1565 = !DILocation(line: 64, column: 36, scope: !1563)
!1566 = !DILocation(line: 64, column: 11, scope: !1564)
!1567 = !DILocation(line: 66, column: 24, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !190, line: 65, column: 9)
!1569 = !DILocation(line: 70, column: 41, scope: !1568)
!1570 = !DILocation(line: 72, column: 9, scope: !1568)
!1571 = !DILocation(line: 84, column: 16, scope: !1535)
!1572 = !DILocation(line: 90, column: 27, scope: !1535)
!1573 = !DILocation(line: 92, column: 1, scope: !1535)
!1574 = distinct !DISubprogram(name: "clone_quoting_options", scope: !221, file: !221, line: 114, type: !1575, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !1578)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!1577, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1578 = !{!1579, !1580, !1581}
!1579 = !DILocalVariable(name: "o", arg: 1, scope: !1574, file: !221, line: 114, type: !1577)
!1580 = !DILocalVariable(name: "e", scope: !1574, file: !221, line: 116, type: !6)
!1581 = !DILocalVariable(name: "p", scope: !1574, file: !221, line: 117, type: !1577)
!1582 = !DILocation(line: 114, column: 48, scope: !1574)
!1583 = !DILocation(line: 116, column: 11, scope: !1574)
!1584 = !DILocation(line: 116, column: 7, scope: !1574)
!1585 = !DILocation(line: 117, column: 40, scope: !1574)
!1586 = !DILocation(line: 117, column: 31, scope: !1574)
!1587 = !DILocation(line: 117, column: 27, scope: !1574)
!1588 = !DILocation(line: 119, column: 9, scope: !1574)
!1589 = !DILocation(line: 120, column: 3, scope: !1574)
!1590 = distinct !DISubprogram(name: "get_quoting_style", scope: !221, file: !221, line: 125, type: !1591, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !1595)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!12, !1593}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!1595 = !{!1596}
!1596 = !DILocalVariable(name: "o", arg: 1, scope: !1590, file: !221, line: 125, type: !1593)
!1597 = !DILocation(line: 125, column: 50, scope: !1590)
!1598 = !DILocation(line: 127, column: 11, scope: !1590)
!1599 = !DILocation(line: 127, column: 46, scope: !1590)
!1600 = !{!1601, !721, i64 0}
!1601 = !{!"quoting_options", !721, i64 0, !818, i64 4, !721, i64 8, !720, i64 40, !720, i64 48}
!1602 = !DILocation(line: 127, column: 3, scope: !1590)
!1603 = distinct !DISubprogram(name: "set_quoting_style", scope: !221, file: !221, line: 133, type: !1604, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1577, !12}
!1606 = !{!1607, !1608}
!1607 = !DILocalVariable(name: "o", arg: 1, scope: !1603, file: !221, line: 133, type: !1577)
!1608 = !DILocalVariable(name: "s", arg: 2, scope: !1603, file: !221, line: 133, type: !12)
!1609 = !DILocation(line: 133, column: 44, scope: !1603)
!1610 = !DILocation(line: 133, column: 66, scope: !1603)
!1611 = !DILocation(line: 135, column: 4, scope: !1603)
!1612 = !DILocation(line: 135, column: 39, scope: !1603)
!1613 = !DILocation(line: 135, column: 45, scope: !1603)
!1614 = !DILocation(line: 136, column: 1, scope: !1603)
!1615 = distinct !DISubprogram(name: "set_char_quoting", scope: !221, file: !221, line: 144, type: !1616, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!6, !1577, !9, !6}
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1625, !1626}
!1619 = !DILocalVariable(name: "o", arg: 1, scope: !1615, file: !221, line: 144, type: !1577)
!1620 = !DILocalVariable(name: "c", arg: 2, scope: !1615, file: !221, line: 144, type: !9)
!1621 = !DILocalVariable(name: "i", arg: 3, scope: !1615, file: !221, line: 144, type: !6)
!1622 = !DILocalVariable(name: "uc", scope: !1615, file: !221, line: 146, type: !612)
!1623 = !DILocalVariable(name: "p", scope: !1615, file: !221, line: 147, type: !1624)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1625 = !DILocalVariable(name: "shift", scope: !1615, file: !221, line: 149, type: !6)
!1626 = !DILocalVariable(name: "r", scope: !1615, file: !221, line: 150, type: !6)
!1627 = !DILocation(line: 144, column: 43, scope: !1615)
!1628 = !DILocation(line: 144, column: 51, scope: !1615)
!1629 = !DILocation(line: 144, column: 58, scope: !1615)
!1630 = !DILocation(line: 146, column: 17, scope: !1615)
!1631 = !DILocation(line: 148, column: 6, scope: !1615)
!1632 = !DILocation(line: 148, column: 62, scope: !1615)
!1633 = !DILocation(line: 148, column: 57, scope: !1615)
!1634 = !DILocation(line: 147, column: 17, scope: !1615)
!1635 = !DILocation(line: 149, column: 18, scope: !1615)
!1636 = !DILocation(line: 149, column: 15, scope: !1615)
!1637 = !DILocation(line: 149, column: 7, scope: !1615)
!1638 = !DILocation(line: 150, column: 12, scope: !1615)
!1639 = !DILocation(line: 150, column: 15, scope: !1615)
!1640 = !DILocation(line: 150, column: 25, scope: !1615)
!1641 = !DILocation(line: 150, column: 7, scope: !1615)
!1642 = !DILocation(line: 151, column: 13, scope: !1615)
!1643 = !DILocation(line: 151, column: 18, scope: !1615)
!1644 = !DILocation(line: 151, column: 23, scope: !1615)
!1645 = !DILocation(line: 151, column: 6, scope: !1615)
!1646 = !DILocation(line: 152, column: 3, scope: !1615)
!1647 = distinct !DISubprogram(name: "set_quoting_flags", scope: !221, file: !221, line: 160, type: !1648, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !1650)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!6, !1577, !6}
!1650 = !{!1651, !1652, !1653}
!1651 = !DILocalVariable(name: "o", arg: 1, scope: !1647, file: !221, line: 160, type: !1577)
!1652 = !DILocalVariable(name: "i", arg: 2, scope: !1647, file: !221, line: 160, type: !6)
!1653 = !DILocalVariable(name: "r", scope: !1647, file: !221, line: 162, type: !6)
!1654 = !DILocation(line: 160, column: 44, scope: !1647)
!1655 = !DILocation(line: 160, column: 51, scope: !1647)
!1656 = !DILocation(line: 163, column: 8, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1647, file: !221, line: 163, column: 7)
!1658 = !DILocation(line: 163, column: 7, scope: !1647)
!1659 = !DILocation(line: 165, column: 10, scope: !1647)
!1660 = !{!1601, !818, i64 4}
!1661 = !DILocation(line: 162, column: 7, scope: !1647)
!1662 = !DILocation(line: 166, column: 12, scope: !1647)
!1663 = !DILocation(line: 167, column: 3, scope: !1647)
!1664 = distinct !DISubprogram(name: "set_custom_quoting", scope: !221, file: !221, line: 171, type: !1665, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{null, !1577, !47, !47}
!1667 = !{!1668, !1669, !1670}
!1668 = !DILocalVariable(name: "o", arg: 1, scope: !1664, file: !221, line: 171, type: !1577)
!1669 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1664, file: !221, line: 172, type: !47)
!1670 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1664, file: !221, line: 172, type: !47)
!1671 = !DILocation(line: 171, column: 45, scope: !1664)
!1672 = !DILocation(line: 172, column: 33, scope: !1664)
!1673 = !DILocation(line: 172, column: 57, scope: !1664)
!1674 = !DILocation(line: 174, column: 8, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1664, file: !221, line: 174, column: 7)
!1676 = !DILocation(line: 174, column: 7, scope: !1664)
!1677 = !DILocation(line: 176, column: 6, scope: !1664)
!1678 = !DILocation(line: 176, column: 12, scope: !1664)
!1679 = !DILocation(line: 177, column: 8, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1664, file: !221, line: 177, column: 7)
!1681 = !DILocation(line: 177, column: 23, scope: !1680)
!1682 = !DILocation(line: 177, column: 19, scope: !1680)
!1683 = !DILocation(line: 178, column: 5, scope: !1680)
!1684 = !DILocation(line: 179, column: 6, scope: !1664)
!1685 = !DILocation(line: 179, column: 17, scope: !1664)
!1686 = !{!1601, !720, i64 40}
!1687 = !DILocation(line: 180, column: 6, scope: !1664)
!1688 = !DILocation(line: 180, column: 18, scope: !1664)
!1689 = !{!1601, !720, i64 48}
!1690 = !DILocation(line: 181, column: 1, scope: !1664)
!1691 = distinct !DISubprogram(name: "quotearg_buffer", scope: !221, file: !221, line: 776, type: !1692, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!41, !8, !41, !47, !41, !1593}
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1695 = !DILocalVariable(name: "buffer", arg: 1, scope: !1691, file: !221, line: 776, type: !8)
!1696 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1691, file: !221, line: 776, type: !41)
!1697 = !DILocalVariable(name: "arg", arg: 3, scope: !1691, file: !221, line: 777, type: !47)
!1698 = !DILocalVariable(name: "argsize", arg: 4, scope: !1691, file: !221, line: 777, type: !41)
!1699 = !DILocalVariable(name: "o", arg: 5, scope: !1691, file: !221, line: 778, type: !1593)
!1700 = !DILocalVariable(name: "p", scope: !1691, file: !221, line: 780, type: !1593)
!1701 = !DILocalVariable(name: "e", scope: !1691, file: !221, line: 781, type: !6)
!1702 = !DILocalVariable(name: "r", scope: !1691, file: !221, line: 782, type: !41)
!1703 = !DILocation(line: 776, column: 24, scope: !1691)
!1704 = !DILocation(line: 776, column: 39, scope: !1691)
!1705 = !DILocation(line: 777, column: 30, scope: !1691)
!1706 = !DILocation(line: 777, column: 42, scope: !1691)
!1707 = !DILocation(line: 778, column: 48, scope: !1691)
!1708 = !DILocation(line: 780, column: 37, scope: !1691)
!1709 = !DILocation(line: 780, column: 33, scope: !1691)
!1710 = !DILocation(line: 781, column: 11, scope: !1691)
!1711 = !DILocation(line: 781, column: 7, scope: !1691)
!1712 = !DILocation(line: 783, column: 43, scope: !1691)
!1713 = !DILocation(line: 783, column: 53, scope: !1691)
!1714 = !DILocation(line: 783, column: 60, scope: !1691)
!1715 = !DILocation(line: 784, column: 43, scope: !1691)
!1716 = !DILocation(line: 784, column: 58, scope: !1691)
!1717 = !DILocation(line: 782, column: 14, scope: !1691)
!1718 = !DILocation(line: 782, column: 10, scope: !1691)
!1719 = !DILocation(line: 785, column: 9, scope: !1691)
!1720 = !DILocation(line: 786, column: 3, scope: !1691)
!1721 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !221, file: !221, line: 248, type: !1722, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !1726)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!41, !8, !41, !47, !41, !12, !6, !1724, !47, !47}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1751, !1752, !1753, !1754, !1755, !1758, !1759, !1777, !1780, !1781, !1788}
!1727 = !DILocalVariable(name: "buffer", arg: 1, scope: !1721, file: !221, line: 248, type: !8)
!1728 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1721, file: !221, line: 248, type: !41)
!1729 = !DILocalVariable(name: "arg", arg: 3, scope: !1721, file: !221, line: 249, type: !47)
!1730 = !DILocalVariable(name: "argsize", arg: 4, scope: !1721, file: !221, line: 249, type: !41)
!1731 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1721, file: !221, line: 250, type: !12)
!1732 = !DILocalVariable(name: "flags", arg: 6, scope: !1721, file: !221, line: 250, type: !6)
!1733 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1721, file: !221, line: 251, type: !1724)
!1734 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1721, file: !221, line: 252, type: !47)
!1735 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1721, file: !221, line: 253, type: !47)
!1736 = !DILocalVariable(name: "i", scope: !1721, file: !221, line: 255, type: !41)
!1737 = !DILocalVariable(name: "len", scope: !1721, file: !221, line: 256, type: !41)
!1738 = !DILocalVariable(name: "orig_buffersize", scope: !1721, file: !221, line: 257, type: !41)
!1739 = !DILocalVariable(name: "quote_string", scope: !1721, file: !221, line: 258, type: !47)
!1740 = !DILocalVariable(name: "quote_string_len", scope: !1721, file: !221, line: 259, type: !41)
!1741 = !DILocalVariable(name: "backslash_escapes", scope: !1721, file: !221, line: 260, type: !93)
!1742 = !DILocalVariable(name: "unibyte_locale", scope: !1721, file: !221, line: 261, type: !93)
!1743 = !DILocalVariable(name: "elide_outer_quotes", scope: !1721, file: !221, line: 262, type: !93)
!1744 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1721, file: !221, line: 263, type: !93)
!1745 = !DILocalVariable(name: "encountered_single_quote", scope: !1721, file: !221, line: 264, type: !93)
!1746 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1721, file: !221, line: 265, type: !93)
!1747 = !DILocalVariable(name: "c", scope: !1748, file: !221, line: 394, type: !612)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !221, line: 393, column: 5)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !221, line: 392, column: 3)
!1750 = distinct !DILexicalBlock(scope: !1721, file: !221, line: 392, column: 3)
!1751 = !DILocalVariable(name: "esc", scope: !1748, file: !221, line: 395, type: !612)
!1752 = !DILocalVariable(name: "is_right_quote", scope: !1748, file: !221, line: 396, type: !93)
!1753 = !DILocalVariable(name: "escaping", scope: !1748, file: !221, line: 397, type: !93)
!1754 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1748, file: !221, line: 398, type: !93)
!1755 = !DILocalVariable(name: "m", scope: !1756, file: !221, line: 602, type: !41)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 600, column: 11)
!1757 = distinct !DILexicalBlock(scope: !1748, file: !221, line: 418, column: 9)
!1758 = !DILocalVariable(name: "printable", scope: !1756, file: !221, line: 604, type: !93)
!1759 = !DILocalVariable(name: "mbstate", scope: !1760, file: !221, line: 613, type: !1762)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !221, line: 612, column: 15)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !221, line: 606, column: 17)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1763, line: 6, baseType: !1764)
!1763 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1765, line: 21, baseType: !1766)
!1765 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1765, line: 13, size: 64, elements: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1766, file: !1765, line: 15, baseType: !6, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1766, file: !1765, line: 20, baseType: !1770, size: 32, offset: 32)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1766, file: !1765, line: 16, size: 32, elements: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1770, file: !1765, line: 18, baseType: !116, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1770, file: !1765, line: 19, baseType: !1774, size: 32)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !1775)
!1775 = !{!1776}
!1776 = !DISubrange(count: 4)
!1777 = !DILocalVariable(name: "w", scope: !1778, file: !221, line: 623, type: !1779)
!1778 = distinct !DILexicalBlock(scope: !1760, file: !221, line: 622, column: 19)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !42, line: 90, baseType: !6)
!1780 = !DILocalVariable(name: "bytes", scope: !1778, file: !221, line: 624, type: !41)
!1781 = !DILocalVariable(name: "j", scope: !1782, file: !221, line: 649, type: !41)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !221, line: 648, column: 27)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !221, line: 646, column: 29)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !221, line: 641, column: 23)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !221, line: 633, column: 30)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !221, line: 628, column: 30)
!1787 = distinct !DILexicalBlock(scope: !1778, file: !221, line: 626, column: 25)
!1788 = !DILocalVariable(name: "ilim", scope: !1789, file: !221, line: 676, type: !41)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !221, line: 673, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1756, file: !221, line: 672, column: 17)
!1791 = !DILocation(line: 248, column: 33, scope: !1721)
!1792 = !DILocation(line: 248, column: 48, scope: !1721)
!1793 = !DILocation(line: 249, column: 39, scope: !1721)
!1794 = !DILocation(line: 249, column: 51, scope: !1721)
!1795 = !DILocation(line: 250, column: 46, scope: !1721)
!1796 = !DILocation(line: 250, column: 65, scope: !1721)
!1797 = !DILocation(line: 251, column: 47, scope: !1721)
!1798 = !DILocation(line: 252, column: 39, scope: !1721)
!1799 = !DILocation(line: 253, column: 39, scope: !1721)
!1800 = !DILocation(line: 256, column: 10, scope: !1721)
!1801 = !DILocation(line: 257, column: 10, scope: !1721)
!1802 = !DILocation(line: 258, column: 15, scope: !1721)
!1803 = !DILocation(line: 259, column: 10, scope: !1721)
!1804 = !DILocation(line: 260, column: 8, scope: !1721)
!1805 = !DILocation(line: 261, column: 25, scope: !1721)
!1806 = !DILocation(line: 261, column: 36, scope: !1721)
!1807 = !DILocation(line: 262, column: 8, scope: !1721)
!1808 = !DILocation(line: 263, column: 8, scope: !1721)
!1809 = !DILocation(line: 264, column: 8, scope: !1721)
!1810 = !DILocation(line: 265, column: 8, scope: !1721)
!1811 = !DILocation(line: 265, column: 3, scope: !1721)
!1812 = !DILocation(line: 308, column: 3, scope: !1721)
!1813 = !DILocation(line: 315, column: 11, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1721, file: !221, line: 309, column: 5)
!1815 = !DILocation(line: 315, column: 12, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1814, file: !221, line: 315, column: 11)
!1817 = !DILocation(line: 316, column: 9, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !221, line: 316, column: 9)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !221, line: 316, column: 9)
!1820 = !DILocation(line: 316, column: 9, scope: !1819)
!1821 = !DILocation(line: 354, column: 26, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !221, line: 332, column: 11)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !221, line: 331, column: 13)
!1824 = distinct !DILexicalBlock(scope: !1814, file: !221, line: 330, column: 7)
!1825 = !DILocation(line: 355, column: 27, scope: !1822)
!1826 = !DILocation(line: 356, column: 11, scope: !1822)
!1827 = !DILocation(line: 357, column: 14, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !221, line: 357, column: 13)
!1829 = !DILocation(line: 357, column: 13, scope: !1824)
!1830 = !DILocation(line: 358, column: 43, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !221, line: 358, column: 11)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !221, line: 358, column: 11)
!1833 = !DILocation(line: 358, column: 11, scope: !1832)
!1834 = !DILocation(line: 359, column: 13, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !221, line: 359, column: 13)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !221, line: 359, column: 13)
!1837 = !DILocation(line: 359, column: 13, scope: !1836)
!1838 = !DILocation(line: 358, column: 70, scope: !1831)
!1839 = distinct !{!1839, !1833, !1840}
!1840 = !DILocation(line: 359, column: 13, scope: !1832)
!1841 = !DILocation(line: 362, column: 28, scope: !1824)
!1842 = !DILocation(line: 364, column: 7, scope: !1814)
!1843 = !DILocation(line: 367, column: 7, scope: !1814)
!1844 = !DILocation(line: 370, column: 7, scope: !1814)
!1845 = !DILocation(line: 373, column: 12, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1814, file: !221, line: 373, column: 11)
!1847 = !DILocation(line: 373, column: 11, scope: !1814)
!1848 = !DILocation(line: 378, column: 12, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1814, file: !221, line: 378, column: 11)
!1850 = !DILocation(line: 378, column: 11, scope: !1814)
!1851 = !DILocation(line: 379, column: 9, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !221, line: 379, column: 9)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !221, line: 379, column: 9)
!1854 = !DILocation(line: 379, column: 9, scope: !1853)
!1855 = !DILocation(line: 386, column: 7, scope: !1814)
!1856 = !DILocation(line: 389, column: 7, scope: !1814)
!1857 = !DILocation(line: 255, column: 10, scope: !1721)
!1858 = !DILocation(line: 392, column: 8, scope: !1750)
!1859 = !DILocation(line: 392, column: 27, scope: !1749)
!1860 = !DILocation(line: 392, column: 19, scope: !1749)
!1861 = !DILocation(line: 392, column: 60, scope: !1749)
!1862 = !DILocation(line: 392, column: 3, scope: !1750)
!1863 = !DILocation(line: 392, column: 41, scope: !1749)
!1864 = !DILocation(line: 392, column: 48, scope: !1749)
!1865 = !DILocation(line: 396, column: 12, scope: !1748)
!1866 = !DILocation(line: 397, column: 12, scope: !1748)
!1867 = !DILocation(line: 398, column: 12, scope: !1748)
!1868 = !DILocation(line: 401, column: 11, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1748, file: !221, line: 400, column: 11)
!1870 = !DILocation(line: 403, column: 17, scope: !1869)
!1871 = !DILocation(line: 404, column: 39, scope: !1869)
!1872 = !DILocation(line: 408, column: 32, scope: !1869)
!1873 = !DILocation(line: 404, column: 19, scope: !1869)
!1874 = !DILocation(line: 404, column: 15, scope: !1869)
!1875 = !DILocation(line: 409, column: 11, scope: !1869)
!1876 = !DILocation(line: 409, column: 26, scope: !1869)
!1877 = !DILocation(line: 409, column: 14, scope: !1869)
!1878 = !DILocation(line: 409, column: 63, scope: !1869)
!1879 = !DILocation(line: 400, column: 11, scope: !1748)
!1880 = !DILocation(line: 416, column: 11, scope: !1748)
!1881 = !DILocation(line: 394, column: 21, scope: !1748)
!1882 = !DILocation(line: 417, column: 7, scope: !1748)
!1883 = !DILocation(line: 420, column: 15, scope: !1757)
!1884 = !DILocation(line: 422, column: 15, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !221, line: 422, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !221, line: 421, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 420, column: 15)
!1888 = !DILocation(line: 422, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !221, line: 422, column: 15)
!1890 = !DILocation(line: 422, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !221, line: 422, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !221, line: 422, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !221, line: 422, column: 15)
!1894 = !DILocation(line: 422, column: 15, scope: !1892)
!1895 = !DILocation(line: 422, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !221, line: 422, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !221, line: 422, column: 15)
!1898 = !DILocation(line: 422, column: 15, scope: !1897)
!1899 = !DILocation(line: 422, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !221, line: 422, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1893, file: !221, line: 422, column: 15)
!1902 = !DILocation(line: 422, column: 15, scope: !1901)
!1903 = !DILocation(line: 422, column: 15, scope: !1893)
!1904 = !DILocation(line: 422, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !221, line: 422, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1885, file: !221, line: 422, column: 15)
!1907 = !DILocation(line: 422, column: 15, scope: !1906)
!1908 = !DILocation(line: 430, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1886, file: !221, line: 429, column: 19)
!1910 = !DILocation(line: 430, column: 24, scope: !1909)
!1911 = !DILocation(line: 430, column: 28, scope: !1909)
!1912 = !DILocation(line: 430, column: 38, scope: !1909)
!1913 = !DILocation(line: 430, column: 48, scope: !1909)
!1914 = !DILocation(line: 430, column: 59, scope: !1909)
!1915 = !DILocation(line: 432, column: 19, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !221, line: 432, column: 19)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !221, line: 432, column: 19)
!1918 = distinct !DILexicalBlock(scope: !1909, file: !221, line: 431, column: 17)
!1919 = !DILocation(line: 432, column: 19, scope: !1917)
!1920 = !DILocation(line: 433, column: 19, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !221, line: 433, column: 19)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !221, line: 433, column: 19)
!1923 = !DILocation(line: 433, column: 19, scope: !1922)
!1924 = !DILocation(line: 434, column: 17, scope: !1918)
!1925 = !DILocation(line: 441, column: 20, scope: !1887)
!1926 = !DILocation(line: 446, column: 11, scope: !1757)
!1927 = !DILocation(line: 449, column: 19, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 447, column: 13)
!1929 = !DILocation(line: 455, column: 19, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1928, file: !221, line: 454, column: 19)
!1931 = !DILocation(line: 455, column: 24, scope: !1930)
!1932 = !DILocation(line: 455, column: 28, scope: !1930)
!1933 = !DILocation(line: 455, column: 38, scope: !1930)
!1934 = !DILocation(line: 455, column: 47, scope: !1930)
!1935 = !DILocation(line: 455, column: 41, scope: !1930)
!1936 = !DILocation(line: 455, column: 52, scope: !1930)
!1937 = !DILocation(line: 454, column: 19, scope: !1928)
!1938 = !DILocation(line: 456, column: 25, scope: !1930)
!1939 = !DILocation(line: 456, column: 17, scope: !1930)
!1940 = !DILocation(line: 463, column: 25, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1930, file: !221, line: 457, column: 19)
!1942 = !DILocation(line: 467, column: 21, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !221, line: 467, column: 21)
!1944 = distinct !DILexicalBlock(scope: !1941, file: !221, line: 467, column: 21)
!1945 = !DILocation(line: 467, column: 21, scope: !1944)
!1946 = !DILocation(line: 468, column: 21, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !221, line: 468, column: 21)
!1948 = distinct !DILexicalBlock(scope: !1941, file: !221, line: 468, column: 21)
!1949 = !DILocation(line: 468, column: 21, scope: !1948)
!1950 = !DILocation(line: 469, column: 21, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !221, line: 469, column: 21)
!1952 = distinct !DILexicalBlock(scope: !1941, file: !221, line: 469, column: 21)
!1953 = !DILocation(line: 469, column: 21, scope: !1952)
!1954 = !DILocation(line: 470, column: 21, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !221, line: 470, column: 21)
!1956 = distinct !DILexicalBlock(scope: !1941, file: !221, line: 470, column: 21)
!1957 = !DILocation(line: 470, column: 21, scope: !1956)
!1958 = !DILocation(line: 471, column: 21, scope: !1941)
!1959 = !DILocation(line: 395, column: 21, scope: !1748)
!1960 = !DILocation(line: 484, column: 31, scope: !1757)
!1961 = !DILocation(line: 485, column: 31, scope: !1757)
!1962 = !DILocation(line: 487, column: 31, scope: !1757)
!1963 = !DILocation(line: 488, column: 31, scope: !1757)
!1964 = !DILocation(line: 489, column: 31, scope: !1757)
!1965 = !DILocation(line: 492, column: 15, scope: !1757)
!1966 = !DILocation(line: 494, column: 19, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !221, line: 493, column: 13)
!1968 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 492, column: 15)
!1969 = !DILocation(line: 501, column: 33, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 501, column: 15)
!1971 = !DILocation(line: 506, column: 15, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 505, column: 15)
!1973 = !DILocation(line: 510, column: 15, scope: !1757)
!1974 = !DILocation(line: 518, column: 26, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 518, column: 15)
!1976 = !DILocation(line: 518, column: 15, scope: !1757)
!1977 = !DILocation(line: 518, column: 40, scope: !1975)
!1978 = !DILocation(line: 518, column: 47, scope: !1975)
!1979 = !DILocation(line: 522, column: 17, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 522, column: 15)
!1981 = !DILocation(line: 518, column: 18, scope: !1975)
!1982 = !DILocation(line: 518, column: 65, scope: !1975)
!1983 = !DILocation(line: 522, column: 15, scope: !1757)
!1984 = !DILocation(line: 526, column: 11, scope: !1757)
!1985 = !DILocation(line: 541, column: 15, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 540, column: 15)
!1987 = !DILocation(line: 548, column: 15, scope: !1757)
!1988 = !DILocation(line: 550, column: 19, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !221, line: 549, column: 13)
!1990 = distinct !DILexicalBlock(scope: !1757, file: !221, line: 548, column: 15)
!1991 = !DILocation(line: 553, column: 19, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !221, line: 553, column: 19)
!1993 = !DILocation(line: 553, column: 35, scope: !1992)
!1994 = !DILocation(line: 553, column: 30, scope: !1992)
!1995 = !DILocation(line: 562, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !221, line: 562, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1989, file: !221, line: 562, column: 15)
!1998 = !DILocation(line: 562, column: 15, scope: !1997)
!1999 = !DILocation(line: 563, column: 15, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !221, line: 563, column: 15)
!2001 = distinct !DILexicalBlock(scope: !1989, file: !221, line: 563, column: 15)
!2002 = !DILocation(line: 563, column: 15, scope: !2001)
!2003 = !DILocation(line: 564, column: 15, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !221, line: 564, column: 15)
!2005 = distinct !DILexicalBlock(scope: !1989, file: !221, line: 564, column: 15)
!2006 = !DILocation(line: 564, column: 15, scope: !2005)
!2007 = !DILocation(line: 566, column: 13, scope: !1989)
!2008 = !DILocation(line: 606, column: 17, scope: !1756)
!2009 = !DILocation(line: 602, column: 20, scope: !1756)
!2010 = !DILocation(line: 609, column: 29, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1761, file: !221, line: 607, column: 15)
!2012 = !{!2013, !2013, i64 0}
!2013 = !{!"short", !721, i64 0}
!2014 = !DILocation(line: 609, column: 27, scope: !2011)
!2015 = !DILocation(line: 604, column: 18, scope: !1756)
!2016 = !DILocation(line: 610, column: 15, scope: !2011)
!2017 = !DILocation(line: 613, column: 17, scope: !1760)
!2018 = !DILocation(line: 614, column: 17, scope: !1760)
!2019 = !DILocation(line: 618, column: 29, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1760, file: !221, line: 618, column: 21)
!2021 = !DILocation(line: 618, column: 21, scope: !1760)
!2022 = !DILocation(line: 619, column: 29, scope: !2020)
!2023 = !DILocation(line: 619, column: 19, scope: !2020)
!2024 = !DILocation(line: 621, column: 17, scope: !1760)
!2025 = distinct !{!2025, !2024, !2026}
!2026 = !DILocation(line: 667, column: 44, scope: !1760)
!2027 = !DILocation(line: 623, column: 21, scope: !1778)
!2028 = !DILocation(line: 624, column: 56, scope: !1778)
!2029 = !DILocation(line: 624, column: 50, scope: !1778)
!2030 = !DILocation(line: 625, column: 53, scope: !1778)
!2031 = !DILocation(line: 613, column: 27, scope: !1760)
!2032 = !DILocation(line: 623, column: 29, scope: !1778)
!2033 = !DILocation(line: 624, column: 36, scope: !1778)
!2034 = !DILocation(line: 624, column: 28, scope: !1778)
!2035 = !DILocation(line: 626, column: 25, scope: !1778)
!2036 = !DILocation(line: 636, column: 38, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1785, file: !221, line: 634, column: 23)
!2038 = !DILocation(line: 636, column: 48, scope: !2037)
!2039 = !DILocation(line: 636, column: 51, scope: !2037)
!2040 = !DILocation(line: 636, column: 25, scope: !2037)
!2041 = !DILocation(line: 637, column: 28, scope: !2037)
!2042 = !DILocation(line: 636, column: 34, scope: !2037)
!2043 = distinct !{!2043, !2040, !2041}
!2044 = !DILocation(line: 650, column: 43, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !221, line: 650, column: 29)
!2046 = distinct !DILexicalBlock(scope: !1782, file: !221, line: 650, column: 29)
!2047 = !DILocation(line: 647, column: 29, scope: !1783)
!2048 = !DILocation(line: 649, column: 36, scope: !1782)
!2049 = !DILocation(line: 651, column: 49, scope: !2045)
!2050 = !DILocation(line: 651, column: 39, scope: !2045)
!2051 = !DILocation(line: 651, column: 31, scope: !2045)
!2052 = !DILocation(line: 650, column: 53, scope: !2045)
!2053 = !DILocation(line: 650, column: 29, scope: !2046)
!2054 = distinct !{!2054, !2053, !2055}
!2055 = !DILocation(line: 659, column: 33, scope: !2046)
!2056 = !DILocation(line: 666, column: 19, scope: !1760)
!2057 = !DILocation(line: 662, column: 41, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1784, file: !221, line: 662, column: 29)
!2059 = !DILocation(line: 662, column: 31, scope: !2058)
!2060 = !DILocation(line: 662, column: 29, scope: !1784)
!2061 = !DILocation(line: 664, column: 27, scope: !1784)
!2062 = !DILocation(line: 667, column: 26, scope: !1760)
!2063 = !DILocation(line: 667, column: 24, scope: !1760)
!2064 = !DILocation(line: 666, column: 19, scope: !1778)
!2065 = !DILocation(line: 668, column: 15, scope: !1761)
!2066 = !DILocation(line: 670, column: 40, scope: !1756)
!2067 = !DILocation(line: 672, column: 19, scope: !1790)
!2068 = !DILocation(line: 672, column: 45, scope: !1790)
!2069 = !DILocation(line: 672, column: 23, scope: !1790)
!2070 = !DILocation(line: 676, column: 33, scope: !1789)
!2071 = !DILocation(line: 676, column: 24, scope: !1789)
!2072 = !DILocation(line: 678, column: 17, scope: !1789)
!2073 = !DILocation(line: 680, column: 43, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !221, line: 680, column: 25)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !221, line: 679, column: 19)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !221, line: 678, column: 17)
!2077 = distinct !DILexicalBlock(scope: !1789, file: !221, line: 678, column: 17)
!2078 = !DILocation(line: 682, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !221, line: 682, column: 25)
!2080 = distinct !DILexicalBlock(scope: !2074, file: !221, line: 681, column: 23)
!2081 = !DILocation(line: 682, column: 25, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2079, file: !221, line: 682, column: 25)
!2083 = !DILocation(line: 682, column: 25, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !221, line: 682, column: 25)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !221, line: 682, column: 25)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !221, line: 682, column: 25)
!2087 = !DILocation(line: 682, column: 25, scope: !2085)
!2088 = !DILocation(line: 682, column: 25, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !221, line: 682, column: 25)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !221, line: 682, column: 25)
!2091 = !DILocation(line: 682, column: 25, scope: !2090)
!2092 = !DILocation(line: 682, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !221, line: 682, column: 25)
!2094 = distinct !DILexicalBlock(scope: !2086, file: !221, line: 682, column: 25)
!2095 = !DILocation(line: 682, column: 25, scope: !2094)
!2096 = !DILocation(line: 682, column: 25, scope: !2086)
!2097 = !DILocation(line: 682, column: 25, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !221, line: 682, column: 25)
!2099 = distinct !DILexicalBlock(scope: !2079, file: !221, line: 682, column: 25)
!2100 = !DILocation(line: 682, column: 25, scope: !2099)
!2101 = !DILocation(line: 683, column: 25, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !221, line: 683, column: 25)
!2103 = distinct !DILexicalBlock(scope: !2080, file: !221, line: 683, column: 25)
!2104 = !DILocation(line: 683, column: 25, scope: !2103)
!2105 = !DILocation(line: 684, column: 25, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !221, line: 684, column: 25)
!2107 = distinct !DILexicalBlock(scope: !2080, file: !221, line: 684, column: 25)
!2108 = !DILocation(line: 684, column: 25, scope: !2107)
!2109 = !DILocation(line: 685, column: 38, scope: !2080)
!2110 = !DILocation(line: 685, column: 33, scope: !2080)
!2111 = !DILocation(line: 686, column: 23, scope: !2080)
!2112 = !DILocation(line: 687, column: 30, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2074, file: !221, line: 687, column: 30)
!2114 = !DILocation(line: 687, column: 30, scope: !2074)
!2115 = !DILocation(line: 689, column: 25, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !221, line: 689, column: 25)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !221, line: 689, column: 25)
!2118 = distinct !DILexicalBlock(scope: !2113, file: !221, line: 688, column: 23)
!2119 = !DILocation(line: 689, column: 25, scope: !2117)
!2120 = !DILocation(line: 691, column: 23, scope: !2118)
!2121 = !DILocation(line: 692, column: 35, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2075, file: !221, line: 692, column: 25)
!2123 = !DILocation(line: 692, column: 30, scope: !2122)
!2124 = !DILocation(line: 692, column: 25, scope: !2075)
!2125 = !DILocation(line: 694, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !221, line: 694, column: 21)
!2127 = distinct !DILexicalBlock(scope: !2075, file: !221, line: 694, column: 21)
!2128 = !DILocation(line: 694, column: 21, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !221, line: 694, column: 21)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !221, line: 694, column: 21)
!2131 = distinct !DILexicalBlock(scope: !2126, file: !221, line: 694, column: 21)
!2132 = !DILocation(line: 694, column: 21, scope: !2130)
!2133 = !DILocation(line: 694, column: 21, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !221, line: 694, column: 21)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !221, line: 694, column: 21)
!2136 = !DILocation(line: 694, column: 21, scope: !2135)
!2137 = !DILocation(line: 694, column: 21, scope: !2131)
!2138 = !DILocation(line: 695, column: 21, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !221, line: 695, column: 21)
!2140 = distinct !DILexicalBlock(scope: !2075, file: !221, line: 695, column: 21)
!2141 = !DILocation(line: 695, column: 21, scope: !2140)
!2142 = !DILocation(line: 696, column: 25, scope: !2075)
!2143 = !DILocation(line: 678, column: 17, scope: !2076)
!2144 = distinct !{!2144, !2145, !2146}
!2145 = !DILocation(line: 678, column: 17, scope: !2077)
!2146 = !DILocation(line: 697, column: 19, scope: !2077)
!2147 = !DILocation(line: 704, column: 34, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1748, file: !221, line: 704, column: 11)
!2149 = !DILocation(line: 706, column: 14, scope: !2148)
!2150 = !DILocation(line: 707, column: 14, scope: !2148)
!2151 = !DILocation(line: 707, column: 35, scope: !2148)
!2152 = !DILocation(line: 707, column: 17, scope: !2148)
!2153 = !DILocation(line: 707, column: 53, scope: !2148)
!2154 = !DILocation(line: 707, column: 47, scope: !2148)
!2155 = !DILocation(line: 707, column: 65, scope: !2148)
!2156 = !DILocation(line: 708, column: 15, scope: !2148)
!2157 = !DILocation(line: 708, column: 11, scope: !2148)
!2158 = !DILocation(line: 704, column: 11, scope: !1748)
!2159 = !DILocation(line: 712, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1748, file: !221, line: 712, column: 7)
!2161 = !DILocation(line: 712, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2160, file: !221, line: 712, column: 7)
!2163 = !DILocation(line: 712, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !221, line: 712, column: 7)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !221, line: 712, column: 7)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !221, line: 712, column: 7)
!2167 = !DILocation(line: 712, column: 7, scope: !2165)
!2168 = !DILocation(line: 712, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !221, line: 712, column: 7)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !221, line: 712, column: 7)
!2171 = !DILocation(line: 712, column: 7, scope: !2170)
!2172 = !DILocation(line: 712, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !221, line: 712, column: 7)
!2174 = distinct !DILexicalBlock(scope: !2166, file: !221, line: 712, column: 7)
!2175 = !DILocation(line: 712, column: 7, scope: !2174)
!2176 = !DILocation(line: 712, column: 7, scope: !2166)
!2177 = !DILocation(line: 712, column: 7, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !221, line: 712, column: 7)
!2179 = distinct !DILexicalBlock(scope: !2160, file: !221, line: 712, column: 7)
!2180 = !DILocation(line: 712, column: 7, scope: !2179)
!2181 = !DILocation(line: 715, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !221, line: 715, column: 7)
!2183 = distinct !DILexicalBlock(scope: !1748, file: !221, line: 715, column: 7)
!2184 = !DILocation(line: 715, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !221, line: 715, column: 7)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !221, line: 715, column: 7)
!2187 = distinct !DILexicalBlock(scope: !2182, file: !221, line: 715, column: 7)
!2188 = !DILocation(line: 715, column: 7, scope: !2186)
!2189 = !DILocation(line: 715, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !221, line: 715, column: 7)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !221, line: 715, column: 7)
!2192 = !DILocation(line: 715, column: 7, scope: !2191)
!2193 = !DILocation(line: 715, column: 7, scope: !2187)
!2194 = !DILocation(line: 716, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !221, line: 716, column: 7)
!2196 = distinct !DILexicalBlock(scope: !1748, file: !221, line: 716, column: 7)
!2197 = !DILocation(line: 716, column: 7, scope: !2196)
!2198 = !DILocation(line: 718, column: 13, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1748, file: !221, line: 718, column: 11)
!2200 = !DILocation(line: 718, column: 11, scope: !1748)
!2201 = !DILocation(line: 720, column: 5, scope: !1749)
!2202 = !DILocation(line: 392, column: 75, scope: !1749)
!2203 = !DILocation(line: 392, column: 3, scope: !1749)
!2204 = distinct !{!2204, !1862, !2205}
!2205 = !DILocation(line: 720, column: 5, scope: !1750)
!2206 = !DILocation(line: 722, column: 11, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !1721, file: !221, line: 722, column: 7)
!2208 = !DILocation(line: 722, column: 16, scope: !2207)
!2209 = !DILocation(line: 730, column: 51, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1721, file: !221, line: 730, column: 7)
!2211 = !DILocation(line: 731, column: 10, scope: !2210)
!2212 = !DILocation(line: 733, column: 11, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !221, line: 733, column: 11)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !221, line: 732, column: 5)
!2215 = !DILocation(line: 733, column: 11, scope: !2214)
!2216 = !DILocation(line: 734, column: 16, scope: !2213)
!2217 = !DILocation(line: 734, column: 9, scope: !2213)
!2218 = !DILocation(line: 738, column: 18, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2213, file: !221, line: 738, column: 16)
!2220 = !DILocation(line: 738, column: 32, scope: !2219)
!2221 = !DILocation(line: 738, column: 29, scope: !2219)
!2222 = !DILocation(line: 747, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !1721, file: !221, line: 747, column: 7)
!2224 = !DILocation(line: 747, column: 20, scope: !2223)
!2225 = !DILocation(line: 748, column: 12, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !221, line: 748, column: 5)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !221, line: 748, column: 5)
!2228 = !DILocation(line: 748, column: 5, scope: !2227)
!2229 = !DILocation(line: 749, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !221, line: 749, column: 7)
!2231 = distinct !DILexicalBlock(scope: !2226, file: !221, line: 749, column: 7)
!2232 = !DILocation(line: 749, column: 7, scope: !2231)
!2233 = !DILocation(line: 748, column: 39, scope: !2226)
!2234 = distinct !{!2234, !2228, !2235}
!2235 = !DILocation(line: 749, column: 7, scope: !2227)
!2236 = !DILocation(line: 751, column: 11, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1721, file: !221, line: 751, column: 7)
!2238 = !DILocation(line: 751, column: 7, scope: !1721)
!2239 = !DILocation(line: 752, column: 5, scope: !2237)
!2240 = !DILocation(line: 752, column: 17, scope: !2237)
!2241 = !DILocation(line: 758, column: 21, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !1721, file: !221, line: 758, column: 7)
!2243 = !DILocation(line: 758, column: 54, scope: !2242)
!2244 = !DILocation(line: 758, column: 51, scope: !2242)
!2245 = !DILocation(line: 762, column: 42, scope: !1721)
!2246 = !DILocation(line: 760, column: 10, scope: !1721)
!2247 = !DILocation(line: 760, column: 3, scope: !1721)
!2248 = !DILocation(line: 764, column: 1, scope: !1721)
!2249 = distinct !DISubprogram(name: "gettext_quote", scope: !221, file: !221, line: 199, type: !2250, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!47, !47, !12}
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DILocalVariable(name: "msgid", arg: 1, scope: !2249, file: !221, line: 199, type: !47)
!2254 = !DILocalVariable(name: "s", arg: 2, scope: !2249, file: !221, line: 199, type: !12)
!2255 = !DILocalVariable(name: "translation", scope: !2249, file: !221, line: 201, type: !47)
!2256 = !DILocalVariable(name: "locale_code", scope: !2249, file: !221, line: 202, type: !47)
!2257 = !DILocation(line: 199, column: 28, scope: !2249)
!2258 = !DILocation(line: 199, column: 54, scope: !2249)
!2259 = !DILocation(line: 201, column: 29, scope: !2249)
!2260 = !DILocation(line: 201, column: 15, scope: !2249)
!2261 = !DILocation(line: 204, column: 19, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2249, file: !221, line: 204, column: 7)
!2263 = !DILocation(line: 204, column: 7, scope: !2249)
!2264 = !DILocation(line: 225, column: 17, scope: !2249)
!2265 = !DILocation(line: 202, column: 15, scope: !2249)
!2266 = !DILocalVariable(name: "s2", arg: 2, scope: !2267, file: !2268, line: 160, type: !47)
!2267 = distinct !DISubprogram(name: "strcaseeq0", scope: !2268, file: !2268, line: 160, type: !2269, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2271)
!2268 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!6, !47, !47, !9, !9, !9, !9, !9, !9, !9, !9, !9}
!2271 = !{!2272, !2266, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281}
!2272 = !DILocalVariable(name: "s1", arg: 1, scope: !2267, file: !2268, line: 160, type: !47)
!2273 = !DILocalVariable(name: "s20", arg: 3, scope: !2267, file: !2268, line: 160, type: !9)
!2274 = !DILocalVariable(name: "s21", arg: 4, scope: !2267, file: !2268, line: 160, type: !9)
!2275 = !DILocalVariable(name: "s22", arg: 5, scope: !2267, file: !2268, line: 160, type: !9)
!2276 = !DILocalVariable(name: "s23", arg: 6, scope: !2267, file: !2268, line: 160, type: !9)
!2277 = !DILocalVariable(name: "s24", arg: 7, scope: !2267, file: !2268, line: 160, type: !9)
!2278 = !DILocalVariable(name: "s25", arg: 8, scope: !2267, file: !2268, line: 160, type: !9)
!2279 = !DILocalVariable(name: "s26", arg: 9, scope: !2267, file: !2268, line: 160, type: !9)
!2280 = !DILocalVariable(name: "s27", arg: 10, scope: !2267, file: !2268, line: 160, type: !9)
!2281 = !DILocalVariable(name: "s28", arg: 11, scope: !2267, file: !2268, line: 160, type: !9)
!2282 = !DILocation(line: 160, column: 41, scope: !2267, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 226, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2249, file: !221, line: 226, column: 7)
!2285 = !DILocation(line: 160, column: 120, scope: !2267, inlinedAt: !2283)
!2286 = !DILocation(line: 160, column: 130, scope: !2267, inlinedAt: !2283)
!2287 = !DILocation(line: 162, column: 7, scope: !2288, inlinedAt: !2283)
!2288 = distinct !DILexicalBlock(scope: !2267, file: !2268, line: 162, column: 7)
!2289 = !DILocalVariable(name: "s2", arg: 2, scope: !2290, file: !2268, line: 146, type: !47)
!2290 = distinct !DISubprogram(name: "strcaseeq1", scope: !2268, file: !2268, line: 146, type: !2291, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!6, !47, !47, !9, !9, !9, !9, !9, !9, !9, !9}
!2293 = !{!2294, !2289, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2294 = !DILocalVariable(name: "s1", arg: 1, scope: !2290, file: !2268, line: 146, type: !47)
!2295 = !DILocalVariable(name: "s21", arg: 3, scope: !2290, file: !2268, line: 146, type: !9)
!2296 = !DILocalVariable(name: "s22", arg: 4, scope: !2290, file: !2268, line: 146, type: !9)
!2297 = !DILocalVariable(name: "s23", arg: 5, scope: !2290, file: !2268, line: 146, type: !9)
!2298 = !DILocalVariable(name: "s24", arg: 6, scope: !2290, file: !2268, line: 146, type: !9)
!2299 = !DILocalVariable(name: "s25", arg: 7, scope: !2290, file: !2268, line: 146, type: !9)
!2300 = !DILocalVariable(name: "s26", arg: 8, scope: !2290, file: !2268, line: 146, type: !9)
!2301 = !DILocalVariable(name: "s27", arg: 9, scope: !2290, file: !2268, line: 146, type: !9)
!2302 = !DILocalVariable(name: "s28", arg: 10, scope: !2290, file: !2268, line: 146, type: !9)
!2303 = !DILocation(line: 146, column: 41, scope: !2290, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 167, column: 16, scope: !2305, inlinedAt: !2283)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !2268, line: 164, column: 11)
!2306 = distinct !DILexicalBlock(scope: !2288, file: !2268, line: 163, column: 5)
!2307 = !DILocation(line: 146, column: 110, scope: !2290, inlinedAt: !2304)
!2308 = !DILocation(line: 146, column: 120, scope: !2290, inlinedAt: !2304)
!2309 = !DILocation(line: 148, column: 7, scope: !2310, inlinedAt: !2304)
!2310 = distinct !DILexicalBlock(scope: !2290, file: !2268, line: 148, column: 7)
!2311 = !DILocalVariable(name: "s2", arg: 2, scope: !2312, file: !2268, line: 132, type: !47)
!2312 = distinct !DISubprogram(name: "strcaseeq2", scope: !2268, file: !2268, line: 132, type: !2313, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!6, !47, !47, !9, !9, !9, !9, !9, !9, !9}
!2315 = !{!2316, !2311, !2317, !2318, !2319, !2320, !2321, !2322, !2323}
!2316 = !DILocalVariable(name: "s1", arg: 1, scope: !2312, file: !2268, line: 132, type: !47)
!2317 = !DILocalVariable(name: "s22", arg: 3, scope: !2312, file: !2268, line: 132, type: !9)
!2318 = !DILocalVariable(name: "s23", arg: 4, scope: !2312, file: !2268, line: 132, type: !9)
!2319 = !DILocalVariable(name: "s24", arg: 5, scope: !2312, file: !2268, line: 132, type: !9)
!2320 = !DILocalVariable(name: "s25", arg: 6, scope: !2312, file: !2268, line: 132, type: !9)
!2321 = !DILocalVariable(name: "s26", arg: 7, scope: !2312, file: !2268, line: 132, type: !9)
!2322 = !DILocalVariable(name: "s27", arg: 8, scope: !2312, file: !2268, line: 132, type: !9)
!2323 = !DILocalVariable(name: "s28", arg: 9, scope: !2312, file: !2268, line: 132, type: !9)
!2324 = !DILocation(line: 132, column: 41, scope: !2312, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 153, column: 16, scope: !2326, inlinedAt: !2304)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !2268, line: 150, column: 11)
!2327 = distinct !DILexicalBlock(scope: !2310, file: !2268, line: 149, column: 5)
!2328 = !DILocation(line: 132, column: 100, scope: !2312, inlinedAt: !2325)
!2329 = !DILocation(line: 132, column: 110, scope: !2312, inlinedAt: !2325)
!2330 = !DILocation(line: 134, column: 7, scope: !2331, inlinedAt: !2325)
!2331 = distinct !DILexicalBlock(scope: !2312, file: !2268, line: 134, column: 7)
!2332 = !DILocalVariable(name: "s2", arg: 2, scope: !2333, file: !2268, line: 118, type: !47)
!2333 = distinct !DISubprogram(name: "strcaseeq3", scope: !2268, file: !2268, line: 118, type: !2334, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!6, !47, !47, !9, !9, !9, !9, !9, !9}
!2336 = !{!2337, !2332, !2338, !2339, !2340, !2341, !2342, !2343}
!2337 = !DILocalVariable(name: "s1", arg: 1, scope: !2333, file: !2268, line: 118, type: !47)
!2338 = !DILocalVariable(name: "s23", arg: 3, scope: !2333, file: !2268, line: 118, type: !9)
!2339 = !DILocalVariable(name: "s24", arg: 4, scope: !2333, file: !2268, line: 118, type: !9)
!2340 = !DILocalVariable(name: "s25", arg: 5, scope: !2333, file: !2268, line: 118, type: !9)
!2341 = !DILocalVariable(name: "s26", arg: 6, scope: !2333, file: !2268, line: 118, type: !9)
!2342 = !DILocalVariable(name: "s27", arg: 7, scope: !2333, file: !2268, line: 118, type: !9)
!2343 = !DILocalVariable(name: "s28", arg: 8, scope: !2333, file: !2268, line: 118, type: !9)
!2344 = !DILocation(line: 118, column: 41, scope: !2333, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 139, column: 16, scope: !2346, inlinedAt: !2325)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !2268, line: 136, column: 11)
!2347 = distinct !DILexicalBlock(scope: !2331, file: !2268, line: 135, column: 5)
!2348 = !DILocation(line: 118, column: 90, scope: !2333, inlinedAt: !2345)
!2349 = !DILocation(line: 118, column: 100, scope: !2333, inlinedAt: !2345)
!2350 = !DILocation(line: 120, column: 7, scope: !2351, inlinedAt: !2345)
!2351 = distinct !DILexicalBlock(scope: !2333, file: !2268, line: 120, column: 7)
!2352 = !DILocation(line: 120, column: 7, scope: !2333, inlinedAt: !2345)
!2353 = !DILocalVariable(name: "s2", arg: 2, scope: !2354, file: !2268, line: 104, type: !47)
!2354 = distinct !DISubprogram(name: "strcaseeq4", scope: !2268, file: !2268, line: 104, type: !2355, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!6, !47, !47, !9, !9, !9, !9, !9}
!2357 = !{!2358, !2353, !2359, !2360, !2361, !2362, !2363}
!2358 = !DILocalVariable(name: "s1", arg: 1, scope: !2354, file: !2268, line: 104, type: !47)
!2359 = !DILocalVariable(name: "s24", arg: 3, scope: !2354, file: !2268, line: 104, type: !9)
!2360 = !DILocalVariable(name: "s25", arg: 4, scope: !2354, file: !2268, line: 104, type: !9)
!2361 = !DILocalVariable(name: "s26", arg: 5, scope: !2354, file: !2268, line: 104, type: !9)
!2362 = !DILocalVariable(name: "s27", arg: 6, scope: !2354, file: !2268, line: 104, type: !9)
!2363 = !DILocalVariable(name: "s28", arg: 7, scope: !2354, file: !2268, line: 104, type: !9)
!2364 = !DILocation(line: 104, column: 41, scope: !2354, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 125, column: 16, scope: !2366, inlinedAt: !2345)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !2268, line: 122, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2351, file: !2268, line: 121, column: 5)
!2368 = !DILocation(line: 104, column: 80, scope: !2354, inlinedAt: !2365)
!2369 = !DILocation(line: 104, column: 90, scope: !2354, inlinedAt: !2365)
!2370 = !DILocation(line: 106, column: 7, scope: !2371, inlinedAt: !2365)
!2371 = distinct !DILexicalBlock(scope: !2354, file: !2268, line: 106, column: 7)
!2372 = !DILocation(line: 106, column: 7, scope: !2354, inlinedAt: !2365)
!2373 = !DILocalVariable(name: "s2", arg: 2, scope: !2374, file: !2268, line: 90, type: !47)
!2374 = distinct !DISubprogram(name: "strcaseeq5", scope: !2268, file: !2268, line: 90, type: !2375, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!6, !47, !47, !9, !9, !9, !9}
!2377 = !{!2378, !2373, !2379, !2380, !2381, !2382}
!2378 = !DILocalVariable(name: "s1", arg: 1, scope: !2374, file: !2268, line: 90, type: !47)
!2379 = !DILocalVariable(name: "s25", arg: 3, scope: !2374, file: !2268, line: 90, type: !9)
!2380 = !DILocalVariable(name: "s26", arg: 4, scope: !2374, file: !2268, line: 90, type: !9)
!2381 = !DILocalVariable(name: "s27", arg: 5, scope: !2374, file: !2268, line: 90, type: !9)
!2382 = !DILocalVariable(name: "s28", arg: 6, scope: !2374, file: !2268, line: 90, type: !9)
!2383 = !DILocation(line: 90, column: 41, scope: !2374, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 111, column: 16, scope: !2385, inlinedAt: !2365)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !2268, line: 108, column: 11)
!2386 = distinct !DILexicalBlock(scope: !2371, file: !2268, line: 107, column: 5)
!2387 = !DILocation(line: 90, column: 70, scope: !2374, inlinedAt: !2384)
!2388 = !DILocation(line: 90, column: 80, scope: !2374, inlinedAt: !2384)
!2389 = !DILocation(line: 92, column: 7, scope: !2390, inlinedAt: !2384)
!2390 = distinct !DILexicalBlock(scope: !2374, file: !2268, line: 92, column: 7)
!2391 = !DILocation(line: 92, column: 7, scope: !2374, inlinedAt: !2384)
!2392 = !DILocation(line: 227, column: 12, scope: !2284)
!2393 = !DILocation(line: 227, column: 21, scope: !2284)
!2394 = !DILocation(line: 227, column: 5, scope: !2284)
!2395 = !DILocation(line: 146, column: 41, scope: !2290, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 167, column: 16, scope: !2305, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 228, column: 7, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2249, file: !221, line: 228, column: 7)
!2399 = !DILocation(line: 146, column: 110, scope: !2290, inlinedAt: !2396)
!2400 = !DILocation(line: 146, column: 120, scope: !2290, inlinedAt: !2396)
!2401 = !DILocation(line: 148, column: 7, scope: !2310, inlinedAt: !2396)
!2402 = !DILocation(line: 132, column: 41, scope: !2312, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 153, column: 16, scope: !2326, inlinedAt: !2396)
!2404 = !DILocation(line: 132, column: 100, scope: !2312, inlinedAt: !2403)
!2405 = !DILocation(line: 132, column: 110, scope: !2312, inlinedAt: !2403)
!2406 = !DILocation(line: 134, column: 7, scope: !2331, inlinedAt: !2403)
!2407 = !DILocation(line: 134, column: 7, scope: !2312, inlinedAt: !2403)
!2408 = !DILocation(line: 118, column: 41, scope: !2333, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 139, column: 16, scope: !2346, inlinedAt: !2403)
!2410 = !DILocation(line: 118, column: 90, scope: !2333, inlinedAt: !2409)
!2411 = !DILocation(line: 118, column: 100, scope: !2333, inlinedAt: !2409)
!2412 = !DILocation(line: 120, column: 7, scope: !2351, inlinedAt: !2409)
!2413 = !DILocation(line: 120, column: 7, scope: !2333, inlinedAt: !2409)
!2414 = !DILocation(line: 104, column: 41, scope: !2354, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 125, column: 16, scope: !2366, inlinedAt: !2409)
!2416 = !DILocation(line: 104, column: 80, scope: !2354, inlinedAt: !2415)
!2417 = !DILocation(line: 104, column: 90, scope: !2354, inlinedAt: !2415)
!2418 = !DILocation(line: 106, column: 7, scope: !2371, inlinedAt: !2415)
!2419 = !DILocation(line: 106, column: 7, scope: !2354, inlinedAt: !2415)
!2420 = !DILocation(line: 90, column: 41, scope: !2374, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 111, column: 16, scope: !2385, inlinedAt: !2415)
!2422 = !DILocation(line: 90, column: 70, scope: !2374, inlinedAt: !2421)
!2423 = !DILocation(line: 90, column: 80, scope: !2374, inlinedAt: !2421)
!2424 = !DILocation(line: 92, column: 7, scope: !2390, inlinedAt: !2421)
!2425 = !DILocation(line: 92, column: 7, scope: !2374, inlinedAt: !2421)
!2426 = !DILocalVariable(name: "s2", arg: 2, scope: !2427, file: !2268, line: 76, type: !47)
!2427 = distinct !DISubprogram(name: "strcaseeq6", scope: !2268, file: !2268, line: 76, type: !2428, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!6, !47, !47, !9, !9, !9}
!2430 = !{!2431, !2426, !2432, !2433, !2434}
!2431 = !DILocalVariable(name: "s1", arg: 1, scope: !2427, file: !2268, line: 76, type: !47)
!2432 = !DILocalVariable(name: "s26", arg: 3, scope: !2427, file: !2268, line: 76, type: !9)
!2433 = !DILocalVariable(name: "s27", arg: 4, scope: !2427, file: !2268, line: 76, type: !9)
!2434 = !DILocalVariable(name: "s28", arg: 5, scope: !2427, file: !2268, line: 76, type: !9)
!2435 = !DILocation(line: 76, column: 41, scope: !2427, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 97, column: 16, scope: !2437, inlinedAt: !2421)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !2268, line: 94, column: 11)
!2438 = distinct !DILexicalBlock(scope: !2390, file: !2268, line: 93, column: 5)
!2439 = !DILocation(line: 76, column: 60, scope: !2427, inlinedAt: !2436)
!2440 = !DILocation(line: 76, column: 70, scope: !2427, inlinedAt: !2436)
!2441 = !DILocation(line: 78, column: 7, scope: !2442, inlinedAt: !2436)
!2442 = distinct !DILexicalBlock(scope: !2427, file: !2268, line: 78, column: 7)
!2443 = !DILocation(line: 78, column: 7, scope: !2427, inlinedAt: !2436)
!2444 = !DILocalVariable(name: "s2", arg: 2, scope: !2445, file: !2268, line: 62, type: !47)
!2445 = distinct !DISubprogram(name: "strcaseeq7", scope: !2268, file: !2268, line: 62, type: !2446, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!6, !47, !47, !9, !9}
!2448 = !{!2449, !2444, !2450, !2451}
!2449 = !DILocalVariable(name: "s1", arg: 1, scope: !2445, file: !2268, line: 62, type: !47)
!2450 = !DILocalVariable(name: "s27", arg: 3, scope: !2445, file: !2268, line: 62, type: !9)
!2451 = !DILocalVariable(name: "s28", arg: 4, scope: !2445, file: !2268, line: 62, type: !9)
!2452 = !DILocation(line: 62, column: 41, scope: !2445, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 83, column: 16, scope: !2454, inlinedAt: !2436)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !2268, line: 80, column: 11)
!2455 = distinct !DILexicalBlock(scope: !2442, file: !2268, line: 79, column: 5)
!2456 = !DILocation(line: 62, column: 50, scope: !2445, inlinedAt: !2453)
!2457 = !DILocation(line: 62, column: 60, scope: !2445, inlinedAt: !2453)
!2458 = !DILocation(line: 64, column: 7, scope: !2459, inlinedAt: !2453)
!2459 = distinct !DILexicalBlock(scope: !2445, file: !2268, line: 64, column: 7)
!2460 = !DILocation(line: 228, column: 7, scope: !2249)
!2461 = !DILocation(line: 229, column: 12, scope: !2398)
!2462 = !DILocation(line: 229, column: 21, scope: !2398)
!2463 = !DILocation(line: 229, column: 5, scope: !2398)
!2464 = !DILocation(line: 231, column: 13, scope: !2249)
!2465 = !DILocation(line: 231, column: 11, scope: !2249)
!2466 = !DILocation(line: 231, column: 3, scope: !2249)
!2467 = !DILocation(line: 232, column: 1, scope: !2249)
!2468 = distinct !DISubprogram(name: "quotearg_alloc", scope: !221, file: !221, line: 791, type: !2469, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!8, !47, !41, !1593}
!2471 = !{!2472, !2473, !2474}
!2472 = !DILocalVariable(name: "arg", arg: 1, scope: !2468, file: !221, line: 791, type: !47)
!2473 = !DILocalVariable(name: "argsize", arg: 2, scope: !2468, file: !221, line: 791, type: !41)
!2474 = !DILocalVariable(name: "o", arg: 3, scope: !2468, file: !221, line: 792, type: !1593)
!2475 = !DILocation(line: 791, column: 29, scope: !2468)
!2476 = !DILocation(line: 791, column: 41, scope: !2468)
!2477 = !DILocation(line: 792, column: 47, scope: !2468)
!2478 = !DILocalVariable(name: "arg", arg: 1, scope: !2479, file: !221, line: 804, type: !47)
!2479 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !221, file: !221, line: 804, type: !2480, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!8, !47, !41, !675, !1593}
!2482 = !{!2478, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2483 = !DILocalVariable(name: "argsize", arg: 2, scope: !2479, file: !221, line: 804, type: !41)
!2484 = !DILocalVariable(name: "size", arg: 3, scope: !2479, file: !221, line: 804, type: !675)
!2485 = !DILocalVariable(name: "o", arg: 4, scope: !2479, file: !221, line: 805, type: !1593)
!2486 = !DILocalVariable(name: "p", scope: !2479, file: !221, line: 807, type: !1593)
!2487 = !DILocalVariable(name: "e", scope: !2479, file: !221, line: 808, type: !6)
!2488 = !DILocalVariable(name: "flags", scope: !2479, file: !221, line: 810, type: !6)
!2489 = !DILocalVariable(name: "bufsize", scope: !2479, file: !221, line: 811, type: !41)
!2490 = !DILocalVariable(name: "buf", scope: !2479, file: !221, line: 815, type: !8)
!2491 = !DILocation(line: 804, column: 33, scope: !2479, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 794, column: 10, scope: !2468)
!2493 = !DILocation(line: 804, column: 45, scope: !2479, inlinedAt: !2492)
!2494 = !DILocation(line: 804, column: 62, scope: !2479, inlinedAt: !2492)
!2495 = !DILocation(line: 805, column: 51, scope: !2479, inlinedAt: !2492)
!2496 = !DILocation(line: 807, column: 37, scope: !2479, inlinedAt: !2492)
!2497 = !DILocation(line: 807, column: 33, scope: !2479, inlinedAt: !2492)
!2498 = !DILocation(line: 808, column: 11, scope: !2479, inlinedAt: !2492)
!2499 = !DILocation(line: 808, column: 7, scope: !2479, inlinedAt: !2492)
!2500 = !DILocation(line: 810, column: 18, scope: !2479, inlinedAt: !2492)
!2501 = !DILocation(line: 810, column: 24, scope: !2479, inlinedAt: !2492)
!2502 = !DILocation(line: 810, column: 7, scope: !2479, inlinedAt: !2492)
!2503 = !DILocation(line: 811, column: 69, scope: !2479, inlinedAt: !2492)
!2504 = !DILocation(line: 812, column: 53, scope: !2479, inlinedAt: !2492)
!2505 = !DILocation(line: 813, column: 49, scope: !2479, inlinedAt: !2492)
!2506 = !DILocation(line: 814, column: 49, scope: !2479, inlinedAt: !2492)
!2507 = !DILocation(line: 811, column: 20, scope: !2479, inlinedAt: !2492)
!2508 = !DILocation(line: 814, column: 62, scope: !2479, inlinedAt: !2492)
!2509 = !DILocation(line: 811, column: 10, scope: !2479, inlinedAt: !2492)
!2510 = !DILocalVariable(name: "n", arg: 1, scope: !2511, file: !671, line: 220, type: !41)
!2511 = distinct !DISubprogram(name: "xcharalloc", scope: !671, file: !671, line: 220, type: !2512, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!8, !41}
!2514 = !{!2510}
!2515 = !DILocation(line: 220, column: 20, scope: !2511, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 815, column: 15, scope: !2479, inlinedAt: !2492)
!2517 = !DILocation(line: 222, column: 10, scope: !2511, inlinedAt: !2516)
!2518 = !DILocation(line: 815, column: 9, scope: !2479, inlinedAt: !2492)
!2519 = !DILocation(line: 816, column: 60, scope: !2479, inlinedAt: !2492)
!2520 = !DILocation(line: 818, column: 32, scope: !2479, inlinedAt: !2492)
!2521 = !DILocation(line: 818, column: 47, scope: !2479, inlinedAt: !2492)
!2522 = !DILocation(line: 816, column: 3, scope: !2479, inlinedAt: !2492)
!2523 = !DILocation(line: 819, column: 9, scope: !2479, inlinedAt: !2492)
!2524 = !DILocation(line: 794, column: 3, scope: !2468)
!2525 = !DILocation(line: 804, column: 33, scope: !2479)
!2526 = !DILocation(line: 804, column: 45, scope: !2479)
!2527 = !DILocation(line: 804, column: 62, scope: !2479)
!2528 = !DILocation(line: 805, column: 51, scope: !2479)
!2529 = !DILocation(line: 807, column: 37, scope: !2479)
!2530 = !DILocation(line: 807, column: 33, scope: !2479)
!2531 = !DILocation(line: 808, column: 11, scope: !2479)
!2532 = !DILocation(line: 808, column: 7, scope: !2479)
!2533 = !DILocation(line: 810, column: 18, scope: !2479)
!2534 = !DILocation(line: 810, column: 27, scope: !2479)
!2535 = !DILocation(line: 810, column: 24, scope: !2479)
!2536 = !DILocation(line: 810, column: 7, scope: !2479)
!2537 = !DILocation(line: 811, column: 69, scope: !2479)
!2538 = !DILocation(line: 812, column: 53, scope: !2479)
!2539 = !DILocation(line: 813, column: 49, scope: !2479)
!2540 = !DILocation(line: 814, column: 49, scope: !2479)
!2541 = !DILocation(line: 811, column: 20, scope: !2479)
!2542 = !DILocation(line: 814, column: 62, scope: !2479)
!2543 = !DILocation(line: 811, column: 10, scope: !2479)
!2544 = !DILocation(line: 220, column: 20, scope: !2511, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 815, column: 15, scope: !2479)
!2546 = !DILocation(line: 222, column: 10, scope: !2511, inlinedAt: !2545)
!2547 = !DILocation(line: 815, column: 9, scope: !2479)
!2548 = !DILocation(line: 816, column: 60, scope: !2479)
!2549 = !DILocation(line: 818, column: 32, scope: !2479)
!2550 = !DILocation(line: 818, column: 47, scope: !2479)
!2551 = !DILocation(line: 816, column: 3, scope: !2479)
!2552 = !DILocation(line: 819, column: 9, scope: !2479)
!2553 = !DILocation(line: 820, column: 7, scope: !2479)
!2554 = !DILocation(line: 821, column: 11, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2479, file: !221, line: 820, column: 7)
!2556 = !{!822, !822, i64 0}
!2557 = !DILocation(line: 821, column: 5, scope: !2555)
!2558 = !DILocation(line: 822, column: 3, scope: !2479)
!2559 = distinct !DISubprogram(name: "quotearg_free", scope: !221, file: !221, line: 840, type: !728, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2560)
!2560 = !{!2561, !2562}
!2561 = !DILocalVariable(name: "sv", scope: !2559, file: !221, line: 842, type: !245)
!2562 = !DILocalVariable(name: "i", scope: !2559, file: !221, line: 843, type: !6)
!2563 = !DILocation(line: 842, column: 24, scope: !2559)
!2564 = !DILocation(line: 842, column: 19, scope: !2559)
!2565 = !DILocation(line: 843, column: 7, scope: !2559)
!2566 = !DILocation(line: 844, column: 19, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !221, line: 844, column: 3)
!2568 = distinct !DILexicalBlock(scope: !2559, file: !221, line: 844, column: 3)
!2569 = !DILocation(line: 844, column: 17, scope: !2567)
!2570 = !DILocation(line: 844, column: 3, scope: !2568)
!2571 = !DILocation(line: 845, column: 17, scope: !2567)
!2572 = !{!2573, !720, i64 8}
!2573 = !{!"slotvec", !822, i64 0, !720, i64 8}
!2574 = !DILocation(line: 845, column: 5, scope: !2567)
!2575 = !DILocation(line: 844, column: 28, scope: !2567)
!2576 = distinct !{!2576, !2570, !2577}
!2577 = !DILocation(line: 845, column: 20, scope: !2568)
!2578 = !DILocation(line: 846, column: 13, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2559, file: !221, line: 846, column: 7)
!2580 = !DILocation(line: 846, column: 17, scope: !2579)
!2581 = !DILocation(line: 846, column: 7, scope: !2559)
!2582 = !DILocation(line: 848, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !221, line: 847, column: 5)
!2584 = !DILocation(line: 849, column: 21, scope: !2583)
!2585 = !{!2573, !822, i64 0}
!2586 = !DILocation(line: 850, column: 20, scope: !2583)
!2587 = !DILocation(line: 851, column: 5, scope: !2583)
!2588 = !DILocation(line: 852, column: 10, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2559, file: !221, line: 852, column: 7)
!2590 = !DILocation(line: 852, column: 7, scope: !2559)
!2591 = !DILocation(line: 854, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2589, file: !221, line: 853, column: 5)
!2593 = !DILocation(line: 854, column: 7, scope: !2592)
!2594 = !DILocation(line: 855, column: 15, scope: !2592)
!2595 = !DILocation(line: 856, column: 5, scope: !2592)
!2596 = !DILocation(line: 857, column: 10, scope: !2559)
!2597 = !DILocation(line: 858, column: 1, scope: !2559)
!2598 = distinct !DISubprogram(name: "quotearg_n", scope: !221, file: !221, line: 922, type: !2599, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!8, !6, !47}
!2601 = !{!2602, !2603}
!2602 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !221, line: 922, type: !6)
!2603 = !DILocalVariable(name: "arg", arg: 2, scope: !2598, file: !221, line: 922, type: !47)
!2604 = !DILocation(line: 922, column: 17, scope: !2598)
!2605 = !DILocation(line: 922, column: 32, scope: !2598)
!2606 = !DILocation(line: 924, column: 10, scope: !2598)
!2607 = !DILocation(line: 924, column: 3, scope: !2598)
!2608 = distinct !DISubprogram(name: "quotearg_n_options", scope: !221, file: !221, line: 869, type: !2609, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!8, !6, !47, !41, !1593}
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2621, !2623, !2624, !2625}
!2612 = !DILocalVariable(name: "n", arg: 1, scope: !2608, file: !221, line: 869, type: !6)
!2613 = !DILocalVariable(name: "arg", arg: 2, scope: !2608, file: !221, line: 869, type: !47)
!2614 = !DILocalVariable(name: "argsize", arg: 3, scope: !2608, file: !221, line: 869, type: !41)
!2615 = !DILocalVariable(name: "options", arg: 4, scope: !2608, file: !221, line: 870, type: !1593)
!2616 = !DILocalVariable(name: "e", scope: !2608, file: !221, line: 872, type: !6)
!2617 = !DILocalVariable(name: "sv", scope: !2608, file: !221, line: 874, type: !245)
!2618 = !DILocalVariable(name: "preallocated", scope: !2619, file: !221, line: 881, type: !93)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !221, line: 880, column: 5)
!2620 = distinct !DILexicalBlock(scope: !2608, file: !221, line: 879, column: 7)
!2621 = !DILocalVariable(name: "size", scope: !2622, file: !221, line: 894, type: !41)
!2622 = distinct !DILexicalBlock(scope: !2608, file: !221, line: 893, column: 3)
!2623 = !DILocalVariable(name: "val", scope: !2622, file: !221, line: 895, type: !8)
!2624 = !DILocalVariable(name: "flags", scope: !2622, file: !221, line: 897, type: !6)
!2625 = !DILocalVariable(name: "qsize", scope: !2622, file: !221, line: 898, type: !41)
!2626 = !DILocation(line: 869, column: 25, scope: !2608)
!2627 = !DILocation(line: 869, column: 40, scope: !2608)
!2628 = !DILocation(line: 869, column: 52, scope: !2608)
!2629 = !DILocation(line: 870, column: 51, scope: !2608)
!2630 = !DILocation(line: 872, column: 11, scope: !2608)
!2631 = !DILocation(line: 872, column: 7, scope: !2608)
!2632 = !DILocation(line: 874, column: 24, scope: !2608)
!2633 = !DILocation(line: 874, column: 19, scope: !2608)
!2634 = !DILocation(line: 876, column: 9, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2608, file: !221, line: 876, column: 7)
!2636 = !DILocation(line: 876, column: 7, scope: !2608)
!2637 = !DILocation(line: 877, column: 5, scope: !2635)
!2638 = !DILocation(line: 879, column: 7, scope: !2620)
!2639 = !DILocation(line: 879, column: 14, scope: !2620)
!2640 = !DILocation(line: 879, column: 7, scope: !2608)
!2641 = !DILocation(line: 881, column: 31, scope: !2619)
!2642 = !DILocation(line: 883, column: 67, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2619, file: !221, line: 883, column: 11)
!2644 = !DILocation(line: 883, column: 11, scope: !2619)
!2645 = !DILocation(line: 884, column: 9, scope: !2643)
!2646 = !DILocation(line: 886, column: 32, scope: !2619)
!2647 = !DILocation(line: 886, column: 61, scope: !2619)
!2648 = !DILocation(line: 886, column: 58, scope: !2619)
!2649 = !DILocation(line: 886, column: 66, scope: !2619)
!2650 = !DILocation(line: 886, column: 22, scope: !2619)
!2651 = !DILocation(line: 886, column: 15, scope: !2619)
!2652 = !DILocation(line: 887, column: 11, scope: !2619)
!2653 = !DILocation(line: 888, column: 15, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2619, file: !221, line: 887, column: 11)
!2655 = !{i64 0, i64 8, !2556, i64 8, i64 8, !719}
!2656 = !DILocation(line: 888, column: 9, scope: !2654)
!2657 = !DILocation(line: 889, column: 20, scope: !2619)
!2658 = !DILocation(line: 889, column: 18, scope: !2619)
!2659 = !DILocation(line: 889, column: 7, scope: !2619)
!2660 = !DILocation(line: 889, column: 38, scope: !2619)
!2661 = !DILocation(line: 889, column: 31, scope: !2619)
!2662 = !DILocation(line: 889, column: 48, scope: !2619)
!2663 = !DILocation(line: 890, column: 14, scope: !2619)
!2664 = !DILocation(line: 891, column: 5, scope: !2619)
!2665 = !DILocation(line: 894, column: 19, scope: !2622)
!2666 = !DILocation(line: 894, column: 25, scope: !2622)
!2667 = !DILocation(line: 894, column: 12, scope: !2622)
!2668 = !DILocation(line: 895, column: 23, scope: !2622)
!2669 = !DILocation(line: 895, column: 11, scope: !2622)
!2670 = !DILocation(line: 897, column: 26, scope: !2622)
!2671 = !DILocation(line: 897, column: 32, scope: !2622)
!2672 = !DILocation(line: 897, column: 9, scope: !2622)
!2673 = !DILocation(line: 899, column: 55, scope: !2622)
!2674 = !DILocation(line: 900, column: 46, scope: !2622)
!2675 = !DILocation(line: 901, column: 55, scope: !2622)
!2676 = !DILocation(line: 902, column: 55, scope: !2622)
!2677 = !DILocation(line: 898, column: 20, scope: !2622)
!2678 = !DILocation(line: 898, column: 12, scope: !2622)
!2679 = !DILocation(line: 904, column: 14, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2622, file: !221, line: 904, column: 9)
!2681 = !DILocation(line: 904, column: 9, scope: !2622)
!2682 = !DILocation(line: 906, column: 35, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !221, line: 905, column: 7)
!2684 = !DILocation(line: 906, column: 20, scope: !2683)
!2685 = !DILocation(line: 907, column: 17, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2683, file: !221, line: 907, column: 13)
!2687 = !DILocation(line: 907, column: 13, scope: !2683)
!2688 = !DILocation(line: 908, column: 11, scope: !2686)
!2689 = !DILocation(line: 220, column: 20, scope: !2511, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 909, column: 27, scope: !2683)
!2691 = !DILocation(line: 222, column: 10, scope: !2511, inlinedAt: !2690)
!2692 = !DILocation(line: 909, column: 19, scope: !2683)
!2693 = !DILocation(line: 910, column: 69, scope: !2683)
!2694 = !DILocation(line: 912, column: 44, scope: !2683)
!2695 = !DILocation(line: 913, column: 44, scope: !2683)
!2696 = !DILocation(line: 910, column: 9, scope: !2683)
!2697 = !DILocation(line: 914, column: 7, scope: !2683)
!2698 = !DILocation(line: 916, column: 11, scope: !2622)
!2699 = !DILocation(line: 917, column: 5, scope: !2622)
!2700 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !221, file: !221, line: 928, type: !2701, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!8, !6, !47, !41}
!2703 = !{!2704, !2705, !2706}
!2704 = !DILocalVariable(name: "n", arg: 1, scope: !2700, file: !221, line: 928, type: !6)
!2705 = !DILocalVariable(name: "arg", arg: 2, scope: !2700, file: !221, line: 928, type: !47)
!2706 = !DILocalVariable(name: "argsize", arg: 3, scope: !2700, file: !221, line: 928, type: !41)
!2707 = !DILocation(line: 928, column: 21, scope: !2700)
!2708 = !DILocation(line: 928, column: 36, scope: !2700)
!2709 = !DILocation(line: 928, column: 48, scope: !2700)
!2710 = !DILocation(line: 930, column: 10, scope: !2700)
!2711 = !DILocation(line: 930, column: 3, scope: !2700)
!2712 = distinct !DISubprogram(name: "quotearg", scope: !221, file: !221, line: 934, type: !2713, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!8, !47}
!2715 = !{!2716}
!2716 = !DILocalVariable(name: "arg", arg: 1, scope: !2712, file: !221, line: 934, type: !47)
!2717 = !DILocation(line: 934, column: 23, scope: !2712)
!2718 = !DILocation(line: 922, column: 17, scope: !2598, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 936, column: 10, scope: !2712)
!2720 = !DILocation(line: 922, column: 32, scope: !2598, inlinedAt: !2719)
!2721 = !DILocation(line: 924, column: 10, scope: !2598, inlinedAt: !2719)
!2722 = !DILocation(line: 936, column: 3, scope: !2712)
!2723 = distinct !DISubprogram(name: "quotearg_mem", scope: !221, file: !221, line: 940, type: !2724, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!8, !47, !41}
!2726 = !{!2727, !2728}
!2727 = !DILocalVariable(name: "arg", arg: 1, scope: !2723, file: !221, line: 940, type: !47)
!2728 = !DILocalVariable(name: "argsize", arg: 2, scope: !2723, file: !221, line: 940, type: !41)
!2729 = !DILocation(line: 940, column: 27, scope: !2723)
!2730 = !DILocation(line: 940, column: 39, scope: !2723)
!2731 = !DILocation(line: 928, column: 21, scope: !2700, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 942, column: 10, scope: !2723)
!2733 = !DILocation(line: 928, column: 36, scope: !2700, inlinedAt: !2732)
!2734 = !DILocation(line: 928, column: 48, scope: !2700, inlinedAt: !2732)
!2735 = !DILocation(line: 930, column: 10, scope: !2700, inlinedAt: !2732)
!2736 = !DILocation(line: 942, column: 3, scope: !2723)
!2737 = distinct !DISubprogram(name: "quotearg_n_style", scope: !221, file: !221, line: 946, type: !2738, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!8, !6, !12, !47}
!2740 = !{!2741, !2742, !2743, !2744}
!2741 = !DILocalVariable(name: "n", arg: 1, scope: !2737, file: !221, line: 946, type: !6)
!2742 = !DILocalVariable(name: "s", arg: 2, scope: !2737, file: !221, line: 946, type: !12)
!2743 = !DILocalVariable(name: "arg", arg: 3, scope: !2737, file: !221, line: 946, type: !47)
!2744 = !DILocalVariable(name: "o", scope: !2737, file: !221, line: 948, type: !1594)
!2745 = !DILocalVariable(name: "o", scope: !2746, file: !221, line: 187, type: !226)
!2746 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !221, file: !221, line: 185, type: !2747, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!226, !12}
!2749 = !{!2750, !2745}
!2750 = !DILocalVariable(name: "style", arg: 1, scope: !2746, file: !221, line: 185, type: !12)
!2751 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2752 = !DILocation(line: 187, column: 26, scope: !2746, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 948, column: 36, scope: !2737)
!2754 = !DILocation(line: 946, column: 23, scope: !2737)
!2755 = !DILocation(line: 946, column: 45, scope: !2737)
!2756 = !DILocation(line: 946, column: 60, scope: !2737)
!2757 = !DILocation(line: 948, column: 3, scope: !2737)
!2758 = !DILocation(line: 948, column: 32, scope: !2737)
!2759 = !DILocation(line: 185, column: 48, scope: !2746, inlinedAt: !2753)
!2760 = !DILocation(line: 187, column: 3, scope: !2746, inlinedAt: !2753)
!2761 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2762 = !DILocation(line: 188, column: 13, scope: !2763, inlinedAt: !2753)
!2763 = distinct !DILexicalBlock(scope: !2746, file: !221, line: 188, column: 7)
!2764 = !DILocation(line: 188, column: 7, scope: !2746, inlinedAt: !2753)
!2765 = !DILocation(line: 189, column: 5, scope: !2763, inlinedAt: !2753)
!2766 = !{!2767}
!2767 = distinct !{!2767, !2768, !"quoting_options_from_style: argument 0"}
!2768 = distinct !{!2768, !"quoting_options_from_style"}
!2769 = !DILocation(line: 191, column: 10, scope: !2746, inlinedAt: !2753)
!2770 = !DILocation(line: 192, column: 1, scope: !2746, inlinedAt: !2753)
!2771 = !DILocation(line: 949, column: 10, scope: !2737)
!2772 = !DILocation(line: 950, column: 1, scope: !2737)
!2773 = !DILocation(line: 949, column: 3, scope: !2737)
!2774 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !221, file: !221, line: 953, type: !2775, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!8, !6, !12, !47, !41}
!2777 = !{!2778, !2779, !2780, !2781, !2782}
!2778 = !DILocalVariable(name: "n", arg: 1, scope: !2774, file: !221, line: 953, type: !6)
!2779 = !DILocalVariable(name: "s", arg: 2, scope: !2774, file: !221, line: 953, type: !12)
!2780 = !DILocalVariable(name: "arg", arg: 3, scope: !2774, file: !221, line: 954, type: !47)
!2781 = !DILocalVariable(name: "argsize", arg: 4, scope: !2774, file: !221, line: 954, type: !41)
!2782 = !DILocalVariable(name: "o", scope: !2774, file: !221, line: 956, type: !1594)
!2783 = !DILocation(line: 187, column: 26, scope: !2746, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 956, column: 36, scope: !2774)
!2785 = !DILocation(line: 953, column: 27, scope: !2774)
!2786 = !DILocation(line: 953, column: 49, scope: !2774)
!2787 = !DILocation(line: 954, column: 35, scope: !2774)
!2788 = !DILocation(line: 954, column: 47, scope: !2774)
!2789 = !DILocation(line: 956, column: 3, scope: !2774)
!2790 = !DILocation(line: 956, column: 32, scope: !2774)
!2791 = !DILocation(line: 185, column: 48, scope: !2746, inlinedAt: !2784)
!2792 = !DILocation(line: 187, column: 3, scope: !2746, inlinedAt: !2784)
!2793 = !DILocation(line: 188, column: 13, scope: !2763, inlinedAt: !2784)
!2794 = !DILocation(line: 188, column: 7, scope: !2746, inlinedAt: !2784)
!2795 = !DILocation(line: 189, column: 5, scope: !2763, inlinedAt: !2784)
!2796 = !{!2797}
!2797 = distinct !{!2797, !2798, !"quoting_options_from_style: argument 0"}
!2798 = distinct !{!2798, !"quoting_options_from_style"}
!2799 = !DILocation(line: 191, column: 10, scope: !2746, inlinedAt: !2784)
!2800 = !DILocation(line: 192, column: 1, scope: !2746, inlinedAt: !2784)
!2801 = !DILocation(line: 957, column: 10, scope: !2774)
!2802 = !DILocation(line: 958, column: 1, scope: !2774)
!2803 = !DILocation(line: 957, column: 3, scope: !2774)
!2804 = distinct !DISubprogram(name: "quotearg_style", scope: !221, file: !221, line: 961, type: !2805, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!8, !12, !47}
!2807 = !{!2808, !2809}
!2808 = !DILocalVariable(name: "s", arg: 1, scope: !2804, file: !221, line: 961, type: !12)
!2809 = !DILocalVariable(name: "arg", arg: 2, scope: !2804, file: !221, line: 961, type: !47)
!2810 = !DILocation(line: 187, column: 26, scope: !2746, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 948, column: 36, scope: !2737, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 963, column: 10, scope: !2804)
!2813 = !DILocation(line: 961, column: 36, scope: !2804)
!2814 = !DILocation(line: 961, column: 51, scope: !2804)
!2815 = !DILocation(line: 946, column: 23, scope: !2737, inlinedAt: !2812)
!2816 = !DILocation(line: 946, column: 45, scope: !2737, inlinedAt: !2812)
!2817 = !DILocation(line: 946, column: 60, scope: !2737, inlinedAt: !2812)
!2818 = !DILocation(line: 948, column: 3, scope: !2737, inlinedAt: !2812)
!2819 = !DILocation(line: 948, column: 32, scope: !2737, inlinedAt: !2812)
!2820 = !DILocation(line: 185, column: 48, scope: !2746, inlinedAt: !2811)
!2821 = !DILocation(line: 187, column: 3, scope: !2746, inlinedAt: !2811)
!2822 = !DILocation(line: 188, column: 13, scope: !2763, inlinedAt: !2811)
!2823 = !DILocation(line: 188, column: 7, scope: !2746, inlinedAt: !2811)
!2824 = !DILocation(line: 189, column: 5, scope: !2763, inlinedAt: !2811)
!2825 = !{!2826}
!2826 = distinct !{!2826, !2827, !"quoting_options_from_style: argument 0"}
!2827 = distinct !{!2827, !"quoting_options_from_style"}
!2828 = !DILocation(line: 191, column: 10, scope: !2746, inlinedAt: !2811)
!2829 = !DILocation(line: 192, column: 1, scope: !2746, inlinedAt: !2811)
!2830 = !DILocation(line: 949, column: 10, scope: !2737, inlinedAt: !2812)
!2831 = !DILocation(line: 950, column: 1, scope: !2737, inlinedAt: !2812)
!2832 = !DILocation(line: 963, column: 3, scope: !2804)
!2833 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !221, file: !221, line: 967, type: !2834, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!8, !12, !47, !41}
!2836 = !{!2837, !2838, !2839}
!2837 = !DILocalVariable(name: "s", arg: 1, scope: !2833, file: !221, line: 967, type: !12)
!2838 = !DILocalVariable(name: "arg", arg: 2, scope: !2833, file: !221, line: 967, type: !47)
!2839 = !DILocalVariable(name: "argsize", arg: 3, scope: !2833, file: !221, line: 967, type: !41)
!2840 = !DILocation(line: 187, column: 26, scope: !2746, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 956, column: 36, scope: !2774, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 969, column: 10, scope: !2833)
!2843 = !DILocation(line: 967, column: 40, scope: !2833)
!2844 = !DILocation(line: 967, column: 55, scope: !2833)
!2845 = !DILocation(line: 967, column: 67, scope: !2833)
!2846 = !DILocation(line: 953, column: 27, scope: !2774, inlinedAt: !2842)
!2847 = !DILocation(line: 953, column: 49, scope: !2774, inlinedAt: !2842)
!2848 = !DILocation(line: 954, column: 35, scope: !2774, inlinedAt: !2842)
!2849 = !DILocation(line: 954, column: 47, scope: !2774, inlinedAt: !2842)
!2850 = !DILocation(line: 956, column: 3, scope: !2774, inlinedAt: !2842)
!2851 = !DILocation(line: 956, column: 32, scope: !2774, inlinedAt: !2842)
!2852 = !DILocation(line: 185, column: 48, scope: !2746, inlinedAt: !2841)
!2853 = !DILocation(line: 187, column: 3, scope: !2746, inlinedAt: !2841)
!2854 = !DILocation(line: 188, column: 13, scope: !2763, inlinedAt: !2841)
!2855 = !DILocation(line: 188, column: 7, scope: !2746, inlinedAt: !2841)
!2856 = !DILocation(line: 189, column: 5, scope: !2763, inlinedAt: !2841)
!2857 = !{!2858}
!2858 = distinct !{!2858, !2859, !"quoting_options_from_style: argument 0"}
!2859 = distinct !{!2859, !"quoting_options_from_style"}
!2860 = !DILocation(line: 191, column: 10, scope: !2746, inlinedAt: !2841)
!2861 = !DILocation(line: 192, column: 1, scope: !2746, inlinedAt: !2841)
!2862 = !DILocation(line: 957, column: 10, scope: !2774, inlinedAt: !2842)
!2863 = !DILocation(line: 958, column: 1, scope: !2774, inlinedAt: !2842)
!2864 = !DILocation(line: 969, column: 3, scope: !2833)
!2865 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !221, file: !221, line: 973, type: !2866, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!8, !47, !41, !9}
!2868 = !{!2869, !2870, !2871, !2872}
!2869 = !DILocalVariable(name: "arg", arg: 1, scope: !2865, file: !221, line: 973, type: !47)
!2870 = !DILocalVariable(name: "argsize", arg: 2, scope: !2865, file: !221, line: 973, type: !41)
!2871 = !DILocalVariable(name: "ch", arg: 3, scope: !2865, file: !221, line: 973, type: !9)
!2872 = !DILocalVariable(name: "options", scope: !2865, file: !221, line: 975, type: !226)
!2873 = !DILocation(line: 973, column: 32, scope: !2865)
!2874 = !DILocation(line: 973, column: 44, scope: !2865)
!2875 = !DILocation(line: 973, column: 58, scope: !2865)
!2876 = !DILocation(line: 975, column: 3, scope: !2865)
!2877 = !DILocation(line: 976, column: 13, scope: !2865)
!2878 = !{i64 0, i64 4, !1141, i64 4, i64 4, !817, i64 8, i64 32, !1141, i64 40, i64 8, !719, i64 48, i64 8, !719}
!2879 = !DILocation(line: 975, column: 26, scope: !2865)
!2880 = !DILocation(line: 144, column: 43, scope: !1615, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 977, column: 3, scope: !2865)
!2882 = !DILocation(line: 144, column: 51, scope: !1615, inlinedAt: !2881)
!2883 = !DILocation(line: 144, column: 58, scope: !1615, inlinedAt: !2881)
!2884 = !DILocation(line: 146, column: 17, scope: !1615, inlinedAt: !2881)
!2885 = !DILocation(line: 148, column: 62, scope: !1615, inlinedAt: !2881)
!2886 = !DILocation(line: 148, column: 57, scope: !1615, inlinedAt: !2881)
!2887 = !DILocation(line: 147, column: 17, scope: !1615, inlinedAt: !2881)
!2888 = !DILocation(line: 149, column: 18, scope: !1615, inlinedAt: !2881)
!2889 = !DILocation(line: 149, column: 15, scope: !1615, inlinedAt: !2881)
!2890 = !DILocation(line: 149, column: 7, scope: !1615, inlinedAt: !2881)
!2891 = !DILocation(line: 150, column: 12, scope: !1615, inlinedAt: !2881)
!2892 = !DILocation(line: 150, column: 15, scope: !1615, inlinedAt: !2881)
!2893 = !DILocation(line: 150, column: 25, scope: !1615, inlinedAt: !2881)
!2894 = !DILocation(line: 150, column: 7, scope: !1615, inlinedAt: !2881)
!2895 = !DILocation(line: 151, column: 18, scope: !1615, inlinedAt: !2881)
!2896 = !DILocation(line: 151, column: 23, scope: !1615, inlinedAt: !2881)
!2897 = !DILocation(line: 151, column: 6, scope: !1615, inlinedAt: !2881)
!2898 = !DILocation(line: 978, column: 10, scope: !2865)
!2899 = !DILocation(line: 979, column: 1, scope: !2865)
!2900 = !DILocation(line: 978, column: 3, scope: !2865)
!2901 = distinct !DISubprogram(name: "quotearg_char", scope: !221, file: !221, line: 982, type: !2902, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!8, !47, !9}
!2904 = !{!2905, !2906}
!2905 = !DILocalVariable(name: "arg", arg: 1, scope: !2901, file: !221, line: 982, type: !47)
!2906 = !DILocalVariable(name: "ch", arg: 2, scope: !2901, file: !221, line: 982, type: !9)
!2907 = !DILocation(line: 982, column: 28, scope: !2901)
!2908 = !DILocation(line: 982, column: 38, scope: !2901)
!2909 = !DILocation(line: 973, column: 32, scope: !2865, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 984, column: 10, scope: !2901)
!2911 = !DILocation(line: 973, column: 44, scope: !2865, inlinedAt: !2910)
!2912 = !DILocation(line: 973, column: 58, scope: !2865, inlinedAt: !2910)
!2913 = !DILocation(line: 975, column: 3, scope: !2865, inlinedAt: !2910)
!2914 = !DILocation(line: 976, column: 13, scope: !2865, inlinedAt: !2910)
!2915 = !DILocation(line: 975, column: 26, scope: !2865, inlinedAt: !2910)
!2916 = !DILocation(line: 144, column: 43, scope: !1615, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 977, column: 3, scope: !2865, inlinedAt: !2910)
!2918 = !DILocation(line: 144, column: 51, scope: !1615, inlinedAt: !2917)
!2919 = !DILocation(line: 144, column: 58, scope: !1615, inlinedAt: !2917)
!2920 = !DILocation(line: 146, column: 17, scope: !1615, inlinedAt: !2917)
!2921 = !DILocation(line: 148, column: 62, scope: !1615, inlinedAt: !2917)
!2922 = !DILocation(line: 148, column: 57, scope: !1615, inlinedAt: !2917)
!2923 = !DILocation(line: 147, column: 17, scope: !1615, inlinedAt: !2917)
!2924 = !DILocation(line: 149, column: 18, scope: !1615, inlinedAt: !2917)
!2925 = !DILocation(line: 149, column: 15, scope: !1615, inlinedAt: !2917)
!2926 = !DILocation(line: 149, column: 7, scope: !1615, inlinedAt: !2917)
!2927 = !DILocation(line: 150, column: 12, scope: !1615, inlinedAt: !2917)
!2928 = !DILocation(line: 150, column: 15, scope: !1615, inlinedAt: !2917)
!2929 = !DILocation(line: 150, column: 25, scope: !1615, inlinedAt: !2917)
!2930 = !DILocation(line: 150, column: 7, scope: !1615, inlinedAt: !2917)
!2931 = !DILocation(line: 151, column: 18, scope: !1615, inlinedAt: !2917)
!2932 = !DILocation(line: 151, column: 23, scope: !1615, inlinedAt: !2917)
!2933 = !DILocation(line: 151, column: 6, scope: !1615, inlinedAt: !2917)
!2934 = !DILocation(line: 978, column: 10, scope: !2865, inlinedAt: !2910)
!2935 = !DILocation(line: 979, column: 1, scope: !2865, inlinedAt: !2910)
!2936 = !DILocation(line: 984, column: 3, scope: !2901)
!2937 = distinct !DISubprogram(name: "quotearg_colon", scope: !221, file: !221, line: 988, type: !2713, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2938)
!2938 = !{!2939}
!2939 = !DILocalVariable(name: "arg", arg: 1, scope: !2937, file: !221, line: 988, type: !47)
!2940 = !DILocation(line: 988, column: 29, scope: !2937)
!2941 = !DILocation(line: 982, column: 28, scope: !2901, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 990, column: 10, scope: !2937)
!2943 = !DILocation(line: 982, column: 38, scope: !2901, inlinedAt: !2942)
!2944 = !DILocation(line: 973, column: 32, scope: !2865, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 984, column: 10, scope: !2901, inlinedAt: !2942)
!2946 = !DILocation(line: 973, column: 44, scope: !2865, inlinedAt: !2945)
!2947 = !DILocation(line: 973, column: 58, scope: !2865, inlinedAt: !2945)
!2948 = !DILocation(line: 975, column: 3, scope: !2865, inlinedAt: !2945)
!2949 = !DILocation(line: 976, column: 13, scope: !2865, inlinedAt: !2945)
!2950 = !DILocation(line: 975, column: 26, scope: !2865, inlinedAt: !2945)
!2951 = !DILocation(line: 144, column: 43, scope: !1615, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 977, column: 3, scope: !2865, inlinedAt: !2945)
!2953 = !DILocation(line: 144, column: 51, scope: !1615, inlinedAt: !2952)
!2954 = !DILocation(line: 144, column: 58, scope: !1615, inlinedAt: !2952)
!2955 = !DILocation(line: 146, column: 17, scope: !1615, inlinedAt: !2952)
!2956 = !DILocation(line: 148, column: 57, scope: !1615, inlinedAt: !2952)
!2957 = !DILocation(line: 147, column: 17, scope: !1615, inlinedAt: !2952)
!2958 = !DILocation(line: 149, column: 7, scope: !1615, inlinedAt: !2952)
!2959 = !DILocation(line: 150, column: 12, scope: !1615, inlinedAt: !2952)
!2960 = !DILocation(line: 151, column: 6, scope: !1615, inlinedAt: !2952)
!2961 = !DILocation(line: 978, column: 10, scope: !2865, inlinedAt: !2945)
!2962 = !DILocation(line: 979, column: 1, scope: !2865, inlinedAt: !2945)
!2963 = !DILocation(line: 990, column: 3, scope: !2937)
!2964 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !221, file: !221, line: 994, type: !2724, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2965)
!2965 = !{!2966, !2967}
!2966 = !DILocalVariable(name: "arg", arg: 1, scope: !2964, file: !221, line: 994, type: !47)
!2967 = !DILocalVariable(name: "argsize", arg: 2, scope: !2964, file: !221, line: 994, type: !41)
!2968 = !DILocation(line: 994, column: 33, scope: !2964)
!2969 = !DILocation(line: 994, column: 45, scope: !2964)
!2970 = !DILocation(line: 973, column: 32, scope: !2865, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 996, column: 10, scope: !2964)
!2972 = !DILocation(line: 973, column: 44, scope: !2865, inlinedAt: !2971)
!2973 = !DILocation(line: 973, column: 58, scope: !2865, inlinedAt: !2971)
!2974 = !DILocation(line: 975, column: 3, scope: !2865, inlinedAt: !2971)
!2975 = !DILocation(line: 976, column: 13, scope: !2865, inlinedAt: !2971)
!2976 = !DILocation(line: 975, column: 26, scope: !2865, inlinedAt: !2971)
!2977 = !DILocation(line: 144, column: 43, scope: !1615, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 977, column: 3, scope: !2865, inlinedAt: !2971)
!2979 = !DILocation(line: 144, column: 51, scope: !1615, inlinedAt: !2978)
!2980 = !DILocation(line: 144, column: 58, scope: !1615, inlinedAt: !2978)
!2981 = !DILocation(line: 146, column: 17, scope: !1615, inlinedAt: !2978)
!2982 = !DILocation(line: 148, column: 57, scope: !1615, inlinedAt: !2978)
!2983 = !DILocation(line: 147, column: 17, scope: !1615, inlinedAt: !2978)
!2984 = !DILocation(line: 149, column: 7, scope: !1615, inlinedAt: !2978)
!2985 = !DILocation(line: 150, column: 12, scope: !1615, inlinedAt: !2978)
!2986 = !DILocation(line: 151, column: 6, scope: !1615, inlinedAt: !2978)
!2987 = !DILocation(line: 978, column: 10, scope: !2865, inlinedAt: !2971)
!2988 = !DILocation(line: 979, column: 1, scope: !2865, inlinedAt: !2971)
!2989 = !DILocation(line: 996, column: 3, scope: !2964)
!2990 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !221, file: !221, line: 1000, type: !2738, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !2991)
!2991 = !{!2992, !2993, !2994, !2995}
!2992 = !DILocalVariable(name: "n", arg: 1, scope: !2990, file: !221, line: 1000, type: !6)
!2993 = !DILocalVariable(name: "s", arg: 2, scope: !2990, file: !221, line: 1000, type: !12)
!2994 = !DILocalVariable(name: "arg", arg: 3, scope: !2990, file: !221, line: 1000, type: !47)
!2995 = !DILocalVariable(name: "options", scope: !2990, file: !221, line: 1002, type: !226)
!2996 = !DILocation(line: 187, column: 26, scope: !2746, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 1003, column: 13, scope: !2990)
!2998 = !DILocation(line: 1000, column: 29, scope: !2990)
!2999 = !DILocation(line: 1000, column: 51, scope: !2990)
!3000 = !DILocation(line: 1000, column: 66, scope: !2990)
!3001 = !DILocation(line: 1002, column: 3, scope: !2990)
!3002 = !DILocation(line: 185, column: 48, scope: !2746, inlinedAt: !2997)
!3003 = !DILocation(line: 187, column: 3, scope: !2746, inlinedAt: !2997)
!3004 = !DILocation(line: 188, column: 13, scope: !2763, inlinedAt: !2997)
!3005 = !DILocation(line: 188, column: 7, scope: !2746, inlinedAt: !2997)
!3006 = !DILocation(line: 189, column: 5, scope: !2763, inlinedAt: !2997)
!3007 = !{!3008}
!3008 = distinct !{!3008, !3009, !"quoting_options_from_style: argument 0"}
!3009 = distinct !{!3009, !"quoting_options_from_style"}
!3010 = !DILocation(line: 191, column: 10, scope: !2746, inlinedAt: !2997)
!3011 = !DILocation(line: 192, column: 1, scope: !2746, inlinedAt: !2997)
!3012 = !DILocation(line: 1003, column: 13, scope: !2990)
!3013 = !DILocation(line: 1002, column: 26, scope: !2990)
!3014 = !DILocation(line: 144, column: 43, scope: !1615, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 1004, column: 3, scope: !2990)
!3016 = !DILocation(line: 144, column: 51, scope: !1615, inlinedAt: !3015)
!3017 = !DILocation(line: 144, column: 58, scope: !1615, inlinedAt: !3015)
!3018 = !DILocation(line: 146, column: 17, scope: !1615, inlinedAt: !3015)
!3019 = !DILocation(line: 148, column: 57, scope: !1615, inlinedAt: !3015)
!3020 = !DILocation(line: 147, column: 17, scope: !1615, inlinedAt: !3015)
!3021 = !DILocation(line: 149, column: 7, scope: !1615, inlinedAt: !3015)
!3022 = !DILocation(line: 150, column: 12, scope: !1615, inlinedAt: !3015)
!3023 = !DILocation(line: 151, column: 6, scope: !1615, inlinedAt: !3015)
!3024 = !DILocation(line: 1005, column: 10, scope: !2990)
!3025 = !DILocation(line: 1006, column: 1, scope: !2990)
!3026 = !DILocation(line: 1005, column: 3, scope: !2990)
!3027 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !221, file: !221, line: 1009, type: !3028, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!8, !6, !47, !47, !47}
!3030 = !{!3031, !3032, !3033, !3034}
!3031 = !DILocalVariable(name: "n", arg: 1, scope: !3027, file: !221, line: 1009, type: !6)
!3032 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3027, file: !221, line: 1009, type: !47)
!3033 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3027, file: !221, line: 1010, type: !47)
!3034 = !DILocalVariable(name: "arg", arg: 4, scope: !3027, file: !221, line: 1010, type: !47)
!3035 = !DILocation(line: 1009, column: 24, scope: !3027)
!3036 = !DILocation(line: 1009, column: 39, scope: !3027)
!3037 = !DILocation(line: 1010, column: 32, scope: !3027)
!3038 = !DILocation(line: 1010, column: 57, scope: !3027)
!3039 = !DILocalVariable(name: "n", arg: 1, scope: !3040, file: !221, line: 1017, type: !6)
!3040 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !221, file: !221, line: 1017, type: !3041, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!8, !6, !47, !47, !47, !41}
!3043 = !{!3039, !3044, !3045, !3046, !3047, !3048}
!3044 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3040, file: !221, line: 1017, type: !47)
!3045 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3040, file: !221, line: 1018, type: !47)
!3046 = !DILocalVariable(name: "arg", arg: 4, scope: !3040, file: !221, line: 1019, type: !47)
!3047 = !DILocalVariable(name: "argsize", arg: 5, scope: !3040, file: !221, line: 1019, type: !41)
!3048 = !DILocalVariable(name: "o", scope: !3040, file: !221, line: 1021, type: !226)
!3049 = !DILocation(line: 1017, column: 28, scope: !3040, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1012, column: 10, scope: !3027)
!3051 = !DILocation(line: 1017, column: 43, scope: !3040, inlinedAt: !3050)
!3052 = !DILocation(line: 1018, column: 36, scope: !3040, inlinedAt: !3050)
!3053 = !DILocation(line: 1019, column: 36, scope: !3040, inlinedAt: !3050)
!3054 = !DILocation(line: 1019, column: 48, scope: !3040, inlinedAt: !3050)
!3055 = !DILocation(line: 1021, column: 3, scope: !3040, inlinedAt: !3050)
!3056 = !DILocation(line: 1021, column: 30, scope: !3040, inlinedAt: !3050)
!3057 = !DILocation(line: 1021, column: 26, scope: !3040, inlinedAt: !3050)
!3058 = !DILocation(line: 171, column: 45, scope: !1664, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 1022, column: 3, scope: !3040, inlinedAt: !3050)
!3060 = !DILocation(line: 172, column: 33, scope: !1664, inlinedAt: !3059)
!3061 = !DILocation(line: 172, column: 57, scope: !1664, inlinedAt: !3059)
!3062 = !DILocation(line: 176, column: 6, scope: !1664, inlinedAt: !3059)
!3063 = !DILocation(line: 176, column: 12, scope: !1664, inlinedAt: !3059)
!3064 = !DILocation(line: 177, column: 8, scope: !1680, inlinedAt: !3059)
!3065 = !DILocation(line: 177, column: 23, scope: !1680, inlinedAt: !3059)
!3066 = !DILocation(line: 177, column: 19, scope: !1680, inlinedAt: !3059)
!3067 = !DILocation(line: 178, column: 5, scope: !1680, inlinedAt: !3059)
!3068 = !DILocation(line: 179, column: 6, scope: !1664, inlinedAt: !3059)
!3069 = !DILocation(line: 179, column: 17, scope: !1664, inlinedAt: !3059)
!3070 = !DILocation(line: 180, column: 6, scope: !1664, inlinedAt: !3059)
!3071 = !DILocation(line: 180, column: 18, scope: !1664, inlinedAt: !3059)
!3072 = !DILocation(line: 1023, column: 10, scope: !3040, inlinedAt: !3050)
!3073 = !DILocation(line: 1024, column: 1, scope: !3040, inlinedAt: !3050)
!3074 = !DILocation(line: 1012, column: 3, scope: !3027)
!3075 = !DILocation(line: 1017, column: 28, scope: !3040)
!3076 = !DILocation(line: 1017, column: 43, scope: !3040)
!3077 = !DILocation(line: 1018, column: 36, scope: !3040)
!3078 = !DILocation(line: 1019, column: 36, scope: !3040)
!3079 = !DILocation(line: 1019, column: 48, scope: !3040)
!3080 = !DILocation(line: 1021, column: 3, scope: !3040)
!3081 = !DILocation(line: 1021, column: 30, scope: !3040)
!3082 = !DILocation(line: 1021, column: 26, scope: !3040)
!3083 = !DILocation(line: 171, column: 45, scope: !1664, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 1022, column: 3, scope: !3040)
!3085 = !DILocation(line: 172, column: 33, scope: !1664, inlinedAt: !3084)
!3086 = !DILocation(line: 172, column: 57, scope: !1664, inlinedAt: !3084)
!3087 = !DILocation(line: 176, column: 6, scope: !1664, inlinedAt: !3084)
!3088 = !DILocation(line: 176, column: 12, scope: !1664, inlinedAt: !3084)
!3089 = !DILocation(line: 177, column: 8, scope: !1680, inlinedAt: !3084)
!3090 = !DILocation(line: 177, column: 23, scope: !1680, inlinedAt: !3084)
!3091 = !DILocation(line: 177, column: 19, scope: !1680, inlinedAt: !3084)
!3092 = !DILocation(line: 178, column: 5, scope: !1680, inlinedAt: !3084)
!3093 = !DILocation(line: 179, column: 6, scope: !1664, inlinedAt: !3084)
!3094 = !DILocation(line: 179, column: 17, scope: !1664, inlinedAt: !3084)
!3095 = !DILocation(line: 180, column: 6, scope: !1664, inlinedAt: !3084)
!3096 = !DILocation(line: 180, column: 18, scope: !1664, inlinedAt: !3084)
!3097 = !DILocation(line: 1023, column: 10, scope: !3040)
!3098 = !DILocation(line: 1024, column: 1, scope: !3040)
!3099 = !DILocation(line: 1023, column: 3, scope: !3040)
!3100 = distinct !DISubprogram(name: "quotearg_custom", scope: !221, file: !221, line: 1027, type: !3101, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!8, !47, !47, !47}
!3103 = !{!3104, !3105, !3106}
!3104 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3100, file: !221, line: 1027, type: !47)
!3105 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3100, file: !221, line: 1027, type: !47)
!3106 = !DILocalVariable(name: "arg", arg: 3, scope: !3100, file: !221, line: 1028, type: !47)
!3107 = !DILocation(line: 1027, column: 30, scope: !3100)
!3108 = !DILocation(line: 1027, column: 54, scope: !3100)
!3109 = !DILocation(line: 1028, column: 30, scope: !3100)
!3110 = !DILocation(line: 1009, column: 24, scope: !3027, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1030, column: 10, scope: !3100)
!3112 = !DILocation(line: 1009, column: 39, scope: !3027, inlinedAt: !3111)
!3113 = !DILocation(line: 1010, column: 32, scope: !3027, inlinedAt: !3111)
!3114 = !DILocation(line: 1010, column: 57, scope: !3027, inlinedAt: !3111)
!3115 = !DILocation(line: 1017, column: 28, scope: !3040, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 1012, column: 10, scope: !3027, inlinedAt: !3111)
!3117 = !DILocation(line: 1017, column: 43, scope: !3040, inlinedAt: !3116)
!3118 = !DILocation(line: 1018, column: 36, scope: !3040, inlinedAt: !3116)
!3119 = !DILocation(line: 1019, column: 36, scope: !3040, inlinedAt: !3116)
!3120 = !DILocation(line: 1019, column: 48, scope: !3040, inlinedAt: !3116)
!3121 = !DILocation(line: 1021, column: 3, scope: !3040, inlinedAt: !3116)
!3122 = !DILocation(line: 1021, column: 30, scope: !3040, inlinedAt: !3116)
!3123 = !DILocation(line: 1021, column: 26, scope: !3040, inlinedAt: !3116)
!3124 = !DILocation(line: 171, column: 45, scope: !1664, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 1022, column: 3, scope: !3040, inlinedAt: !3116)
!3126 = !DILocation(line: 172, column: 33, scope: !1664, inlinedAt: !3125)
!3127 = !DILocation(line: 172, column: 57, scope: !1664, inlinedAt: !3125)
!3128 = !DILocation(line: 176, column: 6, scope: !1664, inlinedAt: !3125)
!3129 = !DILocation(line: 176, column: 12, scope: !1664, inlinedAt: !3125)
!3130 = !DILocation(line: 177, column: 8, scope: !1680, inlinedAt: !3125)
!3131 = !DILocation(line: 177, column: 23, scope: !1680, inlinedAt: !3125)
!3132 = !DILocation(line: 177, column: 19, scope: !1680, inlinedAt: !3125)
!3133 = !DILocation(line: 178, column: 5, scope: !1680, inlinedAt: !3125)
!3134 = !DILocation(line: 179, column: 6, scope: !1664, inlinedAt: !3125)
!3135 = !DILocation(line: 179, column: 17, scope: !1664, inlinedAt: !3125)
!3136 = !DILocation(line: 180, column: 6, scope: !1664, inlinedAt: !3125)
!3137 = !DILocation(line: 180, column: 18, scope: !1664, inlinedAt: !3125)
!3138 = !DILocation(line: 1023, column: 10, scope: !3040, inlinedAt: !3116)
!3139 = !DILocation(line: 1024, column: 1, scope: !3040, inlinedAt: !3116)
!3140 = !DILocation(line: 1030, column: 3, scope: !3100)
!3141 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !221, file: !221, line: 1034, type: !3142, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!8, !47, !47, !47, !41}
!3144 = !{!3145, !3146, !3147, !3148}
!3145 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3141, file: !221, line: 1034, type: !47)
!3146 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3141, file: !221, line: 1034, type: !47)
!3147 = !DILocalVariable(name: "arg", arg: 3, scope: !3141, file: !221, line: 1035, type: !47)
!3148 = !DILocalVariable(name: "argsize", arg: 4, scope: !3141, file: !221, line: 1035, type: !41)
!3149 = !DILocation(line: 1034, column: 34, scope: !3141)
!3150 = !DILocation(line: 1034, column: 58, scope: !3141)
!3151 = !DILocation(line: 1035, column: 34, scope: !3141)
!3152 = !DILocation(line: 1035, column: 46, scope: !3141)
!3153 = !DILocation(line: 1017, column: 28, scope: !3040, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1037, column: 10, scope: !3141)
!3155 = !DILocation(line: 1017, column: 43, scope: !3040, inlinedAt: !3154)
!3156 = !DILocation(line: 1018, column: 36, scope: !3040, inlinedAt: !3154)
!3157 = !DILocation(line: 1019, column: 36, scope: !3040, inlinedAt: !3154)
!3158 = !DILocation(line: 1019, column: 48, scope: !3040, inlinedAt: !3154)
!3159 = !DILocation(line: 1021, column: 3, scope: !3040, inlinedAt: !3154)
!3160 = !DILocation(line: 1021, column: 30, scope: !3040, inlinedAt: !3154)
!3161 = !DILocation(line: 1021, column: 26, scope: !3040, inlinedAt: !3154)
!3162 = !DILocation(line: 171, column: 45, scope: !1664, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 1022, column: 3, scope: !3040, inlinedAt: !3154)
!3164 = !DILocation(line: 172, column: 33, scope: !1664, inlinedAt: !3163)
!3165 = !DILocation(line: 172, column: 57, scope: !1664, inlinedAt: !3163)
!3166 = !DILocation(line: 176, column: 6, scope: !1664, inlinedAt: !3163)
!3167 = !DILocation(line: 176, column: 12, scope: !1664, inlinedAt: !3163)
!3168 = !DILocation(line: 177, column: 8, scope: !1680, inlinedAt: !3163)
!3169 = !DILocation(line: 177, column: 23, scope: !1680, inlinedAt: !3163)
!3170 = !DILocation(line: 177, column: 19, scope: !1680, inlinedAt: !3163)
!3171 = !DILocation(line: 178, column: 5, scope: !1680, inlinedAt: !3163)
!3172 = !DILocation(line: 179, column: 6, scope: !1664, inlinedAt: !3163)
!3173 = !DILocation(line: 179, column: 17, scope: !1664, inlinedAt: !3163)
!3174 = !DILocation(line: 180, column: 6, scope: !1664, inlinedAt: !3163)
!3175 = !DILocation(line: 180, column: 18, scope: !1664, inlinedAt: !3163)
!3176 = !DILocation(line: 1023, column: 10, scope: !3040, inlinedAt: !3154)
!3177 = !DILocation(line: 1024, column: 1, scope: !3040, inlinedAt: !3154)
!3178 = !DILocation(line: 1037, column: 3, scope: !3141)
!3179 = distinct !DISubprogram(name: "quote_n_mem", scope: !221, file: !221, line: 1052, type: !3180, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!47, !6, !47, !41}
!3182 = !{!3183, !3184, !3185}
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3179, file: !221, line: 1052, type: !6)
!3184 = !DILocalVariable(name: "arg", arg: 2, scope: !3179, file: !221, line: 1052, type: !47)
!3185 = !DILocalVariable(name: "argsize", arg: 3, scope: !3179, file: !221, line: 1052, type: !41)
!3186 = !DILocation(line: 1052, column: 18, scope: !3179)
!3187 = !DILocation(line: 1052, column: 33, scope: !3179)
!3188 = !DILocation(line: 1052, column: 45, scope: !3179)
!3189 = !DILocation(line: 1054, column: 10, scope: !3179)
!3190 = !DILocation(line: 1054, column: 3, scope: !3179)
!3191 = distinct !DISubprogram(name: "quote_mem", scope: !221, file: !221, line: 1058, type: !3192, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!47, !47, !41}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "arg", arg: 1, scope: !3191, file: !221, line: 1058, type: !47)
!3196 = !DILocalVariable(name: "argsize", arg: 2, scope: !3191, file: !221, line: 1058, type: !41)
!3197 = !DILocation(line: 1058, column: 24, scope: !3191)
!3198 = !DILocation(line: 1058, column: 36, scope: !3191)
!3199 = !DILocation(line: 1052, column: 18, scope: !3179, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1060, column: 10, scope: !3191)
!3201 = !DILocation(line: 1052, column: 33, scope: !3179, inlinedAt: !3200)
!3202 = !DILocation(line: 1052, column: 45, scope: !3179, inlinedAt: !3200)
!3203 = !DILocation(line: 1054, column: 10, scope: !3179, inlinedAt: !3200)
!3204 = !DILocation(line: 1060, column: 3, scope: !3191)
!3205 = distinct !DISubprogram(name: "quote_n", scope: !221, file: !221, line: 1064, type: !3206, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!47, !6, !47}
!3208 = !{!3209, !3210}
!3209 = !DILocalVariable(name: "n", arg: 1, scope: !3205, file: !221, line: 1064, type: !6)
!3210 = !DILocalVariable(name: "arg", arg: 2, scope: !3205, file: !221, line: 1064, type: !47)
!3211 = !DILocation(line: 1064, column: 14, scope: !3205)
!3212 = !DILocation(line: 1064, column: 29, scope: !3205)
!3213 = !DILocation(line: 1052, column: 18, scope: !3179, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 1066, column: 10, scope: !3205)
!3215 = !DILocation(line: 1052, column: 33, scope: !3179, inlinedAt: !3214)
!3216 = !DILocation(line: 1052, column: 45, scope: !3179, inlinedAt: !3214)
!3217 = !DILocation(line: 1054, column: 10, scope: !3179, inlinedAt: !3214)
!3218 = !DILocation(line: 1066, column: 3, scope: !3205)
!3219 = distinct !DISubprogram(name: "quote", scope: !221, file: !221, line: 1070, type: !3220, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3222)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!47, !47}
!3222 = !{!3223}
!3223 = !DILocalVariable(name: "arg", arg: 1, scope: !3219, file: !221, line: 1070, type: !47)
!3224 = !DILocation(line: 1070, column: 20, scope: !3219)
!3225 = !DILocation(line: 1064, column: 14, scope: !3205, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 1072, column: 10, scope: !3219)
!3227 = !DILocation(line: 1064, column: 29, scope: !3205, inlinedAt: !3226)
!3228 = !DILocation(line: 1052, column: 18, scope: !3179, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 1066, column: 10, scope: !3205, inlinedAt: !3226)
!3230 = !DILocation(line: 1052, column: 33, scope: !3179, inlinedAt: !3229)
!3231 = !DILocation(line: 1052, column: 45, scope: !3179, inlinedAt: !3229)
!3232 = !DILocation(line: 1054, column: 10, scope: !3179, inlinedAt: !3229)
!3233 = !DILocation(line: 1072, column: 3, scope: !3219)
!3234 = !DILocation(line: 56, column: 14, scope: !627)
!3235 = !DILocation(line: 56, column: 30, scope: !627)
!3236 = !DILocation(line: 56, column: 42, scope: !627)
!3237 = !DILocation(line: 66, column: 24, scope: !635)
!3238 = !DILocation(line: 66, column: 15, scope: !635)
!3239 = !DILocation(line: 68, column: 13, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !635, file: !626, line: 68, column: 11)
!3241 = !DILocation(line: 68, column: 11, scope: !635)
!3242 = !DILocation(line: 70, column: 16, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3240, file: !626, line: 70, column: 16)
!3244 = distinct !{!3244, !3245, !3246}
!3245 = !DILocation(line: 64, column: 3, scope: !637)
!3246 = !DILocation(line: 76, column: 5, scope: !637)
!3247 = !DILocation(line: 70, column: 16, scope: !3240)
!3248 = !DILocation(line: 72, column: 22, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3243, file: !626, line: 72, column: 16)
!3250 = !DILocation(line: 72, column: 54, scope: !3249)
!3251 = !DILocation(line: 72, column: 32, scope: !3249)
!3252 = !DILocation(line: 77, column: 1, scope: !627)
!3253 = !DILocation(line: 56, column: 14, scope: !646)
!3254 = !DILocation(line: 56, column: 30, scope: !646)
!3255 = !DILocation(line: 56, column: 42, scope: !646)
!3256 = !DILocation(line: 66, column: 24, scope: !656)
!3257 = !DILocation(line: 66, column: 15, scope: !656)
!3258 = !DILocation(line: 68, column: 13, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !656, file: !623, line: 68, column: 11)
!3260 = !DILocation(line: 68, column: 11, scope: !656)
!3261 = !DILocation(line: 70, column: 16, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3259, file: !623, line: 70, column: 16)
!3263 = distinct !{!3263, !3264, !3265}
!3264 = !DILocation(line: 64, column: 3, scope: !658)
!3265 = !DILocation(line: 76, column: 5, scope: !658)
!3266 = !DILocation(line: 70, column: 16, scope: !3259)
!3267 = !DILocation(line: 72, column: 22, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3262, file: !623, line: 72, column: 16)
!3269 = !DILocation(line: 72, column: 54, scope: !3268)
!3270 = !DILocation(line: 72, column: 32, scope: !3268)
!3271 = !DILocation(line: 77, column: 1, scope: !646)
!3272 = distinct !DISubprogram(name: "version_etc_arn", scope: !663, file: !663, line: 62, type: !3273, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !3316)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{null, !3275, !47, !47, !47, !3315, !41}
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1440, line: 7, baseType: !3277)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1442, line: 241, size: 1728, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3277, file: !1442, line: 242, baseType: !6, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3277, file: !1442, line: 247, baseType: !8, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3277, file: !1442, line: 248, baseType: !8, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3277, file: !1442, line: 249, baseType: !8, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3277, file: !1442, line: 250, baseType: !8, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3277, file: !1442, line: 251, baseType: !8, size: 64, offset: 320)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3277, file: !1442, line: 252, baseType: !8, size: 64, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3277, file: !1442, line: 253, baseType: !8, size: 64, offset: 448)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3277, file: !1442, line: 254, baseType: !8, size: 64, offset: 512)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3277, file: !1442, line: 256, baseType: !8, size: 64, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3277, file: !1442, line: 257, baseType: !8, size: 64, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3277, file: !1442, line: 258, baseType: !8, size: 64, offset: 704)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3277, file: !1442, line: 260, baseType: !3292, size: 64, offset: 768)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1442, line: 156, size: 192, elements: !3294)
!3294 = !{!3295, !3296, !3298}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3293, file: !1442, line: 157, baseType: !3292, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3293, file: !1442, line: 158, baseType: !3297, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3293, file: !1442, line: 162, baseType: !6, size: 32, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3277, file: !1442, line: 262, baseType: !3297, size: 64, offset: 832)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3277, file: !1442, line: 264, baseType: !6, size: 32, offset: 896)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3277, file: !1442, line: 268, baseType: !6, size: 32, offset: 928)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3277, file: !1442, line: 270, baseType: !124, size: 64, offset: 960)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3277, file: !1442, line: 274, baseType: !217, size: 16, offset: 1024)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3277, file: !1442, line: 275, baseType: !1470, size: 8, offset: 1040)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3277, file: !1442, line: 276, baseType: !1472, size: 8, offset: 1048)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3277, file: !1442, line: 280, baseType: !1476, size: 64, offset: 1088)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3277, file: !1442, line: 289, baseType: !1479, size: 64, offset: 1152)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3277, file: !1442, line: 297, baseType: !40, size: 64, offset: 1216)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3277, file: !1442, line: 298, baseType: !40, size: 64, offset: 1280)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3277, file: !1442, line: 299, baseType: !40, size: 64, offset: 1344)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3277, file: !1442, line: 300, baseType: !40, size: 64, offset: 1408)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3277, file: !1442, line: 302, baseType: !41, size: 64, offset: 1472)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3277, file: !1442, line: 303, baseType: !6, size: 32, offset: 1536)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3277, file: !1442, line: 305, baseType: !79, size: 160, offset: 1568)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322}
!3317 = !DILocalVariable(name: "stream", arg: 1, scope: !3272, file: !663, line: 62, type: !3275)
!3318 = !DILocalVariable(name: "command_name", arg: 2, scope: !3272, file: !663, line: 63, type: !47)
!3319 = !DILocalVariable(name: "package", arg: 3, scope: !3272, file: !663, line: 63, type: !47)
!3320 = !DILocalVariable(name: "version", arg: 4, scope: !3272, file: !663, line: 64, type: !47)
!3321 = !DILocalVariable(name: "authors", arg: 5, scope: !3272, file: !663, line: 65, type: !3315)
!3322 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3272, file: !663, line: 65, type: !41)
!3323 = !DILocation(line: 62, column: 24, scope: !3272)
!3324 = !DILocation(line: 63, column: 30, scope: !3272)
!3325 = !DILocation(line: 63, column: 56, scope: !3272)
!3326 = !DILocation(line: 64, column: 30, scope: !3272)
!3327 = !DILocation(line: 65, column: 39, scope: !3272)
!3328 = !DILocation(line: 65, column: 55, scope: !3272)
!3329 = !DILocation(line: 67, column: 7, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3272, file: !663, line: 67, column: 7)
!3331 = !DILocation(line: 67, column: 7, scope: !3272)
!3332 = !DILocation(line: 68, column: 5, scope: !3330)
!3333 = !DILocation(line: 70, column: 5, scope: !3330)
!3334 = !DILocation(line: 84, column: 3, scope: !3272)
!3335 = !DILocation(line: 86, column: 3, scope: !3272)
!3336 = !DILocation(line: 95, column: 3, scope: !3272)
!3337 = !DILocation(line: 99, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3272, file: !663, line: 96, column: 5)
!3339 = !DILocation(line: 102, column: 7, scope: !3338)
!3340 = !DILocation(line: 103, column: 7, scope: !3338)
!3341 = !DILocation(line: 106, column: 7, scope: !3338)
!3342 = !DILocation(line: 107, column: 7, scope: !3338)
!3343 = !DILocation(line: 110, column: 7, scope: !3338)
!3344 = !DILocation(line: 112, column: 7, scope: !3338)
!3345 = !DILocation(line: 117, column: 7, scope: !3338)
!3346 = !DILocation(line: 119, column: 7, scope: !3338)
!3347 = !DILocation(line: 124, column: 7, scope: !3338)
!3348 = !DILocation(line: 126, column: 7, scope: !3338)
!3349 = !DILocation(line: 131, column: 7, scope: !3338)
!3350 = !DILocation(line: 134, column: 7, scope: !3338)
!3351 = !DILocation(line: 139, column: 7, scope: !3338)
!3352 = !DILocation(line: 142, column: 7, scope: !3338)
!3353 = !DILocation(line: 147, column: 7, scope: !3338)
!3354 = !DILocation(line: 151, column: 7, scope: !3338)
!3355 = !DILocation(line: 156, column: 7, scope: !3338)
!3356 = !DILocation(line: 160, column: 7, scope: !3338)
!3357 = !DILocation(line: 167, column: 7, scope: !3338)
!3358 = !DILocation(line: 171, column: 7, scope: !3338)
!3359 = !DILocation(line: 173, column: 1, scope: !3272)
!3360 = distinct !DISubprogram(name: "version_etc_ar", scope: !663, file: !663, line: 180, type: !3361, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3275, !47, !47, !47, !3315}
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369}
!3364 = !DILocalVariable(name: "stream", arg: 1, scope: !3360, file: !663, line: 180, type: !3275)
!3365 = !DILocalVariable(name: "command_name", arg: 2, scope: !3360, file: !663, line: 181, type: !47)
!3366 = !DILocalVariable(name: "package", arg: 3, scope: !3360, file: !663, line: 181, type: !47)
!3367 = !DILocalVariable(name: "version", arg: 4, scope: !3360, file: !663, line: 182, type: !47)
!3368 = !DILocalVariable(name: "authors", arg: 5, scope: !3360, file: !663, line: 182, type: !3315)
!3369 = !DILocalVariable(name: "n_authors", scope: !3360, file: !663, line: 184, type: !41)
!3370 = !DILocation(line: 180, column: 23, scope: !3360)
!3371 = !DILocation(line: 181, column: 29, scope: !3360)
!3372 = !DILocation(line: 181, column: 55, scope: !3360)
!3373 = !DILocation(line: 182, column: 29, scope: !3360)
!3374 = !DILocation(line: 182, column: 59, scope: !3360)
!3375 = !DILocation(line: 184, column: 10, scope: !3360)
!3376 = !DILocation(line: 186, column: 8, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3360, file: !663, line: 186, column: 3)
!3378 = !DILocation(line: 186, column: 23, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3377, file: !663, line: 186, column: 3)
!3380 = !DILocation(line: 186, column: 3, scope: !3377)
!3381 = !DILocation(line: 186, column: 52, scope: !3379)
!3382 = distinct !{!3382, !3380, !3383}
!3383 = !DILocation(line: 187, column: 5, scope: !3377)
!3384 = !DILocation(line: 188, column: 3, scope: !3360)
!3385 = !DILocation(line: 189, column: 1, scope: !3360)
!3386 = distinct !DISubprogram(name: "version_etc_va", scope: !663, file: !663, line: 196, type: !3387, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !3396)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !3275, !47, !47, !47, !3389}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !660, line: 189, size: 192, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3395}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3390, file: !660, line: 189, baseType: !116, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3390, file: !660, line: 189, baseType: !116, size: 32, offset: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3390, file: !660, line: 189, baseType: !40, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3390, file: !660, line: 189, baseType: !40, size: 64, offset: 128)
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403}
!3397 = !DILocalVariable(name: "stream", arg: 1, scope: !3386, file: !663, line: 196, type: !3275)
!3398 = !DILocalVariable(name: "command_name", arg: 2, scope: !3386, file: !663, line: 197, type: !47)
!3399 = !DILocalVariable(name: "package", arg: 3, scope: !3386, file: !663, line: 197, type: !47)
!3400 = !DILocalVariable(name: "version", arg: 4, scope: !3386, file: !663, line: 198, type: !47)
!3401 = !DILocalVariable(name: "authors", arg: 5, scope: !3386, file: !663, line: 198, type: !3389)
!3402 = !DILocalVariable(name: "n_authors", scope: !3386, file: !663, line: 200, type: !41)
!3403 = !DILocalVariable(name: "authtab", scope: !3386, file: !663, line: 201, type: !3404)
!3404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 640, elements: !161)
!3405 = !DILocation(line: 196, column: 23, scope: !3386)
!3406 = !DILocation(line: 197, column: 29, scope: !3386)
!3407 = !DILocation(line: 197, column: 55, scope: !3386)
!3408 = !DILocation(line: 198, column: 29, scope: !3386)
!3409 = !DILocation(line: 198, column: 46, scope: !3386)
!3410 = !DILocation(line: 201, column: 3, scope: !3386)
!3411 = !DILocation(line: 201, column: 15, scope: !3386)
!3412 = !DILocation(line: 200, column: 10, scope: !3386)
!3413 = !DILocation(line: 205, column: 35, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !663, line: 203, column: 3)
!3415 = distinct !DILexicalBlock(scope: !3386, file: !663, line: 203, column: 3)
!3416 = !DILocation(line: 205, column: 14, scope: !3414)
!3417 = !DILocation(line: 205, column: 33, scope: !3414)
!3418 = !DILocation(line: 205, column: 67, scope: !3414)
!3419 = !DILocation(line: 203, column: 3, scope: !3415)
!3420 = !DILocation(line: 208, column: 3, scope: !3386)
!3421 = !DILocation(line: 210, column: 1, scope: !3386)
!3422 = distinct !DISubprogram(name: "version_etc", scope: !663, file: !663, line: 227, type: !3423, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{null, !3275, !47, !47, !47, null}
!3425 = !{!3426, !3427, !3428, !3429, !3430}
!3426 = !DILocalVariable(name: "stream", arg: 1, scope: !3422, file: !663, line: 227, type: !3275)
!3427 = !DILocalVariable(name: "command_name", arg: 2, scope: !3422, file: !663, line: 228, type: !47)
!3428 = !DILocalVariable(name: "package", arg: 3, scope: !3422, file: !663, line: 228, type: !47)
!3429 = !DILocalVariable(name: "version", arg: 4, scope: !3422, file: !663, line: 229, type: !47)
!3430 = !DILocalVariable(name: "authors", scope: !3422, file: !663, line: 231, type: !3431)
!3431 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1420, line: 46, baseType: !3432)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3433, line: 48, baseType: !3434)
!3433 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !660, line: 231, baseType: !3435)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3390, size: 192, elements: !1473)
!3436 = !DILocation(line: 227, column: 20, scope: !3422)
!3437 = !DILocation(line: 228, column: 26, scope: !3422)
!3438 = !DILocation(line: 228, column: 52, scope: !3422)
!3439 = !DILocation(line: 229, column: 26, scope: !3422)
!3440 = !DILocation(line: 231, column: 3, scope: !3422)
!3441 = !DILocation(line: 231, column: 11, scope: !3422)
!3442 = !DILocation(line: 233, column: 3, scope: !3422)
!3443 = !DILocation(line: 234, column: 3, scope: !3422)
!3444 = !DILocation(line: 235, column: 3, scope: !3422)
!3445 = !DILocation(line: 236, column: 1, scope: !3422)
!3446 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !663, file: !663, line: 239, type: !728, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !167)
!3447 = !DILocation(line: 245, column: 3, scope: !3446)
!3448 = !DILocation(line: 251, column: 3, scope: !3446)
!3449 = !DILocation(line: 256, column: 3, scope: !3446)
!3450 = !DILocation(line: 258, column: 1, scope: !3446)
!3451 = distinct !DISubprogram(name: "xnmalloc", scope: !671, file: !671, line: 105, type: !3452, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3454)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!40, !41, !41}
!3454 = !{!3455, !3456}
!3455 = !DILocalVariable(name: "n", arg: 1, scope: !3451, file: !671, line: 105, type: !41)
!3456 = !DILocalVariable(name: "s", arg: 2, scope: !3451, file: !671, line: 105, type: !41)
!3457 = !DILocation(line: 105, column: 18, scope: !3451)
!3458 = !DILocation(line: 105, column: 28, scope: !3451)
!3459 = !DILocation(line: 107, column: 7, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3451, file: !671, line: 107, column: 7)
!3461 = !DILocation(line: 107, column: 7, scope: !3451)
!3462 = !DILocation(line: 108, column: 5, scope: !3460)
!3463 = !DILocation(line: 109, column: 21, scope: !3451)
!3464 = !DILocalVariable(name: "n", arg: 1, scope: !3465, file: !3466, line: 39, type: !41)
!3465 = distinct !DISubprogram(name: "xmalloc", scope: !3466, file: !3466, line: 39, type: !3467, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3469)
!3466 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!40, !41}
!3469 = !{!3464, !3470}
!3470 = !DILocalVariable(name: "p", scope: !3465, file: !3466, line: 41, type: !40)
!3471 = !DILocation(line: 39, column: 17, scope: !3465, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 109, column: 10, scope: !3451)
!3473 = !DILocation(line: 41, column: 13, scope: !3465, inlinedAt: !3472)
!3474 = !DILocation(line: 41, column: 9, scope: !3465, inlinedAt: !3472)
!3475 = !DILocation(line: 42, column: 8, scope: !3476, inlinedAt: !3472)
!3476 = distinct !DILexicalBlock(scope: !3465, file: !3466, line: 42, column: 7)
!3477 = !DILocation(line: 42, column: 15, scope: !3476, inlinedAt: !3472)
!3478 = !DILocation(line: 42, column: 10, scope: !3476, inlinedAt: !3472)
!3479 = !DILocation(line: 43, column: 5, scope: !3476, inlinedAt: !3472)
!3480 = !DILocation(line: 109, column: 3, scope: !3451)
!3481 = !DILocation(line: 39, column: 17, scope: !3465)
!3482 = !DILocation(line: 41, column: 13, scope: !3465)
!3483 = !DILocation(line: 41, column: 9, scope: !3465)
!3484 = !DILocation(line: 42, column: 8, scope: !3476)
!3485 = !DILocation(line: 42, column: 15, scope: !3476)
!3486 = !DILocation(line: 42, column: 10, scope: !3476)
!3487 = !DILocation(line: 43, column: 5, scope: !3476)
!3488 = !DILocation(line: 44, column: 3, scope: !3465)
!3489 = distinct !DISubprogram(name: "xnrealloc", scope: !671, file: !671, line: 118, type: !3490, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!40, !40, !41, !41}
!3492 = !{!3493, !3494, !3495}
!3493 = !DILocalVariable(name: "p", arg: 1, scope: !3489, file: !671, line: 118, type: !40)
!3494 = !DILocalVariable(name: "n", arg: 2, scope: !3489, file: !671, line: 118, type: !41)
!3495 = !DILocalVariable(name: "s", arg: 3, scope: !3489, file: !671, line: 118, type: !41)
!3496 = !DILocation(line: 118, column: 18, scope: !3489)
!3497 = !DILocation(line: 118, column: 28, scope: !3489)
!3498 = !DILocation(line: 118, column: 38, scope: !3489)
!3499 = !DILocation(line: 120, column: 7, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3489, file: !671, line: 120, column: 7)
!3501 = !DILocation(line: 120, column: 7, scope: !3489)
!3502 = !DILocation(line: 121, column: 5, scope: !3500)
!3503 = !DILocation(line: 122, column: 25, scope: !3489)
!3504 = !DILocalVariable(name: "p", arg: 1, scope: !3505, file: !3466, line: 51, type: !40)
!3505 = distinct !DISubprogram(name: "xrealloc", scope: !3466, file: !3466, line: 51, type: !3506, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!40, !40, !41}
!3508 = !{!3504, !3509}
!3509 = !DILocalVariable(name: "n", arg: 2, scope: !3505, file: !3466, line: 51, type: !41)
!3510 = !DILocation(line: 51, column: 17, scope: !3505, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 122, column: 10, scope: !3489)
!3512 = !DILocation(line: 51, column: 27, scope: !3505, inlinedAt: !3511)
!3513 = !DILocation(line: 53, column: 8, scope: !3514, inlinedAt: !3511)
!3514 = distinct !DILexicalBlock(scope: !3505, file: !3466, line: 53, column: 7)
!3515 = !DILocation(line: 53, column: 13, scope: !3514, inlinedAt: !3511)
!3516 = !DILocation(line: 53, column: 10, scope: !3514, inlinedAt: !3511)
!3517 = !DILocation(line: 57, column: 7, scope: !3518, inlinedAt: !3511)
!3518 = distinct !DILexicalBlock(scope: !3514, file: !3466, line: 54, column: 5)
!3519 = !DILocation(line: 58, column: 7, scope: !3518, inlinedAt: !3511)
!3520 = !DILocation(line: 61, column: 7, scope: !3505, inlinedAt: !3511)
!3521 = !DILocation(line: 62, column: 8, scope: !3522, inlinedAt: !3511)
!3522 = distinct !DILexicalBlock(scope: !3505, file: !3466, line: 62, column: 7)
!3523 = !DILocation(line: 62, column: 13, scope: !3522, inlinedAt: !3511)
!3524 = !DILocation(line: 62, column: 10, scope: !3522, inlinedAt: !3511)
!3525 = !DILocation(line: 63, column: 5, scope: !3522, inlinedAt: !3511)
!3526 = !DILocation(line: 122, column: 3, scope: !3489)
!3527 = !DILocation(line: 51, column: 17, scope: !3505)
!3528 = !DILocation(line: 51, column: 27, scope: !3505)
!3529 = !DILocation(line: 53, column: 8, scope: !3514)
!3530 = !DILocation(line: 53, column: 13, scope: !3514)
!3531 = !DILocation(line: 53, column: 10, scope: !3514)
!3532 = !DILocation(line: 57, column: 7, scope: !3518)
!3533 = !DILocation(line: 58, column: 7, scope: !3518)
!3534 = !DILocation(line: 61, column: 7, scope: !3505)
!3535 = !DILocation(line: 62, column: 8, scope: !3522)
!3536 = !DILocation(line: 62, column: 13, scope: !3522)
!3537 = !DILocation(line: 62, column: 10, scope: !3522)
!3538 = !DILocation(line: 63, column: 5, scope: !3522)
!3539 = !DILocation(line: 65, column: 1, scope: !3505)
!3540 = !DILocation(line: 180, column: 19, scope: !672)
!3541 = !DILocation(line: 180, column: 30, scope: !672)
!3542 = !DILocation(line: 180, column: 41, scope: !672)
!3543 = !DILocation(line: 182, column: 14, scope: !672)
!3544 = !DILocation(line: 182, column: 10, scope: !672)
!3545 = !DILocation(line: 184, column: 9, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !672, file: !671, line: 184, column: 7)
!3547 = !DILocation(line: 184, column: 7, scope: !672)
!3548 = !DILocation(line: 186, column: 13, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !671, line: 186, column: 11)
!3550 = distinct !DILexicalBlock(scope: !3546, file: !671, line: 185, column: 5)
!3551 = !DILocation(line: 186, column: 11, scope: !3550)
!3552 = !DILocation(line: 194, column: 30, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3549, file: !671, line: 187, column: 9)
!3554 = !DILocation(line: 195, column: 16, scope: !3553)
!3555 = !DILocation(line: 195, column: 13, scope: !3553)
!3556 = !DILocation(line: 196, column: 9, scope: !3553)
!3557 = !DILocation(line: 204, column: 69, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !671, line: 204, column: 11)
!3559 = distinct !DILexicalBlock(scope: !3546, file: !671, line: 199, column: 5)
!3560 = !DILocation(line: 205, column: 11, scope: !3558)
!3561 = !DILocation(line: 204, column: 11, scope: !3559)
!3562 = !DILocation(line: 206, column: 9, scope: !3558)
!3563 = !DILocation(line: 210, column: 7, scope: !672)
!3564 = !DILocation(line: 211, column: 25, scope: !672)
!3565 = !DILocation(line: 51, column: 17, scope: !3505, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 211, column: 10, scope: !672)
!3567 = !DILocation(line: 51, column: 27, scope: !3505, inlinedAt: !3566)
!3568 = !DILocation(line: 53, column: 10, scope: !3514, inlinedAt: !3566)
!3569 = !DILocation(line: 207, column: 14, scope: !3559)
!3570 = !DILocation(line: 207, column: 18, scope: !3559)
!3571 = !DILocation(line: 207, column: 9, scope: !3559)
!3572 = !DILocation(line: 53, column: 8, scope: !3514, inlinedAt: !3566)
!3573 = !DILocation(line: 57, column: 7, scope: !3518, inlinedAt: !3566)
!3574 = !DILocation(line: 58, column: 7, scope: !3518, inlinedAt: !3566)
!3575 = !DILocation(line: 61, column: 7, scope: !3505, inlinedAt: !3566)
!3576 = !DILocation(line: 62, column: 8, scope: !3522, inlinedAt: !3566)
!3577 = !DILocation(line: 62, column: 13, scope: !3522, inlinedAt: !3566)
!3578 = !DILocation(line: 62, column: 10, scope: !3522, inlinedAt: !3566)
!3579 = !DILocation(line: 63, column: 5, scope: !3522, inlinedAt: !3566)
!3580 = !DILocation(line: 211, column: 3, scope: !672)
!3581 = distinct !DISubprogram(name: "xcharalloc", scope: !671, file: !671, line: 220, type: !2512, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3582)
!3582 = !{!3583}
!3583 = !DILocalVariable(name: "n", arg: 1, scope: !3581, file: !671, line: 220, type: !41)
!3584 = !DILocation(line: 220, column: 20, scope: !3581)
!3585 = !DILocation(line: 39, column: 17, scope: !3465, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 222, column: 10, scope: !3581)
!3587 = !DILocation(line: 41, column: 13, scope: !3465, inlinedAt: !3586)
!3588 = !DILocation(line: 41, column: 9, scope: !3465, inlinedAt: !3586)
!3589 = !DILocation(line: 42, column: 8, scope: !3476, inlinedAt: !3586)
!3590 = !DILocation(line: 42, column: 15, scope: !3476, inlinedAt: !3586)
!3591 = !DILocation(line: 42, column: 10, scope: !3476, inlinedAt: !3586)
!3592 = !DILocation(line: 43, column: 5, scope: !3476, inlinedAt: !3586)
!3593 = !DILocation(line: 222, column: 3, scope: !3581)
!3594 = distinct !DISubprogram(name: "x2realloc", scope: !3466, file: !3466, line: 74, type: !3595, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!40, !40, !675}
!3597 = !{!3598, !3599}
!3598 = !DILocalVariable(name: "p", arg: 1, scope: !3594, file: !3466, line: 74, type: !40)
!3599 = !DILocalVariable(name: "pn", arg: 2, scope: !3594, file: !3466, line: 74, type: !675)
!3600 = !DILocation(line: 74, column: 18, scope: !3594)
!3601 = !DILocation(line: 74, column: 29, scope: !3594)
!3602 = !DILocation(line: 180, column: 19, scope: !672, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 76, column: 10, scope: !3594)
!3604 = !DILocation(line: 180, column: 30, scope: !672, inlinedAt: !3603)
!3605 = !DILocation(line: 180, column: 41, scope: !672, inlinedAt: !3603)
!3606 = !DILocation(line: 182, column: 14, scope: !672, inlinedAt: !3603)
!3607 = !DILocation(line: 182, column: 10, scope: !672, inlinedAt: !3603)
!3608 = !DILocation(line: 184, column: 9, scope: !3546, inlinedAt: !3603)
!3609 = !DILocation(line: 184, column: 7, scope: !672, inlinedAt: !3603)
!3610 = !DILocation(line: 186, column: 13, scope: !3549, inlinedAt: !3603)
!3611 = !DILocation(line: 186, column: 11, scope: !3550, inlinedAt: !3603)
!3612 = !DILocation(line: 210, column: 7, scope: !672, inlinedAt: !3603)
!3613 = !DILocation(line: 51, column: 17, scope: !3505, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 211, column: 10, scope: !672, inlinedAt: !3603)
!3615 = !DILocation(line: 51, column: 27, scope: !3505, inlinedAt: !3614)
!3616 = !DILocation(line: 53, column: 10, scope: !3514, inlinedAt: !3614)
!3617 = !DILocation(line: 205, column: 11, scope: !3558, inlinedAt: !3603)
!3618 = !DILocation(line: 204, column: 11, scope: !3559, inlinedAt: !3603)
!3619 = !DILocation(line: 206, column: 9, scope: !3558, inlinedAt: !3603)
!3620 = !DILocation(line: 207, column: 14, scope: !3559, inlinedAt: !3603)
!3621 = !DILocation(line: 207, column: 18, scope: !3559, inlinedAt: !3603)
!3622 = !DILocation(line: 207, column: 9, scope: !3559, inlinedAt: !3603)
!3623 = !DILocation(line: 53, column: 8, scope: !3514, inlinedAt: !3614)
!3624 = !DILocation(line: 57, column: 7, scope: !3518, inlinedAt: !3614)
!3625 = !DILocation(line: 58, column: 7, scope: !3518, inlinedAt: !3614)
!3626 = !DILocation(line: 61, column: 7, scope: !3505, inlinedAt: !3614)
!3627 = !DILocation(line: 62, column: 8, scope: !3522, inlinedAt: !3614)
!3628 = !DILocation(line: 62, column: 13, scope: !3522, inlinedAt: !3614)
!3629 = !DILocation(line: 62, column: 10, scope: !3522, inlinedAt: !3614)
!3630 = !DILocation(line: 63, column: 5, scope: !3522, inlinedAt: !3614)
!3631 = !DILocation(line: 76, column: 3, scope: !3594)
!3632 = distinct !DISubprogram(name: "xzalloc", scope: !3466, file: !3466, line: 84, type: !3467, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3633)
!3633 = !{!3634}
!3634 = !DILocalVariable(name: "s", arg: 1, scope: !3632, file: !3466, line: 84, type: !41)
!3635 = !DILocation(line: 84, column: 17, scope: !3632)
!3636 = !DILocation(line: 39, column: 17, scope: !3465, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 86, column: 18, scope: !3632)
!3638 = !DILocation(line: 41, column: 13, scope: !3465, inlinedAt: !3637)
!3639 = !DILocation(line: 41, column: 9, scope: !3465, inlinedAt: !3637)
!3640 = !DILocation(line: 42, column: 8, scope: !3476, inlinedAt: !3637)
!3641 = !DILocation(line: 42, column: 15, scope: !3476, inlinedAt: !3637)
!3642 = !DILocation(line: 42, column: 10, scope: !3476, inlinedAt: !3637)
!3643 = !DILocation(line: 43, column: 5, scope: !3476, inlinedAt: !3637)
!3644 = !DILocation(line: 86, column: 10, scope: !3632)
!3645 = !DILocation(line: 86, column: 3, scope: !3632)
!3646 = distinct !DISubprogram(name: "xcalloc", scope: !3466, file: !3466, line: 93, type: !3452, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3647)
!3647 = !{!3648, !3649, !3650}
!3648 = !DILocalVariable(name: "n", arg: 1, scope: !3646, file: !3466, line: 93, type: !41)
!3649 = !DILocalVariable(name: "s", arg: 2, scope: !3646, file: !3466, line: 93, type: !41)
!3650 = !DILocalVariable(name: "p", scope: !3646, file: !3466, line: 95, type: !40)
!3651 = !DILocation(line: 93, column: 17, scope: !3646)
!3652 = !DILocation(line: 93, column: 27, scope: !3646)
!3653 = !DILocation(line: 100, column: 7, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3646, file: !3466, line: 100, column: 7)
!3655 = !DILocation(line: 101, column: 7, scope: !3654)
!3656 = !DILocation(line: 101, column: 18, scope: !3654)
!3657 = !DILocation(line: 95, column: 9, scope: !3646)
!3658 = !DILocation(line: 101, column: 16, scope: !3654)
!3659 = !DILocation(line: 100, column: 7, scope: !3646)
!3660 = !DILocation(line: 102, column: 5, scope: !3654)
!3661 = !DILocation(line: 103, column: 3, scope: !3646)
!3662 = distinct !DISubprogram(name: "xmemdup", scope: !3466, file: !3466, line: 111, type: !906, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3663)
!3663 = !{!3664, !3665}
!3664 = !DILocalVariable(name: "p", arg: 1, scope: !3662, file: !3466, line: 111, type: !649)
!3665 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !3466, line: 111, type: !41)
!3666 = !DILocation(line: 111, column: 22, scope: !3662)
!3667 = !DILocation(line: 111, column: 32, scope: !3662)
!3668 = !DILocation(line: 39, column: 17, scope: !3465, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 113, column: 18, scope: !3662)
!3670 = !DILocation(line: 41, column: 13, scope: !3465, inlinedAt: !3669)
!3671 = !DILocation(line: 41, column: 9, scope: !3465, inlinedAt: !3669)
!3672 = !DILocation(line: 42, column: 8, scope: !3476, inlinedAt: !3669)
!3673 = !DILocation(line: 42, column: 15, scope: !3476, inlinedAt: !3669)
!3674 = !DILocation(line: 42, column: 10, scope: !3476, inlinedAt: !3669)
!3675 = !DILocation(line: 43, column: 5, scope: !3476, inlinedAt: !3669)
!3676 = !DILocation(line: 113, column: 10, scope: !3662)
!3677 = !DILocation(line: 113, column: 3, scope: !3662)
!3678 = distinct !DISubprogram(name: "xstrdup", scope: !3466, file: !3466, line: 119, type: !2713, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3679)
!3679 = !{!3680}
!3680 = !DILocalVariable(name: "string", arg: 1, scope: !3678, file: !3466, line: 119, type: !47)
!3681 = !DILocation(line: 119, column: 22, scope: !3678)
!3682 = !DILocation(line: 121, column: 27, scope: !3678)
!3683 = !DILocation(line: 121, column: 43, scope: !3678)
!3684 = !DILocation(line: 111, column: 22, scope: !3662, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 121, column: 10, scope: !3678)
!3686 = !DILocation(line: 111, column: 32, scope: !3662, inlinedAt: !3685)
!3687 = !DILocation(line: 39, column: 17, scope: !3465, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 113, column: 18, scope: !3662, inlinedAt: !3685)
!3689 = !DILocation(line: 41, column: 13, scope: !3465, inlinedAt: !3688)
!3690 = !DILocation(line: 41, column: 9, scope: !3465, inlinedAt: !3688)
!3691 = !DILocation(line: 42, column: 8, scope: !3476, inlinedAt: !3688)
!3692 = !DILocation(line: 42, column: 15, scope: !3476, inlinedAt: !3688)
!3693 = !DILocation(line: 42, column: 10, scope: !3476, inlinedAt: !3688)
!3694 = !DILocation(line: 43, column: 5, scope: !3476, inlinedAt: !3688)
!3695 = !DILocation(line: 113, column: 10, scope: !3662, inlinedAt: !3685)
!3696 = !DILocation(line: 121, column: 3, scope: !3678)
!3697 = distinct !DISubprogram(name: "xalloc_die", scope: !3698, file: !3698, line: 32, type: !728, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !684, variables: !167)
!3698 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3699 = !DILocation(line: 34, column: 10, scope: !3697)
!3700 = !DILocation(line: 34, column: 33, scope: !3697)
!3701 = !DILocation(line: 34, column: 3, scope: !3697)
!3702 = !DILocation(line: 40, column: 3, scope: !3697)
!3703 = distinct !DISubprogram(name: "rpl_calloc", scope: !3704, file: !3704, line: 42, type: !3452, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3705)
!3704 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3705 = !{!3706, !3707, !3708, !3709}
!3706 = !DILocalVariable(name: "n", arg: 1, scope: !3703, file: !3704, line: 42, type: !41)
!3707 = !DILocalVariable(name: "s", arg: 2, scope: !3703, file: !3704, line: 42, type: !41)
!3708 = !DILocalVariable(name: "result", scope: !3703, file: !3704, line: 44, type: !40)
!3709 = !DILocalVariable(name: "bytes", scope: !3710, file: !3704, line: 56, type: !41)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !3704, line: 53, column: 5)
!3711 = distinct !DILexicalBlock(scope: !3703, file: !3704, line: 47, column: 7)
!3712 = !DILocation(line: 42, column: 20, scope: !3703)
!3713 = !DILocation(line: 42, column: 30, scope: !3703)
!3714 = !DILocation(line: 47, column: 9, scope: !3711)
!3715 = !DILocation(line: 47, column: 19, scope: !3711)
!3716 = !DILocation(line: 47, column: 14, scope: !3711)
!3717 = !DILocation(line: 56, column: 24, scope: !3710)
!3718 = !DILocation(line: 56, column: 14, scope: !3710)
!3719 = !DILocation(line: 57, column: 17, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3710, file: !3704, line: 57, column: 11)
!3721 = !DILocation(line: 57, column: 21, scope: !3720)
!3722 = !DILocation(line: 57, column: 11, scope: !3710)
!3723 = !DILocation(line: 59, column: 11, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3720, file: !3704, line: 58, column: 9)
!3725 = !DILocation(line: 59, column: 17, scope: !3724)
!3726 = !DILocation(line: 65, column: 12, scope: !3703)
!3727 = !DILocation(line: 44, column: 9, scope: !3703)
!3728 = !DILocation(line: 72, column: 3, scope: !3703)
!3729 = !DILocation(line: 73, column: 1, scope: !3703)
!3730 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3731, file: !3731, line: 334, type: !3732, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !688, variables: !3746)
!3731 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!41, !3734, !47, !41, !3735}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1763, line: 6, baseType: !3737)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1765, line: 21, baseType: !3738)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1765, line: 13, size: 64, elements: !3739)
!3739 = !{!3740, !3741}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3738, file: !1765, line: 15, baseType: !6, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3738, file: !1765, line: 20, baseType: !3742, size: 32, offset: 32)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3738, file: !1765, line: 16, size: 32, elements: !3743)
!3743 = !{!3744, !3745}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3742, file: !1765, line: 18, baseType: !116, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3742, file: !1765, line: 19, baseType: !1774, size: 32)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753}
!3747 = !DILocalVariable(name: "pwc", arg: 1, scope: !3730, file: !3731, line: 334, type: !3734)
!3748 = !DILocalVariable(name: "s", arg: 2, scope: !3730, file: !3731, line: 334, type: !47)
!3749 = !DILocalVariable(name: "n", arg: 3, scope: !3730, file: !3731, line: 334, type: !41)
!3750 = !DILocalVariable(name: "ps", arg: 4, scope: !3730, file: !3731, line: 334, type: !3735)
!3751 = !DILocalVariable(name: "ret", scope: !3730, file: !3731, line: 336, type: !41)
!3752 = !DILocalVariable(name: "wc", scope: !3730, file: !3731, line: 337, type: !1779)
!3753 = !DILocalVariable(name: "uc", scope: !3754, file: !3731, line: 398, type: !612)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !3731, line: 397, column: 5)
!3755 = distinct !DILexicalBlock(scope: !3730, file: !3731, line: 396, column: 7)
!3756 = !DILocation(line: 334, column: 23, scope: !3730)
!3757 = !DILocation(line: 334, column: 40, scope: !3730)
!3758 = !DILocation(line: 334, column: 50, scope: !3730)
!3759 = !DILocation(line: 334, column: 64, scope: !3730)
!3760 = !DILocation(line: 337, column: 3, scope: !3730)
!3761 = !DILocation(line: 353, column: 9, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3730, file: !3731, line: 353, column: 7)
!3763 = !DILocation(line: 353, column: 7, scope: !3730)
!3764 = !DILocation(line: 388, column: 9, scope: !3730)
!3765 = !DILocation(line: 336, column: 10, scope: !3730)
!3766 = !DILocation(line: 396, column: 19, scope: !3755)
!3767 = !DILocation(line: 396, column: 31, scope: !3755)
!3768 = !DILocation(line: 396, column: 26, scope: !3755)
!3769 = !DILocation(line: 396, column: 41, scope: !3755)
!3770 = !DILocation(line: 396, column: 7, scope: !3730)
!3771 = !DILocation(line: 398, column: 26, scope: !3754)
!3772 = !DILocation(line: 398, column: 21, scope: !3754)
!3773 = !DILocation(line: 399, column: 14, scope: !3754)
!3774 = !DILocation(line: 399, column: 12, scope: !3754)
!3775 = !DILocation(line: 405, column: 1, scope: !3730)
!3776 = distinct !DISubprogram(name: "close_stream", scope: !3777, file: !3777, line: 56, type: !3778, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !3820)
!3777 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!6, !3780}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1440, line: 7, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1442, line: 241, size: 1728, elements: !3783)
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3782, file: !1442, line: 242, baseType: !6, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3782, file: !1442, line: 247, baseType: !8, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3782, file: !1442, line: 248, baseType: !8, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3782, file: !1442, line: 249, baseType: !8, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3782, file: !1442, line: 250, baseType: !8, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3782, file: !1442, line: 251, baseType: !8, size: 64, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3782, file: !1442, line: 252, baseType: !8, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3782, file: !1442, line: 253, baseType: !8, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3782, file: !1442, line: 254, baseType: !8, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3782, file: !1442, line: 256, baseType: !8, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3782, file: !1442, line: 257, baseType: !8, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3782, file: !1442, line: 258, baseType: !8, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3782, file: !1442, line: 260, baseType: !3797, size: 64, offset: 768)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1442, line: 156, size: 192, elements: !3799)
!3799 = !{!3800, !3801, !3803}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3798, file: !1442, line: 157, baseType: !3797, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3798, file: !1442, line: 158, baseType: !3802, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3798, file: !1442, line: 162, baseType: !6, size: 32, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3782, file: !1442, line: 262, baseType: !3802, size: 64, offset: 832)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3782, file: !1442, line: 264, baseType: !6, size: 32, offset: 896)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3782, file: !1442, line: 268, baseType: !6, size: 32, offset: 928)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3782, file: !1442, line: 270, baseType: !124, size: 64, offset: 960)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3782, file: !1442, line: 274, baseType: !217, size: 16, offset: 1024)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3782, file: !1442, line: 275, baseType: !1470, size: 8, offset: 1040)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3782, file: !1442, line: 276, baseType: !1472, size: 8, offset: 1048)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3782, file: !1442, line: 280, baseType: !1476, size: 64, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3782, file: !1442, line: 289, baseType: !1479, size: 64, offset: 1152)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3782, file: !1442, line: 297, baseType: !40, size: 64, offset: 1216)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3782, file: !1442, line: 298, baseType: !40, size: 64, offset: 1280)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3782, file: !1442, line: 299, baseType: !40, size: 64, offset: 1344)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3782, file: !1442, line: 300, baseType: !40, size: 64, offset: 1408)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3782, file: !1442, line: 302, baseType: !41, size: 64, offset: 1472)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3782, file: !1442, line: 303, baseType: !6, size: 32, offset: 1536)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3782, file: !1442, line: 305, baseType: !79, size: 160, offset: 1568)
!3820 = !{!3821, !3822, !3824, !3825}
!3821 = !DILocalVariable(name: "stream", arg: 1, scope: !3776, file: !3777, line: 56, type: !3780)
!3822 = !DILocalVariable(name: "some_pending", scope: !3776, file: !3777, line: 58, type: !3823)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!3824 = !DILocalVariable(name: "prev_fail", scope: !3776, file: !3777, line: 59, type: !3823)
!3825 = !DILocalVariable(name: "fclose_fail", scope: !3776, file: !3777, line: 60, type: !3823)
!3826 = !DILocation(line: 56, column: 21, scope: !3776)
!3827 = !DILocation(line: 58, column: 30, scope: !3776)
!3828 = !DILocalVariable(name: "__stream", arg: 1, scope: !3829, file: !3830, line: 132, type: !3780)
!3829 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3830, file: !3830, line: 132, type: !3778, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !3831)
!3830 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3831 = !{!3828}
!3832 = !DILocation(line: 132, column: 1, scope: !3829, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 59, column: 27, scope: !3776)
!3834 = !DILocation(line: 134, column: 10, scope: !3829, inlinedAt: !3833)
!3835 = !{!3836, !818, i64 0}
!3836 = !{!"_IO_FILE", !818, i64 0, !720, i64 8, !720, i64 16, !720, i64 24, !720, i64 32, !720, i64 40, !720, i64 48, !720, i64 56, !720, i64 64, !720, i64 72, !720, i64 80, !720, i64 88, !720, i64 96, !720, i64 104, !818, i64 112, !818, i64 116, !822, i64 120, !2013, i64 128, !721, i64 130, !721, i64 131, !720, i64 136, !822, i64 144, !720, i64 152, !720, i64 160, !720, i64 168, !720, i64 176, !822, i64 184, !818, i64 192, !721, i64 196}
!3837 = !DILocation(line: 59, column: 43, scope: !3776)
!3838 = !DILocation(line: 60, column: 29, scope: !3776)
!3839 = !DILocation(line: 60, column: 45, scope: !3776)
!3840 = !DILocation(line: 70, column: 17, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3776, file: !3777, line: 70, column: 7)
!3842 = !DILocation(line: 58, column: 50, scope: !3776)
!3843 = !DILocation(line: 70, column: 33, scope: !3841)
!3844 = !DILocation(line: 70, column: 53, scope: !3841)
!3845 = !DILocation(line: 70, column: 59, scope: !3841)
!3846 = !DILocation(line: 70, column: 7, scope: !3776)
!3847 = !DILocation(line: 72, column: 11, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3841, file: !3777, line: 71, column: 5)
!3849 = !DILocation(line: 73, column: 9, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3848, file: !3777, line: 72, column: 11)
!3851 = !DILocation(line: 73, column: 15, scope: !3850)
!3852 = !DILocation(line: 78, column: 1, scope: !3776)
!3853 = distinct !DISubprogram(name: "hard_locale", scope: !3854, file: !3854, line: 38, type: !3855, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !693, variables: !3857)
!3854 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!93, !6}
!3857 = !{!3858, !3859, !3860}
!3858 = !DILocalVariable(name: "category", arg: 1, scope: !3853, file: !3854, line: 38, type: !6)
!3859 = !DILocalVariable(name: "hard", scope: !3853, file: !3854, line: 40, type: !93)
!3860 = !DILocalVariable(name: "p", scope: !3853, file: !3854, line: 41, type: !47)
!3861 = !DILocation(line: 38, column: 18, scope: !3853)
!3862 = !DILocation(line: 40, column: 8, scope: !3853)
!3863 = !DILocation(line: 41, column: 19, scope: !3853)
!3864 = !DILocation(line: 41, column: 15, scope: !3853)
!3865 = !DILocation(line: 43, column: 7, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3853, file: !3854, line: 43, column: 7)
!3867 = !DILocation(line: 43, column: 7, scope: !3853)
!3868 = !DILocation(line: 47, column: 15, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !3854, line: 47, column: 15)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !3854, line: 46, column: 9)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !3854, line: 45, column: 11)
!3872 = distinct !DILexicalBlock(scope: !3866, file: !3854, line: 44, column: 5)
!3873 = !DILocation(line: 47, column: 31, scope: !3869)
!3874 = !DILocation(line: 47, column: 36, scope: !3869)
!3875 = !DILocation(line: 47, column: 39, scope: !3869)
!3876 = !DILocation(line: 47, column: 59, scope: !3869)
!3877 = !DILocation(line: 47, column: 15, scope: !3870)
!3878 = !DILocation(line: 48, column: 13, scope: !3869)
!3879 = !DILocation(line: 71, column: 3, scope: !3853)
!3880 = distinct !DISubprogram(name: "locale_charset", scope: !614, file: !614, line: 393, type: !3881, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!47}
!3883 = !{!3884, !3885}
!3884 = !DILocalVariable(name: "codeset", scope: !3880, file: !614, line: 395, type: !47)
!3885 = !DILocalVariable(name: "aliases", scope: !3880, file: !614, line: 396, type: !47)
!3886 = !DILocalVariable(name: "buf1", scope: !3887, file: !614, line: 196, type: !3954)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !614, line: 194, column: 21)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !614, line: 193, column: 19)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !614, line: 193, column: 19)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !614, line: 188, column: 17)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !614, line: 181, column: 19)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !614, line: 177, column: 13)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !614, line: 173, column: 15)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !614, line: 161, column: 9)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !614, line: 157, column: 11)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !614, line: 130, column: 5)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !614, line: 129, column: 7)
!3898 = distinct !DISubprogram(name: "get_charset_aliases", scope: !614, file: !614, line: 124, type: !3881, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3906, !3907, !3908, !3909, !3950, !3951, !3952, !3886, !3953, !3957, !3958, !3959}
!3900 = !DILocalVariable(name: "cp", scope: !3898, file: !614, line: 126, type: !47)
!3901 = !DILocalVariable(name: "dir", scope: !3896, file: !614, line: 132, type: !47)
!3902 = !DILocalVariable(name: "base", scope: !3896, file: !614, line: 133, type: !47)
!3903 = !DILocalVariable(name: "file_name", scope: !3896, file: !614, line: 134, type: !8)
!3904 = !DILocalVariable(name: "dir_len", scope: !3905, file: !614, line: 144, type: !41)
!3905 = distinct !DILexicalBlock(scope: !3896, file: !614, line: 143, column: 7)
!3906 = !DILocalVariable(name: "base_len", scope: !3905, file: !614, line: 145, type: !41)
!3907 = !DILocalVariable(name: "add_slash", scope: !3905, file: !614, line: 146, type: !6)
!3908 = !DILocalVariable(name: "fd", scope: !3894, file: !614, line: 162, type: !6)
!3909 = !DILocalVariable(name: "fp", scope: !3892, file: !614, line: 178, type: !3910)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1440, line: 7, baseType: !3912)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1442, line: 241, size: 1728, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3912, file: !1442, line: 242, baseType: !6, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3912, file: !1442, line: 247, baseType: !8, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3912, file: !1442, line: 248, baseType: !8, size: 64, offset: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3912, file: !1442, line: 249, baseType: !8, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3912, file: !1442, line: 250, baseType: !8, size: 64, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3912, file: !1442, line: 251, baseType: !8, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3912, file: !1442, line: 252, baseType: !8, size: 64, offset: 384)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3912, file: !1442, line: 253, baseType: !8, size: 64, offset: 448)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3912, file: !1442, line: 254, baseType: !8, size: 64, offset: 512)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3912, file: !1442, line: 256, baseType: !8, size: 64, offset: 576)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3912, file: !1442, line: 257, baseType: !8, size: 64, offset: 640)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3912, file: !1442, line: 258, baseType: !8, size: 64, offset: 704)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3912, file: !1442, line: 260, baseType: !3927, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1442, line: 156, size: 192, elements: !3929)
!3929 = !{!3930, !3931, !3933}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3928, file: !1442, line: 157, baseType: !3927, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3928, file: !1442, line: 158, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3928, file: !1442, line: 162, baseType: !6, size: 32, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3912, file: !1442, line: 262, baseType: !3932, size: 64, offset: 832)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3912, file: !1442, line: 264, baseType: !6, size: 32, offset: 896)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3912, file: !1442, line: 268, baseType: !6, size: 32, offset: 928)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3912, file: !1442, line: 270, baseType: !124, size: 64, offset: 960)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3912, file: !1442, line: 274, baseType: !217, size: 16, offset: 1024)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3912, file: !1442, line: 275, baseType: !1470, size: 8, offset: 1040)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3912, file: !1442, line: 276, baseType: !1472, size: 8, offset: 1048)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3912, file: !1442, line: 280, baseType: !1476, size: 64, offset: 1088)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3912, file: !1442, line: 289, baseType: !1479, size: 64, offset: 1152)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3912, file: !1442, line: 297, baseType: !40, size: 64, offset: 1216)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3912, file: !1442, line: 298, baseType: !40, size: 64, offset: 1280)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3912, file: !1442, line: 299, baseType: !40, size: 64, offset: 1344)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3912, file: !1442, line: 300, baseType: !40, size: 64, offset: 1408)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3912, file: !1442, line: 302, baseType: !41, size: 64, offset: 1472)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3912, file: !1442, line: 303, baseType: !6, size: 32, offset: 1536)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3912, file: !1442, line: 305, baseType: !79, size: 160, offset: 1568)
!3950 = !DILocalVariable(name: "res_ptr", scope: !3890, file: !614, line: 190, type: !8)
!3951 = !DILocalVariable(name: "res_size", scope: !3890, file: !614, line: 191, type: !41)
!3952 = !DILocalVariable(name: "c", scope: !3887, file: !614, line: 195, type: !6)
!3953 = !DILocalVariable(name: "buf2", scope: !3887, file: !614, line: 197, type: !3954)
!3954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 408, elements: !3955)
!3955 = !{!3956}
!3956 = !DISubrange(count: 51)
!3957 = !DILocalVariable(name: "l1", scope: !3887, file: !614, line: 198, type: !41)
!3958 = !DILocalVariable(name: "l2", scope: !3887, file: !614, line: 198, type: !41)
!3959 = !DILocalVariable(name: "old_res_ptr", scope: !3887, file: !614, line: 199, type: !8)
!3960 = !DILocation(line: 196, column: 28, scope: !3887, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 589, column: 18, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3880, file: !614, line: 589, column: 3)
!3963 = !DILocation(line: 197, column: 28, scope: !3887, inlinedAt: !3961)
!3964 = !DILocation(line: 403, column: 13, scope: !3880)
!3965 = !DILocation(line: 395, column: 15, scope: !3880)
!3966 = !DILocation(line: 584, column: 15, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3880, file: !614, line: 584, column: 7)
!3968 = !DILocation(line: 584, column: 7, scope: !3880)
!3969 = !DILocation(line: 128, column: 8, scope: !3898, inlinedAt: !3961)
!3970 = !DILocation(line: 126, column: 15, scope: !3898, inlinedAt: !3961)
!3971 = !DILocation(line: 129, column: 10, scope: !3897, inlinedAt: !3961)
!3972 = !DILocation(line: 129, column: 7, scope: !3898, inlinedAt: !3961)
!3973 = !DILocation(line: 138, column: 13, scope: !3896, inlinedAt: !3961)
!3974 = !DILocation(line: 132, column: 19, scope: !3896, inlinedAt: !3961)
!3975 = !DILocation(line: 139, column: 15, scope: !3976, inlinedAt: !3961)
!3976 = distinct !DILexicalBlock(scope: !3896, file: !614, line: 139, column: 11)
!3977 = !DILocation(line: 139, column: 23, scope: !3976, inlinedAt: !3961)
!3978 = !DILocation(line: 139, column: 26, scope: !3976, inlinedAt: !3961)
!3979 = !DILocation(line: 139, column: 33, scope: !3976, inlinedAt: !3961)
!3980 = !DILocation(line: 139, column: 11, scope: !3896, inlinedAt: !3961)
!3981 = !DILocation(line: 140, column: 9, scope: !3976, inlinedAt: !3961)
!3982 = !DILocation(line: 144, column: 26, scope: !3905, inlinedAt: !3961)
!3983 = !DILocation(line: 144, column: 16, scope: !3905, inlinedAt: !3961)
!3984 = !DILocation(line: 145, column: 16, scope: !3905, inlinedAt: !3961)
!3985 = !DILocation(line: 146, column: 34, scope: !3905, inlinedAt: !3961)
!3986 = !DILocation(line: 146, column: 38, scope: !3905, inlinedAt: !3961)
!3987 = !DILocation(line: 146, column: 42, scope: !3905, inlinedAt: !3961)
!3988 = !DILocation(line: 147, column: 48, scope: !3905, inlinedAt: !3961)
!3989 = !DILocation(line: 147, column: 46, scope: !3905, inlinedAt: !3961)
!3990 = !DILocation(line: 147, column: 69, scope: !3905, inlinedAt: !3961)
!3991 = !DILocation(line: 147, column: 30, scope: !3905, inlinedAt: !3961)
!3992 = !DILocation(line: 134, column: 13, scope: !3896, inlinedAt: !3961)
!3993 = !DILocation(line: 148, column: 13, scope: !3905, inlinedAt: !3961)
!3994 = !DILocation(line: 150, column: 13, scope: !3995, inlinedAt: !3961)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !614, line: 149, column: 11)
!3996 = distinct !DILexicalBlock(scope: !3905, file: !614, line: 148, column: 13)
!3997 = !DILocation(line: 151, column: 17, scope: !3995, inlinedAt: !3961)
!3998 = !DILocation(line: 152, column: 34, scope: !3999, inlinedAt: !3961)
!3999 = distinct !DILexicalBlock(scope: !3995, file: !614, line: 151, column: 17)
!4000 = !DILocation(line: 153, column: 41, scope: !3995, inlinedAt: !3961)
!4001 = !DILocation(line: 153, column: 13, scope: !3995, inlinedAt: !3961)
!4002 = !DILocation(line: 157, column: 11, scope: !3896, inlinedAt: !3961)
!4003 = !DILocation(line: 171, column: 16, scope: !3894, inlinedAt: !3961)
!4004 = !DILocation(line: 162, column: 15, scope: !3894, inlinedAt: !3961)
!4005 = !DILocation(line: 173, column: 18, scope: !3893, inlinedAt: !3961)
!4006 = !DILocation(line: 173, column: 15, scope: !3894, inlinedAt: !3961)
!4007 = !DILocation(line: 180, column: 20, scope: !3892, inlinedAt: !3961)
!4008 = !DILocation(line: 178, column: 21, scope: !3892, inlinedAt: !3961)
!4009 = !DILocation(line: 181, column: 22, scope: !3891, inlinedAt: !3961)
!4010 = !DILocation(line: 181, column: 19, scope: !3892, inlinedAt: !3961)
!4011 = !DILocation(line: 184, column: 19, scope: !4012, inlinedAt: !3961)
!4012 = distinct !DILexicalBlock(scope: !3891, file: !614, line: 182, column: 17)
!4013 = !DILocation(line: 186, column: 17, scope: !4012, inlinedAt: !3961)
!4014 = !DILocation(line: 190, column: 25, scope: !3890, inlinedAt: !3961)
!4015 = !DILocation(line: 191, column: 26, scope: !3890, inlinedAt: !3961)
!4016 = !DILocation(line: 193, column: 19, scope: !3890, inlinedAt: !3961)
!4017 = !DILocation(line: 196, column: 23, scope: !3887, inlinedAt: !3961)
!4018 = !DILocation(line: 197, column: 23, scope: !3887, inlinedAt: !3961)
!4019 = !DILocalVariable(name: "__fp", arg: 1, scope: !4020, file: !3830, line: 63, type: !3910)
!4020 = distinct !DISubprogram(name: "getc_unlocked", scope: !3830, file: !3830, line: 63, type: !4021, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !4023)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!6, !3910}
!4023 = !{!4019}
!4024 = !DILocation(line: 63, column: 22, scope: !4020, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 201, column: 27, scope: !3887, inlinedAt: !3961)
!4026 = !DILocation(line: 65, column: 10, scope: !4020, inlinedAt: !4025)
!4027 = !{!3836, !720, i64 8}
!4028 = !{!3836, !720, i64 16}
!4029 = !{!"branch_weights", i32 2000, i32 1}
!4030 = !DILocation(line: 195, column: 27, scope: !3887, inlinedAt: !3961)
!4031 = !DILocation(line: 202, column: 27, scope: !3887, inlinedAt: !3961)
!4032 = distinct !{!4032, !4033, !4036}
!4033 = !DILocation(line: 209, column: 27, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !614, line: 207, column: 25)
!4035 = distinct !DILexicalBlock(scope: !3887, file: !614, line: 206, column: 27)
!4036 = !DILocation(line: 211, column: 58, scope: !4034)
!4037 = !DILocation(line: 65, column: 10, scope: !4020, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 210, column: 33, scope: !4034, inlinedAt: !3961)
!4039 = !DILocation(line: 63, column: 22, scope: !4020, inlinedAt: !4038)
!4040 = !DILocation(line: 210, column: 29, scope: !4034, inlinedAt: !3961)
!4041 = distinct !{!4041, !4042, !4043}
!4042 = !DILocation(line: 193, column: 19, scope: !3889)
!4043 = !DILocation(line: 241, column: 21, scope: !3889)
!4044 = !DILocation(line: 216, column: 23, scope: !3887, inlinedAt: !3961)
!4045 = !DILocation(line: 217, column: 27, scope: !4046, inlinedAt: !3961)
!4046 = distinct !DILexicalBlock(scope: !3887, file: !614, line: 217, column: 27)
!4047 = !DILocation(line: 217, column: 64, scope: !4046, inlinedAt: !3961)
!4048 = !DILocation(line: 217, column: 27, scope: !3887, inlinedAt: !3961)
!4049 = !DILocation(line: 219, column: 28, scope: !3887, inlinedAt: !3961)
!4050 = !DILocation(line: 198, column: 30, scope: !3887, inlinedAt: !3961)
!4051 = !DILocation(line: 220, column: 28, scope: !3887, inlinedAt: !3961)
!4052 = !DILocation(line: 198, column: 34, scope: !3887, inlinedAt: !3961)
!4053 = !DILocation(line: 199, column: 29, scope: !3887, inlinedAt: !3961)
!4054 = !DILocation(line: 222, column: 36, scope: !4055, inlinedAt: !3961)
!4055 = distinct !DILexicalBlock(scope: !3887, file: !614, line: 222, column: 27)
!4056 = !DILocation(line: 222, column: 27, scope: !3887, inlinedAt: !3961)
!4057 = !DILocation(line: 225, column: 63, scope: !4058, inlinedAt: !3961)
!4058 = distinct !DILexicalBlock(scope: !4055, file: !614, line: 223, column: 25)
!4059 = !DILocation(line: 225, column: 46, scope: !4058, inlinedAt: !3961)
!4060 = !DILocation(line: 226, column: 25, scope: !4058, inlinedAt: !3961)
!4061 = !DILocation(line: 229, column: 36, scope: !4062, inlinedAt: !3961)
!4062 = distinct !DILexicalBlock(scope: !4055, file: !614, line: 228, column: 25)
!4063 = !DILocation(line: 230, column: 73, scope: !4062, inlinedAt: !3961)
!4064 = !DILocation(line: 230, column: 46, scope: !4062, inlinedAt: !3961)
!4065 = !DILocation(line: 232, column: 35, scope: !4066, inlinedAt: !3961)
!4066 = distinct !DILexicalBlock(scope: !3887, file: !614, line: 232, column: 27)
!4067 = !DILocation(line: 232, column: 27, scope: !3887, inlinedAt: !3961)
!4068 = !DILocation(line: 236, column: 27, scope: !4069, inlinedAt: !3961)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !614, line: 233, column: 25)
!4070 = !DILocation(line: 237, column: 27, scope: !4069, inlinedAt: !3961)
!4071 = !DILocation(line: 241, column: 21, scope: !3888, inlinedAt: !3961)
!4072 = !DILocation(line: 239, column: 39, scope: !3887, inlinedAt: !3961)
!4073 = !DILocation(line: 239, column: 50, scope: !3887, inlinedAt: !3961)
!4074 = !DILocation(line: 239, column: 61, scope: !3887, inlinedAt: !3961)
!4075 = !DILocalVariable(name: "__dest", arg: 1, scope: !4076, file: !1191, line: 88, type: !1194)
!4076 = distinct !DISubprogram(name: "strcpy", scope: !1191, file: !1191, line: 88, type: !1192, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !4077)
!4077 = !{!4075, !4078}
!4078 = !DILocalVariable(name: "__src", arg: 2, scope: !4076, file: !1191, line: 88, type: !1195)
!4079 = !DILocation(line: 88, column: 1, scope: !4076, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 239, column: 23, scope: !3887, inlinedAt: !3961)
!4081 = !DILocation(line: 90, column: 49, scope: !4076, inlinedAt: !4080)
!4082 = !DILocation(line: 90, column: 10, scope: !4076, inlinedAt: !4080)
!4083 = !DILocation(line: 88, column: 1, scope: !4076, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 240, column: 23, scope: !3887, inlinedAt: !3961)
!4085 = !DILocation(line: 90, column: 49, scope: !4076, inlinedAt: !4084)
!4086 = !DILocation(line: 90, column: 10, scope: !4076, inlinedAt: !4084)
!4087 = !DILocation(line: 193, column: 19, scope: !3888, inlinedAt: !3961)
!4088 = !DILocation(line: 242, column: 19, scope: !3890, inlinedAt: !3961)
!4089 = !DILocation(line: 243, column: 32, scope: !4090, inlinedAt: !3961)
!4090 = distinct !DILexicalBlock(scope: !3890, file: !614, line: 243, column: 23)
!4091 = !DILocation(line: 243, column: 23, scope: !3890, inlinedAt: !3961)
!4092 = !DILocation(line: 247, column: 33, scope: !4093, inlinedAt: !3961)
!4093 = distinct !DILexicalBlock(scope: !4090, file: !614, line: 246, column: 21)
!4094 = !DILocation(line: 247, column: 45, scope: !4093, inlinedAt: !3961)
!4095 = !DILocation(line: 253, column: 11, scope: !3894, inlinedAt: !3961)
!4096 = !DILocation(line: 377, column: 23, scope: !3896, inlinedAt: !3961)
!4097 = !DILocation(line: 378, column: 5, scope: !3896, inlinedAt: !3961)
!4098 = !DILocation(line: 396, column: 15, scope: !3880)
!4099 = !DILocation(line: 590, column: 8, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !3962, file: !614, line: 589, column: 3)
!4101 = !DILocation(line: 590, column: 17, scope: !4100)
!4102 = !DILocation(line: 589, column: 3, scope: !3962)
!4103 = !DILocation(line: 592, column: 9, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4100, file: !614, line: 592, column: 9)
!4105 = !DILocation(line: 592, column: 35, scope: !4104)
!4106 = !DILocation(line: 593, column: 9, scope: !4104)
!4107 = !DILocation(line: 593, column: 24, scope: !4104)
!4108 = !DILocation(line: 593, column: 31, scope: !4104)
!4109 = !DILocation(line: 593, column: 34, scope: !4104)
!4110 = !DILocation(line: 593, column: 45, scope: !4104)
!4111 = !DILocation(line: 592, column: 9, scope: !4100)
!4112 = !DILocation(line: 595, column: 29, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4104, file: !614, line: 594, column: 7)
!4114 = !DILocation(line: 595, column: 27, scope: !4113)
!4115 = !DILocation(line: 595, column: 46, scope: !4113)
!4116 = !DILocation(line: 596, column: 9, scope: !4113)
!4117 = !DILocation(line: 591, column: 19, scope: !4100)
!4118 = !DILocation(line: 591, column: 36, scope: !4100)
!4119 = !DILocation(line: 591, column: 16, scope: !4100)
!4120 = !DILocation(line: 591, column: 52, scope: !4100)
!4121 = !DILocation(line: 591, column: 69, scope: !4100)
!4122 = !DILocation(line: 591, column: 49, scope: !4100)
!4123 = distinct !{!4123, !4102, !4124}
!4124 = !DILocation(line: 597, column: 7, scope: !3962)
!4125 = !DILocation(line: 602, column: 7, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !3880, file: !614, line: 602, column: 7)
!4127 = !DILocation(line: 602, column: 18, scope: !4126)
!4128 = !DILocation(line: 602, column: 7, scope: !3880)
!4129 = !DILocation(line: 612, column: 3, scope: !3880)
!4130 = distinct !DISubprogram(name: "rpl_fclose", scope: !4131, file: !4131, line: 56, type: !4132, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !695, variables: !4174)
!4131 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!6, !4134}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1440, line: 7, baseType: !4136)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1442, line: 241, size: 1728, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4136, file: !1442, line: 242, baseType: !6, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4136, file: !1442, line: 247, baseType: !8, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4136, file: !1442, line: 248, baseType: !8, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4136, file: !1442, line: 249, baseType: !8, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4136, file: !1442, line: 250, baseType: !8, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4136, file: !1442, line: 251, baseType: !8, size: 64, offset: 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4136, file: !1442, line: 252, baseType: !8, size: 64, offset: 384)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4136, file: !1442, line: 253, baseType: !8, size: 64, offset: 448)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4136, file: !1442, line: 254, baseType: !8, size: 64, offset: 512)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4136, file: !1442, line: 256, baseType: !8, size: 64, offset: 576)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4136, file: !1442, line: 257, baseType: !8, size: 64, offset: 640)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4136, file: !1442, line: 258, baseType: !8, size: 64, offset: 704)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4136, file: !1442, line: 260, baseType: !4151, size: 64, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1442, line: 156, size: 192, elements: !4153)
!4153 = !{!4154, !4155, !4157}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4152, file: !1442, line: 157, baseType: !4151, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4152, file: !1442, line: 158, baseType: !4156, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4152, file: !1442, line: 162, baseType: !6, size: 32, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4136, file: !1442, line: 262, baseType: !4156, size: 64, offset: 832)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4136, file: !1442, line: 264, baseType: !6, size: 32, offset: 896)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4136, file: !1442, line: 268, baseType: !6, size: 32, offset: 928)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4136, file: !1442, line: 270, baseType: !124, size: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4136, file: !1442, line: 274, baseType: !217, size: 16, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4136, file: !1442, line: 275, baseType: !1470, size: 8, offset: 1040)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4136, file: !1442, line: 276, baseType: !1472, size: 8, offset: 1048)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4136, file: !1442, line: 280, baseType: !1476, size: 64, offset: 1088)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4136, file: !1442, line: 289, baseType: !1479, size: 64, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4136, file: !1442, line: 297, baseType: !40, size: 64, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4136, file: !1442, line: 298, baseType: !40, size: 64, offset: 1280)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4136, file: !1442, line: 299, baseType: !40, size: 64, offset: 1344)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4136, file: !1442, line: 300, baseType: !40, size: 64, offset: 1408)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4136, file: !1442, line: 302, baseType: !41, size: 64, offset: 1472)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4136, file: !1442, line: 303, baseType: !6, size: 32, offset: 1536)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4136, file: !1442, line: 305, baseType: !79, size: 160, offset: 1568)
!4174 = !{!4175, !4176, !4177, !4178}
!4175 = !DILocalVariable(name: "fp", arg: 1, scope: !4130, file: !4131, line: 56, type: !4134)
!4176 = !DILocalVariable(name: "saved_errno", scope: !4130, file: !4131, line: 58, type: !6)
!4177 = !DILocalVariable(name: "fd", scope: !4130, file: !4131, line: 59, type: !6)
!4178 = !DILocalVariable(name: "result", scope: !4130, file: !4131, line: 60, type: !6)
!4179 = !DILocation(line: 56, column: 19, scope: !4130)
!4180 = !DILocation(line: 58, column: 7, scope: !4130)
!4181 = !DILocation(line: 60, column: 7, scope: !4130)
!4182 = !DILocation(line: 63, column: 8, scope: !4130)
!4183 = !DILocation(line: 59, column: 7, scope: !4130)
!4184 = !DILocation(line: 64, column: 10, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4130, file: !4131, line: 64, column: 7)
!4186 = !DILocation(line: 64, column: 7, scope: !4130)
!4187 = !DILocation(line: 65, column: 12, scope: !4185)
!4188 = !DILocation(line: 65, column: 5, scope: !4185)
!4189 = !DILocation(line: 70, column: 9, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4130, file: !4131, line: 70, column: 7)
!4191 = !DILocation(line: 70, column: 23, scope: !4190)
!4192 = !DILocation(line: 70, column: 33, scope: !4190)
!4193 = !DILocation(line: 70, column: 26, scope: !4190)
!4194 = !DILocation(line: 70, column: 59, scope: !4190)
!4195 = !DILocation(line: 71, column: 7, scope: !4190)
!4196 = !DILocation(line: 71, column: 10, scope: !4190)
!4197 = !DILocation(line: 70, column: 7, scope: !4130)
!4198 = !DILocation(line: 98, column: 12, scope: !4130)
!4199 = !DILocation(line: 103, column: 7, scope: !4130)
!4200 = !DILocation(line: 72, column: 19, scope: !4190)
!4201 = !DILocation(line: 103, column: 19, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4130, file: !4131, line: 103, column: 7)
!4203 = !DILocation(line: 105, column: 13, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4202, file: !4131, line: 104, column: 5)
!4205 = !DILocation(line: 107, column: 5, scope: !4204)
!4206 = !DILocation(line: 110, column: 1, scope: !4130)
!4207 = distinct !DISubprogram(name: "rpl_fflush", scope: !4208, file: !4208, line: 127, type: !4209, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !4251)
!4208 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!6, !4211}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1440, line: 7, baseType: !4213)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1442, line: 241, size: 1728, elements: !4214)
!4214 = !{!4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4213, file: !1442, line: 242, baseType: !6, size: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4213, file: !1442, line: 247, baseType: !8, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4213, file: !1442, line: 248, baseType: !8, size: 64, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4213, file: !1442, line: 249, baseType: !8, size: 64, offset: 192)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4213, file: !1442, line: 250, baseType: !8, size: 64, offset: 256)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4213, file: !1442, line: 251, baseType: !8, size: 64, offset: 320)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4213, file: !1442, line: 252, baseType: !8, size: 64, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4213, file: !1442, line: 253, baseType: !8, size: 64, offset: 448)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4213, file: !1442, line: 254, baseType: !8, size: 64, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4213, file: !1442, line: 256, baseType: !8, size: 64, offset: 576)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4213, file: !1442, line: 257, baseType: !8, size: 64, offset: 640)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4213, file: !1442, line: 258, baseType: !8, size: 64, offset: 704)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4213, file: !1442, line: 260, baseType: !4228, size: 64, offset: 768)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1442, line: 156, size: 192, elements: !4230)
!4230 = !{!4231, !4232, !4234}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4229, file: !1442, line: 157, baseType: !4228, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4229, file: !1442, line: 158, baseType: !4233, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4229, file: !1442, line: 162, baseType: !6, size: 32, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4213, file: !1442, line: 262, baseType: !4233, size: 64, offset: 832)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4213, file: !1442, line: 264, baseType: !6, size: 32, offset: 896)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4213, file: !1442, line: 268, baseType: !6, size: 32, offset: 928)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4213, file: !1442, line: 270, baseType: !124, size: 64, offset: 960)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4213, file: !1442, line: 274, baseType: !217, size: 16, offset: 1024)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4213, file: !1442, line: 275, baseType: !1470, size: 8, offset: 1040)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4213, file: !1442, line: 276, baseType: !1472, size: 8, offset: 1048)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4213, file: !1442, line: 280, baseType: !1476, size: 64, offset: 1088)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4213, file: !1442, line: 289, baseType: !1479, size: 64, offset: 1152)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4213, file: !1442, line: 297, baseType: !40, size: 64, offset: 1216)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4213, file: !1442, line: 298, baseType: !40, size: 64, offset: 1280)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4213, file: !1442, line: 299, baseType: !40, size: 64, offset: 1344)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4213, file: !1442, line: 300, baseType: !40, size: 64, offset: 1408)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4213, file: !1442, line: 302, baseType: !41, size: 64, offset: 1472)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4213, file: !1442, line: 303, baseType: !6, size: 32, offset: 1536)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4213, file: !1442, line: 305, baseType: !79, size: 160, offset: 1568)
!4251 = !{!4252}
!4252 = !DILocalVariable(name: "stream", arg: 1, scope: !4207, file: !4208, line: 127, type: !4211)
!4253 = !DILocation(line: 127, column: 19, scope: !4207)
!4254 = !DILocation(line: 148, column: 14, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4207, file: !4208, line: 148, column: 7)
!4256 = !DILocation(line: 148, column: 22, scope: !4255)
!4257 = !DILocation(line: 148, column: 27, scope: !4255)
!4258 = !DILocation(line: 148, column: 7, scope: !4207)
!4259 = !DILocation(line: 149, column: 12, scope: !4255)
!4260 = !DILocation(line: 149, column: 5, scope: !4255)
!4261 = !DILocalVariable(name: "fp", arg: 1, scope: !4262, file: !4208, line: 40, type: !4211)
!4262 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4208, file: !4208, line: 40, type: !4263, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !4265)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{null, !4211}
!4265 = !{!4261}
!4266 = !DILocation(line: 40, column: 48, scope: !4262, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 153, column: 3, scope: !4207)
!4268 = !DILocation(line: 42, column: 11, scope: !4269, inlinedAt: !4267)
!4269 = distinct !DILexicalBlock(scope: !4262, file: !4208, line: 42, column: 7)
!4270 = !DILocation(line: 42, column: 18, scope: !4269, inlinedAt: !4267)
!4271 = !DILocation(line: 42, column: 7, scope: !4262, inlinedAt: !4267)
!4272 = !DILocation(line: 44, column: 5, scope: !4269, inlinedAt: !4267)
!4273 = !DILocation(line: 155, column: 10, scope: !4207)
!4274 = !DILocation(line: 155, column: 3, scope: !4207)
!4275 = !DILocation(line: 229, column: 1, scope: !4207)
!4276 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4277, file: !4277, line: 28, type: !4278, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !4320)
!4277 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!6, !4280, !1419, !6}
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1440, line: 7, baseType: !4282)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1442, line: 241, size: 1728, elements: !4283)
!4283 = !{!4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4282, file: !1442, line: 242, baseType: !6, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4282, file: !1442, line: 247, baseType: !8, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4282, file: !1442, line: 248, baseType: !8, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4282, file: !1442, line: 249, baseType: !8, size: 64, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4282, file: !1442, line: 250, baseType: !8, size: 64, offset: 256)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4282, file: !1442, line: 251, baseType: !8, size: 64, offset: 320)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4282, file: !1442, line: 252, baseType: !8, size: 64, offset: 384)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4282, file: !1442, line: 253, baseType: !8, size: 64, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4282, file: !1442, line: 254, baseType: !8, size: 64, offset: 512)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4282, file: !1442, line: 256, baseType: !8, size: 64, offset: 576)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4282, file: !1442, line: 257, baseType: !8, size: 64, offset: 640)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4282, file: !1442, line: 258, baseType: !8, size: 64, offset: 704)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4282, file: !1442, line: 260, baseType: !4297, size: 64, offset: 768)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1442, line: 156, size: 192, elements: !4299)
!4299 = !{!4300, !4301, !4303}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4298, file: !1442, line: 157, baseType: !4297, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4298, file: !1442, line: 158, baseType: !4302, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4298, file: !1442, line: 162, baseType: !6, size: 32, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4282, file: !1442, line: 262, baseType: !4302, size: 64, offset: 832)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4282, file: !1442, line: 264, baseType: !6, size: 32, offset: 896)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4282, file: !1442, line: 268, baseType: !6, size: 32, offset: 928)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4282, file: !1442, line: 270, baseType: !124, size: 64, offset: 960)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4282, file: !1442, line: 274, baseType: !217, size: 16, offset: 1024)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4282, file: !1442, line: 275, baseType: !1470, size: 8, offset: 1040)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4282, file: !1442, line: 276, baseType: !1472, size: 8, offset: 1048)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4282, file: !1442, line: 280, baseType: !1476, size: 64, offset: 1088)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4282, file: !1442, line: 289, baseType: !1479, size: 64, offset: 1152)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4282, file: !1442, line: 297, baseType: !40, size: 64, offset: 1216)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4282, file: !1442, line: 298, baseType: !40, size: 64, offset: 1280)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4282, file: !1442, line: 299, baseType: !40, size: 64, offset: 1344)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4282, file: !1442, line: 300, baseType: !40, size: 64, offset: 1408)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4282, file: !1442, line: 302, baseType: !41, size: 64, offset: 1472)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4282, file: !1442, line: 303, baseType: !6, size: 32, offset: 1536)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4282, file: !1442, line: 305, baseType: !79, size: 160, offset: 1568)
!4320 = !{!4321, !4322, !4323, !4324}
!4321 = !DILocalVariable(name: "fp", arg: 1, scope: !4276, file: !4277, line: 28, type: !4280)
!4322 = !DILocalVariable(name: "offset", arg: 2, scope: !4276, file: !4277, line: 28, type: !1419)
!4323 = !DILocalVariable(name: "whence", arg: 3, scope: !4276, file: !4277, line: 28, type: !6)
!4324 = !DILocalVariable(name: "pos", scope: !4325, file: !4277, line: 116, type: !1419)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !4277, line: 112, column: 5)
!4326 = distinct !DILexicalBlock(scope: !4276, file: !4277, line: 51, column: 7)
!4327 = !DILocation(line: 28, column: 15, scope: !4276)
!4328 = !DILocation(line: 28, column: 25, scope: !4276)
!4329 = !DILocation(line: 28, column: 37, scope: !4276)
!4330 = !DILocation(line: 51, column: 11, scope: !4326)
!4331 = !DILocation(line: 51, column: 31, scope: !4326)
!4332 = !DILocation(line: 51, column: 24, scope: !4326)
!4333 = !DILocation(line: 52, column: 7, scope: !4326)
!4334 = !DILocation(line: 52, column: 14, scope: !4326)
!4335 = !{!3836, !720, i64 40}
!4336 = !DILocation(line: 52, column: 35, scope: !4326)
!4337 = !{!3836, !720, i64 32}
!4338 = !DILocation(line: 52, column: 28, scope: !4326)
!4339 = !DILocation(line: 53, column: 7, scope: !4326)
!4340 = !DILocation(line: 53, column: 14, scope: !4326)
!4341 = !{!3836, !720, i64 72}
!4342 = !DILocation(line: 53, column: 28, scope: !4326)
!4343 = !DILocation(line: 51, column: 7, scope: !4276)
!4344 = !DILocation(line: 116, column: 26, scope: !4325)
!4345 = !DILocation(line: 116, column: 19, scope: !4325)
!4346 = !DILocation(line: 116, column: 13, scope: !4325)
!4347 = !DILocation(line: 117, column: 15, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4325, file: !4277, line: 117, column: 11)
!4349 = !DILocation(line: 117, column: 11, scope: !4325)
!4350 = !DILocation(line: 127, column: 11, scope: !4325)
!4351 = !DILocation(line: 127, column: 18, scope: !4325)
!4352 = !DILocation(line: 128, column: 11, scope: !4325)
!4353 = !DILocation(line: 128, column: 19, scope: !4325)
!4354 = !{!3836, !822, i64 144}
!4355 = !DILocation(line: 159, column: 7, scope: !4325)
!4356 = !DILocation(line: 161, column: 10, scope: !4276)
!4357 = !DILocation(line: 161, column: 3, scope: !4276)
!4358 = !DILocation(line: 162, column: 1, scope: !4276)
