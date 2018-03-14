; ModuleID = 'coreutils-8.27/src/paste.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [119 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [144 x i8] c"  -d, --delimiters=LIST   reuse characters from LIST instead of TABs\0A  -s, --serial            paste one file at a time instead of in parallel\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@serial_merge = internal unnamed_addr global i1 false, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"\5C0\00", align 1
@line_delim = internal unnamed_addr global i1 false, align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@delims = internal unnamed_addr global i8* null, align 8, !dbg !43
@delim_end = internal unnamed_addr global i8* null, align 8, !dbg !69
@.str.18 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !84
@.str.21 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !90
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !95
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !98
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !105
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !112
@.str.48 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.49 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.50 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.51 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.52 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.53 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.54 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.55 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.57 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !140
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !147
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !160
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !167
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !174
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !162
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !176
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.72 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.73 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.74 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.75 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.76 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.77 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.78 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.79 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.80 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.81 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.82 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.85 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.86 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.87 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.88 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.89 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.90 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !182
@.str.1.103 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.123 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !191
@.str.3.124 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.125 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.126 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.127 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.128 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !589 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !593, metadata !594), !dbg !595
  %2 = icmp eq i32 %0, 0, !dbg !596
  br i1 %2, label %8, label %3, !dbg !598

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !599, !tbaa !601
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !599
  %6 = load i8*, i8** @program_name, align 8, !dbg !599, !tbaa !601
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !599
  br label %48, !dbg !599

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !605
  %10 = load i8*, i8** @program_name, align 8, !dbg !605, !tbaa !601
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !605
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !607
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !607, !tbaa !601
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !607
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !608
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608, !tbaa !601
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !608
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #9, !dbg !613
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !601
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !613
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !616
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !601
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !616
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !617
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617, !tbaa !601
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !617
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !618
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !601
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9, !dbg !618
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !619
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !601
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #9, !dbg !619
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !55, metadata !594) #9, !dbg !620
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !55, metadata !594) #9, !dbg !620
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #9, !dbg !622
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !622
  %35 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !623
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !63, metadata !594) #9, !dbg !624
  %36 = icmp eq i8* %35, null, !dbg !625
  br i1 %36, label %43, label %37, !dbg !627

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #14, !dbg !628
  %39 = icmp eq i32 %38, 0, !dbg !628
  br i1 %39, label %43, label %40, !dbg !629

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #9, !dbg !630
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !630
  br label %43, !dbg !632

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #9, !dbg !633
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !633
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #9, !dbg !634
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !634
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #15, !dbg !635
  unreachable, !dbg !635
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !636 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !641, metadata !594), !dbg !647
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !642, metadata !594), !dbg !648
  %3 = load i8*, i8** %1, align 8, !dbg !649, !tbaa !601
  tail call void @set_program_name(i8* %3) #9, !dbg !650
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !651
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !652
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !653
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !654
  store i1 false, i1* @have_read_stdin, align 1
  store i1 false, i1* @serial_merge, align 1
  br label %8, !dbg !655

; <label>:8:                                      ; preds = %12, %2
  %9 = phi i8* [ %16, %12 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), %2 ]
  br label %10, !dbg !656

; <label>:10:                                     ; preds = %18, %8
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !644, metadata !594), !dbg !657
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !656
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !643, metadata !594), !dbg !658
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 100, label %12
    i32 115, label %17
    i32 122, label %18
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !655

; <label>:12:                                     ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !659, !tbaa !601
  %14 = load i8, i8* %13, align 1, !dbg !659, !tbaa !662
  %15 = icmp eq i8 %14, 0, !dbg !663
  %16 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %13, !dbg !659
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !644, metadata !594), !dbg !657
  br label %8, !dbg !664, !llvm.loop !665

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !667

; <label>:18:                                     ; preds = %10, %17
  %19 = phi i1* [ @serial_merge, %17 ], [ @line_delim, %10 ]
  store i1 true, i1* %19, align 1
  br label %10, !dbg !657, !llvm.loop !665

; <label>:20:                                     ; preds = %10
  tail call void @usage(i32 0) #16, !dbg !668
  unreachable, !dbg !668

; <label>:21:                                     ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !601
  %23 = load i8*, i8** @Version, align 8, !dbg !669, !tbaa !601
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #9, !dbg !669
  tail call void @exit(i32 0) #15, !dbg !669
  unreachable, !dbg !669

; <label>:24:                                     ; preds = %10
  tail call void @usage(i32 1) #16, !dbg !670
  unreachable, !dbg !670

; <label>:25:                                     ; preds = %10
  %26 = load i32, i32* @optind, align 4, !dbg !671, !tbaa !672
  %27 = sub nsw i32 %0, %26, !dbg !674
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !645, metadata !594), !dbg !675
  %28 = icmp eq i32 %27, 0, !dbg !676
  br i1 %28, label %29, label %32, !dbg !678

; <label>:29:                                     ; preds = %25
  %30 = sext i32 %26 to i64, !dbg !679
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !679
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %31, align 8, !dbg !681, !tbaa !601
  br label %32, !dbg !682

; <label>:32:                                     ; preds = %29, %25
  %33 = phi i32 [ 1, %29 ], [ %27, %25 ]
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !645, metadata !594), !dbg !675
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !683, metadata !594) #9, !dbg !690
  %34 = tail call noalias i8* @xstrdup(i8* %9) #9, !dbg !693
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !688, metadata !594) #9, !dbg !694
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !689, metadata !594) #9, !dbg !695
  store i8* %34, i8** @delims, align 8, !dbg !696, !tbaa !601
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !688, metadata !594) #9, !dbg !694
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !683, metadata !594) #9, !dbg !690
  %35 = load i8, i8* %9, align 1, !dbg !697, !tbaa !662
  %36 = icmp eq i8 %35, 0, !dbg !698
  br i1 %36, label %67, label %37, !dbg !698

; <label>:37:                                     ; preds = %32
  br label %38, !dbg !699

; <label>:38:                                     ; preds = %37, %59
  %39 = phi i8 [ %62, %59 ], [ %35, %37 ]
  %40 = phi i8* [ %61, %59 ], [ %34, %37 ]
  %41 = phi i8* [ %60, %59 ], [ %9, %37 ]
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !683, metadata !594) #9, !dbg !690
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !688, metadata !594) #9, !dbg !694
  %42 = icmp eq i8 %39, 92, !dbg !699
  %43 = getelementptr inbounds i8, i8* %41, i64 1
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !683, metadata !594) #9, !dbg !690
  br i1 %42, label %45, label %44, !dbg !702

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !688, metadata !703) #9, !dbg !694
  store i8 %39, i8* %40, align 1, !dbg !704, !tbaa !662
  br label %59, !dbg !705

; <label>:45:                                     ; preds = %38
  %46 = load i8, i8* %43, align 1, !dbg !706, !tbaa !662
  %47 = sext i8 %46 to i32, !dbg !706
  switch i32 %47, label %55 [
    i32 48, label %48
    i32 98, label %56
    i32 102, label %49
    i32 110, label %50
    i32 114, label %51
    i32 116, label %52
    i32 118, label %53
    i32 92, label %54
    i32 0, label %64
  ], !dbg !708

; <label>:48:                                     ; preds = %45
  br label %56, !dbg !709

; <label>:49:                                     ; preds = %45
  br label %56, !dbg !711

; <label>:50:                                     ; preds = %45
  br label %56, !dbg !712

; <label>:51:                                     ; preds = %45
  br label %56, !dbg !713

; <label>:52:                                     ; preds = %45
  br label %56, !dbg !714

; <label>:53:                                     ; preds = %45
  br label %56, !dbg !715

; <label>:54:                                     ; preds = %45
  br label %56, !dbg !716

; <label>:55:                                     ; preds = %45
  br label %56, !dbg !717

; <label>:56:                                     ; preds = %55, %54, %53, %52, %51, %50, %49, %48, %45
  %57 = phi i8 [ %46, %55 ], [ 92, %54 ], [ 11, %53 ], [ 9, %52 ], [ 13, %51 ], [ 10, %50 ], [ 12, %49 ], [ 0, %48 ], [ 8, %45 ]
  store i8 %57, i8* %40, align 1, !tbaa !662
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !688, metadata !703) #9, !dbg !694
  %58 = getelementptr inbounds i8, i8* %41, i64 2, !dbg !718
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !683, metadata !594) #9, !dbg !690
  br label %59

; <label>:59:                                     ; preds = %56, %44
  %60 = phi i8* [ %43, %44 ], [ %58, %56 ]
  %61 = getelementptr inbounds i8, i8* %40, i64 1
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !688, metadata !594) #9, !dbg !694
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !683, metadata !594) #9, !dbg !690
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !688, metadata !594) #9, !dbg !694
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !683, metadata !594) #9, !dbg !690
  %62 = load i8, i8* %60, align 1, !dbg !697, !tbaa !662
  %63 = icmp eq i8 %62, 0, !dbg !698
  br i1 %63, label %67, label %38, !dbg !698, !llvm.loop !719

; <label>:64:                                     ; preds = %45
  store i8* %40, i8** @delim_end, align 8, !dbg !722, !tbaa !601
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i32 5) #9, !dbg !723
  %66 = tail call i8* @quotearg_n_style_colon(i32 0, i32 6, i8* %9) #9, !dbg !723
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %65, i8* %66) #9, !dbg !723
  unreachable, !dbg !723

; <label>:67:                                     ; preds = %59, %32
  %68 = phi i8* [ %34, %32 ], [ %61, %59 ]
  store i8* %68, i8** @delim_end, align 8, !dbg !722, !tbaa !601
  %69 = load i1, i1* @serial_merge, align 1
  %70 = select i1 %69, i1 (i64, i8**)* @paste_serial, i1 (i64, i8**)* @paste_parallel, !dbg !725
  %71 = sext i32 %33 to i64, !dbg !726
  %72 = load i32, i32* @optind, align 4, !dbg !727, !tbaa !672
  %73 = sext i32 %72 to i64, !dbg !728
  %74 = getelementptr inbounds i8*, i8** %1, i64 %73, !dbg !728
  %75 = tail call zeroext i1 %70(i64 %71, i8** %74) #9, !dbg !729
  %76 = load i8*, i8** @delims, align 8, !dbg !730, !tbaa !601
  tail call void @free(i8* %76) #9, !dbg !731
  %77 = load i1, i1* @have_read_stdin, align 1
  br i1 %77, label %78, label %85, !dbg !732

; <label>:78:                                     ; preds = %67
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !734, !tbaa !601
  %80 = tail call i32 @rpl_fclose(%struct._IO_FILE* %79) #9, !dbg !735
  %81 = icmp eq i32 %80, -1, !dbg !736
  br i1 %81, label %82, label %85, !dbg !737

; <label>:82:                                     ; preds = %78
  %83 = tail call i32* @__errno_location() #17, !dbg !738
  %84 = load i32, i32* %83, align 4, !dbg !738, !tbaa !672
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !738
  unreachable, !dbg !738

; <label>:85:                                     ; preds = %78, %67
  %86 = xor i1 %75, true, !dbg !739
  %87 = zext i1 %86 to i32, !dbg !739
  ret i32 %87, !dbg !740
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @paste_serial(i64, i8** nocapture readonly) unnamed_addr #6 !dbg !741 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !745, metadata !594), !dbg !812
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !746, metadata !594), !dbg !813
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !747, metadata !594), !dbg !814
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !745, metadata !594), !dbg !812
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !746, metadata !594), !dbg !813
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !747, metadata !594), !dbg !814
  %3 = icmp eq i64 %0, 0, !dbg !815
  br i1 %3, label %170, label %4, !dbg !815

; <label>:4:                                      ; preds = %2
  br label %5, !dbg !816

; <label>:5:                                      ; preds = %4, %165
  %6 = phi i64 [ %167, %165 ], [ %0, %4 ]
  %7 = phi i8** [ %168, %165 ], [ %1, %4 ]
  %8 = phi i8 [ %166, %165 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i8 %8, i64 0, metadata !747, metadata !594), !dbg !814
  tail call void @llvm.dbg.value(metadata i8** %7, i64 0, metadata !746, metadata !594), !dbg !813
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !745, metadata !594), !dbg !812
  %9 = load i8*, i8** %7, align 8, !dbg !816, !tbaa !601
  %10 = tail call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #14, !dbg !816
  %11 = icmp eq i32 %10, 0, !dbg !816
  br i1 %11, label %12, label %14, !dbg !817

; <label>:12:                                     ; preds = %5
  store i1 true, i1* @have_read_stdin, align 1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !818, !tbaa !601
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %13, i64 0, metadata !751, metadata !594), !dbg !821
  br label %23, !dbg !822

; <label>:14:                                     ; preds = %5
  %15 = tail call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !823
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %15, i64 0, metadata !751, metadata !594), !dbg !821
  %16 = icmp eq %struct._IO_FILE* %15, null, !dbg !825
  br i1 %16, label %17, label %22, !dbg !827

; <label>:17:                                     ; preds = %14
  %18 = tail call i32* @__errno_location() #17, !dbg !828
  %19 = load i32, i32* %18, align 4, !dbg !828, !tbaa !672
  %20 = load i8*, i8** %7, align 8, !dbg !830, !tbaa !601
  %21 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %20) #9, !dbg !830
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %21) #9, !dbg !831
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !747, metadata !594), !dbg !814
  br label %165, !dbg !832

; <label>:22:                                     ; preds = %14
  tail call void @fadvise(%struct._IO_FILE* nonnull %15, i32 2) #9, !dbg !833
  br label %23

; <label>:23:                                     ; preds = %22, %12
  %24 = phi %struct._IO_FILE* [ %13, %12 ], [ %15, %22 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %24, i64 0, metadata !751, metadata !594), !dbg !821
  %25 = load i8*, i8** @delims, align 8, !dbg !834, !tbaa !601
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !750, metadata !594), !dbg !835
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %24, i64 0, metadata !836, metadata !594) #9, !dbg !842
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %24, i64 0, i32 1, !dbg !844
  %27 = load i8*, i8** %26, align 8, !dbg !844, !tbaa !845
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %24, i64 0, i32 2, !dbg !844
  %29 = load i8*, i8** %28, align 8, !dbg !844, !tbaa !849
  %30 = icmp ult i8* %27, %29, !dbg !844
  br i1 %30, label %31, label %36, !dbg !844, !prof !850

; <label>:31:                                     ; preds = %23
  %32 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !844
  store i8* %32, i8** %26, align 8, !dbg !844, !tbaa !845
  %33 = load i8, i8* %27, align 1, !dbg !844, !tbaa !662
  %34 = zext i8 %33 to i32, !dbg !844
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !749, metadata !594), !dbg !851
  %35 = tail call i32* @__errno_location() #17, !dbg !852
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !807, metadata !594), !dbg !853
  br label %45, !dbg !854

; <label>:36:                                     ; preds = %23
  %37 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %24) #9, !dbg !844
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !749, metadata !594), !dbg !851
  %38 = tail call i32* @__errno_location() #17, !dbg !852
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !807, metadata !594), !dbg !853
  %39 = icmp eq i32 %37, -1, !dbg !855
  br i1 %39, label %40, label %45, !dbg !854

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %38, align 4, !dbg !852, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !807, metadata !594), !dbg !853
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !749, metadata !594), !dbg !851
  %42 = load i1, i1* @line_delim, align 1
  %43 = select i1 %42, i8 0, i8 10
  %44 = zext i8 %43 to i32, !dbg !857
  br label %128, !dbg !859

; <label>:45:                                     ; preds = %31, %36
  %46 = phi i32* [ %35, %31 ], [ %38, %36 ]
  %47 = phi i32 [ %34, %31 ], [ %37, %36 ]
  br label %48, !dbg !860

; <label>:48:                                     ; preds = %85, %45
  %49 = phi i32 [ %64, %85 ], [ %47, %45 ]
  %50 = phi i8* [ %90, %85 ], [ %25, %45 ]
  br label %51, !dbg !862

; <label>:51:                                     ; preds = %105, %48
  %52 = phi i32 [ %49, %48 ], [ %64, %105 ]
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !750, metadata !594), !dbg !835
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !749, metadata !594), !dbg !851
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %24, i64 0, metadata !836, metadata !594) #9, !dbg !864
  %53 = load i8*, i8** %26, align 8, !dbg !862, !tbaa !845
  %54 = load i8*, i8** %28, align 8, !dbg !862, !tbaa !849
  %55 = icmp ult i8* %53, %54, !dbg !862
  br i1 %55, label %56, label %60, !dbg !862, !prof !850

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !862
  store i8* %57, i8** %26, align 8, !dbg !862, !tbaa !845
  %58 = load i8, i8* %53, align 1, !dbg !862, !tbaa !662
  %59 = zext i8 %58 to i32, !dbg !862
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !748, metadata !594), !dbg !865
  br label %63, !dbg !860

; <label>:60:                                     ; preds = %51
  %61 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %24) #9, !dbg !862
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !748, metadata !594), !dbg !865
  %62 = icmp eq i32 %61, -1, !dbg !866
  br i1 %62, label %107, label %63, !dbg !860

; <label>:63:                                     ; preds = %56, %60
  %64 = phi i32 [ %59, %56 ], [ %61, %60 ]
  %65 = load i1, i1* @line_delim, align 1
  %66 = select i1 %65, i32 0, i32 10, !dbg !867
  %67 = icmp eq i32 %52, %66, !dbg !870
  br i1 %67, label %68, label %91, !dbg !871

; <label>:68:                                     ; preds = %63
  %69 = load i8, i8* %50, align 1, !dbg !872, !tbaa !662
  %70 = icmp eq i8 %69, 0, !dbg !875
  br i1 %70, label %85, label %71, !dbg !876

; <label>:71:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata i8 %69, i64 0, metadata !877, metadata !594) #9, !dbg !882
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !884, !tbaa !601
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 5, !dbg !884
  %74 = load i8*, i8** %73, align 8, !dbg !884, !tbaa !892
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 6, !dbg !884
  %76 = load i8*, i8** %75, align 8, !dbg !884, !tbaa !893
  %77 = icmp ult i8* %74, %76, !dbg !884
  br i1 %77, label %78, label %80, !dbg !884, !prof !850

; <label>:78:                                     ; preds = %71
  %79 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !884
  store i8* %79, i8** %73, align 8, !dbg !884, !tbaa !892
  store i8 %69, i8* %74, align 1, !dbg !884, !tbaa !662
  br label %85, !dbg !894

; <label>:80:                                     ; preds = %71
  %81 = zext i8 %69 to i32, !dbg !895
  %82 = tail call i32 @__overflow(%struct._IO_FILE* %72, i32 %81) #9, !dbg !884
  %83 = icmp slt i32 %82, 0, !dbg !896
  br i1 %83, label %84, label %85, !dbg !894

; <label>:84:                                     ; preds = %80
  tail call fastcc void @write_error() #15, !dbg !897
  unreachable, !dbg !897

; <label>:85:                                     ; preds = %80, %78, %68
  %86 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !898
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !750, metadata !594), !dbg !835
  %87 = load i8*, i8** @delim_end, align 8, !dbg !900, !tbaa !601
  %88 = icmp eq i8* %86, %87, !dbg !901
  %89 = load i8*, i8** @delims, align 8, !dbg !902
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !750, metadata !594), !dbg !835
  %90 = select i1 %88, i8* %89, i8* %86, !dbg !903
  br label %48, !dbg !903, !llvm.loop !904

; <label>:91:                                     ; preds = %63
  tail call void @llvm.dbg.value(metadata i8 %99, i64 0, metadata !877, metadata !594) #9, !dbg !906
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !908, !tbaa !601
  %93 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 5, !dbg !908
  %94 = load i8*, i8** %93, align 8, !dbg !908, !tbaa !892
  %95 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 6, !dbg !908
  %96 = load i8*, i8** %95, align 8, !dbg !908, !tbaa !893
  %97 = icmp ult i8* %94, %96, !dbg !908
  br i1 %97, label %98, label %101, !dbg !908, !prof !850

; <label>:98:                                     ; preds = %91
  %99 = trunc i32 %52 to i8, !dbg !910
  %100 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !908
  store i8* %100, i8** %93, align 8, !dbg !908, !tbaa !892
  store i8 %99, i8* %94, align 1, !dbg !908, !tbaa !662
  br label %105, !dbg !911

; <label>:101:                                    ; preds = %91
  %102 = and i32 %52, 255, !dbg !912
  %103 = tail call i32 @__overflow(%struct._IO_FILE* %92, i32 %102) #9, !dbg !908
  %104 = icmp slt i32 %103, 0, !dbg !913
  br i1 %104, label %106, label %105, !dbg !911

; <label>:105:                                    ; preds = %101, %98
  br label %51, !dbg !835, !llvm.loop !904

; <label>:106:                                    ; preds = %101
  tail call fastcc void @write_error() #15, !dbg !914
  unreachable, !dbg !914

; <label>:107:                                    ; preds = %60
  %108 = load i32, i32* %46, align 4, !dbg !915, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !807, metadata !594), !dbg !853
  tail call void @llvm.dbg.value(metadata i8 %116, i64 0, metadata !877, metadata !594) #9, !dbg !916
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !918, !tbaa !601
  %110 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %109, i64 0, i32 5, !dbg !918
  %111 = load i8*, i8** %110, align 8, !dbg !918, !tbaa !892
  %112 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %109, i64 0, i32 6, !dbg !918
  %113 = load i8*, i8** %112, align 8, !dbg !918, !tbaa !893
  %114 = icmp ult i8* %111, %113, !dbg !918
  br i1 %114, label %115, label %118, !dbg !918, !prof !850

; <label>:115:                                    ; preds = %107
  %116 = trunc i32 %52 to i8, !dbg !920
  %117 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !918
  store i8* %117, i8** %110, align 8, !dbg !918, !tbaa !892
  store i8 %116, i8* %111, align 1, !dbg !918, !tbaa !662
  br label %123, !dbg !921

; <label>:118:                                    ; preds = %107
  %119 = and i32 %52, 255, !dbg !922
  %120 = tail call i32 @__overflow(%struct._IO_FILE* %109, i32 %119) #9, !dbg !918
  %121 = icmp slt i32 %120, 0, !dbg !923
  br i1 %121, label %122, label %123, !dbg !921

; <label>:122:                                    ; preds = %118
  tail call fastcc void @write_error() #15, !dbg !924
  unreachable, !dbg !924

; <label>:123:                                    ; preds = %118, %115
  tail call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !807, metadata !594), !dbg !853
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !749, metadata !594), !dbg !851
  %124 = load i1, i1* @line_delim, align 1
  %125 = select i1 %124, i8 0, i8 10
  %126 = zext i8 %125 to i32, !dbg !857
  %127 = icmp eq i32 %52, %126, !dbg !925
  br i1 %127, label %145, label %128, !dbg !859

; <label>:128:                                    ; preds = %40, %123
  %129 = phi i32 [ %44, %40 ], [ %126, %123 ]
  %130 = phi i8 [ %43, %40 ], [ %125, %123 ]
  %131 = phi i32 [ %41, %40 ], [ %108, %123 ]
  %132 = phi i32* [ %38, %40 ], [ %46, %123 ]
  tail call void @llvm.dbg.value(metadata i8 %125, i64 0, metadata !877, metadata !594) #9, !dbg !926
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !928, !tbaa !601
  %134 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %133, i64 0, i32 5, !dbg !928
  %135 = load i8*, i8** %134, align 8, !dbg !928, !tbaa !892
  %136 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %133, i64 0, i32 6, !dbg !928
  %137 = load i8*, i8** %136, align 8, !dbg !928, !tbaa !893
  %138 = icmp ult i8* %135, %137, !dbg !928
  br i1 %138, label %139, label %141, !dbg !928, !prof !850

; <label>:139:                                    ; preds = %128
  %140 = getelementptr inbounds i8, i8* %135, i64 1, !dbg !928
  store i8* %140, i8** %134, align 8, !dbg !928, !tbaa !892
  store i8 %130, i8* %135, align 1, !dbg !928, !tbaa !662
  br label %145, !dbg !930

; <label>:141:                                    ; preds = %128
  %142 = tail call i32 @__overflow(%struct._IO_FILE* %133, i32 %129) #9, !dbg !928
  %143 = icmp slt i32 %142, 0, !dbg !931
  br i1 %143, label %144, label %145, !dbg !930

; <label>:144:                                    ; preds = %141
  tail call fastcc void @write_error() #15, !dbg !932
  unreachable, !dbg !932

; <label>:145:                                    ; preds = %141, %139, %123
  %146 = phi i32 [ %131, %141 ], [ %131, %139 ], [ %108, %123 ]
  %147 = phi i32* [ %132, %141 ], [ %132, %139 ], [ %46, %123 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %24, i64 0, metadata !933, metadata !594), !dbg !936
  %148 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %24, i64 0, i32 0, !dbg !939
  %149 = load i32, i32* %148, align 8, !dbg !939, !tbaa !940
  %150 = and i32 %149, 32, !dbg !939
  %151 = icmp eq i32 %150, 0, !dbg !941
  br i1 %151, label %155, label %152, !dbg !942

; <label>:152:                                    ; preds = %145
  %153 = load i8*, i8** %7, align 8, !dbg !943, !tbaa !601
  %154 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %153) #9, !dbg !943
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %154) #9, !dbg !945
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !747, metadata !594), !dbg !814
  br label %155, !dbg !946

; <label>:155:                                    ; preds = %145, %152
  %156 = phi i8 [ 0, %152 ], [ %8, %145 ]
  tail call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !747, metadata !594), !dbg !814
  br i1 %11, label %157, label %158, !dbg !947

; <label>:157:                                    ; preds = %155
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %24) #9, !dbg !948
  br label %165, !dbg !948

; <label>:158:                                    ; preds = %155
  %159 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %24) #9, !dbg !950
  %160 = icmp eq i32 %159, -1, !dbg !952
  br i1 %160, label %161, label %165, !dbg !953

; <label>:161:                                    ; preds = %158
  %162 = load i32, i32* %147, align 4, !dbg !954, !tbaa !672
  %163 = load i8*, i8** %7, align 8, !dbg !956, !tbaa !601
  %164 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %163) #9, !dbg !956
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %164) #9, !dbg !957
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !747, metadata !594), !dbg !814
  br label %165, !dbg !958

; <label>:165:                                    ; preds = %157, %161, %158, %17
  %166 = phi i8 [ 0, %17 ], [ %156, %157 ], [ 0, %161 ], [ %156, %158 ]
  tail call void @llvm.dbg.value(metadata i8 %166, i64 0, metadata !747, metadata !594), !dbg !814
  %167 = add i64 %6, -1, !dbg !959
  tail call void @llvm.dbg.value(metadata i64 %167, i64 0, metadata !745, metadata !594), !dbg !812
  %168 = getelementptr inbounds i8*, i8** %7, i64 1, !dbg !960
  tail call void @llvm.dbg.value(metadata i8** %168, i64 0, metadata !746, metadata !594), !dbg !813
  tail call void @llvm.dbg.value(metadata i64 %167, i64 0, metadata !745, metadata !594), !dbg !812
  tail call void @llvm.dbg.value(metadata i8** %168, i64 0, metadata !746, metadata !594), !dbg !813
  tail call void @llvm.dbg.value(metadata i8 %166, i64 0, metadata !747, metadata !594), !dbg !814
  %169 = icmp eq i64 %167, 0, !dbg !815
  br i1 %169, label %170, label %5, !dbg !815, !llvm.loop !961

; <label>:170:                                    ; preds = %165, %2
  %171 = phi i8 [ 1, %2 ], [ %166, %165 ]
  %172 = and i8 %171, 1, !dbg !963
  %173 = icmp ne i8 %172, 0, !dbg !963
  ret i1 %173, !dbg !964
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @paste_parallel(i64, i8** nocapture readonly) unnamed_addr #6 !dbg !965 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !967, metadata !594), !dbg !991
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !968, metadata !594), !dbg !992
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !969, metadata !594), !dbg !993
  %3 = add i64 %0, 2, !dbg !994
  %4 = tail call noalias i8* @xmalloc(i64 %3) #9, !dbg !995
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !970, metadata !594), !dbg !996
  %5 = add i64 %0, 1, !dbg !997
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !998, metadata !594) #9, !dbg !1004
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !1003, metadata !594) #9, !dbg !1006
  %6 = icmp ugt i64 %5, 1152921504606846975, !dbg !1007
  br i1 %6, label %7, label %8, !dbg !1009

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !1010
  unreachable, !dbg !1010

; <label>:8:                                      ; preds = %2
  %9 = shl i64 %5, 3, !dbg !1011
  %10 = tail call noalias i8* @xmalloc(i64 %9) #9, !dbg !1012
  %11 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !1013
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** %11, i64 0, metadata !971, metadata !594), !dbg !1014
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !974, metadata !594), !dbg !1015
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !973, metadata !594), !dbg !1016
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !974, metadata !594), !dbg !1015
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !973, metadata !594), !dbg !1016
  %12 = icmp eq i64 %0, 0, !dbg !1017
  br i1 %12, label %283, label %13, !dbg !1020

; <label>:13:                                     ; preds = %8
  br label %14, !dbg !1021

; <label>:14:                                     ; preds = %13, %38
  %15 = phi i8 [ %39, %38 ], [ 0, %13 ]
  %16 = phi i64 [ %40, %38 ], [ 0, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !973, metadata !594), !dbg !1016
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !974, metadata !594), !dbg !1015
  %17 = getelementptr inbounds i8*, i8** %1, i64 %16, !dbg !1021
  %18 = load i8*, i8** %17, align 8, !dbg !1021, !tbaa !601
  %19 = tail call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #14, !dbg !1021
  %20 = icmp eq i32 %19, 0, !dbg !1021
  br i1 %20, label %21, label %25, !dbg !1024

; <label>:21:                                     ; preds = %14
  store i1 true, i1* @have_read_stdin, align 1
  %22 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8, !dbg !1025, !tbaa !601
  %23 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %16, !dbg !1027
  %24 = bitcast %struct._IO_FILE** %23 to i64*, !dbg !1028
  store i64 %22, i64* %24, align 8, !dbg !1028, !tbaa !601
  br label %38, !dbg !1029

; <label>:25:                                     ; preds = %14
  %26 = tail call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !1030
  %27 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %16, !dbg !1032
  store %struct._IO_FILE* %26, %struct._IO_FILE** %27, align 8, !dbg !1033, !tbaa !601
  %28 = icmp eq %struct._IO_FILE* %26, null, !dbg !1034
  br i1 %28, label %29, label %34, !dbg !1036

; <label>:29:                                     ; preds = %25
  %30 = tail call i32* @__errno_location() #17, !dbg !1037
  %31 = load i32, i32* %30, align 4, !dbg !1037, !tbaa !672
  %32 = load i8*, i8** %17, align 8, !dbg !1037, !tbaa !601
  %33 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #9, !dbg !1037
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %33) #9, !dbg !1037
  unreachable, !dbg !1037

; <label>:34:                                     ; preds = %25
  %35 = tail call i32 @fileno(%struct._IO_FILE* nonnull %26) #9, !dbg !1038
  %36 = icmp eq i32 %35, 0, !dbg !1040
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !974, metadata !594), !dbg !1015
  %37 = select i1 %36, i8 1, i8 %15, !dbg !1041
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !974, metadata !594), !dbg !1015
  tail call void @fadvise(%struct._IO_FILE* nonnull %26, i32 2) #9, !dbg !1042
  br label %38

; <label>:38:                                     ; preds = %21, %34
  %39 = phi i8 [ %15, %21 ], [ %37, %34 ]
  tail call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !974, metadata !594), !dbg !1015
  %40 = add nuw i64 %16, 1, !dbg !1043
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !973, metadata !594), !dbg !1016
  tail call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !974, metadata !594), !dbg !1015
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !973, metadata !594), !dbg !1016
  %41 = icmp ult i64 %40, %0, !dbg !1017
  br i1 %41, label %14, label %42, !dbg !1020, !llvm.loop !1044

; <label>:42:                                     ; preds = %38
  %43 = and i8 %39, 1, !dbg !1046
  %44 = icmp eq i8 %43, 0, !dbg !1046
  br i1 %44, label %49, label %45, !dbg !1048

; <label>:45:                                     ; preds = %42
  %46 = load i1, i1* @have_read_stdin, align 1
  br i1 %46, label %47, label %49, !dbg !1049

; <label>:47:                                     ; preds = %45
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 5) #9, !dbg !1050
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48) #9, !dbg !1050
  unreachable, !dbg !1050

; <label>:49:                                     ; preds = %42, %45
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !969, metadata !594), !dbg !993
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !984, metadata !594), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !980, metadata !594), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !973, metadata !594), !dbg !1016
  %50 = icmp ne i64 %0, 0
  br label %51, !dbg !1053

; <label>:51:                                     ; preds = %279, %49
  %52 = phi i8 [ %281, %279 ], [ 1, %49 ]
  %53 = phi i64 [ %280, %279 ], [ %40, %49 ]
  %54 = icmp ne i64 %53, 0
  %55 = and i1 %54, %50
  br label %56, !dbg !1054

; <label>:56:                                     ; preds = %56, %51
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !975, metadata !594), !dbg !1055
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !973, metadata !594), !dbg !1016
  tail call void @llvm.dbg.value(metadata i8 %52, i64 0, metadata !969, metadata !594), !dbg !993
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !977, metadata !594), !dbg !1056
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !978, metadata !594), !dbg !1057
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !979, metadata !594), !dbg !1058
  tail call void @llvm.dbg.value(metadata i8 %52, i64 0, metadata !969, metadata !594), !dbg !993
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !979, metadata !594), !dbg !1058
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !978, metadata !594), !dbg !1057
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !977, metadata !594), !dbg !1056
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !975, metadata !594), !dbg !1055
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !973, metadata !594), !dbg !1016
  tail call void @llvm.dbg.value(metadata i8 %281, i64 0, metadata !969, metadata !594), !dbg !993
  tail call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !973, metadata !594), !dbg !1016
  br i1 %55, label %57, label %56, !dbg !1059

; <label>:57:                                     ; preds = %56
  %58 = load i8*, i8** @delims, align 8, !dbg !1060, !tbaa !601
  br label %59, !dbg !1059

; <label>:59:                                     ; preds = %57, %269
  %60 = phi i8 [ %52, %57 ], [ %275, %269 ]
  %61 = phi i64 [ 0, %57 ], [ %270, %269 ]
  %62 = phi i64 [ 0, %57 ], [ %274, %269 ]
  %63 = phi i8* [ %58, %57 ], [ %273, %269 ]
  %64 = phi i8 [ 0, %57 ], [ %272, %269 ]
  %65 = phi i64 [ %53, %57 ], [ %271, %269 ]
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !594), !dbg !1061
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !973, metadata !594), !dbg !1016
  tail call void @llvm.dbg.value(metadata i8 %64, i64 0, metadata !975, metadata !594), !dbg !1055
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !977, metadata !594), !dbg !1056
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !978, metadata !594), !dbg !1057
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !979, metadata !594), !dbg !1058
  tail call void @llvm.dbg.value(metadata i8 %60, i64 0, metadata !969, metadata !594), !dbg !993
  %66 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %61, !dbg !1062
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8, !dbg !1062, !tbaa !601
  %68 = icmp eq %struct._IO_FILE* %67, null, !dbg !1062
  br i1 %68, label %158, label %69, !dbg !1064

; <label>:69:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, i64 0, metadata !836, metadata !594) #9, !dbg !1065
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 1, !dbg !1068
  %71 = load i8*, i8** %70, align 8, !dbg !1068, !tbaa !845
  %72 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 2, !dbg !1068
  %73 = load i8*, i8** %72, align 8, !dbg !1068, !tbaa !849
  %74 = icmp ult i8* %71, %73, !dbg !1068
  br i1 %74, label %77, label %75, !dbg !1068, !prof !850

; <label>:75:                                     ; preds = %69
  %76 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %67) #9, !dbg !1068
  br label %81, !dbg !1068

; <label>:77:                                     ; preds = %69
  %78 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1068
  store i8* %78, i8** %70, align 8, !dbg !1068, !tbaa !845
  %79 = load i8, i8* %71, align 1, !dbg !1068, !tbaa !662
  %80 = zext i8 %79 to i32, !dbg !1068
  br label %81, !dbg !1068

; <label>:81:                                     ; preds = %75, %77
  %82 = phi i32 [ %76, %75 ], [ %80, %77 ], !dbg !1068
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !980, metadata !594), !dbg !1052
  %83 = tail call i32* @__errno_location() #17, !dbg !1069
  %84 = load i32, i32* %83, align 4, !dbg !1069, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !984, metadata !594), !dbg !1051
  %85 = icmp ne i32 %82, -1, !dbg !1070
  %86 = icmp ne i64 %62, 0, !dbg !1072
  %87 = and i1 %86, %85, !dbg !1073
  br i1 %87, label %88, label %93, !dbg !1073

; <label>:88:                                     ; preds = %81
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1074, !tbaa !601
  %90 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %62, %struct._IO_FILE* %89) #9, !dbg !1074
  %91 = icmp eq i64 %90, %62, !dbg !1077
  br i1 %91, label %95, label %92, !dbg !1078

; <label>:92:                                     ; preds = %88
  tail call fastcc void @write_error() #16, !dbg !1079
  unreachable, !dbg !1079

; <label>:93:                                     ; preds = %81
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !978, metadata !594), !dbg !1057
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !984, metadata !594), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !980, metadata !594), !dbg !1052
  %94 = icmp eq i32 %82, -1, !dbg !1080
  br i1 %94, label %133, label %95, !dbg !1081

; <label>:95:                                     ; preds = %88, %93
  %96 = phi i64 [ %62, %93 ], [ 0, %88 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !985, metadata !594), !dbg !1061
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !980, metadata !594), !dbg !1052
  %97 = load i1, i1* @line_delim, align 1
  %98 = select i1 %97, i32 0, i32 10, !dbg !1082
  %99 = icmp eq i32 %82, %98, !dbg !1085
  br i1 %99, label %202, label %100, !dbg !1086

; <label>:100:                                    ; preds = %95
  br label %101, !dbg !1087

; <label>:101:                                    ; preds = %100, %128
  %102 = phi i32 [ %129, %128 ], [ %82, %100 ]
  tail call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !877, metadata !594) #9, !dbg !1090
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !980, metadata !594), !dbg !1052
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1087, !tbaa !601
  %104 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %103, i64 0, i32 5, !dbg !1087
  %105 = load i8*, i8** %104, align 8, !dbg !1087, !tbaa !892
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %103, i64 0, i32 6, !dbg !1087
  %107 = load i8*, i8** %106, align 8, !dbg !1087, !tbaa !893
  %108 = icmp ult i8* %105, %107, !dbg !1087
  br i1 %108, label %109, label %112, !dbg !1087, !prof !850

; <label>:109:                                    ; preds = %101
  %110 = trunc i32 %102 to i8, !dbg !1091
  %111 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !1087
  store i8* %111, i8** %104, align 8, !dbg !1087, !tbaa !892
  store i8 %110, i8* %105, align 1, !dbg !1087, !tbaa !662
  br label %117, !dbg !1092

; <label>:112:                                    ; preds = %101
  %113 = and i32 %102, 255, !dbg !1093
  %114 = tail call i32 @__overflow(%struct._IO_FILE* %103, i32 %113) #9, !dbg !1087
  %115 = icmp slt i32 %114, 0, !dbg !1094
  br i1 %115, label %116, label %117, !dbg !1092

; <label>:116:                                    ; preds = %112
  tail call fastcc void @write_error() #15, !dbg !1095
  unreachable, !dbg !1095

; <label>:117:                                    ; preds = %109, %112
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, i64 0, metadata !836, metadata !594) #9, !dbg !1096
  %118 = load i8*, i8** %70, align 8, !dbg !1098, !tbaa !845
  %119 = load i8*, i8** %72, align 8, !dbg !1098, !tbaa !849
  %120 = icmp ult i8* %118, %119, !dbg !1098
  br i1 %120, label %121, label %125, !dbg !1098, !prof !850

; <label>:121:                                    ; preds = %117
  %122 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1098
  store i8* %122, i8** %70, align 8, !dbg !1098, !tbaa !845
  %123 = load i8, i8* %118, align 1, !dbg !1098, !tbaa !662
  %124 = zext i8 %123 to i32, !dbg !1098
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !980, metadata !594), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !980, metadata !594), !dbg !1052
  br label %128, !dbg !1081

; <label>:125:                                    ; preds = %117
  %126 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %67) #9, !dbg !1098
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !980, metadata !594), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !980, metadata !594), !dbg !1052
  %127 = icmp eq i32 %126, -1, !dbg !1080
  br i1 %127, label %202, label %128, !dbg !1081

; <label>:128:                                    ; preds = %125, %121
  %129 = phi i32 [ %126, %125 ], [ %124, %121 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !985, metadata !594), !dbg !1061
  tail call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !980, metadata !594), !dbg !1052
  %130 = load i1, i1* @line_delim, align 1
  %131 = select i1 %130, i32 0, i32 10, !dbg !1082
  %132 = icmp eq i32 %129, %131, !dbg !1085
  br i1 %132, label %202, label %101, !dbg !1086, !llvm.loop !1099

; <label>:133:                                    ; preds = %93
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !984, metadata !594), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !980, metadata !594), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !978, metadata !594), !dbg !1057
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, i64 0, metadata !933, metadata !594), !dbg !1101
  %134 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 0, !dbg !1107
  %135 = load i32, i32* %134, align 8, !dbg !1107, !tbaa !940
  %136 = and i32 %135, 32, !dbg !1107
  %137 = icmp eq i32 %136, 0, !dbg !1108
  br i1 %137, label %142, label %138, !dbg !1109

; <label>:138:                                    ; preds = %133
  %139 = getelementptr inbounds i8*, i8** %1, i64 %61, !dbg !1110
  %140 = load i8*, i8** %139, align 8, !dbg !1110, !tbaa !601
  %141 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #9, !dbg !1110
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %141) #9, !dbg !1112
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !969, metadata !594), !dbg !993
  br label %142, !dbg !1113

; <label>:142:                                    ; preds = %133, %138
  %143 = phi i8 [ 0, %138 ], [ %60, %133 ]
  tail call void @llvm.dbg.value(metadata i8 %143, i64 0, metadata !969, metadata !594), !dbg !993
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1114, !tbaa !601
  %145 = icmp eq %struct._IO_FILE* %67, %144, !dbg !1116
  br i1 %145, label %146, label %147, !dbg !1117

; <label>:146:                                    ; preds = %142
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %67) #9, !dbg !1118
  br label %155, !dbg !1118

; <label>:147:                                    ; preds = %142
  %148 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %67) #9, !dbg !1119
  %149 = icmp eq i32 %148, -1, !dbg !1121
  br i1 %149, label %150, label %155, !dbg !1122

; <label>:150:                                    ; preds = %147
  %151 = load i32, i32* %83, align 4, !dbg !1123, !tbaa !672
  %152 = getelementptr inbounds i8*, i8** %1, i64 %61, !dbg !1125
  %153 = load i8*, i8** %152, align 8, !dbg !1125, !tbaa !601
  %154 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %153) #9, !dbg !1125
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %154) #9, !dbg !1126
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !969, metadata !594), !dbg !993
  br label %155, !dbg !1127

; <label>:155:                                    ; preds = %147, %150, %146
  %156 = phi i8 [ %143, %146 ], [ 0, %150 ], [ %143, %147 ]
  tail call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !969, metadata !594), !dbg !993
  store %struct._IO_FILE* null, %struct._IO_FILE** %66, align 8, !dbg !1128, !tbaa !601
  %157 = add i64 %65, -1, !dbg !1129
  tail call void @llvm.dbg.value(metadata i64 %157, i64 0, metadata !973, metadata !594), !dbg !1016
  br label %158, !dbg !1130

; <label>:158:                                    ; preds = %59, %155
  %159 = phi i64 [ %157, %155 ], [ %65, %59 ]
  %160 = phi i8 [ %156, %155 ], [ %60, %59 ]
  tail call void @llvm.dbg.value(metadata i8 %160, i64 0, metadata !969, metadata !594), !dbg !993
  tail call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !973, metadata !594), !dbg !1016
  %161 = add nuw i64 %61, 1, !dbg !1131
  %162 = icmp eq i64 %161, %0, !dbg !1133
  br i1 %162, label %163, label %189, !dbg !1134

; <label>:163:                                    ; preds = %158
  %164 = and i8 %64, 1, !dbg !1135
  %165 = icmp eq i8 %164, 0, !dbg !1135
  br i1 %165, label %279, label %166, !dbg !1138

; <label>:166:                                    ; preds = %163
  %167 = icmp eq i64 %62, 0, !dbg !1139
  br i1 %167, label %173, label %168, !dbg !1142

; <label>:168:                                    ; preds = %166
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1143, !tbaa !601
  %170 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %62, %struct._IO_FILE* %169) #9, !dbg !1143
  %171 = icmp eq i64 %170, %62, !dbg !1146
  br i1 %171, label %173, label %172, !dbg !1147

; <label>:172:                                    ; preds = %168
  tail call fastcc void @write_error() #16, !dbg !1148
  unreachable, !dbg !1148

; <label>:173:                                    ; preds = %168, %166
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !978, metadata !594), !dbg !1057
  %174 = load i1, i1* @line_delim, align 1
  %175 = select i1 %174, i8 0, i8 10
  tail call void @llvm.dbg.value(metadata i8 %175, i64 0, metadata !877, metadata !594) #9, !dbg !1149
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1151, !tbaa !601
  %177 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %176, i64 0, i32 5, !dbg !1151
  %178 = load i8*, i8** %177, align 8, !dbg !1151, !tbaa !892
  %179 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %176, i64 0, i32 6, !dbg !1151
  %180 = load i8*, i8** %179, align 8, !dbg !1151, !tbaa !893
  %181 = icmp ult i8* %178, %180, !dbg !1151
  br i1 %181, label %182, label %184, !dbg !1151, !prof !850

; <label>:182:                                    ; preds = %173
  %183 = getelementptr inbounds i8, i8* %178, i64 1, !dbg !1151
  store i8* %183, i8** %177, align 8, !dbg !1151, !tbaa !892
  store i8 %175, i8* %178, align 1, !dbg !1151, !tbaa !662
  br label %279, !dbg !1153

; <label>:184:                                    ; preds = %173
  %185 = zext i8 %175 to i32, !dbg !1154
  %186 = tail call i32 @__overflow(%struct._IO_FILE* %176, i32 %185) #9, !dbg !1151
  %187 = icmp slt i32 %186, 0, !dbg !1155
  br i1 %187, label %188, label %279, !dbg !1153

; <label>:188:                                    ; preds = %184
  tail call fastcc void @write_error() #15, !dbg !1156
  unreachable, !dbg !1156

; <label>:189:                                    ; preds = %158
  %190 = load i8, i8* %63, align 1, !dbg !1157, !tbaa !662
  %191 = icmp eq i8 %190, 0, !dbg !1160
  br i1 %191, label %195, label %192, !dbg !1161

; <label>:192:                                    ; preds = %189
  %193 = add i64 %62, 1, !dbg !1162
  tail call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !978, metadata !594), !dbg !1057
  %194 = getelementptr inbounds i8, i8* %4, i64 %62, !dbg !1163
  store i8 %190, i8* %194, align 1, !dbg !1164, !tbaa !662
  br label %195, !dbg !1163

; <label>:195:                                    ; preds = %189, %192
  %196 = phi i64 [ %193, %192 ], [ %62, %189 ]
  tail call void @llvm.dbg.value(metadata i64 %196, i64 0, metadata !978, metadata !594), !dbg !1057
  %197 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !1165
  tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !977, metadata !594), !dbg !1056
  %198 = load i8*, i8** @delim_end, align 8, !dbg !1167, !tbaa !601
  %199 = icmp eq i8* %197, %198, !dbg !1168
  %200 = load i8*, i8** @delims, align 8, !dbg !1169
  tail call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !977, metadata !594), !dbg !1056
  %201 = select i1 %199, i8* %200, i8* %197, !dbg !1170
  br label %269, !dbg !1170

; <label>:202:                                    ; preds = %125, %128, %95
  %203 = phi i32 [ %82, %95 ], [ -1, %125 ], [ %129, %128 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !975, metadata !594), !dbg !1055
  %204 = add nuw i64 %61, 1, !dbg !1171
  %205 = icmp eq i64 %204, %0, !dbg !1172
  br i1 %205, label %250, label %206, !dbg !1173

; <label>:206:                                    ; preds = %202
  %207 = load i1, i1* @line_delim, align 1
  %208 = select i1 %207, i32 0, i32 10, !dbg !1174
  %209 = icmp ne i32 %203, %208, !dbg !1177
  %210 = icmp ne i32 %203, -1, !dbg !1178
  %211 = and i1 %210, %209, !dbg !1179
  br i1 %211, label %212, label %227, !dbg !1179

; <label>:212:                                    ; preds = %206
  tail call void @llvm.dbg.value(metadata i8 %220, i64 0, metadata !877, metadata !594) #9, !dbg !1180
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1182, !tbaa !601
  %214 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %213, i64 0, i32 5, !dbg !1182
  %215 = load i8*, i8** %214, align 8, !dbg !1182, !tbaa !892
  %216 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %213, i64 0, i32 6, !dbg !1182
  %217 = load i8*, i8** %216, align 8, !dbg !1182, !tbaa !893
  %218 = icmp ult i8* %215, %217, !dbg !1182
  br i1 %218, label %219, label %222, !dbg !1182, !prof !850

; <label>:219:                                    ; preds = %212
  %220 = trunc i32 %203 to i8, !dbg !1184
  %221 = getelementptr inbounds i8, i8* %215, i64 1, !dbg !1182
  store i8* %221, i8** %214, align 8, !dbg !1182, !tbaa !892
  store i8 %220, i8* %215, align 1, !dbg !1182, !tbaa !662
  br label %227, !dbg !1185

; <label>:222:                                    ; preds = %212
  %223 = and i32 %203, 255, !dbg !1186
  %224 = tail call i32 @__overflow(%struct._IO_FILE* %213, i32 %223) #9, !dbg !1182
  %225 = icmp slt i32 %224, 0, !dbg !1187
  br i1 %225, label %226, label %227, !dbg !1185

; <label>:226:                                    ; preds = %222
  tail call fastcc void @write_error() #15, !dbg !1188
  unreachable, !dbg !1188

; <label>:227:                                    ; preds = %222, %219, %206
  %228 = load i8, i8* %63, align 1, !dbg !1189, !tbaa !662
  %229 = icmp eq i8 %228, 0, !dbg !1191
  br i1 %229, label %244, label %230, !dbg !1192

; <label>:230:                                    ; preds = %227
  tail call void @llvm.dbg.value(metadata i8 %228, i64 0, metadata !877, metadata !594) #9, !dbg !1193
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1195, !tbaa !601
  %232 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %231, i64 0, i32 5, !dbg !1195
  %233 = load i8*, i8** %232, align 8, !dbg !1195, !tbaa !892
  %234 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %231, i64 0, i32 6, !dbg !1195
  %235 = load i8*, i8** %234, align 8, !dbg !1195, !tbaa !893
  %236 = icmp ult i8* %233, %235, !dbg !1195
  br i1 %236, label %237, label %239, !dbg !1195, !prof !850

; <label>:237:                                    ; preds = %230
  %238 = getelementptr inbounds i8, i8* %233, i64 1, !dbg !1195
  store i8* %238, i8** %232, align 8, !dbg !1195, !tbaa !892
  store i8 %228, i8* %233, align 1, !dbg !1195, !tbaa !662
  br label %244, !dbg !1197

; <label>:239:                                    ; preds = %230
  %240 = zext i8 %228 to i32, !dbg !1198
  %241 = tail call i32 @__overflow(%struct._IO_FILE* %231, i32 %240) #9, !dbg !1195
  %242 = icmp slt i32 %241, 0, !dbg !1199
  br i1 %242, label %243, label %244, !dbg !1197

; <label>:243:                                    ; preds = %239
  tail call fastcc void @write_error() #15, !dbg !1200
  unreachable, !dbg !1200

; <label>:244:                                    ; preds = %239, %237, %227
  %245 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !1201
  tail call void @llvm.dbg.value(metadata i8* %245, i64 0, metadata !977, metadata !594), !dbg !1056
  %246 = load i8*, i8** @delim_end, align 8, !dbg !1203, !tbaa !601
  %247 = icmp eq i8* %245, %246, !dbg !1204
  %248 = load i8*, i8** @delims, align 8, !dbg !1205
  tail call void @llvm.dbg.value(metadata i8* %248, i64 0, metadata !977, metadata !594), !dbg !1056
  %249 = select i1 %247, i8* %248, i8* %245, !dbg !1206
  br label %269, !dbg !1206

; <label>:250:                                    ; preds = %202
  %251 = icmp eq i32 %203, -1, !dbg !1207
  %252 = load i1, i1* @line_delim, align 1
  %253 = select i1 %252, i32 0, i32 10, !dbg !1208
  %254 = select i1 %251, i32 %253, i32 %203, !dbg !1209
  tail call void @llvm.dbg.value(metadata i8 %262, i64 0, metadata !986, metadata !594), !dbg !1210
  tail call void @llvm.dbg.value(metadata i8 %262, i64 0, metadata !877, metadata !594) #9, !dbg !1211
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1213, !tbaa !601
  %256 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %255, i64 0, i32 5, !dbg !1213
  %257 = load i8*, i8** %256, align 8, !dbg !1213, !tbaa !892
  %258 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %255, i64 0, i32 6, !dbg !1213
  %259 = load i8*, i8** %258, align 8, !dbg !1213, !tbaa !893
  %260 = icmp ult i8* %257, %259, !dbg !1213
  br i1 %260, label %261, label %264, !dbg !1213, !prof !850

; <label>:261:                                    ; preds = %250
  %262 = trunc i32 %254 to i8, !dbg !1215
  %263 = getelementptr inbounds i8, i8* %257, i64 1, !dbg !1213
  store i8* %263, i8** %256, align 8, !dbg !1213, !tbaa !892
  store i8 %262, i8* %257, align 1, !dbg !1213, !tbaa !662
  br label %269, !dbg !1216

; <label>:264:                                    ; preds = %250
  %265 = and i32 %254, 255, !dbg !1217
  %266 = tail call i32 @__overflow(%struct._IO_FILE* %255, i32 %265) #9, !dbg !1213
  %267 = icmp slt i32 %266, 0, !dbg !1218
  br i1 %267, label %268, label %269, !dbg !1216

; <label>:268:                                    ; preds = %264
  tail call fastcc void @write_error() #15, !dbg !1219
  unreachable, !dbg !1219

; <label>:269:                                    ; preds = %264, %261, %244, %195
  %270 = phi i64 [ %204, %264 ], [ %204, %261 ], [ %204, %244 ], [ %161, %195 ], !dbg !1220
  %271 = phi i64 [ %65, %264 ], [ %65, %261 ], [ %65, %244 ], [ %159, %195 ]
  %272 = phi i8 [ 1, %264 ], [ 1, %261 ], [ 1, %244 ], [ %64, %195 ]
  %273 = phi i8* [ %63, %264 ], [ %63, %261 ], [ %249, %244 ], [ %201, %195 ]
  %274 = phi i64 [ %96, %264 ], [ %96, %261 ], [ %96, %244 ], [ %196, %195 ]
  %275 = phi i8 [ %60, %264 ], [ %60, %261 ], [ %60, %244 ], [ %160, %195 ]
  tail call void @llvm.dbg.value(metadata i8 %275, i64 0, metadata !969, metadata !594), !dbg !993
  tail call void @llvm.dbg.value(metadata i64 %274, i64 0, metadata !978, metadata !594), !dbg !1057
  tail call void @llvm.dbg.value(metadata i8* %273, i64 0, metadata !977, metadata !594), !dbg !1056
  tail call void @llvm.dbg.value(metadata i8 %272, i64 0, metadata !975, metadata !594), !dbg !1055
  tail call void @llvm.dbg.value(metadata i64 %271, i64 0, metadata !973, metadata !594), !dbg !1016
  tail call void @llvm.dbg.value(metadata i64 %270, i64 0, metadata !979, metadata !594), !dbg !1058
  tail call void @llvm.dbg.value(metadata i8 %275, i64 0, metadata !969, metadata !594), !dbg !993
  tail call void @llvm.dbg.value(metadata i64 %270, i64 0, metadata !979, metadata !594), !dbg !1058
  tail call void @llvm.dbg.value(metadata i64 %274, i64 0, metadata !978, metadata !594), !dbg !1057
  tail call void @llvm.dbg.value(metadata i8* %273, i64 0, metadata !977, metadata !594), !dbg !1056
  tail call void @llvm.dbg.value(metadata i8 %272, i64 0, metadata !975, metadata !594), !dbg !1055
  tail call void @llvm.dbg.value(metadata i64 %271, i64 0, metadata !973, metadata !594), !dbg !1016
  %276 = icmp ult i64 %270, %0, !dbg !1221
  %277 = icmp ne i64 %271, 0, !dbg !1054
  %278 = and i1 %277, %276, !dbg !1054
  br i1 %278, label %59, label %279, !dbg !1059, !llvm.loop !1222

; <label>:279:                                    ; preds = %269, %163, %182, %184
  %280 = phi i64 [ %159, %184 ], [ %159, %182 ], [ %159, %163 ], [ %271, %269 ]
  %281 = phi i8 [ %160, %184 ], [ %160, %182 ], [ %160, %163 ], [ %275, %269 ]
  tail call void @llvm.dbg.value(metadata i8 %281, i64 0, metadata !969, metadata !594), !dbg !993
  tail call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !973, metadata !594), !dbg !1016
  %282 = icmp eq i64 %280, 0, !dbg !1053
  br i1 %282, label %283, label %51, !dbg !1053, !llvm.loop !1224

; <label>:283:                                    ; preds = %279, %8
  %284 = phi i8 [ 1, %8 ], [ %281, %279 ]
  tail call void @free(i8* %10) #9, !dbg !1226
  tail call void @free(i8* %4) #9, !dbg !1227
  %285 = and i8 %284, 1, !dbg !1228
  %286 = icmp ne i8 %285, 0, !dbg !1228
  ret i1 %286, !dbg !1229
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @write_error() unnamed_addr #0 !dbg !1230 {
  %1 = tail call i32* @__errno_location() #17, !dbg !1231
  %2 = load i32, i32* %1, align 4, !dbg !1231, !tbaa !672
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #9, !dbg !1231
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %2, i8* %3) #9, !dbg !1231
  unreachable, !dbg !1231
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1232 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1234, metadata !594), !dbg !1235
  store i8* %0, i8** @file_name, align 8, !dbg !1236, !tbaa !601
  ret void, !dbg !1237
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1238 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1242, metadata !594), !dbg !1243
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1244, !tbaa !1245
  ret void, !dbg !1247
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1248 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1253, !tbaa !601
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !1254
  %3 = icmp eq i32 %2, 0, !dbg !1255
  br i1 %3, label %21, label %4, !dbg !1256

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1257, !tbaa !1245, !range !1258
  %6 = icmp eq i8 %5, 0, !dbg !1257
  %7 = tail call i32* @__errno_location() #17, !dbg !1259
  br i1 %6, label %11, label %8, !dbg !1261

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1262, !tbaa !672
  %10 = icmp eq i32 %9, 32, !dbg !1263
  br i1 %10, label %21, label %11, !dbg !1264

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #9, !dbg !1265
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1250, metadata !594), !dbg !1266
  %13 = load i8*, i8** @file_name, align 8, !dbg !1267, !tbaa !601
  %14 = icmp eq i8* %13, null, !dbg !1267
  %15 = load i32, i32* %7, align 4, !tbaa !672
  br i1 %14, label %18, label %16, !dbg !1268

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !1269
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !1270
  br label %19, !dbg !1270

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #9, !dbg !1271
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1272, !tbaa !672
  tail call void @_exit(i32 %20) #15, !dbg !1273
  unreachable, !dbg !1273

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1274, !tbaa !601
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !1276
  %24 = icmp eq i32 %23, 0, !dbg !1277
  br i1 %24, label %27, label %25, !dbg !1278

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1279, !tbaa !672
  tail call void @_exit(i32 %26) #15, !dbg !1280
  unreachable, !dbg !1280

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1281
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1282 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1290, metadata !594), !dbg !1296
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1291, metadata !594), !dbg !1297
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1292, metadata !594), !dbg !1298
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1293, metadata !594), !dbg !1299
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #9, !dbg !1300
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1294, metadata !594), !dbg !1300
  ret void, !dbg !1301
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1302 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1346, metadata !594), !dbg !1348
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1347, metadata !594), !dbg !1349
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1350
  br i1 %3, label %7, label %4, !dbg !1352

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !1353
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1290, metadata !594) #9, !dbg !1354
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1291, metadata !594) #9, !dbg !1356
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1292, metadata !594) #9, !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1293, metadata !594) #9, !dbg !1358
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #9, !dbg !1359
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1294, metadata !594) #9, !dbg !1359
  br label %7, !dbg !1360

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1361
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1362 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1364, metadata !594), !dbg !1367
  %2 = icmp eq i8* %0, null, !dbg !1368
  br i1 %2, label %3, label %6, !dbg !1370

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1371, !tbaa !601
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1373
  tail call void @abort() #15, !dbg !1374
  unreachable, !dbg !1374

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1375
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1365, metadata !594), !dbg !1376
  %8 = icmp eq i8* %7, null, !dbg !1377
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1378
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1379
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1366, metadata !594), !dbg !1380
  %11 = ptrtoint i8* %10 to i64, !dbg !1381
  %12 = ptrtoint i8* %0 to i64, !dbg !1381
  %13 = sub i64 %11, %12, !dbg !1381
  %14 = icmp sgt i64 %13, 6, !dbg !1383
  br i1 %14, label %15, label %24, !dbg !1384

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1385
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #14, !dbg !1386
  %18 = icmp eq i32 %17, 0, !dbg !1387
  br i1 %18, label %19, label %24, !dbg !1388

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1364, metadata !594), !dbg !1367
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #14, !dbg !1389
  %21 = icmp eq i32 %20, 0, !dbg !1392
  br i1 %21, label %22, label %24, !dbg !1393

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1394
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1364, metadata !594), !dbg !1367
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1396, !tbaa !601
  br label %24, !dbg !1397

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1364, metadata !594), !dbg !1367
  store i8* %25, i8** @program_name, align 8, !dbg !1398, !tbaa !601
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1399, !tbaa !601
  ret void, !dbg !1400
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1401 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1406, metadata !594), !dbg !1409
  %2 = tail call i32* @__errno_location() #17, !dbg !1410
  %3 = load i32, i32* %2, align 4, !dbg !1410, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1407, metadata !594), !dbg !1411
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1412
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1412
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1412
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !1413
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1413
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1408, metadata !594), !dbg !1414
  store i32 %3, i32* %2, align 4, !dbg !1415, !tbaa !672
  ret %struct.quoting_options* %8, !dbg !1416
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1417 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1423, metadata !594), !dbg !1424
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1425
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1425
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1426
  %5 = load i32, i32* %4, align 8, !dbg !1426, !tbaa !1427
  ret i32 %5, !dbg !1429
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1430 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1434, metadata !594), !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1435, metadata !594), !dbg !1437
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1438
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1438
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1439
  store i32 %1, i32* %5, align 8, !dbg !1440, !tbaa !1427
  ret void, !dbg !1441
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1442 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1446, metadata !594), !dbg !1454
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1447, metadata !594), !dbg !1455
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1448, metadata !594), !dbg !1456
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1449, metadata !594), !dbg !1457
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1458
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1458
  %6 = lshr i8 %1, 5, !dbg !1459
  %7 = zext i8 %6 to i64, !dbg !1459
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1460
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1450, metadata !594), !dbg !1461
  %9 = and i8 %1, 31, !dbg !1462
  %10 = zext i8 %9 to i32, !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1452, metadata !594), !dbg !1464
  %11 = load i32, i32* %8, align 4, !dbg !1465, !tbaa !672
  %12 = lshr i32 %11, %10, !dbg !1466
  %13 = and i32 %12, 1, !dbg !1467
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1453, metadata !594), !dbg !1468
  %14 = and i32 %2, 1, !dbg !1469
  %15 = xor i32 %13, %14, !dbg !1470
  %16 = shl i32 %15, %10, !dbg !1471
  %17 = xor i32 %16, %11, !dbg !1472
  store i32 %17, i32* %8, align 4, !dbg !1472, !tbaa !672
  ret i32 %13, !dbg !1473
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1474 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1478, metadata !594), !dbg !1481
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1479, metadata !594), !dbg !1482
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1483
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1478, metadata !594), !dbg !1481
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1485
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1478, metadata !594), !dbg !1481
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1486
  %6 = load i32, i32* %5, align 4, !dbg !1486, !tbaa !1487
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1480, metadata !594), !dbg !1488
  store i32 %1, i32* %5, align 4, !dbg !1489, !tbaa !1487
  ret i32 %6, !dbg !1490
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1491 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1495, metadata !594), !dbg !1498
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1496, metadata !594), !dbg !1499
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1497, metadata !594), !dbg !1500
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1501
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1495, metadata !594), !dbg !1498
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1503
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1495, metadata !594), !dbg !1498
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1504
  store i32 10, i32* %6, align 8, !dbg !1505, !tbaa !1427
  %7 = icmp ne i8* %1, null, !dbg !1506
  %8 = icmp ne i8* %2, null, !dbg !1508
  %9 = and i1 %7, %8, !dbg !1509
  br i1 %9, label %11, label %10, !dbg !1509

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1510
  unreachable, !dbg !1510

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1511
  store i8* %1, i8** %12, align 8, !dbg !1512, !tbaa !1513
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1514
  store i8* %2, i8** %13, align 8, !dbg !1515, !tbaa !1516
  ret void, !dbg !1517
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1518 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1522, metadata !594), !dbg !1530
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1523, metadata !594), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1524, metadata !594), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1525, metadata !594), !dbg !1533
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1526, metadata !594), !dbg !1534
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1535
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1535
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1527, metadata !594), !dbg !1536
  %8 = tail call i32* @__errno_location() #17, !dbg !1537
  %9 = load i32, i32* %8, align 4, !dbg !1537, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1528, metadata !594), !dbg !1538
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1539
  %11 = load i32, i32* %10, align 8, !dbg !1539, !tbaa !1427
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1540
  %13 = load i32, i32* %12, align 4, !dbg !1540, !tbaa !1487
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1541
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1542
  %16 = load i8*, i8** %15, align 8, !dbg !1542, !tbaa !1513
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1543
  %18 = load i8*, i8** %17, align 8, !dbg !1543, !tbaa !1516
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1544
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1529, metadata !594), !dbg !1545
  store i32 %9, i32* %8, align 4, !dbg !1546, !tbaa !672
  ret i64 %19, !dbg !1547
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1548 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1554, metadata !594), !dbg !1618
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1555, metadata !594), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1556, metadata !594), !dbg !1620
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1557, metadata !594), !dbg !1621
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1558, metadata !594), !dbg !1622
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1559, metadata !594), !dbg !1623
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1560, metadata !594), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1561, metadata !594), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1562, metadata !594), !dbg !1626
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1564, metadata !594), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1565, metadata !594), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1566, metadata !594), !dbg !1629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1567, metadata !594), !dbg !1630
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !594), !dbg !1631
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1632
  %14 = icmp eq i64 %13, 1, !dbg !1633
  %15 = lshr i32 %5, 1, !dbg !1634
  %16 = trunc i32 %15 to i8, !dbg !1634
  %17 = and i8 %16, 1, !dbg !1634
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1570, metadata !594), !dbg !1634
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1571, metadata !594), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1572, metadata !594), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1573, metadata !594), !dbg !1637
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1638

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1573, metadata !594), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1572, metadata !594), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1570, metadata !594), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1557, metadata !594), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1568, metadata !594), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1567, metadata !594), !dbg !1630
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1566, metadata !594), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1565, metadata !594), !dbg !1628
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1562, metadata !594), !dbg !1626
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1561, metadata !594), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1558, metadata !594), !dbg !1622
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
  ], !dbg !1639

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1558, metadata !594), !dbg !1622
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1570, metadata !594), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1570, metadata !594), !dbg !1634
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1558, metadata !594), !dbg !1622
  br label %94, !dbg !1640

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1570, metadata !594), !dbg !1634
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1558, metadata !594), !dbg !1622
  %43 = and i8 %36, 1, !dbg !1642
  %44 = icmp eq i8 %43, 0, !dbg !1642
  br i1 %44, label %45, label %94, !dbg !1640

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1644
  br i1 %46, label %94, label %47, !dbg !1647

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1644, !tbaa !662
  br label %94, !dbg !1644

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %28), !dbg !1648
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1561, metadata !594), !dbg !1625
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %28), !dbg !1652
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1562, metadata !594), !dbg !1626
  br label %51, !dbg !1653

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1562, metadata !594), !dbg !1626
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1561, metadata !594), !dbg !1625
  %54 = and i8 %36, 1, !dbg !1654
  %55 = icmp eq i8 %54, 0, !dbg !1654
  br i1 %55, label %56, label %72, !dbg !1656

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1566, metadata !594), !dbg !1629
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1566, metadata !594), !dbg !1629
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1564, metadata !594), !dbg !1627
  %57 = load i8, i8* %52, align 1, !dbg !1657, !tbaa !662
  %58 = icmp eq i8 %57, 0, !dbg !1660
  br i1 %58, label %72, label %59, !dbg !1660

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1661

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1566, metadata !594), !dbg !1629
  %64 = icmp ult i64 %63, %40, !dbg !1661
  br i1 %64, label %65, label %67, !dbg !1664

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1661
  store i8 %61, i8* %66, align 1, !dbg !1661, !tbaa !662
  br label %67, !dbg !1661

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1564, metadata !594), !dbg !1627
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1566, metadata !594), !dbg !1629
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1566, metadata !594), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1564, metadata !594), !dbg !1627
  %70 = load i8, i8* %69, align 1, !dbg !1657, !tbaa !662
  %71 = icmp eq i8 %70, 0, !dbg !1660
  br i1 %71, label %72, label %60, !dbg !1660, !llvm.loop !1666

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1568, metadata !594), !dbg !1631
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1566, metadata !594), !dbg !1629
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1567, metadata !594), !dbg !1630
  br label %94, !dbg !1669

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1568, metadata !594), !dbg !1631
  br label %76, !dbg !1670

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1568, metadata !594), !dbg !1631
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1570, metadata !594), !dbg !1634
  br label %78, !dbg !1671

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1570, metadata !594), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1568, metadata !594), !dbg !1631
  %81 = and i8 %80, 1, !dbg !1672
  %82 = icmp eq i8 %81, 0, !dbg !1672
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1568, metadata !594), !dbg !1631
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1674
  br label %84, !dbg !1674

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1570, metadata !594), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1568, metadata !594), !dbg !1631
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1558, metadata !594), !dbg !1622
  %87 = and i8 %86, 1, !dbg !1675
  %88 = icmp eq i8 %87, 0, !dbg !1675
  br i1 %88, label %89, label %94, !dbg !1677

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1678
  br i1 %90, label %94, label %91, !dbg !1681

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1678, !tbaa !662
  br label %94, !dbg !1678

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1570, metadata !594), !dbg !1634
  br label %94, !dbg !1682

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1683
  unreachable, !dbg !1683

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1570, metadata !594), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1568, metadata !594), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1567, metadata !594), !dbg !1630
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1566, metadata !594), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1562, metadata !594), !dbg !1626
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1561, metadata !594), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1558, metadata !594), !dbg !1622
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1563, metadata !594), !dbg !1684
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
  br label %122, !dbg !1685

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1573, metadata !594), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1572, metadata !594), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1557, metadata !594), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1565, metadata !594), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1563, metadata !594), !dbg !1684
  %131 = icmp eq i64 %126, -1, !dbg !1686
  br i1 %131, label %134, label %132, !dbg !1687

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1688
  br i1 %133, label %590, label %138, !dbg !1689

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1690
  %136 = load i8, i8* %135, align 1, !dbg !1690, !tbaa !662
  %137 = icmp eq i8 %136, 0, !dbg !1691
  br i1 %137, label %590, label %138, !dbg !1689

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1579, metadata !594), !dbg !1692
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1580, metadata !594), !dbg !1693
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1581, metadata !594), !dbg !1694
  br i1 %108, label %139, label %154, !dbg !1695

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1697
  %141 = and i1 %109, %131, !dbg !1698
  br i1 %141, label %142, label %144, !dbg !1698

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1557, metadata !594), !dbg !1621
  br label %144, !dbg !1700

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1557, metadata !594), !dbg !1621
  %146 = icmp ugt i64 %140, %145, !dbg !1701
  br i1 %146, label %154, label %147, !dbg !1702

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1703
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1704
  %150 = icmp ne i32 %149, 0, !dbg !1705
  %151 = or i1 %150, %111, !dbg !1706
  %152 = xor i1 %150, true, !dbg !1706
  %153 = zext i1 %152 to i8, !dbg !1706
  br i1 %151, label %154, label %635, !dbg !1706

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1579, metadata !594), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1557, metadata !594), !dbg !1621
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1707
  %158 = load i8, i8* %157, align 1, !dbg !1707, !tbaa !662
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1574, metadata !594), !dbg !1708
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
  ], !dbg !1709

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1710

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1711

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1580, metadata !594), !dbg !1693
  %162 = and i8 %127, 1, !dbg !1715
  %163 = icmp eq i8 %162, 0, !dbg !1715
  %164 = and i1 %113, %163, !dbg !1715
  br i1 %164, label %165, label %181, !dbg !1715

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1717
  br i1 %166, label %167, label %169, !dbg !1721

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1717
  store i8 39, i8* %168, align 1, !dbg !1717, !tbaa !662
  br label %169, !dbg !1717

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1564, metadata !594), !dbg !1627
  %171 = icmp ult i64 %170, %130, !dbg !1722
  br i1 %171, label %172, label %174, !dbg !1725

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1722
  store i8 36, i8* %173, align 1, !dbg !1722, !tbaa !662
  br label %174, !dbg !1722

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1564, metadata !594), !dbg !1627
  %176 = icmp ult i64 %175, %130, !dbg !1726
  br i1 %176, label %177, label %179, !dbg !1729

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1726
  store i8 39, i8* %178, align 1, !dbg !1726, !tbaa !662
  br label %179, !dbg !1726

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1571, metadata !594), !dbg !1635
  br label %181, !dbg !1730

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1564, metadata !594), !dbg !1627
  %184 = icmp ult i64 %182, %130, !dbg !1731
  br i1 %184, label %185, label %187, !dbg !1734

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1731
  store i8 92, i8* %186, align 1, !dbg !1731, !tbaa !662
  br label %187, !dbg !1731

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1564, metadata !594), !dbg !1627
  br i1 %105, label %189, label %470, !dbg !1735

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1737
  %191 = icmp ult i64 %190, %155, !dbg !1738
  br i1 %191, label %192, label %470, !dbg !1739

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1740
  %194 = load i8, i8* %193, align 1, !dbg !1740, !tbaa !662
  %195 = add i8 %194, -48, !dbg !1741
  %196 = icmp ult i8 %195, 10, !dbg !1741
  br i1 %196, label %197, label %470, !dbg !1741

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1742
  br i1 %198, label %199, label %201, !dbg !1746

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1742
  store i8 48, i8* %200, align 1, !dbg !1742, !tbaa !662
  br label %201, !dbg !1742

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1564, metadata !594), !dbg !1627
  %203 = icmp ult i64 %202, %130, !dbg !1747
  br i1 %203, label %204, label %206, !dbg !1750

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1747
  store i8 48, i8* %205, align 1, !dbg !1747, !tbaa !662
  br label %206, !dbg !1747

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1564, metadata !594), !dbg !1627
  br label %470, !dbg !1751

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1752

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1753

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1754

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1756

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1758
  %214 = icmp ult i64 %213, %155, !dbg !1759
  br i1 %214, label %215, label %470, !dbg !1760

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1761
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1762
  %218 = load i8, i8* %217, align 1, !dbg !1762, !tbaa !662
  %219 = icmp eq i8 %218, 63, !dbg !1763
  br i1 %219, label %220, label %470, !dbg !1764

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1765
  %222 = load i8, i8* %221, align 1, !dbg !1765, !tbaa !662
  %223 = sext i8 %222 to i32, !dbg !1765
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
  ], !dbg !1766

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1767

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1574, metadata !594), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1563, metadata !594), !dbg !1684
  %226 = icmp ult i64 %124, %130, !dbg !1769
  br i1 %226, label %227, label %229, !dbg !1772

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1769
  store i8 63, i8* %228, align 1, !dbg !1769, !tbaa !662
  br label %229, !dbg !1769

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1564, metadata !594), !dbg !1627
  %231 = icmp ult i64 %230, %130, !dbg !1773
  br i1 %231, label %232, label %234, !dbg !1776

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1773
  store i8 34, i8* %233, align 1, !dbg !1773, !tbaa !662
  br label %234, !dbg !1773

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1564, metadata !594), !dbg !1627
  %236 = icmp ult i64 %235, %130, !dbg !1777
  br i1 %236, label %237, label %239, !dbg !1780

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1777
  store i8 34, i8* %238, align 1, !dbg !1777, !tbaa !662
  br label %239, !dbg !1777

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1564, metadata !594), !dbg !1627
  %241 = icmp ult i64 %240, %130, !dbg !1781
  br i1 %241, label %242, label %244, !dbg !1784

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1781
  store i8 63, i8* %243, align 1, !dbg !1781, !tbaa !662
  br label %244, !dbg !1781

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1564, metadata !594), !dbg !1627
  br label %470, !dbg !1785

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1578, metadata !594), !dbg !1786
  br label %256, !dbg !1787

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1578, metadata !594), !dbg !1786
  br label %256, !dbg !1788

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1578, metadata !594), !dbg !1786
  br label %254, !dbg !1789

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1578, metadata !594), !dbg !1786
  br label %254, !dbg !1790

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1578, metadata !594), !dbg !1786
  br label %256, !dbg !1791

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1578, metadata !594), !dbg !1786
  br i1 %113, label %252, label %253, !dbg !1792

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1793

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1796

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1578, metadata !594), !dbg !1786
  br i1 %117, label %256, label %635, !dbg !1798

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1578, metadata !594), !dbg !1786
  br i1 %104, label %497, label %470, !dbg !1800

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1801
  br i1 %259, label %260, label %265, !dbg !1803

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1804, !tbaa !662
  %262 = icmp ne i8 %261, 0, !dbg !1805
  %263 = icmp ne i64 %123, 0, !dbg !1806
  %264 = or i1 %263, %262, !dbg !1808
  br i1 %264, label %470, label %271, !dbg !1808

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1809
  %267 = icmp ne i64 %123, 0, !dbg !1806
  %268 = or i1 %267, %266, !dbg !1803
  br i1 %268, label %470, label %271, !dbg !1803

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1806
  br i1 %270, label %271, label %470, !dbg !1810

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1581, metadata !594), !dbg !1694
  br label %272, !dbg !1811

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1581, metadata !594), !dbg !1694
  br i1 %117, label %470, label %635, !dbg !1812

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1572, metadata !594), !dbg !1636
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1581, metadata !594), !dbg !1694
  br i1 %113, label %275, label %470, !dbg !1814

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1815

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1818
  %278 = icmp ne i64 %125, 0, !dbg !1820
  %279 = or i1 %278, %277, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1565, metadata !594), !dbg !1628
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1555, metadata !594), !dbg !1619
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1821
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1565, metadata !594), !dbg !1628
  %282 = icmp ult i64 %124, %281, !dbg !1822
  br i1 %282, label %283, label %285, !dbg !1825

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1822
  store i8 39, i8* %284, align 1, !dbg !1822, !tbaa !662
  br label %285, !dbg !1822

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1564, metadata !594), !dbg !1627
  %287 = icmp ult i64 %286, %281, !dbg !1826
  br i1 %287, label %288, label %290, !dbg !1829

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1826
  store i8 92, i8* %289, align 1, !dbg !1826, !tbaa !662
  br label %290, !dbg !1826

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1564, metadata !594), !dbg !1627
  %292 = icmp ult i64 %291, %281, !dbg !1830
  br i1 %292, label %293, label %295, !dbg !1833

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1830
  store i8 39, i8* %294, align 1, !dbg !1830, !tbaa !662
  br label %295, !dbg !1830

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1571, metadata !594), !dbg !1635
  br label %470, !dbg !1834

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1835

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1582, metadata !594), !dbg !1836
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1837
  %300 = load i16*, i16** %299, align 8, !dbg !1837, !tbaa !601
  %301 = zext i8 %158 to i64, !dbg !1837
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1837
  %303 = load i16, i16* %302, align 2, !dbg !1837, !tbaa !1839
  %304 = lshr i16 %303, 14, !dbg !1840
  %305 = trunc i16 %304 to i8, !dbg !1840
  %306 = and i8 %305, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1585, metadata !594), !dbg !1841
  br label %362, !dbg !1842

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1843
  store i64 0, i64* %10, align 8, !dbg !1844
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1582, metadata !594), !dbg !1836
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1585, metadata !594), !dbg !1841
  %308 = icmp eq i64 %155, -1, !dbg !1845
  br i1 %308, label %309, label %311, !dbg !1847

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1557, metadata !594), !dbg !1621
  br label %311, !dbg !1849

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1557, metadata !594), !dbg !1621
  br label %313, !dbg !1850, !llvm.loop !1851

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1585, metadata !594), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1582, metadata !594), !dbg !1836
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1853
  %316 = add i64 %314, %123, !dbg !1854
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1855
  %318 = sub i64 %312, %316, !dbg !1856
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1586, metadata !594), !dbg !1857
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1604, metadata !594), !dbg !1858
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #9, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1607, metadata !594), !dbg !1860
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1861

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1585, metadata !594), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1582, metadata !594), !dbg !1836
  %321 = icmp ugt i64 %312, %316, !dbg !1862
  br i1 %321, label %322, label %347, !dbg !1864

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1865

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1582, metadata !594), !dbg !1836
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1865
  %327 = load i8, i8* %326, align 1, !dbg !1865, !tbaa !662
  %328 = icmp eq i8 %327, 0, !dbg !1864
  br i1 %328, label %347, label %329, !dbg !1866

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1582, metadata !594), !dbg !1836
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1582, metadata !594), !dbg !1836
  %331 = add i64 %330, %123, !dbg !1868
  %332 = icmp ult i64 %331, %312, !dbg !1862
  br i1 %332, label %323, label %347, !dbg !1864, !llvm.loop !1869

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1870
  %335 = and i1 %115, %334, !dbg !1873
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1608, metadata !594), !dbg !1874
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1608, metadata !594), !dbg !1874
  br i1 %335, label %336, label %350, !dbg !1873

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1875

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1608, metadata !594), !dbg !1874
  %339 = add i64 %338, %316, !dbg !1875
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1876
  %341 = load i8, i8* %340, align 1, !dbg !1876, !tbaa !662
  %342 = sext i8 %341 to i32, !dbg !1876
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1877

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1608, metadata !594), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1608, metadata !594), !dbg !1874
  %345 = icmp ult i64 %344, %319, !dbg !1870
  br i1 %345, label %337, label %350, !dbg !1879, !llvm.loop !1880

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1882

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1585, metadata !594), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1582, metadata !594), !dbg !1836
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1882
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1883, !tbaa !672
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1604, metadata !594), !dbg !1858
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !1885
  %353 = icmp eq i32 %352, 0, !dbg !1885
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1585, metadata !594), !dbg !1841
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1886
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1585, metadata !594), !dbg !1841
  %355 = add i64 %319, %314, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1582, metadata !594), !dbg !1836
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1585, metadata !594), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1582, metadata !594), !dbg !1836
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1882
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1586, metadata !594), !dbg !1857
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1888
  %357 = icmp eq i32 %356, 0, !dbg !1889
  br i1 %357, label %313, label %358, !dbg !1890, !llvm.loop !1851

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1891
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1585, metadata !594), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1582, metadata !594), !dbg !1836
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1882
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1891
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1585, metadata !594), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1582, metadata !594), !dbg !1836
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1557, metadata !594), !dbg !1621
  %366 = and i8 %365, 1, !dbg !1892
  %367 = icmp ne i8 %366, 0, !dbg !1892
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1581, metadata !594), !dbg !1694
  %368 = icmp ult i64 %364, 2, !dbg !1893
  %369 = or i1 %367, %112, !dbg !1894
  %370 = and i1 %368, %369, !dbg !1895
  br i1 %370, label %470, label %371, !dbg !1895

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1615, metadata !594), !dbg !1897
  br label %373, !dbg !1898

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1580, metadata !594), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1579, metadata !594), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1574, metadata !594), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1563, metadata !594), !dbg !1684
  br i1 %369, label %426, label %380, !dbg !1899

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1904

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1580, metadata !594), !dbg !1693
  %382 = and i8 %376, 1, !dbg !1907
  %383 = icmp eq i8 %382, 0, !dbg !1907
  %384 = and i1 %113, %383, !dbg !1907
  br i1 %384, label %385, label %401, !dbg !1907

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1909
  br i1 %386, label %387, label %389, !dbg !1913

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1909
  store i8 39, i8* %388, align 1, !dbg !1909, !tbaa !662
  br label %389, !dbg !1909

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1564, metadata !594), !dbg !1627
  %391 = icmp ult i64 %390, %130, !dbg !1914
  br i1 %391, label %392, label %394, !dbg !1917

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1914
  store i8 36, i8* %393, align 1, !dbg !1914, !tbaa !662
  br label %394, !dbg !1914

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1564, metadata !594), !dbg !1627
  %396 = icmp ult i64 %395, %130, !dbg !1918
  br i1 %396, label %397, label %399, !dbg !1921

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1918
  store i8 39, i8* %398, align 1, !dbg !1918, !tbaa !662
  br label %399, !dbg !1918

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1571, metadata !594), !dbg !1635
  br label %401, !dbg !1922

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1564, metadata !594), !dbg !1627
  %404 = icmp ult i64 %402, %130, !dbg !1923
  br i1 %404, label %405, label %407, !dbg !1926

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1923
  store i8 92, i8* %406, align 1, !dbg !1923, !tbaa !662
  br label %407, !dbg !1923

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1564, metadata !594), !dbg !1627
  %409 = icmp ult i64 %408, %130, !dbg !1927
  br i1 %409, label %410, label %414, !dbg !1930

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1927
  %412 = or i8 %411, 48, !dbg !1927
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1927
  store i8 %412, i8* %413, align 1, !dbg !1927, !tbaa !662
  br label %414, !dbg !1927

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1564, metadata !594), !dbg !1627
  %416 = icmp ult i64 %415, %130, !dbg !1931
  br i1 %416, label %417, label %422, !dbg !1934

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1931
  %419 = and i8 %418, 7, !dbg !1931
  %420 = or i8 %419, 48, !dbg !1931
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1931
  store i8 %420, i8* %421, align 1, !dbg !1931, !tbaa !662
  br label %422, !dbg !1931

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1564, metadata !594), !dbg !1627
  %424 = and i8 %377, 7, !dbg !1935
  %425 = or i8 %424, 48, !dbg !1936
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1574, metadata !594), !dbg !1708
  br label %435, !dbg !1937

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1938
  %428 = icmp eq i8 %427, 0, !dbg !1938
  br i1 %428, label %435, label %429, !dbg !1940

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1941
  br i1 %430, label %431, label %433, !dbg !1945

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1941
  store i8 92, i8* %432, align 1, !dbg !1941, !tbaa !662
  br label %433, !dbg !1941

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1579, metadata !594), !dbg !1692
  br label %435, !dbg !1946

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1580, metadata !594), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1579, metadata !594), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1574, metadata !594), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1564, metadata !594), !dbg !1627
  %441 = add i64 %374, 1, !dbg !1947
  %442 = icmp ugt i64 %372, %441, !dbg !1949
  br i1 %442, label %443, label %535, !dbg !1950

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1951
  %445 = icmp ne i8 %444, 0, !dbg !1951
  %446 = and i8 %440, 1, !dbg !1951
  %447 = icmp eq i8 %446, 0, !dbg !1951
  %448 = and i1 %445, %447, !dbg !1951
  br i1 %448, label %449, label %460, !dbg !1951

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1954
  br i1 %450, label %451, label %453, !dbg !1958

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1954
  store i8 39, i8* %452, align 1, !dbg !1954, !tbaa !662
  br label %453, !dbg !1954

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1564, metadata !594), !dbg !1627
  %455 = icmp ult i64 %454, %130, !dbg !1959
  br i1 %455, label %456, label %458, !dbg !1962

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1959
  store i8 39, i8* %457, align 1, !dbg !1959, !tbaa !662
  br label %458, !dbg !1959

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1571, metadata !594), !dbg !1635
  br label %460, !dbg !1963

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1564, metadata !594), !dbg !1627
  %463 = icmp ult i64 %461, %130, !dbg !1964
  br i1 %463, label %464, label %466, !dbg !1967

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1964
  store i8 %438, i8* %465, align 1, !dbg !1964, !tbaa !662
  br label %466, !dbg !1964

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1563, metadata !594), !dbg !1684
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1968
  %469 = load i8, i8* %468, align 1, !dbg !1968, !tbaa !662
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1574, metadata !594), !dbg !1708
  br label %373, !dbg !1969, !llvm.loop !1970

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1581, metadata !594), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1580, metadata !594), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1579, metadata !594), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1574, metadata !594), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1572, metadata !594), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1557, metadata !594), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1565, metadata !594), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1563, metadata !594), !dbg !1684
  br i1 %106, label %482, label %481, !dbg !1973

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1975

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1976

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1977
  %485 = zext i8 %484 to i64, !dbg !1977
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1978
  %487 = load i32, i32* %486, align 4, !dbg !1978, !tbaa !672
  %488 = and i8 %477, 31, !dbg !1979
  %489 = zext i8 %488 to i32, !dbg !1980
  %490 = shl i32 1, %489, !dbg !1981
  %491 = and i32 %487, %490, !dbg !1981
  %492 = icmp eq i32 %491, 0, !dbg !1981
  %493 = icmp eq i8 %156, 0, !dbg !1982
  %494 = and i1 %493, %492, !dbg !1983
  br i1 %494, label %535, label %497, !dbg !1983

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1982
  br i1 %496, label %535, label %497, !dbg !1984

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1581, metadata !594), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1574, metadata !594), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1572, metadata !594), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1557, metadata !594), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1565, metadata !594), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1563, metadata !594), !dbg !1684
  br i1 %111, label %507, label %635, !dbg !1985

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1580, metadata !594), !dbg !1693
  %508 = and i8 %502, 1, !dbg !1987
  %509 = icmp eq i8 %508, 0, !dbg !1987
  %510 = and i1 %113, %509, !dbg !1987
  br i1 %510, label %511, label %527, !dbg !1987

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1989
  br i1 %512, label %513, label %515, !dbg !1993

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1989
  store i8 39, i8* %514, align 1, !dbg !1989, !tbaa !662
  br label %515, !dbg !1989

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1564, metadata !594), !dbg !1627
  %517 = icmp ult i64 %516, %506, !dbg !1994
  br i1 %517, label %518, label %520, !dbg !1997

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1994
  store i8 36, i8* %519, align 1, !dbg !1994, !tbaa !662
  br label %520, !dbg !1994

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1564, metadata !594), !dbg !1627
  %522 = icmp ult i64 %521, %506, !dbg !1998
  br i1 %522, label %523, label %525, !dbg !2001

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1998
  store i8 39, i8* %524, align 1, !dbg !1998, !tbaa !662
  br label %525, !dbg !1998

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1571, metadata !594), !dbg !1635
  br label %527, !dbg !2002

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1564, metadata !594), !dbg !1627
  %530 = icmp ult i64 %528, %506, !dbg !2003
  br i1 %530, label %531, label %533, !dbg !2006

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2003
  store i8 92, i8* %532, align 1, !dbg !2003, !tbaa !662
  br label %533, !dbg !2003

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1581, metadata !594), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1580, metadata !594), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1574, metadata !594), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1572, metadata !594), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1557, metadata !594), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1565, metadata !594), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1563, metadata !594), !dbg !1684
  br label %562, !dbg !2007

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1581, metadata !594), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1580, metadata !594), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1574, metadata !594), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1572, metadata !594), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1557, metadata !594), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1565, metadata !594), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1563, metadata !594), !dbg !1684
  %546 = and i8 %540, 1, !dbg !2007
  %547 = icmp ne i8 %546, 0, !dbg !2007
  %548 = and i8 %543, 1, !dbg !2007
  %549 = icmp eq i8 %548, 0, !dbg !2007
  %550 = and i1 %547, %549, !dbg !2007
  br i1 %550, label %551, label %562, !dbg !2007

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2010
  br i1 %552, label %553, label %555, !dbg !2014

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2010
  store i8 39, i8* %554, align 1, !dbg !2010, !tbaa !662
  br label %555, !dbg !2010

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1564, metadata !594), !dbg !1627
  %557 = icmp ult i64 %556, %545, !dbg !2015
  br i1 %557, label %558, label %560, !dbg !2018

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2015
  store i8 39, i8* %559, align 1, !dbg !2015, !tbaa !662
  br label %560, !dbg !2015

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1571, metadata !594), !dbg !1635
  br label %562, !dbg !2019

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1564, metadata !594), !dbg !1627
  %572 = icmp ult i64 %570, %563, !dbg !2020
  br i1 %572, label %573, label %575, !dbg !2023

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2020
  store i8 %565, i8* %574, align 1, !dbg !2020, !tbaa !662
  br label %575, !dbg !2020

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1564, metadata !594), !dbg !1627
  %577 = and i8 %564, 1, !dbg !2024
  %578 = icmp eq i8 %577, 0, !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1573, metadata !594), !dbg !1637
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2026
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1573, metadata !594), !dbg !1637
  br label %580, !dbg !2027

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1573, metadata !594), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1572, metadata !594), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1571, metadata !594), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1557, metadata !594), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1565, metadata !594), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1563, metadata !594), !dbg !1684
  %589 = add i64 %581, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1563, metadata !594), !dbg !1684
  br label %122, !dbg !2029, !llvm.loop !2030

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2032
  %593 = and i1 %113, %592, !dbg !2034
  %594 = xor i1 %593, true, !dbg !2034
  %595 = or i1 %111, %594, !dbg !2034
  br i1 %595, label %596, label %635, !dbg !2034

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2035
  %598 = xor i1 %597, true, !dbg !2035
  %599 = and i8 %128, 1, !dbg !2037
  %600 = icmp eq i8 %599, 0, !dbg !2037
  %601 = or i1 %600, %598, !dbg !2035
  br i1 %601, label %611, label %602, !dbg !2035

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2038
  %604 = icmp eq i8 %603, 0, !dbg !2038
  br i1 %604, label %607, label %605, !dbg !2041

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2042
  br label %645, !dbg !2043

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2044
  %609 = icmp ne i64 %125, 0, !dbg !2046
  %610 = and i1 %609, %608, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1564, metadata !594), !dbg !1627
  br i1 %610, label %27, label %611, !dbg !2047

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2048
  %613 = and i1 %612, %111, !dbg !2050
  br i1 %613, label %614, label %630, !dbg !2050

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1566, metadata !594), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1564, metadata !594), !dbg !1627
  %615 = load i8, i8* %99, align 1, !dbg !2051, !tbaa !662
  %616 = icmp eq i8 %615, 0, !dbg !2054
  br i1 %616, label %630, label %617, !dbg !2054

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2055

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1564, metadata !594), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1566, metadata !594), !dbg !1629
  %622 = icmp ult i64 %621, %130, !dbg !2055
  br i1 %622, label %623, label %625, !dbg !2058

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2055
  store i8 %619, i8* %624, align 1, !dbg !2055, !tbaa !662
  br label %625, !dbg !2055

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1564, metadata !594), !dbg !1627
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2059
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1566, metadata !594), !dbg !1629
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1566, metadata !594), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1564, metadata !594), !dbg !1627
  %628 = load i8, i8* %627, align 1, !dbg !2051, !tbaa !662
  %629 = icmp eq i8 %628, 0, !dbg !2054
  br i1 %629, label %630, label %618, !dbg !2054, !llvm.loop !2060

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1564, metadata !594), !dbg !1627
  %632 = icmp ult i64 %631, %130, !dbg !2062
  br i1 %632, label %633, label %645, !dbg !2064

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2065
  store i8 0, i8* %634, align 1, !dbg !2066, !tbaa !662
  br label %645, !dbg !2065

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1555, metadata !594), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1557, metadata !594), !dbg !1621
  %639 = icmp ne i32 %636, 2, !dbg !2067
  %640 = icmp eq i8 %103, 0, !dbg !2069
  %641 = or i1 %639, %640, !dbg !2070
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1558, metadata !594), !dbg !1622
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1558, metadata !594), !dbg !1622
  %643 = and i32 %5, -3, !dbg !2071
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2072
  br label %645, !dbg !2073

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2074
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2075 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2079, metadata !594), !dbg !2083
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2080, metadata !594), !dbg !2084
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !2085
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2081, metadata !594), !dbg !2086
  %4 = icmp eq i8* %3, %0, !dbg !2087
  br i1 %4, label %5, label %75, !dbg !2089

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !2090
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2082, metadata !594), !dbg !2091
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2092, metadata !594), !dbg !2108
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2106, metadata !594), !dbg !2111
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2107, metadata !594), !dbg !2112
  %7 = load i8, i8* %6, align 1, !dbg !2113, !tbaa !662
  %8 = sext i8 %7 to i32, !dbg !2113
  %9 = and i32 %8, -33, !dbg !2113
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2113

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2115, metadata !594), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2127, metadata !594), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2128, metadata !594), !dbg !2134
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2135
  %12 = load i8, i8* %11, align 1, !dbg !2135, !tbaa !662
  %13 = sext i8 %12 to i32, !dbg !2135
  %14 = and i32 %13, -33, !dbg !2135
  %15 = icmp eq i32 %14, 84, !dbg !2135
  br i1 %15, label %16, label %72, !dbg !2135

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2137, metadata !594), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2148, metadata !594), !dbg !2154
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2149, metadata !594), !dbg !2155
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2156
  %18 = load i8, i8* %17, align 1, !dbg !2156, !tbaa !662
  %19 = sext i8 %18 to i32, !dbg !2156
  %20 = and i32 %19, -33, !dbg !2156
  %21 = icmp eq i32 %20, 70, !dbg !2156
  br i1 %21, label %22, label %72, !dbg !2156

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2158, metadata !594), !dbg !2170
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2168, metadata !594), !dbg !2174
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2169, metadata !594), !dbg !2175
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2176
  %24 = load i8, i8* %23, align 1, !dbg !2176, !tbaa !662
  %25 = icmp eq i8 %24, 45, !dbg !2176
  br i1 %25, label %26, label %72, !dbg !2178

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2179, metadata !594), !dbg !2190
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2188, metadata !594), !dbg !2194
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2189, metadata !594), !dbg !2195
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2196
  %28 = load i8, i8* %27, align 1, !dbg !2196, !tbaa !662
  %29 = icmp eq i8 %28, 56, !dbg !2196
  br i1 %29, label %30, label %72, !dbg !2198

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2199, metadata !594), !dbg !2209
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2207, metadata !594), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2208, metadata !594), !dbg !2214
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2215
  %32 = load i8, i8* %31, align 1, !dbg !2215, !tbaa !662
  %33 = icmp eq i8 %32, 0, !dbg !2215
  br i1 %33, label %34, label %72, !dbg !2217

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2218, !tbaa !662
  %36 = icmp eq i8 %35, 96, !dbg !2219
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !2218
  br label %75, !dbg !2220

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2115, metadata !594), !dbg !2221
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2127, metadata !594), !dbg !2225
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2128, metadata !594), !dbg !2226
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2227
  %40 = load i8, i8* %39, align 1, !dbg !2227, !tbaa !662
  %41 = sext i8 %40 to i32, !dbg !2227
  %42 = and i32 %41, -33, !dbg !2227
  %43 = icmp eq i32 %42, 66, !dbg !2227
  br i1 %43, label %44, label %72, !dbg !2227

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2137, metadata !594), !dbg !2228
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2148, metadata !594), !dbg !2230
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2149, metadata !594), !dbg !2231
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2232
  %46 = load i8, i8* %45, align 1, !dbg !2232, !tbaa !662
  %47 = icmp eq i8 %46, 49, !dbg !2232
  br i1 %47, label %48, label %72, !dbg !2233

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2158, metadata !594), !dbg !2234
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2168, metadata !594), !dbg !2236
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2169, metadata !594), !dbg !2237
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2238
  %50 = load i8, i8* %49, align 1, !dbg !2238, !tbaa !662
  %51 = icmp eq i8 %50, 56, !dbg !2238
  br i1 %51, label %52, label %72, !dbg !2239

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2179, metadata !594), !dbg !2240
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2188, metadata !594), !dbg !2242
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2189, metadata !594), !dbg !2243
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2244
  %54 = load i8, i8* %53, align 1, !dbg !2244, !tbaa !662
  %55 = icmp eq i8 %54, 48, !dbg !2244
  br i1 %55, label %56, label %72, !dbg !2245

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2199, metadata !594), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2207, metadata !594), !dbg !2248
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2208, metadata !594), !dbg !2249
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2250
  %58 = load i8, i8* %57, align 1, !dbg !2250, !tbaa !662
  %59 = icmp eq i8 %58, 51, !dbg !2250
  br i1 %59, label %60, label %72, !dbg !2251

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2252, metadata !594), !dbg !2261
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2259, metadata !594), !dbg !2265
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2260, metadata !594), !dbg !2266
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2267
  %62 = load i8, i8* %61, align 1, !dbg !2267, !tbaa !662
  %63 = icmp eq i8 %62, 48, !dbg !2267
  br i1 %63, label %64, label %72, !dbg !2269

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2270, metadata !594), !dbg !2278
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2276, metadata !594), !dbg !2282
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2277, metadata !594), !dbg !2283
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2284
  %66 = load i8, i8* %65, align 1, !dbg !2284, !tbaa !662
  %67 = icmp eq i8 %66, 0, !dbg !2284
  br i1 %67, label %68, label %72, !dbg !2286

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2287, !tbaa !662
  %70 = icmp eq i8 %69, 96, !dbg !2288
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !2287
  br label %75, !dbg !2289

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2290
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !2291
  br label %75, !dbg !2292

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2293
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #12

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2294 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2298, metadata !594), !dbg !2301
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2299, metadata !594), !dbg !2302
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2300, metadata !594), !dbg !2303
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2304, metadata !594) #9, !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2309, metadata !594) #9, !dbg !2319
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2310, metadata !594) #9, !dbg !2320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2311, metadata !594) #9, !dbg !2321
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2322
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2322
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2312, metadata !594) #9, !dbg !2323
  %6 = tail call i32* @__errno_location() #17, !dbg !2324
  %7 = load i32, i32* %6, align 4, !dbg !2324, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2313, metadata !594) #9, !dbg !2325
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2326
  %9 = load i32, i32* %8, align 4, !dbg !2326, !tbaa !1487
  %10 = or i32 %9, 1, !dbg !2327
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2314, metadata !594) #9, !dbg !2328
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2329
  %12 = load i32, i32* %11, align 8, !dbg !2329, !tbaa !1427
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2330
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2331
  %15 = load i8*, i8** %14, align 8, !dbg !2331, !tbaa !1513
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2332
  %17 = load i8*, i8** %16, align 8, !dbg !2332, !tbaa !1516
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2333
  %19 = add i64 %18, 1, !dbg !2334
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2315, metadata !594) #9, !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2336, metadata !594) #9, !dbg !2341
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2343
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2316, metadata !594) #9, !dbg !2344
  %21 = load i32, i32* %11, align 8, !dbg !2345, !tbaa !1427
  %22 = load i8*, i8** %14, align 8, !dbg !2346, !tbaa !1513
  %23 = load i8*, i8** %16, align 8, !dbg !2347, !tbaa !1516
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2348
  store i32 %7, i32* %6, align 4, !dbg !2349, !tbaa !672
  ret i8* %20, !dbg !2350
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2305 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2304, metadata !594), !dbg !2351
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2309, metadata !594), !dbg !2352
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2310, metadata !594), !dbg !2353
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2311, metadata !594), !dbg !2354
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2355
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2312, metadata !594), !dbg !2356
  %7 = tail call i32* @__errno_location() #17, !dbg !2357
  %8 = load i32, i32* %7, align 4, !dbg !2357, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2313, metadata !594), !dbg !2358
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2359
  %10 = load i32, i32* %9, align 4, !dbg !2359, !tbaa !1487
  %11 = icmp ne i64* %2, null, !dbg !2360
  %12 = xor i1 %11, true, !dbg !2360
  %13 = zext i1 %12 to i32, !dbg !2360
  %14 = or i32 %10, %13, !dbg !2361
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2314, metadata !594), !dbg !2362
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2363
  %16 = load i32, i32* %15, align 8, !dbg !2363, !tbaa !1427
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2364
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2365
  %19 = load i8*, i8** %18, align 8, !dbg !2365, !tbaa !1513
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2366
  %21 = load i8*, i8** %20, align 8, !dbg !2366, !tbaa !1516
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2367
  %23 = add i64 %22, 1, !dbg !2368
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2315, metadata !594), !dbg !2369
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2336, metadata !594) #9, !dbg !2370
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2316, metadata !594), !dbg !2373
  %25 = load i32, i32* %15, align 8, !dbg !2374, !tbaa !1427
  %26 = load i8*, i8** %18, align 8, !dbg !2375, !tbaa !1513
  %27 = load i8*, i8** %20, align 8, !dbg !2376, !tbaa !1516
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2377
  store i32 %8, i32* %7, align 4, !dbg !2378, !tbaa !672
  br i1 %11, label %29, label %30, !dbg !2379

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2380, !tbaa !2382
  br label %30, !dbg !2383

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2384
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2385 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2389, !tbaa !601
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2387, metadata !594), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2388, metadata !594), !dbg !2391
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2388, metadata !594), !dbg !2391
  %2 = load i32, i32* @nslots, align 4, !dbg !2392, !tbaa !672
  %3 = icmp sgt i32 %2, 1, !dbg !2395
  br i1 %3, label %4, label %13, !dbg !2396

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2397

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2388, metadata !594), !dbg !2391
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2397
  %8 = load i8*, i8** %7, align 8, !dbg !2397, !tbaa !2398
  tail call void @free(i8* %8) #9, !dbg !2400
  %9 = add nuw i64 %6, 1, !dbg !2401
  %10 = load i32, i32* @nslots, align 4, !dbg !2392, !tbaa !672
  %11 = sext i32 %10 to i64, !dbg !2395
  %12 = icmp slt i64 %9, %11, !dbg !2395
  br i1 %12, label %5, label %13, !dbg !2396, !llvm.loop !2402

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2404
  %15 = load i8*, i8** %14, align 8, !dbg !2404, !tbaa !2398
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2406
  br i1 %16, label %18, label %17, !dbg !2407

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !2408
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2410, !tbaa !2411
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2412, !tbaa !2398
  br label %18, !dbg !2413

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2414
  br i1 %19, label %22, label %20, !dbg !2416

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2417
  tail call void @free(i8* %21) #9, !dbg !2419
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2420, !tbaa !601
  br label %22, !dbg !2421

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2422, !tbaa !672
  ret void, !dbg !2423
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2424 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2428, metadata !594), !dbg !2430
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2429, metadata !594), !dbg !2431
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2432
  ret i8* %3, !dbg !2433
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2434 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2438, metadata !594), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2439, metadata !594), !dbg !2453
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2440, metadata !594), !dbg !2454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2441, metadata !594), !dbg !2455
  %5 = tail call i32* @__errno_location() #17, !dbg !2456
  %6 = load i32, i32* %5, align 4, !dbg !2456, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2442, metadata !594), !dbg !2457
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2458, !tbaa !601
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2443, metadata !594), !dbg !2459
  %8 = icmp slt i32 %0, 0, !dbg !2460
  br i1 %8, label %9, label %10, !dbg !2462

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2463
  unreachable, !dbg !2463

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2464, !tbaa !672
  %12 = icmp sgt i32 %11, %0, !dbg !2465
  br i1 %12, label %34, label %13, !dbg !2466

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2467
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2468
  br i1 %15, label %16, label %17, !dbg !2470

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2471
  unreachable, !dbg !2471

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2472
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2472
  %20 = add nsw i32 %0, 1, !dbg !2473
  %21 = sext i32 %20 to i64, !dbg !2474
  %22 = shl nsw i64 %21, 4, !dbg !2475
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2476
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2476
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2443, metadata !594), !dbg !2459
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2477, !tbaa !601
  br i1 %14, label %25, label %26, !dbg !2478

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2479, !tbaa.struct !2481
  br label %26, !dbg !2482

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2483, !tbaa !672
  %28 = sext i32 %27 to i64, !dbg !2484
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2484
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2485
  %31 = sub nsw i32 %20, %27, !dbg !2486
  %32 = sext i32 %31 to i64, !dbg !2487
  %33 = shl nsw i64 %32, 4, !dbg !2488
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2485
  store i32 %20, i32* @nslots, align 4, !dbg !2489, !tbaa !672
  br label %34, !dbg !2490

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2443, metadata !594), !dbg !2459
  %36 = sext i32 %0 to i64, !dbg !2491
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2492
  %38 = load i64, i64* %37, align 8, !dbg !2492, !tbaa !2411
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2447, metadata !594), !dbg !2493
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2494
  %40 = load i8*, i8** %39, align 8, !dbg !2494, !tbaa !2398
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2449, metadata !594), !dbg !2495
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2496
  %42 = load i32, i32* %41, align 4, !dbg !2496, !tbaa !1487
  %43 = or i32 %42, 1, !dbg !2497
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2450, metadata !594), !dbg !2498
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2499
  %45 = load i32, i32* %44, align 8, !dbg !2499, !tbaa !1427
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2500
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2501
  %48 = load i8*, i8** %47, align 8, !dbg !2501, !tbaa !1513
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2502
  %50 = load i8*, i8** %49, align 8, !dbg !2502, !tbaa !1516
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2451, metadata !594), !dbg !2504
  %52 = icmp ugt i64 %38, %51, !dbg !2505
  br i1 %52, label %63, label %53, !dbg !2507

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2447, metadata !594), !dbg !2493
  store i64 %54, i64* %37, align 8, !dbg !2510, !tbaa !2411
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2511
  br i1 %55, label %57, label %56, !dbg !2513

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2514
  br label %57, !dbg !2514

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2336, metadata !594) #9, !dbg !2515
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2517
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2449, metadata !594), !dbg !2495
  store i8* %58, i8** %39, align 8, !dbg !2518, !tbaa !2398
  %59 = load i32, i32* %44, align 8, !dbg !2519, !tbaa !1427
  %60 = load i8*, i8** %47, align 8, !dbg !2520, !tbaa !1513
  %61 = load i8*, i8** %49, align 8, !dbg !2521, !tbaa !1516
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2522
  br label %63, !dbg !2523

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2449, metadata !594), !dbg !2495
  store i32 %6, i32* %5, align 4, !dbg !2524, !tbaa !672
  ret i8* %64, !dbg !2525
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2526 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2530, metadata !594), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2531, metadata !594), !dbg !2534
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2532, metadata !594), !dbg !2535
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2536
  ret i8* %4, !dbg !2537
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2538 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2542, metadata !594), !dbg !2543
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2428, metadata !594) #9, !dbg !2544
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2429, metadata !594) #9, !dbg !2546
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2547
  ret i8* %2, !dbg !2548
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2549 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2553, metadata !594), !dbg !2555
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2554, metadata !594), !dbg !2556
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2530, metadata !594) #9, !dbg !2557
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2531, metadata !594) #9, !dbg !2559
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2532, metadata !594) #9, !dbg !2560
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2561
  ret i8* %3, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2563 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2571, metadata !2577), !dbg !2578
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2567, metadata !594), !dbg !2580
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2568, metadata !594), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2569, metadata !594), !dbg !2582
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2583
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2583
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2570, metadata !594), !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2576, metadata !594) #9, !dbg !2585
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2586
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2571, metadata !594) #9, !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2571, metadata !2587) #9, !dbg !2578
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2578
  %8 = icmp eq i32 %1, 10, !dbg !2588
  br i1 %8, label %9, label %10, !dbg !2590

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2591, !noalias !2592
  unreachable, !dbg !2591

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2571, metadata !2587) #9, !dbg !2578
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2595
  store i32 %1, i32* %11, align 8, !dbg !2595, !alias.scope !2592
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2595
  %13 = bitcast i32* %12 to i8*, !dbg !2595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2596
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2570, metadata !594), !dbg !2584
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2597
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2598
  ret i8* %14, !dbg !2599
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2600 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2571, metadata !2577), !dbg !2609
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2604, metadata !594), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2605, metadata !594), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2606, metadata !594), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2607, metadata !594), !dbg !2614
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2615
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2608, metadata !594), !dbg !2616
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2576, metadata !594) #9, !dbg !2617
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2618
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2618
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2571, metadata !594) #9, !dbg !2609
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2571, metadata !2587) #9, !dbg !2609
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2609
  %9 = icmp eq i32 %1, 10, !dbg !2619
  br i1 %9, label %10, label %11, !dbg !2620

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2621, !noalias !2622
  unreachable, !dbg !2621

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2571, metadata !2587) #9, !dbg !2609
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2625
  store i32 %1, i32* %12, align 8, !dbg !2625, !alias.scope !2622
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2625
  %14 = bitcast i32* %13 to i8*, !dbg !2625
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2625
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2608, metadata !594), !dbg !2616
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2628
  ret i8* %15, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2630 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2571, metadata !2577), !dbg !2636
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2634, metadata !594), !dbg !2639
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2635, metadata !594), !dbg !2640
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2567, metadata !594) #9, !dbg !2641
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2568, metadata !594) #9, !dbg !2642
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2569, metadata !594) #9, !dbg !2643
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2644
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2570, metadata !594) #9, !dbg !2645
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2576, metadata !594) #9, !dbg !2646
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2647
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2647
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2571, metadata !594) #9, !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2571, metadata !2587) #9, !dbg !2636
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2636
  %7 = icmp eq i32 %0, 10, !dbg !2648
  br i1 %7, label %8, label %9, !dbg !2649

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2650, !noalias !2651
  unreachable, !dbg !2650

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2571, metadata !2587) #9, !dbg !2636
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2654
  store i32 %0, i32* %10, align 8, !dbg !2654, !alias.scope !2651
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2654
  %12 = bitcast i32* %11 to i8*, !dbg !2654
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2654
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2570, metadata !594) #9, !dbg !2645
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2657
  ret i8* %13, !dbg !2658
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2659 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2571, metadata !2577), !dbg !2666
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2663, metadata !594), !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2664, metadata !594), !dbg !2670
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2665, metadata !594), !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2604, metadata !594) #9, !dbg !2672
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2605, metadata !594) #9, !dbg !2673
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2606, metadata !594) #9, !dbg !2674
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2607, metadata !594) #9, !dbg !2675
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2608, metadata !594) #9, !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2576, metadata !594) #9, !dbg !2678
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2679
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2679
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2571, metadata !594) #9, !dbg !2666
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2571, metadata !2587) #9, !dbg !2666
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2666
  %8 = icmp eq i32 %0, 10, !dbg !2680
  br i1 %8, label %9, label %10, !dbg !2681

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2682, !noalias !2683
  unreachable, !dbg !2682

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2571, metadata !2587) #9, !dbg !2666
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2686
  store i32 %0, i32* %11, align 8, !dbg !2686, !alias.scope !2683
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2686
  %13 = bitcast i32* %12 to i8*, !dbg !2686
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2686
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2687
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2608, metadata !594) #9, !dbg !2677
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2688
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2689
  ret i8* %14, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2691 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2695, metadata !594), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2696, metadata !594), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2697, metadata !594), !dbg !2701
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2702
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2703, !tbaa.struct !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2698, metadata !594), !dbg !2705
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1446, metadata !594), !dbg !2706
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1447, metadata !594), !dbg !2708
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1448, metadata !594), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1449, metadata !594), !dbg !2710
  %6 = lshr i8 %2, 5, !dbg !2711
  %7 = zext i8 %6 to i64, !dbg !2711
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2712
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1450, metadata !594), !dbg !2713
  %9 = and i8 %2, 31, !dbg !2714
  %10 = zext i8 %9 to i32, !dbg !2715
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1452, metadata !594), !dbg !2716
  %11 = load i32, i32* %8, align 4, !dbg !2717, !tbaa !672
  %12 = lshr i32 %11, %10, !dbg !2718
  %13 = and i32 %12, 1, !dbg !2719
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1453, metadata !594), !dbg !2720
  %14 = xor i32 %13, 1, !dbg !2721
  %15 = shl i32 %14, %10, !dbg !2722
  %16 = xor i32 %15, %11, !dbg !2723
  store i32 %16, i32* %8, align 4, !dbg !2723, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2698, metadata !594), !dbg !2705
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2724
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2725
  ret i8* %17, !dbg !2726
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2727 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2731, metadata !594), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2732, metadata !594), !dbg !2734
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2695, metadata !594) #9, !dbg !2735
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2696, metadata !594) #9, !dbg !2737
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2697, metadata !594) #9, !dbg !2738
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2739
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2740, !tbaa.struct !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2698, metadata !594) #9, !dbg !2741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1446, metadata !594) #9, !dbg !2742
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1447, metadata !594) #9, !dbg !2744
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1448, metadata !594) #9, !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1449, metadata !594) #9, !dbg !2746
  %5 = lshr i8 %1, 5, !dbg !2747
  %6 = zext i8 %5 to i64, !dbg !2747
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2748
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1450, metadata !594) #9, !dbg !2749
  %8 = and i8 %1, 31, !dbg !2750
  %9 = zext i8 %8 to i32, !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1452, metadata !594) #9, !dbg !2752
  %10 = load i32, i32* %7, align 4, !dbg !2753, !tbaa !672
  %11 = lshr i32 %10, %9, !dbg !2754
  %12 = and i32 %11, 1, !dbg !2755
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1453, metadata !594) #9, !dbg !2756
  %13 = xor i32 %12, 1, !dbg !2757
  %14 = shl i32 %13, %9, !dbg !2758
  %15 = xor i32 %14, %10, !dbg !2759
  store i32 %15, i32* %7, align 4, !dbg !2759, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2698, metadata !594) #9, !dbg !2741
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2760
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2761
  ret i8* %16, !dbg !2762
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2763 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2765, metadata !594), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2731, metadata !594) #9, !dbg !2767
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2732, metadata !594) #9, !dbg !2769
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2695, metadata !594) #9, !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2696, metadata !594) #9, !dbg !2772
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2697, metadata !594) #9, !dbg !2773
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2774
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2774
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2775, !tbaa.struct !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2698, metadata !594) #9, !dbg !2776
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1446, metadata !594) #9, !dbg !2777
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1447, metadata !594) #9, !dbg !2779
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1448, metadata !594) #9, !dbg !2780
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1449, metadata !594) #9, !dbg !2781
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2782
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1450, metadata !594) #9, !dbg !2783
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1452, metadata !594) #9, !dbg !2784
  %5 = load i32, i32* %4, align 4, !dbg !2785, !tbaa !672
  %6 = or i32 %5, 67108864, !dbg !2786
  store i32 %6, i32* %4, align 4, !dbg !2786, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2698, metadata !594) #9, !dbg !2776
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2787
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2788
  ret i8* %7, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2790 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !594), !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2793, metadata !594), !dbg !2795
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2695, metadata !594) #9, !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2696, metadata !594) #9, !dbg !2798
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2697, metadata !594) #9, !dbg !2799
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2800
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2801, !tbaa.struct !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2698, metadata !594) #9, !dbg !2802
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1446, metadata !594) #9, !dbg !2803
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1447, metadata !594) #9, !dbg !2805
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1448, metadata !594) #9, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1449, metadata !594) #9, !dbg !2807
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2808
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1450, metadata !594) #9, !dbg !2809
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1452, metadata !594) #9, !dbg !2810
  %6 = load i32, i32* %5, align 4, !dbg !2811, !tbaa !672
  %7 = or i32 %6, 67108864, !dbg !2812
  store i32 %7, i32* %5, align 4, !dbg !2812, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2698, metadata !594) #9, !dbg !2802
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2813
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2814
  ret i8* %8, !dbg !2815
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2816 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2571, metadata !2577), !dbg !2822
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2818, metadata !594), !dbg !2824
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2819, metadata !594), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2820, metadata !594), !dbg !2826
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2827
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2827
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2576, metadata !594) #9, !dbg !2828
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2829
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2829
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2571, metadata !594) #9, !dbg !2822
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2571, metadata !2587) #9, !dbg !2822
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2822
  %9 = icmp eq i32 %1, 10, !dbg !2830
  br i1 %9, label %10, label %11, !dbg !2831

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2832, !noalias !2833
  unreachable, !dbg !2832

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2571, metadata !2587) #9, !dbg !2822
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2836
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2837
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2838
  store i32 %1, i32* %13, align 8, !dbg !2838
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2838
  %15 = bitcast i32* %14 to i8*, !dbg !2838
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2838
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2821, metadata !594), !dbg !2839
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1446, metadata !594), !dbg !2840
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1447, metadata !594), !dbg !2842
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1448, metadata !594), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1449, metadata !594), !dbg !2844
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2845
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1450, metadata !594), !dbg !2846
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1452, metadata !594), !dbg !2847
  %17 = load i32, i32* %16, align 4, !dbg !2848, !tbaa !672
  %18 = or i32 %17, 67108864, !dbg !2849
  store i32 %18, i32* %16, align 4, !dbg !2849, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2821, metadata !594), !dbg !2839
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2850
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2851
  ret i8* %19, !dbg !2852
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2853 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2857, metadata !594), !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2858, metadata !594), !dbg !2862
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2859, metadata !594), !dbg !2863
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2860, metadata !594), !dbg !2864
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2865, metadata !594) #9, !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2870, metadata !594) #9, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2871, metadata !594) #9, !dbg !2878
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2872, metadata !594) #9, !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2873, metadata !594) #9, !dbg !2880
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2881
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2881
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2882, !tbaa.struct !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2874, metadata !594) #9, !dbg !2883
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1495, metadata !594) #9, !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1496, metadata !594) #9, !dbg !2886
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1497, metadata !594) #9, !dbg !2887
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1495, metadata !594) #9, !dbg !2884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1495, metadata !594) #9, !dbg !2884
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2888
  store i32 10, i32* %7, align 8, !dbg !2889, !tbaa !1427
  %8 = icmp ne i8* %1, null, !dbg !2890
  %9 = icmp ne i8* %2, null, !dbg !2891
  %10 = and i1 %8, %9, !dbg !2892
  br i1 %10, label %12, label %11, !dbg !2892

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2893
  unreachable, !dbg !2893

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2894
  store i8* %1, i8** %13, align 8, !dbg !2895, !tbaa !1513
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2896
  store i8* %2, i8** %14, align 8, !dbg !2897, !tbaa !1516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2874, metadata !594) #9, !dbg !2883
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2898
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2899
  ret i8* %15, !dbg !2900
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2866 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2865, metadata !594), !dbg !2901
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2870, metadata !594), !dbg !2902
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2871, metadata !594), !dbg !2903
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2872, metadata !594), !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2873, metadata !594), !dbg !2905
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2906
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2907, !tbaa.struct !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2874, metadata !594), !dbg !2908
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1495, metadata !594) #9, !dbg !2909
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1496, metadata !594) #9, !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1497, metadata !594) #9, !dbg !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1495, metadata !594) #9, !dbg !2909
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1495, metadata !594) #9, !dbg !2909
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2913
  store i32 10, i32* %8, align 8, !dbg !2914, !tbaa !1427
  %9 = icmp ne i8* %1, null, !dbg !2915
  %10 = icmp ne i8* %2, null, !dbg !2916
  %11 = and i1 %9, %10, !dbg !2917
  br i1 %11, label %13, label %12, !dbg !2917

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2918
  unreachable, !dbg !2918

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2919
  store i8* %1, i8** %14, align 8, !dbg !2920, !tbaa !1513
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2921
  store i8* %2, i8** %15, align 8, !dbg !2922, !tbaa !1516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2874, metadata !594), !dbg !2908
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2924
  ret i8* %16, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2926 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2930, metadata !594), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2931, metadata !594), !dbg !2934
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2932, metadata !594), !dbg !2935
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2857, metadata !594) #9, !dbg !2936
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2858, metadata !594) #9, !dbg !2938
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2859, metadata !594) #9, !dbg !2939
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2860, metadata !594) #9, !dbg !2940
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2865, metadata !594) #9, !dbg !2941
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2870, metadata !594) #9, !dbg !2943
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2871, metadata !594) #9, !dbg !2944
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2872, metadata !594) #9, !dbg !2945
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2873, metadata !594) #9, !dbg !2946
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2947
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2947
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2948, !tbaa.struct !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2874, metadata !594) #9, !dbg !2949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1495, metadata !594) #9, !dbg !2950
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1496, metadata !594) #9, !dbg !2952
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1497, metadata !594) #9, !dbg !2953
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1495, metadata !594) #9, !dbg !2950
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1495, metadata !594) #9, !dbg !2950
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2954
  store i32 10, i32* %6, align 8, !dbg !2955, !tbaa !1427
  %7 = icmp ne i8* %0, null, !dbg !2956
  %8 = icmp ne i8* %1, null, !dbg !2957
  %9 = and i1 %7, %8, !dbg !2958
  br i1 %9, label %11, label %10, !dbg !2958

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2959
  unreachable, !dbg !2959

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2960
  store i8* %0, i8** %12, align 8, !dbg !2961, !tbaa !1513
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2962
  store i8* %1, i8** %13, align 8, !dbg !2963, !tbaa !1516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2874, metadata !594) #9, !dbg !2949
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2964
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2965
  ret i8* %14, !dbg !2966
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2967 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2971, metadata !594), !dbg !2975
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2972, metadata !594), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2973, metadata !594), !dbg !2977
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2974, metadata !594), !dbg !2978
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2865, metadata !594) #9, !dbg !2979
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2870, metadata !594) #9, !dbg !2981
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2871, metadata !594) #9, !dbg !2982
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2872, metadata !594) #9, !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2873, metadata !594) #9, !dbg !2984
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2985
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2986, !tbaa.struct !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2874, metadata !594) #9, !dbg !2987
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1495, metadata !594) #9, !dbg !2988
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1496, metadata !594) #9, !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1497, metadata !594) #9, !dbg !2991
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1495, metadata !594) #9, !dbg !2988
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1495, metadata !594) #9, !dbg !2988
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2992
  store i32 10, i32* %7, align 8, !dbg !2993, !tbaa !1427
  %8 = icmp ne i8* %0, null, !dbg !2994
  %9 = icmp ne i8* %1, null, !dbg !2995
  %10 = and i1 %8, %9, !dbg !2996
  br i1 %10, label %12, label %11, !dbg !2996

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2997
  unreachable, !dbg !2997

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2998
  store i8* %0, i8** %13, align 8, !dbg !2999, !tbaa !1513
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3000
  store i8* %1, i8** %14, align 8, !dbg !3001, !tbaa !1516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2874, metadata !594) #9, !dbg !2987
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !3002
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3003
  ret i8* %15, !dbg !3004
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3005 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3009, metadata !594), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3010, metadata !594), !dbg !3013
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3011, metadata !594), !dbg !3014
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3015
  ret i8* %4, !dbg !3016
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3017 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3021, metadata !594), !dbg !3023
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3022, metadata !594), !dbg !3024
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3009, metadata !594) #9, !dbg !3025
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3010, metadata !594) #9, !dbg !3027
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3011, metadata !594) #9, !dbg !3028
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3029
  ret i8* %3, !dbg !3030
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3031 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3035, metadata !594), !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3036, metadata !594), !dbg !3038
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3009, metadata !594) #9, !dbg !3039
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3010, metadata !594) #9, !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3011, metadata !594) #9, !dbg !3042
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3043
  ret i8* %3, !dbg !3044
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3045 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3049, metadata !594), !dbg !3050
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3035, metadata !594) #9, !dbg !3051
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3036, metadata !594) #9, !dbg !3053
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3009, metadata !594) #9, !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3010, metadata !594) #9, !dbg !3056
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3011, metadata !594) #9, !dbg !3057
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3058
  ret i8* %2, !dbg !3059
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3060 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3105, metadata !594), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3106, metadata !594), !dbg !3112
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3107, metadata !594), !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3108, metadata !594), !dbg !3114
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3109, metadata !594), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3110, metadata !594), !dbg !3116
  %7 = icmp eq i8* %1, null, !dbg !3117
  br i1 %7, label %10, label %8, !dbg !3119

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !3120
  br label %12, !dbg !3120

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !3121
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #9, !dbg !3122
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !3122
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.72, i64 0, i64 0), i32 5) #9, !dbg !3123
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !3123
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
  ], !dbg !3124

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3125
  unreachable, !dbg !3125

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #9, !dbg !3127
  %20 = load i8*, i8** %4, align 8, !dbg !3127, !tbaa !601
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !3127
  br label %146, !dbg !3128

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.74, i64 0, i64 0), i32 5) #9, !dbg !3129
  %24 = load i8*, i8** %4, align 8, !dbg !3129, !tbaa !601
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3129
  %26 = load i8*, i8** %25, align 8, !dbg !3129, !tbaa !601
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !3129
  br label %146, !dbg !3130

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #9, !dbg !3131
  %30 = load i8*, i8** %4, align 8, !dbg !3131, !tbaa !601
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3131
  %32 = load i8*, i8** %31, align 8, !dbg !3131, !tbaa !601
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3131
  %34 = load i8*, i8** %33, align 8, !dbg !3131, !tbaa !601
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !3131
  br label %146, !dbg !3132

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #9, !dbg !3133
  %38 = load i8*, i8** %4, align 8, !dbg !3133, !tbaa !601
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3133
  %40 = load i8*, i8** %39, align 8, !dbg !3133, !tbaa !601
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3133
  %42 = load i8*, i8** %41, align 8, !dbg !3133, !tbaa !601
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3133
  %44 = load i8*, i8** %43, align 8, !dbg !3133, !tbaa !601
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !3133
  br label %146, !dbg !3134

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #9, !dbg !3135
  %48 = load i8*, i8** %4, align 8, !dbg !3135, !tbaa !601
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3135
  %50 = load i8*, i8** %49, align 8, !dbg !3135, !tbaa !601
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3135
  %52 = load i8*, i8** %51, align 8, !dbg !3135, !tbaa !601
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3135
  %54 = load i8*, i8** %53, align 8, !dbg !3135, !tbaa !601
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3135
  %56 = load i8*, i8** %55, align 8, !dbg !3135, !tbaa !601
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !3135
  br label %146, !dbg !3136

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #9, !dbg !3137
  %60 = load i8*, i8** %4, align 8, !dbg !3137, !tbaa !601
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3137
  %62 = load i8*, i8** %61, align 8, !dbg !3137, !tbaa !601
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3137
  %64 = load i8*, i8** %63, align 8, !dbg !3137, !tbaa !601
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3137
  %66 = load i8*, i8** %65, align 8, !dbg !3137, !tbaa !601
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3137
  %68 = load i8*, i8** %67, align 8, !dbg !3137, !tbaa !601
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3137
  %70 = load i8*, i8** %69, align 8, !dbg !3137, !tbaa !601
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !3137
  br label %146, !dbg !3138

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #9, !dbg !3139
  %74 = load i8*, i8** %4, align 8, !dbg !3139, !tbaa !601
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3139
  %76 = load i8*, i8** %75, align 8, !dbg !3139, !tbaa !601
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3139
  %78 = load i8*, i8** %77, align 8, !dbg !3139, !tbaa !601
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3139
  %80 = load i8*, i8** %79, align 8, !dbg !3139, !tbaa !601
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3139
  %82 = load i8*, i8** %81, align 8, !dbg !3139, !tbaa !601
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3139
  %84 = load i8*, i8** %83, align 8, !dbg !3139, !tbaa !601
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3139
  %86 = load i8*, i8** %85, align 8, !dbg !3139, !tbaa !601
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !3139
  br label %146, !dbg !3140

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #9, !dbg !3141
  %90 = load i8*, i8** %4, align 8, !dbg !3141, !tbaa !601
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3141
  %92 = load i8*, i8** %91, align 8, !dbg !3141, !tbaa !601
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3141
  %94 = load i8*, i8** %93, align 8, !dbg !3141, !tbaa !601
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3141
  %96 = load i8*, i8** %95, align 8, !dbg !3141, !tbaa !601
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3141
  %98 = load i8*, i8** %97, align 8, !dbg !3141, !tbaa !601
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3141
  %100 = load i8*, i8** %99, align 8, !dbg !3141, !tbaa !601
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3141
  %102 = load i8*, i8** %101, align 8, !dbg !3141, !tbaa !601
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3141
  %104 = load i8*, i8** %103, align 8, !dbg !3141, !tbaa !601
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !3141
  br label %146, !dbg !3142

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #9, !dbg !3143
  %108 = load i8*, i8** %4, align 8, !dbg !3143, !tbaa !601
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3143
  %110 = load i8*, i8** %109, align 8, !dbg !3143, !tbaa !601
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3143
  %112 = load i8*, i8** %111, align 8, !dbg !3143, !tbaa !601
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3143
  %114 = load i8*, i8** %113, align 8, !dbg !3143, !tbaa !601
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3143
  %116 = load i8*, i8** %115, align 8, !dbg !3143, !tbaa !601
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3143
  %118 = load i8*, i8** %117, align 8, !dbg !3143, !tbaa !601
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3143
  %120 = load i8*, i8** %119, align 8, !dbg !3143, !tbaa !601
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3143
  %122 = load i8*, i8** %121, align 8, !dbg !3143, !tbaa !601
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3143
  %124 = load i8*, i8** %123, align 8, !dbg !3143, !tbaa !601
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !3143
  br label %146, !dbg !3144

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #9, !dbg !3145
  %128 = load i8*, i8** %4, align 8, !dbg !3145, !tbaa !601
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3145
  %130 = load i8*, i8** %129, align 8, !dbg !3145, !tbaa !601
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3145
  %132 = load i8*, i8** %131, align 8, !dbg !3145, !tbaa !601
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3145
  %134 = load i8*, i8** %133, align 8, !dbg !3145, !tbaa !601
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3145
  %136 = load i8*, i8** %135, align 8, !dbg !3145, !tbaa !601
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3145
  %138 = load i8*, i8** %137, align 8, !dbg !3145, !tbaa !601
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3145
  %140 = load i8*, i8** %139, align 8, !dbg !3145, !tbaa !601
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3145
  %142 = load i8*, i8** %141, align 8, !dbg !3145, !tbaa !601
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3145
  %144 = load i8*, i8** %143, align 8, !dbg !3145, !tbaa !601
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !3145
  br label %146, !dbg !3146

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3147
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3148 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3152, metadata !594), !dbg !3158
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3153, metadata !594), !dbg !3159
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3154, metadata !594), !dbg !3160
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3155, metadata !594), !dbg !3161
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3156, metadata !594), !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3157, metadata !594), !dbg !3163
  br label %6, !dbg !3164

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3157, metadata !594), !dbg !3163
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3166
  %9 = load i8*, i8** %8, align 8, !dbg !3166, !tbaa !601
  %10 = icmp eq i8* %9, null, !dbg !3168
  %11 = add i64 %7, 1, !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3157, metadata !594), !dbg !3163
  br i1 %10, label %12, label %6, !dbg !3168, !llvm.loop !3170

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3172
  ret void, !dbg !3173
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3174 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3185, metadata !594), !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3186, metadata !594), !dbg !3194
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3187, metadata !594), !dbg !3195
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3188, metadata !594), !dbg !3196
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3189, metadata !594), !dbg !3197
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3198
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !3198
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3191, metadata !594), !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %11 = load i32, i32* %8, align 8, !dbg !3201
  %12 = icmp ult i32 %11, 41, !dbg !3201
  br i1 %12, label %13, label %18, !dbg !3201

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3201
  %15 = sext i32 %11 to i64, !dbg !3201
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3201
  %17 = add i32 %11, 8, !dbg !3201
  store i32 %17, i32* %8, align 8, !dbg !3201
  br label %21, !dbg !3201

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3201
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3201
  store i8* %20, i8** %10, align 8, !dbg !3201
  br label %21, !dbg !3201

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3201
  %25 = load i8*, i8** %24, align 8, !dbg !3201
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3204
  store i8* %25, i8** %26, align 16, !dbg !3205, !tbaa !601
  %27 = icmp eq i8* %25, null, !dbg !3206
  br i1 %27, label %30, label %28, !dbg !3207

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %29 = icmp ult i32 %22, 41, !dbg !3201
  br i1 %29, label %35, label %32, !dbg !3201

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3208
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !3209
  ret void, !dbg !3209

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3201
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3201
  store i8* %34, i8** %10, align 8, !dbg !3201
  br label %40, !dbg !3201

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3201
  %37 = sext i32 %22 to i64, !dbg !3201
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3201
  %39 = add i32 %22, 8, !dbg !3201
  store i32 %39, i32* %8, align 8, !dbg !3201
  br label %40, !dbg !3201

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3201
  %44 = load i8*, i8** %43, align 8, !dbg !3201
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3204
  store i8* %44, i8** %45, align 8, !dbg !3205, !tbaa !601
  %46 = icmp eq i8* %44, null, !dbg !3206
  br i1 %46, label %30, label %47, !dbg !3207

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %48 = icmp ult i32 %41, 41, !dbg !3201
  br i1 %48, label %52, label %49, !dbg !3201

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3201
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3201
  store i8* %51, i8** %10, align 8, !dbg !3201
  br label %57, !dbg !3201

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3201
  %54 = sext i32 %41 to i64, !dbg !3201
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3201
  %56 = add i32 %41, 8, !dbg !3201
  store i32 %56, i32* %8, align 8, !dbg !3201
  br label %57, !dbg !3201

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3201
  %61 = load i8*, i8** %60, align 8, !dbg !3201
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3204
  store i8* %61, i8** %62, align 16, !dbg !3205, !tbaa !601
  %63 = icmp eq i8* %61, null, !dbg !3206
  br i1 %63, label %30, label %64, !dbg !3207

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %65 = icmp ult i32 %58, 41, !dbg !3201
  br i1 %65, label %69, label %66, !dbg !3201

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3201
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3201
  store i8* %68, i8** %10, align 8, !dbg !3201
  br label %74, !dbg !3201

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3201
  %71 = sext i32 %58 to i64, !dbg !3201
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3201
  %73 = add i32 %58, 8, !dbg !3201
  store i32 %73, i32* %8, align 8, !dbg !3201
  br label %74, !dbg !3201

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3201
  %78 = load i8*, i8** %77, align 8, !dbg !3201
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3204
  store i8* %78, i8** %79, align 8, !dbg !3205, !tbaa !601
  %80 = icmp eq i8* %78, null, !dbg !3206
  br i1 %80, label %30, label %81, !dbg !3207

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %82 = icmp ult i32 %75, 41, !dbg !3201
  br i1 %82, label %86, label %83, !dbg !3201

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3201
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3201
  store i8* %85, i8** %10, align 8, !dbg !3201
  br label %91, !dbg !3201

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3201
  %88 = sext i32 %75 to i64, !dbg !3201
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3201
  %90 = add i32 %75, 8, !dbg !3201
  store i32 %90, i32* %8, align 8, !dbg !3201
  br label %91, !dbg !3201

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3201
  %95 = load i8*, i8** %94, align 8, !dbg !3201
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3204
  store i8* %95, i8** %96, align 16, !dbg !3205, !tbaa !601
  %97 = icmp eq i8* %95, null, !dbg !3206
  br i1 %97, label %30, label %98, !dbg !3207

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %99 = icmp ult i32 %92, 41, !dbg !3201
  br i1 %99, label %103, label %100, !dbg !3201

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3201
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3201
  store i8* %102, i8** %10, align 8, !dbg !3201
  br label %108, !dbg !3201

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3201
  %105 = sext i32 %92 to i64, !dbg !3201
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3201
  %107 = add i32 %92, 8, !dbg !3201
  store i32 %107, i32* %8, align 8, !dbg !3201
  br label %108, !dbg !3201

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3201
  %111 = load i8*, i8** %110, align 8, !dbg !3201
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3204
  store i8* %111, i8** %112, align 8, !dbg !3205, !tbaa !601
  %113 = icmp eq i8* %111, null, !dbg !3206
  br i1 %113, label %30, label %114, !dbg !3207

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %115 = load i8*, i8** %10, align 8, !dbg !3201
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3201
  store i8* %116, i8** %10, align 8, !dbg !3201
  %117 = bitcast i8* %115 to i8**, !dbg !3201
  %118 = load i8*, i8** %117, align 8, !dbg !3201
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3204
  store i8* %118, i8** %119, align 16, !dbg !3205, !tbaa !601
  %120 = icmp eq i8* %118, null, !dbg !3206
  br i1 %120, label %30, label %121, !dbg !3207

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %122 = load i8*, i8** %10, align 8, !dbg !3201
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3201
  store i8* %123, i8** %10, align 8, !dbg !3201
  %124 = bitcast i8* %122 to i8**, !dbg !3201
  %125 = load i8*, i8** %124, align 8, !dbg !3201
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3204
  store i8* %125, i8** %126, align 8, !dbg !3205, !tbaa !601
  %127 = icmp eq i8* %125, null, !dbg !3206
  br i1 %127, label %30, label %128, !dbg !3207

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %129 = load i8*, i8** %10, align 8, !dbg !3201
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3201
  store i8* %130, i8** %10, align 8, !dbg !3201
  %131 = bitcast i8* %129 to i8**, !dbg !3201
  %132 = load i8*, i8** %131, align 8, !dbg !3201
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3204
  store i8* %132, i8** %133, align 16, !dbg !3205, !tbaa !601
  %134 = icmp eq i8* %132, null, !dbg !3206
  br i1 %134, label %30, label %135, !dbg !3207

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3190, metadata !594), !dbg !3200
  %136 = load i8*, i8** %10, align 8, !dbg !3201
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3201
  store i8* %137, i8** %10, align 8, !dbg !3201
  %138 = bitcast i8* %136 to i8**, !dbg !3201
  %139 = load i8*, i8** %138, align 8, !dbg !3201
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3204
  store i8* %139, i8** %140, align 8, !dbg !3205, !tbaa !601
  %141 = icmp eq i8* %139, null, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3190, metadata !594), !dbg !3200
  %142 = select i1 %141, i64 9, i64 10, !dbg !3207
  br label %30, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3210 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3214, metadata !594), !dbg !3224
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3215, metadata !594), !dbg !3225
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3216, metadata !594), !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3217, metadata !594), !dbg !3227
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !3228
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3218, metadata !594), !dbg !3229
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3230
  call void @llvm.va_start(i8* nonnull %6), !dbg !3230
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3231
  call void @llvm.va_end(i8* nonnull %6), !dbg !3232
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !3233
  ret void, !dbg !3233
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3234 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.85, i64 0, i64 0), i32 5) #9, !dbg !3235
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.86, i64 0, i64 0)) #9, !dbg !3235
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #9, !dbg !3236
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.88, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.89, i64 0, i64 0)) #9, !dbg !3236
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.90, i64 0, i64 0), i32 5) #9, !dbg !3237
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3237, !tbaa !601
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !3237
  ret void, !dbg !3238
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3239 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3241, metadata !594), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3242, metadata !594), !dbg !3244
  %3 = udiv i64 9223372036854775807, %1, !dbg !3245
  %4 = icmp ult i64 %3, %0, !dbg !3245
  br i1 %4, label %5, label %6, !dbg !3247

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3248
  unreachable, !dbg !3248

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3249
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3250, metadata !594) #9, !dbg !3257
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3256, metadata !594) #9, !dbg !3260
  %9 = icmp eq i8* %8, null, !dbg !3261
  %10 = icmp ne i64 %7, 0, !dbg !3263
  %11 = and i1 %10, %9, !dbg !3264
  br i1 %11, label %12, label %13, !dbg !3264

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3265
  unreachable, !dbg !3265

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3266
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3251 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3250, metadata !594), !dbg !3267
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3256, metadata !594), !dbg !3269
  %3 = icmp eq i8* %2, null, !dbg !3270
  %4 = icmp ne i64 %0, 0, !dbg !3271
  %5 = and i1 %4, %3, !dbg !3272
  br i1 %5, label %6, label %7, !dbg !3272

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3273
  unreachable, !dbg !3273

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3274
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3275 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3279, metadata !594), !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3280, metadata !594), !dbg !3283
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3281, metadata !594), !dbg !3284
  %4 = udiv i64 9223372036854775807, %2, !dbg !3285
  %5 = icmp ult i64 %4, %1, !dbg !3285
  br i1 %5, label %6, label %7, !dbg !3287

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3288
  unreachable, !dbg !3288

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3289
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3290, metadata !594) #9, !dbg !3296
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3295, metadata !594) #9, !dbg !3298
  %9 = icmp eq i64 %8, 0, !dbg !3299
  %10 = icmp ne i8* %0, null, !dbg !3301
  %11 = and i1 %10, %9, !dbg !3302
  br i1 %11, label %12, label %13, !dbg !3302

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3303
  br label %19, !dbg !3305

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3306
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3290, metadata !594) #9, !dbg !3296
  %15 = icmp eq i8* %14, null, !dbg !3307
  %16 = icmp ne i64 %8, 0, !dbg !3309
  %17 = and i1 %16, %15, !dbg !3310
  br i1 %17, label %18, label %19, !dbg !3310

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3311
  unreachable, !dbg !3311

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3312
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3291 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3290, metadata !594), !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3295, metadata !594), !dbg !3314
  %3 = icmp eq i64 %1, 0, !dbg !3315
  %4 = icmp ne i8* %0, null, !dbg !3316
  %5 = and i1 %4, %3, !dbg !3317
  br i1 %5, label %6, label %7, !dbg !3317

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3318
  br label %13, !dbg !3319

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3320
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3290, metadata !594), !dbg !3313
  %9 = icmp eq i8* %8, null, !dbg !3321
  %10 = icmp ne i64 %1, 0, !dbg !3322
  %11 = and i1 %10, %9, !dbg !3323
  br i1 %11, label %12, label %13, !dbg !3323

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3324
  unreachable, !dbg !3324

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3325
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !554 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !559, metadata !594), !dbg !3326
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !560, metadata !594), !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !561, metadata !594), !dbg !3328
  %4 = load i64, i64* %1, align 8, !dbg !3329, !tbaa !2382
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !562, metadata !594), !dbg !3330
  %5 = icmp eq i8* %0, null, !dbg !3331
  br i1 %5, label %6, label %13, !dbg !3333

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3334
  br i1 %7, label %8, label %17, !dbg !3337

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !562, metadata !594), !dbg !3330
  %10 = icmp ugt i64 %2, 128, !dbg !3340
  %11 = zext i1 %10 to i64, !dbg !3340
  %12 = add nuw nsw i64 %9, %11, !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !562, metadata !594), !dbg !3330
  br label %17, !dbg !3342

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3343
  %15 = icmp ugt i64 %14, %4, !dbg !3346
  br i1 %15, label %20, label %16, !dbg !3347

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3348
  unreachable, !dbg !3348

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !562, metadata !594), !dbg !3330
  store i64 %18, i64* %1, align 8, !dbg !3349, !tbaa !2382
  %19 = mul i64 %18, %2, !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3290, metadata !594) #9, !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3295, metadata !594) #9, !dbg !3353
  br label %27, !dbg !3354

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3355
  %22 = add i64 %4, 1, !dbg !3356
  %23 = add i64 %22, %21, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !562, metadata !594), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !562, metadata !594), !dbg !3330
  store i64 %23, i64* %1, align 8, !dbg !3349, !tbaa !2382
  %24 = mul i64 %23, %2, !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3290, metadata !594) #9, !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3295, metadata !594) #9, !dbg !3353
  %25 = icmp eq i64 %24, 0, !dbg !3358
  br i1 %25, label %26, label %27, !dbg !3354

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3359
  br label %34, !dbg !3360

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3361
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3290, metadata !594) #9, !dbg !3351
  %30 = icmp eq i8* %29, null, !dbg !3362
  %31 = icmp ne i64 %28, 0, !dbg !3363
  %32 = and i1 %31, %30, !dbg !3364
  br i1 %32, label %33, label %34, !dbg !3364

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3365
  unreachable, !dbg !3365

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3366
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3367 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3369, metadata !594), !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3250, metadata !594) #9, !dbg !3371
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3373
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3256, metadata !594) #9, !dbg !3374
  %3 = icmp eq i8* %2, null, !dbg !3375
  %4 = icmp ne i64 %0, 0, !dbg !3376
  %5 = and i1 %4, %3, !dbg !3377
  br i1 %5, label %6, label %7, !dbg !3377

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3378
  unreachable, !dbg !3378

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3379
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3380 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3384, metadata !594), !dbg !3386
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3385, metadata !594), !dbg !3387
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !559, metadata !594) #9, !dbg !3388
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !560, metadata !594) #9, !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !561, metadata !594) #9, !dbg !3391
  %3 = load i64, i64* %1, align 8, !dbg !3392, !tbaa !2382
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !562, metadata !594) #9, !dbg !3393
  %4 = icmp eq i8* %0, null, !dbg !3394
  br i1 %4, label %5, label %8, !dbg !3395

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !562, metadata !594) #9, !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !562, metadata !594) #9, !dbg !3393
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3397
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !562, metadata !594) #9, !dbg !3393
  store i64 %7, i64* %1, align 8, !dbg !3398, !tbaa !2382
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3290, metadata !594) #9, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3295, metadata !594) #9, !dbg !3401
  br label %17, !dbg !3402

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3403
  br i1 %9, label %11, label %10, !dbg !3404

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3405
  unreachable, !dbg !3405

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3406
  %13 = add i64 %3, 1, !dbg !3407
  %14 = add i64 %13, %12, !dbg !3408
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !562, metadata !594) #9, !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !562, metadata !594) #9, !dbg !3393
  store i64 %14, i64* %1, align 8, !dbg !3398, !tbaa !2382
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3290, metadata !594) #9, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3295, metadata !594) #9, !dbg !3401
  %15 = icmp eq i64 %14, 0, !dbg !3409
  br i1 %15, label %16, label %17, !dbg !3402

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3410
  br label %24, !dbg !3411

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3412
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3290, metadata !594) #9, !dbg !3399
  %20 = icmp eq i8* %19, null, !dbg !3413
  %21 = icmp ne i64 %18, 0, !dbg !3414
  %22 = and i1 %21, %20, !dbg !3415
  br i1 %22, label %23, label %24, !dbg !3415

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3416
  unreachable, !dbg !3416

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3417
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3418 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3420, metadata !594), !dbg !3421
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3250, metadata !594) #9, !dbg !3422
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3424
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3256, metadata !594) #9, !dbg !3425
  %3 = icmp eq i8* %2, null, !dbg !3426
  %4 = icmp ne i64 %0, 0, !dbg !3427
  %5 = and i1 %4, %3, !dbg !3428
  br i1 %5, label %6, label %7, !dbg !3428

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3429
  unreachable, !dbg !3429

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3430
  ret i8* %2, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3432 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3434, metadata !594), !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3435, metadata !594), !dbg !3438
  %3 = udiv i64 9223372036854775807, %1, !dbg !3439
  %4 = icmp ult i64 %3, %0, !dbg !3439
  br i1 %4, label %8, label %5, !dbg !3441

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3442
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3436, metadata !594), !dbg !3443
  %7 = icmp eq i8* %6, null, !dbg !3444
  br i1 %7, label %8, label %9, !dbg !3445

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3446
  unreachable, !dbg !3446

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3447
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3448 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3454, metadata !594), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3455, metadata !594), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3250, metadata !594) #9, !dbg !3458
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3460
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3256, metadata !594) #9, !dbg !3461
  %4 = icmp eq i8* %3, null, !dbg !3462
  %5 = icmp ne i64 %1, 0, !dbg !3463
  %6 = and i1 %5, %4, !dbg !3464
  br i1 %6, label %7, label %8, !dbg !3464

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3465
  unreachable, !dbg !3465

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3466
  ret i8* %3, !dbg !3467
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3468 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !594), !dbg !3471
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3472
  %3 = add i64 %2, 1, !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3454, metadata !594) #9, !dbg !3474
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3455, metadata !594) #9, !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3250, metadata !594) #9, !dbg !3477
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3479
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3256, metadata !594) #9, !dbg !3480
  %5 = icmp eq i8* %4, null, !dbg !3481
  %6 = icmp ne i64 %3, 0, !dbg !3482
  %7 = and i1 %6, %5, !dbg !3483
  br i1 %7, label %8, label %9, !dbg !3483

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3484
  unreachable, !dbg !3484

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3485
  ret i8* %4, !dbg !3486
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3487 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3489, !tbaa !672
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.103, i64 0, i64 0), i32 5) #9, !dbg !3490
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* %2) #9, !dbg !3491
  tail call void @abort() #15, !dbg !3492
  unreachable, !dbg !3492
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3493 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3496, metadata !594), !dbg !3502
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3497, metadata !594), !dbg !3503
  %3 = icmp eq i64 %0, 0, !dbg !3504
  %4 = icmp eq i64 %1, 0, !dbg !3505
  %5 = or i1 %3, %4, !dbg !3506
  br i1 %5, label %12, label %6, !dbg !3506

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3507
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3499, metadata !594), !dbg !3508
  %8 = udiv i64 %7, %1, !dbg !3509
  %9 = icmp eq i64 %8, %0, !dbg !3511
  br i1 %9, label %12, label %10, !dbg !3512

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3513
  store i32 12, i32* %11, align 4, !dbg !3515, !tbaa !672
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3496, metadata !594), !dbg !3502
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3497, metadata !594), !dbg !3503
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3516
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3498, metadata !594), !dbg !3517
  br label %16, !dbg !3518

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3519
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3520 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3565, metadata !594), !dbg !3569
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3566, metadata !594), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3568, metadata !594), !dbg !3571
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3572
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3567, metadata !594), !dbg !3573
  %3 = icmp slt i32 %2, 0, !dbg !3574
  br i1 %3, label %4, label %6, !dbg !3576

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3577
  br label %24, !dbg !3578

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3579
  %8 = icmp eq i32 %7, 0, !dbg !3579
  br i1 %8, label %13, label %9, !dbg !3581

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3582
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3583
  %12 = icmp eq i64 %11, -1, !dbg !3584
  br i1 %12, label %16, label %13, !dbg !3585

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3586
  %15 = icmp eq i32 %14, 0, !dbg !3586
  br i1 %15, label %16, label %18, !dbg !3587

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3566, metadata !594), !dbg !3570
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3568, metadata !594), !dbg !3571
  br label %24, !dbg !3589

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3590
  %20 = load i32, i32* %19, align 4, !dbg !3590, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3566, metadata !594), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3566, metadata !594), !dbg !3570
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3568, metadata !594), !dbg !3571
  %22 = icmp eq i32 %20, 0, !dbg !3591
  br i1 %22, label %24, label %23, !dbg !3589

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3593, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3568, metadata !594), !dbg !3571
  br label %24, !dbg !3595

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3596
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3597 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3642, metadata !594), !dbg !3643
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3644
  br i1 %2, label %6, label %3, !dbg !3646

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3647
  %5 = icmp eq i32 %4, 0, !dbg !3647
  br i1 %5, label %6, label %8, !dbg !3648

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3649
  br label %17, !dbg !3650

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3651, metadata !594) #9, !dbg !3656
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3658
  %10 = load i32, i32* %9, align 8, !dbg !3658, !tbaa !940
  %11 = and i32 %10, 256, !dbg !3660
  %12 = icmp eq i32 %11, 0, !dbg !3660
  br i1 %12, label %15, label %13, !dbg !3661

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3662
  br label %15, !dbg !3662

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3663
  br label %17, !dbg !3664

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3665
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3711, metadata !594), !dbg !3717
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3712, metadata !594), !dbg !3718
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3713, metadata !594), !dbg !3719
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3720
  %5 = load i8*, i8** %4, align 8, !dbg !3720, !tbaa !849
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3721
  %7 = load i8*, i8** %6, align 8, !dbg !3721, !tbaa !845
  %8 = icmp eq i8* %5, %7, !dbg !3722
  br i1 %8, label %9, label %28, !dbg !3723

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3724
  %11 = load i8*, i8** %10, align 8, !dbg !3724, !tbaa !892
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3725
  %13 = load i8*, i8** %12, align 8, !dbg !3725, !tbaa !3726
  %14 = icmp eq i8* %11, %13, !dbg !3727
  br i1 %14, label %15, label %28, !dbg !3728

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3729
  %17 = load i8*, i8** %16, align 8, !dbg !3729, !tbaa !3730
  %18 = icmp eq i8* %17, null, !dbg !3731
  br i1 %18, label %19, label %28, !dbg !3732

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3733
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3734
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3714, metadata !594), !dbg !3735
  %22 = icmp eq i64 %21, -1, !dbg !3736
  br i1 %22, label %30, label %23, !dbg !3738

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3739
  %25 = load i32, i32* %24, align 8, !dbg !3740, !tbaa !940
  %26 = and i32 %25, -17, !dbg !3740
  store i32 %26, i32* %24, align 8, !dbg !3740, !tbaa !940
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3741
  store i64 %21, i64* %27, align 8, !dbg !3742, !tbaa !3743
  br label %30, !dbg !3744

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3745
  br label %30, !dbg !3746

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3747
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3748 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3765, metadata !594), !dbg !3774
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3766, metadata !594), !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3767, metadata !594), !dbg !3776
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3768, metadata !594), !dbg !3777
  %6 = bitcast i32* %5 to i8*, !dbg !3778
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3778
  %7 = icmp eq i32* %0, null, !dbg !3779
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3765, metadata !594), !dbg !3774
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3781
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3765, metadata !594), !dbg !3774
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3769, metadata !594), !dbg !3783
  %10 = icmp ugt i64 %9, -3, !dbg !3784
  %11 = icmp ne i64 %2, 0, !dbg !3785
  %12 = and i1 %11, %10, !dbg !3786
  br i1 %12, label %13, label %18, !dbg !3786

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3787
  br i1 %14, label %18, label %15, !dbg !3788

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3789, !tbaa !662
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3771, metadata !594), !dbg !3790
  %17 = zext i8 %16 to i32, !dbg !3791
  store i32 %17, i32* %8, align 4, !dbg !3792, !tbaa !672
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3793
  ret i64 %19, !dbg !3793
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3794 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3839, metadata !594), !dbg !3844
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3845
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3846, metadata !594), !dbg !3849
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3851
  %4 = load i32, i32* %3, align 8, !dbg !3851, !tbaa !940
  %5 = and i32 %4, 32, !dbg !3851
  %6 = icmp eq i32 %5, 0, !dbg !3852
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3853
  %8 = icmp ne i32 %7, 0, !dbg !3854
  br i1 %6, label %9, label %19, !dbg !3855

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3857
  %11 = xor i1 %8, true, !dbg !3858
  %12 = or i1 %10, %11, !dbg !3858
  %13 = sext i1 %8 to i32, !dbg !3858
  br i1 %12, label %22, label %14, !dbg !3858

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3859
  %16 = load i32, i32* %15, align 4, !dbg !3859, !tbaa !672
  %17 = icmp ne i32 %16, 9, !dbg !3860
  %18 = sext i1 %17 to i32, !dbg !3861
  br label %22, !dbg !3861

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3862

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3864
  store i32 0, i32* %21, align 4, !dbg !3866, !tbaa !672
  br label %22, !dbg !3864

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3867
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3868 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3873, metadata !594), !dbg !3876
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3874, metadata !594), !dbg !3877
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3878
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3875, metadata !594), !dbg !3879
  %3 = icmp eq i8* %2, null, !dbg !3880
  br i1 %3, label %11, label %4, !dbg !3882

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i64 0, i64 0)) #14, !dbg !3883
  %6 = icmp eq i32 %5, 0, !dbg !3888
  br i1 %6, label %10, label %7, !dbg !3889

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i64 0, i64 0)) #14, !dbg !3890
  %9 = icmp eq i32 %8, 0, !dbg !3891
  br i1 %9, label %10, label %11, !dbg !3892

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3874, metadata !594), !dbg !3877
  br label %11, !dbg !3893

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3894
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3895 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3901, metadata !594), !dbg !3975
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3968, metadata !594), !dbg !3978
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3979
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3899, metadata !594), !dbg !3980
  %4 = icmp eq i8* %3, null, !dbg !3981
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), i8* %3, !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3899, metadata !594), !dbg !3980
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3984, !tbaa !601
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3915, metadata !594) #9, !dbg !3985
  %7 = icmp eq i8* %6, null, !dbg !3986
  br i1 %7, label %8, label %123, !dbg !3987

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.124, i64 0, i64 0)) #9, !dbg !3988
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3916, metadata !594) #9, !dbg !3989
  %10 = icmp eq i8* %9, null, !dbg !3990
  br i1 %10, label %14, label %11, !dbg !3992

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3993, !tbaa !662
  %13 = icmp eq i8 %12, 0, !dbg !3994
  br i1 %13, label %14, label %15, !dbg !3995

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3996

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.125, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3916, metadata !594) #9, !dbg !3989
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3997
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3919, metadata !594) #9, !dbg !3998
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3921, metadata !594) #9, !dbg !3999
  %18 = icmp eq i64 %17, 0, !dbg !4000
  br i1 %18, label %24, label %19, !dbg !4001

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4002
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4002
  %22 = load i8, i8* %21, align 1, !dbg !4002, !tbaa !662
  %23 = icmp ne i8 %22, 47, !dbg !4002
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4003
  %27 = add i64 %17, 14, !dbg !4004
  %28 = add i64 %27, %26, !dbg !4005
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !4006
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3918, metadata !594) #9, !dbg !4007
  %30 = icmp eq i8* %29, null, !dbg !4008
  br i1 %30, label %121, label %31, !dbg !4008

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !4009
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4012

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4013, !tbaa !662
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4015
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.126, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !4016
  br label %37, !dbg !4017

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4015
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.126, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !4016
  br label %37, !dbg !4017

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !4018
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3923, metadata !594) #9, !dbg !4019
  %39 = icmp slt i32 %38, 0, !dbg !4020
  br i1 %39, label %119, label %40, !dbg !4021

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.127, i64 0, i64 0)) #9, !dbg !4022
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3924, metadata !594) #9, !dbg !4023
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4024
  br i1 %42, label %43, label %45, !dbg !4025

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !4026
  br label %119, !dbg !4028

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3965, metadata !594) #9, !dbg !4029
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3966, metadata !594) #9, !dbg !4030
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4031

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4032

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3965, metadata !594) #9, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3966, metadata !594) #9, !dbg !4030
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !4032
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !4033
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4034, metadata !594) #9, !dbg !4039
  %54 = load i8*, i8** %48, align 8, !dbg !4041, !tbaa !845
  %55 = load i8*, i8** %49, align 8, !dbg !4041, !tbaa !849
  %56 = icmp ult i8* %54, %55, !dbg !4041
  br i1 %56, label %59, label %57, !dbg !4041, !prof !850

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !4041
  br label %63, !dbg !4041

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4041
  store i8* %60, i8** %48, align 8, !dbg !4041, !tbaa !845
  %61 = load i8, i8* %54, align 1, !dbg !4041, !tbaa !662
  %62 = zext i8 %61 to i32, !dbg !4041
  br label %63, !dbg !4041

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4041
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3967, metadata !594) #9, !dbg !4042
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4043, !llvm.loop !4044

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4049

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4034, metadata !594) #9, !dbg !4051
  %67 = load i8*, i8** %48, align 8, !dbg !4049, !tbaa !845
  %68 = load i8*, i8** %49, align 8, !dbg !4049, !tbaa !849
  %69 = icmp ult i8* %67, %68, !dbg !4049
  br i1 %69, label %72, label %70, !dbg !4049, !prof !850

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !4049
  br label %76, !dbg !4049

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4049
  store i8* %73, i8** %48, align 8, !dbg !4049, !tbaa !845
  %74 = load i8, i8* %67, align 1, !dbg !4049, !tbaa !662
  %75 = zext i8 %74 to i32, !dbg !4049
  br label %76, !dbg !4049

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4049
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3967, metadata !594) #9, !dbg !4042
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4052, !llvm.loop !4053

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !4056
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.128, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !4057
  %81 = icmp slt i32 %80, 2, !dbg !4059
  br i1 %81, label %112, label %82, !dbg !4060

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4061
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3972, metadata !594) #9, !dbg !4062
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3973, metadata !594) #9, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3974, metadata !594) #9, !dbg !4065
  %85 = icmp eq i64 %51, 0, !dbg !4066
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4068

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3966, metadata !594) #9, !dbg !4030
  %90 = add i64 %87, 2, !dbg !4069
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !4071
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3965, metadata !594) #9, !dbg !4029
  br label %96, !dbg !4072

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4073
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3966, metadata !594) #9, !dbg !4030
  %94 = add i64 %93, 1, !dbg !4075
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !4076
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3965, metadata !594) #9, !dbg !4029
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3965, metadata !594) #9, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3966, metadata !594) #9, !dbg !4030
  %99 = icmp eq i8* %98, null, !dbg !4077
  br i1 %99, label %100, label %102, !dbg !4079

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3966, metadata !594) #9, !dbg !4030
  call void @free(i8* %52) #9, !dbg !4080
  br label %112, !dbg !4082

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !4083
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !4083
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4084
  %104 = xor i64 %84, -1, !dbg !4085
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4085
  %106 = xor i64 %83, -1, !dbg !4086
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4087, metadata !594) #9, !dbg !4096
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4095, metadata !594) #9, !dbg !4096
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !4098
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !4099
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4087, metadata !594) #9, !dbg !4100
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4095, metadata !594) #9, !dbg !4100
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !4102
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !4103
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3965, metadata !594) #9, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3966, metadata !594) #9, !dbg !4030
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !4083
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !4083
  br label %50, !dbg !4104, !llvm.loop !4053

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !4083
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !4083
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !4105
  %116 = icmp eq i64 %113, 0, !dbg !4106
  br i1 %116, label %119, label %117, !dbg !4108

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4109
  store i8 0, i8* %118, align 1, !dbg !4111, !tbaa !662
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3915, metadata !594) #9, !dbg !3985
  call void @free(i8* %29) #9, !dbg !4112
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3915, metadata !594) #9, !dbg !3985
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4113, !tbaa !601
  br label %123, !dbg !4114

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3915, metadata !594) #9, !dbg !3985
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3900, metadata !594), !dbg !4115
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3900, metadata !594), !dbg !4115
  %125 = load i8, i8* %124, align 1, !dbg !4116, !tbaa !662
  %126 = icmp eq i8 %125, 0, !dbg !4118
  br i1 %126, label %152, label %127, !dbg !4119

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4120

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3900, metadata !594), !dbg !4115
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4120
  %132 = icmp eq i32 %131, 0, !dbg !4122
  br i1 %132, label %139, label %133, !dbg !4123

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4124
  br i1 %134, label %135, label %143, !dbg !4125

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4126
  %137 = load i8, i8* %136, align 1, !dbg !4126, !tbaa !662
  %138 = icmp eq i8 %137, 0, !dbg !4127
  br i1 %138, label %139, label %143, !dbg !4128

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4129
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4131
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4132
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3899, metadata !594), !dbg !3980
  br label %152, !dbg !4133

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4134
  %145 = add i64 %144, 1, !dbg !4135
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4136
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3900, metadata !594), !dbg !4115
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4137
  %148 = add i64 %147, 1, !dbg !4138
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4139
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3900, metadata !594), !dbg !4115
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3900, metadata !594), !dbg !4115
  %150 = load i8, i8* %149, align 1, !dbg !4116, !tbaa !662
  %151 = icmp eq i8 %150, 0, !dbg !4118
  br i1 %151, label %152, label %128, !dbg !4119, !llvm.loop !4140

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3899, metadata !594), !dbg !3980
  %154 = load i8, i8* %153, align 1, !dbg !4142, !tbaa !662
  %155 = icmp eq i8 %154, 0, !dbg !4144
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0), i8* %153, !dbg !4145
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3899, metadata !594), !dbg !3980
  ret i8* %156, !dbg !4146
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

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
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !86, !92, !100, !538, !107, !114, !541, !184, !549, !566, !568, !570, !572, !574, !576, !579, !581, !193}
!llvm.ident = !{!583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583, !583}
!llvm.module.flags = !{!584, !585, !586, !587, !588}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !71, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !37)
!3 = !DIFile(filename: "src/paste.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 45, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!23 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!24 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!25 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!26 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!27 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!28 = !{!29, !31, !32, !33, !34}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 62, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!38, !41, !43, !45, !0, !67, !69}
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 59, type: !40, isLocal: true, isDefinition: true)
!40 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIGlobalVariableExpression(var: !42)
!42 = distinct !DIGlobalVariable(name: "serial_merge", scope: !2, file: !3, line: 63, type: !40, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44)
!44 = distinct !DIGlobalVariable(name: "delims", scope: !2, file: !3, line: 66, type: !29, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46)
!46 = distinct !DIGlobalVariable(name: "infomap", scope: !47, file: !48, line: 632, type: !64, isLocal: true, isDefinition: true)
!47 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !48, file: !48, line: 630, type: !49, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !53)
!48 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!53 = !{!54, !55, !56, !63}
!54 = !DILocalVariable(name: "program", arg: 1, scope: !47, file: !48, line: 630, type: !51)
!55 = !DILocalVariable(name: "node", scope: !47, file: !48, line: 642, type: !51)
!56 = !DILocalVariable(name: "map_prog", scope: !47, file: !48, line: 643, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !47, file: !48, line: 632, size: 128, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !59, file: !48, line: 632, baseType: !51, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !59, file: !48, line: 632, baseType: !51, size: 64, offset: 64)
!63 = !DILocalVariable(name: "lc_messages", scope: !47, file: !48, line: 655, type: !51)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 896, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 7)
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 71, type: !33, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "delim_end", scope: !2, file: !3, line: 69, type: !51, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1536, elements: !82)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !74, line: 50, size: 256, elements: !75)
!74 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !{!76, !77, !79, !81}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !74, line: 52, baseType: !51, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !73, file: !74, line: 55, baseType: !78, size: 32, offset: 64)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !73, file: !74, line: 56, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !73, file: !74, line: 57, baseType: !78, size: 32, offset: 192)
!82 = !{!83}
!83 = !DISubrange(count: 6)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "Version", scope: !86, file: !87, line: 2, type: !51, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, globals: !89)
!87 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{}
!89 = !{!84}
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "file_name", scope: !92, file: !97, line: 36, type: !51, isLocal: true, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, globals: !94)
!93 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !{!90, !95}
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !92, file: !97, line: 46, type: !40, isLocal: true, isDefinition: true)
!97 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "exit_failure", scope: !100, file: !103, line: 24, type: !104, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, globals: !102)
!101 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!98}
!103 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "program_name", scope: !107, file: !111, line: 33, type: !51, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !109, globals: !110)
!108 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!31, !29}
!110 = !{!105}
!111 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !114, file: !142, line: 77, type: !178, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !116, retainedTypes: !137, globals: !139)
!115 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !{!5, !117, !122}
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!120 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!121 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 46, size: 32, elements: !124)
!123 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!125 = !DIEnumerator(name: "_ISupper", value: 256)
!126 = !DIEnumerator(name: "_ISlower", value: 512)
!127 = !DIEnumerator(name: "_ISalpha", value: 1024)
!128 = !DIEnumerator(name: "_ISdigit", value: 2048)
!129 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!130 = !DIEnumerator(name: "_ISspace", value: 8192)
!131 = !DIEnumerator(name: "_ISprint", value: 16384)
!132 = !DIEnumerator(name: "_ISgraph", value: 32768)
!133 = !DIEnumerator(name: "_ISblank", value: 1)
!134 = !DIEnumerator(name: "_IScntrl", value: 2)
!135 = !DIEnumerator(name: "_ISpunct", value: 4)
!136 = !DIEnumerator(name: "_ISalnum", value: 8)
!137 = !{!78, !138, !34, !29}
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !{!112, !140, !147, !160, !162, !167, !174, !176}
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !114, file: !142, line: 93, type: !143, isLocal: false, isDefinition: true)
!142 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 320, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!145 = !{!146}
!146 = !DISubrange(count: 10)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !114, file: !142, line: 1043, type: !149, isLocal: false, isDefinition: true)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !142, line: 57, size: 448, elements: !150)
!150 = !{!151, !152, !153, !158, !159}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !149, file: !142, line: 60, baseType: !5, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !142, line: 63, baseType: !78, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !149, file: !142, line: 67, baseType: !154, size: 256, offset: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !156)
!155 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !149, file: !142, line: 70, baseType: !51, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !149, file: !142, line: 73, baseType: !51, size: 64, offset: 384)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !114, file: !142, line: 108, type: !149, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "slot0", scope: !114, file: !142, line: 834, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 256)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "slotvec", scope: !114, file: !142, line: 837, type: !169, isLocal: true, isDefinition: true)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !142, line: 826, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !142, line: 828, baseType: !34, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !170, file: !142, line: 829, baseType: !29, size: 64, offset: 64)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "nslots", scope: !114, file: !142, line: 835, type: !78, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "slotvec0", scope: !114, file: !142, line: 836, type: !170, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 704, elements: !180)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!180 = !{!181}
!181 = !DISubrange(count: 11)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !184, file: !187, line: 26, type: !188, isLocal: false, isDefinition: true)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, globals: !186)
!185 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !{!182}
!187 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 47)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !193, file: !536, line: 120, type: !537, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !195, retainedTypes: !534, globals: !535)
!194 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !{!196}
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 41, size: 32, elements: !198)
!197 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!199 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!200 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!201 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!202 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!203 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!204 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!205 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!206 = !DIEnumerator(name: "DAY_1", value: 131079)
!207 = !DIEnumerator(name: "DAY_2", value: 131080)
!208 = !DIEnumerator(name: "DAY_3", value: 131081)
!209 = !DIEnumerator(name: "DAY_4", value: 131082)
!210 = !DIEnumerator(name: "DAY_5", value: 131083)
!211 = !DIEnumerator(name: "DAY_6", value: 131084)
!212 = !DIEnumerator(name: "DAY_7", value: 131085)
!213 = !DIEnumerator(name: "ABMON_1", value: 131086)
!214 = !DIEnumerator(name: "ABMON_2", value: 131087)
!215 = !DIEnumerator(name: "ABMON_3", value: 131088)
!216 = !DIEnumerator(name: "ABMON_4", value: 131089)
!217 = !DIEnumerator(name: "ABMON_5", value: 131090)
!218 = !DIEnumerator(name: "ABMON_6", value: 131091)
!219 = !DIEnumerator(name: "ABMON_7", value: 131092)
!220 = !DIEnumerator(name: "ABMON_8", value: 131093)
!221 = !DIEnumerator(name: "ABMON_9", value: 131094)
!222 = !DIEnumerator(name: "ABMON_10", value: 131095)
!223 = !DIEnumerator(name: "ABMON_11", value: 131096)
!224 = !DIEnumerator(name: "ABMON_12", value: 131097)
!225 = !DIEnumerator(name: "MON_1", value: 131098)
!226 = !DIEnumerator(name: "MON_2", value: 131099)
!227 = !DIEnumerator(name: "MON_3", value: 131100)
!228 = !DIEnumerator(name: "MON_4", value: 131101)
!229 = !DIEnumerator(name: "MON_5", value: 131102)
!230 = !DIEnumerator(name: "MON_6", value: 131103)
!231 = !DIEnumerator(name: "MON_7", value: 131104)
!232 = !DIEnumerator(name: "MON_8", value: 131105)
!233 = !DIEnumerator(name: "MON_9", value: 131106)
!234 = !DIEnumerator(name: "MON_10", value: 131107)
!235 = !DIEnumerator(name: "MON_11", value: 131108)
!236 = !DIEnumerator(name: "MON_12", value: 131109)
!237 = !DIEnumerator(name: "AM_STR", value: 131110)
!238 = !DIEnumerator(name: "PM_STR", value: 131111)
!239 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!240 = !DIEnumerator(name: "D_FMT", value: 131113)
!241 = !DIEnumerator(name: "T_FMT", value: 131114)
!242 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!243 = !DIEnumerator(name: "ERA", value: 131116)
!244 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!245 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!246 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!247 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!248 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!249 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!250 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!251 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!252 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!253 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!254 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!255 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!256 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!257 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!258 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!259 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!260 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!261 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!262 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!263 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!264 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!265 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!266 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!267 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!268 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!269 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!270 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!271 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!272 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!273 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!274 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!275 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!276 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!277 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!278 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!279 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!280 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!281 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!282 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!283 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!284 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!285 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!286 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!287 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!288 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!289 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!290 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!291 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!292 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!293 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!294 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!295 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!296 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!297 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!298 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!299 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!300 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!301 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!302 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!303 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!304 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!305 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!306 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!307 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!308 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!309 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!310 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!311 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!312 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!313 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!314 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!315 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!316 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!317 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!318 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!319 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!320 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!321 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!322 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!323 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!324 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!325 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!326 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!327 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!328 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!329 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!330 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!331 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!332 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!334 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!335 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!336 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!337 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!338 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!339 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!340 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!341 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!342 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!343 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!344 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!345 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!346 = !DIEnumerator(name: "CODESET", value: 14)
!347 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!348 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!349 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!350 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!402 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!403 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!418 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!419 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!420 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!421 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!422 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!423 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!424 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!425 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!426 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!427 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!428 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!429 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!430 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!431 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!432 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!433 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!434 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!435 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!436 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!437 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!438 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!439 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!440 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!457 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!458 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!461 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!462 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!463 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!464 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!465 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!466 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!467 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!468 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!469 = !DIEnumerator(name: "THOUSEP", value: 65537)
!470 = !DIEnumerator(name: "__GROUPING", value: 65538)
!471 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!472 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!473 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!474 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!475 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!476 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!477 = !DIEnumerator(name: "__YESSTR", value: 327682)
!478 = !DIEnumerator(name: "__NOSTR", value: 327683)
!479 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!480 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!481 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!482 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!483 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!484 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!486 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!487 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!488 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!489 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!490 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!491 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!492 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!493 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!496 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!499 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!500 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!501 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!502 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!503 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!504 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!505 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!506 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!507 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!508 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!509 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!510 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!511 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!512 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!513 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!514 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!515 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!532 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!533 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!534 = !{!31, !29, !32}
!535 = !{!191}
!536 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !540)
!539 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!540 = !{!19}
!541 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !543, retainedTypes: !548)
!542 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!543 = !{!544}
!544 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !545, line: 41, size: 32, elements: !546)
!545 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !{!547}
!547 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!548 = !{!31}
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !565)
!550 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !{!552}
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !554, file: !553, line: 192, size: 32, elements: !563)
!553 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = distinct !DISubprogram(name: "x2nrealloc", scope: !553, file: !553, line: 180, type: !555, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !558)
!555 = !DISubroutineType(types: !556)
!556 = !{!31, !31, !557, !34}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!558 = !{!559, !560, !561, !562}
!559 = !DILocalVariable(name: "p", arg: 1, scope: !554, file: !553, line: 180, type: !31)
!560 = !DILocalVariable(name: "pn", arg: 2, scope: !554, file: !553, line: 180, type: !557)
!561 = !DILocalVariable(name: "s", arg: 3, scope: !554, file: !553, line: 180, type: !34)
!562 = !DILocalVariable(name: "n", scope: !554, file: !553, line: 182, type: !34)
!563 = !{!564}
!564 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!565 = !{!34, !29, !31}
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!567 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !548)
!569 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!571 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !548)
!573 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !548)
!575 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !578)
!577 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !{!34}
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!580 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!582 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!584 = !{i32 2, !"Dwarf Version", i32 4}
!585 = !{i32 2, !"Debug Info Version", i32 3}
!586 = !{i32 1, !"wchar_size", i32 4}
!587 = !{i32 7, !"PIC Level", i32 2}
!588 = !{i32 7, !"PIE Level", i32 2}
!589 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 431, type: !590, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !78}
!592 = !{!593}
!593 = !DILocalVariable(name: "status", arg: 1, scope: !589, file: !3, line: 431, type: !78)
!594 = !DIExpression()
!595 = !DILocation(line: 431, column: 12, scope: !589)
!596 = !DILocation(line: 433, column: 14, scope: !597)
!597 = distinct !DILexicalBlock(scope: !589, file: !3, line: 433, column: 7)
!598 = !DILocation(line: 433, column: 7, scope: !589)
!599 = !DILocation(line: 434, column: 5, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !3, line: 434, column: 5)
!601 = !{!602, !602, i64 0}
!602 = !{!"any pointer", !603, i64 0}
!603 = !{!"omnipotent char", !604, i64 0}
!604 = !{!"Simple C/C++ TBAA"}
!605 = !DILocation(line: 437, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !597, file: !3, line: 436, column: 5)
!607 = !DILocation(line: 441, column: 7, scope: !606)
!608 = !DILocation(line: 580, column: 3, scope: !609, inlinedAt: !612)
!609 = distinct !DISubprogram(name: "emit_stdin_note", scope: !48, file: !48, line: 578, type: !610, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !88)
!610 = !DISubroutineType(types: !611)
!611 = !{null}
!612 = distinct !DILocation(line: 446, column: 7, scope: !606)
!613 = !DILocation(line: 587, column: 3, scope: !614, inlinedAt: !615)
!614 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !48, file: !48, line: 585, type: !610, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !88)
!615 = distinct !DILocation(line: 447, column: 7, scope: !606)
!616 = !DILocation(line: 449, column: 7, scope: !606)
!617 = !DILocation(line: 453, column: 7, scope: !606)
!618 = !DILocation(line: 456, column: 7, scope: !606)
!619 = !DILocation(line: 457, column: 7, scope: !606)
!620 = !DILocation(line: 642, column: 15, scope: !47, inlinedAt: !621)
!621 = distinct !DILocation(line: 459, column: 7, scope: !606)
!622 = !DILocation(line: 651, column: 3, scope: !47, inlinedAt: !621)
!623 = !DILocation(line: 655, column: 29, scope: !47, inlinedAt: !621)
!624 = !DILocation(line: 655, column: 15, scope: !47, inlinedAt: !621)
!625 = !DILocation(line: 656, column: 7, scope: !626, inlinedAt: !621)
!626 = distinct !DILexicalBlock(scope: !47, file: !48, line: 656, column: 7)
!627 = !DILocation(line: 656, column: 19, scope: !626, inlinedAt: !621)
!628 = !DILocation(line: 656, column: 22, scope: !626, inlinedAt: !621)
!629 = !DILocation(line: 656, column: 7, scope: !47, inlinedAt: !621)
!630 = !DILocation(line: 662, column: 7, scope: !631, inlinedAt: !621)
!631 = distinct !DILexicalBlock(scope: !626, file: !48, line: 657, column: 5)
!632 = !DILocation(line: 664, column: 5, scope: !631, inlinedAt: !621)
!633 = !DILocation(line: 665, column: 3, scope: !47, inlinedAt: !621)
!634 = !DILocation(line: 667, column: 3, scope: !47, inlinedAt: !621)
!635 = !DILocation(line: 461, column: 3, scope: !589)
!636 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 465, type: !637, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !640)
!637 = !DISubroutineType(types: !638)
!638 = !{!78, !78, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!640 = !{!641, !642, !643, !644, !645, !646}
!641 = !DILocalVariable(name: "argc", arg: 1, scope: !636, file: !3, line: 465, type: !78)
!642 = !DILocalVariable(name: "argv", arg: 2, scope: !636, file: !3, line: 465, type: !639)
!643 = !DILocalVariable(name: "optc", scope: !636, file: !3, line: 467, type: !78)
!644 = !DILocalVariable(name: "delim_arg", scope: !636, file: !3, line: 468, type: !51)
!645 = !DILocalVariable(name: "nfiles", scope: !636, file: !3, line: 507, type: !78)
!646 = !DILocalVariable(name: "ok", scope: !636, file: !3, line: 523, type: !40)
!647 = !DILocation(line: 465, column: 11, scope: !636)
!648 = !DILocation(line: 465, column: 24, scope: !636)
!649 = !DILocation(line: 471, column: 21, scope: !636)
!650 = !DILocation(line: 471, column: 3, scope: !636)
!651 = !DILocation(line: 472, column: 3, scope: !636)
!652 = !DILocation(line: 473, column: 3, scope: !636)
!653 = !DILocation(line: 474, column: 3, scope: !636)
!654 = !DILocation(line: 476, column: 3, scope: !636)
!655 = !DILocation(line: 481, column: 3, scope: !636)
!656 = !DILocation(line: 481, column: 18, scope: !636)
!657 = !DILocation(line: 468, column: 15, scope: !636)
!658 = !DILocation(line: 467, column: 7, scope: !636)
!659 = !DILocation(line: 487, column: 24, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 484, column: 9)
!661 = distinct !DILexicalBlock(scope: !636, file: !3, line: 482, column: 5)
!662 = !{!603, !603, i64 0}
!663 = !DILocation(line: 487, column: 34, scope: !660)
!664 = !DILocation(line: 488, column: 11, scope: !660)
!665 = distinct !{!665, !655, !666}
!666 = !DILocation(line: 505, column: 5, scope: !636)
!667 = !DILocation(line: 492, column: 11, scope: !660)
!668 = !DILocation(line: 498, column: 9, scope: !660)
!669 = !DILocation(line: 500, column: 9, scope: !660)
!670 = !DILocation(line: 503, column: 11, scope: !660)
!671 = !DILocation(line: 507, column: 23, scope: !636)
!672 = !{!673, !673, i64 0}
!673 = !{!"int", !603, i64 0}
!674 = !DILocation(line: 507, column: 21, scope: !636)
!675 = !DILocation(line: 507, column: 7, scope: !636)
!676 = !DILocation(line: 508, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !636, file: !3, line: 508, column: 7)
!678 = !DILocation(line: 508, column: 7, scope: !636)
!679 = !DILocation(line: 510, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !3, line: 509, column: 5)
!681 = !DILocation(line: 510, column: 20, scope: !680)
!682 = !DILocation(line: 512, column: 5, scope: !680)
!683 = !DILocalVariable(name: "strptr", arg: 1, scope: !684, file: !3, line: 92, type: !51)
!684 = distinct !DISubprogram(name: "collapse_escapes", scope: !3, file: !3, line: 92, type: !685, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{!78, !51}
!687 = !{!683, !688, !689}
!688 = !DILocalVariable(name: "strout", scope: !684, file: !3, line: 94, type: !29)
!689 = !DILocalVariable(name: "backslash_at_end", scope: !684, file: !3, line: 95, type: !40)
!690 = !DILocation(line: 92, column: 31, scope: !684, inlinedAt: !691)
!691 = distinct !DILocation(line: 514, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !636, file: !3, line: 514, column: 7)
!693 = !DILocation(line: 94, column: 18, scope: !684, inlinedAt: !691)
!694 = !DILocation(line: 94, column: 9, scope: !684, inlinedAt: !691)
!695 = !DILocation(line: 95, column: 8, scope: !684, inlinedAt: !691)
!696 = !DILocation(line: 97, column: 10, scope: !684, inlinedAt: !691)
!697 = !DILocation(line: 99, column: 10, scope: !684, inlinedAt: !691)
!698 = !DILocation(line: 99, column: 3, scope: !684, inlinedAt: !691)
!699 = !DILocation(line: 101, column: 19, scope: !700, inlinedAt: !691)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 101, column: 11)
!701 = distinct !DILexicalBlock(scope: !684, file: !3, line: 100, column: 5)
!702 = !DILocation(line: 101, column: 11, scope: !701, inlinedAt: !691)
!703 = !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)
!704 = !DILocation(line: 102, column: 19, scope: !700, inlinedAt: !691)
!705 = !DILocation(line: 102, column: 9, scope: !700, inlinedAt: !691)
!706 = !DILocation(line: 105, column: 19, scope: !707, inlinedAt: !691)
!707 = distinct !DILexicalBlock(scope: !700, file: !3, line: 104, column: 9)
!708 = !DILocation(line: 105, column: 11, scope: !707, inlinedAt: !691)
!709 = !DILocation(line: 109, column: 15, scope: !710, inlinedAt: !691)
!710 = distinct !DILexicalBlock(scope: !707, file: !3, line: 106, column: 13)
!711 = !DILocation(line: 117, column: 15, scope: !710, inlinedAt: !691)
!712 = !DILocation(line: 121, column: 15, scope: !710, inlinedAt: !691)
!713 = !DILocation(line: 125, column: 15, scope: !710, inlinedAt: !691)
!714 = !DILocation(line: 129, column: 15, scope: !710, inlinedAt: !691)
!715 = !DILocation(line: 133, column: 15, scope: !710, inlinedAt: !691)
!716 = !DILocation(line: 137, column: 15, scope: !710, inlinedAt: !691)
!717 = !DILocation(line: 145, column: 15, scope: !710, inlinedAt: !691)
!718 = !DILocation(line: 147, column: 17, scope: !707, inlinedAt: !691)
!719 = distinct !{!719, !720, !721}
!720 = !DILocation(line: 99, column: 3, scope: !684)
!721 = !DILocation(line: 149, column: 5, scope: !684)
!722 = !DILocation(line: 153, column: 13, scope: !684, inlinedAt: !691)
!723 = !DILocation(line: 518, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !692, file: !3, line: 515, column: 5)
!725 = !DILocation(line: 523, column: 15, scope: !636)
!726 = !DILocation(line: 524, column: 15, scope: !636)
!727 = !DILocation(line: 524, column: 29, scope: !636)
!728 = !DILocation(line: 524, column: 24, scope: !636)
!729 = !DILocation(line: 523, column: 14, scope: !636)
!730 = !DILocation(line: 526, column: 9, scope: !636)
!731 = !DILocation(line: 526, column: 3, scope: !636)
!732 = !DILocation(line: 528, column: 23, scope: !733)
!733 = distinct !DILexicalBlock(scope: !636, file: !3, line: 528, column: 7)
!734 = !DILocation(line: 528, column: 34, scope: !733)
!735 = !DILocation(line: 528, column: 26, scope: !733)
!736 = !DILocation(line: 528, column: 41, scope: !733)
!737 = !DILocation(line: 528, column: 7, scope: !636)
!738 = !DILocation(line: 529, column: 5, scope: !733)
!739 = !DILocation(line: 530, column: 10, scope: !636)
!740 = !DILocation(line: 530, column: 3, scope: !636)
!741 = distinct !DISubprogram(name: "paste_serial", scope: !3, file: !3, line: 349, type: !742, isLocal: true, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{!40, !34, !639}
!744 = !{!745, !746, !747, !748, !749, !750, !751, !807, !811}
!745 = !DILocalVariable(name: "nfiles", arg: 1, scope: !741, file: !3, line: 349, type: !34)
!746 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !741, file: !3, line: 349, type: !639)
!747 = !DILocalVariable(name: "ok", scope: !741, file: !3, line: 351, type: !40)
!748 = !DILocalVariable(name: "charnew", scope: !741, file: !3, line: 352, type: !78)
!749 = !DILocalVariable(name: "charold", scope: !741, file: !3, line: 352, type: !78)
!750 = !DILocalVariable(name: "delimptr", scope: !741, file: !3, line: 353, type: !51)
!751 = !DILocalVariable(name: "fileptr", scope: !741, file: !3, line: 354, type: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !754, line: 7, baseType: !755)
!754 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 241, size: 1728, elements: !757)
!756 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !778, !779, !780, !781, !785, !786, !788, !792, !795, !797, !798, !799, !800, !801, !802, !803}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !755, file: !756, line: 242, baseType: !78, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !755, file: !756, line: 247, baseType: !29, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !755, file: !756, line: 248, baseType: !29, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !755, file: !756, line: 249, baseType: !29, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !755, file: !756, line: 250, baseType: !29, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !755, file: !756, line: 251, baseType: !29, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !755, file: !756, line: 252, baseType: !29, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !755, file: !756, line: 253, baseType: !29, size: 64, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !755, file: !756, line: 254, baseType: !29, size: 64, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !755, file: !756, line: 256, baseType: !29, size: 64, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !755, file: !756, line: 257, baseType: !29, size: 64, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !755, file: !756, line: 258, baseType: !29, size: 64, offset: 704)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !755, file: !756, line: 260, baseType: !771, size: 64, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !756, line: 156, size: 192, elements: !773)
!773 = !{!774, !775, !777}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !772, file: !756, line: 157, baseType: !771, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !772, file: !756, line: 158, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !772, file: !756, line: 162, baseType: !78, size: 32, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !755, file: !756, line: 262, baseType: !776, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !755, file: !756, line: 264, baseType: !78, size: 32, offset: 896)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !755, file: !756, line: 268, baseType: !78, size: 32, offset: 928)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !755, file: !756, line: 270, baseType: !782, size: 64, offset: 960)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !783, line: 140, baseType: !784)
!783 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!784 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !755, file: !756, line: 274, baseType: !138, size: 16, offset: 1024)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !755, file: !756, line: 275, baseType: !787, size: 8, offset: 1040)
!787 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !755, file: !756, line: 276, baseType: !789, size: 8, offset: 1048)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 1)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !755, file: !756, line: 280, baseType: !793, size: 64, offset: 1088)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !756, line: 150, baseType: null)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !755, file: !756, line: 289, baseType: !796, size: 64, offset: 1152)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !783, line: 141, baseType: !784)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !755, file: !756, line: 297, baseType: !31, size: 64, offset: 1216)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !755, file: !756, line: 298, baseType: !31, size: 64, offset: 1280)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !755, file: !756, line: 299, baseType: !31, size: 64, offset: 1344)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !755, file: !756, line: 300, baseType: !31, size: 64, offset: 1408)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !755, file: !756, line: 302, baseType: !34, size: 64, offset: 1472)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !755, file: !756, line: 303, baseType: !78, size: 32, offset: 1536)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !755, file: !756, line: 305, baseType: !804, size: 160, offset: 1568)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 20)
!807 = !DILocalVariable(name: "saved_errno", scope: !808, file: !3, line: 358, type: !78)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 357, column: 5)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 356, column: 3)
!810 = distinct !DILexicalBlock(scope: !741, file: !3, line: 356, column: 3)
!811 = !DILocalVariable(name: "is_stdin", scope: !808, file: !3, line: 359, type: !40)
!812 = !DILocation(line: 349, column: 22, scope: !741)
!813 = !DILocation(line: 349, column: 37, scope: !741)
!814 = !DILocation(line: 351, column: 8, scope: !741)
!815 = !DILocation(line: 356, column: 3, scope: !810)
!816 = !DILocation(line: 359, column: 23, scope: !808)
!817 = !DILocation(line: 360, column: 11, scope: !808)
!818 = !DILocation(line: 363, column: 21, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 361, column: 9)
!820 = distinct !DILexicalBlock(scope: !808, file: !3, line: 360, column: 11)
!821 = !DILocation(line: 354, column: 9, scope: !741)
!822 = !DILocation(line: 364, column: 9, scope: !819)
!823 = !DILocation(line: 367, column: 21, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !3, line: 366, column: 9)
!825 = !DILocation(line: 368, column: 23, scope: !826)
!826 = distinct !DILexicalBlock(scope: !824, file: !3, line: 368, column: 15)
!827 = !DILocation(line: 368, column: 15, scope: !824)
!828 = !DILocation(line: 370, column: 25, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 369, column: 13)
!830 = !DILocation(line: 370, column: 38, scope: !829)
!831 = !DILocation(line: 370, column: 15, scope: !829)
!832 = !DILocation(line: 372, column: 15, scope: !829)
!833 = !DILocation(line: 374, column: 11, scope: !824)
!834 = !DILocation(line: 377, column: 18, scope: !808)
!835 = !DILocation(line: 353, column: 15, scope: !741)
!836 = !DILocalVariable(name: "__fp", arg: 1, scope: !837, file: !838, line: 63, type: !752)
!837 = distinct !DISubprogram(name: "getc_unlocked", scope: !838, file: !838, line: 63, type: !839, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !841)
!838 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!839 = !DISubroutineType(types: !840)
!840 = !{!78, !752}
!841 = !{!836}
!842 = !DILocation(line: 63, column: 22, scope: !837, inlinedAt: !843)
!843 = distinct !DILocation(line: 379, column: 17, scope: !808)
!844 = !DILocation(line: 65, column: 10, scope: !837, inlinedAt: !843)
!845 = !{!846, !602, i64 8}
!846 = !{!"_IO_FILE", !673, i64 0, !602, i64 8, !602, i64 16, !602, i64 24, !602, i64 32, !602, i64 40, !602, i64 48, !602, i64 56, !602, i64 64, !602, i64 72, !602, i64 80, !602, i64 88, !602, i64 96, !602, i64 104, !673, i64 112, !673, i64 116, !847, i64 120, !848, i64 128, !603, i64 130, !603, i64 131, !602, i64 136, !847, i64 144, !602, i64 152, !602, i64 160, !602, i64 168, !602, i64 176, !847, i64 184, !673, i64 192, !603, i64 196}
!847 = !{!"long", !603, i64 0}
!848 = !{!"short", !603, i64 0}
!849 = !{!846, !602, i64 16}
!850 = !{!"branch_weights", i32 2000, i32 1}
!851 = !DILocation(line: 352, column: 16, scope: !741)
!852 = !DILocation(line: 380, column: 21, scope: !808)
!853 = !DILocation(line: 358, column: 11, scope: !808)
!854 = !DILocation(line: 381, column: 11, scope: !808)
!855 = !DILocation(line: 381, column: 19, scope: !856)
!856 = distinct !DILexicalBlock(scope: !808, file: !3, line: 381, column: 11)
!857 = !DILocation(line: 411, column: 22, scope: !858)
!858 = distinct !DILexicalBlock(scope: !808, file: !3, line: 411, column: 11)
!859 = !DILocation(line: 411, column: 11, scope: !808)
!860 = !DILocation(line: 389, column: 11, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 382, column: 9)
!862 = !DILocation(line: 65, column: 10, scope: !837, inlinedAt: !863)
!863 = distinct !DILocation(line: 389, column: 29, scope: !861)
!864 = !DILocation(line: 63, column: 22, scope: !837, inlinedAt: !863)
!865 = !DILocation(line: 352, column: 7, scope: !741)
!866 = !DILocation(line: 389, column: 45, scope: !861)
!867 = !DILocation(line: 392, column: 30, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 392, column: 19)
!869 = distinct !DILexicalBlock(scope: !861, file: !3, line: 390, column: 13)
!870 = !DILocation(line: 392, column: 27, scope: !868)
!871 = !DILocation(line: 392, column: 19, scope: !869)
!872 = !DILocation(line: 394, column: 23, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 394, column: 23)
!874 = distinct !DILexicalBlock(scope: !868, file: !3, line: 393, column: 17)
!875 = !DILocation(line: 394, column: 33, scope: !873)
!876 = !DILocation(line: 394, column: 23, scope: !874)
!877 = !DILocalVariable(name: "c", arg: 1, scope: !878, file: !3, line: 169, type: !30)
!878 = distinct !DISubprogram(name: "xputchar", scope: !3, file: !3, line: 169, type: !879, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !30}
!881 = !{!877}
!882 = !DILocation(line: 169, column: 16, scope: !878, inlinedAt: !883)
!883 = distinct !DILocation(line: 395, column: 21, scope: !873)
!884 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !890)
!885 = distinct !DISubprogram(name: "putchar_unlocked", scope: !838, file: !838, line: 105, type: !886, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{!78, !78}
!888 = !{!889}
!889 = !DILocalVariable(name: "__c", arg: 1, scope: !885, file: !838, line: 105, type: !78)
!890 = distinct !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !883)
!891 = distinct !DILexicalBlock(scope: !878, file: !3, line: 171, column: 7)
!892 = !{!846, !602, i64 40}
!893 = !{!846, !602, i64 48}
!894 = !DILocation(line: 171, column: 7, scope: !878, inlinedAt: !883)
!895 = !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !883)
!896 = !DILocation(line: 171, column: 19, scope: !891, inlinedAt: !883)
!897 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !883)
!898 = !DILocation(line: 397, column: 23, scope: !899)
!899 = distinct !DILexicalBlock(scope: !874, file: !3, line: 397, column: 23)
!900 = !DILocation(line: 397, column: 37, scope: !899)
!901 = !DILocation(line: 397, column: 34, scope: !899)
!902 = !DILocation(line: 398, column: 32, scope: !899)
!903 = !DILocation(line: 397, column: 23, scope: !874)
!904 = distinct !{!904, !860, !905}
!905 = !DILocation(line: 404, column: 13, scope: !861)
!906 = !DILocation(line: 169, column: 16, scope: !878, inlinedAt: !907)
!907 = distinct !DILocation(line: 401, column: 17, scope: !868)
!908 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !909)
!909 = distinct !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !907)
!910 = !DILocation(line: 401, column: 27, scope: !868)
!911 = !DILocation(line: 171, column: 7, scope: !878, inlinedAt: !907)
!912 = !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !907)
!913 = !DILocation(line: 171, column: 19, scope: !891, inlinedAt: !907)
!914 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !907)
!915 = !DILocation(line: 405, column: 25, scope: !861)
!916 = !DILocation(line: 169, column: 16, scope: !878, inlinedAt: !917)
!917 = distinct !DILocation(line: 408, column: 11, scope: !861)
!918 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !919)
!919 = distinct !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !917)
!920 = !DILocation(line: 408, column: 21, scope: !861)
!921 = !DILocation(line: 171, column: 7, scope: !878, inlinedAt: !917)
!922 = !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !917)
!923 = !DILocation(line: 171, column: 19, scope: !891, inlinedAt: !917)
!924 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !917)
!925 = !DILocation(line: 411, column: 19, scope: !858)
!926 = !DILocation(line: 169, column: 16, scope: !878, inlinedAt: !927)
!927 = distinct !DILocation(line: 412, column: 9, scope: !858)
!928 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !929)
!929 = distinct !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !927)
!930 = !DILocation(line: 171, column: 7, scope: !878, inlinedAt: !927)
!931 = !DILocation(line: 171, column: 19, scope: !891, inlinedAt: !927)
!932 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !927)
!933 = !DILocalVariable(name: "__stream", arg: 1, scope: !934, file: !838, line: 132, type: !752)
!934 = distinct !DISubprogram(name: "ferror_unlocked", scope: !838, file: !838, line: 132, type: !839, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !935)
!935 = !{!933}
!936 = !DILocation(line: 132, column: 1, scope: !934, inlinedAt: !937)
!937 = distinct !DILocation(line: 414, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !808, file: !3, line: 414, column: 11)
!939 = !DILocation(line: 134, column: 10, scope: !934, inlinedAt: !937)
!940 = !{!846, !673, i64 0}
!941 = !DILocation(line: 414, column: 11, scope: !938)
!942 = !DILocation(line: 414, column: 11, scope: !808)
!943 = !DILocation(line: 416, column: 40, scope: !944)
!944 = distinct !DILexicalBlock(scope: !938, file: !3, line: 415, column: 9)
!945 = !DILocation(line: 416, column: 11, scope: !944)
!946 = !DILocation(line: 418, column: 9, scope: !944)
!947 = !DILocation(line: 419, column: 11, scope: !808)
!948 = !DILocation(line: 420, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !808, file: !3, line: 419, column: 11)
!950 = !DILocation(line: 421, column: 16, scope: !951)
!951 = distinct !DILexicalBlock(scope: !949, file: !3, line: 421, column: 16)
!952 = !DILocation(line: 421, column: 33, scope: !951)
!953 = !DILocation(line: 421, column: 16, scope: !949)
!954 = !DILocation(line: 423, column: 21, scope: !955)
!955 = distinct !DILexicalBlock(scope: !951, file: !3, line: 422, column: 9)
!956 = !DILocation(line: 423, column: 34, scope: !955)
!957 = !DILocation(line: 423, column: 11, scope: !955)
!958 = !DILocation(line: 425, column: 9, scope: !955)
!959 = !DILocation(line: 356, column: 24, scope: !809)
!960 = !DILocation(line: 356, column: 35, scope: !809)
!961 = distinct !{!961, !815, !962}
!962 = !DILocation(line: 426, column: 5, scope: !810)
!963 = !DILocation(line: 427, column: 10, scope: !741)
!964 = !DILocation(line: 427, column: 3, scope: !741)
!965 = distinct !DISubprogram(name: "paste_parallel", scope: !3, file: !3, line: 180, type: !742, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !966)
!966 = !{!967, !968, !969, !970, !971, !973, !974, !975, !977, !978, !979, !980, !984, !985, !986}
!967 = !DILocalVariable(name: "nfiles", arg: 1, scope: !965, file: !3, line: 180, type: !34)
!968 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !965, file: !3, line: 180, type: !639)
!969 = !DILocalVariable(name: "ok", scope: !965, file: !3, line: 182, type: !40)
!970 = !DILocalVariable(name: "delbuf", scope: !965, file: !3, line: 187, type: !29)
!971 = !DILocalVariable(name: "fileptr", scope: !965, file: !3, line: 191, type: !972)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!973 = !DILocalVariable(name: "files_open", scope: !965, file: !3, line: 194, type: !34)
!974 = !DILocalVariable(name: "opened_stdin", scope: !965, file: !3, line: 197, type: !40)
!975 = !DILocalVariable(name: "somedone", scope: !976, file: !3, line: 231, type: !40)
!976 = distinct !DILexicalBlock(scope: !965, file: !3, line: 229, column: 5)
!977 = !DILocalVariable(name: "delimptr", scope: !976, file: !3, line: 232, type: !51)
!978 = !DILocalVariable(name: "delims_saved", scope: !976, file: !3, line: 233, type: !34)
!979 = !DILocalVariable(name: "i", scope: !976, file: !3, line: 234, type: !34)
!980 = !DILocalVariable(name: "chr", scope: !981, file: !3, line: 238, type: !78)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 237, column: 9)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 236, column: 7)
!983 = distinct !DILexicalBlock(scope: !976, file: !3, line: 236, column: 7)
!984 = !DILocalVariable(name: "err", scope: !981, file: !3, line: 239, type: !78)
!985 = !DILocalVariable(name: "sometodo", scope: !981, file: !3, line: 240, type: !40)
!986 = !DILocalVariable(name: "c", scope: !987, file: !3, line: 333, type: !30)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 330, column: 17)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 320, column: 19)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 315, column: 13)
!990 = distinct !DILexicalBlock(scope: !981, file: !3, line: 264, column: 15)
!991 = !DILocation(line: 180, column: 24, scope: !965)
!992 = !DILocation(line: 180, column: 39, scope: !965)
!993 = !DILocation(line: 182, column: 8, scope: !965)
!994 = !DILocation(line: 187, column: 34, scope: !965)
!995 = !DILocation(line: 187, column: 18, scope: !965)
!996 = !DILocation(line: 187, column: 9, scope: !965)
!997 = !DILocation(line: 191, column: 37, scope: !965)
!998 = !DILocalVariable(name: "n", arg: 1, scope: !999, file: !553, line: 105, type: !34)
!999 = distinct !DISubprogram(name: "xnmalloc", scope: !553, file: !553, line: 105, type: !1000, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!31, !34, !34}
!1002 = !{!998, !1003}
!1003 = !DILocalVariable(name: "s", arg: 2, scope: !999, file: !553, line: 105, type: !34)
!1004 = !DILocation(line: 105, column: 18, scope: !999, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 191, column: 20, scope: !965)
!1006 = !DILocation(line: 105, column: 28, scope: !999, inlinedAt: !1005)
!1007 = !DILocation(line: 107, column: 7, scope: !1008, inlinedAt: !1005)
!1008 = distinct !DILexicalBlock(scope: !999, file: !553, line: 107, column: 7)
!1009 = !DILocation(line: 107, column: 7, scope: !999, inlinedAt: !1005)
!1010 = !DILocation(line: 108, column: 5, scope: !1008, inlinedAt: !1005)
!1011 = !DILocation(line: 109, column: 21, scope: !999, inlinedAt: !1005)
!1012 = !DILocation(line: 109, column: 10, scope: !999, inlinedAt: !1005)
!1013 = !DILocation(line: 191, column: 20, scope: !965)
!1014 = !DILocation(line: 191, column: 10, scope: !965)
!1015 = !DILocation(line: 197, column: 8, scope: !965)
!1016 = !DILocation(line: 194, column: 10, scope: !965)
!1017 = !DILocation(line: 203, column: 35, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 203, column: 3)
!1019 = distinct !DILexicalBlock(scope: !965, file: !3, line: 203, column: 3)
!1020 = !DILocation(line: 203, column: 3, scope: !1019)
!1021 = !DILocation(line: 205, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 205, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 204, column: 5)
!1024 = !DILocation(line: 205, column: 11, scope: !1023)
!1025 = !DILocation(line: 208, column: 33, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 206, column: 9)
!1027 = !DILocation(line: 208, column: 11, scope: !1026)
!1028 = !DILocation(line: 208, column: 31, scope: !1026)
!1029 = !DILocation(line: 209, column: 9, scope: !1026)
!1030 = !DILocation(line: 212, column: 33, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 211, column: 9)
!1032 = !DILocation(line: 212, column: 11, scope: !1031)
!1033 = !DILocation(line: 212, column: 31, scope: !1031)
!1034 = !DILocation(line: 213, column: 35, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 213, column: 15)
!1036 = !DILocation(line: 213, column: 15, scope: !1031)
!1037 = !DILocation(line: 214, column: 13, scope: !1035)
!1038 = !DILocation(line: 215, column: 20, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 215, column: 20)
!1040 = !DILocation(line: 215, column: 49, scope: !1039)
!1041 = !DILocation(line: 215, column: 20, scope: !1035)
!1042 = !DILocation(line: 217, column: 11, scope: !1031)
!1043 = !DILocation(line: 203, column: 45, scope: !1018)
!1044 = distinct !{!1044, !1020, !1045}
!1045 = !DILocation(line: 219, column: 5, scope: !1019)
!1046 = !DILocation(line: 221, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !965, file: !3, line: 221, column: 7)
!1048 = !DILocation(line: 221, column: 20, scope: !1047)
!1049 = !DILocation(line: 221, column: 7, scope: !965)
!1050 = !DILocation(line: 222, column: 5, scope: !1047)
!1051 = !DILocation(line: 239, column: 15, scope: !981)
!1052 = !DILocation(line: 238, column: 15, scope: !981)
!1053 = !DILocation(line: 228, column: 3, scope: !965)
!1054 = !DILocation(line: 236, column: 30, scope: !982)
!1055 = !DILocation(line: 231, column: 12, scope: !976)
!1056 = !DILocation(line: 232, column: 19, scope: !976)
!1057 = !DILocation(line: 233, column: 14, scope: !976)
!1058 = !DILocation(line: 234, column: 14, scope: !976)
!1059 = !DILocation(line: 236, column: 7, scope: !983)
!1060 = !DILocation(line: 232, column: 30, scope: !976)
!1061 = !DILocation(line: 240, column: 16, scope: !981)
!1062 = !DILocation(line: 242, column: 15, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !981, file: !3, line: 242, column: 15)
!1064 = !DILocation(line: 242, column: 15, scope: !981)
!1065 = !DILocation(line: 63, column: 22, scope: !837, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 244, column: 21, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 243, column: 13)
!1068 = !DILocation(line: 65, column: 10, scope: !837, inlinedAt: !1066)
!1069 = !DILocation(line: 245, column: 21, scope: !1067)
!1070 = !DILocation(line: 246, column: 23, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 246, column: 19)
!1072 = !DILocation(line: 246, column: 33, scope: !1071)
!1073 = !DILocation(line: 246, column: 30, scope: !1071)
!1074 = !DILocation(line: 248, column: 23, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 248, column: 23)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 247, column: 17)
!1077 = !DILocation(line: 248, column: 64, scope: !1075)
!1078 = !DILocation(line: 248, column: 23, scope: !1076)
!1079 = !DILocation(line: 249, column: 21, scope: !1075)
!1080 = !DILocation(line: 253, column: 26, scope: !1067)
!1081 = !DILocation(line: 253, column: 15, scope: !1067)
!1082 = !DILocation(line: 256, column: 30, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 256, column: 23)
!1084 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 254, column: 17)
!1085 = !DILocation(line: 256, column: 27, scope: !1083)
!1086 = !DILocation(line: 256, column: 23, scope: !1084)
!1087 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 258, column: 19, scope: !1084)
!1090 = !DILocation(line: 169, column: 16, scope: !878, inlinedAt: !1089)
!1091 = !DILocation(line: 258, column: 29, scope: !1084)
!1092 = !DILocation(line: 171, column: 7, scope: !878, inlinedAt: !1089)
!1093 = !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1089)
!1094 = !DILocation(line: 171, column: 19, scope: !891, inlinedAt: !1089)
!1095 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !1089)
!1096 = !DILocation(line: 63, column: 22, scope: !837, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 259, column: 25, scope: !1084)
!1098 = !DILocation(line: 65, column: 10, scope: !837, inlinedAt: !1097)
!1099 = distinct !{!1099, !1081, !1100}
!1100 = !DILocation(line: 261, column: 17, scope: !1067)
!1101 = !DILocation(line: 132, column: 1, scope: !934, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 270, column: 23, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 270, column: 23)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 269, column: 17)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 268, column: 19)
!1106 = distinct !DILexicalBlock(scope: !990, file: !3, line: 265, column: 13)
!1107 = !DILocation(line: 134, column: 10, scope: !934, inlinedAt: !1102)
!1108 = !DILocation(line: 270, column: 23, scope: !1103)
!1109 = !DILocation(line: 270, column: 23, scope: !1104)
!1110 = !DILocation(line: 272, column: 44, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 271, column: 21)
!1112 = !DILocation(line: 272, column: 23, scope: !1111)
!1113 = !DILocation(line: 274, column: 21, scope: !1111)
!1114 = !DILocation(line: 275, column: 37, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 275, column: 23)
!1116 = !DILocation(line: 275, column: 34, scope: !1115)
!1117 = !DILocation(line: 275, column: 23, scope: !1104)
!1118 = !DILocation(line: 276, column: 21, scope: !1115)
!1119 = !DILocation(line: 277, column: 28, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 277, column: 28)
!1121 = !DILocation(line: 277, column: 48, scope: !1120)
!1122 = !DILocation(line: 277, column: 28, scope: !1115)
!1123 = !DILocation(line: 279, column: 33, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 278, column: 21)
!1125 = !DILocation(line: 279, column: 46, scope: !1124)
!1126 = !DILocation(line: 279, column: 23, scope: !1124)
!1127 = !DILocation(line: 281, column: 21, scope: !1124)
!1128 = !DILocation(line: 283, column: 30, scope: !1104)
!1129 = !DILocation(line: 284, column: 29, scope: !1104)
!1130 = !DILocation(line: 285, column: 17, scope: !1104)
!1131 = !DILocation(line: 287, column: 21, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 287, column: 19)
!1133 = !DILocation(line: 287, column: 25, scope: !1132)
!1134 = !DILocation(line: 287, column: 19, scope: !1106)
!1135 = !DILocation(line: 291, column: 23, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 291, column: 23)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 288, column: 17)
!1138 = !DILocation(line: 291, column: 23, scope: !1137)
!1139 = !DILocation(line: 294, column: 27, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 294, column: 27)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 292, column: 21)
!1142 = !DILocation(line: 294, column: 27, scope: !1141)
!1143 = !DILocation(line: 296, column: 31, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 296, column: 31)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 295, column: 25)
!1146 = !DILocation(line: 297, column: 31, scope: !1144)
!1147 = !DILocation(line: 296, column: 31, scope: !1145)
!1148 = !DILocation(line: 298, column: 29, scope: !1144)
!1149 = !DILocation(line: 169, column: 16, scope: !878, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 301, column: 23, scope: !1141)
!1151 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1150)
!1153 = !DILocation(line: 171, column: 7, scope: !878, inlinedAt: !1150)
!1154 = !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1150)
!1155 = !DILocation(line: 171, column: 19, scope: !891, inlinedAt: !1150)
!1156 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !1150)
!1157 = !DILocation(line: 308, column: 23, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 308, column: 23)
!1159 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 306, column: 17)
!1160 = !DILocation(line: 308, column: 33, scope: !1158)
!1161 = !DILocation(line: 308, column: 23, scope: !1159)
!1162 = !DILocation(line: 309, column: 40, scope: !1158)
!1163 = !DILocation(line: 309, column: 21, scope: !1158)
!1164 = !DILocation(line: 309, column: 44, scope: !1158)
!1165 = !DILocation(line: 310, column: 23, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 310, column: 23)
!1167 = !DILocation(line: 310, column: 37, scope: !1166)
!1168 = !DILocation(line: 310, column: 34, scope: !1166)
!1169 = !DILocation(line: 311, column: 32, scope: !1166)
!1170 = !DILocation(line: 310, column: 23, scope: !1159)
!1171 = !DILocation(line: 320, column: 21, scope: !988)
!1172 = !DILocation(line: 320, column: 25, scope: !988)
!1173 = !DILocation(line: 320, column: 19, scope: !989)
!1174 = !DILocation(line: 322, column: 30, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 322, column: 23)
!1176 = distinct !DILexicalBlock(scope: !988, file: !3, line: 321, column: 17)
!1177 = !DILocation(line: 322, column: 27, scope: !1175)
!1178 = !DILocation(line: 322, column: 48, scope: !1175)
!1179 = !DILocation(line: 322, column: 41, scope: !1175)
!1180 = !DILocation(line: 169, column: 16, scope: !878, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 323, column: 21, scope: !1175)
!1182 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1181)
!1184 = !DILocation(line: 323, column: 31, scope: !1175)
!1185 = !DILocation(line: 171, column: 7, scope: !878, inlinedAt: !1181)
!1186 = !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1181)
!1187 = !DILocation(line: 171, column: 19, scope: !891, inlinedAt: !1181)
!1188 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !1181)
!1189 = !DILocation(line: 324, column: 23, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 324, column: 23)
!1191 = !DILocation(line: 324, column: 33, scope: !1190)
!1192 = !DILocation(line: 324, column: 23, scope: !1176)
!1193 = !DILocation(line: 169, column: 16, scope: !878, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 325, column: 21, scope: !1190)
!1195 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1194)
!1197 = !DILocation(line: 171, column: 7, scope: !878, inlinedAt: !1194)
!1198 = !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1194)
!1199 = !DILocation(line: 171, column: 19, scope: !891, inlinedAt: !1194)
!1200 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !1194)
!1201 = !DILocation(line: 326, column: 23, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 326, column: 23)
!1203 = !DILocation(line: 326, column: 37, scope: !1202)
!1204 = !DILocation(line: 326, column: 34, scope: !1202)
!1205 = !DILocation(line: 327, column: 32, scope: !1202)
!1206 = !DILocation(line: 326, column: 23, scope: !1176)
!1207 = !DILocation(line: 333, column: 33, scope: !987)
!1208 = !DILocation(line: 333, column: 42, scope: !987)
!1209 = !DILocation(line: 333, column: 29, scope: !987)
!1210 = !DILocation(line: 333, column: 24, scope: !987)
!1211 = !DILocation(line: 169, column: 16, scope: !878, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 334, column: 19, scope: !987)
!1213 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1212)
!1215 = !DILocation(line: 333, column: 28, scope: !987)
!1216 = !DILocation(line: 171, column: 7, scope: !878, inlinedAt: !1212)
!1217 = !DILocation(line: 171, column: 7, scope: !891, inlinedAt: !1212)
!1218 = !DILocation(line: 171, column: 19, scope: !891, inlinedAt: !1212)
!1219 = !DILocation(line: 172, column: 5, scope: !891, inlinedAt: !1212)
!1220 = !DILocation(line: 236, column: 46, scope: !982)
!1221 = !DILocation(line: 236, column: 21, scope: !982)
!1222 = distinct !{!1222, !1059, !1223}
!1223 = !DILocation(line: 337, column: 9, scope: !983)
!1224 = distinct !{!1224, !1053, !1225}
!1225 = !DILocation(line: 338, column: 5, scope: !965)
!1226 = !DILocation(line: 339, column: 3, scope: !965)
!1227 = !DILocation(line: 340, column: 3, scope: !965)
!1228 = !DILocation(line: 341, column: 10, scope: !965)
!1229 = !DILocation(line: 341, column: 3, scope: !965)
!1230 = distinct !DISubprogram(name: "write_error", scope: !3, file: !3, line: 161, type: !610, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !88)
!1231 = !DILocation(line: 163, column: 3, scope: !1230)
!1232 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !97, file: !97, line: 41, type: !49, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !1233)
!1233 = !{!1234}
!1234 = !DILocalVariable(name: "file", arg: 1, scope: !1232, file: !97, line: 41, type: !51)
!1235 = !DILocation(line: 41, column: 41, scope: !1232)
!1236 = !DILocation(line: 43, column: 13, scope: !1232)
!1237 = !DILocation(line: 44, column: 1, scope: !1232)
!1238 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !97, file: !97, line: 78, type: !1239, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !40}
!1241 = !{!1242}
!1242 = !DILocalVariable(name: "ignore", arg: 1, scope: !1238, file: !97, line: 78, type: !40)
!1243 = !DILocation(line: 78, column: 37, scope: !1238)
!1244 = !DILocation(line: 80, column: 16, scope: !1238)
!1245 = !{!1246, !1246, i64 0}
!1246 = !{!"_Bool", !603, i64 0}
!1247 = !DILocation(line: 81, column: 1, scope: !1238)
!1248 = distinct !DISubprogram(name: "close_stdout", scope: !97, file: !97, line: 107, type: !610, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !1249)
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "write_error", scope: !1251, file: !97, line: 112, type: !51)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !97, line: 111, column: 5)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !97, line: 109, column: 7)
!1253 = !DILocation(line: 109, column: 21, scope: !1252)
!1254 = !DILocation(line: 109, column: 7, scope: !1252)
!1255 = !DILocation(line: 109, column: 29, scope: !1252)
!1256 = !DILocation(line: 110, column: 7, scope: !1252)
!1257 = !DILocation(line: 110, column: 12, scope: !1252)
!1258 = !{i8 0, i8 2}
!1259 = !DILocation(line: 114, column: 19, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1251, file: !97, line: 113, column: 11)
!1261 = !DILocation(line: 110, column: 25, scope: !1252)
!1262 = !DILocation(line: 110, column: 28, scope: !1252)
!1263 = !DILocation(line: 110, column: 34, scope: !1252)
!1264 = !DILocation(line: 109, column: 7, scope: !1248)
!1265 = !DILocation(line: 112, column: 33, scope: !1251)
!1266 = !DILocation(line: 112, column: 19, scope: !1251)
!1267 = !DILocation(line: 113, column: 11, scope: !1260)
!1268 = !DILocation(line: 113, column: 11, scope: !1251)
!1269 = !DILocation(line: 114, column: 36, scope: !1260)
!1270 = !DILocation(line: 114, column: 9, scope: !1260)
!1271 = !DILocation(line: 117, column: 9, scope: !1260)
!1272 = !DILocation(line: 119, column: 14, scope: !1251)
!1273 = !DILocation(line: 119, column: 7, scope: !1251)
!1274 = !DILocation(line: 122, column: 22, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1248, file: !97, line: 122, column: 8)
!1276 = !DILocation(line: 122, column: 8, scope: !1275)
!1277 = !DILocation(line: 122, column: 30, scope: !1275)
!1278 = !DILocation(line: 122, column: 8, scope: !1248)
!1279 = !DILocation(line: 123, column: 13, scope: !1275)
!1280 = !DILocation(line: 123, column: 6, scope: !1275)
!1281 = !DILocation(line: 124, column: 1, scope: !1248)
!1282 = distinct !DISubprogram(name: "fdadvise", scope: !1283, file: !1283, line: 31, type: !1284, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !1289)
!1283 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !78, !1286, !1286, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1287, line: 57, baseType: !782)
!1287 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1289 = !{!1290, !1291, !1292, !1293, !1294}
!1290 = !DILocalVariable(name: "fd", arg: 1, scope: !1282, file: !1283, line: 31, type: !78)
!1291 = !DILocalVariable(name: "offset", arg: 2, scope: !1282, file: !1283, line: 31, type: !1286)
!1292 = !DILocalVariable(name: "len", arg: 3, scope: !1282, file: !1283, line: 31, type: !1286)
!1293 = !DILocalVariable(name: "advice", arg: 4, scope: !1282, file: !1283, line: 31, type: !1288)
!1294 = !DILocalVariable(name: "__x", scope: !1295, file: !1283, line: 34, type: !78)
!1295 = distinct !DILexicalBlock(scope: !1282, file: !1283, line: 34, column: 3)
!1296 = !DILocation(line: 31, column: 15, scope: !1282)
!1297 = !DILocation(line: 31, column: 25, scope: !1282)
!1298 = !DILocation(line: 31, column: 39, scope: !1282)
!1299 = !DILocation(line: 31, column: 54, scope: !1282)
!1300 = !DILocation(line: 34, column: 3, scope: !1295)
!1301 = !DILocation(line: 36, column: 1, scope: !1282)
!1302 = distinct !DISubprogram(name: "fadvise", scope: !1283, file: !1283, line: 39, type: !1303, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !1345)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1305, !1288}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !754, line: 7, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 241, size: 1728, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1307, file: !756, line: 242, baseType: !78, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1307, file: !756, line: 247, baseType: !29, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1307, file: !756, line: 248, baseType: !29, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1307, file: !756, line: 249, baseType: !29, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1307, file: !756, line: 250, baseType: !29, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1307, file: !756, line: 251, baseType: !29, size: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1307, file: !756, line: 252, baseType: !29, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1307, file: !756, line: 253, baseType: !29, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1307, file: !756, line: 254, baseType: !29, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1307, file: !756, line: 256, baseType: !29, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1307, file: !756, line: 257, baseType: !29, size: 64, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1307, file: !756, line: 258, baseType: !29, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1307, file: !756, line: 260, baseType: !1322, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !756, line: 156, size: 192, elements: !1324)
!1324 = !{!1325, !1326, !1328}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1323, file: !756, line: 157, baseType: !1322, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1323, file: !756, line: 158, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1323, file: !756, line: 162, baseType: !78, size: 32, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1307, file: !756, line: 262, baseType: !1327, size: 64, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1307, file: !756, line: 264, baseType: !78, size: 32, offset: 896)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1307, file: !756, line: 268, baseType: !78, size: 32, offset: 928)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1307, file: !756, line: 270, baseType: !782, size: 64, offset: 960)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1307, file: !756, line: 274, baseType: !138, size: 16, offset: 1024)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1307, file: !756, line: 275, baseType: !787, size: 8, offset: 1040)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1307, file: !756, line: 276, baseType: !789, size: 8, offset: 1048)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1307, file: !756, line: 280, baseType: !793, size: 64, offset: 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1307, file: !756, line: 289, baseType: !796, size: 64, offset: 1152)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1307, file: !756, line: 297, baseType: !31, size: 64, offset: 1216)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1307, file: !756, line: 298, baseType: !31, size: 64, offset: 1280)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1307, file: !756, line: 299, baseType: !31, size: 64, offset: 1344)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1307, file: !756, line: 300, baseType: !31, size: 64, offset: 1408)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1307, file: !756, line: 302, baseType: !34, size: 64, offset: 1472)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1307, file: !756, line: 303, baseType: !78, size: 32, offset: 1536)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1307, file: !756, line: 305, baseType: !804, size: 160, offset: 1568)
!1345 = !{!1346, !1347}
!1346 = !DILocalVariable(name: "fp", arg: 1, scope: !1302, file: !1283, line: 39, type: !1305)
!1347 = !DILocalVariable(name: "advice", arg: 2, scope: !1302, file: !1283, line: 39, type: !1288)
!1348 = !DILocation(line: 39, column: 16, scope: !1302)
!1349 = !DILocation(line: 39, column: 30, scope: !1302)
!1350 = !DILocation(line: 41, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1302, file: !1283, line: 41, column: 7)
!1352 = !DILocation(line: 41, column: 7, scope: !1302)
!1353 = !DILocation(line: 42, column: 15, scope: !1351)
!1354 = !DILocation(line: 31, column: 15, scope: !1282, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 42, column: 5, scope: !1351)
!1356 = !DILocation(line: 31, column: 25, scope: !1282, inlinedAt: !1355)
!1357 = !DILocation(line: 31, column: 39, scope: !1282, inlinedAt: !1355)
!1358 = !DILocation(line: 31, column: 54, scope: !1282, inlinedAt: !1355)
!1359 = !DILocation(line: 34, column: 3, scope: !1295, inlinedAt: !1355)
!1360 = !DILocation(line: 42, column: 5, scope: !1351)
!1361 = !DILocation(line: 43, column: 1, scope: !1302)
!1362 = distinct !DISubprogram(name: "set_program_name", scope: !111, file: !111, line: 39, type: !49, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1363)
!1363 = !{!1364, !1365, !1366}
!1364 = !DILocalVariable(name: "argv0", arg: 1, scope: !1362, file: !111, line: 39, type: !51)
!1365 = !DILocalVariable(name: "slash", scope: !1362, file: !111, line: 46, type: !51)
!1366 = !DILocalVariable(name: "base", scope: !1362, file: !111, line: 47, type: !51)
!1367 = !DILocation(line: 39, column: 31, scope: !1362)
!1368 = !DILocation(line: 51, column: 13, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1362, file: !111, line: 51, column: 7)
!1370 = !DILocation(line: 51, column: 7, scope: !1362)
!1371 = !DILocation(line: 55, column: 14, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !111, line: 52, column: 5)
!1373 = !DILocation(line: 54, column: 7, scope: !1372)
!1374 = !DILocation(line: 56, column: 7, scope: !1372)
!1375 = !DILocation(line: 59, column: 11, scope: !1362)
!1376 = !DILocation(line: 46, column: 15, scope: !1362)
!1377 = !DILocation(line: 60, column: 17, scope: !1362)
!1378 = !DILocation(line: 60, column: 33, scope: !1362)
!1379 = !DILocation(line: 60, column: 11, scope: !1362)
!1380 = !DILocation(line: 47, column: 15, scope: !1362)
!1381 = !DILocation(line: 61, column: 12, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1362, file: !111, line: 61, column: 7)
!1383 = !DILocation(line: 61, column: 20, scope: !1382)
!1384 = !DILocation(line: 61, column: 25, scope: !1382)
!1385 = !DILocation(line: 61, column: 42, scope: !1382)
!1386 = !DILocation(line: 61, column: 28, scope: !1382)
!1387 = !DILocation(line: 61, column: 61, scope: !1382)
!1388 = !DILocation(line: 61, column: 7, scope: !1362)
!1389 = !DILocation(line: 64, column: 11, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !111, line: 64, column: 11)
!1391 = distinct !DILexicalBlock(scope: !1382, file: !111, line: 62, column: 5)
!1392 = !DILocation(line: 64, column: 36, scope: !1390)
!1393 = !DILocation(line: 64, column: 11, scope: !1391)
!1394 = !DILocation(line: 66, column: 24, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !111, line: 65, column: 9)
!1396 = !DILocation(line: 70, column: 41, scope: !1395)
!1397 = !DILocation(line: 72, column: 9, scope: !1395)
!1398 = !DILocation(line: 84, column: 16, scope: !1362)
!1399 = !DILocation(line: 90, column: 27, scope: !1362)
!1400 = !DILocation(line: 92, column: 1, scope: !1362)
!1401 = distinct !DISubprogram(name: "clone_quoting_options", scope: !142, file: !142, line: 114, type: !1402, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1405)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1404, !1404}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1405 = !{!1406, !1407, !1408}
!1406 = !DILocalVariable(name: "o", arg: 1, scope: !1401, file: !142, line: 114, type: !1404)
!1407 = !DILocalVariable(name: "e", scope: !1401, file: !142, line: 116, type: !78)
!1408 = !DILocalVariable(name: "p", scope: !1401, file: !142, line: 117, type: !1404)
!1409 = !DILocation(line: 114, column: 48, scope: !1401)
!1410 = !DILocation(line: 116, column: 11, scope: !1401)
!1411 = !DILocation(line: 116, column: 7, scope: !1401)
!1412 = !DILocation(line: 117, column: 40, scope: !1401)
!1413 = !DILocation(line: 117, column: 31, scope: !1401)
!1414 = !DILocation(line: 117, column: 27, scope: !1401)
!1415 = !DILocation(line: 119, column: 9, scope: !1401)
!1416 = !DILocation(line: 120, column: 3, scope: !1401)
!1417 = distinct !DISubprogram(name: "get_quoting_style", scope: !142, file: !142, line: 125, type: !1418, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1422)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!5, !1420}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!1422 = !{!1423}
!1423 = !DILocalVariable(name: "o", arg: 1, scope: !1417, file: !142, line: 125, type: !1420)
!1424 = !DILocation(line: 125, column: 50, scope: !1417)
!1425 = !DILocation(line: 127, column: 11, scope: !1417)
!1426 = !DILocation(line: 127, column: 46, scope: !1417)
!1427 = !{!1428, !603, i64 0}
!1428 = !{!"quoting_options", !603, i64 0, !673, i64 4, !603, i64 8, !602, i64 40, !602, i64 48}
!1429 = !DILocation(line: 127, column: 3, scope: !1417)
!1430 = distinct !DISubprogram(name: "set_quoting_style", scope: !142, file: !142, line: 133, type: !1431, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1404, !5}
!1433 = !{!1434, !1435}
!1434 = !DILocalVariable(name: "o", arg: 1, scope: !1430, file: !142, line: 133, type: !1404)
!1435 = !DILocalVariable(name: "s", arg: 2, scope: !1430, file: !142, line: 133, type: !5)
!1436 = !DILocation(line: 133, column: 44, scope: !1430)
!1437 = !DILocation(line: 133, column: 66, scope: !1430)
!1438 = !DILocation(line: 135, column: 4, scope: !1430)
!1439 = !DILocation(line: 135, column: 39, scope: !1430)
!1440 = !DILocation(line: 135, column: 45, scope: !1430)
!1441 = !DILocation(line: 136, column: 1, scope: !1430)
!1442 = distinct !DISubprogram(name: "set_char_quoting", scope: !142, file: !142, line: 144, type: !1443, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1445)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!78, !1404, !30, !78}
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1452, !1453}
!1446 = !DILocalVariable(name: "o", arg: 1, scope: !1442, file: !142, line: 144, type: !1404)
!1447 = !DILocalVariable(name: "c", arg: 2, scope: !1442, file: !142, line: 144, type: !30)
!1448 = !DILocalVariable(name: "i", arg: 3, scope: !1442, file: !142, line: 144, type: !78)
!1449 = !DILocalVariable(name: "uc", scope: !1442, file: !142, line: 146, type: !33)
!1450 = !DILocalVariable(name: "p", scope: !1442, file: !142, line: 147, type: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1452 = !DILocalVariable(name: "shift", scope: !1442, file: !142, line: 149, type: !78)
!1453 = !DILocalVariable(name: "r", scope: !1442, file: !142, line: 150, type: !78)
!1454 = !DILocation(line: 144, column: 43, scope: !1442)
!1455 = !DILocation(line: 144, column: 51, scope: !1442)
!1456 = !DILocation(line: 144, column: 58, scope: !1442)
!1457 = !DILocation(line: 146, column: 17, scope: !1442)
!1458 = !DILocation(line: 148, column: 6, scope: !1442)
!1459 = !DILocation(line: 148, column: 62, scope: !1442)
!1460 = !DILocation(line: 148, column: 57, scope: !1442)
!1461 = !DILocation(line: 147, column: 17, scope: !1442)
!1462 = !DILocation(line: 149, column: 18, scope: !1442)
!1463 = !DILocation(line: 149, column: 15, scope: !1442)
!1464 = !DILocation(line: 149, column: 7, scope: !1442)
!1465 = !DILocation(line: 150, column: 12, scope: !1442)
!1466 = !DILocation(line: 150, column: 15, scope: !1442)
!1467 = !DILocation(line: 150, column: 25, scope: !1442)
!1468 = !DILocation(line: 150, column: 7, scope: !1442)
!1469 = !DILocation(line: 151, column: 13, scope: !1442)
!1470 = !DILocation(line: 151, column: 18, scope: !1442)
!1471 = !DILocation(line: 151, column: 23, scope: !1442)
!1472 = !DILocation(line: 151, column: 6, scope: !1442)
!1473 = !DILocation(line: 152, column: 3, scope: !1442)
!1474 = distinct !DISubprogram(name: "set_quoting_flags", scope: !142, file: !142, line: 160, type: !1475, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!78, !1404, !78}
!1477 = !{!1478, !1479, !1480}
!1478 = !DILocalVariable(name: "o", arg: 1, scope: !1474, file: !142, line: 160, type: !1404)
!1479 = !DILocalVariable(name: "i", arg: 2, scope: !1474, file: !142, line: 160, type: !78)
!1480 = !DILocalVariable(name: "r", scope: !1474, file: !142, line: 162, type: !78)
!1481 = !DILocation(line: 160, column: 44, scope: !1474)
!1482 = !DILocation(line: 160, column: 51, scope: !1474)
!1483 = !DILocation(line: 163, column: 8, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1474, file: !142, line: 163, column: 7)
!1485 = !DILocation(line: 163, column: 7, scope: !1474)
!1486 = !DILocation(line: 165, column: 10, scope: !1474)
!1487 = !{!1428, !673, i64 4}
!1488 = !DILocation(line: 162, column: 7, scope: !1474)
!1489 = !DILocation(line: 166, column: 12, scope: !1474)
!1490 = !DILocation(line: 167, column: 3, scope: !1474)
!1491 = distinct !DISubprogram(name: "set_custom_quoting", scope: !142, file: !142, line: 171, type: !1492, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1404, !51, !51}
!1494 = !{!1495, !1496, !1497}
!1495 = !DILocalVariable(name: "o", arg: 1, scope: !1491, file: !142, line: 171, type: !1404)
!1496 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1491, file: !142, line: 172, type: !51)
!1497 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1491, file: !142, line: 172, type: !51)
!1498 = !DILocation(line: 171, column: 45, scope: !1491)
!1499 = !DILocation(line: 172, column: 33, scope: !1491)
!1500 = !DILocation(line: 172, column: 57, scope: !1491)
!1501 = !DILocation(line: 174, column: 8, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1491, file: !142, line: 174, column: 7)
!1503 = !DILocation(line: 174, column: 7, scope: !1491)
!1504 = !DILocation(line: 176, column: 6, scope: !1491)
!1505 = !DILocation(line: 176, column: 12, scope: !1491)
!1506 = !DILocation(line: 177, column: 8, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1491, file: !142, line: 177, column: 7)
!1508 = !DILocation(line: 177, column: 23, scope: !1507)
!1509 = !DILocation(line: 177, column: 19, scope: !1507)
!1510 = !DILocation(line: 178, column: 5, scope: !1507)
!1511 = !DILocation(line: 179, column: 6, scope: !1491)
!1512 = !DILocation(line: 179, column: 17, scope: !1491)
!1513 = !{!1428, !602, i64 40}
!1514 = !DILocation(line: 180, column: 6, scope: !1491)
!1515 = !DILocation(line: 180, column: 18, scope: !1491)
!1516 = !{!1428, !602, i64 48}
!1517 = !DILocation(line: 181, column: 1, scope: !1491)
!1518 = distinct !DISubprogram(name: "quotearg_buffer", scope: !142, file: !142, line: 776, type: !1519, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!34, !29, !34, !51, !34, !1420}
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529}
!1522 = !DILocalVariable(name: "buffer", arg: 1, scope: !1518, file: !142, line: 776, type: !29)
!1523 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1518, file: !142, line: 776, type: !34)
!1524 = !DILocalVariable(name: "arg", arg: 3, scope: !1518, file: !142, line: 777, type: !51)
!1525 = !DILocalVariable(name: "argsize", arg: 4, scope: !1518, file: !142, line: 777, type: !34)
!1526 = !DILocalVariable(name: "o", arg: 5, scope: !1518, file: !142, line: 778, type: !1420)
!1527 = !DILocalVariable(name: "p", scope: !1518, file: !142, line: 780, type: !1420)
!1528 = !DILocalVariable(name: "e", scope: !1518, file: !142, line: 781, type: !78)
!1529 = !DILocalVariable(name: "r", scope: !1518, file: !142, line: 782, type: !34)
!1530 = !DILocation(line: 776, column: 24, scope: !1518)
!1531 = !DILocation(line: 776, column: 39, scope: !1518)
!1532 = !DILocation(line: 777, column: 30, scope: !1518)
!1533 = !DILocation(line: 777, column: 42, scope: !1518)
!1534 = !DILocation(line: 778, column: 48, scope: !1518)
!1535 = !DILocation(line: 780, column: 37, scope: !1518)
!1536 = !DILocation(line: 780, column: 33, scope: !1518)
!1537 = !DILocation(line: 781, column: 11, scope: !1518)
!1538 = !DILocation(line: 781, column: 7, scope: !1518)
!1539 = !DILocation(line: 783, column: 43, scope: !1518)
!1540 = !DILocation(line: 783, column: 53, scope: !1518)
!1541 = !DILocation(line: 783, column: 60, scope: !1518)
!1542 = !DILocation(line: 784, column: 43, scope: !1518)
!1543 = !DILocation(line: 784, column: 58, scope: !1518)
!1544 = !DILocation(line: 782, column: 14, scope: !1518)
!1545 = !DILocation(line: 782, column: 10, scope: !1518)
!1546 = !DILocation(line: 785, column: 9, scope: !1518)
!1547 = !DILocation(line: 786, column: 3, scope: !1518)
!1548 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !142, file: !142, line: 248, type: !1549, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1553)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!34, !29, !34, !51, !34, !5, !78, !1551, !51, !51}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1578, !1579, !1580, !1581, !1582, !1585, !1586, !1604, !1607, !1608, !1615}
!1554 = !DILocalVariable(name: "buffer", arg: 1, scope: !1548, file: !142, line: 248, type: !29)
!1555 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1548, file: !142, line: 248, type: !34)
!1556 = !DILocalVariable(name: "arg", arg: 3, scope: !1548, file: !142, line: 249, type: !51)
!1557 = !DILocalVariable(name: "argsize", arg: 4, scope: !1548, file: !142, line: 249, type: !34)
!1558 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1548, file: !142, line: 250, type: !5)
!1559 = !DILocalVariable(name: "flags", arg: 6, scope: !1548, file: !142, line: 250, type: !78)
!1560 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1548, file: !142, line: 251, type: !1551)
!1561 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1548, file: !142, line: 252, type: !51)
!1562 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1548, file: !142, line: 253, type: !51)
!1563 = !DILocalVariable(name: "i", scope: !1548, file: !142, line: 255, type: !34)
!1564 = !DILocalVariable(name: "len", scope: !1548, file: !142, line: 256, type: !34)
!1565 = !DILocalVariable(name: "orig_buffersize", scope: !1548, file: !142, line: 257, type: !34)
!1566 = !DILocalVariable(name: "quote_string", scope: !1548, file: !142, line: 258, type: !51)
!1567 = !DILocalVariable(name: "quote_string_len", scope: !1548, file: !142, line: 259, type: !34)
!1568 = !DILocalVariable(name: "backslash_escapes", scope: !1548, file: !142, line: 260, type: !40)
!1569 = !DILocalVariable(name: "unibyte_locale", scope: !1548, file: !142, line: 261, type: !40)
!1570 = !DILocalVariable(name: "elide_outer_quotes", scope: !1548, file: !142, line: 262, type: !40)
!1571 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1548, file: !142, line: 263, type: !40)
!1572 = !DILocalVariable(name: "encountered_single_quote", scope: !1548, file: !142, line: 264, type: !40)
!1573 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1548, file: !142, line: 265, type: !40)
!1574 = !DILocalVariable(name: "c", scope: !1575, file: !142, line: 394, type: !33)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !142, line: 393, column: 5)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !142, line: 392, column: 3)
!1577 = distinct !DILexicalBlock(scope: !1548, file: !142, line: 392, column: 3)
!1578 = !DILocalVariable(name: "esc", scope: !1575, file: !142, line: 395, type: !33)
!1579 = !DILocalVariable(name: "is_right_quote", scope: !1575, file: !142, line: 396, type: !40)
!1580 = !DILocalVariable(name: "escaping", scope: !1575, file: !142, line: 397, type: !40)
!1581 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1575, file: !142, line: 398, type: !40)
!1582 = !DILocalVariable(name: "m", scope: !1583, file: !142, line: 602, type: !34)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 600, column: 11)
!1584 = distinct !DILexicalBlock(scope: !1575, file: !142, line: 418, column: 9)
!1585 = !DILocalVariable(name: "printable", scope: !1583, file: !142, line: 604, type: !40)
!1586 = !DILocalVariable(name: "mbstate", scope: !1587, file: !142, line: 613, type: !1589)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !142, line: 612, column: 15)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !142, line: 606, column: 17)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1590, line: 6, baseType: !1591)
!1590 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1592, line: 21, baseType: !1593)
!1592 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1592, line: 13, size: 64, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1593, file: !1592, line: 15, baseType: !78, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1593, file: !1592, line: 20, baseType: !1597, size: 32, offset: 32)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !1592, line: 16, size: 32, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1597, file: !1592, line: 18, baseType: !155, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1597, file: !1592, line: 19, baseType: !1601, size: 32)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !1602)
!1602 = !{!1603}
!1603 = !DISubrange(count: 4)
!1604 = !DILocalVariable(name: "w", scope: !1605, file: !142, line: 623, type: !1606)
!1605 = distinct !DILexicalBlock(scope: !1587, file: !142, line: 622, column: 19)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !35, line: 90, baseType: !78)
!1607 = !DILocalVariable(name: "bytes", scope: !1605, file: !142, line: 624, type: !34)
!1608 = !DILocalVariable(name: "j", scope: !1609, file: !142, line: 649, type: !34)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !142, line: 648, column: 27)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !142, line: 646, column: 29)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !142, line: 641, column: 23)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !142, line: 633, column: 30)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !142, line: 628, column: 30)
!1614 = distinct !DILexicalBlock(scope: !1605, file: !142, line: 626, column: 25)
!1615 = !DILocalVariable(name: "ilim", scope: !1616, file: !142, line: 676, type: !34)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !142, line: 673, column: 15)
!1617 = distinct !DILexicalBlock(scope: !1583, file: !142, line: 672, column: 17)
!1618 = !DILocation(line: 248, column: 33, scope: !1548)
!1619 = !DILocation(line: 248, column: 48, scope: !1548)
!1620 = !DILocation(line: 249, column: 39, scope: !1548)
!1621 = !DILocation(line: 249, column: 51, scope: !1548)
!1622 = !DILocation(line: 250, column: 46, scope: !1548)
!1623 = !DILocation(line: 250, column: 65, scope: !1548)
!1624 = !DILocation(line: 251, column: 47, scope: !1548)
!1625 = !DILocation(line: 252, column: 39, scope: !1548)
!1626 = !DILocation(line: 253, column: 39, scope: !1548)
!1627 = !DILocation(line: 256, column: 10, scope: !1548)
!1628 = !DILocation(line: 257, column: 10, scope: !1548)
!1629 = !DILocation(line: 258, column: 15, scope: !1548)
!1630 = !DILocation(line: 259, column: 10, scope: !1548)
!1631 = !DILocation(line: 260, column: 8, scope: !1548)
!1632 = !DILocation(line: 261, column: 25, scope: !1548)
!1633 = !DILocation(line: 261, column: 36, scope: !1548)
!1634 = !DILocation(line: 262, column: 8, scope: !1548)
!1635 = !DILocation(line: 263, column: 8, scope: !1548)
!1636 = !DILocation(line: 264, column: 8, scope: !1548)
!1637 = !DILocation(line: 265, column: 8, scope: !1548)
!1638 = !DILocation(line: 265, column: 3, scope: !1548)
!1639 = !DILocation(line: 308, column: 3, scope: !1548)
!1640 = !DILocation(line: 315, column: 11, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1548, file: !142, line: 309, column: 5)
!1642 = !DILocation(line: 315, column: 12, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1641, file: !142, line: 315, column: 11)
!1644 = !DILocation(line: 316, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !142, line: 316, column: 9)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !142, line: 316, column: 9)
!1647 = !DILocation(line: 316, column: 9, scope: !1646)
!1648 = !DILocation(line: 354, column: 26, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !142, line: 332, column: 11)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !142, line: 331, column: 13)
!1651 = distinct !DILexicalBlock(scope: !1641, file: !142, line: 330, column: 7)
!1652 = !DILocation(line: 355, column: 27, scope: !1649)
!1653 = !DILocation(line: 356, column: 11, scope: !1649)
!1654 = !DILocation(line: 357, column: 14, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !142, line: 357, column: 13)
!1656 = !DILocation(line: 357, column: 13, scope: !1651)
!1657 = !DILocation(line: 358, column: 43, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !142, line: 358, column: 11)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !142, line: 358, column: 11)
!1660 = !DILocation(line: 358, column: 11, scope: !1659)
!1661 = !DILocation(line: 359, column: 13, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !142, line: 359, column: 13)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !142, line: 359, column: 13)
!1664 = !DILocation(line: 359, column: 13, scope: !1663)
!1665 = !DILocation(line: 358, column: 70, scope: !1658)
!1666 = distinct !{!1666, !1660, !1667}
!1667 = !DILocation(line: 359, column: 13, scope: !1659)
!1668 = !DILocation(line: 362, column: 28, scope: !1651)
!1669 = !DILocation(line: 364, column: 7, scope: !1641)
!1670 = !DILocation(line: 367, column: 7, scope: !1641)
!1671 = !DILocation(line: 370, column: 7, scope: !1641)
!1672 = !DILocation(line: 373, column: 12, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1641, file: !142, line: 373, column: 11)
!1674 = !DILocation(line: 373, column: 11, scope: !1641)
!1675 = !DILocation(line: 378, column: 12, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1641, file: !142, line: 378, column: 11)
!1677 = !DILocation(line: 378, column: 11, scope: !1641)
!1678 = !DILocation(line: 379, column: 9, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !142, line: 379, column: 9)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !142, line: 379, column: 9)
!1681 = !DILocation(line: 379, column: 9, scope: !1680)
!1682 = !DILocation(line: 386, column: 7, scope: !1641)
!1683 = !DILocation(line: 389, column: 7, scope: !1641)
!1684 = !DILocation(line: 255, column: 10, scope: !1548)
!1685 = !DILocation(line: 392, column: 8, scope: !1577)
!1686 = !DILocation(line: 392, column: 27, scope: !1576)
!1687 = !DILocation(line: 392, column: 19, scope: !1576)
!1688 = !DILocation(line: 392, column: 60, scope: !1576)
!1689 = !DILocation(line: 392, column: 3, scope: !1577)
!1690 = !DILocation(line: 392, column: 41, scope: !1576)
!1691 = !DILocation(line: 392, column: 48, scope: !1576)
!1692 = !DILocation(line: 396, column: 12, scope: !1575)
!1693 = !DILocation(line: 397, column: 12, scope: !1575)
!1694 = !DILocation(line: 398, column: 12, scope: !1575)
!1695 = !DILocation(line: 401, column: 11, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1575, file: !142, line: 400, column: 11)
!1697 = !DILocation(line: 403, column: 17, scope: !1696)
!1698 = !DILocation(line: 404, column: 39, scope: !1696)
!1699 = !DILocation(line: 408, column: 32, scope: !1696)
!1700 = !DILocation(line: 404, column: 19, scope: !1696)
!1701 = !DILocation(line: 404, column: 15, scope: !1696)
!1702 = !DILocation(line: 409, column: 11, scope: !1696)
!1703 = !DILocation(line: 409, column: 26, scope: !1696)
!1704 = !DILocation(line: 409, column: 14, scope: !1696)
!1705 = !DILocation(line: 409, column: 63, scope: !1696)
!1706 = !DILocation(line: 400, column: 11, scope: !1575)
!1707 = !DILocation(line: 416, column: 11, scope: !1575)
!1708 = !DILocation(line: 394, column: 21, scope: !1575)
!1709 = !DILocation(line: 417, column: 7, scope: !1575)
!1710 = !DILocation(line: 420, column: 15, scope: !1584)
!1711 = !DILocation(line: 422, column: 15, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !142, line: 422, column: 15)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !142, line: 421, column: 13)
!1714 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 420, column: 15)
!1715 = !DILocation(line: 422, column: 15, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !142, line: 422, column: 15)
!1717 = !DILocation(line: 422, column: 15, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !142, line: 422, column: 15)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !142, line: 422, column: 15)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !142, line: 422, column: 15)
!1721 = !DILocation(line: 422, column: 15, scope: !1719)
!1722 = !DILocation(line: 422, column: 15, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !142, line: 422, column: 15)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !142, line: 422, column: 15)
!1725 = !DILocation(line: 422, column: 15, scope: !1724)
!1726 = !DILocation(line: 422, column: 15, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !142, line: 422, column: 15)
!1728 = distinct !DILexicalBlock(scope: !1720, file: !142, line: 422, column: 15)
!1729 = !DILocation(line: 422, column: 15, scope: !1728)
!1730 = !DILocation(line: 422, column: 15, scope: !1720)
!1731 = !DILocation(line: 422, column: 15, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !142, line: 422, column: 15)
!1733 = distinct !DILexicalBlock(scope: !1712, file: !142, line: 422, column: 15)
!1734 = !DILocation(line: 422, column: 15, scope: !1733)
!1735 = !DILocation(line: 430, column: 19, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1713, file: !142, line: 429, column: 19)
!1737 = !DILocation(line: 430, column: 24, scope: !1736)
!1738 = !DILocation(line: 430, column: 28, scope: !1736)
!1739 = !DILocation(line: 430, column: 38, scope: !1736)
!1740 = !DILocation(line: 430, column: 48, scope: !1736)
!1741 = !DILocation(line: 430, column: 59, scope: !1736)
!1742 = !DILocation(line: 432, column: 19, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !142, line: 432, column: 19)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !142, line: 432, column: 19)
!1745 = distinct !DILexicalBlock(scope: !1736, file: !142, line: 431, column: 17)
!1746 = !DILocation(line: 432, column: 19, scope: !1744)
!1747 = !DILocation(line: 433, column: 19, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !142, line: 433, column: 19)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !142, line: 433, column: 19)
!1750 = !DILocation(line: 433, column: 19, scope: !1749)
!1751 = !DILocation(line: 434, column: 17, scope: !1745)
!1752 = !DILocation(line: 441, column: 20, scope: !1714)
!1753 = !DILocation(line: 446, column: 11, scope: !1584)
!1754 = !DILocation(line: 449, column: 19, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 447, column: 13)
!1756 = !DILocation(line: 455, column: 19, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1755, file: !142, line: 454, column: 19)
!1758 = !DILocation(line: 455, column: 24, scope: !1757)
!1759 = !DILocation(line: 455, column: 28, scope: !1757)
!1760 = !DILocation(line: 455, column: 38, scope: !1757)
!1761 = !DILocation(line: 455, column: 47, scope: !1757)
!1762 = !DILocation(line: 455, column: 41, scope: !1757)
!1763 = !DILocation(line: 455, column: 52, scope: !1757)
!1764 = !DILocation(line: 454, column: 19, scope: !1755)
!1765 = !DILocation(line: 456, column: 25, scope: !1757)
!1766 = !DILocation(line: 456, column: 17, scope: !1757)
!1767 = !DILocation(line: 463, column: 25, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1757, file: !142, line: 457, column: 19)
!1769 = !DILocation(line: 467, column: 21, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !142, line: 467, column: 21)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !142, line: 467, column: 21)
!1772 = !DILocation(line: 467, column: 21, scope: !1771)
!1773 = !DILocation(line: 468, column: 21, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !142, line: 468, column: 21)
!1775 = distinct !DILexicalBlock(scope: !1768, file: !142, line: 468, column: 21)
!1776 = !DILocation(line: 468, column: 21, scope: !1775)
!1777 = !DILocation(line: 469, column: 21, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !142, line: 469, column: 21)
!1779 = distinct !DILexicalBlock(scope: !1768, file: !142, line: 469, column: 21)
!1780 = !DILocation(line: 469, column: 21, scope: !1779)
!1781 = !DILocation(line: 470, column: 21, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !142, line: 470, column: 21)
!1783 = distinct !DILexicalBlock(scope: !1768, file: !142, line: 470, column: 21)
!1784 = !DILocation(line: 470, column: 21, scope: !1783)
!1785 = !DILocation(line: 471, column: 21, scope: !1768)
!1786 = !DILocation(line: 395, column: 21, scope: !1575)
!1787 = !DILocation(line: 484, column: 31, scope: !1584)
!1788 = !DILocation(line: 485, column: 31, scope: !1584)
!1789 = !DILocation(line: 487, column: 31, scope: !1584)
!1790 = !DILocation(line: 488, column: 31, scope: !1584)
!1791 = !DILocation(line: 489, column: 31, scope: !1584)
!1792 = !DILocation(line: 492, column: 15, scope: !1584)
!1793 = !DILocation(line: 494, column: 19, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !142, line: 493, column: 13)
!1795 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 492, column: 15)
!1796 = !DILocation(line: 501, column: 33, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 501, column: 15)
!1798 = !DILocation(line: 506, column: 15, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 505, column: 15)
!1800 = !DILocation(line: 510, column: 15, scope: !1584)
!1801 = !DILocation(line: 518, column: 26, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 518, column: 15)
!1803 = !DILocation(line: 518, column: 15, scope: !1584)
!1804 = !DILocation(line: 518, column: 40, scope: !1802)
!1805 = !DILocation(line: 518, column: 47, scope: !1802)
!1806 = !DILocation(line: 522, column: 17, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 522, column: 15)
!1808 = !DILocation(line: 518, column: 18, scope: !1802)
!1809 = !DILocation(line: 518, column: 65, scope: !1802)
!1810 = !DILocation(line: 522, column: 15, scope: !1584)
!1811 = !DILocation(line: 526, column: 11, scope: !1584)
!1812 = !DILocation(line: 541, column: 15, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 540, column: 15)
!1814 = !DILocation(line: 548, column: 15, scope: !1584)
!1815 = !DILocation(line: 550, column: 19, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !142, line: 549, column: 13)
!1817 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 548, column: 15)
!1818 = !DILocation(line: 553, column: 19, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !142, line: 553, column: 19)
!1820 = !DILocation(line: 553, column: 35, scope: !1819)
!1821 = !DILocation(line: 553, column: 30, scope: !1819)
!1822 = !DILocation(line: 562, column: 15, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !142, line: 562, column: 15)
!1824 = distinct !DILexicalBlock(scope: !1816, file: !142, line: 562, column: 15)
!1825 = !DILocation(line: 562, column: 15, scope: !1824)
!1826 = !DILocation(line: 563, column: 15, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !142, line: 563, column: 15)
!1828 = distinct !DILexicalBlock(scope: !1816, file: !142, line: 563, column: 15)
!1829 = !DILocation(line: 563, column: 15, scope: !1828)
!1830 = !DILocation(line: 564, column: 15, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !142, line: 564, column: 15)
!1832 = distinct !DILexicalBlock(scope: !1816, file: !142, line: 564, column: 15)
!1833 = !DILocation(line: 564, column: 15, scope: !1832)
!1834 = !DILocation(line: 566, column: 13, scope: !1816)
!1835 = !DILocation(line: 606, column: 17, scope: !1583)
!1836 = !DILocation(line: 602, column: 20, scope: !1583)
!1837 = !DILocation(line: 609, column: 29, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1588, file: !142, line: 607, column: 15)
!1839 = !{!848, !848, i64 0}
!1840 = !DILocation(line: 609, column: 27, scope: !1838)
!1841 = !DILocation(line: 604, column: 18, scope: !1583)
!1842 = !DILocation(line: 610, column: 15, scope: !1838)
!1843 = !DILocation(line: 613, column: 17, scope: !1587)
!1844 = !DILocation(line: 614, column: 17, scope: !1587)
!1845 = !DILocation(line: 618, column: 29, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1587, file: !142, line: 618, column: 21)
!1847 = !DILocation(line: 618, column: 21, scope: !1587)
!1848 = !DILocation(line: 619, column: 29, scope: !1846)
!1849 = !DILocation(line: 619, column: 19, scope: !1846)
!1850 = !DILocation(line: 621, column: 17, scope: !1587)
!1851 = distinct !{!1851, !1850, !1852}
!1852 = !DILocation(line: 667, column: 44, scope: !1587)
!1853 = !DILocation(line: 623, column: 21, scope: !1605)
!1854 = !DILocation(line: 624, column: 56, scope: !1605)
!1855 = !DILocation(line: 624, column: 50, scope: !1605)
!1856 = !DILocation(line: 625, column: 53, scope: !1605)
!1857 = !DILocation(line: 613, column: 27, scope: !1587)
!1858 = !DILocation(line: 623, column: 29, scope: !1605)
!1859 = !DILocation(line: 624, column: 36, scope: !1605)
!1860 = !DILocation(line: 624, column: 28, scope: !1605)
!1861 = !DILocation(line: 626, column: 25, scope: !1605)
!1862 = !DILocation(line: 636, column: 38, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1612, file: !142, line: 634, column: 23)
!1864 = !DILocation(line: 636, column: 48, scope: !1863)
!1865 = !DILocation(line: 636, column: 51, scope: !1863)
!1866 = !DILocation(line: 636, column: 25, scope: !1863)
!1867 = !DILocation(line: 637, column: 28, scope: !1863)
!1868 = !DILocation(line: 636, column: 34, scope: !1863)
!1869 = distinct !{!1869, !1866, !1867}
!1870 = !DILocation(line: 650, column: 43, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !142, line: 650, column: 29)
!1872 = distinct !DILexicalBlock(scope: !1609, file: !142, line: 650, column: 29)
!1873 = !DILocation(line: 647, column: 29, scope: !1610)
!1874 = !DILocation(line: 649, column: 36, scope: !1609)
!1875 = !DILocation(line: 651, column: 49, scope: !1871)
!1876 = !DILocation(line: 651, column: 39, scope: !1871)
!1877 = !DILocation(line: 651, column: 31, scope: !1871)
!1878 = !DILocation(line: 650, column: 53, scope: !1871)
!1879 = !DILocation(line: 650, column: 29, scope: !1872)
!1880 = distinct !{!1880, !1879, !1881}
!1881 = !DILocation(line: 659, column: 33, scope: !1872)
!1882 = !DILocation(line: 666, column: 19, scope: !1587)
!1883 = !DILocation(line: 662, column: 41, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1611, file: !142, line: 662, column: 29)
!1885 = !DILocation(line: 662, column: 31, scope: !1884)
!1886 = !DILocation(line: 662, column: 29, scope: !1611)
!1887 = !DILocation(line: 664, column: 27, scope: !1611)
!1888 = !DILocation(line: 667, column: 26, scope: !1587)
!1889 = !DILocation(line: 667, column: 24, scope: !1587)
!1890 = !DILocation(line: 666, column: 19, scope: !1605)
!1891 = !DILocation(line: 668, column: 15, scope: !1588)
!1892 = !DILocation(line: 670, column: 40, scope: !1583)
!1893 = !DILocation(line: 672, column: 19, scope: !1617)
!1894 = !DILocation(line: 672, column: 45, scope: !1617)
!1895 = !DILocation(line: 672, column: 23, scope: !1617)
!1896 = !DILocation(line: 676, column: 33, scope: !1616)
!1897 = !DILocation(line: 676, column: 24, scope: !1616)
!1898 = !DILocation(line: 678, column: 17, scope: !1616)
!1899 = !DILocation(line: 680, column: 43, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !142, line: 680, column: 25)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !142, line: 679, column: 19)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !142, line: 678, column: 17)
!1903 = distinct !DILexicalBlock(scope: !1616, file: !142, line: 678, column: 17)
!1904 = !DILocation(line: 682, column: 25, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !142, line: 682, column: 25)
!1906 = distinct !DILexicalBlock(scope: !1900, file: !142, line: 681, column: 23)
!1907 = !DILocation(line: 682, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !142, line: 682, column: 25)
!1909 = !DILocation(line: 682, column: 25, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !142, line: 682, column: 25)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !142, line: 682, column: 25)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !142, line: 682, column: 25)
!1913 = !DILocation(line: 682, column: 25, scope: !1911)
!1914 = !DILocation(line: 682, column: 25, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !142, line: 682, column: 25)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !142, line: 682, column: 25)
!1917 = !DILocation(line: 682, column: 25, scope: !1916)
!1918 = !DILocation(line: 682, column: 25, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !142, line: 682, column: 25)
!1920 = distinct !DILexicalBlock(scope: !1912, file: !142, line: 682, column: 25)
!1921 = !DILocation(line: 682, column: 25, scope: !1920)
!1922 = !DILocation(line: 682, column: 25, scope: !1912)
!1923 = !DILocation(line: 682, column: 25, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !142, line: 682, column: 25)
!1925 = distinct !DILexicalBlock(scope: !1905, file: !142, line: 682, column: 25)
!1926 = !DILocation(line: 682, column: 25, scope: !1925)
!1927 = !DILocation(line: 683, column: 25, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !142, line: 683, column: 25)
!1929 = distinct !DILexicalBlock(scope: !1906, file: !142, line: 683, column: 25)
!1930 = !DILocation(line: 683, column: 25, scope: !1929)
!1931 = !DILocation(line: 684, column: 25, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !142, line: 684, column: 25)
!1933 = distinct !DILexicalBlock(scope: !1906, file: !142, line: 684, column: 25)
!1934 = !DILocation(line: 684, column: 25, scope: !1933)
!1935 = !DILocation(line: 685, column: 38, scope: !1906)
!1936 = !DILocation(line: 685, column: 33, scope: !1906)
!1937 = !DILocation(line: 686, column: 23, scope: !1906)
!1938 = !DILocation(line: 687, column: 30, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1900, file: !142, line: 687, column: 30)
!1940 = !DILocation(line: 687, column: 30, scope: !1900)
!1941 = !DILocation(line: 689, column: 25, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !142, line: 689, column: 25)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !142, line: 689, column: 25)
!1944 = distinct !DILexicalBlock(scope: !1939, file: !142, line: 688, column: 23)
!1945 = !DILocation(line: 689, column: 25, scope: !1943)
!1946 = !DILocation(line: 691, column: 23, scope: !1944)
!1947 = !DILocation(line: 692, column: 35, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1901, file: !142, line: 692, column: 25)
!1949 = !DILocation(line: 692, column: 30, scope: !1948)
!1950 = !DILocation(line: 692, column: 25, scope: !1901)
!1951 = !DILocation(line: 694, column: 21, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !142, line: 694, column: 21)
!1953 = distinct !DILexicalBlock(scope: !1901, file: !142, line: 694, column: 21)
!1954 = !DILocation(line: 694, column: 21, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !142, line: 694, column: 21)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !142, line: 694, column: 21)
!1957 = distinct !DILexicalBlock(scope: !1952, file: !142, line: 694, column: 21)
!1958 = !DILocation(line: 694, column: 21, scope: !1956)
!1959 = !DILocation(line: 694, column: 21, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !142, line: 694, column: 21)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !142, line: 694, column: 21)
!1962 = !DILocation(line: 694, column: 21, scope: !1961)
!1963 = !DILocation(line: 694, column: 21, scope: !1957)
!1964 = !DILocation(line: 695, column: 21, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !142, line: 695, column: 21)
!1966 = distinct !DILexicalBlock(scope: !1901, file: !142, line: 695, column: 21)
!1967 = !DILocation(line: 695, column: 21, scope: !1966)
!1968 = !DILocation(line: 696, column: 25, scope: !1901)
!1969 = !DILocation(line: 678, column: 17, scope: !1902)
!1970 = distinct !{!1970, !1971, !1972}
!1971 = !DILocation(line: 678, column: 17, scope: !1903)
!1972 = !DILocation(line: 697, column: 19, scope: !1903)
!1973 = !DILocation(line: 704, column: 34, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1575, file: !142, line: 704, column: 11)
!1975 = !DILocation(line: 706, column: 14, scope: !1974)
!1976 = !DILocation(line: 707, column: 14, scope: !1974)
!1977 = !DILocation(line: 707, column: 35, scope: !1974)
!1978 = !DILocation(line: 707, column: 17, scope: !1974)
!1979 = !DILocation(line: 707, column: 53, scope: !1974)
!1980 = !DILocation(line: 707, column: 47, scope: !1974)
!1981 = !DILocation(line: 707, column: 65, scope: !1974)
!1982 = !DILocation(line: 708, column: 15, scope: !1974)
!1983 = !DILocation(line: 708, column: 11, scope: !1974)
!1984 = !DILocation(line: 704, column: 11, scope: !1575)
!1985 = !DILocation(line: 712, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1575, file: !142, line: 712, column: 7)
!1987 = !DILocation(line: 712, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !142, line: 712, column: 7)
!1989 = !DILocation(line: 712, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !142, line: 712, column: 7)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !142, line: 712, column: 7)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !142, line: 712, column: 7)
!1993 = !DILocation(line: 712, column: 7, scope: !1991)
!1994 = !DILocation(line: 712, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !142, line: 712, column: 7)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !142, line: 712, column: 7)
!1997 = !DILocation(line: 712, column: 7, scope: !1996)
!1998 = !DILocation(line: 712, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !142, line: 712, column: 7)
!2000 = distinct !DILexicalBlock(scope: !1992, file: !142, line: 712, column: 7)
!2001 = !DILocation(line: 712, column: 7, scope: !2000)
!2002 = !DILocation(line: 712, column: 7, scope: !1992)
!2003 = !DILocation(line: 712, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !142, line: 712, column: 7)
!2005 = distinct !DILexicalBlock(scope: !1986, file: !142, line: 712, column: 7)
!2006 = !DILocation(line: 712, column: 7, scope: !2005)
!2007 = !DILocation(line: 715, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !142, line: 715, column: 7)
!2009 = distinct !DILexicalBlock(scope: !1575, file: !142, line: 715, column: 7)
!2010 = !DILocation(line: 715, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !142, line: 715, column: 7)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !142, line: 715, column: 7)
!2013 = distinct !DILexicalBlock(scope: !2008, file: !142, line: 715, column: 7)
!2014 = !DILocation(line: 715, column: 7, scope: !2012)
!2015 = !DILocation(line: 715, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !142, line: 715, column: 7)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !142, line: 715, column: 7)
!2018 = !DILocation(line: 715, column: 7, scope: !2017)
!2019 = !DILocation(line: 715, column: 7, scope: !2013)
!2020 = !DILocation(line: 716, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !142, line: 716, column: 7)
!2022 = distinct !DILexicalBlock(scope: !1575, file: !142, line: 716, column: 7)
!2023 = !DILocation(line: 716, column: 7, scope: !2022)
!2024 = !DILocation(line: 718, column: 13, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1575, file: !142, line: 718, column: 11)
!2026 = !DILocation(line: 718, column: 11, scope: !1575)
!2027 = !DILocation(line: 720, column: 5, scope: !1576)
!2028 = !DILocation(line: 392, column: 75, scope: !1576)
!2029 = !DILocation(line: 392, column: 3, scope: !1576)
!2030 = distinct !{!2030, !1689, !2031}
!2031 = !DILocation(line: 720, column: 5, scope: !1577)
!2032 = !DILocation(line: 722, column: 11, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1548, file: !142, line: 722, column: 7)
!2034 = !DILocation(line: 722, column: 16, scope: !2033)
!2035 = !DILocation(line: 730, column: 51, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1548, file: !142, line: 730, column: 7)
!2037 = !DILocation(line: 731, column: 10, scope: !2036)
!2038 = !DILocation(line: 733, column: 11, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !142, line: 733, column: 11)
!2040 = distinct !DILexicalBlock(scope: !2036, file: !142, line: 732, column: 5)
!2041 = !DILocation(line: 733, column: 11, scope: !2040)
!2042 = !DILocation(line: 734, column: 16, scope: !2039)
!2043 = !DILocation(line: 734, column: 9, scope: !2039)
!2044 = !DILocation(line: 738, column: 18, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2039, file: !142, line: 738, column: 16)
!2046 = !DILocation(line: 738, column: 32, scope: !2045)
!2047 = !DILocation(line: 738, column: 29, scope: !2045)
!2048 = !DILocation(line: 747, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1548, file: !142, line: 747, column: 7)
!2050 = !DILocation(line: 747, column: 20, scope: !2049)
!2051 = !DILocation(line: 748, column: 12, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !142, line: 748, column: 5)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !142, line: 748, column: 5)
!2054 = !DILocation(line: 748, column: 5, scope: !2053)
!2055 = !DILocation(line: 749, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !142, line: 749, column: 7)
!2057 = distinct !DILexicalBlock(scope: !2052, file: !142, line: 749, column: 7)
!2058 = !DILocation(line: 749, column: 7, scope: !2057)
!2059 = !DILocation(line: 748, column: 39, scope: !2052)
!2060 = distinct !{!2060, !2054, !2061}
!2061 = !DILocation(line: 749, column: 7, scope: !2053)
!2062 = !DILocation(line: 751, column: 11, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1548, file: !142, line: 751, column: 7)
!2064 = !DILocation(line: 751, column: 7, scope: !1548)
!2065 = !DILocation(line: 752, column: 5, scope: !2063)
!2066 = !DILocation(line: 752, column: 17, scope: !2063)
!2067 = !DILocation(line: 758, column: 21, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1548, file: !142, line: 758, column: 7)
!2069 = !DILocation(line: 758, column: 54, scope: !2068)
!2070 = !DILocation(line: 758, column: 51, scope: !2068)
!2071 = !DILocation(line: 762, column: 42, scope: !1548)
!2072 = !DILocation(line: 760, column: 10, scope: !1548)
!2073 = !DILocation(line: 760, column: 3, scope: !1548)
!2074 = !DILocation(line: 764, column: 1, scope: !1548)
!2075 = distinct !DISubprogram(name: "gettext_quote", scope: !142, file: !142, line: 199, type: !2076, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!51, !51, !5}
!2078 = !{!2079, !2080, !2081, !2082}
!2079 = !DILocalVariable(name: "msgid", arg: 1, scope: !2075, file: !142, line: 199, type: !51)
!2080 = !DILocalVariable(name: "s", arg: 2, scope: !2075, file: !142, line: 199, type: !5)
!2081 = !DILocalVariable(name: "translation", scope: !2075, file: !142, line: 201, type: !51)
!2082 = !DILocalVariable(name: "locale_code", scope: !2075, file: !142, line: 202, type: !51)
!2083 = !DILocation(line: 199, column: 28, scope: !2075)
!2084 = !DILocation(line: 199, column: 54, scope: !2075)
!2085 = !DILocation(line: 201, column: 29, scope: !2075)
!2086 = !DILocation(line: 201, column: 15, scope: !2075)
!2087 = !DILocation(line: 204, column: 19, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2075, file: !142, line: 204, column: 7)
!2089 = !DILocation(line: 204, column: 7, scope: !2075)
!2090 = !DILocation(line: 225, column: 17, scope: !2075)
!2091 = !DILocation(line: 202, column: 15, scope: !2075)
!2092 = !DILocalVariable(name: "s2", arg: 2, scope: !2093, file: !2094, line: 160, type: !51)
!2093 = distinct !DISubprogram(name: "strcaseeq0", scope: !2094, file: !2094, line: 160, type: !2095, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2097)
!2094 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!78, !51, !51, !30, !30, !30, !30, !30, !30, !30, !30, !30}
!2097 = !{!2098, !2092, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2098 = !DILocalVariable(name: "s1", arg: 1, scope: !2093, file: !2094, line: 160, type: !51)
!2099 = !DILocalVariable(name: "s20", arg: 3, scope: !2093, file: !2094, line: 160, type: !30)
!2100 = !DILocalVariable(name: "s21", arg: 4, scope: !2093, file: !2094, line: 160, type: !30)
!2101 = !DILocalVariable(name: "s22", arg: 5, scope: !2093, file: !2094, line: 160, type: !30)
!2102 = !DILocalVariable(name: "s23", arg: 6, scope: !2093, file: !2094, line: 160, type: !30)
!2103 = !DILocalVariable(name: "s24", arg: 7, scope: !2093, file: !2094, line: 160, type: !30)
!2104 = !DILocalVariable(name: "s25", arg: 8, scope: !2093, file: !2094, line: 160, type: !30)
!2105 = !DILocalVariable(name: "s26", arg: 9, scope: !2093, file: !2094, line: 160, type: !30)
!2106 = !DILocalVariable(name: "s27", arg: 10, scope: !2093, file: !2094, line: 160, type: !30)
!2107 = !DILocalVariable(name: "s28", arg: 11, scope: !2093, file: !2094, line: 160, type: !30)
!2108 = !DILocation(line: 160, column: 41, scope: !2093, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 226, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2075, file: !142, line: 226, column: 7)
!2111 = !DILocation(line: 160, column: 120, scope: !2093, inlinedAt: !2109)
!2112 = !DILocation(line: 160, column: 130, scope: !2093, inlinedAt: !2109)
!2113 = !DILocation(line: 162, column: 7, scope: !2114, inlinedAt: !2109)
!2114 = distinct !DILexicalBlock(scope: !2093, file: !2094, line: 162, column: 7)
!2115 = !DILocalVariable(name: "s2", arg: 2, scope: !2116, file: !2094, line: 146, type: !51)
!2116 = distinct !DISubprogram(name: "strcaseeq1", scope: !2094, file: !2094, line: 146, type: !2117, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!78, !51, !51, !30, !30, !30, !30, !30, !30, !30, !30}
!2119 = !{!2120, !2115, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2120 = !DILocalVariable(name: "s1", arg: 1, scope: !2116, file: !2094, line: 146, type: !51)
!2121 = !DILocalVariable(name: "s21", arg: 3, scope: !2116, file: !2094, line: 146, type: !30)
!2122 = !DILocalVariable(name: "s22", arg: 4, scope: !2116, file: !2094, line: 146, type: !30)
!2123 = !DILocalVariable(name: "s23", arg: 5, scope: !2116, file: !2094, line: 146, type: !30)
!2124 = !DILocalVariable(name: "s24", arg: 6, scope: !2116, file: !2094, line: 146, type: !30)
!2125 = !DILocalVariable(name: "s25", arg: 7, scope: !2116, file: !2094, line: 146, type: !30)
!2126 = !DILocalVariable(name: "s26", arg: 8, scope: !2116, file: !2094, line: 146, type: !30)
!2127 = !DILocalVariable(name: "s27", arg: 9, scope: !2116, file: !2094, line: 146, type: !30)
!2128 = !DILocalVariable(name: "s28", arg: 10, scope: !2116, file: !2094, line: 146, type: !30)
!2129 = !DILocation(line: 146, column: 41, scope: !2116, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 167, column: 16, scope: !2131, inlinedAt: !2109)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !2094, line: 164, column: 11)
!2132 = distinct !DILexicalBlock(scope: !2114, file: !2094, line: 163, column: 5)
!2133 = !DILocation(line: 146, column: 110, scope: !2116, inlinedAt: !2130)
!2134 = !DILocation(line: 146, column: 120, scope: !2116, inlinedAt: !2130)
!2135 = !DILocation(line: 148, column: 7, scope: !2136, inlinedAt: !2130)
!2136 = distinct !DILexicalBlock(scope: !2116, file: !2094, line: 148, column: 7)
!2137 = !DILocalVariable(name: "s2", arg: 2, scope: !2138, file: !2094, line: 132, type: !51)
!2138 = distinct !DISubprogram(name: "strcaseeq2", scope: !2094, file: !2094, line: 132, type: !2139, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!78, !51, !51, !30, !30, !30, !30, !30, !30, !30}
!2141 = !{!2142, !2137, !2143, !2144, !2145, !2146, !2147, !2148, !2149}
!2142 = !DILocalVariable(name: "s1", arg: 1, scope: !2138, file: !2094, line: 132, type: !51)
!2143 = !DILocalVariable(name: "s22", arg: 3, scope: !2138, file: !2094, line: 132, type: !30)
!2144 = !DILocalVariable(name: "s23", arg: 4, scope: !2138, file: !2094, line: 132, type: !30)
!2145 = !DILocalVariable(name: "s24", arg: 5, scope: !2138, file: !2094, line: 132, type: !30)
!2146 = !DILocalVariable(name: "s25", arg: 6, scope: !2138, file: !2094, line: 132, type: !30)
!2147 = !DILocalVariable(name: "s26", arg: 7, scope: !2138, file: !2094, line: 132, type: !30)
!2148 = !DILocalVariable(name: "s27", arg: 8, scope: !2138, file: !2094, line: 132, type: !30)
!2149 = !DILocalVariable(name: "s28", arg: 9, scope: !2138, file: !2094, line: 132, type: !30)
!2150 = !DILocation(line: 132, column: 41, scope: !2138, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 153, column: 16, scope: !2152, inlinedAt: !2130)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !2094, line: 150, column: 11)
!2153 = distinct !DILexicalBlock(scope: !2136, file: !2094, line: 149, column: 5)
!2154 = !DILocation(line: 132, column: 100, scope: !2138, inlinedAt: !2151)
!2155 = !DILocation(line: 132, column: 110, scope: !2138, inlinedAt: !2151)
!2156 = !DILocation(line: 134, column: 7, scope: !2157, inlinedAt: !2151)
!2157 = distinct !DILexicalBlock(scope: !2138, file: !2094, line: 134, column: 7)
!2158 = !DILocalVariable(name: "s2", arg: 2, scope: !2159, file: !2094, line: 118, type: !51)
!2159 = distinct !DISubprogram(name: "strcaseeq3", scope: !2094, file: !2094, line: 118, type: !2160, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!78, !51, !51, !30, !30, !30, !30, !30, !30}
!2162 = !{!2163, !2158, !2164, !2165, !2166, !2167, !2168, !2169}
!2163 = !DILocalVariable(name: "s1", arg: 1, scope: !2159, file: !2094, line: 118, type: !51)
!2164 = !DILocalVariable(name: "s23", arg: 3, scope: !2159, file: !2094, line: 118, type: !30)
!2165 = !DILocalVariable(name: "s24", arg: 4, scope: !2159, file: !2094, line: 118, type: !30)
!2166 = !DILocalVariable(name: "s25", arg: 5, scope: !2159, file: !2094, line: 118, type: !30)
!2167 = !DILocalVariable(name: "s26", arg: 6, scope: !2159, file: !2094, line: 118, type: !30)
!2168 = !DILocalVariable(name: "s27", arg: 7, scope: !2159, file: !2094, line: 118, type: !30)
!2169 = !DILocalVariable(name: "s28", arg: 8, scope: !2159, file: !2094, line: 118, type: !30)
!2170 = !DILocation(line: 118, column: 41, scope: !2159, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 139, column: 16, scope: !2172, inlinedAt: !2151)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !2094, line: 136, column: 11)
!2173 = distinct !DILexicalBlock(scope: !2157, file: !2094, line: 135, column: 5)
!2174 = !DILocation(line: 118, column: 90, scope: !2159, inlinedAt: !2171)
!2175 = !DILocation(line: 118, column: 100, scope: !2159, inlinedAt: !2171)
!2176 = !DILocation(line: 120, column: 7, scope: !2177, inlinedAt: !2171)
!2177 = distinct !DILexicalBlock(scope: !2159, file: !2094, line: 120, column: 7)
!2178 = !DILocation(line: 120, column: 7, scope: !2159, inlinedAt: !2171)
!2179 = !DILocalVariable(name: "s2", arg: 2, scope: !2180, file: !2094, line: 104, type: !51)
!2180 = distinct !DISubprogram(name: "strcaseeq4", scope: !2094, file: !2094, line: 104, type: !2181, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2183)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!78, !51, !51, !30, !30, !30, !30, !30}
!2183 = !{!2184, !2179, !2185, !2186, !2187, !2188, !2189}
!2184 = !DILocalVariable(name: "s1", arg: 1, scope: !2180, file: !2094, line: 104, type: !51)
!2185 = !DILocalVariable(name: "s24", arg: 3, scope: !2180, file: !2094, line: 104, type: !30)
!2186 = !DILocalVariable(name: "s25", arg: 4, scope: !2180, file: !2094, line: 104, type: !30)
!2187 = !DILocalVariable(name: "s26", arg: 5, scope: !2180, file: !2094, line: 104, type: !30)
!2188 = !DILocalVariable(name: "s27", arg: 6, scope: !2180, file: !2094, line: 104, type: !30)
!2189 = !DILocalVariable(name: "s28", arg: 7, scope: !2180, file: !2094, line: 104, type: !30)
!2190 = !DILocation(line: 104, column: 41, scope: !2180, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 125, column: 16, scope: !2192, inlinedAt: !2171)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !2094, line: 122, column: 11)
!2193 = distinct !DILexicalBlock(scope: !2177, file: !2094, line: 121, column: 5)
!2194 = !DILocation(line: 104, column: 80, scope: !2180, inlinedAt: !2191)
!2195 = !DILocation(line: 104, column: 90, scope: !2180, inlinedAt: !2191)
!2196 = !DILocation(line: 106, column: 7, scope: !2197, inlinedAt: !2191)
!2197 = distinct !DILexicalBlock(scope: !2180, file: !2094, line: 106, column: 7)
!2198 = !DILocation(line: 106, column: 7, scope: !2180, inlinedAt: !2191)
!2199 = !DILocalVariable(name: "s2", arg: 2, scope: !2200, file: !2094, line: 90, type: !51)
!2200 = distinct !DISubprogram(name: "strcaseeq5", scope: !2094, file: !2094, line: 90, type: !2201, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!78, !51, !51, !30, !30, !30, !30}
!2203 = !{!2204, !2199, !2205, !2206, !2207, !2208}
!2204 = !DILocalVariable(name: "s1", arg: 1, scope: !2200, file: !2094, line: 90, type: !51)
!2205 = !DILocalVariable(name: "s25", arg: 3, scope: !2200, file: !2094, line: 90, type: !30)
!2206 = !DILocalVariable(name: "s26", arg: 4, scope: !2200, file: !2094, line: 90, type: !30)
!2207 = !DILocalVariable(name: "s27", arg: 5, scope: !2200, file: !2094, line: 90, type: !30)
!2208 = !DILocalVariable(name: "s28", arg: 6, scope: !2200, file: !2094, line: 90, type: !30)
!2209 = !DILocation(line: 90, column: 41, scope: !2200, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 111, column: 16, scope: !2211, inlinedAt: !2191)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !2094, line: 108, column: 11)
!2212 = distinct !DILexicalBlock(scope: !2197, file: !2094, line: 107, column: 5)
!2213 = !DILocation(line: 90, column: 70, scope: !2200, inlinedAt: !2210)
!2214 = !DILocation(line: 90, column: 80, scope: !2200, inlinedAt: !2210)
!2215 = !DILocation(line: 92, column: 7, scope: !2216, inlinedAt: !2210)
!2216 = distinct !DILexicalBlock(scope: !2200, file: !2094, line: 92, column: 7)
!2217 = !DILocation(line: 92, column: 7, scope: !2200, inlinedAt: !2210)
!2218 = !DILocation(line: 227, column: 12, scope: !2110)
!2219 = !DILocation(line: 227, column: 21, scope: !2110)
!2220 = !DILocation(line: 227, column: 5, scope: !2110)
!2221 = !DILocation(line: 146, column: 41, scope: !2116, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 167, column: 16, scope: !2131, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 228, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2075, file: !142, line: 228, column: 7)
!2225 = !DILocation(line: 146, column: 110, scope: !2116, inlinedAt: !2222)
!2226 = !DILocation(line: 146, column: 120, scope: !2116, inlinedAt: !2222)
!2227 = !DILocation(line: 148, column: 7, scope: !2136, inlinedAt: !2222)
!2228 = !DILocation(line: 132, column: 41, scope: !2138, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 153, column: 16, scope: !2152, inlinedAt: !2222)
!2230 = !DILocation(line: 132, column: 100, scope: !2138, inlinedAt: !2229)
!2231 = !DILocation(line: 132, column: 110, scope: !2138, inlinedAt: !2229)
!2232 = !DILocation(line: 134, column: 7, scope: !2157, inlinedAt: !2229)
!2233 = !DILocation(line: 134, column: 7, scope: !2138, inlinedAt: !2229)
!2234 = !DILocation(line: 118, column: 41, scope: !2159, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 139, column: 16, scope: !2172, inlinedAt: !2229)
!2236 = !DILocation(line: 118, column: 90, scope: !2159, inlinedAt: !2235)
!2237 = !DILocation(line: 118, column: 100, scope: !2159, inlinedAt: !2235)
!2238 = !DILocation(line: 120, column: 7, scope: !2177, inlinedAt: !2235)
!2239 = !DILocation(line: 120, column: 7, scope: !2159, inlinedAt: !2235)
!2240 = !DILocation(line: 104, column: 41, scope: !2180, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 125, column: 16, scope: !2192, inlinedAt: !2235)
!2242 = !DILocation(line: 104, column: 80, scope: !2180, inlinedAt: !2241)
!2243 = !DILocation(line: 104, column: 90, scope: !2180, inlinedAt: !2241)
!2244 = !DILocation(line: 106, column: 7, scope: !2197, inlinedAt: !2241)
!2245 = !DILocation(line: 106, column: 7, scope: !2180, inlinedAt: !2241)
!2246 = !DILocation(line: 90, column: 41, scope: !2200, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 111, column: 16, scope: !2211, inlinedAt: !2241)
!2248 = !DILocation(line: 90, column: 70, scope: !2200, inlinedAt: !2247)
!2249 = !DILocation(line: 90, column: 80, scope: !2200, inlinedAt: !2247)
!2250 = !DILocation(line: 92, column: 7, scope: !2216, inlinedAt: !2247)
!2251 = !DILocation(line: 92, column: 7, scope: !2200, inlinedAt: !2247)
!2252 = !DILocalVariable(name: "s2", arg: 2, scope: !2253, file: !2094, line: 76, type: !51)
!2253 = distinct !DISubprogram(name: "strcaseeq6", scope: !2094, file: !2094, line: 76, type: !2254, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!78, !51, !51, !30, !30, !30}
!2256 = !{!2257, !2252, !2258, !2259, !2260}
!2257 = !DILocalVariable(name: "s1", arg: 1, scope: !2253, file: !2094, line: 76, type: !51)
!2258 = !DILocalVariable(name: "s26", arg: 3, scope: !2253, file: !2094, line: 76, type: !30)
!2259 = !DILocalVariable(name: "s27", arg: 4, scope: !2253, file: !2094, line: 76, type: !30)
!2260 = !DILocalVariable(name: "s28", arg: 5, scope: !2253, file: !2094, line: 76, type: !30)
!2261 = !DILocation(line: 76, column: 41, scope: !2253, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 97, column: 16, scope: !2263, inlinedAt: !2247)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !2094, line: 94, column: 11)
!2264 = distinct !DILexicalBlock(scope: !2216, file: !2094, line: 93, column: 5)
!2265 = !DILocation(line: 76, column: 60, scope: !2253, inlinedAt: !2262)
!2266 = !DILocation(line: 76, column: 70, scope: !2253, inlinedAt: !2262)
!2267 = !DILocation(line: 78, column: 7, scope: !2268, inlinedAt: !2262)
!2268 = distinct !DILexicalBlock(scope: !2253, file: !2094, line: 78, column: 7)
!2269 = !DILocation(line: 78, column: 7, scope: !2253, inlinedAt: !2262)
!2270 = !DILocalVariable(name: "s2", arg: 2, scope: !2271, file: !2094, line: 62, type: !51)
!2271 = distinct !DISubprogram(name: "strcaseeq7", scope: !2094, file: !2094, line: 62, type: !2272, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!78, !51, !51, !30, !30}
!2274 = !{!2275, !2270, !2276, !2277}
!2275 = !DILocalVariable(name: "s1", arg: 1, scope: !2271, file: !2094, line: 62, type: !51)
!2276 = !DILocalVariable(name: "s27", arg: 3, scope: !2271, file: !2094, line: 62, type: !30)
!2277 = !DILocalVariable(name: "s28", arg: 4, scope: !2271, file: !2094, line: 62, type: !30)
!2278 = !DILocation(line: 62, column: 41, scope: !2271, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 83, column: 16, scope: !2280, inlinedAt: !2262)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !2094, line: 80, column: 11)
!2281 = distinct !DILexicalBlock(scope: !2268, file: !2094, line: 79, column: 5)
!2282 = !DILocation(line: 62, column: 50, scope: !2271, inlinedAt: !2279)
!2283 = !DILocation(line: 62, column: 60, scope: !2271, inlinedAt: !2279)
!2284 = !DILocation(line: 64, column: 7, scope: !2285, inlinedAt: !2279)
!2285 = distinct !DILexicalBlock(scope: !2271, file: !2094, line: 64, column: 7)
!2286 = !DILocation(line: 228, column: 7, scope: !2075)
!2287 = !DILocation(line: 229, column: 12, scope: !2224)
!2288 = !DILocation(line: 229, column: 21, scope: !2224)
!2289 = !DILocation(line: 229, column: 5, scope: !2224)
!2290 = !DILocation(line: 231, column: 13, scope: !2075)
!2291 = !DILocation(line: 231, column: 11, scope: !2075)
!2292 = !DILocation(line: 231, column: 3, scope: !2075)
!2293 = !DILocation(line: 232, column: 1, scope: !2075)
!2294 = distinct !DISubprogram(name: "quotearg_alloc", scope: !142, file: !142, line: 791, type: !2295, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2297)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!29, !51, !34, !1420}
!2297 = !{!2298, !2299, !2300}
!2298 = !DILocalVariable(name: "arg", arg: 1, scope: !2294, file: !142, line: 791, type: !51)
!2299 = !DILocalVariable(name: "argsize", arg: 2, scope: !2294, file: !142, line: 791, type: !34)
!2300 = !DILocalVariable(name: "o", arg: 3, scope: !2294, file: !142, line: 792, type: !1420)
!2301 = !DILocation(line: 791, column: 29, scope: !2294)
!2302 = !DILocation(line: 791, column: 41, scope: !2294)
!2303 = !DILocation(line: 792, column: 47, scope: !2294)
!2304 = !DILocalVariable(name: "arg", arg: 1, scope: !2305, file: !142, line: 804, type: !51)
!2305 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !142, file: !142, line: 804, type: !2306, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!29, !51, !34, !557, !1420}
!2308 = !{!2304, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316}
!2309 = !DILocalVariable(name: "argsize", arg: 2, scope: !2305, file: !142, line: 804, type: !34)
!2310 = !DILocalVariable(name: "size", arg: 3, scope: !2305, file: !142, line: 804, type: !557)
!2311 = !DILocalVariable(name: "o", arg: 4, scope: !2305, file: !142, line: 805, type: !1420)
!2312 = !DILocalVariable(name: "p", scope: !2305, file: !142, line: 807, type: !1420)
!2313 = !DILocalVariable(name: "e", scope: !2305, file: !142, line: 808, type: !78)
!2314 = !DILocalVariable(name: "flags", scope: !2305, file: !142, line: 810, type: !78)
!2315 = !DILocalVariable(name: "bufsize", scope: !2305, file: !142, line: 811, type: !34)
!2316 = !DILocalVariable(name: "buf", scope: !2305, file: !142, line: 815, type: !29)
!2317 = !DILocation(line: 804, column: 33, scope: !2305, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 794, column: 10, scope: !2294)
!2319 = !DILocation(line: 804, column: 45, scope: !2305, inlinedAt: !2318)
!2320 = !DILocation(line: 804, column: 62, scope: !2305, inlinedAt: !2318)
!2321 = !DILocation(line: 805, column: 51, scope: !2305, inlinedAt: !2318)
!2322 = !DILocation(line: 807, column: 37, scope: !2305, inlinedAt: !2318)
!2323 = !DILocation(line: 807, column: 33, scope: !2305, inlinedAt: !2318)
!2324 = !DILocation(line: 808, column: 11, scope: !2305, inlinedAt: !2318)
!2325 = !DILocation(line: 808, column: 7, scope: !2305, inlinedAt: !2318)
!2326 = !DILocation(line: 810, column: 18, scope: !2305, inlinedAt: !2318)
!2327 = !DILocation(line: 810, column: 24, scope: !2305, inlinedAt: !2318)
!2328 = !DILocation(line: 810, column: 7, scope: !2305, inlinedAt: !2318)
!2329 = !DILocation(line: 811, column: 69, scope: !2305, inlinedAt: !2318)
!2330 = !DILocation(line: 812, column: 53, scope: !2305, inlinedAt: !2318)
!2331 = !DILocation(line: 813, column: 49, scope: !2305, inlinedAt: !2318)
!2332 = !DILocation(line: 814, column: 49, scope: !2305, inlinedAt: !2318)
!2333 = !DILocation(line: 811, column: 20, scope: !2305, inlinedAt: !2318)
!2334 = !DILocation(line: 814, column: 62, scope: !2305, inlinedAt: !2318)
!2335 = !DILocation(line: 811, column: 10, scope: !2305, inlinedAt: !2318)
!2336 = !DILocalVariable(name: "n", arg: 1, scope: !2337, file: !553, line: 220, type: !34)
!2337 = distinct !DISubprogram(name: "xcharalloc", scope: !553, file: !553, line: 220, type: !2338, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!29, !34}
!2340 = !{!2336}
!2341 = !DILocation(line: 220, column: 20, scope: !2337, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 815, column: 15, scope: !2305, inlinedAt: !2318)
!2343 = !DILocation(line: 222, column: 10, scope: !2337, inlinedAt: !2342)
!2344 = !DILocation(line: 815, column: 9, scope: !2305, inlinedAt: !2318)
!2345 = !DILocation(line: 816, column: 60, scope: !2305, inlinedAt: !2318)
!2346 = !DILocation(line: 818, column: 32, scope: !2305, inlinedAt: !2318)
!2347 = !DILocation(line: 818, column: 47, scope: !2305, inlinedAt: !2318)
!2348 = !DILocation(line: 816, column: 3, scope: !2305, inlinedAt: !2318)
!2349 = !DILocation(line: 819, column: 9, scope: !2305, inlinedAt: !2318)
!2350 = !DILocation(line: 794, column: 3, scope: !2294)
!2351 = !DILocation(line: 804, column: 33, scope: !2305)
!2352 = !DILocation(line: 804, column: 45, scope: !2305)
!2353 = !DILocation(line: 804, column: 62, scope: !2305)
!2354 = !DILocation(line: 805, column: 51, scope: !2305)
!2355 = !DILocation(line: 807, column: 37, scope: !2305)
!2356 = !DILocation(line: 807, column: 33, scope: !2305)
!2357 = !DILocation(line: 808, column: 11, scope: !2305)
!2358 = !DILocation(line: 808, column: 7, scope: !2305)
!2359 = !DILocation(line: 810, column: 18, scope: !2305)
!2360 = !DILocation(line: 810, column: 27, scope: !2305)
!2361 = !DILocation(line: 810, column: 24, scope: !2305)
!2362 = !DILocation(line: 810, column: 7, scope: !2305)
!2363 = !DILocation(line: 811, column: 69, scope: !2305)
!2364 = !DILocation(line: 812, column: 53, scope: !2305)
!2365 = !DILocation(line: 813, column: 49, scope: !2305)
!2366 = !DILocation(line: 814, column: 49, scope: !2305)
!2367 = !DILocation(line: 811, column: 20, scope: !2305)
!2368 = !DILocation(line: 814, column: 62, scope: !2305)
!2369 = !DILocation(line: 811, column: 10, scope: !2305)
!2370 = !DILocation(line: 220, column: 20, scope: !2337, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 815, column: 15, scope: !2305)
!2372 = !DILocation(line: 222, column: 10, scope: !2337, inlinedAt: !2371)
!2373 = !DILocation(line: 815, column: 9, scope: !2305)
!2374 = !DILocation(line: 816, column: 60, scope: !2305)
!2375 = !DILocation(line: 818, column: 32, scope: !2305)
!2376 = !DILocation(line: 818, column: 47, scope: !2305)
!2377 = !DILocation(line: 816, column: 3, scope: !2305)
!2378 = !DILocation(line: 819, column: 9, scope: !2305)
!2379 = !DILocation(line: 820, column: 7, scope: !2305)
!2380 = !DILocation(line: 821, column: 11, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2305, file: !142, line: 820, column: 7)
!2382 = !{!847, !847, i64 0}
!2383 = !DILocation(line: 821, column: 5, scope: !2381)
!2384 = !DILocation(line: 822, column: 3, scope: !2305)
!2385 = distinct !DISubprogram(name: "quotearg_free", scope: !142, file: !142, line: 840, type: !610, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2386)
!2386 = !{!2387, !2388}
!2387 = !DILocalVariable(name: "sv", scope: !2385, file: !142, line: 842, type: !169)
!2388 = !DILocalVariable(name: "i", scope: !2385, file: !142, line: 843, type: !78)
!2389 = !DILocation(line: 842, column: 24, scope: !2385)
!2390 = !DILocation(line: 842, column: 19, scope: !2385)
!2391 = !DILocation(line: 843, column: 7, scope: !2385)
!2392 = !DILocation(line: 844, column: 19, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !142, line: 844, column: 3)
!2394 = distinct !DILexicalBlock(scope: !2385, file: !142, line: 844, column: 3)
!2395 = !DILocation(line: 844, column: 17, scope: !2393)
!2396 = !DILocation(line: 844, column: 3, scope: !2394)
!2397 = !DILocation(line: 845, column: 17, scope: !2393)
!2398 = !{!2399, !602, i64 8}
!2399 = !{!"slotvec", !847, i64 0, !602, i64 8}
!2400 = !DILocation(line: 845, column: 5, scope: !2393)
!2401 = !DILocation(line: 844, column: 28, scope: !2393)
!2402 = distinct !{!2402, !2396, !2403}
!2403 = !DILocation(line: 845, column: 20, scope: !2394)
!2404 = !DILocation(line: 846, column: 13, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2385, file: !142, line: 846, column: 7)
!2406 = !DILocation(line: 846, column: 17, scope: !2405)
!2407 = !DILocation(line: 846, column: 7, scope: !2385)
!2408 = !DILocation(line: 848, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !142, line: 847, column: 5)
!2410 = !DILocation(line: 849, column: 21, scope: !2409)
!2411 = !{!2399, !847, i64 0}
!2412 = !DILocation(line: 850, column: 20, scope: !2409)
!2413 = !DILocation(line: 851, column: 5, scope: !2409)
!2414 = !DILocation(line: 852, column: 10, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2385, file: !142, line: 852, column: 7)
!2416 = !DILocation(line: 852, column: 7, scope: !2385)
!2417 = !DILocation(line: 854, column: 13, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2415, file: !142, line: 853, column: 5)
!2419 = !DILocation(line: 854, column: 7, scope: !2418)
!2420 = !DILocation(line: 855, column: 15, scope: !2418)
!2421 = !DILocation(line: 856, column: 5, scope: !2418)
!2422 = !DILocation(line: 857, column: 10, scope: !2385)
!2423 = !DILocation(line: 858, column: 1, scope: !2385)
!2424 = distinct !DISubprogram(name: "quotearg_n", scope: !142, file: !142, line: 922, type: !2425, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!29, !78, !51}
!2427 = !{!2428, !2429}
!2428 = !DILocalVariable(name: "n", arg: 1, scope: !2424, file: !142, line: 922, type: !78)
!2429 = !DILocalVariable(name: "arg", arg: 2, scope: !2424, file: !142, line: 922, type: !51)
!2430 = !DILocation(line: 922, column: 17, scope: !2424)
!2431 = !DILocation(line: 922, column: 32, scope: !2424)
!2432 = !DILocation(line: 924, column: 10, scope: !2424)
!2433 = !DILocation(line: 924, column: 3, scope: !2424)
!2434 = distinct !DISubprogram(name: "quotearg_n_options", scope: !142, file: !142, line: 869, type: !2435, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!29, !78, !51, !34, !1420}
!2437 = !{!2438, !2439, !2440, !2441, !2442, !2443, !2444, !2447, !2449, !2450, !2451}
!2438 = !DILocalVariable(name: "n", arg: 1, scope: !2434, file: !142, line: 869, type: !78)
!2439 = !DILocalVariable(name: "arg", arg: 2, scope: !2434, file: !142, line: 869, type: !51)
!2440 = !DILocalVariable(name: "argsize", arg: 3, scope: !2434, file: !142, line: 869, type: !34)
!2441 = !DILocalVariable(name: "options", arg: 4, scope: !2434, file: !142, line: 870, type: !1420)
!2442 = !DILocalVariable(name: "e", scope: !2434, file: !142, line: 872, type: !78)
!2443 = !DILocalVariable(name: "sv", scope: !2434, file: !142, line: 874, type: !169)
!2444 = !DILocalVariable(name: "preallocated", scope: !2445, file: !142, line: 881, type: !40)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !142, line: 880, column: 5)
!2446 = distinct !DILexicalBlock(scope: !2434, file: !142, line: 879, column: 7)
!2447 = !DILocalVariable(name: "size", scope: !2448, file: !142, line: 894, type: !34)
!2448 = distinct !DILexicalBlock(scope: !2434, file: !142, line: 893, column: 3)
!2449 = !DILocalVariable(name: "val", scope: !2448, file: !142, line: 895, type: !29)
!2450 = !DILocalVariable(name: "flags", scope: !2448, file: !142, line: 897, type: !78)
!2451 = !DILocalVariable(name: "qsize", scope: !2448, file: !142, line: 898, type: !34)
!2452 = !DILocation(line: 869, column: 25, scope: !2434)
!2453 = !DILocation(line: 869, column: 40, scope: !2434)
!2454 = !DILocation(line: 869, column: 52, scope: !2434)
!2455 = !DILocation(line: 870, column: 51, scope: !2434)
!2456 = !DILocation(line: 872, column: 11, scope: !2434)
!2457 = !DILocation(line: 872, column: 7, scope: !2434)
!2458 = !DILocation(line: 874, column: 24, scope: !2434)
!2459 = !DILocation(line: 874, column: 19, scope: !2434)
!2460 = !DILocation(line: 876, column: 9, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2434, file: !142, line: 876, column: 7)
!2462 = !DILocation(line: 876, column: 7, scope: !2434)
!2463 = !DILocation(line: 877, column: 5, scope: !2461)
!2464 = !DILocation(line: 879, column: 7, scope: !2446)
!2465 = !DILocation(line: 879, column: 14, scope: !2446)
!2466 = !DILocation(line: 879, column: 7, scope: !2434)
!2467 = !DILocation(line: 881, column: 31, scope: !2445)
!2468 = !DILocation(line: 883, column: 67, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2445, file: !142, line: 883, column: 11)
!2470 = !DILocation(line: 883, column: 11, scope: !2445)
!2471 = !DILocation(line: 884, column: 9, scope: !2469)
!2472 = !DILocation(line: 886, column: 32, scope: !2445)
!2473 = !DILocation(line: 886, column: 61, scope: !2445)
!2474 = !DILocation(line: 886, column: 58, scope: !2445)
!2475 = !DILocation(line: 886, column: 66, scope: !2445)
!2476 = !DILocation(line: 886, column: 22, scope: !2445)
!2477 = !DILocation(line: 886, column: 15, scope: !2445)
!2478 = !DILocation(line: 887, column: 11, scope: !2445)
!2479 = !DILocation(line: 888, column: 15, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2445, file: !142, line: 887, column: 11)
!2481 = !{i64 0, i64 8, !2382, i64 8, i64 8, !601}
!2482 = !DILocation(line: 888, column: 9, scope: !2480)
!2483 = !DILocation(line: 889, column: 20, scope: !2445)
!2484 = !DILocation(line: 889, column: 18, scope: !2445)
!2485 = !DILocation(line: 889, column: 7, scope: !2445)
!2486 = !DILocation(line: 889, column: 38, scope: !2445)
!2487 = !DILocation(line: 889, column: 31, scope: !2445)
!2488 = !DILocation(line: 889, column: 48, scope: !2445)
!2489 = !DILocation(line: 890, column: 14, scope: !2445)
!2490 = !DILocation(line: 891, column: 5, scope: !2445)
!2491 = !DILocation(line: 894, column: 19, scope: !2448)
!2492 = !DILocation(line: 894, column: 25, scope: !2448)
!2493 = !DILocation(line: 894, column: 12, scope: !2448)
!2494 = !DILocation(line: 895, column: 23, scope: !2448)
!2495 = !DILocation(line: 895, column: 11, scope: !2448)
!2496 = !DILocation(line: 897, column: 26, scope: !2448)
!2497 = !DILocation(line: 897, column: 32, scope: !2448)
!2498 = !DILocation(line: 897, column: 9, scope: !2448)
!2499 = !DILocation(line: 899, column: 55, scope: !2448)
!2500 = !DILocation(line: 900, column: 46, scope: !2448)
!2501 = !DILocation(line: 901, column: 55, scope: !2448)
!2502 = !DILocation(line: 902, column: 55, scope: !2448)
!2503 = !DILocation(line: 898, column: 20, scope: !2448)
!2504 = !DILocation(line: 898, column: 12, scope: !2448)
!2505 = !DILocation(line: 904, column: 14, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2448, file: !142, line: 904, column: 9)
!2507 = !DILocation(line: 904, column: 9, scope: !2448)
!2508 = !DILocation(line: 906, column: 35, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2506, file: !142, line: 905, column: 7)
!2510 = !DILocation(line: 906, column: 20, scope: !2509)
!2511 = !DILocation(line: 907, column: 17, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !142, line: 907, column: 13)
!2513 = !DILocation(line: 907, column: 13, scope: !2509)
!2514 = !DILocation(line: 908, column: 11, scope: !2512)
!2515 = !DILocation(line: 220, column: 20, scope: !2337, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 909, column: 27, scope: !2509)
!2517 = !DILocation(line: 222, column: 10, scope: !2337, inlinedAt: !2516)
!2518 = !DILocation(line: 909, column: 19, scope: !2509)
!2519 = !DILocation(line: 910, column: 69, scope: !2509)
!2520 = !DILocation(line: 912, column: 44, scope: !2509)
!2521 = !DILocation(line: 913, column: 44, scope: !2509)
!2522 = !DILocation(line: 910, column: 9, scope: !2509)
!2523 = !DILocation(line: 914, column: 7, scope: !2509)
!2524 = !DILocation(line: 916, column: 11, scope: !2448)
!2525 = !DILocation(line: 917, column: 5, scope: !2448)
!2526 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !142, file: !142, line: 928, type: !2527, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!29, !78, !51, !34}
!2529 = !{!2530, !2531, !2532}
!2530 = !DILocalVariable(name: "n", arg: 1, scope: !2526, file: !142, line: 928, type: !78)
!2531 = !DILocalVariable(name: "arg", arg: 2, scope: !2526, file: !142, line: 928, type: !51)
!2532 = !DILocalVariable(name: "argsize", arg: 3, scope: !2526, file: !142, line: 928, type: !34)
!2533 = !DILocation(line: 928, column: 21, scope: !2526)
!2534 = !DILocation(line: 928, column: 36, scope: !2526)
!2535 = !DILocation(line: 928, column: 48, scope: !2526)
!2536 = !DILocation(line: 930, column: 10, scope: !2526)
!2537 = !DILocation(line: 930, column: 3, scope: !2526)
!2538 = distinct !DISubprogram(name: "quotearg", scope: !142, file: !142, line: 934, type: !2539, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2541)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!29, !51}
!2541 = !{!2542}
!2542 = !DILocalVariable(name: "arg", arg: 1, scope: !2538, file: !142, line: 934, type: !51)
!2543 = !DILocation(line: 934, column: 23, scope: !2538)
!2544 = !DILocation(line: 922, column: 17, scope: !2424, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 936, column: 10, scope: !2538)
!2546 = !DILocation(line: 922, column: 32, scope: !2424, inlinedAt: !2545)
!2547 = !DILocation(line: 924, column: 10, scope: !2424, inlinedAt: !2545)
!2548 = !DILocation(line: 936, column: 3, scope: !2538)
!2549 = distinct !DISubprogram(name: "quotearg_mem", scope: !142, file: !142, line: 940, type: !2550, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!29, !51, !34}
!2552 = !{!2553, !2554}
!2553 = !DILocalVariable(name: "arg", arg: 1, scope: !2549, file: !142, line: 940, type: !51)
!2554 = !DILocalVariable(name: "argsize", arg: 2, scope: !2549, file: !142, line: 940, type: !34)
!2555 = !DILocation(line: 940, column: 27, scope: !2549)
!2556 = !DILocation(line: 940, column: 39, scope: !2549)
!2557 = !DILocation(line: 928, column: 21, scope: !2526, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 942, column: 10, scope: !2549)
!2559 = !DILocation(line: 928, column: 36, scope: !2526, inlinedAt: !2558)
!2560 = !DILocation(line: 928, column: 48, scope: !2526, inlinedAt: !2558)
!2561 = !DILocation(line: 930, column: 10, scope: !2526, inlinedAt: !2558)
!2562 = !DILocation(line: 942, column: 3, scope: !2549)
!2563 = distinct !DISubprogram(name: "quotearg_n_style", scope: !142, file: !142, line: 946, type: !2564, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!29, !78, !5, !51}
!2566 = !{!2567, !2568, !2569, !2570}
!2567 = !DILocalVariable(name: "n", arg: 1, scope: !2563, file: !142, line: 946, type: !78)
!2568 = !DILocalVariable(name: "s", arg: 2, scope: !2563, file: !142, line: 946, type: !5)
!2569 = !DILocalVariable(name: "arg", arg: 3, scope: !2563, file: !142, line: 946, type: !51)
!2570 = !DILocalVariable(name: "o", scope: !2563, file: !142, line: 948, type: !1421)
!2571 = !DILocalVariable(name: "o", scope: !2572, file: !142, line: 187, type: !149)
!2572 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !142, file: !142, line: 185, type: !2573, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!149, !5}
!2575 = !{!2576, !2571}
!2576 = !DILocalVariable(name: "style", arg: 1, scope: !2572, file: !142, line: 185, type: !5)
!2577 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2578 = !DILocation(line: 187, column: 26, scope: !2572, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 948, column: 36, scope: !2563)
!2580 = !DILocation(line: 946, column: 23, scope: !2563)
!2581 = !DILocation(line: 946, column: 45, scope: !2563)
!2582 = !DILocation(line: 946, column: 60, scope: !2563)
!2583 = !DILocation(line: 948, column: 3, scope: !2563)
!2584 = !DILocation(line: 948, column: 32, scope: !2563)
!2585 = !DILocation(line: 185, column: 48, scope: !2572, inlinedAt: !2579)
!2586 = !DILocation(line: 187, column: 3, scope: !2572, inlinedAt: !2579)
!2587 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2588 = !DILocation(line: 188, column: 13, scope: !2589, inlinedAt: !2579)
!2589 = distinct !DILexicalBlock(scope: !2572, file: !142, line: 188, column: 7)
!2590 = !DILocation(line: 188, column: 7, scope: !2572, inlinedAt: !2579)
!2591 = !DILocation(line: 189, column: 5, scope: !2589, inlinedAt: !2579)
!2592 = !{!2593}
!2593 = distinct !{!2593, !2594, !"quoting_options_from_style: argument 0"}
!2594 = distinct !{!2594, !"quoting_options_from_style"}
!2595 = !DILocation(line: 191, column: 10, scope: !2572, inlinedAt: !2579)
!2596 = !DILocation(line: 192, column: 1, scope: !2572, inlinedAt: !2579)
!2597 = !DILocation(line: 949, column: 10, scope: !2563)
!2598 = !DILocation(line: 950, column: 1, scope: !2563)
!2599 = !DILocation(line: 949, column: 3, scope: !2563)
!2600 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !142, file: !142, line: 953, type: !2601, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!29, !78, !5, !51, !34}
!2603 = !{!2604, !2605, !2606, !2607, !2608}
!2604 = !DILocalVariable(name: "n", arg: 1, scope: !2600, file: !142, line: 953, type: !78)
!2605 = !DILocalVariable(name: "s", arg: 2, scope: !2600, file: !142, line: 953, type: !5)
!2606 = !DILocalVariable(name: "arg", arg: 3, scope: !2600, file: !142, line: 954, type: !51)
!2607 = !DILocalVariable(name: "argsize", arg: 4, scope: !2600, file: !142, line: 954, type: !34)
!2608 = !DILocalVariable(name: "o", scope: !2600, file: !142, line: 956, type: !1421)
!2609 = !DILocation(line: 187, column: 26, scope: !2572, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 956, column: 36, scope: !2600)
!2611 = !DILocation(line: 953, column: 27, scope: !2600)
!2612 = !DILocation(line: 953, column: 49, scope: !2600)
!2613 = !DILocation(line: 954, column: 35, scope: !2600)
!2614 = !DILocation(line: 954, column: 47, scope: !2600)
!2615 = !DILocation(line: 956, column: 3, scope: !2600)
!2616 = !DILocation(line: 956, column: 32, scope: !2600)
!2617 = !DILocation(line: 185, column: 48, scope: !2572, inlinedAt: !2610)
!2618 = !DILocation(line: 187, column: 3, scope: !2572, inlinedAt: !2610)
!2619 = !DILocation(line: 188, column: 13, scope: !2589, inlinedAt: !2610)
!2620 = !DILocation(line: 188, column: 7, scope: !2572, inlinedAt: !2610)
!2621 = !DILocation(line: 189, column: 5, scope: !2589, inlinedAt: !2610)
!2622 = !{!2623}
!2623 = distinct !{!2623, !2624, !"quoting_options_from_style: argument 0"}
!2624 = distinct !{!2624, !"quoting_options_from_style"}
!2625 = !DILocation(line: 191, column: 10, scope: !2572, inlinedAt: !2610)
!2626 = !DILocation(line: 192, column: 1, scope: !2572, inlinedAt: !2610)
!2627 = !DILocation(line: 957, column: 10, scope: !2600)
!2628 = !DILocation(line: 958, column: 1, scope: !2600)
!2629 = !DILocation(line: 957, column: 3, scope: !2600)
!2630 = distinct !DISubprogram(name: "quotearg_style", scope: !142, file: !142, line: 961, type: !2631, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!29, !5, !51}
!2633 = !{!2634, !2635}
!2634 = !DILocalVariable(name: "s", arg: 1, scope: !2630, file: !142, line: 961, type: !5)
!2635 = !DILocalVariable(name: "arg", arg: 2, scope: !2630, file: !142, line: 961, type: !51)
!2636 = !DILocation(line: 187, column: 26, scope: !2572, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 948, column: 36, scope: !2563, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 963, column: 10, scope: !2630)
!2639 = !DILocation(line: 961, column: 36, scope: !2630)
!2640 = !DILocation(line: 961, column: 51, scope: !2630)
!2641 = !DILocation(line: 946, column: 23, scope: !2563, inlinedAt: !2638)
!2642 = !DILocation(line: 946, column: 45, scope: !2563, inlinedAt: !2638)
!2643 = !DILocation(line: 946, column: 60, scope: !2563, inlinedAt: !2638)
!2644 = !DILocation(line: 948, column: 3, scope: !2563, inlinedAt: !2638)
!2645 = !DILocation(line: 948, column: 32, scope: !2563, inlinedAt: !2638)
!2646 = !DILocation(line: 185, column: 48, scope: !2572, inlinedAt: !2637)
!2647 = !DILocation(line: 187, column: 3, scope: !2572, inlinedAt: !2637)
!2648 = !DILocation(line: 188, column: 13, scope: !2589, inlinedAt: !2637)
!2649 = !DILocation(line: 188, column: 7, scope: !2572, inlinedAt: !2637)
!2650 = !DILocation(line: 189, column: 5, scope: !2589, inlinedAt: !2637)
!2651 = !{!2652}
!2652 = distinct !{!2652, !2653, !"quoting_options_from_style: argument 0"}
!2653 = distinct !{!2653, !"quoting_options_from_style"}
!2654 = !DILocation(line: 191, column: 10, scope: !2572, inlinedAt: !2637)
!2655 = !DILocation(line: 192, column: 1, scope: !2572, inlinedAt: !2637)
!2656 = !DILocation(line: 949, column: 10, scope: !2563, inlinedAt: !2638)
!2657 = !DILocation(line: 950, column: 1, scope: !2563, inlinedAt: !2638)
!2658 = !DILocation(line: 963, column: 3, scope: !2630)
!2659 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !142, file: !142, line: 967, type: !2660, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!29, !5, !51, !34}
!2662 = !{!2663, !2664, !2665}
!2663 = !DILocalVariable(name: "s", arg: 1, scope: !2659, file: !142, line: 967, type: !5)
!2664 = !DILocalVariable(name: "arg", arg: 2, scope: !2659, file: !142, line: 967, type: !51)
!2665 = !DILocalVariable(name: "argsize", arg: 3, scope: !2659, file: !142, line: 967, type: !34)
!2666 = !DILocation(line: 187, column: 26, scope: !2572, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 956, column: 36, scope: !2600, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 969, column: 10, scope: !2659)
!2669 = !DILocation(line: 967, column: 40, scope: !2659)
!2670 = !DILocation(line: 967, column: 55, scope: !2659)
!2671 = !DILocation(line: 967, column: 67, scope: !2659)
!2672 = !DILocation(line: 953, column: 27, scope: !2600, inlinedAt: !2668)
!2673 = !DILocation(line: 953, column: 49, scope: !2600, inlinedAt: !2668)
!2674 = !DILocation(line: 954, column: 35, scope: !2600, inlinedAt: !2668)
!2675 = !DILocation(line: 954, column: 47, scope: !2600, inlinedAt: !2668)
!2676 = !DILocation(line: 956, column: 3, scope: !2600, inlinedAt: !2668)
!2677 = !DILocation(line: 956, column: 32, scope: !2600, inlinedAt: !2668)
!2678 = !DILocation(line: 185, column: 48, scope: !2572, inlinedAt: !2667)
!2679 = !DILocation(line: 187, column: 3, scope: !2572, inlinedAt: !2667)
!2680 = !DILocation(line: 188, column: 13, scope: !2589, inlinedAt: !2667)
!2681 = !DILocation(line: 188, column: 7, scope: !2572, inlinedAt: !2667)
!2682 = !DILocation(line: 189, column: 5, scope: !2589, inlinedAt: !2667)
!2683 = !{!2684}
!2684 = distinct !{!2684, !2685, !"quoting_options_from_style: argument 0"}
!2685 = distinct !{!2685, !"quoting_options_from_style"}
!2686 = !DILocation(line: 191, column: 10, scope: !2572, inlinedAt: !2667)
!2687 = !DILocation(line: 192, column: 1, scope: !2572, inlinedAt: !2667)
!2688 = !DILocation(line: 957, column: 10, scope: !2600, inlinedAt: !2668)
!2689 = !DILocation(line: 958, column: 1, scope: !2600, inlinedAt: !2668)
!2690 = !DILocation(line: 969, column: 3, scope: !2659)
!2691 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !142, file: !142, line: 973, type: !2692, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!29, !51, !34, !30}
!2694 = !{!2695, !2696, !2697, !2698}
!2695 = !DILocalVariable(name: "arg", arg: 1, scope: !2691, file: !142, line: 973, type: !51)
!2696 = !DILocalVariable(name: "argsize", arg: 2, scope: !2691, file: !142, line: 973, type: !34)
!2697 = !DILocalVariable(name: "ch", arg: 3, scope: !2691, file: !142, line: 973, type: !30)
!2698 = !DILocalVariable(name: "options", scope: !2691, file: !142, line: 975, type: !149)
!2699 = !DILocation(line: 973, column: 32, scope: !2691)
!2700 = !DILocation(line: 973, column: 44, scope: !2691)
!2701 = !DILocation(line: 973, column: 58, scope: !2691)
!2702 = !DILocation(line: 975, column: 3, scope: !2691)
!2703 = !DILocation(line: 976, column: 13, scope: !2691)
!2704 = !{i64 0, i64 4, !662, i64 4, i64 4, !672, i64 8, i64 32, !662, i64 40, i64 8, !601, i64 48, i64 8, !601}
!2705 = !DILocation(line: 975, column: 26, scope: !2691)
!2706 = !DILocation(line: 144, column: 43, scope: !1442, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 977, column: 3, scope: !2691)
!2708 = !DILocation(line: 144, column: 51, scope: !1442, inlinedAt: !2707)
!2709 = !DILocation(line: 144, column: 58, scope: !1442, inlinedAt: !2707)
!2710 = !DILocation(line: 146, column: 17, scope: !1442, inlinedAt: !2707)
!2711 = !DILocation(line: 148, column: 62, scope: !1442, inlinedAt: !2707)
!2712 = !DILocation(line: 148, column: 57, scope: !1442, inlinedAt: !2707)
!2713 = !DILocation(line: 147, column: 17, scope: !1442, inlinedAt: !2707)
!2714 = !DILocation(line: 149, column: 18, scope: !1442, inlinedAt: !2707)
!2715 = !DILocation(line: 149, column: 15, scope: !1442, inlinedAt: !2707)
!2716 = !DILocation(line: 149, column: 7, scope: !1442, inlinedAt: !2707)
!2717 = !DILocation(line: 150, column: 12, scope: !1442, inlinedAt: !2707)
!2718 = !DILocation(line: 150, column: 15, scope: !1442, inlinedAt: !2707)
!2719 = !DILocation(line: 150, column: 25, scope: !1442, inlinedAt: !2707)
!2720 = !DILocation(line: 150, column: 7, scope: !1442, inlinedAt: !2707)
!2721 = !DILocation(line: 151, column: 18, scope: !1442, inlinedAt: !2707)
!2722 = !DILocation(line: 151, column: 23, scope: !1442, inlinedAt: !2707)
!2723 = !DILocation(line: 151, column: 6, scope: !1442, inlinedAt: !2707)
!2724 = !DILocation(line: 978, column: 10, scope: !2691)
!2725 = !DILocation(line: 979, column: 1, scope: !2691)
!2726 = !DILocation(line: 978, column: 3, scope: !2691)
!2727 = distinct !DISubprogram(name: "quotearg_char", scope: !142, file: !142, line: 982, type: !2728, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!29, !51, !30}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "arg", arg: 1, scope: !2727, file: !142, line: 982, type: !51)
!2732 = !DILocalVariable(name: "ch", arg: 2, scope: !2727, file: !142, line: 982, type: !30)
!2733 = !DILocation(line: 982, column: 28, scope: !2727)
!2734 = !DILocation(line: 982, column: 38, scope: !2727)
!2735 = !DILocation(line: 973, column: 32, scope: !2691, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 984, column: 10, scope: !2727)
!2737 = !DILocation(line: 973, column: 44, scope: !2691, inlinedAt: !2736)
!2738 = !DILocation(line: 973, column: 58, scope: !2691, inlinedAt: !2736)
!2739 = !DILocation(line: 975, column: 3, scope: !2691, inlinedAt: !2736)
!2740 = !DILocation(line: 976, column: 13, scope: !2691, inlinedAt: !2736)
!2741 = !DILocation(line: 975, column: 26, scope: !2691, inlinedAt: !2736)
!2742 = !DILocation(line: 144, column: 43, scope: !1442, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 977, column: 3, scope: !2691, inlinedAt: !2736)
!2744 = !DILocation(line: 144, column: 51, scope: !1442, inlinedAt: !2743)
!2745 = !DILocation(line: 144, column: 58, scope: !1442, inlinedAt: !2743)
!2746 = !DILocation(line: 146, column: 17, scope: !1442, inlinedAt: !2743)
!2747 = !DILocation(line: 148, column: 62, scope: !1442, inlinedAt: !2743)
!2748 = !DILocation(line: 148, column: 57, scope: !1442, inlinedAt: !2743)
!2749 = !DILocation(line: 147, column: 17, scope: !1442, inlinedAt: !2743)
!2750 = !DILocation(line: 149, column: 18, scope: !1442, inlinedAt: !2743)
!2751 = !DILocation(line: 149, column: 15, scope: !1442, inlinedAt: !2743)
!2752 = !DILocation(line: 149, column: 7, scope: !1442, inlinedAt: !2743)
!2753 = !DILocation(line: 150, column: 12, scope: !1442, inlinedAt: !2743)
!2754 = !DILocation(line: 150, column: 15, scope: !1442, inlinedAt: !2743)
!2755 = !DILocation(line: 150, column: 25, scope: !1442, inlinedAt: !2743)
!2756 = !DILocation(line: 150, column: 7, scope: !1442, inlinedAt: !2743)
!2757 = !DILocation(line: 151, column: 18, scope: !1442, inlinedAt: !2743)
!2758 = !DILocation(line: 151, column: 23, scope: !1442, inlinedAt: !2743)
!2759 = !DILocation(line: 151, column: 6, scope: !1442, inlinedAt: !2743)
!2760 = !DILocation(line: 978, column: 10, scope: !2691, inlinedAt: !2736)
!2761 = !DILocation(line: 979, column: 1, scope: !2691, inlinedAt: !2736)
!2762 = !DILocation(line: 984, column: 3, scope: !2727)
!2763 = distinct !DISubprogram(name: "quotearg_colon", scope: !142, file: !142, line: 988, type: !2539, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2764)
!2764 = !{!2765}
!2765 = !DILocalVariable(name: "arg", arg: 1, scope: !2763, file: !142, line: 988, type: !51)
!2766 = !DILocation(line: 988, column: 29, scope: !2763)
!2767 = !DILocation(line: 982, column: 28, scope: !2727, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 990, column: 10, scope: !2763)
!2769 = !DILocation(line: 982, column: 38, scope: !2727, inlinedAt: !2768)
!2770 = !DILocation(line: 973, column: 32, scope: !2691, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 984, column: 10, scope: !2727, inlinedAt: !2768)
!2772 = !DILocation(line: 973, column: 44, scope: !2691, inlinedAt: !2771)
!2773 = !DILocation(line: 973, column: 58, scope: !2691, inlinedAt: !2771)
!2774 = !DILocation(line: 975, column: 3, scope: !2691, inlinedAt: !2771)
!2775 = !DILocation(line: 976, column: 13, scope: !2691, inlinedAt: !2771)
!2776 = !DILocation(line: 975, column: 26, scope: !2691, inlinedAt: !2771)
!2777 = !DILocation(line: 144, column: 43, scope: !1442, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 977, column: 3, scope: !2691, inlinedAt: !2771)
!2779 = !DILocation(line: 144, column: 51, scope: !1442, inlinedAt: !2778)
!2780 = !DILocation(line: 144, column: 58, scope: !1442, inlinedAt: !2778)
!2781 = !DILocation(line: 146, column: 17, scope: !1442, inlinedAt: !2778)
!2782 = !DILocation(line: 148, column: 57, scope: !1442, inlinedAt: !2778)
!2783 = !DILocation(line: 147, column: 17, scope: !1442, inlinedAt: !2778)
!2784 = !DILocation(line: 149, column: 7, scope: !1442, inlinedAt: !2778)
!2785 = !DILocation(line: 150, column: 12, scope: !1442, inlinedAt: !2778)
!2786 = !DILocation(line: 151, column: 6, scope: !1442, inlinedAt: !2778)
!2787 = !DILocation(line: 978, column: 10, scope: !2691, inlinedAt: !2771)
!2788 = !DILocation(line: 979, column: 1, scope: !2691, inlinedAt: !2771)
!2789 = !DILocation(line: 990, column: 3, scope: !2763)
!2790 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !142, file: !142, line: 994, type: !2550, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2791)
!2791 = !{!2792, !2793}
!2792 = !DILocalVariable(name: "arg", arg: 1, scope: !2790, file: !142, line: 994, type: !51)
!2793 = !DILocalVariable(name: "argsize", arg: 2, scope: !2790, file: !142, line: 994, type: !34)
!2794 = !DILocation(line: 994, column: 33, scope: !2790)
!2795 = !DILocation(line: 994, column: 45, scope: !2790)
!2796 = !DILocation(line: 973, column: 32, scope: !2691, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 996, column: 10, scope: !2790)
!2798 = !DILocation(line: 973, column: 44, scope: !2691, inlinedAt: !2797)
!2799 = !DILocation(line: 973, column: 58, scope: !2691, inlinedAt: !2797)
!2800 = !DILocation(line: 975, column: 3, scope: !2691, inlinedAt: !2797)
!2801 = !DILocation(line: 976, column: 13, scope: !2691, inlinedAt: !2797)
!2802 = !DILocation(line: 975, column: 26, scope: !2691, inlinedAt: !2797)
!2803 = !DILocation(line: 144, column: 43, scope: !1442, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 977, column: 3, scope: !2691, inlinedAt: !2797)
!2805 = !DILocation(line: 144, column: 51, scope: !1442, inlinedAt: !2804)
!2806 = !DILocation(line: 144, column: 58, scope: !1442, inlinedAt: !2804)
!2807 = !DILocation(line: 146, column: 17, scope: !1442, inlinedAt: !2804)
!2808 = !DILocation(line: 148, column: 57, scope: !1442, inlinedAt: !2804)
!2809 = !DILocation(line: 147, column: 17, scope: !1442, inlinedAt: !2804)
!2810 = !DILocation(line: 149, column: 7, scope: !1442, inlinedAt: !2804)
!2811 = !DILocation(line: 150, column: 12, scope: !1442, inlinedAt: !2804)
!2812 = !DILocation(line: 151, column: 6, scope: !1442, inlinedAt: !2804)
!2813 = !DILocation(line: 978, column: 10, scope: !2691, inlinedAt: !2797)
!2814 = !DILocation(line: 979, column: 1, scope: !2691, inlinedAt: !2797)
!2815 = !DILocation(line: 996, column: 3, scope: !2790)
!2816 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !142, file: !142, line: 1000, type: !2564, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2817)
!2817 = !{!2818, !2819, !2820, !2821}
!2818 = !DILocalVariable(name: "n", arg: 1, scope: !2816, file: !142, line: 1000, type: !78)
!2819 = !DILocalVariable(name: "s", arg: 2, scope: !2816, file: !142, line: 1000, type: !5)
!2820 = !DILocalVariable(name: "arg", arg: 3, scope: !2816, file: !142, line: 1000, type: !51)
!2821 = !DILocalVariable(name: "options", scope: !2816, file: !142, line: 1002, type: !149)
!2822 = !DILocation(line: 187, column: 26, scope: !2572, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 1003, column: 13, scope: !2816)
!2824 = !DILocation(line: 1000, column: 29, scope: !2816)
!2825 = !DILocation(line: 1000, column: 51, scope: !2816)
!2826 = !DILocation(line: 1000, column: 66, scope: !2816)
!2827 = !DILocation(line: 1002, column: 3, scope: !2816)
!2828 = !DILocation(line: 185, column: 48, scope: !2572, inlinedAt: !2823)
!2829 = !DILocation(line: 187, column: 3, scope: !2572, inlinedAt: !2823)
!2830 = !DILocation(line: 188, column: 13, scope: !2589, inlinedAt: !2823)
!2831 = !DILocation(line: 188, column: 7, scope: !2572, inlinedAt: !2823)
!2832 = !DILocation(line: 189, column: 5, scope: !2589, inlinedAt: !2823)
!2833 = !{!2834}
!2834 = distinct !{!2834, !2835, !"quoting_options_from_style: argument 0"}
!2835 = distinct !{!2835, !"quoting_options_from_style"}
!2836 = !DILocation(line: 191, column: 10, scope: !2572, inlinedAt: !2823)
!2837 = !DILocation(line: 192, column: 1, scope: !2572, inlinedAt: !2823)
!2838 = !DILocation(line: 1003, column: 13, scope: !2816)
!2839 = !DILocation(line: 1002, column: 26, scope: !2816)
!2840 = !DILocation(line: 144, column: 43, scope: !1442, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1004, column: 3, scope: !2816)
!2842 = !DILocation(line: 144, column: 51, scope: !1442, inlinedAt: !2841)
!2843 = !DILocation(line: 144, column: 58, scope: !1442, inlinedAt: !2841)
!2844 = !DILocation(line: 146, column: 17, scope: !1442, inlinedAt: !2841)
!2845 = !DILocation(line: 148, column: 57, scope: !1442, inlinedAt: !2841)
!2846 = !DILocation(line: 147, column: 17, scope: !1442, inlinedAt: !2841)
!2847 = !DILocation(line: 149, column: 7, scope: !1442, inlinedAt: !2841)
!2848 = !DILocation(line: 150, column: 12, scope: !1442, inlinedAt: !2841)
!2849 = !DILocation(line: 151, column: 6, scope: !1442, inlinedAt: !2841)
!2850 = !DILocation(line: 1005, column: 10, scope: !2816)
!2851 = !DILocation(line: 1006, column: 1, scope: !2816)
!2852 = !DILocation(line: 1005, column: 3, scope: !2816)
!2853 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !142, file: !142, line: 1009, type: !2854, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!29, !78, !51, !51, !51}
!2856 = !{!2857, !2858, !2859, !2860}
!2857 = !DILocalVariable(name: "n", arg: 1, scope: !2853, file: !142, line: 1009, type: !78)
!2858 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2853, file: !142, line: 1009, type: !51)
!2859 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2853, file: !142, line: 1010, type: !51)
!2860 = !DILocalVariable(name: "arg", arg: 4, scope: !2853, file: !142, line: 1010, type: !51)
!2861 = !DILocation(line: 1009, column: 24, scope: !2853)
!2862 = !DILocation(line: 1009, column: 39, scope: !2853)
!2863 = !DILocation(line: 1010, column: 32, scope: !2853)
!2864 = !DILocation(line: 1010, column: 57, scope: !2853)
!2865 = !DILocalVariable(name: "n", arg: 1, scope: !2866, file: !142, line: 1017, type: !78)
!2866 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !142, file: !142, line: 1017, type: !2867, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!29, !78, !51, !51, !51, !34}
!2869 = !{!2865, !2870, !2871, !2872, !2873, !2874}
!2870 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2866, file: !142, line: 1017, type: !51)
!2871 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2866, file: !142, line: 1018, type: !51)
!2872 = !DILocalVariable(name: "arg", arg: 4, scope: !2866, file: !142, line: 1019, type: !51)
!2873 = !DILocalVariable(name: "argsize", arg: 5, scope: !2866, file: !142, line: 1019, type: !34)
!2874 = !DILocalVariable(name: "o", scope: !2866, file: !142, line: 1021, type: !149)
!2875 = !DILocation(line: 1017, column: 28, scope: !2866, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 1012, column: 10, scope: !2853)
!2877 = !DILocation(line: 1017, column: 43, scope: !2866, inlinedAt: !2876)
!2878 = !DILocation(line: 1018, column: 36, scope: !2866, inlinedAt: !2876)
!2879 = !DILocation(line: 1019, column: 36, scope: !2866, inlinedAt: !2876)
!2880 = !DILocation(line: 1019, column: 48, scope: !2866, inlinedAt: !2876)
!2881 = !DILocation(line: 1021, column: 3, scope: !2866, inlinedAt: !2876)
!2882 = !DILocation(line: 1021, column: 30, scope: !2866, inlinedAt: !2876)
!2883 = !DILocation(line: 1021, column: 26, scope: !2866, inlinedAt: !2876)
!2884 = !DILocation(line: 171, column: 45, scope: !1491, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1022, column: 3, scope: !2866, inlinedAt: !2876)
!2886 = !DILocation(line: 172, column: 33, scope: !1491, inlinedAt: !2885)
!2887 = !DILocation(line: 172, column: 57, scope: !1491, inlinedAt: !2885)
!2888 = !DILocation(line: 176, column: 6, scope: !1491, inlinedAt: !2885)
!2889 = !DILocation(line: 176, column: 12, scope: !1491, inlinedAt: !2885)
!2890 = !DILocation(line: 177, column: 8, scope: !1507, inlinedAt: !2885)
!2891 = !DILocation(line: 177, column: 23, scope: !1507, inlinedAt: !2885)
!2892 = !DILocation(line: 177, column: 19, scope: !1507, inlinedAt: !2885)
!2893 = !DILocation(line: 178, column: 5, scope: !1507, inlinedAt: !2885)
!2894 = !DILocation(line: 179, column: 6, scope: !1491, inlinedAt: !2885)
!2895 = !DILocation(line: 179, column: 17, scope: !1491, inlinedAt: !2885)
!2896 = !DILocation(line: 180, column: 6, scope: !1491, inlinedAt: !2885)
!2897 = !DILocation(line: 180, column: 18, scope: !1491, inlinedAt: !2885)
!2898 = !DILocation(line: 1023, column: 10, scope: !2866, inlinedAt: !2876)
!2899 = !DILocation(line: 1024, column: 1, scope: !2866, inlinedAt: !2876)
!2900 = !DILocation(line: 1012, column: 3, scope: !2853)
!2901 = !DILocation(line: 1017, column: 28, scope: !2866)
!2902 = !DILocation(line: 1017, column: 43, scope: !2866)
!2903 = !DILocation(line: 1018, column: 36, scope: !2866)
!2904 = !DILocation(line: 1019, column: 36, scope: !2866)
!2905 = !DILocation(line: 1019, column: 48, scope: !2866)
!2906 = !DILocation(line: 1021, column: 3, scope: !2866)
!2907 = !DILocation(line: 1021, column: 30, scope: !2866)
!2908 = !DILocation(line: 1021, column: 26, scope: !2866)
!2909 = !DILocation(line: 171, column: 45, scope: !1491, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 1022, column: 3, scope: !2866)
!2911 = !DILocation(line: 172, column: 33, scope: !1491, inlinedAt: !2910)
!2912 = !DILocation(line: 172, column: 57, scope: !1491, inlinedAt: !2910)
!2913 = !DILocation(line: 176, column: 6, scope: !1491, inlinedAt: !2910)
!2914 = !DILocation(line: 176, column: 12, scope: !1491, inlinedAt: !2910)
!2915 = !DILocation(line: 177, column: 8, scope: !1507, inlinedAt: !2910)
!2916 = !DILocation(line: 177, column: 23, scope: !1507, inlinedAt: !2910)
!2917 = !DILocation(line: 177, column: 19, scope: !1507, inlinedAt: !2910)
!2918 = !DILocation(line: 178, column: 5, scope: !1507, inlinedAt: !2910)
!2919 = !DILocation(line: 179, column: 6, scope: !1491, inlinedAt: !2910)
!2920 = !DILocation(line: 179, column: 17, scope: !1491, inlinedAt: !2910)
!2921 = !DILocation(line: 180, column: 6, scope: !1491, inlinedAt: !2910)
!2922 = !DILocation(line: 180, column: 18, scope: !1491, inlinedAt: !2910)
!2923 = !DILocation(line: 1023, column: 10, scope: !2866)
!2924 = !DILocation(line: 1024, column: 1, scope: !2866)
!2925 = !DILocation(line: 1023, column: 3, scope: !2866)
!2926 = distinct !DISubprogram(name: "quotearg_custom", scope: !142, file: !142, line: 1027, type: !2927, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!29, !51, !51, !51}
!2929 = !{!2930, !2931, !2932}
!2930 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2926, file: !142, line: 1027, type: !51)
!2931 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2926, file: !142, line: 1027, type: !51)
!2932 = !DILocalVariable(name: "arg", arg: 3, scope: !2926, file: !142, line: 1028, type: !51)
!2933 = !DILocation(line: 1027, column: 30, scope: !2926)
!2934 = !DILocation(line: 1027, column: 54, scope: !2926)
!2935 = !DILocation(line: 1028, column: 30, scope: !2926)
!2936 = !DILocation(line: 1009, column: 24, scope: !2853, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1030, column: 10, scope: !2926)
!2938 = !DILocation(line: 1009, column: 39, scope: !2853, inlinedAt: !2937)
!2939 = !DILocation(line: 1010, column: 32, scope: !2853, inlinedAt: !2937)
!2940 = !DILocation(line: 1010, column: 57, scope: !2853, inlinedAt: !2937)
!2941 = !DILocation(line: 1017, column: 28, scope: !2866, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1012, column: 10, scope: !2853, inlinedAt: !2937)
!2943 = !DILocation(line: 1017, column: 43, scope: !2866, inlinedAt: !2942)
!2944 = !DILocation(line: 1018, column: 36, scope: !2866, inlinedAt: !2942)
!2945 = !DILocation(line: 1019, column: 36, scope: !2866, inlinedAt: !2942)
!2946 = !DILocation(line: 1019, column: 48, scope: !2866, inlinedAt: !2942)
!2947 = !DILocation(line: 1021, column: 3, scope: !2866, inlinedAt: !2942)
!2948 = !DILocation(line: 1021, column: 30, scope: !2866, inlinedAt: !2942)
!2949 = !DILocation(line: 1021, column: 26, scope: !2866, inlinedAt: !2942)
!2950 = !DILocation(line: 171, column: 45, scope: !1491, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 1022, column: 3, scope: !2866, inlinedAt: !2942)
!2952 = !DILocation(line: 172, column: 33, scope: !1491, inlinedAt: !2951)
!2953 = !DILocation(line: 172, column: 57, scope: !1491, inlinedAt: !2951)
!2954 = !DILocation(line: 176, column: 6, scope: !1491, inlinedAt: !2951)
!2955 = !DILocation(line: 176, column: 12, scope: !1491, inlinedAt: !2951)
!2956 = !DILocation(line: 177, column: 8, scope: !1507, inlinedAt: !2951)
!2957 = !DILocation(line: 177, column: 23, scope: !1507, inlinedAt: !2951)
!2958 = !DILocation(line: 177, column: 19, scope: !1507, inlinedAt: !2951)
!2959 = !DILocation(line: 178, column: 5, scope: !1507, inlinedAt: !2951)
!2960 = !DILocation(line: 179, column: 6, scope: !1491, inlinedAt: !2951)
!2961 = !DILocation(line: 179, column: 17, scope: !1491, inlinedAt: !2951)
!2962 = !DILocation(line: 180, column: 6, scope: !1491, inlinedAt: !2951)
!2963 = !DILocation(line: 180, column: 18, scope: !1491, inlinedAt: !2951)
!2964 = !DILocation(line: 1023, column: 10, scope: !2866, inlinedAt: !2942)
!2965 = !DILocation(line: 1024, column: 1, scope: !2866, inlinedAt: !2942)
!2966 = !DILocation(line: 1030, column: 3, scope: !2926)
!2967 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !142, file: !142, line: 1034, type: !2968, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!29, !51, !51, !51, !34}
!2970 = !{!2971, !2972, !2973, !2974}
!2971 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2967, file: !142, line: 1034, type: !51)
!2972 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2967, file: !142, line: 1034, type: !51)
!2973 = !DILocalVariable(name: "arg", arg: 3, scope: !2967, file: !142, line: 1035, type: !51)
!2974 = !DILocalVariable(name: "argsize", arg: 4, scope: !2967, file: !142, line: 1035, type: !34)
!2975 = !DILocation(line: 1034, column: 34, scope: !2967)
!2976 = !DILocation(line: 1034, column: 58, scope: !2967)
!2977 = !DILocation(line: 1035, column: 34, scope: !2967)
!2978 = !DILocation(line: 1035, column: 46, scope: !2967)
!2979 = !DILocation(line: 1017, column: 28, scope: !2866, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 1037, column: 10, scope: !2967)
!2981 = !DILocation(line: 1017, column: 43, scope: !2866, inlinedAt: !2980)
!2982 = !DILocation(line: 1018, column: 36, scope: !2866, inlinedAt: !2980)
!2983 = !DILocation(line: 1019, column: 36, scope: !2866, inlinedAt: !2980)
!2984 = !DILocation(line: 1019, column: 48, scope: !2866, inlinedAt: !2980)
!2985 = !DILocation(line: 1021, column: 3, scope: !2866, inlinedAt: !2980)
!2986 = !DILocation(line: 1021, column: 30, scope: !2866, inlinedAt: !2980)
!2987 = !DILocation(line: 1021, column: 26, scope: !2866, inlinedAt: !2980)
!2988 = !DILocation(line: 171, column: 45, scope: !1491, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 1022, column: 3, scope: !2866, inlinedAt: !2980)
!2990 = !DILocation(line: 172, column: 33, scope: !1491, inlinedAt: !2989)
!2991 = !DILocation(line: 172, column: 57, scope: !1491, inlinedAt: !2989)
!2992 = !DILocation(line: 176, column: 6, scope: !1491, inlinedAt: !2989)
!2993 = !DILocation(line: 176, column: 12, scope: !1491, inlinedAt: !2989)
!2994 = !DILocation(line: 177, column: 8, scope: !1507, inlinedAt: !2989)
!2995 = !DILocation(line: 177, column: 23, scope: !1507, inlinedAt: !2989)
!2996 = !DILocation(line: 177, column: 19, scope: !1507, inlinedAt: !2989)
!2997 = !DILocation(line: 178, column: 5, scope: !1507, inlinedAt: !2989)
!2998 = !DILocation(line: 179, column: 6, scope: !1491, inlinedAt: !2989)
!2999 = !DILocation(line: 179, column: 17, scope: !1491, inlinedAt: !2989)
!3000 = !DILocation(line: 180, column: 6, scope: !1491, inlinedAt: !2989)
!3001 = !DILocation(line: 180, column: 18, scope: !1491, inlinedAt: !2989)
!3002 = !DILocation(line: 1023, column: 10, scope: !2866, inlinedAt: !2980)
!3003 = !DILocation(line: 1024, column: 1, scope: !2866, inlinedAt: !2980)
!3004 = !DILocation(line: 1037, column: 3, scope: !2967)
!3005 = distinct !DISubprogram(name: "quote_n_mem", scope: !142, file: !142, line: 1052, type: !3006, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!51, !78, !51, !34}
!3008 = !{!3009, !3010, !3011}
!3009 = !DILocalVariable(name: "n", arg: 1, scope: !3005, file: !142, line: 1052, type: !78)
!3010 = !DILocalVariable(name: "arg", arg: 2, scope: !3005, file: !142, line: 1052, type: !51)
!3011 = !DILocalVariable(name: "argsize", arg: 3, scope: !3005, file: !142, line: 1052, type: !34)
!3012 = !DILocation(line: 1052, column: 18, scope: !3005)
!3013 = !DILocation(line: 1052, column: 33, scope: !3005)
!3014 = !DILocation(line: 1052, column: 45, scope: !3005)
!3015 = !DILocation(line: 1054, column: 10, scope: !3005)
!3016 = !DILocation(line: 1054, column: 3, scope: !3005)
!3017 = distinct !DISubprogram(name: "quote_mem", scope: !142, file: !142, line: 1058, type: !3018, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!51, !51, !34}
!3020 = !{!3021, !3022}
!3021 = !DILocalVariable(name: "arg", arg: 1, scope: !3017, file: !142, line: 1058, type: !51)
!3022 = !DILocalVariable(name: "argsize", arg: 2, scope: !3017, file: !142, line: 1058, type: !34)
!3023 = !DILocation(line: 1058, column: 24, scope: !3017)
!3024 = !DILocation(line: 1058, column: 36, scope: !3017)
!3025 = !DILocation(line: 1052, column: 18, scope: !3005, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 1060, column: 10, scope: !3017)
!3027 = !DILocation(line: 1052, column: 33, scope: !3005, inlinedAt: !3026)
!3028 = !DILocation(line: 1052, column: 45, scope: !3005, inlinedAt: !3026)
!3029 = !DILocation(line: 1054, column: 10, scope: !3005, inlinedAt: !3026)
!3030 = !DILocation(line: 1060, column: 3, scope: !3017)
!3031 = distinct !DISubprogram(name: "quote_n", scope: !142, file: !142, line: 1064, type: !3032, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!51, !78, !51}
!3034 = !{!3035, !3036}
!3035 = !DILocalVariable(name: "n", arg: 1, scope: !3031, file: !142, line: 1064, type: !78)
!3036 = !DILocalVariable(name: "arg", arg: 2, scope: !3031, file: !142, line: 1064, type: !51)
!3037 = !DILocation(line: 1064, column: 14, scope: !3031)
!3038 = !DILocation(line: 1064, column: 29, scope: !3031)
!3039 = !DILocation(line: 1052, column: 18, scope: !3005, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 1066, column: 10, scope: !3031)
!3041 = !DILocation(line: 1052, column: 33, scope: !3005, inlinedAt: !3040)
!3042 = !DILocation(line: 1052, column: 45, scope: !3005, inlinedAt: !3040)
!3043 = !DILocation(line: 1054, column: 10, scope: !3005, inlinedAt: !3040)
!3044 = !DILocation(line: 1066, column: 3, scope: !3031)
!3045 = distinct !DISubprogram(name: "quote", scope: !142, file: !142, line: 1070, type: !3046, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!51, !51}
!3048 = !{!3049}
!3049 = !DILocalVariable(name: "arg", arg: 1, scope: !3045, file: !142, line: 1070, type: !51)
!3050 = !DILocation(line: 1070, column: 20, scope: !3045)
!3051 = !DILocation(line: 1064, column: 14, scope: !3031, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 1072, column: 10, scope: !3045)
!3053 = !DILocation(line: 1064, column: 29, scope: !3031, inlinedAt: !3052)
!3054 = !DILocation(line: 1052, column: 18, scope: !3005, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 1066, column: 10, scope: !3031, inlinedAt: !3052)
!3056 = !DILocation(line: 1052, column: 33, scope: !3005, inlinedAt: !3055)
!3057 = !DILocation(line: 1052, column: 45, scope: !3005, inlinedAt: !3055)
!3058 = !DILocation(line: 1054, column: 10, scope: !3005, inlinedAt: !3055)
!3059 = !DILocation(line: 1072, column: 3, scope: !3045)
!3060 = distinct !DISubprogram(name: "version_etc_arn", scope: !545, file: !545, line: 62, type: !3061, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !3104)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !3063, !51, !51, !51, !3103, !34}
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !754, line: 7, baseType: !3065)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 241, size: 1728, elements: !3066)
!3066 = !{!3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3065, file: !756, line: 242, baseType: !78, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3065, file: !756, line: 247, baseType: !29, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3065, file: !756, line: 248, baseType: !29, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3065, file: !756, line: 249, baseType: !29, size: 64, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3065, file: !756, line: 250, baseType: !29, size: 64, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3065, file: !756, line: 251, baseType: !29, size: 64, offset: 320)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3065, file: !756, line: 252, baseType: !29, size: 64, offset: 384)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3065, file: !756, line: 253, baseType: !29, size: 64, offset: 448)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3065, file: !756, line: 254, baseType: !29, size: 64, offset: 512)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3065, file: !756, line: 256, baseType: !29, size: 64, offset: 576)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3065, file: !756, line: 257, baseType: !29, size: 64, offset: 640)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3065, file: !756, line: 258, baseType: !29, size: 64, offset: 704)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3065, file: !756, line: 260, baseType: !3080, size: 64, offset: 768)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !756, line: 156, size: 192, elements: !3082)
!3082 = !{!3083, !3084, !3086}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3081, file: !756, line: 157, baseType: !3080, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3081, file: !756, line: 158, baseType: !3085, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3081, file: !756, line: 162, baseType: !78, size: 32, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3065, file: !756, line: 262, baseType: !3085, size: 64, offset: 832)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3065, file: !756, line: 264, baseType: !78, size: 32, offset: 896)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3065, file: !756, line: 268, baseType: !78, size: 32, offset: 928)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3065, file: !756, line: 270, baseType: !782, size: 64, offset: 960)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3065, file: !756, line: 274, baseType: !138, size: 16, offset: 1024)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3065, file: !756, line: 275, baseType: !787, size: 8, offset: 1040)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3065, file: !756, line: 276, baseType: !789, size: 8, offset: 1048)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3065, file: !756, line: 280, baseType: !793, size: 64, offset: 1088)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3065, file: !756, line: 289, baseType: !796, size: 64, offset: 1152)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3065, file: !756, line: 297, baseType: !31, size: 64, offset: 1216)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3065, file: !756, line: 298, baseType: !31, size: 64, offset: 1280)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3065, file: !756, line: 299, baseType: !31, size: 64, offset: 1344)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3065, file: !756, line: 300, baseType: !31, size: 64, offset: 1408)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3065, file: !756, line: 302, baseType: !34, size: 64, offset: 1472)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3065, file: !756, line: 303, baseType: !78, size: 32, offset: 1536)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3065, file: !756, line: 305, baseType: !804, size: 160, offset: 1568)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110}
!3105 = !DILocalVariable(name: "stream", arg: 1, scope: !3060, file: !545, line: 62, type: !3063)
!3106 = !DILocalVariable(name: "command_name", arg: 2, scope: !3060, file: !545, line: 63, type: !51)
!3107 = !DILocalVariable(name: "package", arg: 3, scope: !3060, file: !545, line: 63, type: !51)
!3108 = !DILocalVariable(name: "version", arg: 4, scope: !3060, file: !545, line: 64, type: !51)
!3109 = !DILocalVariable(name: "authors", arg: 5, scope: !3060, file: !545, line: 65, type: !3103)
!3110 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3060, file: !545, line: 65, type: !34)
!3111 = !DILocation(line: 62, column: 24, scope: !3060)
!3112 = !DILocation(line: 63, column: 30, scope: !3060)
!3113 = !DILocation(line: 63, column: 56, scope: !3060)
!3114 = !DILocation(line: 64, column: 30, scope: !3060)
!3115 = !DILocation(line: 65, column: 39, scope: !3060)
!3116 = !DILocation(line: 65, column: 55, scope: !3060)
!3117 = !DILocation(line: 67, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3060, file: !545, line: 67, column: 7)
!3119 = !DILocation(line: 67, column: 7, scope: !3060)
!3120 = !DILocation(line: 68, column: 5, scope: !3118)
!3121 = !DILocation(line: 70, column: 5, scope: !3118)
!3122 = !DILocation(line: 84, column: 3, scope: !3060)
!3123 = !DILocation(line: 86, column: 3, scope: !3060)
!3124 = !DILocation(line: 95, column: 3, scope: !3060)
!3125 = !DILocation(line: 99, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3060, file: !545, line: 96, column: 5)
!3127 = !DILocation(line: 102, column: 7, scope: !3126)
!3128 = !DILocation(line: 103, column: 7, scope: !3126)
!3129 = !DILocation(line: 106, column: 7, scope: !3126)
!3130 = !DILocation(line: 107, column: 7, scope: !3126)
!3131 = !DILocation(line: 110, column: 7, scope: !3126)
!3132 = !DILocation(line: 112, column: 7, scope: !3126)
!3133 = !DILocation(line: 117, column: 7, scope: !3126)
!3134 = !DILocation(line: 119, column: 7, scope: !3126)
!3135 = !DILocation(line: 124, column: 7, scope: !3126)
!3136 = !DILocation(line: 126, column: 7, scope: !3126)
!3137 = !DILocation(line: 131, column: 7, scope: !3126)
!3138 = !DILocation(line: 134, column: 7, scope: !3126)
!3139 = !DILocation(line: 139, column: 7, scope: !3126)
!3140 = !DILocation(line: 142, column: 7, scope: !3126)
!3141 = !DILocation(line: 147, column: 7, scope: !3126)
!3142 = !DILocation(line: 151, column: 7, scope: !3126)
!3143 = !DILocation(line: 156, column: 7, scope: !3126)
!3144 = !DILocation(line: 160, column: 7, scope: !3126)
!3145 = !DILocation(line: 167, column: 7, scope: !3126)
!3146 = !DILocation(line: 171, column: 7, scope: !3126)
!3147 = !DILocation(line: 173, column: 1, scope: !3060)
!3148 = distinct !DISubprogram(name: "version_etc_ar", scope: !545, file: !545, line: 180, type: !3149, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !3063, !51, !51, !51, !3103}
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157}
!3152 = !DILocalVariable(name: "stream", arg: 1, scope: !3148, file: !545, line: 180, type: !3063)
!3153 = !DILocalVariable(name: "command_name", arg: 2, scope: !3148, file: !545, line: 181, type: !51)
!3154 = !DILocalVariable(name: "package", arg: 3, scope: !3148, file: !545, line: 181, type: !51)
!3155 = !DILocalVariable(name: "version", arg: 4, scope: !3148, file: !545, line: 182, type: !51)
!3156 = !DILocalVariable(name: "authors", arg: 5, scope: !3148, file: !545, line: 182, type: !3103)
!3157 = !DILocalVariable(name: "n_authors", scope: !3148, file: !545, line: 184, type: !34)
!3158 = !DILocation(line: 180, column: 23, scope: !3148)
!3159 = !DILocation(line: 181, column: 29, scope: !3148)
!3160 = !DILocation(line: 181, column: 55, scope: !3148)
!3161 = !DILocation(line: 182, column: 29, scope: !3148)
!3162 = !DILocation(line: 182, column: 59, scope: !3148)
!3163 = !DILocation(line: 184, column: 10, scope: !3148)
!3164 = !DILocation(line: 186, column: 8, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3148, file: !545, line: 186, column: 3)
!3166 = !DILocation(line: 186, column: 23, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3165, file: !545, line: 186, column: 3)
!3168 = !DILocation(line: 186, column: 3, scope: !3165)
!3169 = !DILocation(line: 186, column: 52, scope: !3167)
!3170 = distinct !{!3170, !3168, !3171}
!3171 = !DILocation(line: 187, column: 5, scope: !3165)
!3172 = !DILocation(line: 188, column: 3, scope: !3148)
!3173 = !DILocation(line: 189, column: 1, scope: !3148)
!3174 = distinct !DISubprogram(name: "version_etc_va", scope: !545, file: !545, line: 196, type: !3175, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !3184)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !3063, !51, !51, !51, !3177}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !542, line: 189, size: 192, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3183}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3178, file: !542, line: 189, baseType: !155, size: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3178, file: !542, line: 189, baseType: !155, size: 32, offset: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3178, file: !542, line: 189, baseType: !31, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3178, file: !542, line: 189, baseType: !31, size: 64, offset: 128)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191}
!3185 = !DILocalVariable(name: "stream", arg: 1, scope: !3174, file: !545, line: 196, type: !3063)
!3186 = !DILocalVariable(name: "command_name", arg: 2, scope: !3174, file: !545, line: 197, type: !51)
!3187 = !DILocalVariable(name: "package", arg: 3, scope: !3174, file: !545, line: 197, type: !51)
!3188 = !DILocalVariable(name: "version", arg: 4, scope: !3174, file: !545, line: 198, type: !51)
!3189 = !DILocalVariable(name: "authors", arg: 5, scope: !3174, file: !545, line: 198, type: !3177)
!3190 = !DILocalVariable(name: "n_authors", scope: !3174, file: !545, line: 200, type: !34)
!3191 = !DILocalVariable(name: "authtab", scope: !3174, file: !545, line: 201, type: !3192)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !145)
!3193 = !DILocation(line: 196, column: 23, scope: !3174)
!3194 = !DILocation(line: 197, column: 29, scope: !3174)
!3195 = !DILocation(line: 197, column: 55, scope: !3174)
!3196 = !DILocation(line: 198, column: 29, scope: !3174)
!3197 = !DILocation(line: 198, column: 46, scope: !3174)
!3198 = !DILocation(line: 201, column: 3, scope: !3174)
!3199 = !DILocation(line: 201, column: 15, scope: !3174)
!3200 = !DILocation(line: 200, column: 10, scope: !3174)
!3201 = !DILocation(line: 205, column: 35, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !545, line: 203, column: 3)
!3203 = distinct !DILexicalBlock(scope: !3174, file: !545, line: 203, column: 3)
!3204 = !DILocation(line: 205, column: 14, scope: !3202)
!3205 = !DILocation(line: 205, column: 33, scope: !3202)
!3206 = !DILocation(line: 205, column: 67, scope: !3202)
!3207 = !DILocation(line: 203, column: 3, scope: !3203)
!3208 = !DILocation(line: 208, column: 3, scope: !3174)
!3209 = !DILocation(line: 210, column: 1, scope: !3174)
!3210 = distinct !DISubprogram(name: "version_etc", scope: !545, file: !545, line: 227, type: !3211, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !3063, !51, !51, !51, null}
!3213 = !{!3214, !3215, !3216, !3217, !3218}
!3214 = !DILocalVariable(name: "stream", arg: 1, scope: !3210, file: !545, line: 227, type: !3063)
!3215 = !DILocalVariable(name: "command_name", arg: 2, scope: !3210, file: !545, line: 228, type: !51)
!3216 = !DILocalVariable(name: "package", arg: 3, scope: !3210, file: !545, line: 228, type: !51)
!3217 = !DILocalVariable(name: "version", arg: 4, scope: !3210, file: !545, line: 229, type: !51)
!3218 = !DILocalVariable(name: "authors", scope: !3210, file: !545, line: 231, type: !3219)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1287, line: 46, baseType: !3220)
!3220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3221, line: 48, baseType: !3222)
!3221 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !542, line: 231, baseType: !3223)
!3223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3178, size: 192, elements: !790)
!3224 = !DILocation(line: 227, column: 20, scope: !3210)
!3225 = !DILocation(line: 228, column: 26, scope: !3210)
!3226 = !DILocation(line: 228, column: 52, scope: !3210)
!3227 = !DILocation(line: 229, column: 26, scope: !3210)
!3228 = !DILocation(line: 231, column: 3, scope: !3210)
!3229 = !DILocation(line: 231, column: 11, scope: !3210)
!3230 = !DILocation(line: 233, column: 3, scope: !3210)
!3231 = !DILocation(line: 234, column: 3, scope: !3210)
!3232 = !DILocation(line: 235, column: 3, scope: !3210)
!3233 = !DILocation(line: 236, column: 1, scope: !3210)
!3234 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !545, file: !545, line: 239, type: !610, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !541, variables: !88)
!3235 = !DILocation(line: 245, column: 3, scope: !3234)
!3236 = !DILocation(line: 251, column: 3, scope: !3234)
!3237 = !DILocation(line: 256, column: 3, scope: !3234)
!3238 = !DILocation(line: 258, column: 1, scope: !3234)
!3239 = distinct !DISubprogram(name: "xnmalloc", scope: !553, file: !553, line: 105, type: !1000, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3240)
!3240 = !{!3241, !3242}
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3239, file: !553, line: 105, type: !34)
!3242 = !DILocalVariable(name: "s", arg: 2, scope: !3239, file: !553, line: 105, type: !34)
!3243 = !DILocation(line: 105, column: 18, scope: !3239)
!3244 = !DILocation(line: 105, column: 28, scope: !3239)
!3245 = !DILocation(line: 107, column: 7, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3239, file: !553, line: 107, column: 7)
!3247 = !DILocation(line: 107, column: 7, scope: !3239)
!3248 = !DILocation(line: 108, column: 5, scope: !3246)
!3249 = !DILocation(line: 109, column: 21, scope: !3239)
!3250 = !DILocalVariable(name: "n", arg: 1, scope: !3251, file: !3252, line: 39, type: !34)
!3251 = distinct !DISubprogram(name: "xmalloc", scope: !3252, file: !3252, line: 39, type: !3253, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3255)
!3252 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!31, !34}
!3255 = !{!3250, !3256}
!3256 = !DILocalVariable(name: "p", scope: !3251, file: !3252, line: 41, type: !31)
!3257 = !DILocation(line: 39, column: 17, scope: !3251, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 109, column: 10, scope: !3239)
!3259 = !DILocation(line: 41, column: 13, scope: !3251, inlinedAt: !3258)
!3260 = !DILocation(line: 41, column: 9, scope: !3251, inlinedAt: !3258)
!3261 = !DILocation(line: 42, column: 8, scope: !3262, inlinedAt: !3258)
!3262 = distinct !DILexicalBlock(scope: !3251, file: !3252, line: 42, column: 7)
!3263 = !DILocation(line: 42, column: 15, scope: !3262, inlinedAt: !3258)
!3264 = !DILocation(line: 42, column: 10, scope: !3262, inlinedAt: !3258)
!3265 = !DILocation(line: 43, column: 5, scope: !3262, inlinedAt: !3258)
!3266 = !DILocation(line: 109, column: 3, scope: !3239)
!3267 = !DILocation(line: 39, column: 17, scope: !3251)
!3268 = !DILocation(line: 41, column: 13, scope: !3251)
!3269 = !DILocation(line: 41, column: 9, scope: !3251)
!3270 = !DILocation(line: 42, column: 8, scope: !3262)
!3271 = !DILocation(line: 42, column: 15, scope: !3262)
!3272 = !DILocation(line: 42, column: 10, scope: !3262)
!3273 = !DILocation(line: 43, column: 5, scope: !3262)
!3274 = !DILocation(line: 44, column: 3, scope: !3251)
!3275 = distinct !DISubprogram(name: "xnrealloc", scope: !553, file: !553, line: 118, type: !3276, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!31, !31, !34, !34}
!3278 = !{!3279, !3280, !3281}
!3279 = !DILocalVariable(name: "p", arg: 1, scope: !3275, file: !553, line: 118, type: !31)
!3280 = !DILocalVariable(name: "n", arg: 2, scope: !3275, file: !553, line: 118, type: !34)
!3281 = !DILocalVariable(name: "s", arg: 3, scope: !3275, file: !553, line: 118, type: !34)
!3282 = !DILocation(line: 118, column: 18, scope: !3275)
!3283 = !DILocation(line: 118, column: 28, scope: !3275)
!3284 = !DILocation(line: 118, column: 38, scope: !3275)
!3285 = !DILocation(line: 120, column: 7, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3275, file: !553, line: 120, column: 7)
!3287 = !DILocation(line: 120, column: 7, scope: !3275)
!3288 = !DILocation(line: 121, column: 5, scope: !3286)
!3289 = !DILocation(line: 122, column: 25, scope: !3275)
!3290 = !DILocalVariable(name: "p", arg: 1, scope: !3291, file: !3252, line: 51, type: !31)
!3291 = distinct !DISubprogram(name: "xrealloc", scope: !3252, file: !3252, line: 51, type: !3292, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!31, !31, !34}
!3294 = !{!3290, !3295}
!3295 = !DILocalVariable(name: "n", arg: 2, scope: !3291, file: !3252, line: 51, type: !34)
!3296 = !DILocation(line: 51, column: 17, scope: !3291, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 122, column: 10, scope: !3275)
!3298 = !DILocation(line: 51, column: 27, scope: !3291, inlinedAt: !3297)
!3299 = !DILocation(line: 53, column: 8, scope: !3300, inlinedAt: !3297)
!3300 = distinct !DILexicalBlock(scope: !3291, file: !3252, line: 53, column: 7)
!3301 = !DILocation(line: 53, column: 13, scope: !3300, inlinedAt: !3297)
!3302 = !DILocation(line: 53, column: 10, scope: !3300, inlinedAt: !3297)
!3303 = !DILocation(line: 57, column: 7, scope: !3304, inlinedAt: !3297)
!3304 = distinct !DILexicalBlock(scope: !3300, file: !3252, line: 54, column: 5)
!3305 = !DILocation(line: 58, column: 7, scope: !3304, inlinedAt: !3297)
!3306 = !DILocation(line: 61, column: 7, scope: !3291, inlinedAt: !3297)
!3307 = !DILocation(line: 62, column: 8, scope: !3308, inlinedAt: !3297)
!3308 = distinct !DILexicalBlock(scope: !3291, file: !3252, line: 62, column: 7)
!3309 = !DILocation(line: 62, column: 13, scope: !3308, inlinedAt: !3297)
!3310 = !DILocation(line: 62, column: 10, scope: !3308, inlinedAt: !3297)
!3311 = !DILocation(line: 63, column: 5, scope: !3308, inlinedAt: !3297)
!3312 = !DILocation(line: 122, column: 3, scope: !3275)
!3313 = !DILocation(line: 51, column: 17, scope: !3291)
!3314 = !DILocation(line: 51, column: 27, scope: !3291)
!3315 = !DILocation(line: 53, column: 8, scope: !3300)
!3316 = !DILocation(line: 53, column: 13, scope: !3300)
!3317 = !DILocation(line: 53, column: 10, scope: !3300)
!3318 = !DILocation(line: 57, column: 7, scope: !3304)
!3319 = !DILocation(line: 58, column: 7, scope: !3304)
!3320 = !DILocation(line: 61, column: 7, scope: !3291)
!3321 = !DILocation(line: 62, column: 8, scope: !3308)
!3322 = !DILocation(line: 62, column: 13, scope: !3308)
!3323 = !DILocation(line: 62, column: 10, scope: !3308)
!3324 = !DILocation(line: 63, column: 5, scope: !3308)
!3325 = !DILocation(line: 65, column: 1, scope: !3291)
!3326 = !DILocation(line: 180, column: 19, scope: !554)
!3327 = !DILocation(line: 180, column: 30, scope: !554)
!3328 = !DILocation(line: 180, column: 41, scope: !554)
!3329 = !DILocation(line: 182, column: 14, scope: !554)
!3330 = !DILocation(line: 182, column: 10, scope: !554)
!3331 = !DILocation(line: 184, column: 9, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !554, file: !553, line: 184, column: 7)
!3333 = !DILocation(line: 184, column: 7, scope: !554)
!3334 = !DILocation(line: 186, column: 13, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !553, line: 186, column: 11)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !553, line: 185, column: 5)
!3337 = !DILocation(line: 186, column: 11, scope: !3336)
!3338 = !DILocation(line: 194, column: 30, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3335, file: !553, line: 187, column: 9)
!3340 = !DILocation(line: 195, column: 16, scope: !3339)
!3341 = !DILocation(line: 195, column: 13, scope: !3339)
!3342 = !DILocation(line: 196, column: 9, scope: !3339)
!3343 = !DILocation(line: 204, column: 69, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !553, line: 204, column: 11)
!3345 = distinct !DILexicalBlock(scope: !3332, file: !553, line: 199, column: 5)
!3346 = !DILocation(line: 205, column: 11, scope: !3344)
!3347 = !DILocation(line: 204, column: 11, scope: !3345)
!3348 = !DILocation(line: 206, column: 9, scope: !3344)
!3349 = !DILocation(line: 210, column: 7, scope: !554)
!3350 = !DILocation(line: 211, column: 25, scope: !554)
!3351 = !DILocation(line: 51, column: 17, scope: !3291, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 211, column: 10, scope: !554)
!3353 = !DILocation(line: 51, column: 27, scope: !3291, inlinedAt: !3352)
!3354 = !DILocation(line: 53, column: 10, scope: !3300, inlinedAt: !3352)
!3355 = !DILocation(line: 207, column: 14, scope: !3345)
!3356 = !DILocation(line: 207, column: 18, scope: !3345)
!3357 = !DILocation(line: 207, column: 9, scope: !3345)
!3358 = !DILocation(line: 53, column: 8, scope: !3300, inlinedAt: !3352)
!3359 = !DILocation(line: 57, column: 7, scope: !3304, inlinedAt: !3352)
!3360 = !DILocation(line: 58, column: 7, scope: !3304, inlinedAt: !3352)
!3361 = !DILocation(line: 61, column: 7, scope: !3291, inlinedAt: !3352)
!3362 = !DILocation(line: 62, column: 8, scope: !3308, inlinedAt: !3352)
!3363 = !DILocation(line: 62, column: 13, scope: !3308, inlinedAt: !3352)
!3364 = !DILocation(line: 62, column: 10, scope: !3308, inlinedAt: !3352)
!3365 = !DILocation(line: 63, column: 5, scope: !3308, inlinedAt: !3352)
!3366 = !DILocation(line: 211, column: 3, scope: !554)
!3367 = distinct !DISubprogram(name: "xcharalloc", scope: !553, file: !553, line: 220, type: !2338, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3368)
!3368 = !{!3369}
!3369 = !DILocalVariable(name: "n", arg: 1, scope: !3367, file: !553, line: 220, type: !34)
!3370 = !DILocation(line: 220, column: 20, scope: !3367)
!3371 = !DILocation(line: 39, column: 17, scope: !3251, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 222, column: 10, scope: !3367)
!3373 = !DILocation(line: 41, column: 13, scope: !3251, inlinedAt: !3372)
!3374 = !DILocation(line: 41, column: 9, scope: !3251, inlinedAt: !3372)
!3375 = !DILocation(line: 42, column: 8, scope: !3262, inlinedAt: !3372)
!3376 = !DILocation(line: 42, column: 15, scope: !3262, inlinedAt: !3372)
!3377 = !DILocation(line: 42, column: 10, scope: !3262, inlinedAt: !3372)
!3378 = !DILocation(line: 43, column: 5, scope: !3262, inlinedAt: !3372)
!3379 = !DILocation(line: 222, column: 3, scope: !3367)
!3380 = distinct !DISubprogram(name: "x2realloc", scope: !3252, file: !3252, line: 74, type: !3381, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!31, !31, !557}
!3383 = !{!3384, !3385}
!3384 = !DILocalVariable(name: "p", arg: 1, scope: !3380, file: !3252, line: 74, type: !31)
!3385 = !DILocalVariable(name: "pn", arg: 2, scope: !3380, file: !3252, line: 74, type: !557)
!3386 = !DILocation(line: 74, column: 18, scope: !3380)
!3387 = !DILocation(line: 74, column: 29, scope: !3380)
!3388 = !DILocation(line: 180, column: 19, scope: !554, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 76, column: 10, scope: !3380)
!3390 = !DILocation(line: 180, column: 30, scope: !554, inlinedAt: !3389)
!3391 = !DILocation(line: 180, column: 41, scope: !554, inlinedAt: !3389)
!3392 = !DILocation(line: 182, column: 14, scope: !554, inlinedAt: !3389)
!3393 = !DILocation(line: 182, column: 10, scope: !554, inlinedAt: !3389)
!3394 = !DILocation(line: 184, column: 9, scope: !3332, inlinedAt: !3389)
!3395 = !DILocation(line: 184, column: 7, scope: !554, inlinedAt: !3389)
!3396 = !DILocation(line: 186, column: 13, scope: !3335, inlinedAt: !3389)
!3397 = !DILocation(line: 186, column: 11, scope: !3336, inlinedAt: !3389)
!3398 = !DILocation(line: 210, column: 7, scope: !554, inlinedAt: !3389)
!3399 = !DILocation(line: 51, column: 17, scope: !3291, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 211, column: 10, scope: !554, inlinedAt: !3389)
!3401 = !DILocation(line: 51, column: 27, scope: !3291, inlinedAt: !3400)
!3402 = !DILocation(line: 53, column: 10, scope: !3300, inlinedAt: !3400)
!3403 = !DILocation(line: 205, column: 11, scope: !3344, inlinedAt: !3389)
!3404 = !DILocation(line: 204, column: 11, scope: !3345, inlinedAt: !3389)
!3405 = !DILocation(line: 206, column: 9, scope: !3344, inlinedAt: !3389)
!3406 = !DILocation(line: 207, column: 14, scope: !3345, inlinedAt: !3389)
!3407 = !DILocation(line: 207, column: 18, scope: !3345, inlinedAt: !3389)
!3408 = !DILocation(line: 207, column: 9, scope: !3345, inlinedAt: !3389)
!3409 = !DILocation(line: 53, column: 8, scope: !3300, inlinedAt: !3400)
!3410 = !DILocation(line: 57, column: 7, scope: !3304, inlinedAt: !3400)
!3411 = !DILocation(line: 58, column: 7, scope: !3304, inlinedAt: !3400)
!3412 = !DILocation(line: 61, column: 7, scope: !3291, inlinedAt: !3400)
!3413 = !DILocation(line: 62, column: 8, scope: !3308, inlinedAt: !3400)
!3414 = !DILocation(line: 62, column: 13, scope: !3308, inlinedAt: !3400)
!3415 = !DILocation(line: 62, column: 10, scope: !3308, inlinedAt: !3400)
!3416 = !DILocation(line: 63, column: 5, scope: !3308, inlinedAt: !3400)
!3417 = !DILocation(line: 76, column: 3, scope: !3380)
!3418 = distinct !DISubprogram(name: "xzalloc", scope: !3252, file: !3252, line: 84, type: !3253, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3419)
!3419 = !{!3420}
!3420 = !DILocalVariable(name: "s", arg: 1, scope: !3418, file: !3252, line: 84, type: !34)
!3421 = !DILocation(line: 84, column: 17, scope: !3418)
!3422 = !DILocation(line: 39, column: 17, scope: !3251, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 86, column: 18, scope: !3418)
!3424 = !DILocation(line: 41, column: 13, scope: !3251, inlinedAt: !3423)
!3425 = !DILocation(line: 41, column: 9, scope: !3251, inlinedAt: !3423)
!3426 = !DILocation(line: 42, column: 8, scope: !3262, inlinedAt: !3423)
!3427 = !DILocation(line: 42, column: 15, scope: !3262, inlinedAt: !3423)
!3428 = !DILocation(line: 42, column: 10, scope: !3262, inlinedAt: !3423)
!3429 = !DILocation(line: 43, column: 5, scope: !3262, inlinedAt: !3423)
!3430 = !DILocation(line: 86, column: 10, scope: !3418)
!3431 = !DILocation(line: 86, column: 3, scope: !3418)
!3432 = distinct !DISubprogram(name: "xcalloc", scope: !3252, file: !3252, line: 93, type: !1000, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3433)
!3433 = !{!3434, !3435, !3436}
!3434 = !DILocalVariable(name: "n", arg: 1, scope: !3432, file: !3252, line: 93, type: !34)
!3435 = !DILocalVariable(name: "s", arg: 2, scope: !3432, file: !3252, line: 93, type: !34)
!3436 = !DILocalVariable(name: "p", scope: !3432, file: !3252, line: 95, type: !31)
!3437 = !DILocation(line: 93, column: 17, scope: !3432)
!3438 = !DILocation(line: 93, column: 27, scope: !3432)
!3439 = !DILocation(line: 100, column: 7, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3432, file: !3252, line: 100, column: 7)
!3441 = !DILocation(line: 101, column: 7, scope: !3440)
!3442 = !DILocation(line: 101, column: 18, scope: !3440)
!3443 = !DILocation(line: 95, column: 9, scope: !3432)
!3444 = !DILocation(line: 101, column: 16, scope: !3440)
!3445 = !DILocation(line: 100, column: 7, scope: !3432)
!3446 = !DILocation(line: 102, column: 5, scope: !3440)
!3447 = !DILocation(line: 103, column: 3, scope: !3432)
!3448 = distinct !DISubprogram(name: "xmemdup", scope: !3252, file: !3252, line: 111, type: !3449, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3453)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!31, !3451, !34}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "p", arg: 1, scope: !3448, file: !3252, line: 111, type: !3451)
!3455 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !3252, line: 111, type: !34)
!3456 = !DILocation(line: 111, column: 22, scope: !3448)
!3457 = !DILocation(line: 111, column: 32, scope: !3448)
!3458 = !DILocation(line: 39, column: 17, scope: !3251, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 113, column: 18, scope: !3448)
!3460 = !DILocation(line: 41, column: 13, scope: !3251, inlinedAt: !3459)
!3461 = !DILocation(line: 41, column: 9, scope: !3251, inlinedAt: !3459)
!3462 = !DILocation(line: 42, column: 8, scope: !3262, inlinedAt: !3459)
!3463 = !DILocation(line: 42, column: 15, scope: !3262, inlinedAt: !3459)
!3464 = !DILocation(line: 42, column: 10, scope: !3262, inlinedAt: !3459)
!3465 = !DILocation(line: 43, column: 5, scope: !3262, inlinedAt: !3459)
!3466 = !DILocation(line: 113, column: 10, scope: !3448)
!3467 = !DILocation(line: 113, column: 3, scope: !3448)
!3468 = distinct !DISubprogram(name: "xstrdup", scope: !3252, file: !3252, line: 119, type: !2539, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3469)
!3469 = !{!3470}
!3470 = !DILocalVariable(name: "string", arg: 1, scope: !3468, file: !3252, line: 119, type: !51)
!3471 = !DILocation(line: 119, column: 22, scope: !3468)
!3472 = !DILocation(line: 121, column: 27, scope: !3468)
!3473 = !DILocation(line: 121, column: 43, scope: !3468)
!3474 = !DILocation(line: 111, column: 22, scope: !3448, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 121, column: 10, scope: !3468)
!3476 = !DILocation(line: 111, column: 32, scope: !3448, inlinedAt: !3475)
!3477 = !DILocation(line: 39, column: 17, scope: !3251, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 113, column: 18, scope: !3448, inlinedAt: !3475)
!3479 = !DILocation(line: 41, column: 13, scope: !3251, inlinedAt: !3478)
!3480 = !DILocation(line: 41, column: 9, scope: !3251, inlinedAt: !3478)
!3481 = !DILocation(line: 42, column: 8, scope: !3262, inlinedAt: !3478)
!3482 = !DILocation(line: 42, column: 15, scope: !3262, inlinedAt: !3478)
!3483 = !DILocation(line: 42, column: 10, scope: !3262, inlinedAt: !3478)
!3484 = !DILocation(line: 43, column: 5, scope: !3262, inlinedAt: !3478)
!3485 = !DILocation(line: 113, column: 10, scope: !3448, inlinedAt: !3475)
!3486 = !DILocation(line: 121, column: 3, scope: !3468)
!3487 = distinct !DISubprogram(name: "xalloc_die", scope: !3488, file: !3488, line: 32, type: !610, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !566, variables: !88)
!3488 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3489 = !DILocation(line: 34, column: 10, scope: !3487)
!3490 = !DILocation(line: 34, column: 33, scope: !3487)
!3491 = !DILocation(line: 34, column: 3, scope: !3487)
!3492 = !DILocation(line: 40, column: 3, scope: !3487)
!3493 = distinct !DISubprogram(name: "rpl_calloc", scope: !3494, file: !3494, line: 42, type: !1000, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3495)
!3494 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3495 = !{!3496, !3497, !3498, !3499}
!3496 = !DILocalVariable(name: "n", arg: 1, scope: !3493, file: !3494, line: 42, type: !34)
!3497 = !DILocalVariable(name: "s", arg: 2, scope: !3493, file: !3494, line: 42, type: !34)
!3498 = !DILocalVariable(name: "result", scope: !3493, file: !3494, line: 44, type: !31)
!3499 = !DILocalVariable(name: "bytes", scope: !3500, file: !3494, line: 56, type: !34)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !3494, line: 53, column: 5)
!3501 = distinct !DILexicalBlock(scope: !3493, file: !3494, line: 47, column: 7)
!3502 = !DILocation(line: 42, column: 20, scope: !3493)
!3503 = !DILocation(line: 42, column: 30, scope: !3493)
!3504 = !DILocation(line: 47, column: 9, scope: !3501)
!3505 = !DILocation(line: 47, column: 19, scope: !3501)
!3506 = !DILocation(line: 47, column: 14, scope: !3501)
!3507 = !DILocation(line: 56, column: 24, scope: !3500)
!3508 = !DILocation(line: 56, column: 14, scope: !3500)
!3509 = !DILocation(line: 57, column: 17, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3500, file: !3494, line: 57, column: 11)
!3511 = !DILocation(line: 57, column: 21, scope: !3510)
!3512 = !DILocation(line: 57, column: 11, scope: !3500)
!3513 = !DILocation(line: 59, column: 11, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3510, file: !3494, line: 58, column: 9)
!3515 = !DILocation(line: 59, column: 17, scope: !3514)
!3516 = !DILocation(line: 65, column: 12, scope: !3493)
!3517 = !DILocation(line: 44, column: 9, scope: !3493)
!3518 = !DILocation(line: 72, column: 3, scope: !3493)
!3519 = !DILocation(line: 73, column: 1, scope: !3493)
!3520 = distinct !DISubprogram(name: "rpl_fclose", scope: !3521, file: !3521, line: 56, type: !3522, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3564)
!3521 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!78, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !754, line: 7, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 241, size: 1728, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3526, file: !756, line: 242, baseType: !78, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3526, file: !756, line: 247, baseType: !29, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3526, file: !756, line: 248, baseType: !29, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3526, file: !756, line: 249, baseType: !29, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3526, file: !756, line: 250, baseType: !29, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3526, file: !756, line: 251, baseType: !29, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3526, file: !756, line: 252, baseType: !29, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3526, file: !756, line: 253, baseType: !29, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3526, file: !756, line: 254, baseType: !29, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3526, file: !756, line: 256, baseType: !29, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3526, file: !756, line: 257, baseType: !29, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3526, file: !756, line: 258, baseType: !29, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3526, file: !756, line: 260, baseType: !3541, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !756, line: 156, size: 192, elements: !3543)
!3543 = !{!3544, !3545, !3547}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3542, file: !756, line: 157, baseType: !3541, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3542, file: !756, line: 158, baseType: !3546, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3542, file: !756, line: 162, baseType: !78, size: 32, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3526, file: !756, line: 262, baseType: !3546, size: 64, offset: 832)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3526, file: !756, line: 264, baseType: !78, size: 32, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3526, file: !756, line: 268, baseType: !78, size: 32, offset: 928)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3526, file: !756, line: 270, baseType: !782, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3526, file: !756, line: 274, baseType: !138, size: 16, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3526, file: !756, line: 275, baseType: !787, size: 8, offset: 1040)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3526, file: !756, line: 276, baseType: !789, size: 8, offset: 1048)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3526, file: !756, line: 280, baseType: !793, size: 64, offset: 1088)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3526, file: !756, line: 289, baseType: !796, size: 64, offset: 1152)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3526, file: !756, line: 297, baseType: !31, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3526, file: !756, line: 298, baseType: !31, size: 64, offset: 1280)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3526, file: !756, line: 299, baseType: !31, size: 64, offset: 1344)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3526, file: !756, line: 300, baseType: !31, size: 64, offset: 1408)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3526, file: !756, line: 302, baseType: !34, size: 64, offset: 1472)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3526, file: !756, line: 303, baseType: !78, size: 32, offset: 1536)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3526, file: !756, line: 305, baseType: !804, size: 160, offset: 1568)
!3564 = !{!3565, !3566, !3567, !3568}
!3565 = !DILocalVariable(name: "fp", arg: 1, scope: !3520, file: !3521, line: 56, type: !3524)
!3566 = !DILocalVariable(name: "saved_errno", scope: !3520, file: !3521, line: 58, type: !78)
!3567 = !DILocalVariable(name: "fd", scope: !3520, file: !3521, line: 59, type: !78)
!3568 = !DILocalVariable(name: "result", scope: !3520, file: !3521, line: 60, type: !78)
!3569 = !DILocation(line: 56, column: 19, scope: !3520)
!3570 = !DILocation(line: 58, column: 7, scope: !3520)
!3571 = !DILocation(line: 60, column: 7, scope: !3520)
!3572 = !DILocation(line: 63, column: 8, scope: !3520)
!3573 = !DILocation(line: 59, column: 7, scope: !3520)
!3574 = !DILocation(line: 64, column: 10, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3520, file: !3521, line: 64, column: 7)
!3576 = !DILocation(line: 64, column: 7, scope: !3520)
!3577 = !DILocation(line: 65, column: 12, scope: !3575)
!3578 = !DILocation(line: 65, column: 5, scope: !3575)
!3579 = !DILocation(line: 70, column: 9, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3520, file: !3521, line: 70, column: 7)
!3581 = !DILocation(line: 70, column: 23, scope: !3580)
!3582 = !DILocation(line: 70, column: 33, scope: !3580)
!3583 = !DILocation(line: 70, column: 26, scope: !3580)
!3584 = !DILocation(line: 70, column: 59, scope: !3580)
!3585 = !DILocation(line: 71, column: 7, scope: !3580)
!3586 = !DILocation(line: 71, column: 10, scope: !3580)
!3587 = !DILocation(line: 70, column: 7, scope: !3520)
!3588 = !DILocation(line: 98, column: 12, scope: !3520)
!3589 = !DILocation(line: 103, column: 7, scope: !3520)
!3590 = !DILocation(line: 72, column: 19, scope: !3580)
!3591 = !DILocation(line: 103, column: 19, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3520, file: !3521, line: 103, column: 7)
!3593 = !DILocation(line: 105, column: 13, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3592, file: !3521, line: 104, column: 5)
!3595 = !DILocation(line: 107, column: 5, scope: !3594)
!3596 = !DILocation(line: 110, column: 1, scope: !3520)
!3597 = distinct !DISubprogram(name: "rpl_fflush", scope: !3598, file: !3598, line: 127, type: !3599, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !3641)
!3598 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!78, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !754, line: 7, baseType: !3603)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 241, size: 1728, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3603, file: !756, line: 242, baseType: !78, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3603, file: !756, line: 247, baseType: !29, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3603, file: !756, line: 248, baseType: !29, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3603, file: !756, line: 249, baseType: !29, size: 64, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3603, file: !756, line: 250, baseType: !29, size: 64, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3603, file: !756, line: 251, baseType: !29, size: 64, offset: 320)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3603, file: !756, line: 252, baseType: !29, size: 64, offset: 384)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3603, file: !756, line: 253, baseType: !29, size: 64, offset: 448)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3603, file: !756, line: 254, baseType: !29, size: 64, offset: 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3603, file: !756, line: 256, baseType: !29, size: 64, offset: 576)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3603, file: !756, line: 257, baseType: !29, size: 64, offset: 640)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3603, file: !756, line: 258, baseType: !29, size: 64, offset: 704)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3603, file: !756, line: 260, baseType: !3618, size: 64, offset: 768)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !756, line: 156, size: 192, elements: !3620)
!3620 = !{!3621, !3622, !3624}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3619, file: !756, line: 157, baseType: !3618, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3619, file: !756, line: 158, baseType: !3623, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3619, file: !756, line: 162, baseType: !78, size: 32, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3603, file: !756, line: 262, baseType: !3623, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3603, file: !756, line: 264, baseType: !78, size: 32, offset: 896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3603, file: !756, line: 268, baseType: !78, size: 32, offset: 928)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3603, file: !756, line: 270, baseType: !782, size: 64, offset: 960)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3603, file: !756, line: 274, baseType: !138, size: 16, offset: 1024)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3603, file: !756, line: 275, baseType: !787, size: 8, offset: 1040)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3603, file: !756, line: 276, baseType: !789, size: 8, offset: 1048)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3603, file: !756, line: 280, baseType: !793, size: 64, offset: 1088)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3603, file: !756, line: 289, baseType: !796, size: 64, offset: 1152)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3603, file: !756, line: 297, baseType: !31, size: 64, offset: 1216)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3603, file: !756, line: 298, baseType: !31, size: 64, offset: 1280)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3603, file: !756, line: 299, baseType: !31, size: 64, offset: 1344)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3603, file: !756, line: 300, baseType: !31, size: 64, offset: 1408)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3603, file: !756, line: 302, baseType: !34, size: 64, offset: 1472)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3603, file: !756, line: 303, baseType: !78, size: 32, offset: 1536)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3603, file: !756, line: 305, baseType: !804, size: 160, offset: 1568)
!3641 = !{!3642}
!3642 = !DILocalVariable(name: "stream", arg: 1, scope: !3597, file: !3598, line: 127, type: !3601)
!3643 = !DILocation(line: 127, column: 19, scope: !3597)
!3644 = !DILocation(line: 148, column: 14, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3597, file: !3598, line: 148, column: 7)
!3646 = !DILocation(line: 148, column: 22, scope: !3645)
!3647 = !DILocation(line: 148, column: 27, scope: !3645)
!3648 = !DILocation(line: 148, column: 7, scope: !3597)
!3649 = !DILocation(line: 149, column: 12, scope: !3645)
!3650 = !DILocation(line: 149, column: 5, scope: !3645)
!3651 = !DILocalVariable(name: "fp", arg: 1, scope: !3652, file: !3598, line: 40, type: !3601)
!3652 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3598, file: !3598, line: 40, type: !3653, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !3601}
!3655 = !{!3651}
!3656 = !DILocation(line: 40, column: 48, scope: !3652, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 153, column: 3, scope: !3597)
!3658 = !DILocation(line: 42, column: 11, scope: !3659, inlinedAt: !3657)
!3659 = distinct !DILexicalBlock(scope: !3652, file: !3598, line: 42, column: 7)
!3660 = !DILocation(line: 42, column: 18, scope: !3659, inlinedAt: !3657)
!3661 = !DILocation(line: 42, column: 7, scope: !3652, inlinedAt: !3657)
!3662 = !DILocation(line: 44, column: 5, scope: !3659, inlinedAt: !3657)
!3663 = !DILocation(line: 155, column: 10, scope: !3597)
!3664 = !DILocation(line: 155, column: 3, scope: !3597)
!3665 = !DILocation(line: 229, column: 1, scope: !3597)
!3666 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3667, file: !3667, line: 28, type: !3668, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3710)
!3667 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!78, !3670, !1286, !78}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !754, line: 7, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 241, size: 1728, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3672, file: !756, line: 242, baseType: !78, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3672, file: !756, line: 247, baseType: !29, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3672, file: !756, line: 248, baseType: !29, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3672, file: !756, line: 249, baseType: !29, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3672, file: !756, line: 250, baseType: !29, size: 64, offset: 256)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3672, file: !756, line: 251, baseType: !29, size: 64, offset: 320)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3672, file: !756, line: 252, baseType: !29, size: 64, offset: 384)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3672, file: !756, line: 253, baseType: !29, size: 64, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3672, file: !756, line: 254, baseType: !29, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3672, file: !756, line: 256, baseType: !29, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3672, file: !756, line: 257, baseType: !29, size: 64, offset: 640)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3672, file: !756, line: 258, baseType: !29, size: 64, offset: 704)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3672, file: !756, line: 260, baseType: !3687, size: 64, offset: 768)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !756, line: 156, size: 192, elements: !3689)
!3689 = !{!3690, !3691, !3693}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3688, file: !756, line: 157, baseType: !3687, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3688, file: !756, line: 158, baseType: !3692, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3688, file: !756, line: 162, baseType: !78, size: 32, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3672, file: !756, line: 262, baseType: !3692, size: 64, offset: 832)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3672, file: !756, line: 264, baseType: !78, size: 32, offset: 896)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3672, file: !756, line: 268, baseType: !78, size: 32, offset: 928)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3672, file: !756, line: 270, baseType: !782, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3672, file: !756, line: 274, baseType: !138, size: 16, offset: 1024)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3672, file: !756, line: 275, baseType: !787, size: 8, offset: 1040)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3672, file: !756, line: 276, baseType: !789, size: 8, offset: 1048)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3672, file: !756, line: 280, baseType: !793, size: 64, offset: 1088)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3672, file: !756, line: 289, baseType: !796, size: 64, offset: 1152)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3672, file: !756, line: 297, baseType: !31, size: 64, offset: 1216)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3672, file: !756, line: 298, baseType: !31, size: 64, offset: 1280)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3672, file: !756, line: 299, baseType: !31, size: 64, offset: 1344)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3672, file: !756, line: 300, baseType: !31, size: 64, offset: 1408)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3672, file: !756, line: 302, baseType: !34, size: 64, offset: 1472)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3672, file: !756, line: 303, baseType: !78, size: 32, offset: 1536)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3672, file: !756, line: 305, baseType: !804, size: 160, offset: 1568)
!3710 = !{!3711, !3712, !3713, !3714}
!3711 = !DILocalVariable(name: "fp", arg: 1, scope: !3666, file: !3667, line: 28, type: !3670)
!3712 = !DILocalVariable(name: "offset", arg: 2, scope: !3666, file: !3667, line: 28, type: !1286)
!3713 = !DILocalVariable(name: "whence", arg: 3, scope: !3666, file: !3667, line: 28, type: !78)
!3714 = !DILocalVariable(name: "pos", scope: !3715, file: !3667, line: 116, type: !1286)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !3667, line: 112, column: 5)
!3716 = distinct !DILexicalBlock(scope: !3666, file: !3667, line: 51, column: 7)
!3717 = !DILocation(line: 28, column: 15, scope: !3666)
!3718 = !DILocation(line: 28, column: 25, scope: !3666)
!3719 = !DILocation(line: 28, column: 37, scope: !3666)
!3720 = !DILocation(line: 51, column: 11, scope: !3716)
!3721 = !DILocation(line: 51, column: 31, scope: !3716)
!3722 = !DILocation(line: 51, column: 24, scope: !3716)
!3723 = !DILocation(line: 52, column: 7, scope: !3716)
!3724 = !DILocation(line: 52, column: 14, scope: !3716)
!3725 = !DILocation(line: 52, column: 35, scope: !3716)
!3726 = !{!846, !602, i64 32}
!3727 = !DILocation(line: 52, column: 28, scope: !3716)
!3728 = !DILocation(line: 53, column: 7, scope: !3716)
!3729 = !DILocation(line: 53, column: 14, scope: !3716)
!3730 = !{!846, !602, i64 72}
!3731 = !DILocation(line: 53, column: 28, scope: !3716)
!3732 = !DILocation(line: 51, column: 7, scope: !3666)
!3733 = !DILocation(line: 116, column: 26, scope: !3715)
!3734 = !DILocation(line: 116, column: 19, scope: !3715)
!3735 = !DILocation(line: 116, column: 13, scope: !3715)
!3736 = !DILocation(line: 117, column: 15, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3715, file: !3667, line: 117, column: 11)
!3738 = !DILocation(line: 117, column: 11, scope: !3715)
!3739 = !DILocation(line: 127, column: 11, scope: !3715)
!3740 = !DILocation(line: 127, column: 18, scope: !3715)
!3741 = !DILocation(line: 128, column: 11, scope: !3715)
!3742 = !DILocation(line: 128, column: 19, scope: !3715)
!3743 = !{!846, !847, i64 144}
!3744 = !DILocation(line: 159, column: 7, scope: !3715)
!3745 = !DILocation(line: 161, column: 10, scope: !3666)
!3746 = !DILocation(line: 161, column: 3, scope: !3666)
!3747 = !DILocation(line: 162, column: 1, scope: !3666)
!3748 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3749, file: !3749, line: 334, type: !3750, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3764)
!3749 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!34, !3752, !51, !34, !3753}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1590, line: 6, baseType: !3755)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1592, line: 21, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1592, line: 13, size: 64, elements: !3757)
!3757 = !{!3758, !3759}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3756, file: !1592, line: 15, baseType: !78, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3756, file: !1592, line: 20, baseType: !3760, size: 32, offset: 32)
!3760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3756, file: !1592, line: 16, size: 32, elements: !3761)
!3761 = !{!3762, !3763}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3760, file: !1592, line: 18, baseType: !155, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3760, file: !1592, line: 19, baseType: !1601, size: 32)
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771}
!3765 = !DILocalVariable(name: "pwc", arg: 1, scope: !3748, file: !3749, line: 334, type: !3752)
!3766 = !DILocalVariable(name: "s", arg: 2, scope: !3748, file: !3749, line: 334, type: !51)
!3767 = !DILocalVariable(name: "n", arg: 3, scope: !3748, file: !3749, line: 334, type: !34)
!3768 = !DILocalVariable(name: "ps", arg: 4, scope: !3748, file: !3749, line: 334, type: !3753)
!3769 = !DILocalVariable(name: "ret", scope: !3748, file: !3749, line: 336, type: !34)
!3770 = !DILocalVariable(name: "wc", scope: !3748, file: !3749, line: 337, type: !1606)
!3771 = !DILocalVariable(name: "uc", scope: !3772, file: !3749, line: 398, type: !33)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !3749, line: 397, column: 5)
!3773 = distinct !DILexicalBlock(scope: !3748, file: !3749, line: 396, column: 7)
!3774 = !DILocation(line: 334, column: 23, scope: !3748)
!3775 = !DILocation(line: 334, column: 40, scope: !3748)
!3776 = !DILocation(line: 334, column: 50, scope: !3748)
!3777 = !DILocation(line: 334, column: 64, scope: !3748)
!3778 = !DILocation(line: 337, column: 3, scope: !3748)
!3779 = !DILocation(line: 353, column: 9, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3748, file: !3749, line: 353, column: 7)
!3781 = !DILocation(line: 353, column: 7, scope: !3748)
!3782 = !DILocation(line: 388, column: 9, scope: !3748)
!3783 = !DILocation(line: 336, column: 10, scope: !3748)
!3784 = !DILocation(line: 396, column: 19, scope: !3773)
!3785 = !DILocation(line: 396, column: 31, scope: !3773)
!3786 = !DILocation(line: 396, column: 26, scope: !3773)
!3787 = !DILocation(line: 396, column: 41, scope: !3773)
!3788 = !DILocation(line: 396, column: 7, scope: !3748)
!3789 = !DILocation(line: 398, column: 26, scope: !3772)
!3790 = !DILocation(line: 398, column: 21, scope: !3772)
!3791 = !DILocation(line: 399, column: 14, scope: !3772)
!3792 = !DILocation(line: 399, column: 12, scope: !3772)
!3793 = !DILocation(line: 405, column: 1, scope: !3748)
!3794 = distinct !DISubprogram(name: "close_stream", scope: !3795, file: !3795, line: 56, type: !3796, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3838)
!3795 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!78, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !754, line: 7, baseType: !3800)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 241, size: 1728, elements: !3801)
!3801 = !{!3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3800, file: !756, line: 242, baseType: !78, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3800, file: !756, line: 247, baseType: !29, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3800, file: !756, line: 248, baseType: !29, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3800, file: !756, line: 249, baseType: !29, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3800, file: !756, line: 250, baseType: !29, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3800, file: !756, line: 251, baseType: !29, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3800, file: !756, line: 252, baseType: !29, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3800, file: !756, line: 253, baseType: !29, size: 64, offset: 448)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3800, file: !756, line: 254, baseType: !29, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3800, file: !756, line: 256, baseType: !29, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3800, file: !756, line: 257, baseType: !29, size: 64, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3800, file: !756, line: 258, baseType: !29, size: 64, offset: 704)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3800, file: !756, line: 260, baseType: !3815, size: 64, offset: 768)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !756, line: 156, size: 192, elements: !3817)
!3817 = !{!3818, !3819, !3821}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3816, file: !756, line: 157, baseType: !3815, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3816, file: !756, line: 158, baseType: !3820, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3816, file: !756, line: 162, baseType: !78, size: 32, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3800, file: !756, line: 262, baseType: !3820, size: 64, offset: 832)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3800, file: !756, line: 264, baseType: !78, size: 32, offset: 896)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3800, file: !756, line: 268, baseType: !78, size: 32, offset: 928)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3800, file: !756, line: 270, baseType: !782, size: 64, offset: 960)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3800, file: !756, line: 274, baseType: !138, size: 16, offset: 1024)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3800, file: !756, line: 275, baseType: !787, size: 8, offset: 1040)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3800, file: !756, line: 276, baseType: !789, size: 8, offset: 1048)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3800, file: !756, line: 280, baseType: !793, size: 64, offset: 1088)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3800, file: !756, line: 289, baseType: !796, size: 64, offset: 1152)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3800, file: !756, line: 297, baseType: !31, size: 64, offset: 1216)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3800, file: !756, line: 298, baseType: !31, size: 64, offset: 1280)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3800, file: !756, line: 299, baseType: !31, size: 64, offset: 1344)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3800, file: !756, line: 300, baseType: !31, size: 64, offset: 1408)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3800, file: !756, line: 302, baseType: !34, size: 64, offset: 1472)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3800, file: !756, line: 303, baseType: !78, size: 32, offset: 1536)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3800, file: !756, line: 305, baseType: !804, size: 160, offset: 1568)
!3838 = !{!3839, !3840, !3842, !3843}
!3839 = !DILocalVariable(name: "stream", arg: 1, scope: !3794, file: !3795, line: 56, type: !3798)
!3840 = !DILocalVariable(name: "some_pending", scope: !3794, file: !3795, line: 58, type: !3841)
!3841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!3842 = !DILocalVariable(name: "prev_fail", scope: !3794, file: !3795, line: 59, type: !3841)
!3843 = !DILocalVariable(name: "fclose_fail", scope: !3794, file: !3795, line: 60, type: !3841)
!3844 = !DILocation(line: 56, column: 21, scope: !3794)
!3845 = !DILocation(line: 58, column: 30, scope: !3794)
!3846 = !DILocalVariable(name: "__stream", arg: 1, scope: !3847, file: !838, line: 132, type: !3798)
!3847 = distinct !DISubprogram(name: "ferror_unlocked", scope: !838, file: !838, line: 132, type: !3796, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3848)
!3848 = !{!3846}
!3849 = !DILocation(line: 132, column: 1, scope: !3847, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 59, column: 27, scope: !3794)
!3851 = !DILocation(line: 134, column: 10, scope: !3847, inlinedAt: !3850)
!3852 = !DILocation(line: 59, column: 43, scope: !3794)
!3853 = !DILocation(line: 60, column: 29, scope: !3794)
!3854 = !DILocation(line: 60, column: 45, scope: !3794)
!3855 = !DILocation(line: 70, column: 17, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3794, file: !3795, line: 70, column: 7)
!3857 = !DILocation(line: 58, column: 50, scope: !3794)
!3858 = !DILocation(line: 70, column: 33, scope: !3856)
!3859 = !DILocation(line: 70, column: 53, scope: !3856)
!3860 = !DILocation(line: 70, column: 59, scope: !3856)
!3861 = !DILocation(line: 70, column: 7, scope: !3794)
!3862 = !DILocation(line: 72, column: 11, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3856, file: !3795, line: 71, column: 5)
!3864 = !DILocation(line: 73, column: 9, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3863, file: !3795, line: 72, column: 11)
!3866 = !DILocation(line: 73, column: 15, scope: !3865)
!3867 = !DILocation(line: 78, column: 1, scope: !3794)
!3868 = distinct !DISubprogram(name: "hard_locale", scope: !3869, file: !3869, line: 38, type: !3870, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3872)
!3869 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!40, !78}
!3872 = !{!3873, !3874, !3875}
!3873 = !DILocalVariable(name: "category", arg: 1, scope: !3868, file: !3869, line: 38, type: !78)
!3874 = !DILocalVariable(name: "hard", scope: !3868, file: !3869, line: 40, type: !40)
!3875 = !DILocalVariable(name: "p", scope: !3868, file: !3869, line: 41, type: !51)
!3876 = !DILocation(line: 38, column: 18, scope: !3868)
!3877 = !DILocation(line: 40, column: 8, scope: !3868)
!3878 = !DILocation(line: 41, column: 19, scope: !3868)
!3879 = !DILocation(line: 41, column: 15, scope: !3868)
!3880 = !DILocation(line: 43, column: 7, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3868, file: !3869, line: 43, column: 7)
!3882 = !DILocation(line: 43, column: 7, scope: !3868)
!3883 = !DILocation(line: 47, column: 15, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !3869, line: 47, column: 15)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !3869, line: 46, column: 9)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !3869, line: 45, column: 11)
!3887 = distinct !DILexicalBlock(scope: !3881, file: !3869, line: 44, column: 5)
!3888 = !DILocation(line: 47, column: 31, scope: !3884)
!3889 = !DILocation(line: 47, column: 36, scope: !3884)
!3890 = !DILocation(line: 47, column: 39, scope: !3884)
!3891 = !DILocation(line: 47, column: 59, scope: !3884)
!3892 = !DILocation(line: 47, column: 15, scope: !3885)
!3893 = !DILocation(line: 48, column: 13, scope: !3884)
!3894 = !DILocation(line: 71, column: 3, scope: !3868)
!3895 = distinct !DISubprogram(name: "locale_charset", scope: !536, file: !536, line: 393, type: !3896, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!51}
!3898 = !{!3899, !3900}
!3899 = !DILocalVariable(name: "codeset", scope: !3895, file: !536, line: 395, type: !51)
!3900 = !DILocalVariable(name: "aliases", scope: !3895, file: !536, line: 396, type: !51)
!3901 = !DILocalVariable(name: "buf1", scope: !3902, file: !536, line: 196, type: !3969)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !536, line: 194, column: 21)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !536, line: 193, column: 19)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !536, line: 193, column: 19)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !536, line: 188, column: 17)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !536, line: 181, column: 19)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !536, line: 177, column: 13)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !536, line: 173, column: 15)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !536, line: 161, column: 9)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !536, line: 157, column: 11)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !536, line: 130, column: 5)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !536, line: 129, column: 7)
!3913 = distinct !DISubprogram(name: "get_charset_aliases", scope: !536, file: !536, line: 124, type: !3896, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3919, !3921, !3922, !3923, !3924, !3965, !3966, !3967, !3901, !3968, !3972, !3973, !3974}
!3915 = !DILocalVariable(name: "cp", scope: !3913, file: !536, line: 126, type: !51)
!3916 = !DILocalVariable(name: "dir", scope: !3911, file: !536, line: 132, type: !51)
!3917 = !DILocalVariable(name: "base", scope: !3911, file: !536, line: 133, type: !51)
!3918 = !DILocalVariable(name: "file_name", scope: !3911, file: !536, line: 134, type: !29)
!3919 = !DILocalVariable(name: "dir_len", scope: !3920, file: !536, line: 144, type: !34)
!3920 = distinct !DILexicalBlock(scope: !3911, file: !536, line: 143, column: 7)
!3921 = !DILocalVariable(name: "base_len", scope: !3920, file: !536, line: 145, type: !34)
!3922 = !DILocalVariable(name: "add_slash", scope: !3920, file: !536, line: 146, type: !78)
!3923 = !DILocalVariable(name: "fd", scope: !3909, file: !536, line: 162, type: !78)
!3924 = !DILocalVariable(name: "fp", scope: !3907, file: !536, line: 178, type: !3925)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !754, line: 7, baseType: !3927)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 241, size: 1728, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3927, file: !756, line: 242, baseType: !78, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3927, file: !756, line: 247, baseType: !29, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3927, file: !756, line: 248, baseType: !29, size: 64, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3927, file: !756, line: 249, baseType: !29, size: 64, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3927, file: !756, line: 250, baseType: !29, size: 64, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3927, file: !756, line: 251, baseType: !29, size: 64, offset: 320)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3927, file: !756, line: 252, baseType: !29, size: 64, offset: 384)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3927, file: !756, line: 253, baseType: !29, size: 64, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3927, file: !756, line: 254, baseType: !29, size: 64, offset: 512)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3927, file: !756, line: 256, baseType: !29, size: 64, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3927, file: !756, line: 257, baseType: !29, size: 64, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3927, file: !756, line: 258, baseType: !29, size: 64, offset: 704)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3927, file: !756, line: 260, baseType: !3942, size: 64, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !756, line: 156, size: 192, elements: !3944)
!3944 = !{!3945, !3946, !3948}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3943, file: !756, line: 157, baseType: !3942, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3943, file: !756, line: 158, baseType: !3947, size: 64, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3943, file: !756, line: 162, baseType: !78, size: 32, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3927, file: !756, line: 262, baseType: !3947, size: 64, offset: 832)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3927, file: !756, line: 264, baseType: !78, size: 32, offset: 896)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3927, file: !756, line: 268, baseType: !78, size: 32, offset: 928)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3927, file: !756, line: 270, baseType: !782, size: 64, offset: 960)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3927, file: !756, line: 274, baseType: !138, size: 16, offset: 1024)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3927, file: !756, line: 275, baseType: !787, size: 8, offset: 1040)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3927, file: !756, line: 276, baseType: !789, size: 8, offset: 1048)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3927, file: !756, line: 280, baseType: !793, size: 64, offset: 1088)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3927, file: !756, line: 289, baseType: !796, size: 64, offset: 1152)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3927, file: !756, line: 297, baseType: !31, size: 64, offset: 1216)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3927, file: !756, line: 298, baseType: !31, size: 64, offset: 1280)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3927, file: !756, line: 299, baseType: !31, size: 64, offset: 1344)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3927, file: !756, line: 300, baseType: !31, size: 64, offset: 1408)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3927, file: !756, line: 302, baseType: !34, size: 64, offset: 1472)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3927, file: !756, line: 303, baseType: !78, size: 32, offset: 1536)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3927, file: !756, line: 305, baseType: !804, size: 160, offset: 1568)
!3965 = !DILocalVariable(name: "res_ptr", scope: !3905, file: !536, line: 190, type: !29)
!3966 = !DILocalVariable(name: "res_size", scope: !3905, file: !536, line: 191, type: !34)
!3967 = !DILocalVariable(name: "c", scope: !3902, file: !536, line: 195, type: !78)
!3968 = !DILocalVariable(name: "buf2", scope: !3902, file: !536, line: 197, type: !3969)
!3969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 408, elements: !3970)
!3970 = !{!3971}
!3971 = !DISubrange(count: 51)
!3972 = !DILocalVariable(name: "l1", scope: !3902, file: !536, line: 198, type: !34)
!3973 = !DILocalVariable(name: "l2", scope: !3902, file: !536, line: 198, type: !34)
!3974 = !DILocalVariable(name: "old_res_ptr", scope: !3902, file: !536, line: 199, type: !29)
!3975 = !DILocation(line: 196, column: 28, scope: !3902, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 589, column: 18, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3895, file: !536, line: 589, column: 3)
!3978 = !DILocation(line: 197, column: 28, scope: !3902, inlinedAt: !3976)
!3979 = !DILocation(line: 403, column: 13, scope: !3895)
!3980 = !DILocation(line: 395, column: 15, scope: !3895)
!3981 = !DILocation(line: 584, column: 15, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3895, file: !536, line: 584, column: 7)
!3983 = !DILocation(line: 584, column: 7, scope: !3895)
!3984 = !DILocation(line: 128, column: 8, scope: !3913, inlinedAt: !3976)
!3985 = !DILocation(line: 126, column: 15, scope: !3913, inlinedAt: !3976)
!3986 = !DILocation(line: 129, column: 10, scope: !3912, inlinedAt: !3976)
!3987 = !DILocation(line: 129, column: 7, scope: !3913, inlinedAt: !3976)
!3988 = !DILocation(line: 138, column: 13, scope: !3911, inlinedAt: !3976)
!3989 = !DILocation(line: 132, column: 19, scope: !3911, inlinedAt: !3976)
!3990 = !DILocation(line: 139, column: 15, scope: !3991, inlinedAt: !3976)
!3991 = distinct !DILexicalBlock(scope: !3911, file: !536, line: 139, column: 11)
!3992 = !DILocation(line: 139, column: 23, scope: !3991, inlinedAt: !3976)
!3993 = !DILocation(line: 139, column: 26, scope: !3991, inlinedAt: !3976)
!3994 = !DILocation(line: 139, column: 33, scope: !3991, inlinedAt: !3976)
!3995 = !DILocation(line: 139, column: 11, scope: !3911, inlinedAt: !3976)
!3996 = !DILocation(line: 140, column: 9, scope: !3991, inlinedAt: !3976)
!3997 = !DILocation(line: 144, column: 26, scope: !3920, inlinedAt: !3976)
!3998 = !DILocation(line: 144, column: 16, scope: !3920, inlinedAt: !3976)
!3999 = !DILocation(line: 145, column: 16, scope: !3920, inlinedAt: !3976)
!4000 = !DILocation(line: 146, column: 34, scope: !3920, inlinedAt: !3976)
!4001 = !DILocation(line: 146, column: 38, scope: !3920, inlinedAt: !3976)
!4002 = !DILocation(line: 146, column: 42, scope: !3920, inlinedAt: !3976)
!4003 = !DILocation(line: 147, column: 48, scope: !3920, inlinedAt: !3976)
!4004 = !DILocation(line: 147, column: 46, scope: !3920, inlinedAt: !3976)
!4005 = !DILocation(line: 147, column: 69, scope: !3920, inlinedAt: !3976)
!4006 = !DILocation(line: 147, column: 30, scope: !3920, inlinedAt: !3976)
!4007 = !DILocation(line: 134, column: 13, scope: !3911, inlinedAt: !3976)
!4008 = !DILocation(line: 148, column: 13, scope: !3920, inlinedAt: !3976)
!4009 = !DILocation(line: 150, column: 13, scope: !4010, inlinedAt: !3976)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !536, line: 149, column: 11)
!4011 = distinct !DILexicalBlock(scope: !3920, file: !536, line: 148, column: 13)
!4012 = !DILocation(line: 151, column: 17, scope: !4010, inlinedAt: !3976)
!4013 = !DILocation(line: 152, column: 34, scope: !4014, inlinedAt: !3976)
!4014 = distinct !DILexicalBlock(scope: !4010, file: !536, line: 151, column: 17)
!4015 = !DILocation(line: 153, column: 41, scope: !4010, inlinedAt: !3976)
!4016 = !DILocation(line: 153, column: 13, scope: !4010, inlinedAt: !3976)
!4017 = !DILocation(line: 157, column: 11, scope: !3911, inlinedAt: !3976)
!4018 = !DILocation(line: 171, column: 16, scope: !3909, inlinedAt: !3976)
!4019 = !DILocation(line: 162, column: 15, scope: !3909, inlinedAt: !3976)
!4020 = !DILocation(line: 173, column: 18, scope: !3908, inlinedAt: !3976)
!4021 = !DILocation(line: 173, column: 15, scope: !3909, inlinedAt: !3976)
!4022 = !DILocation(line: 180, column: 20, scope: !3907, inlinedAt: !3976)
!4023 = !DILocation(line: 178, column: 21, scope: !3907, inlinedAt: !3976)
!4024 = !DILocation(line: 181, column: 22, scope: !3906, inlinedAt: !3976)
!4025 = !DILocation(line: 181, column: 19, scope: !3907, inlinedAt: !3976)
!4026 = !DILocation(line: 184, column: 19, scope: !4027, inlinedAt: !3976)
!4027 = distinct !DILexicalBlock(scope: !3906, file: !536, line: 182, column: 17)
!4028 = !DILocation(line: 186, column: 17, scope: !4027, inlinedAt: !3976)
!4029 = !DILocation(line: 190, column: 25, scope: !3905, inlinedAt: !3976)
!4030 = !DILocation(line: 191, column: 26, scope: !3905, inlinedAt: !3976)
!4031 = !DILocation(line: 193, column: 19, scope: !3905, inlinedAt: !3976)
!4032 = !DILocation(line: 196, column: 23, scope: !3902, inlinedAt: !3976)
!4033 = !DILocation(line: 197, column: 23, scope: !3902, inlinedAt: !3976)
!4034 = !DILocalVariable(name: "__fp", arg: 1, scope: !4035, file: !838, line: 63, type: !3925)
!4035 = distinct !DISubprogram(name: "getc_unlocked", scope: !838, file: !838, line: 63, type: !4036, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!78, !3925}
!4038 = !{!4034}
!4039 = !DILocation(line: 63, column: 22, scope: !4035, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 201, column: 27, scope: !3902, inlinedAt: !3976)
!4041 = !DILocation(line: 65, column: 10, scope: !4035, inlinedAt: !4040)
!4042 = !DILocation(line: 195, column: 27, scope: !3902, inlinedAt: !3976)
!4043 = !DILocation(line: 202, column: 27, scope: !3902, inlinedAt: !3976)
!4044 = distinct !{!4044, !4045, !4048}
!4045 = !DILocation(line: 209, column: 27, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !536, line: 207, column: 25)
!4047 = distinct !DILexicalBlock(scope: !3902, file: !536, line: 206, column: 27)
!4048 = !DILocation(line: 211, column: 58, scope: !4046)
!4049 = !DILocation(line: 65, column: 10, scope: !4035, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 210, column: 33, scope: !4046, inlinedAt: !3976)
!4051 = !DILocation(line: 63, column: 22, scope: !4035, inlinedAt: !4050)
!4052 = !DILocation(line: 210, column: 29, scope: !4046, inlinedAt: !3976)
!4053 = distinct !{!4053, !4054, !4055}
!4054 = !DILocation(line: 193, column: 19, scope: !3904)
!4055 = !DILocation(line: 241, column: 21, scope: !3904)
!4056 = !DILocation(line: 216, column: 23, scope: !3902, inlinedAt: !3976)
!4057 = !DILocation(line: 217, column: 27, scope: !4058, inlinedAt: !3976)
!4058 = distinct !DILexicalBlock(scope: !3902, file: !536, line: 217, column: 27)
!4059 = !DILocation(line: 217, column: 64, scope: !4058, inlinedAt: !3976)
!4060 = !DILocation(line: 217, column: 27, scope: !3902, inlinedAt: !3976)
!4061 = !DILocation(line: 219, column: 28, scope: !3902, inlinedAt: !3976)
!4062 = !DILocation(line: 198, column: 30, scope: !3902, inlinedAt: !3976)
!4063 = !DILocation(line: 220, column: 28, scope: !3902, inlinedAt: !3976)
!4064 = !DILocation(line: 198, column: 34, scope: !3902, inlinedAt: !3976)
!4065 = !DILocation(line: 199, column: 29, scope: !3902, inlinedAt: !3976)
!4066 = !DILocation(line: 222, column: 36, scope: !4067, inlinedAt: !3976)
!4067 = distinct !DILexicalBlock(scope: !3902, file: !536, line: 222, column: 27)
!4068 = !DILocation(line: 222, column: 27, scope: !3902, inlinedAt: !3976)
!4069 = !DILocation(line: 225, column: 63, scope: !4070, inlinedAt: !3976)
!4070 = distinct !DILexicalBlock(scope: !4067, file: !536, line: 223, column: 25)
!4071 = !DILocation(line: 225, column: 46, scope: !4070, inlinedAt: !3976)
!4072 = !DILocation(line: 226, column: 25, scope: !4070, inlinedAt: !3976)
!4073 = !DILocation(line: 229, column: 36, scope: !4074, inlinedAt: !3976)
!4074 = distinct !DILexicalBlock(scope: !4067, file: !536, line: 228, column: 25)
!4075 = !DILocation(line: 230, column: 73, scope: !4074, inlinedAt: !3976)
!4076 = !DILocation(line: 230, column: 46, scope: !4074, inlinedAt: !3976)
!4077 = !DILocation(line: 232, column: 35, scope: !4078, inlinedAt: !3976)
!4078 = distinct !DILexicalBlock(scope: !3902, file: !536, line: 232, column: 27)
!4079 = !DILocation(line: 232, column: 27, scope: !3902, inlinedAt: !3976)
!4080 = !DILocation(line: 236, column: 27, scope: !4081, inlinedAt: !3976)
!4081 = distinct !DILexicalBlock(scope: !4078, file: !536, line: 233, column: 25)
!4082 = !DILocation(line: 237, column: 27, scope: !4081, inlinedAt: !3976)
!4083 = !DILocation(line: 241, column: 21, scope: !3903, inlinedAt: !3976)
!4084 = !DILocation(line: 239, column: 39, scope: !3902, inlinedAt: !3976)
!4085 = !DILocation(line: 239, column: 50, scope: !3902, inlinedAt: !3976)
!4086 = !DILocation(line: 239, column: 61, scope: !3902, inlinedAt: !3976)
!4087 = !DILocalVariable(name: "__dest", arg: 1, scope: !4088, file: !4089, line: 88, type: !4092)
!4088 = distinct !DISubprogram(name: "strcpy", scope: !4089, file: !4089, line: 88, type: !4090, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !4094)
!4089 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!29, !4092, !4093}
!4092 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!4093 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!4094 = !{!4087, !4095}
!4095 = !DILocalVariable(name: "__src", arg: 2, scope: !4088, file: !4089, line: 88, type: !4093)
!4096 = !DILocation(line: 88, column: 1, scope: !4088, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 239, column: 23, scope: !3902, inlinedAt: !3976)
!4098 = !DILocation(line: 90, column: 49, scope: !4088, inlinedAt: !4097)
!4099 = !DILocation(line: 90, column: 10, scope: !4088, inlinedAt: !4097)
!4100 = !DILocation(line: 88, column: 1, scope: !4088, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 240, column: 23, scope: !3902, inlinedAt: !3976)
!4102 = !DILocation(line: 90, column: 49, scope: !4088, inlinedAt: !4101)
!4103 = !DILocation(line: 90, column: 10, scope: !4088, inlinedAt: !4101)
!4104 = !DILocation(line: 193, column: 19, scope: !3903, inlinedAt: !3976)
!4105 = !DILocation(line: 242, column: 19, scope: !3905, inlinedAt: !3976)
!4106 = !DILocation(line: 243, column: 32, scope: !4107, inlinedAt: !3976)
!4107 = distinct !DILexicalBlock(scope: !3905, file: !536, line: 243, column: 23)
!4108 = !DILocation(line: 243, column: 23, scope: !3905, inlinedAt: !3976)
!4109 = !DILocation(line: 247, column: 33, scope: !4110, inlinedAt: !3976)
!4110 = distinct !DILexicalBlock(scope: !4107, file: !536, line: 246, column: 21)
!4111 = !DILocation(line: 247, column: 45, scope: !4110, inlinedAt: !3976)
!4112 = !DILocation(line: 253, column: 11, scope: !3909, inlinedAt: !3976)
!4113 = !DILocation(line: 377, column: 23, scope: !3911, inlinedAt: !3976)
!4114 = !DILocation(line: 378, column: 5, scope: !3911, inlinedAt: !3976)
!4115 = !DILocation(line: 396, column: 15, scope: !3895)
!4116 = !DILocation(line: 590, column: 8, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !3977, file: !536, line: 589, column: 3)
!4118 = !DILocation(line: 590, column: 17, scope: !4117)
!4119 = !DILocation(line: 589, column: 3, scope: !3977)
!4120 = !DILocation(line: 592, column: 9, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4117, file: !536, line: 592, column: 9)
!4122 = !DILocation(line: 592, column: 35, scope: !4121)
!4123 = !DILocation(line: 593, column: 9, scope: !4121)
!4124 = !DILocation(line: 593, column: 24, scope: !4121)
!4125 = !DILocation(line: 593, column: 31, scope: !4121)
!4126 = !DILocation(line: 593, column: 34, scope: !4121)
!4127 = !DILocation(line: 593, column: 45, scope: !4121)
!4128 = !DILocation(line: 592, column: 9, scope: !4117)
!4129 = !DILocation(line: 595, column: 29, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4121, file: !536, line: 594, column: 7)
!4131 = !DILocation(line: 595, column: 27, scope: !4130)
!4132 = !DILocation(line: 595, column: 46, scope: !4130)
!4133 = !DILocation(line: 596, column: 9, scope: !4130)
!4134 = !DILocation(line: 591, column: 19, scope: !4117)
!4135 = !DILocation(line: 591, column: 36, scope: !4117)
!4136 = !DILocation(line: 591, column: 16, scope: !4117)
!4137 = !DILocation(line: 591, column: 52, scope: !4117)
!4138 = !DILocation(line: 591, column: 69, scope: !4117)
!4139 = !DILocation(line: 591, column: 49, scope: !4117)
!4140 = distinct !{!4140, !4119, !4141}
!4141 = !DILocation(line: 597, column: 7, scope: !3977)
!4142 = !DILocation(line: 602, column: 7, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !3895, file: !536, line: 602, column: 7)
!4144 = !DILocation(line: 602, column: 18, scope: !4143)
!4145 = !DILocation(line: 602, column: 7, scope: !3895)
!4146 = !DILocation(line: 612, column: 3, scope: !3895)
