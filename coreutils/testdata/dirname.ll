; ModuleID = 'coreutils-8.27/src/dirname.bc'
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
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"  -z, --zero     end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@main.dot = internal constant i8 46, align 1, !dbg !11
@.str.31 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !64
@.str.16 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !69
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !74
@.str.19 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.20 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !77
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !84
@.str.34 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.35 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.36 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.40, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.46, i32 0, i32 0), i8* null], align 16, !dbg !91
@.str.37 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.38 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.39 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.40 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.41 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.42 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.43 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.44 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.45 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.46 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !133
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !140
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !153
@.str.11.47 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.48 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.49 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.50 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.51 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !160
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !167
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !155
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !169
@.str.54 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.57 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.58 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.59 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.60 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.61 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.62 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.63 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.64 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.65 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.66 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.67 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.70 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.71 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.72 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.73 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.74 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.75 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !175
@.str.1.86 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.97 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.100 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !184
@.str.3.101 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.102 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.103 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.104 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.105 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.106 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !585 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !589, metadata !590), !dbg !591
  %2 = icmp eq i32 %0, 0, !dbg !592
  br i1 %2, label %8, label %3, !dbg !594

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !595, !tbaa !597
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !595
  %6 = load i8*, i8** @program_name, align 8, !dbg !595, !tbaa !597
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !595
  br label %42, !dbg !595

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !601
  %10 = load i8*, i8** @program_name, align 8, !dbg !601, !tbaa !597
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !601
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !603
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !597
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !603
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !604
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !604, !tbaa !597
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !604
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !605
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605, !tbaa !597
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !605
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !606
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !606, !tbaa !597
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !606
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !607
  %25 = load i8*, i8** @program_name, align 8, !dbg !607, !tbaa !597
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* %25, i8* %25, i8* %25) #12, !dbg !607
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !40, metadata !590) #12, !dbg !608
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !40, metadata !590) #12, !dbg !608
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !610
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #12, !dbg !610
  %29 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !611
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !48, metadata !590) #12, !dbg !612
  %30 = icmp eq i8* %29, null, !dbg !613
  br i1 %30, label %37, label %31, !dbg !615

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #14, !dbg !616
  %33 = icmp eq i32 %32, 0, !dbg !616
  br i1 %33, label %37, label %34, !dbg !617

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !618
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !618
  br label %37, !dbg !620

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !621
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !621
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !622
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #12, !dbg !622
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #15, !dbg !623
  unreachable, !dbg !623
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !13 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !19, metadata !590), !dbg !624
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !20, metadata !590), !dbg !625
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !21, metadata !590), !dbg !626
  %3 = load i8*, i8** %1, align 8, !dbg !627, !tbaa !597
  tail call void @set_program_name(i8* %3) #12, !dbg !628
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !629
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !630
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !631
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !632
  br label %8, !dbg !633

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %8 ]
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !21, metadata !590), !dbg !626
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !30, metadata !590), !dbg !635
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 122, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !636, !llvm.loop !637

; <label>:11:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !639
  unreachable, !dbg !639

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !597
  %14 = load i8*, i8** @Version, align 8, !dbg !641, !tbaa !597
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* null) #12, !dbg !641
  tail call void @exit(i32 0) #15, !dbg !641
  unreachable, !dbg !641

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !642
  unreachable, !dbg !642

; <label>:16:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !21, metadata !590), !dbg !626
  %17 = load i32, i32* @optind, align 4, !dbg !643, !tbaa !645
  %18 = icmp slt i32 %17, %0, !dbg !647
  br i1 %18, label %21, label %19, !dbg !648

; <label>:19:                                     ; preds = %16
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !649
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20) #12, !dbg !651
  tail call void @usage(i32 1) #16, !dbg !652
  unreachable, !dbg !652

; <label>:21:                                     ; preds = %16
  %22 = icmp eq i8 %9, 0
  %23 = select i1 %22, i32 10, i32 0
  %24 = trunc i32 %23 to i8
  br label %25, !dbg !653

; <label>:25:                                     ; preds = %21, %46
  %26 = phi i32 [ %17, %21 ], [ %48, %46 ]
  %27 = sext i32 %26 to i64, !dbg !655
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !655
  %29 = load i8*, i8** %28, align 8, !dbg !655, !tbaa !597
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !23, metadata !590), !dbg !658
  %30 = tail call i64 @dir_len(i8* %29) #14, !dbg !659
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !26, metadata !590), !dbg !660
  %31 = icmp eq i64 %30, 0, !dbg !661
  tail call void @llvm.dbg.value(metadata i8* @main.dot, i64 0, metadata !23, metadata !590), !dbg !658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !26, metadata !590), !dbg !660
  %32 = select i1 %31, i8* @main.dot, i8* %29, !dbg !663
  %33 = select i1 %31, i64 1, i64 %30, !dbg !663
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !26, metadata !590), !dbg !660
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !23, metadata !590), !dbg !658
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !597
  %35 = tail call i64 @fwrite_unlocked(i8* %32, i64 1, i64 %33, %struct._IO_FILE* %34) #12, !dbg !664
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !665, metadata !590) #12, !dbg !671
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !597
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !673
  %38 = load i8*, i8** %37, align 8, !dbg !673, !tbaa !674
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !673
  %40 = load i8*, i8** %39, align 8, !dbg !673, !tbaa !678
  %41 = icmp ult i8* %38, %40, !dbg !673
  br i1 %41, label %44, label %42, !dbg !673, !prof !679

; <label>:42:                                     ; preds = %25
  %43 = tail call i32 @__overflow(%struct._IO_FILE* %36, i32 %23) #12, !dbg !673
  br label %46, !dbg !673

; <label>:44:                                     ; preds = %25
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !673
  store i8* %45, i8** %37, align 8, !dbg !673, !tbaa !674
  store i8 %24, i8* %38, align 1, !dbg !673, !tbaa !680
  br label %46, !dbg !673

; <label>:46:                                     ; preds = %42, %44
  %47 = load i32, i32* @optind, align 4, !dbg !681, !tbaa !645
  %48 = add nsw i32 %47, 1, !dbg !681
  store i32 %48, i32* @optind, align 4, !dbg !681, !tbaa !645
  %49 = icmp slt i32 %48, %0, !dbg !682
  br i1 %49, label %25, label %50, !dbg !653, !llvm.loop !683

; <label>:50:                                     ; preds = %46
  ret i32 0, !dbg !685
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

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !686 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !688, metadata !590), !dbg !689
  store i8* %0, i8** @file_name, align 8, !dbg !690, !tbaa !597
  ret void, !dbg !691
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !692 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !696, metadata !590), !dbg !697
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !698, !tbaa !699
  ret void, !dbg !701
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !702 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !597
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !710
  %3 = icmp eq i32 %2, 0, !dbg !711
  br i1 %3, label %21, label %4, !dbg !712

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !713, !tbaa !699, !range !714
  %6 = icmp eq i8 %5, 0, !dbg !713
  %7 = tail call i32* @__errno_location() #17, !dbg !715
  br i1 %6, label %11, label %8, !dbg !717

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !718, !tbaa !645
  %10 = icmp eq i32 %9, 32, !dbg !719
  br i1 %10, label %21, label %11, !dbg !720

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !721
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !706, metadata !590), !dbg !722
  %13 = load i8*, i8** @file_name, align 8, !dbg !723, !tbaa !597
  %14 = icmp eq i8* %13, null, !dbg !723
  %15 = load i32, i32* %7, align 4, !tbaa !645
  br i1 %14, label %18, label %16, !dbg !724

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !725
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !726
  br label %19, !dbg !726

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.21, i64 0, i64 0), i8* %12) #12, !dbg !727
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !728, !tbaa !645
  tail call void @_exit(i32 %20) #15, !dbg !729
  unreachable, !dbg !729

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !730, !tbaa !597
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !732
  %24 = icmp eq i32 %23, 0, !dbg !733
  br i1 %24, label %27, label %25, !dbg !734

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !735, !tbaa !645
  tail call void @_exit(i32 %26) #15, !dbg !736
  unreachable, !dbg !736

; <label>:27:                                     ; preds = %21
  ret void, !dbg !737
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @dir_len(i8*) local_unnamed_addr #9 !dbg !738 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !743, metadata !590), !dbg !746
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !744, metadata !590), !dbg !747
  %2 = load i8, i8* %0, align 1, !dbg !748, !tbaa !680
  %3 = icmp eq i8 %2, 47, !dbg !748
  %4 = zext i1 %3 to i64, !dbg !749
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !744, metadata !590), !dbg !747
  %5 = tail call i8* @last_component(i8* %0) #14, !dbg !750
  %6 = ptrtoint i8* %5 to i64, !dbg !752
  %7 = ptrtoint i8* %0 to i64, !dbg !752
  %8 = sub i64 %6, %7, !dbg !752
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !745, metadata !590), !dbg !753
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !745, metadata !590), !dbg !753
  %9 = icmp ugt i64 %8, %4, !dbg !754
  br i1 %9, label %10, label %19, !dbg !756

; <label>:10:                                     ; preds = %1
  br label %13, !dbg !757

; <label>:11:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !745, metadata !590), !dbg !753
  %12 = icmp ugt i64 %15, %4, !dbg !754
  br i1 %12, label %13, label %19, !dbg !756, !llvm.loop !759

; <label>:13:                                     ; preds = %10, %11
  %14 = phi i64 [ %15, %11 ], [ %8, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !745, metadata !590), !dbg !753
  %15 = add i64 %14, -1, !dbg !757
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !757
  %17 = load i8, i8* %16, align 1, !dbg !757, !tbaa !680
  %18 = icmp eq i8 %17, 47, !dbg !757
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !745, metadata !590), !dbg !753
  br i1 %18, label %11, label %19, !dbg !761

; <label>:19:                                     ; preds = %11, %13, %1
  %20 = phi i64 [ %8, %1 ], [ %14, %13 ], [ %15, %11 ]
  ret i64 %20, !dbg !762
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @mdir_name(i8*) local_unnamed_addr #6 !dbg !763 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !767, metadata !590), !dbg !771
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !743, metadata !590) #12, !dbg !772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !744, metadata !590) #12, !dbg !774
  %2 = load i8, i8* %0, align 1, !dbg !775, !tbaa !680
  %3 = icmp eq i8 %2, 47, !dbg !775
  %4 = zext i1 %3 to i64, !dbg !776
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !744, metadata !590) #12, !dbg !774
  %5 = tail call i8* @last_component(i8* %0) #14, !dbg !777
  %6 = ptrtoint i8* %5 to i64, !dbg !778
  %7 = ptrtoint i8* %0 to i64, !dbg !778
  %8 = sub i64 %6, %7, !dbg !778
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !745, metadata !590) #12, !dbg !779
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !745, metadata !590) #12, !dbg !779
  %9 = icmp ugt i64 %8, %4, !dbg !780
  br i1 %9, label %10, label %19, !dbg !781

; <label>:10:                                     ; preds = %1
  br label %13, !dbg !782

; <label>:11:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !745, metadata !590) #12, !dbg !779
  %12 = icmp ugt i64 %15, %4, !dbg !780
  br i1 %12, label %13, label %19, !dbg !781, !llvm.loop !759

; <label>:13:                                     ; preds = %10, %11
  %14 = phi i64 [ %15, %11 ], [ %8, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !745, metadata !590) #12, !dbg !779
  %15 = add i64 %14, -1, !dbg !782
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !782
  %17 = load i8, i8* %16, align 1, !dbg !782, !tbaa !680
  %18 = icmp eq i8 %17, 47, !dbg !782
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !745, metadata !590) #12, !dbg !779
  br i1 %18, label %11, label %19, !dbg !783

; <label>:19:                                     ; preds = %11, %13, %1
  %20 = phi i64 [ %8, %1 ], [ %15, %11 ], [ %14, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !768, metadata !590), !dbg !784
  %21 = icmp eq i64 %20, 0, !dbg !785
  %22 = zext i1 %21 to i64, !dbg !786
  %23 = add i64 %20, 1, !dbg !787
  %24 = add i64 %23, %22, !dbg !788
  %25 = tail call noalias i8* @malloc(i64 %24) #12, !dbg !789
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !770, metadata !590), !dbg !790
  %26 = icmp eq i8* %25, null, !dbg !791
  br i1 %26, label %32, label %27, !dbg !793

; <label>:27:                                     ; preds = %19
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %25, i8* nonnull %0, i64 %20, i32 1, i1 false), !dbg !794
  br i1 %21, label %28, label %29, !dbg !795

; <label>:28:                                     ; preds = %27
  store i8 46, i8* %25, align 1, !dbg !796, !tbaa !680
  br label %29, !dbg !798

; <label>:29:                                     ; preds = %28, %27
  %30 = phi i64 [ 1, %28 ], [ %20, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !768, metadata !590), !dbg !784
  %31 = getelementptr inbounds i8, i8* %25, i64 %30, !dbg !799
  store i8 0, i8* %31, align 1, !dbg !800, !tbaa !680
  br label %32, !dbg !801

; <label>:32:                                     ; preds = %19, %29
  %33 = phi i8* [ %25, %29 ], [ null, %19 ]
  ret i8* %33, !dbg !802
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #9 !dbg !803 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !806, metadata !590), !dbg !810
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !807, metadata !590), !dbg !811
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !809, metadata !590), !dbg !812
  br label %2, !dbg !813

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !807, metadata !590), !dbg !811
  %4 = load i8, i8* %3, align 1, !dbg !814, !tbaa !680
  %5 = icmp eq i8 %4, 47, !dbg !814
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !815
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !807, metadata !590), !dbg !811
  br i1 %5, label %2, label %7, !dbg !813, !llvm.loop !816

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !817

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !819
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !809, metadata !590), !dbg !812
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !808, metadata !590), !dbg !821
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !807, metadata !590), !dbg !811
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !817

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !822
  %15 = icmp eq i8 %14, 0, !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !807, metadata !590), !dbg !811
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !809, metadata !590), !dbg !812
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !826
  %17 = select i1 %15, i8 %12, i8 0, !dbg !826
  br label %18, !dbg !826

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !809, metadata !590), !dbg !812
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !807, metadata !590), !dbg !811
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !827
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !808, metadata !590), !dbg !821
  %22 = load i8, i8* %21, align 1, !dbg !819, !tbaa !680
  br label %8, !dbg !828, !llvm.loop !829

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !831
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #9 !dbg !832 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !834, metadata !590), !dbg !837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !836, metadata !590), !dbg !838
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !839
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !835, metadata !590), !dbg !841
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !835, metadata !590), !dbg !841
  %3 = icmp ugt i64 %2, 1, !dbg !842
  br i1 %3, label %4, label %13, !dbg !844

; <label>:4:                                      ; preds = %1
  br label %7, !dbg !845

; <label>:5:                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !835, metadata !590), !dbg !841
  %6 = icmp ugt i64 %9, 1, !dbg !842
  br i1 %6, label %7, label %13, !dbg !844, !llvm.loop !846

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %9, %5 ], [ %2, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !835, metadata !590), !dbg !841
  %9 = add i64 %8, -1, !dbg !845
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !845
  %11 = load i8, i8* %10, align 1, !dbg !845, !tbaa !680
  %12 = icmp eq i8 %11, 47, !dbg !845
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !835, metadata !590), !dbg !841
  br i1 %12, label %5, label %13, !dbg !847

; <label>:13:                                     ; preds = %7, %5, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %5 ], [ %8, %7 ]
  ret i64 %14, !dbg !849
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !850 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !852, metadata !590), !dbg !855
  %2 = icmp eq i8* %0, null, !dbg !856
  br i1 %2, label %3, label %6, !dbg !858

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !859, !tbaa !597
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !861
  tail call void @abort() #15, !dbg !862
  unreachable, !dbg !862

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !863
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !853, metadata !590), !dbg !864
  %8 = icmp eq i8* %7, null, !dbg !865
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !866
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !867
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !854, metadata !590), !dbg !868
  %11 = ptrtoint i8* %10 to i64, !dbg !869
  %12 = ptrtoint i8* %0 to i64, !dbg !869
  %13 = sub i64 %11, %12, !dbg !869
  %14 = icmp sgt i64 %13, 6, !dbg !871
  br i1 %14, label %15, label %24, !dbg !872

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !873
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.35, i64 0, i64 0), i64 7) #14, !dbg !874
  %18 = icmp eq i32 %17, 0, !dbg !875
  br i1 %18, label %19, label %24, !dbg !876

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !852, metadata !590), !dbg !855
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.36, i64 0, i64 0), i64 3) #14, !dbg !877
  %21 = icmp eq i32 %20, 0, !dbg !880
  br i1 %21, label %22, label %24, !dbg !881

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !882
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !852, metadata !590), !dbg !855
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !884, !tbaa !597
  br label %24, !dbg !885

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !852, metadata !590), !dbg !855
  store i8* %25, i8** @program_name, align 8, !dbg !886, !tbaa !597
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !887, !tbaa !597
  ret void, !dbg !888
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !889 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !894, metadata !590), !dbg !897
  %2 = tail call i32* @__errno_location() #17, !dbg !898
  %3 = load i32, i32* %2, align 4, !dbg !898, !tbaa !645
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !895, metadata !590), !dbg !899
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !900
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !900
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !900
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !901
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !901
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !896, metadata !590), !dbg !902
  store i32 %3, i32* %2, align 4, !dbg !903, !tbaa !645
  ret %struct.quoting_options* %8, !dbg !904
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !905 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !911, metadata !590), !dbg !912
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !913
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !913
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !914
  %5 = load i32, i32* %4, align 8, !dbg !914, !tbaa !915
  ret i32 %5, !dbg !917
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !918 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !922, metadata !590), !dbg !924
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !923, metadata !590), !dbg !925
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !926
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !926
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !927
  store i32 %1, i32* %5, align 8, !dbg !928, !tbaa !915
  ret void, !dbg !929
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !930 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !934, metadata !590), !dbg !942
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !935, metadata !590), !dbg !943
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !936, metadata !590), !dbg !944
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !937, metadata !590), !dbg !945
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !946
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !946
  %6 = lshr i8 %1, 5, !dbg !947
  %7 = zext i8 %6 to i64, !dbg !947
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !948
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !938, metadata !590), !dbg !949
  %9 = and i8 %1, 31, !dbg !950
  %10 = zext i8 %9 to i32, !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !940, metadata !590), !dbg !952
  %11 = load i32, i32* %8, align 4, !dbg !953, !tbaa !645
  %12 = lshr i32 %11, %10, !dbg !954
  %13 = and i32 %12, 1, !dbg !955
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !941, metadata !590), !dbg !956
  %14 = and i32 %2, 1, !dbg !957
  %15 = xor i32 %13, %14, !dbg !958
  %16 = shl i32 %15, %10, !dbg !959
  %17 = xor i32 %16, %11, !dbg !960
  store i32 %17, i32* %8, align 4, !dbg !960, !tbaa !645
  ret i32 %13, !dbg !961
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !962 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !966, metadata !590), !dbg !969
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !967, metadata !590), !dbg !970
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !966, metadata !590), !dbg !969
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !973
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !966, metadata !590), !dbg !969
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !974
  %6 = load i32, i32* %5, align 4, !dbg !974, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !968, metadata !590), !dbg !976
  store i32 %1, i32* %5, align 4, !dbg !977, !tbaa !975
  ret i32 %6, !dbg !978
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !979 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !983, metadata !590), !dbg !986
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !984, metadata !590), !dbg !987
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !985, metadata !590), !dbg !988
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !989
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !983, metadata !590), !dbg !986
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !991
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !983, metadata !590), !dbg !986
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !992
  store i32 10, i32* %6, align 8, !dbg !993, !tbaa !915
  %7 = icmp ne i8* %1, null, !dbg !994
  %8 = icmp ne i8* %2, null, !dbg !996
  %9 = and i1 %7, %8, !dbg !997
  br i1 %9, label %11, label %10, !dbg !997

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !998
  unreachable, !dbg !998

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !999
  store i8* %1, i8** %12, align 8, !dbg !1000, !tbaa !1001
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1002
  store i8* %2, i8** %13, align 8, !dbg !1003, !tbaa !1004
  ret void, !dbg !1005
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1006 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1010, metadata !590), !dbg !1018
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1011, metadata !590), !dbg !1019
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1012, metadata !590), !dbg !1020
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1013, metadata !590), !dbg !1021
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1014, metadata !590), !dbg !1022
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1023
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1023
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1015, metadata !590), !dbg !1024
  %8 = tail call i32* @__errno_location() #17, !dbg !1025
  %9 = load i32, i32* %8, align 4, !dbg !1025, !tbaa !645
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1016, metadata !590), !dbg !1026
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1027
  %11 = load i32, i32* %10, align 8, !dbg !1027, !tbaa !915
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1028
  %13 = load i32, i32* %12, align 4, !dbg !1028, !tbaa !975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1029
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1030
  %16 = load i8*, i8** %15, align 8, !dbg !1030, !tbaa !1001
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1031
  %18 = load i8*, i8** %17, align 8, !dbg !1031, !tbaa !1004
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1032
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1017, metadata !590), !dbg !1033
  store i32 %9, i32* %8, align 4, !dbg !1034, !tbaa !645
  ret i64 %19, !dbg !1035
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1036 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1042, metadata !590), !dbg !1104
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1043, metadata !590), !dbg !1105
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1044, metadata !590), !dbg !1106
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1045, metadata !590), !dbg !1107
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1046, metadata !590), !dbg !1108
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1047, metadata !590), !dbg !1109
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1048, metadata !590), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1049, metadata !590), !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1050, metadata !590), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1052, metadata !590), !dbg !1113
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1053, metadata !590), !dbg !1114
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1054, metadata !590), !dbg !1115
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1055, metadata !590), !dbg !1116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1056, metadata !590), !dbg !1117
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1118
  %14 = icmp eq i64 %13, 1, !dbg !1119
  %15 = lshr i32 %5, 1, !dbg !1120
  %16 = trunc i32 %15 to i8, !dbg !1120
  %17 = and i8 %16, 1, !dbg !1120
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1058, metadata !590), !dbg !1120
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1059, metadata !590), !dbg !1121
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1060, metadata !590), !dbg !1122
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1061, metadata !590), !dbg !1123
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1124

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1061, metadata !590), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1060, metadata !590), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1058, metadata !590), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1045, metadata !590), !dbg !1107
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1056, metadata !590), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1055, metadata !590), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1054, metadata !590), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1053, metadata !590), !dbg !1114
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1050, metadata !590), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1049, metadata !590), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1046, metadata !590), !dbg !1108
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
  ], !dbg !1125

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1046, metadata !590), !dbg !1108
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1058, metadata !590), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1058, metadata !590), !dbg !1120
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1046, metadata !590), !dbg !1108
  br label %94, !dbg !1126

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1058, metadata !590), !dbg !1120
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1046, metadata !590), !dbg !1108
  %43 = and i8 %36, 1, !dbg !1128
  %44 = icmp eq i8 %43, 0, !dbg !1128
  br i1 %44, label %45, label %94, !dbg !1126

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1130
  br i1 %46, label %94, label %47, !dbg !1133

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1130, !tbaa !680
  br label %94, !dbg !1130

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.47, i64 0, i64 0), i32 %28), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1049, metadata !590), !dbg !1111
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), i32 %28), !dbg !1138
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1050, metadata !590), !dbg !1112
  br label %51, !dbg !1139

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1050, metadata !590), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1049, metadata !590), !dbg !1111
  %54 = and i8 %36, 1, !dbg !1140
  %55 = icmp eq i8 %54, 0, !dbg !1140
  br i1 %55, label %56, label %72, !dbg !1142

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1054, metadata !590), !dbg !1115
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1054, metadata !590), !dbg !1115
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1052, metadata !590), !dbg !1113
  %57 = load i8, i8* %52, align 1, !dbg !1143, !tbaa !680
  %58 = icmp eq i8 %57, 0, !dbg !1146
  br i1 %58, label %72, label %59, !dbg !1146

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1147

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1054, metadata !590), !dbg !1115
  %64 = icmp ult i64 %63, %40, !dbg !1147
  br i1 %64, label %65, label %67, !dbg !1150

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1147
  store i8 %61, i8* %66, align 1, !dbg !1147, !tbaa !680
  br label %67, !dbg !1147

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1150
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1052, metadata !590), !dbg !1113
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1151
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1054, metadata !590), !dbg !1115
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1054, metadata !590), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1052, metadata !590), !dbg !1113
  %70 = load i8, i8* %69, align 1, !dbg !1143, !tbaa !680
  %71 = icmp eq i8 %70, 0, !dbg !1146
  br i1 %71, label %72, label %60, !dbg !1146, !llvm.loop !1152

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !590), !dbg !1117
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1054, metadata !590), !dbg !1115
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1055, metadata !590), !dbg !1116
  br label %94, !dbg !1155

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !590), !dbg !1117
  br label %76, !dbg !1156

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1056, metadata !590), !dbg !1117
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1058, metadata !590), !dbg !1120
  br label %78, !dbg !1157

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1058, metadata !590), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1056, metadata !590), !dbg !1117
  %81 = and i8 %80, 1, !dbg !1158
  %82 = icmp eq i8 %81, 0, !dbg !1158
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !590), !dbg !1117
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1160
  br label %84, !dbg !1160

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1058, metadata !590), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1056, metadata !590), !dbg !1117
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1046, metadata !590), !dbg !1108
  %87 = and i8 %86, 1, !dbg !1161
  %88 = icmp eq i8 %87, 0, !dbg !1161
  br i1 %88, label %89, label %94, !dbg !1163

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1164
  br i1 %90, label %94, label %91, !dbg !1167

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1164, !tbaa !680
  br label %94, !dbg !1164

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1058, metadata !590), !dbg !1120
  br label %94, !dbg !1168

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1169
  unreachable, !dbg !1169

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1058, metadata !590), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1056, metadata !590), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1055, metadata !590), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1054, metadata !590), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1050, metadata !590), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1049, metadata !590), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1046, metadata !590), !dbg !1108
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1051, metadata !590), !dbg !1170
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
  br label %122, !dbg !1171

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1061, metadata !590), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1060, metadata !590), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1045, metadata !590), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1053, metadata !590), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1051, metadata !590), !dbg !1170
  %131 = icmp eq i64 %126, -1, !dbg !1172
  br i1 %131, label %134, label %132, !dbg !1173

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1174
  br i1 %133, label %590, label %138, !dbg !1175

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1176
  %136 = load i8, i8* %135, align 1, !dbg !1176, !tbaa !680
  %137 = icmp eq i8 %136, 0, !dbg !1177
  br i1 %137, label %590, label %138, !dbg !1175

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1067, metadata !590), !dbg !1178
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1068, metadata !590), !dbg !1179
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1069, metadata !590), !dbg !1180
  br i1 %108, label %139, label %154, !dbg !1181

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1183
  %141 = and i1 %109, %131, !dbg !1184
  br i1 %141, label %142, label %144, !dbg !1184

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1045, metadata !590), !dbg !1107
  br label %144, !dbg !1186

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1045, metadata !590), !dbg !1107
  %146 = icmp ugt i64 %140, %145, !dbg !1187
  br i1 %146, label %154, label %147, !dbg !1188

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1189
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1190
  %150 = icmp ne i32 %149, 0, !dbg !1191
  %151 = or i1 %150, %111, !dbg !1192
  %152 = xor i1 %150, true, !dbg !1192
  %153 = zext i1 %152 to i8, !dbg !1192
  br i1 %151, label %154, label %635, !dbg !1192

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1067, metadata !590), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1045, metadata !590), !dbg !1107
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1193
  %158 = load i8, i8* %157, align 1, !dbg !1193, !tbaa !680
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1062, metadata !590), !dbg !1194
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
  ], !dbg !1195

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1196

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1197

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1068, metadata !590), !dbg !1179
  %162 = and i8 %127, 1, !dbg !1201
  %163 = icmp eq i8 %162, 0, !dbg !1201
  %164 = and i1 %113, %163, !dbg !1201
  br i1 %164, label %165, label %181, !dbg !1201

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1203
  br i1 %166, label %167, label %169, !dbg !1207

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1203
  store i8 39, i8* %168, align 1, !dbg !1203, !tbaa !680
  br label %169, !dbg !1203

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1207
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1052, metadata !590), !dbg !1113
  %171 = icmp ult i64 %170, %130, !dbg !1208
  br i1 %171, label %172, label %174, !dbg !1211

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1208
  store i8 36, i8* %173, align 1, !dbg !1208, !tbaa !680
  br label %174, !dbg !1208

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1211
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1052, metadata !590), !dbg !1113
  %176 = icmp ult i64 %175, %130, !dbg !1212
  br i1 %176, label %177, label %179, !dbg !1215

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1212
  store i8 39, i8* %178, align 1, !dbg !1212, !tbaa !680
  br label %179, !dbg !1212

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1059, metadata !590), !dbg !1121
  br label %181, !dbg !1216

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1052, metadata !590), !dbg !1113
  %184 = icmp ult i64 %182, %130, !dbg !1217
  br i1 %184, label %185, label %187, !dbg !1220

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1217
  store i8 92, i8* %186, align 1, !dbg !1217, !tbaa !680
  br label %187, !dbg !1217

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1052, metadata !590), !dbg !1113
  br i1 %105, label %189, label %470, !dbg !1221

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1223
  %191 = icmp ult i64 %190, %155, !dbg !1224
  br i1 %191, label %192, label %470, !dbg !1225

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1226
  %194 = load i8, i8* %193, align 1, !dbg !1226, !tbaa !680
  %195 = add i8 %194, -48, !dbg !1227
  %196 = icmp ult i8 %195, 10, !dbg !1227
  br i1 %196, label %197, label %470, !dbg !1227

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1228
  br i1 %198, label %199, label %201, !dbg !1232

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1228
  store i8 48, i8* %200, align 1, !dbg !1228, !tbaa !680
  br label %201, !dbg !1228

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1052, metadata !590), !dbg !1113
  %203 = icmp ult i64 %202, %130, !dbg !1233
  br i1 %203, label %204, label %206, !dbg !1236

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1233
  store i8 48, i8* %205, align 1, !dbg !1233, !tbaa !680
  br label %206, !dbg !1233

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1052, metadata !590), !dbg !1113
  br label %470, !dbg !1237

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1238

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1239

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1240

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1242

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1244
  %214 = icmp ult i64 %213, %155, !dbg !1245
  br i1 %214, label %215, label %470, !dbg !1246

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1247
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1248
  %218 = load i8, i8* %217, align 1, !dbg !1248, !tbaa !680
  %219 = icmp eq i8 %218, 63, !dbg !1249
  br i1 %219, label %220, label %470, !dbg !1250

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1251
  %222 = load i8, i8* %221, align 1, !dbg !1251, !tbaa !680
  %223 = sext i8 %222 to i32, !dbg !1251
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
  ], !dbg !1252

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1253

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1062, metadata !590), !dbg !1194
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1051, metadata !590), !dbg !1170
  %226 = icmp ult i64 %124, %130, !dbg !1255
  br i1 %226, label %227, label %229, !dbg !1258

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1255
  store i8 63, i8* %228, align 1, !dbg !1255, !tbaa !680
  br label %229, !dbg !1255

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1052, metadata !590), !dbg !1113
  %231 = icmp ult i64 %230, %130, !dbg !1259
  br i1 %231, label %232, label %234, !dbg !1262

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1259
  store i8 34, i8* %233, align 1, !dbg !1259, !tbaa !680
  br label %234, !dbg !1259

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1052, metadata !590), !dbg !1113
  %236 = icmp ult i64 %235, %130, !dbg !1263
  br i1 %236, label %237, label %239, !dbg !1266

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1263
  store i8 34, i8* %238, align 1, !dbg !1263, !tbaa !680
  br label %239, !dbg !1263

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1052, metadata !590), !dbg !1113
  %241 = icmp ult i64 %240, %130, !dbg !1267
  br i1 %241, label %242, label %244, !dbg !1270

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1267
  store i8 63, i8* %243, align 1, !dbg !1267, !tbaa !680
  br label %244, !dbg !1267

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1052, metadata !590), !dbg !1113
  br label %470, !dbg !1271

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1066, metadata !590), !dbg !1272
  br label %256, !dbg !1273

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1066, metadata !590), !dbg !1272
  br label %256, !dbg !1274

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1066, metadata !590), !dbg !1272
  br label %254, !dbg !1275

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1066, metadata !590), !dbg !1272
  br label %254, !dbg !1276

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1066, metadata !590), !dbg !1272
  br label %256, !dbg !1277

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1066, metadata !590), !dbg !1272
  br i1 %113, label %252, label %253, !dbg !1278

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1279

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1282

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1066, metadata !590), !dbg !1272
  br i1 %117, label %256, label %635, !dbg !1284

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1066, metadata !590), !dbg !1272
  br i1 %104, label %497, label %470, !dbg !1286

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1287
  br i1 %259, label %260, label %265, !dbg !1289

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1290, !tbaa !680
  %262 = icmp ne i8 %261, 0, !dbg !1291
  %263 = icmp ne i64 %123, 0, !dbg !1292
  %264 = or i1 %263, %262, !dbg !1294
  br i1 %264, label %470, label %271, !dbg !1294

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1295
  %267 = icmp ne i64 %123, 0, !dbg !1292
  %268 = or i1 %267, %266, !dbg !1289
  br i1 %268, label %470, label %271, !dbg !1289

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1292
  br i1 %270, label %271, label %470, !dbg !1296

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1069, metadata !590), !dbg !1180
  br label %272, !dbg !1297

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1069, metadata !590), !dbg !1180
  br i1 %117, label %470, label %635, !dbg !1298

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1060, metadata !590), !dbg !1122
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1069, metadata !590), !dbg !1180
  br i1 %113, label %275, label %470, !dbg !1300

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1301

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1304
  %278 = icmp ne i64 %125, 0, !dbg !1306
  %279 = or i1 %278, %277, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1053, metadata !590), !dbg !1114
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1043, metadata !590), !dbg !1105
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1307
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1053, metadata !590), !dbg !1114
  %282 = icmp ult i64 %124, %281, !dbg !1308
  br i1 %282, label %283, label %285, !dbg !1311

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1308
  store i8 39, i8* %284, align 1, !dbg !1308, !tbaa !680
  br label %285, !dbg !1308

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1052, metadata !590), !dbg !1113
  %287 = icmp ult i64 %286, %281, !dbg !1312
  br i1 %287, label %288, label %290, !dbg !1315

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1312
  store i8 92, i8* %289, align 1, !dbg !1312, !tbaa !680
  br label %290, !dbg !1312

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1052, metadata !590), !dbg !1113
  %292 = icmp ult i64 %291, %281, !dbg !1316
  br i1 %292, label %293, label %295, !dbg !1319

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1316
  store i8 39, i8* %294, align 1, !dbg !1316, !tbaa !680
  br label %295, !dbg !1316

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1059, metadata !590), !dbg !1121
  br label %470, !dbg !1320

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1321

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1070, metadata !590), !dbg !1322
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1323
  %300 = load i16*, i16** %299, align 8, !dbg !1323, !tbaa !597
  %301 = zext i8 %158 to i64, !dbg !1323
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1323
  %303 = load i16, i16* %302, align 2, !dbg !1323, !tbaa !1325
  %304 = lshr i16 %303, 14, !dbg !1326
  %305 = trunc i16 %304 to i8, !dbg !1326
  %306 = and i8 %305, 1, !dbg !1326
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1073, metadata !590), !dbg !1327
  br label %362, !dbg !1328

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1329
  store i64 0, i64* %10, align 8, !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1070, metadata !590), !dbg !1322
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1073, metadata !590), !dbg !1327
  %308 = icmp eq i64 %155, -1, !dbg !1331
  br i1 %308, label %309, label %311, !dbg !1333

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1045, metadata !590), !dbg !1107
  br label %311, !dbg !1335

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1045, metadata !590), !dbg !1107
  br label %313, !dbg !1336, !llvm.loop !1337

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1073, metadata !590), !dbg !1327
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1070, metadata !590), !dbg !1322
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1339
  %316 = add i64 %314, %123, !dbg !1340
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1341
  %318 = sub i64 %312, %316, !dbg !1342
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1074, metadata !590), !dbg !1343
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1090, metadata !590), !dbg !1344
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1093, metadata !590), !dbg !1346
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1347

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1073, metadata !590), !dbg !1327
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1070, metadata !590), !dbg !1322
  %321 = icmp ugt i64 %312, %316, !dbg !1348
  br i1 %321, label %322, label %347, !dbg !1350

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1351

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1070, metadata !590), !dbg !1322
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1351
  %327 = load i8, i8* %326, align 1, !dbg !1351, !tbaa !680
  %328 = icmp eq i8 %327, 0, !dbg !1350
  br i1 %328, label %347, label %329, !dbg !1352

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1070, metadata !590), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1070, metadata !590), !dbg !1322
  %331 = add i64 %330, %123, !dbg !1354
  %332 = icmp ult i64 %331, %312, !dbg !1348
  br i1 %332, label %323, label %347, !dbg !1350, !llvm.loop !1355

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1356
  %335 = and i1 %115, %334, !dbg !1359
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1094, metadata !590), !dbg !1360
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1094, metadata !590), !dbg !1360
  br i1 %335, label %336, label %350, !dbg !1359

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1361

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1094, metadata !590), !dbg !1360
  %339 = add i64 %338, %316, !dbg !1361
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1362
  %341 = load i8, i8* %340, align 1, !dbg !1362, !tbaa !680
  %342 = sext i8 %341 to i32, !dbg !1362
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1363

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1094, metadata !590), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1094, metadata !590), !dbg !1360
  %345 = icmp ult i64 %344, %319, !dbg !1356
  br i1 %345, label %337, label %350, !dbg !1365, !llvm.loop !1366

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1368

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1073, metadata !590), !dbg !1327
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1070, metadata !590), !dbg !1322
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1368
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1369, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1090, metadata !590), !dbg !1344
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !1371
  %353 = icmp eq i32 %352, 0, !dbg !1371
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1073, metadata !590), !dbg !1327
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1372
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1073, metadata !590), !dbg !1327
  %355 = add i64 %319, %314, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1070, metadata !590), !dbg !1322
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1073, metadata !590), !dbg !1327
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1070, metadata !590), !dbg !1322
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1074, metadata !590), !dbg !1343
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1374
  %357 = icmp eq i32 %356, 0, !dbg !1375
  br i1 %357, label %313, label %358, !dbg !1376, !llvm.loop !1337

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1377
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1073, metadata !590), !dbg !1327
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1070, metadata !590), !dbg !1322
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1368
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1377
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1073, metadata !590), !dbg !1327
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1070, metadata !590), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1045, metadata !590), !dbg !1107
  %366 = and i8 %365, 1, !dbg !1378
  %367 = icmp ne i8 %366, 0, !dbg !1378
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1069, metadata !590), !dbg !1180
  %368 = icmp ult i64 %364, 2, !dbg !1379
  %369 = or i1 %367, %112, !dbg !1380
  %370 = and i1 %368, %369, !dbg !1381
  br i1 %370, label %470, label %371, !dbg !1381

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1101, metadata !590), !dbg !1383
  br label %373, !dbg !1384

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1068, metadata !590), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1067, metadata !590), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1062, metadata !590), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1051, metadata !590), !dbg !1170
  br i1 %369, label %426, label %380, !dbg !1385

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1390

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1068, metadata !590), !dbg !1179
  %382 = and i8 %376, 1, !dbg !1393
  %383 = icmp eq i8 %382, 0, !dbg !1393
  %384 = and i1 %113, %383, !dbg !1393
  br i1 %384, label %385, label %401, !dbg !1393

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1395
  br i1 %386, label %387, label %389, !dbg !1399

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1395
  store i8 39, i8* %388, align 1, !dbg !1395, !tbaa !680
  br label %389, !dbg !1395

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1052, metadata !590), !dbg !1113
  %391 = icmp ult i64 %390, %130, !dbg !1400
  br i1 %391, label %392, label %394, !dbg !1403

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1400
  store i8 36, i8* %393, align 1, !dbg !1400, !tbaa !680
  br label %394, !dbg !1400

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1052, metadata !590), !dbg !1113
  %396 = icmp ult i64 %395, %130, !dbg !1404
  br i1 %396, label %397, label %399, !dbg !1407

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1404
  store i8 39, i8* %398, align 1, !dbg !1404, !tbaa !680
  br label %399, !dbg !1404

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1059, metadata !590), !dbg !1121
  br label %401, !dbg !1408

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1052, metadata !590), !dbg !1113
  %404 = icmp ult i64 %402, %130, !dbg !1409
  br i1 %404, label %405, label %407, !dbg !1412

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1409
  store i8 92, i8* %406, align 1, !dbg !1409, !tbaa !680
  br label %407, !dbg !1409

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1052, metadata !590), !dbg !1113
  %409 = icmp ult i64 %408, %130, !dbg !1413
  br i1 %409, label %410, label %414, !dbg !1416

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1413
  %412 = or i8 %411, 48, !dbg !1413
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1413
  store i8 %412, i8* %413, align 1, !dbg !1413, !tbaa !680
  br label %414, !dbg !1413

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1052, metadata !590), !dbg !1113
  %416 = icmp ult i64 %415, %130, !dbg !1417
  br i1 %416, label %417, label %422, !dbg !1420

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1417
  %419 = and i8 %418, 7, !dbg !1417
  %420 = or i8 %419, 48, !dbg !1417
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1417
  store i8 %420, i8* %421, align 1, !dbg !1417, !tbaa !680
  br label %422, !dbg !1417

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1052, metadata !590), !dbg !1113
  %424 = and i8 %377, 7, !dbg !1421
  %425 = or i8 %424, 48, !dbg !1422
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1062, metadata !590), !dbg !1194
  br label %435, !dbg !1423

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1424
  %428 = icmp eq i8 %427, 0, !dbg !1424
  br i1 %428, label %435, label %429, !dbg !1426

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1427
  br i1 %430, label %431, label %433, !dbg !1431

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1427
  store i8 92, i8* %432, align 1, !dbg !1427, !tbaa !680
  br label %433, !dbg !1427

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1067, metadata !590), !dbg !1178
  br label %435, !dbg !1432

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1068, metadata !590), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1067, metadata !590), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1062, metadata !590), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1052, metadata !590), !dbg !1113
  %441 = add i64 %374, 1, !dbg !1433
  %442 = icmp ugt i64 %372, %441, !dbg !1435
  br i1 %442, label %443, label %535, !dbg !1436

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1437
  %445 = icmp ne i8 %444, 0, !dbg !1437
  %446 = and i8 %440, 1, !dbg !1437
  %447 = icmp eq i8 %446, 0, !dbg !1437
  %448 = and i1 %445, %447, !dbg !1437
  br i1 %448, label %449, label %460, !dbg !1437

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1440
  br i1 %450, label %451, label %453, !dbg !1444

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1440
  store i8 39, i8* %452, align 1, !dbg !1440, !tbaa !680
  br label %453, !dbg !1440

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1052, metadata !590), !dbg !1113
  %455 = icmp ult i64 %454, %130, !dbg !1445
  br i1 %455, label %456, label %458, !dbg !1448

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1445
  store i8 39, i8* %457, align 1, !dbg !1445, !tbaa !680
  br label %458, !dbg !1445

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1059, metadata !590), !dbg !1121
  br label %460, !dbg !1449

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1052, metadata !590), !dbg !1113
  %463 = icmp ult i64 %461, %130, !dbg !1450
  br i1 %463, label %464, label %466, !dbg !1453

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1450
  store i8 %438, i8* %465, align 1, !dbg !1450, !tbaa !680
  br label %466, !dbg !1450

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1051, metadata !590), !dbg !1170
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1454
  %469 = load i8, i8* %468, align 1, !dbg !1454, !tbaa !680
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1062, metadata !590), !dbg !1194
  br label %373, !dbg !1455, !llvm.loop !1456

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1069, metadata !590), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1068, metadata !590), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1067, metadata !590), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1062, metadata !590), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1060, metadata !590), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1045, metadata !590), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1053, metadata !590), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1051, metadata !590), !dbg !1170
  br i1 %106, label %482, label %481, !dbg !1459

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1461

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1462

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1463
  %485 = zext i8 %484 to i64, !dbg !1463
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1464
  %487 = load i32, i32* %486, align 4, !dbg !1464, !tbaa !645
  %488 = and i8 %477, 31, !dbg !1465
  %489 = zext i8 %488 to i32, !dbg !1466
  %490 = shl i32 1, %489, !dbg !1467
  %491 = and i32 %487, %490, !dbg !1467
  %492 = icmp eq i32 %491, 0, !dbg !1467
  %493 = icmp eq i8 %156, 0, !dbg !1468
  %494 = and i1 %493, %492, !dbg !1469
  br i1 %494, label %535, label %497, !dbg !1469

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1468
  br i1 %496, label %535, label %497, !dbg !1470

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1069, metadata !590), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1062, metadata !590), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1060, metadata !590), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1045, metadata !590), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1053, metadata !590), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1051, metadata !590), !dbg !1170
  br i1 %111, label %507, label %635, !dbg !1471

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1068, metadata !590), !dbg !1179
  %508 = and i8 %502, 1, !dbg !1473
  %509 = icmp eq i8 %508, 0, !dbg !1473
  %510 = and i1 %113, %509, !dbg !1473
  br i1 %510, label %511, label %527, !dbg !1473

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1475
  br i1 %512, label %513, label %515, !dbg !1479

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1475
  store i8 39, i8* %514, align 1, !dbg !1475, !tbaa !680
  br label %515, !dbg !1475

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1052, metadata !590), !dbg !1113
  %517 = icmp ult i64 %516, %506, !dbg !1480
  br i1 %517, label %518, label %520, !dbg !1483

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1480
  store i8 36, i8* %519, align 1, !dbg !1480, !tbaa !680
  br label %520, !dbg !1480

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1052, metadata !590), !dbg !1113
  %522 = icmp ult i64 %521, %506, !dbg !1484
  br i1 %522, label %523, label %525, !dbg !1487

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1484
  store i8 39, i8* %524, align 1, !dbg !1484, !tbaa !680
  br label %525, !dbg !1484

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1059, metadata !590), !dbg !1121
  br label %527, !dbg !1488

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1052, metadata !590), !dbg !1113
  %530 = icmp ult i64 %528, %506, !dbg !1489
  br i1 %530, label %531, label %533, !dbg !1492

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1489
  store i8 92, i8* %532, align 1, !dbg !1489, !tbaa !680
  br label %533, !dbg !1489

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1069, metadata !590), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1068, metadata !590), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1062, metadata !590), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1060, metadata !590), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1045, metadata !590), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1053, metadata !590), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1051, metadata !590), !dbg !1170
  br label %562, !dbg !1493

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1069, metadata !590), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1068, metadata !590), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1062, metadata !590), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1060, metadata !590), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1045, metadata !590), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1053, metadata !590), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1051, metadata !590), !dbg !1170
  %546 = and i8 %540, 1, !dbg !1493
  %547 = icmp ne i8 %546, 0, !dbg !1493
  %548 = and i8 %543, 1, !dbg !1493
  %549 = icmp eq i8 %548, 0, !dbg !1493
  %550 = and i1 %547, %549, !dbg !1493
  br i1 %550, label %551, label %562, !dbg !1493

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1496
  br i1 %552, label %553, label %555, !dbg !1500

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1496
  store i8 39, i8* %554, align 1, !dbg !1496, !tbaa !680
  br label %555, !dbg !1496

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1052, metadata !590), !dbg !1113
  %557 = icmp ult i64 %556, %545, !dbg !1501
  br i1 %557, label %558, label %560, !dbg !1504

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1501
  store i8 39, i8* %559, align 1, !dbg !1501, !tbaa !680
  br label %560, !dbg !1501

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1059, metadata !590), !dbg !1121
  br label %562, !dbg !1505

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1052, metadata !590), !dbg !1113
  %572 = icmp ult i64 %570, %563, !dbg !1506
  br i1 %572, label %573, label %575, !dbg !1509

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1506
  store i8 %565, i8* %574, align 1, !dbg !1506, !tbaa !680
  br label %575, !dbg !1506

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1052, metadata !590), !dbg !1113
  %577 = and i8 %564, 1, !dbg !1510
  %578 = icmp eq i8 %577, 0, !dbg !1510
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1061, metadata !590), !dbg !1123
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1512
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1061, metadata !590), !dbg !1123
  br label %580, !dbg !1513

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1061, metadata !590), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1060, metadata !590), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1059, metadata !590), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1045, metadata !590), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1053, metadata !590), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1051, metadata !590), !dbg !1170
  %589 = add i64 %581, 1, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1051, metadata !590), !dbg !1170
  br label %122, !dbg !1515, !llvm.loop !1516

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1518
  %593 = and i1 %113, %592, !dbg !1520
  %594 = xor i1 %593, true, !dbg !1520
  %595 = or i1 %111, %594, !dbg !1520
  br i1 %595, label %596, label %635, !dbg !1520

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1521
  %598 = xor i1 %597, true, !dbg !1521
  %599 = and i8 %128, 1, !dbg !1523
  %600 = icmp eq i8 %599, 0, !dbg !1523
  %601 = or i1 %600, %598, !dbg !1521
  br i1 %601, label %611, label %602, !dbg !1521

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1524
  %604 = icmp eq i8 %603, 0, !dbg !1524
  br i1 %604, label %607, label %605, !dbg !1527

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1528
  br label %645, !dbg !1529

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1530
  %609 = icmp ne i64 %125, 0, !dbg !1532
  %610 = and i1 %609, %608, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1052, metadata !590), !dbg !1113
  br i1 %610, label %27, label %611, !dbg !1533

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1534
  %613 = and i1 %612, %111, !dbg !1536
  br i1 %613, label %614, label %630, !dbg !1536

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1054, metadata !590), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1052, metadata !590), !dbg !1113
  %615 = load i8, i8* %99, align 1, !dbg !1537, !tbaa !680
  %616 = icmp eq i8 %615, 0, !dbg !1540
  br i1 %616, label %630, label %617, !dbg !1540

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1541

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1052, metadata !590), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1054, metadata !590), !dbg !1115
  %622 = icmp ult i64 %621, %130, !dbg !1541
  br i1 %622, label %623, label %625, !dbg !1544

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1541
  store i8 %619, i8* %624, align 1, !dbg !1541, !tbaa !680
  br label %625, !dbg !1541

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1052, metadata !590), !dbg !1113
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1054, metadata !590), !dbg !1115
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1054, metadata !590), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1052, metadata !590), !dbg !1113
  %628 = load i8, i8* %627, align 1, !dbg !1537, !tbaa !680
  %629 = icmp eq i8 %628, 0, !dbg !1540
  br i1 %629, label %630, label %618, !dbg !1540, !llvm.loop !1546

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1052, metadata !590), !dbg !1113
  %632 = icmp ult i64 %631, %130, !dbg !1548
  br i1 %632, label %633, label %645, !dbg !1550

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1551
  store i8 0, i8* %634, align 1, !dbg !1552, !tbaa !680
  br label %645, !dbg !1551

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1043, metadata !590), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1045, metadata !590), !dbg !1107
  %639 = icmp ne i32 %636, 2, !dbg !1553
  %640 = icmp eq i8 %103, 0, !dbg !1555
  %641 = or i1 %639, %640, !dbg !1556
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1046, metadata !590), !dbg !1108
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1556
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1046, metadata !590), !dbg !1108
  %643 = and i32 %5, -3, !dbg !1557
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1558
  br label %645, !dbg !1559

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1560
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1561 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1565, metadata !590), !dbg !1569
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1566, metadata !590), !dbg !1570
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !1571
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1567, metadata !590), !dbg !1572
  %4 = icmp eq i8* %3, %0, !dbg !1573
  br i1 %4, label %5, label %75, !dbg !1575

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !1576
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1568, metadata !590), !dbg !1577
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1578, metadata !590), !dbg !1594
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1592, metadata !590), !dbg !1597
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1593, metadata !590), !dbg !1598
  %7 = load i8, i8* %6, align 1, !dbg !1599, !tbaa !680
  %8 = sext i8 %7 to i32, !dbg !1599
  %9 = and i32 %8, -33, !dbg !1599
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1599

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1601, metadata !590), !dbg !1615
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1613, metadata !590), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1614, metadata !590), !dbg !1620
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1621
  %12 = load i8, i8* %11, align 1, !dbg !1621, !tbaa !680
  %13 = sext i8 %12 to i32, !dbg !1621
  %14 = and i32 %13, -33, !dbg !1621
  %15 = icmp eq i32 %14, 84, !dbg !1621
  br i1 %15, label %16, label %72, !dbg !1621

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1623, metadata !590), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1634, metadata !590), !dbg !1640
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1635, metadata !590), !dbg !1641
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1642
  %18 = load i8, i8* %17, align 1, !dbg !1642, !tbaa !680
  %19 = sext i8 %18 to i32, !dbg !1642
  %20 = and i32 %19, -33, !dbg !1642
  %21 = icmp eq i32 %20, 70, !dbg !1642
  br i1 %21, label %22, label %72, !dbg !1642

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1644, metadata !590), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !590), !dbg !1660
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1655, metadata !590), !dbg !1661
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1662
  %24 = load i8, i8* %23, align 1, !dbg !1662, !tbaa !680
  %25 = icmp eq i8 %24, 45, !dbg !1662
  br i1 %25, label %26, label %72, !dbg !1664

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1665, metadata !590), !dbg !1676
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1674, metadata !590), !dbg !1680
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1675, metadata !590), !dbg !1681
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1682
  %28 = load i8, i8* %27, align 1, !dbg !1682, !tbaa !680
  %29 = icmp eq i8 %28, 56, !dbg !1682
  br i1 %29, label %30, label %72, !dbg !1684

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1685, metadata !590), !dbg !1695
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1693, metadata !590), !dbg !1699
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1694, metadata !590), !dbg !1700
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1701
  %32 = load i8, i8* %31, align 1, !dbg !1701, !tbaa !680
  %33 = icmp eq i8 %32, 0, !dbg !1701
  br i1 %33, label %34, label %72, !dbg !1703

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1704, !tbaa !680
  %36 = icmp eq i8 %35, 96, !dbg !1705
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.50, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.51, i64 0, i64 0), !dbg !1704
  br label %75, !dbg !1706

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1601, metadata !590), !dbg !1707
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1613, metadata !590), !dbg !1711
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1614, metadata !590), !dbg !1712
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1713
  %40 = load i8, i8* %39, align 1, !dbg !1713, !tbaa !680
  %41 = sext i8 %40 to i32, !dbg !1713
  %42 = and i32 %41, -33, !dbg !1713
  %43 = icmp eq i32 %42, 66, !dbg !1713
  br i1 %43, label %44, label %72, !dbg !1713

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1623, metadata !590), !dbg !1714
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1634, metadata !590), !dbg !1716
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1635, metadata !590), !dbg !1717
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1718
  %46 = load i8, i8* %45, align 1, !dbg !1718, !tbaa !680
  %47 = icmp eq i8 %46, 49, !dbg !1718
  br i1 %47, label %48, label %72, !dbg !1719

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1644, metadata !590), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !590), !dbg !1722
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1655, metadata !590), !dbg !1723
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1724
  %50 = load i8, i8* %49, align 1, !dbg !1724, !tbaa !680
  %51 = icmp eq i8 %50, 56, !dbg !1724
  br i1 %51, label %52, label %72, !dbg !1725

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1665, metadata !590), !dbg !1726
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1674, metadata !590), !dbg !1728
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1675, metadata !590), !dbg !1729
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1730
  %54 = load i8, i8* %53, align 1, !dbg !1730, !tbaa !680
  %55 = icmp eq i8 %54, 48, !dbg !1730
  br i1 %55, label %56, label %72, !dbg !1731

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1685, metadata !590), !dbg !1732
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1693, metadata !590), !dbg !1734
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1694, metadata !590), !dbg !1735
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1736
  %58 = load i8, i8* %57, align 1, !dbg !1736, !tbaa !680
  %59 = icmp eq i8 %58, 51, !dbg !1736
  br i1 %59, label %60, label %72, !dbg !1737

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1738, metadata !590), !dbg !1747
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1745, metadata !590), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1746, metadata !590), !dbg !1752
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1753
  %62 = load i8, i8* %61, align 1, !dbg !1753, !tbaa !680
  %63 = icmp eq i8 %62, 48, !dbg !1753
  br i1 %63, label %64, label %72, !dbg !1755

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1756, metadata !590), !dbg !1764
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1762, metadata !590), !dbg !1768
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1763, metadata !590), !dbg !1769
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1770
  %66 = load i8, i8* %65, align 1, !dbg !1770, !tbaa !680
  %67 = icmp eq i8 %66, 0, !dbg !1770
  br i1 %67, label %68, label %72, !dbg !1772

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1773, !tbaa !680
  %70 = icmp eq i8 %69, 96, !dbg !1774
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1773
  br label %75, !dbg !1775

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1776
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), !dbg !1777
  br label %75, !dbg !1778

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1779
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #10

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #10

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1780 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1784, metadata !590), !dbg !1787
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1785, metadata !590), !dbg !1788
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1786, metadata !590), !dbg !1789
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1790, metadata !590) #12, !dbg !1803
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1795, metadata !590) #12, !dbg !1805
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1796, metadata !590) #12, !dbg !1806
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1797, metadata !590) #12, !dbg !1807
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1808
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1808
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1798, metadata !590) #12, !dbg !1809
  %6 = tail call i32* @__errno_location() #17, !dbg !1810
  %7 = load i32, i32* %6, align 4, !dbg !1810, !tbaa !645
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1799, metadata !590) #12, !dbg !1811
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1812
  %9 = load i32, i32* %8, align 4, !dbg !1812, !tbaa !975
  %10 = or i32 %9, 1, !dbg !1813
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1800, metadata !590) #12, !dbg !1814
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1815
  %12 = load i32, i32* %11, align 8, !dbg !1815, !tbaa !915
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1816
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1817
  %15 = load i8*, i8** %14, align 8, !dbg !1817, !tbaa !1001
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1818
  %17 = load i8*, i8** %16, align 8, !dbg !1818, !tbaa !1004
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !1819
  %19 = add i64 %18, 1, !dbg !1820
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1801, metadata !590) #12, !dbg !1821
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1822, metadata !590) #12, !dbg !1827
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !1829
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1802, metadata !590) #12, !dbg !1830
  %21 = load i32, i32* %11, align 8, !dbg !1831, !tbaa !915
  %22 = load i8*, i8** %14, align 8, !dbg !1832, !tbaa !1001
  %23 = load i8*, i8** %16, align 8, !dbg !1833, !tbaa !1004
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !1834
  store i32 %7, i32* %6, align 4, !dbg !1835, !tbaa !645
  ret i8* %20, !dbg !1836
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1791 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1790, metadata !590), !dbg !1837
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1795, metadata !590), !dbg !1838
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1796, metadata !590), !dbg !1839
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1797, metadata !590), !dbg !1840
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1841
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1841
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1798, metadata !590), !dbg !1842
  %7 = tail call i32* @__errno_location() #17, !dbg !1843
  %8 = load i32, i32* %7, align 4, !dbg !1843, !tbaa !645
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1799, metadata !590), !dbg !1844
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1845
  %10 = load i32, i32* %9, align 4, !dbg !1845, !tbaa !975
  %11 = icmp ne i64* %2, null, !dbg !1846
  %12 = xor i1 %11, true, !dbg !1846
  %13 = zext i1 %12 to i32, !dbg !1846
  %14 = or i32 %10, %13, !dbg !1847
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1800, metadata !590), !dbg !1848
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1849
  %16 = load i32, i32* %15, align 8, !dbg !1849, !tbaa !915
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1850
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1851
  %19 = load i8*, i8** %18, align 8, !dbg !1851, !tbaa !1001
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1852
  %21 = load i8*, i8** %20, align 8, !dbg !1852, !tbaa !1004
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1853
  %23 = add i64 %22, 1, !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1801, metadata !590), !dbg !1855
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1822, metadata !590) #12, !dbg !1856
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !1858
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1802, metadata !590), !dbg !1859
  %25 = load i32, i32* %15, align 8, !dbg !1860, !tbaa !915
  %26 = load i8*, i8** %18, align 8, !dbg !1861, !tbaa !1001
  %27 = load i8*, i8** %20, align 8, !dbg !1862, !tbaa !1004
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1863
  store i32 %8, i32* %7, align 4, !dbg !1864, !tbaa !645
  br i1 %11, label %29, label %30, !dbg !1865

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1866, !tbaa !1868
  br label %30, !dbg !1869

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1870
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1871 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1875, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1873, metadata !590), !dbg !1876
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1874, metadata !590), !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1874, metadata !590), !dbg !1877
  %2 = load i32, i32* @nslots, align 4, !dbg !1878, !tbaa !645
  %3 = icmp sgt i32 %2, 1, !dbg !1881
  br i1 %3, label %4, label %13, !dbg !1882

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1883

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1874, metadata !590), !dbg !1877
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1883
  %8 = load i8*, i8** %7, align 8, !dbg !1883, !tbaa !1884
  tail call void @free(i8* %8) #12, !dbg !1886
  %9 = add nuw i64 %6, 1, !dbg !1887
  %10 = load i32, i32* @nslots, align 4, !dbg !1878, !tbaa !645
  %11 = sext i32 %10 to i64, !dbg !1881
  %12 = icmp slt i64 %9, %11, !dbg !1881
  br i1 %12, label %5, label %13, !dbg !1882, !llvm.loop !1888

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1890
  %15 = load i8*, i8** %14, align 8, !dbg !1890, !tbaa !1884
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1892
  br i1 %16, label %18, label %17, !dbg !1893

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !1894
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1896, !tbaa !1897
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1898, !tbaa !1884
  br label %18, !dbg !1899

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1900
  br i1 %19, label %22, label %20, !dbg !1902

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1903
  tail call void @free(i8* %21) #12, !dbg !1905
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1906, !tbaa !597
  br label %22, !dbg !1907

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1908, !tbaa !645
  ret void, !dbg !1909
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1910 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1914, metadata !590), !dbg !1916
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1915, metadata !590), !dbg !1917
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1918
  ret i8* %3, !dbg !1919
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1920 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1924, metadata !590), !dbg !1938
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1925, metadata !590), !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1926, metadata !590), !dbg !1940
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1927, metadata !590), !dbg !1941
  %5 = tail call i32* @__errno_location() #17, !dbg !1942
  %6 = load i32, i32* %5, align 4, !dbg !1942, !tbaa !645
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1928, metadata !590), !dbg !1943
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1944, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1929, metadata !590), !dbg !1945
  %8 = icmp slt i32 %0, 0, !dbg !1946
  br i1 %8, label %9, label %10, !dbg !1948

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1949
  unreachable, !dbg !1949

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1950, !tbaa !645
  %12 = icmp sgt i32 %11, %0, !dbg !1951
  br i1 %12, label %34, label %13, !dbg !1952

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1953
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1954
  br i1 %15, label %16, label %17, !dbg !1956

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1957
  unreachable, !dbg !1957

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1958
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1958
  %20 = add nsw i32 %0, 1, !dbg !1959
  %21 = sext i32 %20 to i64, !dbg !1960
  %22 = shl nsw i64 %21, 4, !dbg !1961
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !1962
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1962
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1929, metadata !590), !dbg !1945
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1963, !tbaa !597
  br i1 %14, label %25, label %26, !dbg !1964

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1965, !tbaa.struct !1967
  br label %26, !dbg !1968

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1969, !tbaa !645
  %28 = sext i32 %27 to i64, !dbg !1970
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1970
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1971
  %31 = sub nsw i32 %20, %27, !dbg !1972
  %32 = sext i32 %31 to i64, !dbg !1973
  %33 = shl nsw i64 %32, 4, !dbg !1974
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1971
  store i32 %20, i32* @nslots, align 4, !dbg !1975, !tbaa !645
  br label %34, !dbg !1976

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1929, metadata !590), !dbg !1945
  %36 = sext i32 %0 to i64, !dbg !1977
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1978
  %38 = load i64, i64* %37, align 8, !dbg !1978, !tbaa !1897
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1933, metadata !590), !dbg !1979
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1980
  %40 = load i8*, i8** %39, align 8, !dbg !1980, !tbaa !1884
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1935, metadata !590), !dbg !1981
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1982
  %42 = load i32, i32* %41, align 4, !dbg !1982, !tbaa !975
  %43 = or i32 %42, 1, !dbg !1983
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1936, metadata !590), !dbg !1984
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1985
  %45 = load i32, i32* %44, align 8, !dbg !1985, !tbaa !915
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1986
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1987
  %48 = load i8*, i8** %47, align 8, !dbg !1987, !tbaa !1001
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1988
  %50 = load i8*, i8** %49, align 8, !dbg !1988, !tbaa !1004
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1989
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1937, metadata !590), !dbg !1990
  %52 = icmp ugt i64 %38, %51, !dbg !1991
  br i1 %52, label %63, label %53, !dbg !1993

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1933, metadata !590), !dbg !1979
  store i64 %54, i64* %37, align 8, !dbg !1996, !tbaa !1897
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1997
  br i1 %55, label %57, label %56, !dbg !1999

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2000
  br label %57, !dbg !2000

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1822, metadata !590) #12, !dbg !2001
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2003
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1935, metadata !590), !dbg !1981
  store i8* %58, i8** %39, align 8, !dbg !2004, !tbaa !1884
  %59 = load i32, i32* %44, align 8, !dbg !2005, !tbaa !915
  %60 = load i8*, i8** %47, align 8, !dbg !2006, !tbaa !1001
  %61 = load i8*, i8** %49, align 8, !dbg !2007, !tbaa !1004
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2008
  br label %63, !dbg !2009

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1935, metadata !590), !dbg !1981
  store i32 %6, i32* %5, align 4, !dbg !2010, !tbaa !645
  ret i8* %64, !dbg !2011
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2012 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2016, metadata !590), !dbg !2019
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2017, metadata !590), !dbg !2020
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2018, metadata !590), !dbg !2021
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2022
  ret i8* %4, !dbg !2023
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2024 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2026, metadata !590), !dbg !2027
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1914, metadata !590) #12, !dbg !2028
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1915, metadata !590) #12, !dbg !2030
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2031
  ret i8* %2, !dbg !2032
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2033 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2037, metadata !590), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2038, metadata !590), !dbg !2040
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2016, metadata !590) #12, !dbg !2041
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2017, metadata !590) #12, !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2018, metadata !590) #12, !dbg !2044
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2045
  ret i8* %3, !dbg !2046
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2047 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2055, metadata !2061), !dbg !2062
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2051, metadata !590), !dbg !2064
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2052, metadata !590), !dbg !2065
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2053, metadata !590), !dbg !2066
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2067
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2054, metadata !590), !dbg !2068
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2060, metadata !590) #12, !dbg !2069
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2070
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2070
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2055, metadata !590) #12, !dbg !2062
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2055, metadata !2071) #12, !dbg !2062
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2062
  %8 = icmp eq i32 %1, 10, !dbg !2072
  br i1 %8, label %9, label %10, !dbg !2074

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2075, !noalias !2076
  unreachable, !dbg !2075

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2055, metadata !2071) #12, !dbg !2062
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2079
  store i32 %1, i32* %11, align 8, !dbg !2079, !alias.scope !2076
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2079
  %13 = bitcast i32* %12 to i8*, !dbg !2079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2079
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2080
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2054, metadata !590), !dbg !2068
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2081
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2082
  ret i8* %14, !dbg !2083
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2084 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2055, metadata !2061), !dbg !2093
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2088, metadata !590), !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2089, metadata !590), !dbg !2096
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2090, metadata !590), !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2091, metadata !590), !dbg !2098
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2099
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2099
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2092, metadata !590), !dbg !2100
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2060, metadata !590) #12, !dbg !2101
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2102
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2102
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2055, metadata !590) #12, !dbg !2093
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2055, metadata !2071) #12, !dbg !2093
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2093
  %9 = icmp eq i32 %1, 10, !dbg !2103
  br i1 %9, label %10, label %11, !dbg !2104

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2105, !noalias !2106
  unreachable, !dbg !2105

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2055, metadata !2071) #12, !dbg !2093
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2109
  store i32 %1, i32* %12, align 8, !dbg !2109, !alias.scope !2106
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2109
  %14 = bitcast i32* %13 to i8*, !dbg !2109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !2109
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2092, metadata !590), !dbg !2100
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2111
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2112
  ret i8* %15, !dbg !2113
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2114 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2055, metadata !2061), !dbg !2120
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2118, metadata !590), !dbg !2123
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2119, metadata !590), !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2051, metadata !590) #12, !dbg !2125
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2052, metadata !590) #12, !dbg !2126
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2053, metadata !590) #12, !dbg !2127
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2128
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2128
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2054, metadata !590) #12, !dbg !2129
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2060, metadata !590) #12, !dbg !2130
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2131
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2131
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2055, metadata !590) #12, !dbg !2120
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2055, metadata !2071) #12, !dbg !2120
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2120
  %7 = icmp eq i32 %0, 10, !dbg !2132
  br i1 %7, label %8, label %9, !dbg !2133

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2134, !noalias !2135
  unreachable, !dbg !2134

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2055, metadata !2071) #12, !dbg !2120
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2138
  store i32 %0, i32* %10, align 8, !dbg !2138, !alias.scope !2135
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2138
  %12 = bitcast i32* %11 to i8*, !dbg !2138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !2138
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2139
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2054, metadata !590) #12, !dbg !2129
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2140
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2141
  ret i8* %13, !dbg !2142
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2143 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2055, metadata !2061), !dbg !2150
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2147, metadata !590), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2148, metadata !590), !dbg !2154
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2149, metadata !590), !dbg !2155
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2088, metadata !590) #12, !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2089, metadata !590) #12, !dbg !2157
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2090, metadata !590) #12, !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2091, metadata !590) #12, !dbg !2159
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2160
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2160
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2092, metadata !590) #12, !dbg !2161
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2060, metadata !590) #12, !dbg !2162
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2163
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2163
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2055, metadata !590) #12, !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2055, metadata !2071) #12, !dbg !2150
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2150
  %8 = icmp eq i32 %0, 10, !dbg !2164
  br i1 %8, label %9, label %10, !dbg !2165

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2166, !noalias !2167
  unreachable, !dbg !2166

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2055, metadata !2071) #12, !dbg !2150
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2170
  store i32 %0, i32* %11, align 8, !dbg !2170, !alias.scope !2167
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2170
  %13 = bitcast i32* %12 to i8*, !dbg !2170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2170
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2171
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2092, metadata !590) #12, !dbg !2161
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2173
  ret i8* %14, !dbg !2174
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2175 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2179, metadata !590), !dbg !2183
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2180, metadata !590), !dbg !2184
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2181, metadata !590), !dbg !2185
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2186
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2187, !tbaa.struct !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2182, metadata !590), !dbg !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !934, metadata !590), !dbg !2190
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !935, metadata !590), !dbg !2192
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !936, metadata !590), !dbg !2193
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !937, metadata !590), !dbg !2194
  %6 = lshr i8 %2, 5, !dbg !2195
  %7 = zext i8 %6 to i64, !dbg !2195
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2196
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !938, metadata !590), !dbg !2197
  %9 = and i8 %2, 31, !dbg !2198
  %10 = zext i8 %9 to i32, !dbg !2199
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !940, metadata !590), !dbg !2200
  %11 = load i32, i32* %8, align 4, !dbg !2201, !tbaa !645
  %12 = lshr i32 %11, %10, !dbg !2202
  %13 = and i32 %12, 1, !dbg !2203
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !941, metadata !590), !dbg !2204
  %14 = xor i32 %13, 1, !dbg !2205
  %15 = shl i32 %14, %10, !dbg !2206
  %16 = xor i32 %15, %11, !dbg !2207
  store i32 %16, i32* %8, align 4, !dbg !2207, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2182, metadata !590), !dbg !2189
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2208
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2209
  ret i8* %17, !dbg !2210
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2211 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2215, metadata !590), !dbg !2217
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2216, metadata !590), !dbg !2218
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2179, metadata !590) #12, !dbg !2219
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2180, metadata !590) #12, !dbg !2221
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2181, metadata !590) #12, !dbg !2222
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2224, !tbaa.struct !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2182, metadata !590) #12, !dbg !2225
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !934, metadata !590) #12, !dbg !2226
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !935, metadata !590) #12, !dbg !2228
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !936, metadata !590) #12, !dbg !2229
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !937, metadata !590) #12, !dbg !2230
  %5 = lshr i8 %1, 5, !dbg !2231
  %6 = zext i8 %5 to i64, !dbg !2231
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2232
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !938, metadata !590) #12, !dbg !2233
  %8 = and i8 %1, 31, !dbg !2234
  %9 = zext i8 %8 to i32, !dbg !2235
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !940, metadata !590) #12, !dbg !2236
  %10 = load i32, i32* %7, align 4, !dbg !2237, !tbaa !645
  %11 = lshr i32 %10, %9, !dbg !2238
  %12 = and i32 %11, 1, !dbg !2239
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !941, metadata !590) #12, !dbg !2240
  %13 = xor i32 %12, 1, !dbg !2241
  %14 = shl i32 %13, %9, !dbg !2242
  %15 = xor i32 %14, %10, !dbg !2243
  store i32 %15, i32* %7, align 4, !dbg !2243, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2182, metadata !590) #12, !dbg !2225
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2245
  ret i8* %16, !dbg !2246
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2247 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2249, metadata !590), !dbg !2250
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2215, metadata !590) #12, !dbg !2251
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2216, metadata !590) #12, !dbg !2253
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2179, metadata !590) #12, !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2180, metadata !590) #12, !dbg !2256
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2181, metadata !590) #12, !dbg !2257
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2258
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2259, !tbaa.struct !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2182, metadata !590) #12, !dbg !2260
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !934, metadata !590) #12, !dbg !2261
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !935, metadata !590) #12, !dbg !2263
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !936, metadata !590) #12, !dbg !2264
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !937, metadata !590) #12, !dbg !2265
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2266
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !938, metadata !590) #12, !dbg !2267
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !940, metadata !590) #12, !dbg !2268
  %5 = load i32, i32* %4, align 4, !dbg !2269, !tbaa !645
  %6 = or i32 %5, 67108864, !dbg !2270
  store i32 %6, i32* %4, align 4, !dbg !2270, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2182, metadata !590) #12, !dbg !2260
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2272
  ret i8* %7, !dbg !2273
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2274 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2276, metadata !590), !dbg !2278
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2277, metadata !590), !dbg !2279
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2179, metadata !590) #12, !dbg !2280
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2180, metadata !590) #12, !dbg !2282
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2181, metadata !590) #12, !dbg !2283
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2284
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2284
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2285, !tbaa.struct !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2182, metadata !590) #12, !dbg !2286
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !934, metadata !590) #12, !dbg !2287
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !935, metadata !590) #12, !dbg !2289
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !936, metadata !590) #12, !dbg !2290
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !937, metadata !590) #12, !dbg !2291
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2292
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !938, metadata !590) #12, !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !940, metadata !590) #12, !dbg !2294
  %6 = load i32, i32* %5, align 4, !dbg !2295, !tbaa !645
  %7 = or i32 %6, 67108864, !dbg !2296
  store i32 %7, i32* %5, align 4, !dbg !2296, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2182, metadata !590) #12, !dbg !2286
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2297
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2298
  ret i8* %8, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2300 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2055, metadata !2061), !dbg !2306
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2302, metadata !590), !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2303, metadata !590), !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2304, metadata !590), !dbg !2310
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2311
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2311
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2060, metadata !590) #12, !dbg !2312
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2313
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2313
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2055, metadata !590) #12, !dbg !2306
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2055, metadata !2071) #12, !dbg !2306
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2306
  %9 = icmp eq i32 %1, 10, !dbg !2314
  br i1 %9, label %10, label %11, !dbg !2315

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2316, !noalias !2317
  unreachable, !dbg !2316

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2055, metadata !2071) #12, !dbg !2306
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2320
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2321
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2322
  store i32 %1, i32* %13, align 8, !dbg !2322
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2322
  %15 = bitcast i32* %14 to i8*, !dbg !2322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2322
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2305, metadata !590), !dbg !2323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !934, metadata !590), !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !935, metadata !590), !dbg !2326
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !936, metadata !590), !dbg !2327
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !937, metadata !590), !dbg !2328
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2329
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !938, metadata !590), !dbg !2330
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !940, metadata !590), !dbg !2331
  %17 = load i32, i32* %16, align 4, !dbg !2332, !tbaa !645
  %18 = or i32 %17, 67108864, !dbg !2333
  store i32 %18, i32* %16, align 4, !dbg !2333, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2305, metadata !590), !dbg !2323
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2334
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2335
  ret i8* %19, !dbg !2336
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2337 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2341, metadata !590), !dbg !2345
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2342, metadata !590), !dbg !2346
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2343, metadata !590), !dbg !2347
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2344, metadata !590), !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2349, metadata !590) #12, !dbg !2359
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2354, metadata !590) #12, !dbg !2361
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2355, metadata !590) #12, !dbg !2362
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2356, metadata !590) #12, !dbg !2363
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2357, metadata !590) #12, !dbg !2364
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2365
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2366, !tbaa.struct !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2358, metadata !590) #12, !dbg !2367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !983, metadata !590) #12, !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !984, metadata !590) #12, !dbg !2370
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !985, metadata !590) #12, !dbg !2371
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !983, metadata !590) #12, !dbg !2368
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !983, metadata !590) #12, !dbg !2368
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2372
  store i32 10, i32* %7, align 8, !dbg !2373, !tbaa !915
  %8 = icmp ne i8* %1, null, !dbg !2374
  %9 = icmp ne i8* %2, null, !dbg !2375
  %10 = and i1 %8, %9, !dbg !2376
  br i1 %10, label %12, label %11, !dbg !2376

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2377
  unreachable, !dbg !2377

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2378
  store i8* %1, i8** %13, align 8, !dbg !2379, !tbaa !1001
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2380
  store i8* %2, i8** %14, align 8, !dbg !2381, !tbaa !1004
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2358, metadata !590) #12, !dbg !2367
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2382
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2383
  ret i8* %15, !dbg !2384
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2350 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2349, metadata !590), !dbg !2385
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2354, metadata !590), !dbg !2386
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2355, metadata !590), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2356, metadata !590), !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2357, metadata !590), !dbg !2389
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2390
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2391, !tbaa.struct !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2358, metadata !590), !dbg !2392
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !983, metadata !590) #12, !dbg !2393
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !984, metadata !590) #12, !dbg !2395
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !985, metadata !590) #12, !dbg !2396
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !983, metadata !590) #12, !dbg !2393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !983, metadata !590) #12, !dbg !2393
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2397
  store i32 10, i32* %8, align 8, !dbg !2398, !tbaa !915
  %9 = icmp ne i8* %1, null, !dbg !2399
  %10 = icmp ne i8* %2, null, !dbg !2400
  %11 = and i1 %9, %10, !dbg !2401
  br i1 %11, label %13, label %12, !dbg !2401

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2402
  unreachable, !dbg !2402

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2403
  store i8* %1, i8** %14, align 8, !dbg !2404, !tbaa !1001
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2405
  store i8* %2, i8** %15, align 8, !dbg !2406, !tbaa !1004
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2358, metadata !590), !dbg !2392
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2407
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2408
  ret i8* %16, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2410 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2414, metadata !590), !dbg !2417
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2415, metadata !590), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2416, metadata !590), !dbg !2419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2341, metadata !590) #12, !dbg !2420
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2342, metadata !590) #12, !dbg !2422
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2343, metadata !590) #12, !dbg !2423
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2344, metadata !590) #12, !dbg !2424
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2349, metadata !590) #12, !dbg !2425
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2354, metadata !590) #12, !dbg !2427
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2355, metadata !590) #12, !dbg !2428
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2356, metadata !590) #12, !dbg !2429
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2357, metadata !590) #12, !dbg !2430
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2431
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2432, !tbaa.struct !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2358, metadata !590) #12, !dbg !2433
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !983, metadata !590) #12, !dbg !2434
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !984, metadata !590) #12, !dbg !2436
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !985, metadata !590) #12, !dbg !2437
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !983, metadata !590) #12, !dbg !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !983, metadata !590) #12, !dbg !2434
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2438
  store i32 10, i32* %6, align 8, !dbg !2439, !tbaa !915
  %7 = icmp ne i8* %0, null, !dbg !2440
  %8 = icmp ne i8* %1, null, !dbg !2441
  %9 = and i1 %7, %8, !dbg !2442
  br i1 %9, label %11, label %10, !dbg !2442

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2443
  unreachable, !dbg !2443

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2444
  store i8* %0, i8** %12, align 8, !dbg !2445, !tbaa !1001
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2446
  store i8* %1, i8** %13, align 8, !dbg !2447, !tbaa !1004
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2358, metadata !590) #12, !dbg !2433
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2449
  ret i8* %14, !dbg !2450
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2451 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2455, metadata !590), !dbg !2459
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2456, metadata !590), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2457, metadata !590), !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2458, metadata !590), !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2349, metadata !590) #12, !dbg !2463
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2354, metadata !590) #12, !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2355, metadata !590) #12, !dbg !2466
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2356, metadata !590) #12, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2357, metadata !590) #12, !dbg !2468
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2469
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2470, !tbaa.struct !2188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2358, metadata !590) #12, !dbg !2471
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !983, metadata !590) #12, !dbg !2472
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !984, metadata !590) #12, !dbg !2474
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !985, metadata !590) #12, !dbg !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !983, metadata !590) #12, !dbg !2472
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !983, metadata !590) #12, !dbg !2472
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2476
  store i32 10, i32* %7, align 8, !dbg !2477, !tbaa !915
  %8 = icmp ne i8* %0, null, !dbg !2478
  %9 = icmp ne i8* %1, null, !dbg !2479
  %10 = and i1 %8, %9, !dbg !2480
  br i1 %10, label %12, label %11, !dbg !2480

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2481
  unreachable, !dbg !2481

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2482
  store i8* %0, i8** %13, align 8, !dbg !2483, !tbaa !1001
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2484
  store i8* %1, i8** %14, align 8, !dbg !2485, !tbaa !1004
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2358, metadata !590) #12, !dbg !2471
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2486
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2487
  ret i8* %15, !dbg !2488
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2489 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2493, metadata !590), !dbg !2496
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2494, metadata !590), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2495, metadata !590), !dbg !2498
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2499
  ret i8* %4, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2501 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2505, metadata !590), !dbg !2507
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2506, metadata !590), !dbg !2508
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2493, metadata !590) #12, !dbg !2509
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2494, metadata !590) #12, !dbg !2511
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2495, metadata !590) #12, !dbg !2512
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2513
  ret i8* %3, !dbg !2514
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2515 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2519, metadata !590), !dbg !2521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2520, metadata !590), !dbg !2522
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2493, metadata !590) #12, !dbg !2523
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2494, metadata !590) #12, !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2495, metadata !590) #12, !dbg !2526
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2527
  ret i8* %3, !dbg !2528
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2529 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2533, metadata !590), !dbg !2534
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2519, metadata !590) #12, !dbg !2535
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2520, metadata !590) #12, !dbg !2537
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2493, metadata !590) #12, !dbg !2538
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2494, metadata !590) #12, !dbg !2540
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2495, metadata !590) #12, !dbg !2541
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2542
  ret i8* %2, !dbg !2543
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2544 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2604, metadata !590), !dbg !2610
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2605, metadata !590), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2606, metadata !590), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2607, metadata !590), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2608, metadata !590), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2609, metadata !590), !dbg !2615
  %7 = icmp eq i8* %1, null, !dbg !2616
  br i1 %7, label %10, label %8, !dbg !2618

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !2619
  br label %12, !dbg !2619

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !2620
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i32 5) #12, !dbg !2621
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !2621
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.57, i64 0, i64 0), i32 5) #12, !dbg !2622
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !2622
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
  ], !dbg !2623

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2624
  unreachable, !dbg !2624

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.58, i64 0, i64 0), i32 5) #12, !dbg !2626
  %20 = load i8*, i8** %4, align 8, !dbg !2626, !tbaa !597
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !2626
  br label %146, !dbg !2627

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.59, i64 0, i64 0), i32 5) #12, !dbg !2628
  %24 = load i8*, i8** %4, align 8, !dbg !2628, !tbaa !597
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2628
  %26 = load i8*, i8** %25, align 8, !dbg !2628, !tbaa !597
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !2628
  br label %146, !dbg !2629

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.60, i64 0, i64 0), i32 5) #12, !dbg !2630
  %30 = load i8*, i8** %4, align 8, !dbg !2630, !tbaa !597
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2630
  %32 = load i8*, i8** %31, align 8, !dbg !2630, !tbaa !597
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2630
  %34 = load i8*, i8** %33, align 8, !dbg !2630, !tbaa !597
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !2630
  br label %146, !dbg !2631

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.61, i64 0, i64 0), i32 5) #12, !dbg !2632
  %38 = load i8*, i8** %4, align 8, !dbg !2632, !tbaa !597
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2632
  %40 = load i8*, i8** %39, align 8, !dbg !2632, !tbaa !597
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2632
  %42 = load i8*, i8** %41, align 8, !dbg !2632, !tbaa !597
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2632
  %44 = load i8*, i8** %43, align 8, !dbg !2632, !tbaa !597
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !2632
  br label %146, !dbg !2633

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.62, i64 0, i64 0), i32 5) #12, !dbg !2634
  %48 = load i8*, i8** %4, align 8, !dbg !2634, !tbaa !597
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2634
  %50 = load i8*, i8** %49, align 8, !dbg !2634, !tbaa !597
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2634
  %52 = load i8*, i8** %51, align 8, !dbg !2634, !tbaa !597
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2634
  %54 = load i8*, i8** %53, align 8, !dbg !2634, !tbaa !597
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2634
  %56 = load i8*, i8** %55, align 8, !dbg !2634, !tbaa !597
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !2634
  br label %146, !dbg !2635

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.63, i64 0, i64 0), i32 5) #12, !dbg !2636
  %60 = load i8*, i8** %4, align 8, !dbg !2636, !tbaa !597
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2636
  %62 = load i8*, i8** %61, align 8, !dbg !2636, !tbaa !597
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2636
  %64 = load i8*, i8** %63, align 8, !dbg !2636, !tbaa !597
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2636
  %66 = load i8*, i8** %65, align 8, !dbg !2636, !tbaa !597
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2636
  %68 = load i8*, i8** %67, align 8, !dbg !2636, !tbaa !597
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2636
  %70 = load i8*, i8** %69, align 8, !dbg !2636, !tbaa !597
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !2636
  br label %146, !dbg !2637

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.64, i64 0, i64 0), i32 5) #12, !dbg !2638
  %74 = load i8*, i8** %4, align 8, !dbg !2638, !tbaa !597
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2638
  %76 = load i8*, i8** %75, align 8, !dbg !2638, !tbaa !597
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2638
  %78 = load i8*, i8** %77, align 8, !dbg !2638, !tbaa !597
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2638
  %80 = load i8*, i8** %79, align 8, !dbg !2638, !tbaa !597
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2638
  %82 = load i8*, i8** %81, align 8, !dbg !2638, !tbaa !597
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2638
  %84 = load i8*, i8** %83, align 8, !dbg !2638, !tbaa !597
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2638
  %86 = load i8*, i8** %85, align 8, !dbg !2638, !tbaa !597
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !2638
  br label %146, !dbg !2639

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.65, i64 0, i64 0), i32 5) #12, !dbg !2640
  %90 = load i8*, i8** %4, align 8, !dbg !2640, !tbaa !597
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2640
  %92 = load i8*, i8** %91, align 8, !dbg !2640, !tbaa !597
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2640
  %94 = load i8*, i8** %93, align 8, !dbg !2640, !tbaa !597
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2640
  %96 = load i8*, i8** %95, align 8, !dbg !2640, !tbaa !597
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2640
  %98 = load i8*, i8** %97, align 8, !dbg !2640, !tbaa !597
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2640
  %100 = load i8*, i8** %99, align 8, !dbg !2640, !tbaa !597
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2640
  %102 = load i8*, i8** %101, align 8, !dbg !2640, !tbaa !597
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2640
  %104 = load i8*, i8** %103, align 8, !dbg !2640, !tbaa !597
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !2640
  br label %146, !dbg !2641

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.66, i64 0, i64 0), i32 5) #12, !dbg !2642
  %108 = load i8*, i8** %4, align 8, !dbg !2642, !tbaa !597
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2642
  %110 = load i8*, i8** %109, align 8, !dbg !2642, !tbaa !597
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2642
  %112 = load i8*, i8** %111, align 8, !dbg !2642, !tbaa !597
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2642
  %114 = load i8*, i8** %113, align 8, !dbg !2642, !tbaa !597
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2642
  %116 = load i8*, i8** %115, align 8, !dbg !2642, !tbaa !597
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2642
  %118 = load i8*, i8** %117, align 8, !dbg !2642, !tbaa !597
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2642
  %120 = load i8*, i8** %119, align 8, !dbg !2642, !tbaa !597
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2642
  %122 = load i8*, i8** %121, align 8, !dbg !2642, !tbaa !597
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2642
  %124 = load i8*, i8** %123, align 8, !dbg !2642, !tbaa !597
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !2642
  br label %146, !dbg !2643

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.67, i64 0, i64 0), i32 5) #12, !dbg !2644
  %128 = load i8*, i8** %4, align 8, !dbg !2644, !tbaa !597
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2644
  %130 = load i8*, i8** %129, align 8, !dbg !2644, !tbaa !597
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2644
  %132 = load i8*, i8** %131, align 8, !dbg !2644, !tbaa !597
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2644
  %134 = load i8*, i8** %133, align 8, !dbg !2644, !tbaa !597
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2644
  %136 = load i8*, i8** %135, align 8, !dbg !2644, !tbaa !597
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2644
  %138 = load i8*, i8** %137, align 8, !dbg !2644, !tbaa !597
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2644
  %140 = load i8*, i8** %139, align 8, !dbg !2644, !tbaa !597
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2644
  %142 = load i8*, i8** %141, align 8, !dbg !2644, !tbaa !597
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2644
  %144 = load i8*, i8** %143, align 8, !dbg !2644, !tbaa !597
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !2644
  br label %146, !dbg !2645

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2646
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2647 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2651, metadata !590), !dbg !2657
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2652, metadata !590), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2653, metadata !590), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2654, metadata !590), !dbg !2660
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2655, metadata !590), !dbg !2661
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2656, metadata !590), !dbg !2662
  br label %6, !dbg !2663

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2656, metadata !590), !dbg !2662
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2665
  %9 = load i8*, i8** %8, align 8, !dbg !2665, !tbaa !597
  %10 = icmp eq i8* %9, null, !dbg !2667
  %11 = add i64 %7, 1, !dbg !2668
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2656, metadata !590), !dbg !2662
  br i1 %10, label %12, label %6, !dbg !2667, !llvm.loop !2669

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2671
  ret void, !dbg !2672
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2673 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2684, metadata !590), !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2685, metadata !590), !dbg !2693
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2686, metadata !590), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2687, metadata !590), !dbg !2695
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2688, metadata !590), !dbg !2696
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2697
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2697
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2690, metadata !590), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %11 = load i32, i32* %8, align 8, !dbg !2700
  %12 = icmp ult i32 %11, 41, !dbg !2700
  br i1 %12, label %13, label %18, !dbg !2700

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2700
  %15 = sext i32 %11 to i64, !dbg !2700
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2700
  %17 = add i32 %11, 8, !dbg !2700
  store i32 %17, i32* %8, align 8, !dbg !2700
  br label %21, !dbg !2700

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2700
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2700
  store i8* %20, i8** %10, align 8, !dbg !2700
  br label %21, !dbg !2700

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2700
  %25 = load i8*, i8** %24, align 8, !dbg !2700
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2703
  store i8* %25, i8** %26, align 16, !dbg !2704, !tbaa !597
  %27 = icmp eq i8* %25, null, !dbg !2705
  br i1 %27, label %30, label %28, !dbg !2706

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %29 = icmp ult i32 %22, 41, !dbg !2700
  br i1 %29, label %35, label %32, !dbg !2700

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2707
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2708
  ret void, !dbg !2708

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2700
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2700
  store i8* %34, i8** %10, align 8, !dbg !2700
  br label %40, !dbg !2700

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2700
  %37 = sext i32 %22 to i64, !dbg !2700
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2700
  %39 = add i32 %22, 8, !dbg !2700
  store i32 %39, i32* %8, align 8, !dbg !2700
  br label %40, !dbg !2700

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2700
  %44 = load i8*, i8** %43, align 8, !dbg !2700
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2703
  store i8* %44, i8** %45, align 8, !dbg !2704, !tbaa !597
  %46 = icmp eq i8* %44, null, !dbg !2705
  br i1 %46, label %30, label %47, !dbg !2706

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %48 = icmp ult i32 %41, 41, !dbg !2700
  br i1 %48, label %52, label %49, !dbg !2700

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2700
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2700
  store i8* %51, i8** %10, align 8, !dbg !2700
  br label %57, !dbg !2700

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2700
  %54 = sext i32 %41 to i64, !dbg !2700
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2700
  %56 = add i32 %41, 8, !dbg !2700
  store i32 %56, i32* %8, align 8, !dbg !2700
  br label %57, !dbg !2700

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2700
  %61 = load i8*, i8** %60, align 8, !dbg !2700
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2703
  store i8* %61, i8** %62, align 16, !dbg !2704, !tbaa !597
  %63 = icmp eq i8* %61, null, !dbg !2705
  br i1 %63, label %30, label %64, !dbg !2706

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %65 = icmp ult i32 %58, 41, !dbg !2700
  br i1 %65, label %69, label %66, !dbg !2700

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2700
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2700
  store i8* %68, i8** %10, align 8, !dbg !2700
  br label %74, !dbg !2700

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2700
  %71 = sext i32 %58 to i64, !dbg !2700
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2700
  %73 = add i32 %58, 8, !dbg !2700
  store i32 %73, i32* %8, align 8, !dbg !2700
  br label %74, !dbg !2700

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2700
  %78 = load i8*, i8** %77, align 8, !dbg !2700
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2703
  store i8* %78, i8** %79, align 8, !dbg !2704, !tbaa !597
  %80 = icmp eq i8* %78, null, !dbg !2705
  br i1 %80, label %30, label %81, !dbg !2706

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %82 = icmp ult i32 %75, 41, !dbg !2700
  br i1 %82, label %86, label %83, !dbg !2700

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2700
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2700
  store i8* %85, i8** %10, align 8, !dbg !2700
  br label %91, !dbg !2700

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2700
  %88 = sext i32 %75 to i64, !dbg !2700
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2700
  %90 = add i32 %75, 8, !dbg !2700
  store i32 %90, i32* %8, align 8, !dbg !2700
  br label %91, !dbg !2700

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2700
  %95 = load i8*, i8** %94, align 8, !dbg !2700
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2703
  store i8* %95, i8** %96, align 16, !dbg !2704, !tbaa !597
  %97 = icmp eq i8* %95, null, !dbg !2705
  br i1 %97, label %30, label %98, !dbg !2706

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %99 = icmp ult i32 %92, 41, !dbg !2700
  br i1 %99, label %103, label %100, !dbg !2700

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2700
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2700
  store i8* %102, i8** %10, align 8, !dbg !2700
  br label %108, !dbg !2700

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2700
  %105 = sext i32 %92 to i64, !dbg !2700
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2700
  %107 = add i32 %92, 8, !dbg !2700
  store i32 %107, i32* %8, align 8, !dbg !2700
  br label %108, !dbg !2700

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2700
  %111 = load i8*, i8** %110, align 8, !dbg !2700
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2703
  store i8* %111, i8** %112, align 8, !dbg !2704, !tbaa !597
  %113 = icmp eq i8* %111, null, !dbg !2705
  br i1 %113, label %30, label %114, !dbg !2706

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %115 = load i8*, i8** %10, align 8, !dbg !2700
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2700
  store i8* %116, i8** %10, align 8, !dbg !2700
  %117 = bitcast i8* %115 to i8**, !dbg !2700
  %118 = load i8*, i8** %117, align 8, !dbg !2700
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2703
  store i8* %118, i8** %119, align 16, !dbg !2704, !tbaa !597
  %120 = icmp eq i8* %118, null, !dbg !2705
  br i1 %120, label %30, label %121, !dbg !2706

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %122 = load i8*, i8** %10, align 8, !dbg !2700
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2700
  store i8* %123, i8** %10, align 8, !dbg !2700
  %124 = bitcast i8* %122 to i8**, !dbg !2700
  %125 = load i8*, i8** %124, align 8, !dbg !2700
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2703
  store i8* %125, i8** %126, align 8, !dbg !2704, !tbaa !597
  %127 = icmp eq i8* %125, null, !dbg !2705
  br i1 %127, label %30, label %128, !dbg !2706

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %129 = load i8*, i8** %10, align 8, !dbg !2700
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2700
  store i8* %130, i8** %10, align 8, !dbg !2700
  %131 = bitcast i8* %129 to i8**, !dbg !2700
  %132 = load i8*, i8** %131, align 8, !dbg !2700
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2703
  store i8* %132, i8** %133, align 16, !dbg !2704, !tbaa !597
  %134 = icmp eq i8* %132, null, !dbg !2705
  br i1 %134, label %30, label %135, !dbg !2706

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2689, metadata !590), !dbg !2699
  %136 = load i8*, i8** %10, align 8, !dbg !2700
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2700
  store i8* %137, i8** %10, align 8, !dbg !2700
  %138 = bitcast i8* %136 to i8**, !dbg !2700
  %139 = load i8*, i8** %138, align 8, !dbg !2700
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2703
  store i8* %139, i8** %140, align 8, !dbg !2704, !tbaa !597
  %141 = icmp eq i8* %139, null, !dbg !2705
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2689, metadata !590), !dbg !2699
  %142 = select i1 %141, i64 9, i64 10, !dbg !2706
  br label %30, !dbg !2706
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2709 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2713, metadata !590), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2714, metadata !590), !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2715, metadata !590), !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2716, metadata !590), !dbg !2727
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2728
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2728
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2717, metadata !590), !dbg !2729
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2730
  call void @llvm.va_start(i8* nonnull %6), !dbg !2730
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2731
  call void @llvm.va_end(i8* nonnull %6), !dbg !2732
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2733
  ret void, !dbg !2733
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2734 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.70, i64 0, i64 0), i32 5) #12, !dbg !2735
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.71, i64 0, i64 0)) #12, !dbg !2735
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.72, i64 0, i64 0), i32 5) #12, !dbg !2736
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.74, i64 0, i64 0)) #12, !dbg !2736
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.75, i64 0, i64 0), i32 5) #12, !dbg !2737
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2737, !tbaa !597
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !2737
  ret void, !dbg !2738
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2739 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2743, metadata !590), !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2744, metadata !590), !dbg !2746
  %3 = udiv i64 9223372036854775807, %1, !dbg !2747
  %4 = icmp ult i64 %3, %0, !dbg !2747
  br i1 %4, label %5, label %6, !dbg !2749

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2750
  unreachable, !dbg !2750

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2752, metadata !590) #12, !dbg !2759
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !2761
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2758, metadata !590) #12, !dbg !2762
  %9 = icmp eq i8* %8, null, !dbg !2763
  %10 = icmp ne i64 %7, 0, !dbg !2765
  %11 = and i1 %10, %9, !dbg !2766
  br i1 %11, label %12, label %13, !dbg !2766

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2767
  unreachable, !dbg !2767

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2768
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2753 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2752, metadata !590), !dbg !2769
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2758, metadata !590), !dbg !2771
  %3 = icmp eq i8* %2, null, !dbg !2772
  %4 = icmp ne i64 %0, 0, !dbg !2773
  %5 = and i1 %4, %3, !dbg !2774
  br i1 %5, label %6, label %7, !dbg !2774

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2775
  unreachable, !dbg !2775

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2776
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2777 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2781, metadata !590), !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2782, metadata !590), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2783, metadata !590), !dbg !2786
  %4 = udiv i64 9223372036854775807, %2, !dbg !2787
  %5 = icmp ult i64 %4, %1, !dbg !2787
  br i1 %5, label %6, label %7, !dbg !2789

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2790
  unreachable, !dbg !2790

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2791
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !590) #12, !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2797, metadata !590) #12, !dbg !2800
  %9 = icmp eq i64 %8, 0, !dbg !2801
  %10 = icmp ne i8* %0, null, !dbg !2803
  %11 = and i1 %10, %9, !dbg !2804
  br i1 %11, label %12, label %13, !dbg !2804

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !2805
  br label %19, !dbg !2807

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !2808
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2792, metadata !590) #12, !dbg !2798
  %15 = icmp eq i8* %14, null, !dbg !2809
  %16 = icmp ne i64 %8, 0, !dbg !2811
  %17 = and i1 %16, %15, !dbg !2812
  br i1 %17, label %18, label %19, !dbg !2812

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2813
  unreachable, !dbg !2813

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2814
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2793 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !590), !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2797, metadata !590), !dbg !2816
  %3 = icmp eq i64 %1, 0, !dbg !2817
  %4 = icmp ne i8* %0, null, !dbg !2818
  %5 = and i1 %4, %3, !dbg !2819
  br i1 %5, label %6, label %7, !dbg !2819

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !2820
  br label %13, !dbg !2821

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !2822
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2792, metadata !590), !dbg !2815
  %9 = icmp eq i8* %8, null, !dbg !2823
  %10 = icmp ne i64 %1, 0, !dbg !2824
  %11 = and i1 %10, %9, !dbg !2825
  br i1 %11, label %12, label %13, !dbg !2825

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2826
  unreachable, !dbg !2826

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2827
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !550 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !555, metadata !590), !dbg !2828
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !556, metadata !590), !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !557, metadata !590), !dbg !2830
  %4 = load i64, i64* %1, align 8, !dbg !2831, !tbaa !1868
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !558, metadata !590), !dbg !2832
  %5 = icmp eq i8* %0, null, !dbg !2833
  br i1 %5, label %6, label %13, !dbg !2835

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2836
  br i1 %7, label %8, label %17, !dbg !2839

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !558, metadata !590), !dbg !2832
  %10 = icmp ugt i64 %2, 128, !dbg !2842
  %11 = zext i1 %10 to i64, !dbg !2842
  %12 = add nuw nsw i64 %9, %11, !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !558, metadata !590), !dbg !2832
  br label %17, !dbg !2844

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2845
  %15 = icmp ugt i64 %14, %4, !dbg !2848
  br i1 %15, label %20, label %16, !dbg !2849

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2850
  unreachable, !dbg !2850

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !558, metadata !590), !dbg !2832
  store i64 %18, i64* %1, align 8, !dbg !2851, !tbaa !1868
  %19 = mul i64 %18, %2, !dbg !2852
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !590) #12, !dbg !2853
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2797, metadata !590) #12, !dbg !2855
  br label %27, !dbg !2856

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2857
  %22 = add i64 %4, 1, !dbg !2858
  %23 = add i64 %22, %21, !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !558, metadata !590), !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !558, metadata !590), !dbg !2832
  store i64 %23, i64* %1, align 8, !dbg !2851, !tbaa !1868
  %24 = mul i64 %23, %2, !dbg !2852
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !590) #12, !dbg !2853
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2797, metadata !590) #12, !dbg !2855
  %25 = icmp eq i64 %24, 0, !dbg !2860
  br i1 %25, label %26, label %27, !dbg !2856

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !2861
  br label %34, !dbg !2862

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !2863
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2792, metadata !590) #12, !dbg !2853
  %30 = icmp eq i8* %29, null, !dbg !2864
  %31 = icmp ne i64 %28, 0, !dbg !2865
  %32 = and i1 %31, %30, !dbg !2866
  br i1 %32, label %33, label %34, !dbg !2866

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2867
  unreachable, !dbg !2867

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2868
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2869 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2871, metadata !590), !dbg !2872
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2752, metadata !590) #12, !dbg !2873
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2758, metadata !590) #12, !dbg !2876
  %3 = icmp eq i8* %2, null, !dbg !2877
  %4 = icmp ne i64 %0, 0, !dbg !2878
  %5 = and i1 %4, %3, !dbg !2879
  br i1 %5, label %6, label %7, !dbg !2879

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2880
  unreachable, !dbg !2880

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2881
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2882 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !590), !dbg !2888
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2887, metadata !590), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !555, metadata !590) #12, !dbg !2890
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !556, metadata !590) #12, !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !557, metadata !590) #12, !dbg !2893
  %3 = load i64, i64* %1, align 8, !dbg !2894, !tbaa !1868
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !558, metadata !590) #12, !dbg !2895
  %4 = icmp eq i8* %0, null, !dbg !2896
  br i1 %4, label %5, label %8, !dbg !2897

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2898
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !558, metadata !590) #12, !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !558, metadata !590) #12, !dbg !2895
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !558, metadata !590) #12, !dbg !2895
  store i64 %7, i64* %1, align 8, !dbg !2900, !tbaa !1868
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !590) #12, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2797, metadata !590) #12, !dbg !2903
  br label %17, !dbg !2904

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2905
  br i1 %9, label %11, label %10, !dbg !2906

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2907
  unreachable, !dbg !2907

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2908
  %13 = add i64 %3, 1, !dbg !2909
  %14 = add i64 %13, %12, !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !558, metadata !590) #12, !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !558, metadata !590) #12, !dbg !2895
  store i64 %14, i64* %1, align 8, !dbg !2900, !tbaa !1868
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !590) #12, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2797, metadata !590) #12, !dbg !2903
  %15 = icmp eq i64 %14, 0, !dbg !2911
  br i1 %15, label %16, label %17, !dbg !2904

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !2912
  br label %24, !dbg !2913

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !2914
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2792, metadata !590) #12, !dbg !2901
  %20 = icmp eq i8* %19, null, !dbg !2915
  %21 = icmp ne i64 %18, 0, !dbg !2916
  %22 = and i1 %21, %20, !dbg !2917
  br i1 %22, label %23, label %24, !dbg !2917

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2918
  unreachable, !dbg !2918

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2919
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2920 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2922, metadata !590), !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2752, metadata !590) #12, !dbg !2924
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !2926
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2758, metadata !590) #12, !dbg !2927
  %3 = icmp eq i8* %2, null, !dbg !2928
  %4 = icmp ne i64 %0, 0, !dbg !2929
  %5 = and i1 %4, %3, !dbg !2930
  br i1 %5, label %6, label %7, !dbg !2930

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2931
  unreachable, !dbg !2931

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2932
  ret i8* %2, !dbg !2933
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2934 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2936, metadata !590), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2937, metadata !590), !dbg !2940
  %3 = udiv i64 9223372036854775807, %1, !dbg !2941
  %4 = icmp ult i64 %3, %0, !dbg !2941
  br i1 %4, label %8, label %5, !dbg !2943

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !2944
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2938, metadata !590), !dbg !2945
  %7 = icmp eq i8* %6, null, !dbg !2946
  br i1 %7, label %8, label %9, !dbg !2947

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2948
  unreachable, !dbg !2948

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2950 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2956, metadata !590), !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2957, metadata !590), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2752, metadata !590) #12, !dbg !2960
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !2962
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2758, metadata !590) #12, !dbg !2963
  %4 = icmp eq i8* %3, null, !dbg !2964
  %5 = icmp ne i64 %1, 0, !dbg !2965
  %6 = and i1 %5, %4, !dbg !2966
  br i1 %6, label %7, label %8, !dbg !2966

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2967
  unreachable, !dbg !2967

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2968
  ret i8* %3, !dbg !2969
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2970 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2972, metadata !590), !dbg !2973
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2974
  %3 = add i64 %2, 1, !dbg !2975
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2956, metadata !590) #12, !dbg !2976
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2957, metadata !590) #12, !dbg !2978
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2752, metadata !590) #12, !dbg !2979
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !2981
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2758, metadata !590) #12, !dbg !2982
  %5 = icmp eq i8* %4, null, !dbg !2983
  %6 = icmp ne i64 %3, 0, !dbg !2984
  %7 = and i1 %6, %5, !dbg !2985
  br i1 %7, label %8, label %9, !dbg !2985

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2986
  unreachable, !dbg !2986

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !2987
  ret i8* %4, !dbg !2988
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2989 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2991, !tbaa !645
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.86, i64 0, i64 0), i32 5) #12, !dbg !2992
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i8* %2) #12, !dbg !2993
  tail call void @abort() #15, !dbg !2994
  unreachable, !dbg !2994
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2995 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2998, metadata !590), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2999, metadata !590), !dbg !3005
  %3 = icmp eq i64 %0, 0, !dbg !3006
  %4 = icmp eq i64 %1, 0, !dbg !3007
  %5 = or i1 %3, %4, !dbg !3008
  br i1 %5, label %12, label %6, !dbg !3008

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3001, metadata !590), !dbg !3010
  %8 = udiv i64 %7, %1, !dbg !3011
  %9 = icmp eq i64 %8, %0, !dbg !3013
  br i1 %9, label %12, label %10, !dbg !3014

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3015
  store i32 12, i32* %11, align 4, !dbg !3017, !tbaa !645
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2998, metadata !590), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2999, metadata !590), !dbg !3005
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3018
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3000, metadata !590), !dbg !3019
  br label %16, !dbg !3020

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3021
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3022 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3039, metadata !590), !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3040, metadata !590), !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3041, metadata !590), !dbg !3050
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3042, metadata !590), !dbg !3051
  %6 = bitcast i32* %5 to i8*, !dbg !3052
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3052
  %7 = icmp eq i32* %0, null, !dbg !3053
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3039, metadata !590), !dbg !3048
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3055
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3039, metadata !590), !dbg !3048
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3043, metadata !590), !dbg !3057
  %10 = icmp ugt i64 %9, -3, !dbg !3058
  %11 = icmp ne i64 %2, 0, !dbg !3059
  %12 = and i1 %11, %10, !dbg !3060
  br i1 %12, label %13, label %18, !dbg !3060

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3061
  br i1 %14, label %18, label %15, !dbg !3062

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3063, !tbaa !680
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3045, metadata !590), !dbg !3064
  %17 = zext i8 %16 to i32, !dbg !3065
  store i32 %17, i32* %8, align 4, !dbg !3066, !tbaa !645
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3067
  ret i64 %19, !dbg !3067
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3068 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3113, metadata !590), !dbg !3118
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3119
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3120, metadata !590), !dbg !3123
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3125
  %4 = load i32, i32* %3, align 8, !dbg !3125, !tbaa !3126
  %5 = and i32 %4, 32, !dbg !3125
  %6 = icmp eq i32 %5, 0, !dbg !3127
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3128
  %8 = icmp ne i32 %7, 0, !dbg !3129
  br i1 %6, label %9, label %19, !dbg !3130

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3132
  %11 = xor i1 %8, true, !dbg !3133
  %12 = or i1 %10, %11, !dbg !3133
  %13 = sext i1 %8 to i32, !dbg !3133
  br i1 %12, label %22, label %14, !dbg !3133

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3134
  %16 = load i32, i32* %15, align 4, !dbg !3134, !tbaa !645
  %17 = icmp ne i32 %16, 9, !dbg !3135
  %18 = sext i1 %17 to i32, !dbg !3136
  br label %22, !dbg !3136

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3137

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3139
  store i32 0, i32* %21, align 4, !dbg !3141, !tbaa !645
  br label %22, !dbg !3139

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3142
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3143 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3148, metadata !590), !dbg !3151
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3149, metadata !590), !dbg !3152
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3150, metadata !590), !dbg !3154
  %3 = icmp eq i8* %2, null, !dbg !3155
  br i1 %3, label %11, label %4, !dbg !3157

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0)) #14, !dbg !3158
  %6 = icmp eq i32 %5, 0, !dbg !3163
  br i1 %6, label %10, label %7, !dbg !3164

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.97, i64 0, i64 0)) #14, !dbg !3165
  %9 = icmp eq i32 %8, 0, !dbg !3166
  br i1 %9, label %10, label %11, !dbg !3167

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3149, metadata !590), !dbg !3152
  br label %11, !dbg !3168

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3169
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3170 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3176, metadata !590), !dbg !3250
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3243, metadata !590), !dbg !3253
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3174, metadata !590), !dbg !3255
  %4 = icmp eq i8* %3, null, !dbg !3256
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), i8* %3, !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3174, metadata !590), !dbg !3255
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3259, !tbaa !597
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3190, metadata !590) #12, !dbg !3260
  %7 = icmp eq i8* %6, null, !dbg !3261
  br i1 %7, label %8, label %123, !dbg !3262

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.101, i64 0, i64 0)) #12, !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3191, metadata !590) #12, !dbg !3264
  %10 = icmp eq i8* %9, null, !dbg !3265
  br i1 %10, label %14, label %11, !dbg !3267

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3268, !tbaa !680
  %13 = icmp eq i8 %12, 0, !dbg !3269
  br i1 %13, label %14, label %15, !dbg !3270

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3271

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.102, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3191, metadata !590) #12, !dbg !3264
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3272
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3194, metadata !590) #12, !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3196, metadata !590) #12, !dbg !3274
  %18 = icmp eq i64 %17, 0, !dbg !3275
  br i1 %18, label %24, label %19, !dbg !3276

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3277
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3277
  %22 = load i8, i8* %21, align 1, !dbg !3277, !tbaa !680
  %23 = icmp ne i8 %22, 47, !dbg !3277
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3278
  %27 = add i64 %17, 14, !dbg !3279
  %28 = add i64 %27, %26, !dbg !3280
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !3281
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3193, metadata !590) #12, !dbg !3282
  %30 = icmp eq i8* %29, null, !dbg !3283
  br i1 %30, label %121, label %31, !dbg !3283

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !3284
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3287

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3288, !tbaa !680
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3290
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.103, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !3291
  br label %37, !dbg !3292

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3290
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.103, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !3291
  br label %37, !dbg !3292

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !3293
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3198, metadata !590) #12, !dbg !3294
  %39 = icmp slt i32 %38, 0, !dbg !3295
  br i1 %39, label %119, label %40, !dbg !3296

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.104, i64 0, i64 0)) #12, !dbg !3297
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3199, metadata !590) #12, !dbg !3298
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3299
  br i1 %42, label %43, label %45, !dbg !3300

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !3301
  br label %119, !dbg !3303

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3240, metadata !590) #12, !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3241, metadata !590) #12, !dbg !3305
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3306

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3307

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3240, metadata !590) #12, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3241, metadata !590) #12, !dbg !3305
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !3307
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !3308
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3309, metadata !590) #12, !dbg !3314
  %54 = load i8*, i8** %48, align 8, !dbg !3316, !tbaa !3317
  %55 = load i8*, i8** %49, align 8, !dbg !3316, !tbaa !3318
  %56 = icmp ult i8* %54, %55, !dbg !3316
  br i1 %56, label %59, label %57, !dbg !3316, !prof !679

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !3316
  br label %63, !dbg !3316

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3316
  store i8* %60, i8** %48, align 8, !dbg !3316, !tbaa !3317
  %61 = load i8, i8* %54, align 1, !dbg !3316, !tbaa !680
  %62 = zext i8 %61 to i32, !dbg !3316
  br label %63, !dbg !3316

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3316
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3242, metadata !590) #12, !dbg !3319
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3320, !llvm.loop !3321

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3326

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3309, metadata !590) #12, !dbg !3328
  %67 = load i8*, i8** %48, align 8, !dbg !3326, !tbaa !3317
  %68 = load i8*, i8** %49, align 8, !dbg !3326, !tbaa !3318
  %69 = icmp ult i8* %67, %68, !dbg !3326
  br i1 %69, label %72, label %70, !dbg !3326, !prof !679

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !3326
  br label %76, !dbg !3326

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3326
  store i8* %73, i8** %48, align 8, !dbg !3326, !tbaa !3317
  %74 = load i8, i8* %67, align 1, !dbg !3326, !tbaa !680
  %75 = zext i8 %74 to i32, !dbg !3326
  br label %76, !dbg !3326

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3326
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3242, metadata !590) #12, !dbg !3319
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3329, !llvm.loop !3330

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !3333
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.105, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !3334
  %81 = icmp slt i32 %80, 2, !dbg !3336
  br i1 %81, label %112, label %82, !dbg !3337

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3247, metadata !590) #12, !dbg !3339
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3248, metadata !590) #12, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3249, metadata !590) #12, !dbg !3342
  %85 = icmp eq i64 %51, 0, !dbg !3343
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3345

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3241, metadata !590) #12, !dbg !3305
  %90 = add i64 %87, 2, !dbg !3346
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3240, metadata !590) #12, !dbg !3304
  br label %96, !dbg !3349

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3350
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3241, metadata !590) #12, !dbg !3305
  %94 = add i64 %93, 1, !dbg !3352
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3240, metadata !590) #12, !dbg !3304
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3240, metadata !590) #12, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3241, metadata !590) #12, !dbg !3305
  %99 = icmp eq i8* %98, null, !dbg !3354
  br i1 %99, label %100, label %102, !dbg !3356

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3241, metadata !590) #12, !dbg !3305
  call void @free(i8* %52) #12, !dbg !3357
  br label %112, !dbg !3359

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !3360
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !3360
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3361
  %104 = xor i64 %84, -1, !dbg !3362
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3362
  %106 = xor i64 %83, -1, !dbg !3363
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3364, metadata !590) #12, !dbg !3373
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3372, metadata !590) #12, !dbg !3373
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !3375
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3364, metadata !590) #12, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3372, metadata !590) #12, !dbg !3377
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !3379
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3240, metadata !590) #12, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3241, metadata !590) #12, !dbg !3305
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !3360
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !3360
  br label %50, !dbg !3381, !llvm.loop !3330

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !3360
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !3360
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !3382
  %116 = icmp eq i64 %113, 0, !dbg !3383
  br i1 %116, label %119, label %117, !dbg !3385

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3386
  store i8 0, i8* %118, align 1, !dbg !3388, !tbaa !680
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3190, metadata !590) #12, !dbg !3260
  call void @free(i8* %29) #12, !dbg !3389
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3190, metadata !590) #12, !dbg !3260
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3390, !tbaa !597
  br label %123, !dbg !3391

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3190, metadata !590) #12, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3175, metadata !590), !dbg !3392
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3175, metadata !590), !dbg !3392
  %125 = load i8, i8* %124, align 1, !dbg !3393, !tbaa !680
  %126 = icmp eq i8 %125, 0, !dbg !3395
  br i1 %126, label %152, label %127, !dbg !3396

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3397

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3175, metadata !590), !dbg !3392
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3397
  %132 = icmp eq i32 %131, 0, !dbg !3399
  br i1 %132, label %139, label %133, !dbg !3400

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3401
  br i1 %134, label %135, label %143, !dbg !3402

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3403
  %137 = load i8, i8* %136, align 1, !dbg !3403, !tbaa !680
  %138 = icmp eq i8 %137, 0, !dbg !3404
  br i1 %138, label %139, label %143, !dbg !3405

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3406
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3408
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3174, metadata !590), !dbg !3255
  br label %152, !dbg !3410

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3411
  %145 = add i64 %144, 1, !dbg !3412
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3175, metadata !590), !dbg !3392
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3414
  %148 = add i64 %147, 1, !dbg !3415
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3175, metadata !590), !dbg !3392
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3175, metadata !590), !dbg !3392
  %150 = load i8, i8* %149, align 1, !dbg !3393, !tbaa !680
  %151 = icmp eq i8 %150, 0, !dbg !3395
  br i1 %151, label %152, label %128, !dbg !3396, !llvm.loop !3417

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3174, metadata !590), !dbg !3255
  %154 = load i8, i8* %153, align 1, !dbg !3419, !tbaa !680
  %155 = icmp eq i8 %154, 0, !dbg !3421
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i64 0, i64 0), i8* %153, !dbg !3422
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3174, metadata !590), !dbg !3255
  ret i8* %156, !dbg !3423
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3424 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3469, metadata !590), !dbg !3473
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3470, metadata !590), !dbg !3474
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3472, metadata !590), !dbg !3475
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3476
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3471, metadata !590), !dbg !3477
  %3 = icmp slt i32 %2, 0, !dbg !3478
  br i1 %3, label %4, label %6, !dbg !3480

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3481
  br label %24, !dbg !3482

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3483
  %8 = icmp eq i32 %7, 0, !dbg !3483
  br i1 %8, label %13, label %9, !dbg !3485

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3486
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3487
  %12 = icmp eq i64 %11, -1, !dbg !3488
  br i1 %12, label %16, label %13, !dbg !3489

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3490
  %15 = icmp eq i32 %14, 0, !dbg !3490
  br i1 %15, label %16, label %18, !dbg !3491

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3470, metadata !590), !dbg !3474
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3492
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3472, metadata !590), !dbg !3475
  br label %24, !dbg !3493

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3494
  %20 = load i32, i32* %19, align 4, !dbg !3494, !tbaa !645
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3470, metadata !590), !dbg !3474
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3470, metadata !590), !dbg !3474
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3492
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3472, metadata !590), !dbg !3475
  %22 = icmp eq i32 %20, 0, !dbg !3495
  br i1 %22, label %24, label %23, !dbg !3493

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3497, !tbaa !645
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3472, metadata !590), !dbg !3475
  br label %24, !dbg !3499

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3500
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3501 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3546, metadata !590), !dbg !3547
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3548
  br i1 %2, label %6, label %3, !dbg !3550

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3551
  %5 = icmp eq i32 %4, 0, !dbg !3551
  br i1 %5, label %6, label %8, !dbg !3552

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3553
  br label %17, !dbg !3554

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3555, metadata !590) #12, !dbg !3560
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3562
  %10 = load i32, i32* %9, align 8, !dbg !3562, !tbaa !3126
  %11 = and i32 %10, 256, !dbg !3564
  %12 = icmp eq i32 %11, 0, !dbg !3564
  br i1 %12, label %15, label %13, !dbg !3565

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3566
  br label %15, !dbg !3566

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3567
  br label %17, !dbg !3568

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3569
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3570 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3616, metadata !590), !dbg !3622
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3617, metadata !590), !dbg !3623
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3618, metadata !590), !dbg !3624
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3625
  %5 = load i8*, i8** %4, align 8, !dbg !3625, !tbaa !3318
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3626
  %7 = load i8*, i8** %6, align 8, !dbg !3626, !tbaa !3317
  %8 = icmp eq i8* %5, %7, !dbg !3627
  br i1 %8, label %9, label %28, !dbg !3628

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3629
  %11 = load i8*, i8** %10, align 8, !dbg !3629, !tbaa !674
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3630
  %13 = load i8*, i8** %12, align 8, !dbg !3630, !tbaa !3631
  %14 = icmp eq i8* %11, %13, !dbg !3632
  br i1 %14, label %15, label %28, !dbg !3633

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3634
  %17 = load i8*, i8** %16, align 8, !dbg !3634, !tbaa !3635
  %18 = icmp eq i8* %17, null, !dbg !3636
  br i1 %18, label %19, label %28, !dbg !3637

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3638
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3619, metadata !590), !dbg !3640
  %22 = icmp eq i64 %21, -1, !dbg !3641
  br i1 %22, label %30, label %23, !dbg !3643

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3644
  %25 = load i32, i32* %24, align 8, !dbg !3645, !tbaa !3126
  %26 = and i32 %25, -17, !dbg !3645
  store i32 %26, i32* %24, align 8, !dbg !3645, !tbaa !3126
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3646
  store i64 %21, i64* %27, align 8, !dbg !3647, !tbaa !3648
  br label %30, !dbg !3649

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3650
  br label %30, !dbg !3651

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3652
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
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !66, !71, !532, !534, !79, !86, !93, !537, !177, !545, !562, !564, !566, !569, !571, !186, !573, !575, !577}
!llvm.ident = !{!579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579}
!llvm.module.flags = !{!580, !581, !582, !583, !584}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 35, type: !52, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11, !32, !0}
!11 = !DIGlobalVariableExpression(var: !12)
!12 = distinct !DIGlobalVariable(name: "dot", scope: !13, file: !3, line: 80, type: !25, isLocal: true, isDefinition: true)
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !14, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !{!19, !20, !21, !23, !26, !30}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !3, line: 78, type: !16)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !3, line: 78, type: !17)
!21 = !DILocalVariable(name: "use_nuls", scope: !13, file: !3, line: 81, type: !22)
!22 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!23 = !DILocalVariable(name: "result", scope: !13, file: !3, line: 82, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!26 = !DILocalVariable(name: "len", scope: !13, file: !3, line: 83, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 62, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DILocalVariable(name: "c", scope: !31, file: !3, line: 95, type: !16)
!31 = distinct !DILexicalBlock(scope: !13, file: !3, line: 94, column: 5)
!32 = !DIGlobalVariableExpression(var: !33)
!33 = distinct !DIGlobalVariable(name: "infomap", scope: !34, file: !35, line: 632, type: !49, isLocal: true, isDefinition: true)
!34 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !35, file: !35, line: 630, type: !36, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !38)
!35 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !DISubroutineType(types: !37)
!37 = !{null, !24}
!38 = !{!39, !40, !41, !48}
!39 = !DILocalVariable(name: "program", arg: 1, scope: !34, file: !35, line: 630, type: !24)
!40 = !DILocalVariable(name: "node", scope: !34, file: !35, line: 642, type: !24)
!41 = !DILocalVariable(name: "map_prog", scope: !34, file: !35, line: 643, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !34, file: !35, line: 632, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !44, file: !35, line: 632, baseType: !24, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !44, file: !35, line: 632, baseType: !24, size: 64, offset: 64)
!48 = !DILocalVariable(name: "lc_messages", scope: !34, file: !35, line: 655, type: !24)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 896, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 7)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1024, elements: !62)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !55, line: 50, size: 256, elements: !56)
!55 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !{!57, !58, !59, !61}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !55, line: 52, baseType: !24, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !54, file: !55, line: 55, baseType: !16, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !54, file: !55, line: 56, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !55, line: 57, baseType: !16, size: 32, offset: 192)
!62 = !{!63}
!63 = !DISubrange(count: 4)
!64 = !DIGlobalVariableExpression(var: !65)
!65 = distinct !DIGlobalVariable(name: "Version", scope: !66, file: !67, line: 2, type: !24, isLocal: false, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !68)
!67 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!68 = !{!64}
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "file_name", scope: !71, file: !76, line: 36, type: !24, isLocal: true, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !73)
!72 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!73 = !{!69, !74}
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !71, file: !76, line: 46, type: !22, isLocal: true, isDefinition: true)
!76 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "exit_failure", scope: !79, file: !82, line: 24, type: !83, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !81)
!80 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!77}
!82 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "program_name", scope: !86, file: !90, line: 33, type: !24, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !89)
!87 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!8, !6}
!89 = !{!84}
!90 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !93, file: !135, line: 77, type: !171, isLocal: false, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !130, globals: !132)
!94 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{!96, !110, !115}
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !97, line: 32, size: 32, elements: !98)
!97 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!99 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!100 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!101 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!102 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!103 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!104 = !DIEnumerator(name: "c_quoting_style", value: 5)
!105 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!106 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!107 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!108 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!109 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !97, line: 242, size: 32, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!113 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!114 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !116, line: 46, size: 32, elements: !117)
!116 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!118 = !DIEnumerator(name: "_ISupper", value: 256)
!119 = !DIEnumerator(name: "_ISlower", value: 512)
!120 = !DIEnumerator(name: "_ISalpha", value: 1024)
!121 = !DIEnumerator(name: "_ISdigit", value: 2048)
!122 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!123 = !DIEnumerator(name: "_ISspace", value: 8192)
!124 = !DIEnumerator(name: "_ISprint", value: 16384)
!125 = !DIEnumerator(name: "_ISgraph", value: 32768)
!126 = !DIEnumerator(name: "_ISblank", value: 1)
!127 = !DIEnumerator(name: "_IScntrl", value: 2)
!128 = !DIEnumerator(name: "_ISpunct", value: 4)
!129 = !DIEnumerator(name: "_ISalnum", value: 8)
!130 = !{!16, !131, !27, !6}
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !{!91, !133, !140, !153, !155, !160, !167, !169}
!133 = !DIGlobalVariableExpression(var: !134)
!134 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !93, file: !135, line: 93, type: !136, isLocal: false, isDefinition: true)
!135 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 320, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!138 = !{!139}
!139 = !DISubrange(count: 10)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !93, file: !135, line: 1043, type: !142, isLocal: false, isDefinition: true)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !135, line: 57, size: 448, elements: !143)
!143 = !{!144, !145, !146, !151, !152}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !142, file: !135, line: 60, baseType: !96, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !135, line: 63, baseType: !16, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !142, file: !135, line: 67, baseType: !147, size: 256, offset: 64)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !149)
!148 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!149 = !{!150}
!150 = !DISubrange(count: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !142, file: !135, line: 70, baseType: !24, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !142, file: !135, line: 73, baseType: !24, size: 64, offset: 384)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !93, file: !135, line: 108, type: !142, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "slot0", scope: !93, file: !135, line: 834, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 256)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "slotvec", scope: !93, file: !135, line: 837, type: !162, isLocal: true, isDefinition: true)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !135, line: 826, size: 128, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !163, file: !135, line: 828, baseType: !27, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !163, file: !135, line: 829, baseType: !6, size: 64, offset: 64)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "nslots", scope: !93, file: !135, line: 835, type: !16, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "slotvec0", scope: !93, file: !135, line: 836, type: !163, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 704, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!173 = !{!174}
!174 = !DISubrange(count: 11)
!175 = !DIGlobalVariableExpression(var: !176)
!176 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !177, file: !180, line: 26, type: !181, isLocal: false, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !179)
!178 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!179 = !{!175}
!180 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 376, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 47)
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !186, file: !530, line: 120, type: !531, isLocal: true, isDefinition: true)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !188, retainedTypes: !527, globals: !529)
!187 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !{!189}
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !190, line: 41, size: 32, elements: !191)
!190 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!192 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!193 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!194 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!195 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!196 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!197 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!198 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!199 = !DIEnumerator(name: "DAY_1", value: 131079)
!200 = !DIEnumerator(name: "DAY_2", value: 131080)
!201 = !DIEnumerator(name: "DAY_3", value: 131081)
!202 = !DIEnumerator(name: "DAY_4", value: 131082)
!203 = !DIEnumerator(name: "DAY_5", value: 131083)
!204 = !DIEnumerator(name: "DAY_6", value: 131084)
!205 = !DIEnumerator(name: "DAY_7", value: 131085)
!206 = !DIEnumerator(name: "ABMON_1", value: 131086)
!207 = !DIEnumerator(name: "ABMON_2", value: 131087)
!208 = !DIEnumerator(name: "ABMON_3", value: 131088)
!209 = !DIEnumerator(name: "ABMON_4", value: 131089)
!210 = !DIEnumerator(name: "ABMON_5", value: 131090)
!211 = !DIEnumerator(name: "ABMON_6", value: 131091)
!212 = !DIEnumerator(name: "ABMON_7", value: 131092)
!213 = !DIEnumerator(name: "ABMON_8", value: 131093)
!214 = !DIEnumerator(name: "ABMON_9", value: 131094)
!215 = !DIEnumerator(name: "ABMON_10", value: 131095)
!216 = !DIEnumerator(name: "ABMON_11", value: 131096)
!217 = !DIEnumerator(name: "ABMON_12", value: 131097)
!218 = !DIEnumerator(name: "MON_1", value: 131098)
!219 = !DIEnumerator(name: "MON_2", value: 131099)
!220 = !DIEnumerator(name: "MON_3", value: 131100)
!221 = !DIEnumerator(name: "MON_4", value: 131101)
!222 = !DIEnumerator(name: "MON_5", value: 131102)
!223 = !DIEnumerator(name: "MON_6", value: 131103)
!224 = !DIEnumerator(name: "MON_7", value: 131104)
!225 = !DIEnumerator(name: "MON_8", value: 131105)
!226 = !DIEnumerator(name: "MON_9", value: 131106)
!227 = !DIEnumerator(name: "MON_10", value: 131107)
!228 = !DIEnumerator(name: "MON_11", value: 131108)
!229 = !DIEnumerator(name: "MON_12", value: 131109)
!230 = !DIEnumerator(name: "AM_STR", value: 131110)
!231 = !DIEnumerator(name: "PM_STR", value: 131111)
!232 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!233 = !DIEnumerator(name: "D_FMT", value: 131113)
!234 = !DIEnumerator(name: "T_FMT", value: 131114)
!235 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!236 = !DIEnumerator(name: "ERA", value: 131116)
!237 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!238 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!239 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!240 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!241 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!242 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!243 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!244 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!245 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!246 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!247 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!248 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!249 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!250 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!251 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!252 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!253 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!254 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!255 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!256 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!257 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!258 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!259 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!260 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!261 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!262 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!263 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!264 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!265 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!266 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!267 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!268 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!269 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!270 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!271 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!272 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!273 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!274 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!275 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!276 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!277 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!278 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!279 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!280 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!281 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!282 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!283 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!284 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!285 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!286 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!287 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!288 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!289 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!290 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!291 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!292 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!293 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!294 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!295 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!296 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!297 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!298 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!299 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!300 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!301 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!302 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!303 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!304 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!305 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!306 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!307 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!308 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!309 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!310 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!311 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!312 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!313 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!314 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!315 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!316 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!317 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!318 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!319 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!320 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!321 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!322 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!323 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!324 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!325 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!326 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!327 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!328 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!329 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!330 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!331 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!332 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!334 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!335 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!336 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!337 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!338 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!339 = !DIEnumerator(name: "CODESET", value: 14)
!340 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!341 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!342 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!343 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!386 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!387 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!389 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!395 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!396 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!411 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!412 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!413 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!414 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!415 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!416 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!417 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!418 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!419 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!420 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!421 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!422 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!423 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!424 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!425 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!426 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!427 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!428 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!429 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!430 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!431 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!432 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!433 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!450 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!451 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!454 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!455 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!456 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!457 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!458 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!459 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!460 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!461 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!462 = !DIEnumerator(name: "THOUSEP", value: 65537)
!463 = !DIEnumerator(name: "__GROUPING", value: 65538)
!464 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!465 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!466 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!467 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!468 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!469 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!470 = !DIEnumerator(name: "__YESSTR", value: 327682)
!471 = !DIEnumerator(name: "__NOSTR", value: 327683)
!472 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!473 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!474 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!475 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!476 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!477 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!478 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!479 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!480 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!481 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!482 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!483 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!484 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!485 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!486 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!487 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!488 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!489 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!490 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!491 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!492 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!494 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!495 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!496 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!497 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!498 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!499 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!500 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!501 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!502 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!503 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!504 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!505 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!506 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!507 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!508 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!525 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!526 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!527 = !{!8, !6, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!529 = !{!184}
!530 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!531 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!532 = distinct !DICompileUnit(language: DW_LANG_C99, file: !533, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!533 = !DIFile(filename: "./lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = distinct !DICompileUnit(language: DW_LANG_C99, file: !535, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !536)
!535 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!536 = !{!6}
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !539, retainedTypes: !544)
!538 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = !{!540}
!540 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !541, line: 41, size: 32, elements: !542)
!541 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = !{!543}
!543 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!544 = !{!8}
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !547, retainedTypes: !561)
!546 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = !{!548}
!548 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !550, file: !549, line: 192, size: 32, elements: !559)
!549 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!550 = distinct !DISubprogram(name: "x2nrealloc", scope: !549, file: !549, line: 180, type: !551, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !554)
!551 = !DISubroutineType(types: !552)
!552 = !{!8, !8, !553, !27}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!554 = !{!555, !556, !557, !558}
!555 = !DILocalVariable(name: "p", arg: 1, scope: !550, file: !549, line: 180, type: !8)
!556 = !DILocalVariable(name: "pn", arg: 2, scope: !550, file: !549, line: 180, type: !553)
!557 = !DILocalVariable(name: "s", arg: 3, scope: !550, file: !549, line: 180, type: !27)
!558 = !DILocalVariable(name: "n", scope: !550, file: !549, line: 182, type: !27)
!559 = !{!560}
!560 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!561 = !{!27, !6, !8}
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!563 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !544)
!565 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !568)
!567 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !{!27}
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!570 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!572 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!574 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !544)
!576 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !544)
!578 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!580 = !{i32 2, !"Dwarf Version", i32 4}
!581 = !{i32 2, !"Debug Info Version", i32 3}
!582 = !{i32 1, !"wchar_size", i32 4}
!583 = !{i32 7, !"PIC Level", i32 2}
!584 = !{i32 7, !"PIE Level", i32 2}
!585 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 44, type: !586, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !16}
!588 = !{!589}
!589 = !DILocalVariable(name: "status", arg: 1, scope: !585, file: !3, line: 44, type: !16)
!590 = !DIExpression()
!591 = !DILocation(line: 44, column: 12, scope: !585)
!592 = !DILocation(line: 46, column: 14, scope: !593)
!593 = distinct !DILexicalBlock(scope: !585, file: !3, line: 46, column: 7)
!594 = !DILocation(line: 46, column: 7, scope: !585)
!595 = !DILocation(line: 47, column: 5, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !3, line: 47, column: 5)
!597 = !{!598, !598, i64 0}
!598 = !{!"any pointer", !599, i64 0}
!599 = !{!"omnipotent char", !600, i64 0}
!600 = !{!"Simple C/C++ TBAA"}
!601 = !DILocation(line: 50, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !593, file: !3, line: 49, column: 5)
!603 = !DILocation(line: 54, column: 7, scope: !602)
!604 = !DILocation(line: 59, column: 7, scope: !602)
!605 = !DILocation(line: 62, column: 7, scope: !602)
!606 = !DILocation(line: 63, column: 7, scope: !602)
!607 = !DILocation(line: 64, column: 7, scope: !602)
!608 = !DILocation(line: 642, column: 15, scope: !34, inlinedAt: !609)
!609 = distinct !DILocation(line: 72, column: 7, scope: !602)
!610 = !DILocation(line: 651, column: 3, scope: !34, inlinedAt: !609)
!611 = !DILocation(line: 655, column: 29, scope: !34, inlinedAt: !609)
!612 = !DILocation(line: 655, column: 15, scope: !34, inlinedAt: !609)
!613 = !DILocation(line: 656, column: 7, scope: !614, inlinedAt: !609)
!614 = distinct !DILexicalBlock(scope: !34, file: !35, line: 656, column: 7)
!615 = !DILocation(line: 656, column: 19, scope: !614, inlinedAt: !609)
!616 = !DILocation(line: 656, column: 22, scope: !614, inlinedAt: !609)
!617 = !DILocation(line: 656, column: 7, scope: !34, inlinedAt: !609)
!618 = !DILocation(line: 662, column: 7, scope: !619, inlinedAt: !609)
!619 = distinct !DILexicalBlock(scope: !614, file: !35, line: 657, column: 5)
!620 = !DILocation(line: 664, column: 5, scope: !619, inlinedAt: !609)
!621 = !DILocation(line: 665, column: 3, scope: !34, inlinedAt: !609)
!622 = !DILocation(line: 667, column: 3, scope: !34, inlinedAt: !609)
!623 = !DILocation(line: 74, column: 3, scope: !585)
!624 = !DILocation(line: 78, column: 11, scope: !13)
!625 = !DILocation(line: 78, column: 24, scope: !13)
!626 = !DILocation(line: 81, column: 8, scope: !13)
!627 = !DILocation(line: 86, column: 21, scope: !13)
!628 = !DILocation(line: 86, column: 3, scope: !13)
!629 = !DILocation(line: 87, column: 3, scope: !13)
!630 = !DILocation(line: 88, column: 3, scope: !13)
!631 = !DILocation(line: 89, column: 3, scope: !13)
!632 = !DILocation(line: 91, column: 3, scope: !13)
!633 = !DILocation(line: 93, column: 3, scope: !13)
!634 = !DILocation(line: 95, column: 15, scope: !31)
!635 = !DILocation(line: 95, column: 11, scope: !31)
!636 = !DILocation(line: 97, column: 11, scope: !31)
!637 = distinct !{!637, !633, !638}
!638 = !DILocation(line: 112, column: 5, scope: !13)
!639 = !DILocation(line: 106, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !31, file: !3, line: 101, column: 9)
!641 = !DILocation(line: 107, column: 9, scope: !640)
!642 = !DILocation(line: 110, column: 11, scope: !640)
!643 = !DILocation(line: 114, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !13, file: !3, line: 114, column: 7)
!645 = !{!646, !646, i64 0}
!646 = !{!"int", !599, i64 0}
!647 = !DILocation(line: 114, column: 12, scope: !644)
!648 = !DILocation(line: 114, column: 7, scope: !13)
!649 = !DILocation(line: 116, column: 20, scope: !650)
!650 = distinct !DILexicalBlock(scope: !644, file: !3, line: 115, column: 5)
!651 = !DILocation(line: 116, column: 7, scope: !650)
!652 = !DILocation(line: 117, column: 7, scope: !650)
!653 = !DILocation(line: 120, column: 3, scope: !654)
!654 = distinct !DILexicalBlock(scope: !13, file: !3, line: 120, column: 3)
!655 = !DILocation(line: 122, column: 16, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 121, column: 5)
!657 = distinct !DILexicalBlock(scope: !654, file: !3, line: 120, column: 3)
!658 = !DILocation(line: 82, column: 15, scope: !13)
!659 = !DILocation(line: 123, column: 13, scope: !656)
!660 = !DILocation(line: 83, column: 10, scope: !13)
!661 = !DILocation(line: 125, column: 13, scope: !662)
!662 = distinct !DILexicalBlock(scope: !656, file: !3, line: 125, column: 11)
!663 = !DILocation(line: 125, column: 11, scope: !656)
!664 = !DILocation(line: 131, column: 7, scope: !656)
!665 = !DILocalVariable(name: "__c", arg: 1, scope: !666, file: !667, line: 105, type: !16)
!666 = distinct !DISubprogram(name: "putchar_unlocked", scope: !667, file: !667, line: 105, type: !668, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !670)
!667 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = !DISubroutineType(types: !669)
!669 = !{!16, !16}
!670 = !{!665}
!671 = !DILocation(line: 105, column: 23, scope: !666, inlinedAt: !672)
!672 = distinct !DILocation(line: 132, column: 7, scope: !656)
!673 = !DILocation(line: 107, column: 10, scope: !666, inlinedAt: !672)
!674 = !{!675, !598, i64 40}
!675 = !{!"_IO_FILE", !646, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !598, i64 40, !598, i64 48, !598, i64 56, !598, i64 64, !598, i64 72, !598, i64 80, !598, i64 88, !598, i64 96, !598, i64 104, !646, i64 112, !646, i64 116, !676, i64 120, !677, i64 128, !599, i64 130, !599, i64 131, !598, i64 136, !676, i64 144, !598, i64 152, !598, i64 160, !598, i64 168, !598, i64 176, !676, i64 184, !646, i64 192, !599, i64 196}
!676 = !{!"long", !599, i64 0}
!677 = !{!"short", !599, i64 0}
!678 = !{!675, !598, i64 48}
!679 = !{!"branch_weights", i32 2000, i32 1}
!680 = !{!599, !599, i64 0}
!681 = !DILocation(line: 120, column: 31, scope: !657)
!682 = !DILocation(line: 120, column: 17, scope: !657)
!683 = distinct !{!683, !653, !684}
!684 = !DILocation(line: 133, column: 5, scope: !654)
!685 = !DILocation(line: 136, column: 1, scope: !13)
!686 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !76, file: !76, line: 41, type: !36, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !687)
!687 = !{!688}
!688 = !DILocalVariable(name: "file", arg: 1, scope: !686, file: !76, line: 41, type: !24)
!689 = !DILocation(line: 41, column: 41, scope: !686)
!690 = !DILocation(line: 43, column: 13, scope: !686)
!691 = !DILocation(line: 44, column: 1, scope: !686)
!692 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !76, file: !76, line: 78, type: !693, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !22}
!695 = !{!696}
!696 = !DILocalVariable(name: "ignore", arg: 1, scope: !692, file: !76, line: 78, type: !22)
!697 = !DILocation(line: 78, column: 37, scope: !692)
!698 = !DILocation(line: 80, column: 16, scope: !692)
!699 = !{!700, !700, i64 0}
!700 = !{!"_Bool", !599, i64 0}
!701 = !DILocation(line: 81, column: 1, scope: !692)
!702 = distinct !DISubprogram(name: "close_stdout", scope: !76, file: !76, line: 107, type: !703, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{null}
!705 = !{!706}
!706 = !DILocalVariable(name: "write_error", scope: !707, file: !76, line: 112, type: !24)
!707 = distinct !DILexicalBlock(scope: !708, file: !76, line: 111, column: 5)
!708 = distinct !DILexicalBlock(scope: !702, file: !76, line: 109, column: 7)
!709 = !DILocation(line: 109, column: 21, scope: !708)
!710 = !DILocation(line: 109, column: 7, scope: !708)
!711 = !DILocation(line: 109, column: 29, scope: !708)
!712 = !DILocation(line: 110, column: 7, scope: !708)
!713 = !DILocation(line: 110, column: 12, scope: !708)
!714 = !{i8 0, i8 2}
!715 = !DILocation(line: 114, column: 19, scope: !716)
!716 = distinct !DILexicalBlock(scope: !707, file: !76, line: 113, column: 11)
!717 = !DILocation(line: 110, column: 25, scope: !708)
!718 = !DILocation(line: 110, column: 28, scope: !708)
!719 = !DILocation(line: 110, column: 34, scope: !708)
!720 = !DILocation(line: 109, column: 7, scope: !702)
!721 = !DILocation(line: 112, column: 33, scope: !707)
!722 = !DILocation(line: 112, column: 19, scope: !707)
!723 = !DILocation(line: 113, column: 11, scope: !716)
!724 = !DILocation(line: 113, column: 11, scope: !707)
!725 = !DILocation(line: 114, column: 36, scope: !716)
!726 = !DILocation(line: 114, column: 9, scope: !716)
!727 = !DILocation(line: 117, column: 9, scope: !716)
!728 = !DILocation(line: 119, column: 14, scope: !707)
!729 = !DILocation(line: 119, column: 7, scope: !707)
!730 = !DILocation(line: 122, column: 22, scope: !731)
!731 = distinct !DILexicalBlock(scope: !702, file: !76, line: 122, column: 8)
!732 = !DILocation(line: 122, column: 8, scope: !731)
!733 = !DILocation(line: 122, column: 30, scope: !731)
!734 = !DILocation(line: 122, column: 8, scope: !702)
!735 = !DILocation(line: 123, column: 13, scope: !731)
!736 = !DILocation(line: 123, column: 6, scope: !731)
!737 = !DILocation(line: 124, column: 1, scope: !702)
!738 = distinct !DISubprogram(name: "dir_len", scope: !739, file: !739, line: 32, type: !740, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !742)
!739 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!740 = !DISubroutineType(types: !741)
!741 = !{!27, !24}
!742 = !{!743, !744, !745}
!743 = !DILocalVariable(name: "file", arg: 1, scope: !738, file: !739, line: 32, type: !24)
!744 = !DILocalVariable(name: "prefix_length", scope: !738, file: !739, line: 34, type: !27)
!745 = !DILocalVariable(name: "length", scope: !738, file: !739, line: 35, type: !27)
!746 = !DILocation(line: 32, column: 22, scope: !738)
!747 = !DILocation(line: 34, column: 10, scope: !738)
!748 = !DILocation(line: 41, column: 24, scope: !738)
!749 = !DILocation(line: 38, column: 20, scope: !738)
!750 = !DILocation(line: 48, column: 17, scope: !751)
!751 = distinct !DILexicalBlock(scope: !738, file: !739, line: 48, column: 3)
!752 = !DILocation(line: 48, column: 39, scope: !751)
!753 = !DILocation(line: 35, column: 10, scope: !738)
!754 = !DILocation(line: 49, column: 22, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !739, line: 48, column: 3)
!756 = !DILocation(line: 48, column: 3, scope: !751)
!757 = !DILocation(line: 50, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !739, line: 50, column: 9)
!759 = distinct !{!759, !756, !760}
!760 = !DILocation(line: 51, column: 7, scope: !751)
!761 = !DILocation(line: 50, column: 9, scope: !755)
!762 = !DILocation(line: 52, column: 3, scope: !738)
!763 = distinct !DISubprogram(name: "mdir_name", scope: !739, file: !739, line: 71, type: !764, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!6, !24}
!766 = !{!767, !768, !769, !770}
!767 = !DILocalVariable(name: "file", arg: 1, scope: !763, file: !739, line: 71, type: !24)
!768 = !DILocalVariable(name: "length", scope: !763, file: !739, line: 73, type: !27)
!769 = !DILocalVariable(name: "append_dot", scope: !763, file: !739, line: 74, type: !22)
!770 = !DILocalVariable(name: "dir", scope: !763, file: !739, line: 78, type: !6)
!771 = !DILocation(line: 71, column: 24, scope: !763)
!772 = !DILocation(line: 32, column: 22, scope: !738, inlinedAt: !773)
!773 = distinct !DILocation(line: 73, column: 19, scope: !763)
!774 = !DILocation(line: 34, column: 10, scope: !738, inlinedAt: !773)
!775 = !DILocation(line: 41, column: 24, scope: !738, inlinedAt: !773)
!776 = !DILocation(line: 38, column: 20, scope: !738, inlinedAt: !773)
!777 = !DILocation(line: 48, column: 17, scope: !751, inlinedAt: !773)
!778 = !DILocation(line: 48, column: 39, scope: !751, inlinedAt: !773)
!779 = !DILocation(line: 35, column: 10, scope: !738, inlinedAt: !773)
!780 = !DILocation(line: 49, column: 22, scope: !755, inlinedAt: !773)
!781 = !DILocation(line: 48, column: 3, scope: !751, inlinedAt: !773)
!782 = !DILocation(line: 50, column: 11, scope: !758, inlinedAt: !773)
!783 = !DILocation(line: 50, column: 9, scope: !755, inlinedAt: !773)
!784 = !DILocation(line: 73, column: 10, scope: !763)
!785 = !DILocation(line: 74, column: 29, scope: !763)
!786 = !DILocation(line: 78, column: 32, scope: !763)
!787 = !DILocation(line: 78, column: 30, scope: !763)
!788 = !DILocation(line: 78, column: 43, scope: !763)
!789 = !DILocation(line: 78, column: 15, scope: !763)
!790 = !DILocation(line: 78, column: 9, scope: !763)
!791 = !DILocation(line: 79, column: 8, scope: !792)
!792 = distinct !DILexicalBlock(scope: !763, file: !739, line: 79, column: 7)
!793 = !DILocation(line: 79, column: 7, scope: !763)
!794 = !DILocation(line: 81, column: 3, scope: !763)
!795 = !DILocation(line: 82, column: 7, scope: !763)
!796 = !DILocation(line: 83, column: 19, scope: !797)
!797 = distinct !DILexicalBlock(scope: !763, file: !739, line: 82, column: 7)
!798 = !DILocation(line: 83, column: 5, scope: !797)
!799 = !DILocation(line: 84, column: 3, scope: !763)
!800 = !DILocation(line: 84, column: 15, scope: !763)
!801 = !DILocation(line: 85, column: 3, scope: !763)
!802 = !DILocation(line: 86, column: 1, scope: !763)
!803 = distinct !DISubprogram(name: "last_component", scope: !804, file: !804, line: 30, type: !764, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !534, variables: !805)
!804 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!805 = !{!806, !807, !808, !809}
!806 = !DILocalVariable(name: "name", arg: 1, scope: !803, file: !804, line: 30, type: !24)
!807 = !DILocalVariable(name: "base", scope: !803, file: !804, line: 32, type: !24)
!808 = !DILocalVariable(name: "p", scope: !803, file: !804, line: 33, type: !24)
!809 = !DILocalVariable(name: "saw_slash", scope: !803, file: !804, line: 34, type: !22)
!810 = !DILocation(line: 30, column: 29, scope: !803)
!811 = !DILocation(line: 32, column: 15, scope: !803)
!812 = !DILocation(line: 34, column: 8, scope: !803)
!813 = !DILocation(line: 36, column: 3, scope: !803)
!814 = !DILocation(line: 36, column: 10, scope: !803)
!815 = !DILocation(line: 37, column: 9, scope: !803)
!816 = distinct !{!816, !813, !815}
!817 = !DILocation(line: 39, column: 3, scope: !818)
!818 = distinct !DILexicalBlock(scope: !803, file: !804, line: 39, column: 3)
!819 = !DILocation(line: 39, column: 18, scope: !820)
!820 = distinct !DILexicalBlock(scope: !818, file: !804, line: 39, column: 3)
!821 = !DILocation(line: 33, column: 15, scope: !803)
!822 = !DILocation(line: 43, column: 16, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !804, line: 43, column: 16)
!824 = distinct !DILexicalBlock(scope: !825, file: !804, line: 41, column: 11)
!825 = distinct !DILexicalBlock(scope: !820, file: !804, line: 40, column: 5)
!826 = !DILocation(line: 43, column: 16, scope: !824)
!827 = !DILocation(line: 39, column: 23, scope: !820)
!828 = !DILocation(line: 39, column: 3, scope: !820)
!829 = distinct !{!829, !817, !830}
!830 = !DILocation(line: 48, column: 5, scope: !818)
!831 = !DILocation(line: 50, column: 3, scope: !803)
!832 = distinct !DISubprogram(name: "base_len", scope: !804, file: !804, line: 58, type: !740, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !534, variables: !833)
!833 = !{!834, !835, !836}
!834 = !DILocalVariable(name: "name", arg: 1, scope: !832, file: !804, line: 58, type: !24)
!835 = !DILocalVariable(name: "len", scope: !832, file: !804, line: 60, type: !27)
!836 = !DILocalVariable(name: "prefix_len", scope: !832, file: !804, line: 61, type: !27)
!837 = !DILocation(line: 58, column: 23, scope: !832)
!838 = !DILocation(line: 61, column: 10, scope: !832)
!839 = !DILocation(line: 63, column: 14, scope: !840)
!840 = distinct !DILexicalBlock(scope: !832, file: !804, line: 63, column: 3)
!841 = !DILocation(line: 60, column: 10, scope: !832)
!842 = !DILocation(line: 63, column: 32, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !804, line: 63, column: 3)
!844 = !DILocation(line: 63, column: 38, scope: !843)
!845 = !DILocation(line: 63, column: 41, scope: !843)
!846 = distinct !{!846, !847, !848}
!847 = !DILocation(line: 63, column: 3, scope: !840)
!848 = !DILocation(line: 64, column: 5, scope: !840)
!849 = !DILocation(line: 74, column: 3, scope: !832)
!850 = distinct !DISubprogram(name: "set_program_name", scope: !90, file: !90, line: 39, type: !36, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !851)
!851 = !{!852, !853, !854}
!852 = !DILocalVariable(name: "argv0", arg: 1, scope: !850, file: !90, line: 39, type: !24)
!853 = !DILocalVariable(name: "slash", scope: !850, file: !90, line: 46, type: !24)
!854 = !DILocalVariable(name: "base", scope: !850, file: !90, line: 47, type: !24)
!855 = !DILocation(line: 39, column: 31, scope: !850)
!856 = !DILocation(line: 51, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !850, file: !90, line: 51, column: 7)
!858 = !DILocation(line: 51, column: 7, scope: !850)
!859 = !DILocation(line: 55, column: 14, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !90, line: 52, column: 5)
!861 = !DILocation(line: 54, column: 7, scope: !860)
!862 = !DILocation(line: 56, column: 7, scope: !860)
!863 = !DILocation(line: 59, column: 11, scope: !850)
!864 = !DILocation(line: 46, column: 15, scope: !850)
!865 = !DILocation(line: 60, column: 17, scope: !850)
!866 = !DILocation(line: 60, column: 33, scope: !850)
!867 = !DILocation(line: 60, column: 11, scope: !850)
!868 = !DILocation(line: 47, column: 15, scope: !850)
!869 = !DILocation(line: 61, column: 12, scope: !870)
!870 = distinct !DILexicalBlock(scope: !850, file: !90, line: 61, column: 7)
!871 = !DILocation(line: 61, column: 20, scope: !870)
!872 = !DILocation(line: 61, column: 25, scope: !870)
!873 = !DILocation(line: 61, column: 42, scope: !870)
!874 = !DILocation(line: 61, column: 28, scope: !870)
!875 = !DILocation(line: 61, column: 61, scope: !870)
!876 = !DILocation(line: 61, column: 7, scope: !850)
!877 = !DILocation(line: 64, column: 11, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !90, line: 64, column: 11)
!879 = distinct !DILexicalBlock(scope: !870, file: !90, line: 62, column: 5)
!880 = !DILocation(line: 64, column: 36, scope: !878)
!881 = !DILocation(line: 64, column: 11, scope: !879)
!882 = !DILocation(line: 66, column: 24, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !90, line: 65, column: 9)
!884 = !DILocation(line: 70, column: 41, scope: !883)
!885 = !DILocation(line: 72, column: 9, scope: !883)
!886 = !DILocation(line: 84, column: 16, scope: !850)
!887 = !DILocation(line: 90, column: 27, scope: !850)
!888 = !DILocation(line: 92, column: 1, scope: !850)
!889 = distinct !DISubprogram(name: "clone_quoting_options", scope: !135, file: !135, line: 114, type: !890, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !893)
!890 = !DISubroutineType(types: !891)
!891 = !{!892, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!893 = !{!894, !895, !896}
!894 = !DILocalVariable(name: "o", arg: 1, scope: !889, file: !135, line: 114, type: !892)
!895 = !DILocalVariable(name: "e", scope: !889, file: !135, line: 116, type: !16)
!896 = !DILocalVariable(name: "p", scope: !889, file: !135, line: 117, type: !892)
!897 = !DILocation(line: 114, column: 48, scope: !889)
!898 = !DILocation(line: 116, column: 11, scope: !889)
!899 = !DILocation(line: 116, column: 7, scope: !889)
!900 = !DILocation(line: 117, column: 40, scope: !889)
!901 = !DILocation(line: 117, column: 31, scope: !889)
!902 = !DILocation(line: 117, column: 27, scope: !889)
!903 = !DILocation(line: 119, column: 9, scope: !889)
!904 = !DILocation(line: 120, column: 3, scope: !889)
!905 = distinct !DISubprogram(name: "get_quoting_style", scope: !135, file: !135, line: 125, type: !906, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !910)
!906 = !DISubroutineType(types: !907)
!907 = !{!96, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!910 = !{!911}
!911 = !DILocalVariable(name: "o", arg: 1, scope: !905, file: !135, line: 125, type: !908)
!912 = !DILocation(line: 125, column: 50, scope: !905)
!913 = !DILocation(line: 127, column: 11, scope: !905)
!914 = !DILocation(line: 127, column: 46, scope: !905)
!915 = !{!916, !599, i64 0}
!916 = !{!"quoting_options", !599, i64 0, !646, i64 4, !599, i64 8, !598, i64 40, !598, i64 48}
!917 = !DILocation(line: 127, column: 3, scope: !905)
!918 = distinct !DISubprogram(name: "set_quoting_style", scope: !135, file: !135, line: 133, type: !919, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !921)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !892, !96}
!921 = !{!922, !923}
!922 = !DILocalVariable(name: "o", arg: 1, scope: !918, file: !135, line: 133, type: !892)
!923 = !DILocalVariable(name: "s", arg: 2, scope: !918, file: !135, line: 133, type: !96)
!924 = !DILocation(line: 133, column: 44, scope: !918)
!925 = !DILocation(line: 133, column: 66, scope: !918)
!926 = !DILocation(line: 135, column: 4, scope: !918)
!927 = !DILocation(line: 135, column: 39, scope: !918)
!928 = !DILocation(line: 135, column: 45, scope: !918)
!929 = !DILocation(line: 136, column: 1, scope: !918)
!930 = distinct !DISubprogram(name: "set_char_quoting", scope: !135, file: !135, line: 144, type: !931, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!16, !892, !7, !16}
!933 = !{!934, !935, !936, !937, !938, !940, !941}
!934 = !DILocalVariable(name: "o", arg: 1, scope: !930, file: !135, line: 144, type: !892)
!935 = !DILocalVariable(name: "c", arg: 2, scope: !930, file: !135, line: 144, type: !7)
!936 = !DILocalVariable(name: "i", arg: 3, scope: !930, file: !135, line: 144, type: !16)
!937 = !DILocalVariable(name: "uc", scope: !930, file: !135, line: 146, type: !9)
!938 = !DILocalVariable(name: "p", scope: !930, file: !135, line: 147, type: !939)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!940 = !DILocalVariable(name: "shift", scope: !930, file: !135, line: 149, type: !16)
!941 = !DILocalVariable(name: "r", scope: !930, file: !135, line: 150, type: !16)
!942 = !DILocation(line: 144, column: 43, scope: !930)
!943 = !DILocation(line: 144, column: 51, scope: !930)
!944 = !DILocation(line: 144, column: 58, scope: !930)
!945 = !DILocation(line: 146, column: 17, scope: !930)
!946 = !DILocation(line: 148, column: 6, scope: !930)
!947 = !DILocation(line: 148, column: 62, scope: !930)
!948 = !DILocation(line: 148, column: 57, scope: !930)
!949 = !DILocation(line: 147, column: 17, scope: !930)
!950 = !DILocation(line: 149, column: 18, scope: !930)
!951 = !DILocation(line: 149, column: 15, scope: !930)
!952 = !DILocation(line: 149, column: 7, scope: !930)
!953 = !DILocation(line: 150, column: 12, scope: !930)
!954 = !DILocation(line: 150, column: 15, scope: !930)
!955 = !DILocation(line: 150, column: 25, scope: !930)
!956 = !DILocation(line: 150, column: 7, scope: !930)
!957 = !DILocation(line: 151, column: 13, scope: !930)
!958 = !DILocation(line: 151, column: 18, scope: !930)
!959 = !DILocation(line: 151, column: 23, scope: !930)
!960 = !DILocation(line: 151, column: 6, scope: !930)
!961 = !DILocation(line: 152, column: 3, scope: !930)
!962 = distinct !DISubprogram(name: "set_quoting_flags", scope: !135, file: !135, line: 160, type: !963, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{!16, !892, !16}
!965 = !{!966, !967, !968}
!966 = !DILocalVariable(name: "o", arg: 1, scope: !962, file: !135, line: 160, type: !892)
!967 = !DILocalVariable(name: "i", arg: 2, scope: !962, file: !135, line: 160, type: !16)
!968 = !DILocalVariable(name: "r", scope: !962, file: !135, line: 162, type: !16)
!969 = !DILocation(line: 160, column: 44, scope: !962)
!970 = !DILocation(line: 160, column: 51, scope: !962)
!971 = !DILocation(line: 163, column: 8, scope: !972)
!972 = distinct !DILexicalBlock(scope: !962, file: !135, line: 163, column: 7)
!973 = !DILocation(line: 163, column: 7, scope: !962)
!974 = !DILocation(line: 165, column: 10, scope: !962)
!975 = !{!916, !646, i64 4}
!976 = !DILocation(line: 162, column: 7, scope: !962)
!977 = !DILocation(line: 166, column: 12, scope: !962)
!978 = !DILocation(line: 167, column: 3, scope: !962)
!979 = distinct !DISubprogram(name: "set_custom_quoting", scope: !135, file: !135, line: 171, type: !980, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !892, !24, !24}
!982 = !{!983, !984, !985}
!983 = !DILocalVariable(name: "o", arg: 1, scope: !979, file: !135, line: 171, type: !892)
!984 = !DILocalVariable(name: "left_quote", arg: 2, scope: !979, file: !135, line: 172, type: !24)
!985 = !DILocalVariable(name: "right_quote", arg: 3, scope: !979, file: !135, line: 172, type: !24)
!986 = !DILocation(line: 171, column: 45, scope: !979)
!987 = !DILocation(line: 172, column: 33, scope: !979)
!988 = !DILocation(line: 172, column: 57, scope: !979)
!989 = !DILocation(line: 174, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !979, file: !135, line: 174, column: 7)
!991 = !DILocation(line: 174, column: 7, scope: !979)
!992 = !DILocation(line: 176, column: 6, scope: !979)
!993 = !DILocation(line: 176, column: 12, scope: !979)
!994 = !DILocation(line: 177, column: 8, scope: !995)
!995 = distinct !DILexicalBlock(scope: !979, file: !135, line: 177, column: 7)
!996 = !DILocation(line: 177, column: 23, scope: !995)
!997 = !DILocation(line: 177, column: 19, scope: !995)
!998 = !DILocation(line: 178, column: 5, scope: !995)
!999 = !DILocation(line: 179, column: 6, scope: !979)
!1000 = !DILocation(line: 179, column: 17, scope: !979)
!1001 = !{!916, !598, i64 40}
!1002 = !DILocation(line: 180, column: 6, scope: !979)
!1003 = !DILocation(line: 180, column: 18, scope: !979)
!1004 = !{!916, !598, i64 48}
!1005 = !DILocation(line: 181, column: 1, scope: !979)
!1006 = distinct !DISubprogram(name: "quotearg_buffer", scope: !135, file: !135, line: 776, type: !1007, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!27, !6, !27, !24, !27, !908}
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017}
!1010 = !DILocalVariable(name: "buffer", arg: 1, scope: !1006, file: !135, line: 776, type: !6)
!1011 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1006, file: !135, line: 776, type: !27)
!1012 = !DILocalVariable(name: "arg", arg: 3, scope: !1006, file: !135, line: 777, type: !24)
!1013 = !DILocalVariable(name: "argsize", arg: 4, scope: !1006, file: !135, line: 777, type: !27)
!1014 = !DILocalVariable(name: "o", arg: 5, scope: !1006, file: !135, line: 778, type: !908)
!1015 = !DILocalVariable(name: "p", scope: !1006, file: !135, line: 780, type: !908)
!1016 = !DILocalVariable(name: "e", scope: !1006, file: !135, line: 781, type: !16)
!1017 = !DILocalVariable(name: "r", scope: !1006, file: !135, line: 782, type: !27)
!1018 = !DILocation(line: 776, column: 24, scope: !1006)
!1019 = !DILocation(line: 776, column: 39, scope: !1006)
!1020 = !DILocation(line: 777, column: 30, scope: !1006)
!1021 = !DILocation(line: 777, column: 42, scope: !1006)
!1022 = !DILocation(line: 778, column: 48, scope: !1006)
!1023 = !DILocation(line: 780, column: 37, scope: !1006)
!1024 = !DILocation(line: 780, column: 33, scope: !1006)
!1025 = !DILocation(line: 781, column: 11, scope: !1006)
!1026 = !DILocation(line: 781, column: 7, scope: !1006)
!1027 = !DILocation(line: 783, column: 43, scope: !1006)
!1028 = !DILocation(line: 783, column: 53, scope: !1006)
!1029 = !DILocation(line: 783, column: 60, scope: !1006)
!1030 = !DILocation(line: 784, column: 43, scope: !1006)
!1031 = !DILocation(line: 784, column: 58, scope: !1006)
!1032 = !DILocation(line: 782, column: 14, scope: !1006)
!1033 = !DILocation(line: 782, column: 10, scope: !1006)
!1034 = !DILocation(line: 785, column: 9, scope: !1006)
!1035 = !DILocation(line: 786, column: 3, scope: !1006)
!1036 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !135, file: !135, line: 248, type: !1037, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1041)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!27, !6, !27, !24, !27, !96, !16, !1039, !24, !24}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1066, !1067, !1068, !1069, !1070, !1073, !1074, !1090, !1093, !1094, !1101}
!1042 = !DILocalVariable(name: "buffer", arg: 1, scope: !1036, file: !135, line: 248, type: !6)
!1043 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1036, file: !135, line: 248, type: !27)
!1044 = !DILocalVariable(name: "arg", arg: 3, scope: !1036, file: !135, line: 249, type: !24)
!1045 = !DILocalVariable(name: "argsize", arg: 4, scope: !1036, file: !135, line: 249, type: !27)
!1046 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1036, file: !135, line: 250, type: !96)
!1047 = !DILocalVariable(name: "flags", arg: 6, scope: !1036, file: !135, line: 250, type: !16)
!1048 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1036, file: !135, line: 251, type: !1039)
!1049 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1036, file: !135, line: 252, type: !24)
!1050 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1036, file: !135, line: 253, type: !24)
!1051 = !DILocalVariable(name: "i", scope: !1036, file: !135, line: 255, type: !27)
!1052 = !DILocalVariable(name: "len", scope: !1036, file: !135, line: 256, type: !27)
!1053 = !DILocalVariable(name: "orig_buffersize", scope: !1036, file: !135, line: 257, type: !27)
!1054 = !DILocalVariable(name: "quote_string", scope: !1036, file: !135, line: 258, type: !24)
!1055 = !DILocalVariable(name: "quote_string_len", scope: !1036, file: !135, line: 259, type: !27)
!1056 = !DILocalVariable(name: "backslash_escapes", scope: !1036, file: !135, line: 260, type: !22)
!1057 = !DILocalVariable(name: "unibyte_locale", scope: !1036, file: !135, line: 261, type: !22)
!1058 = !DILocalVariable(name: "elide_outer_quotes", scope: !1036, file: !135, line: 262, type: !22)
!1059 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1036, file: !135, line: 263, type: !22)
!1060 = !DILocalVariable(name: "encountered_single_quote", scope: !1036, file: !135, line: 264, type: !22)
!1061 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1036, file: !135, line: 265, type: !22)
!1062 = !DILocalVariable(name: "c", scope: !1063, file: !135, line: 394, type: !9)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !135, line: 393, column: 5)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !135, line: 392, column: 3)
!1065 = distinct !DILexicalBlock(scope: !1036, file: !135, line: 392, column: 3)
!1066 = !DILocalVariable(name: "esc", scope: !1063, file: !135, line: 395, type: !9)
!1067 = !DILocalVariable(name: "is_right_quote", scope: !1063, file: !135, line: 396, type: !22)
!1068 = !DILocalVariable(name: "escaping", scope: !1063, file: !135, line: 397, type: !22)
!1069 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1063, file: !135, line: 398, type: !22)
!1070 = !DILocalVariable(name: "m", scope: !1071, file: !135, line: 602, type: !27)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 600, column: 11)
!1072 = distinct !DILexicalBlock(scope: !1063, file: !135, line: 418, column: 9)
!1073 = !DILocalVariable(name: "printable", scope: !1071, file: !135, line: 604, type: !22)
!1074 = !DILocalVariable(name: "mbstate", scope: !1075, file: !135, line: 613, type: !1077)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !135, line: 612, column: 15)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 606, column: 17)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1078, line: 6, baseType: !1079)
!1078 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1080, line: 21, baseType: !1081)
!1080 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 13, size: 64, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1081, file: !1080, line: 15, baseType: !16, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1081, file: !1080, line: 20, baseType: !1085, size: 32, offset: 32)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !1080, line: 16, size: 32, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1085, file: !1080, line: 18, baseType: !148, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1085, file: !1080, line: 19, baseType: !1089, size: 32)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !62)
!1090 = !DILocalVariable(name: "w", scope: !1091, file: !135, line: 623, type: !1092)
!1091 = distinct !DILexicalBlock(scope: !1075, file: !135, line: 622, column: 19)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !28, line: 90, baseType: !16)
!1093 = !DILocalVariable(name: "bytes", scope: !1091, file: !135, line: 624, type: !27)
!1094 = !DILocalVariable(name: "j", scope: !1095, file: !135, line: 649, type: !27)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !135, line: 648, column: 27)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !135, line: 646, column: 29)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !135, line: 641, column: 23)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !135, line: 633, column: 30)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !135, line: 628, column: 30)
!1100 = distinct !DILexicalBlock(scope: !1091, file: !135, line: 626, column: 25)
!1101 = !DILocalVariable(name: "ilim", scope: !1102, file: !135, line: 676, type: !27)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !135, line: 673, column: 15)
!1103 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 672, column: 17)
!1104 = !DILocation(line: 248, column: 33, scope: !1036)
!1105 = !DILocation(line: 248, column: 48, scope: !1036)
!1106 = !DILocation(line: 249, column: 39, scope: !1036)
!1107 = !DILocation(line: 249, column: 51, scope: !1036)
!1108 = !DILocation(line: 250, column: 46, scope: !1036)
!1109 = !DILocation(line: 250, column: 65, scope: !1036)
!1110 = !DILocation(line: 251, column: 47, scope: !1036)
!1111 = !DILocation(line: 252, column: 39, scope: !1036)
!1112 = !DILocation(line: 253, column: 39, scope: !1036)
!1113 = !DILocation(line: 256, column: 10, scope: !1036)
!1114 = !DILocation(line: 257, column: 10, scope: !1036)
!1115 = !DILocation(line: 258, column: 15, scope: !1036)
!1116 = !DILocation(line: 259, column: 10, scope: !1036)
!1117 = !DILocation(line: 260, column: 8, scope: !1036)
!1118 = !DILocation(line: 261, column: 25, scope: !1036)
!1119 = !DILocation(line: 261, column: 36, scope: !1036)
!1120 = !DILocation(line: 262, column: 8, scope: !1036)
!1121 = !DILocation(line: 263, column: 8, scope: !1036)
!1122 = !DILocation(line: 264, column: 8, scope: !1036)
!1123 = !DILocation(line: 265, column: 8, scope: !1036)
!1124 = !DILocation(line: 265, column: 3, scope: !1036)
!1125 = !DILocation(line: 308, column: 3, scope: !1036)
!1126 = !DILocation(line: 315, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1036, file: !135, line: 309, column: 5)
!1128 = !DILocation(line: 315, column: 12, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1127, file: !135, line: 315, column: 11)
!1130 = !DILocation(line: 316, column: 9, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !135, line: 316, column: 9)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !135, line: 316, column: 9)
!1133 = !DILocation(line: 316, column: 9, scope: !1132)
!1134 = !DILocation(line: 354, column: 26, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !135, line: 332, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !135, line: 331, column: 13)
!1137 = distinct !DILexicalBlock(scope: !1127, file: !135, line: 330, column: 7)
!1138 = !DILocation(line: 355, column: 27, scope: !1135)
!1139 = !DILocation(line: 356, column: 11, scope: !1135)
!1140 = !DILocation(line: 357, column: 14, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !135, line: 357, column: 13)
!1142 = !DILocation(line: 357, column: 13, scope: !1137)
!1143 = !DILocation(line: 358, column: 43, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !135, line: 358, column: 11)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !135, line: 358, column: 11)
!1146 = !DILocation(line: 358, column: 11, scope: !1145)
!1147 = !DILocation(line: 359, column: 13, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !135, line: 359, column: 13)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !135, line: 359, column: 13)
!1150 = !DILocation(line: 359, column: 13, scope: !1149)
!1151 = !DILocation(line: 358, column: 70, scope: !1144)
!1152 = distinct !{!1152, !1146, !1153}
!1153 = !DILocation(line: 359, column: 13, scope: !1145)
!1154 = !DILocation(line: 362, column: 28, scope: !1137)
!1155 = !DILocation(line: 364, column: 7, scope: !1127)
!1156 = !DILocation(line: 367, column: 7, scope: !1127)
!1157 = !DILocation(line: 370, column: 7, scope: !1127)
!1158 = !DILocation(line: 373, column: 12, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1127, file: !135, line: 373, column: 11)
!1160 = !DILocation(line: 373, column: 11, scope: !1127)
!1161 = !DILocation(line: 378, column: 12, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1127, file: !135, line: 378, column: 11)
!1163 = !DILocation(line: 378, column: 11, scope: !1127)
!1164 = !DILocation(line: 379, column: 9, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !135, line: 379, column: 9)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !135, line: 379, column: 9)
!1167 = !DILocation(line: 379, column: 9, scope: !1166)
!1168 = !DILocation(line: 386, column: 7, scope: !1127)
!1169 = !DILocation(line: 389, column: 7, scope: !1127)
!1170 = !DILocation(line: 255, column: 10, scope: !1036)
!1171 = !DILocation(line: 392, column: 8, scope: !1065)
!1172 = !DILocation(line: 392, column: 27, scope: !1064)
!1173 = !DILocation(line: 392, column: 19, scope: !1064)
!1174 = !DILocation(line: 392, column: 60, scope: !1064)
!1175 = !DILocation(line: 392, column: 3, scope: !1065)
!1176 = !DILocation(line: 392, column: 41, scope: !1064)
!1177 = !DILocation(line: 392, column: 48, scope: !1064)
!1178 = !DILocation(line: 396, column: 12, scope: !1063)
!1179 = !DILocation(line: 397, column: 12, scope: !1063)
!1180 = !DILocation(line: 398, column: 12, scope: !1063)
!1181 = !DILocation(line: 401, column: 11, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1063, file: !135, line: 400, column: 11)
!1183 = !DILocation(line: 403, column: 17, scope: !1182)
!1184 = !DILocation(line: 404, column: 39, scope: !1182)
!1185 = !DILocation(line: 408, column: 32, scope: !1182)
!1186 = !DILocation(line: 404, column: 19, scope: !1182)
!1187 = !DILocation(line: 404, column: 15, scope: !1182)
!1188 = !DILocation(line: 409, column: 11, scope: !1182)
!1189 = !DILocation(line: 409, column: 26, scope: !1182)
!1190 = !DILocation(line: 409, column: 14, scope: !1182)
!1191 = !DILocation(line: 409, column: 63, scope: !1182)
!1192 = !DILocation(line: 400, column: 11, scope: !1063)
!1193 = !DILocation(line: 416, column: 11, scope: !1063)
!1194 = !DILocation(line: 394, column: 21, scope: !1063)
!1195 = !DILocation(line: 417, column: 7, scope: !1063)
!1196 = !DILocation(line: 420, column: 15, scope: !1072)
!1197 = !DILocation(line: 422, column: 15, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !135, line: 422, column: 15)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !135, line: 421, column: 13)
!1200 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 420, column: 15)
!1201 = !DILocation(line: 422, column: 15, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !135, line: 422, column: 15)
!1203 = !DILocation(line: 422, column: 15, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !135, line: 422, column: 15)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !135, line: 422, column: 15)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !135, line: 422, column: 15)
!1207 = !DILocation(line: 422, column: 15, scope: !1205)
!1208 = !DILocation(line: 422, column: 15, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !135, line: 422, column: 15)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !135, line: 422, column: 15)
!1211 = !DILocation(line: 422, column: 15, scope: !1210)
!1212 = !DILocation(line: 422, column: 15, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !135, line: 422, column: 15)
!1214 = distinct !DILexicalBlock(scope: !1206, file: !135, line: 422, column: 15)
!1215 = !DILocation(line: 422, column: 15, scope: !1214)
!1216 = !DILocation(line: 422, column: 15, scope: !1206)
!1217 = !DILocation(line: 422, column: 15, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !135, line: 422, column: 15)
!1219 = distinct !DILexicalBlock(scope: !1198, file: !135, line: 422, column: 15)
!1220 = !DILocation(line: 422, column: 15, scope: !1219)
!1221 = !DILocation(line: 430, column: 19, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1199, file: !135, line: 429, column: 19)
!1223 = !DILocation(line: 430, column: 24, scope: !1222)
!1224 = !DILocation(line: 430, column: 28, scope: !1222)
!1225 = !DILocation(line: 430, column: 38, scope: !1222)
!1226 = !DILocation(line: 430, column: 48, scope: !1222)
!1227 = !DILocation(line: 430, column: 59, scope: !1222)
!1228 = !DILocation(line: 432, column: 19, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !135, line: 432, column: 19)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !135, line: 432, column: 19)
!1231 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 431, column: 17)
!1232 = !DILocation(line: 432, column: 19, scope: !1230)
!1233 = !DILocation(line: 433, column: 19, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !135, line: 433, column: 19)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !135, line: 433, column: 19)
!1236 = !DILocation(line: 433, column: 19, scope: !1235)
!1237 = !DILocation(line: 434, column: 17, scope: !1231)
!1238 = !DILocation(line: 441, column: 20, scope: !1200)
!1239 = !DILocation(line: 446, column: 11, scope: !1072)
!1240 = !DILocation(line: 449, column: 19, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 447, column: 13)
!1242 = !DILocation(line: 455, column: 19, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1241, file: !135, line: 454, column: 19)
!1244 = !DILocation(line: 455, column: 24, scope: !1243)
!1245 = !DILocation(line: 455, column: 28, scope: !1243)
!1246 = !DILocation(line: 455, column: 38, scope: !1243)
!1247 = !DILocation(line: 455, column: 47, scope: !1243)
!1248 = !DILocation(line: 455, column: 41, scope: !1243)
!1249 = !DILocation(line: 455, column: 52, scope: !1243)
!1250 = !DILocation(line: 454, column: 19, scope: !1241)
!1251 = !DILocation(line: 456, column: 25, scope: !1243)
!1252 = !DILocation(line: 456, column: 17, scope: !1243)
!1253 = !DILocation(line: 463, column: 25, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1243, file: !135, line: 457, column: 19)
!1255 = !DILocation(line: 467, column: 21, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !135, line: 467, column: 21)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !135, line: 467, column: 21)
!1258 = !DILocation(line: 467, column: 21, scope: !1257)
!1259 = !DILocation(line: 468, column: 21, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !135, line: 468, column: 21)
!1261 = distinct !DILexicalBlock(scope: !1254, file: !135, line: 468, column: 21)
!1262 = !DILocation(line: 468, column: 21, scope: !1261)
!1263 = !DILocation(line: 469, column: 21, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !135, line: 469, column: 21)
!1265 = distinct !DILexicalBlock(scope: !1254, file: !135, line: 469, column: 21)
!1266 = !DILocation(line: 469, column: 21, scope: !1265)
!1267 = !DILocation(line: 470, column: 21, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !135, line: 470, column: 21)
!1269 = distinct !DILexicalBlock(scope: !1254, file: !135, line: 470, column: 21)
!1270 = !DILocation(line: 470, column: 21, scope: !1269)
!1271 = !DILocation(line: 471, column: 21, scope: !1254)
!1272 = !DILocation(line: 395, column: 21, scope: !1063)
!1273 = !DILocation(line: 484, column: 31, scope: !1072)
!1274 = !DILocation(line: 485, column: 31, scope: !1072)
!1275 = !DILocation(line: 487, column: 31, scope: !1072)
!1276 = !DILocation(line: 488, column: 31, scope: !1072)
!1277 = !DILocation(line: 489, column: 31, scope: !1072)
!1278 = !DILocation(line: 492, column: 15, scope: !1072)
!1279 = !DILocation(line: 494, column: 19, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !135, line: 493, column: 13)
!1281 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 492, column: 15)
!1282 = !DILocation(line: 501, column: 33, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 501, column: 15)
!1284 = !DILocation(line: 506, column: 15, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 505, column: 15)
!1286 = !DILocation(line: 510, column: 15, scope: !1072)
!1287 = !DILocation(line: 518, column: 26, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 518, column: 15)
!1289 = !DILocation(line: 518, column: 15, scope: !1072)
!1290 = !DILocation(line: 518, column: 40, scope: !1288)
!1291 = !DILocation(line: 518, column: 47, scope: !1288)
!1292 = !DILocation(line: 522, column: 17, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 522, column: 15)
!1294 = !DILocation(line: 518, column: 18, scope: !1288)
!1295 = !DILocation(line: 518, column: 65, scope: !1288)
!1296 = !DILocation(line: 522, column: 15, scope: !1072)
!1297 = !DILocation(line: 526, column: 11, scope: !1072)
!1298 = !DILocation(line: 541, column: 15, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 540, column: 15)
!1300 = !DILocation(line: 548, column: 15, scope: !1072)
!1301 = !DILocation(line: 550, column: 19, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !135, line: 549, column: 13)
!1303 = distinct !DILexicalBlock(scope: !1072, file: !135, line: 548, column: 15)
!1304 = !DILocation(line: 553, column: 19, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !135, line: 553, column: 19)
!1306 = !DILocation(line: 553, column: 35, scope: !1305)
!1307 = !DILocation(line: 553, column: 30, scope: !1305)
!1308 = !DILocation(line: 562, column: 15, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !135, line: 562, column: 15)
!1310 = distinct !DILexicalBlock(scope: !1302, file: !135, line: 562, column: 15)
!1311 = !DILocation(line: 562, column: 15, scope: !1310)
!1312 = !DILocation(line: 563, column: 15, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !135, line: 563, column: 15)
!1314 = distinct !DILexicalBlock(scope: !1302, file: !135, line: 563, column: 15)
!1315 = !DILocation(line: 563, column: 15, scope: !1314)
!1316 = !DILocation(line: 564, column: 15, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !135, line: 564, column: 15)
!1318 = distinct !DILexicalBlock(scope: !1302, file: !135, line: 564, column: 15)
!1319 = !DILocation(line: 564, column: 15, scope: !1318)
!1320 = !DILocation(line: 566, column: 13, scope: !1302)
!1321 = !DILocation(line: 606, column: 17, scope: !1071)
!1322 = !DILocation(line: 602, column: 20, scope: !1071)
!1323 = !DILocation(line: 609, column: 29, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1076, file: !135, line: 607, column: 15)
!1325 = !{!677, !677, i64 0}
!1326 = !DILocation(line: 609, column: 27, scope: !1324)
!1327 = !DILocation(line: 604, column: 18, scope: !1071)
!1328 = !DILocation(line: 610, column: 15, scope: !1324)
!1329 = !DILocation(line: 613, column: 17, scope: !1075)
!1330 = !DILocation(line: 614, column: 17, scope: !1075)
!1331 = !DILocation(line: 618, column: 29, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1075, file: !135, line: 618, column: 21)
!1333 = !DILocation(line: 618, column: 21, scope: !1075)
!1334 = !DILocation(line: 619, column: 29, scope: !1332)
!1335 = !DILocation(line: 619, column: 19, scope: !1332)
!1336 = !DILocation(line: 621, column: 17, scope: !1075)
!1337 = distinct !{!1337, !1336, !1338}
!1338 = !DILocation(line: 667, column: 44, scope: !1075)
!1339 = !DILocation(line: 623, column: 21, scope: !1091)
!1340 = !DILocation(line: 624, column: 56, scope: !1091)
!1341 = !DILocation(line: 624, column: 50, scope: !1091)
!1342 = !DILocation(line: 625, column: 53, scope: !1091)
!1343 = !DILocation(line: 613, column: 27, scope: !1075)
!1344 = !DILocation(line: 623, column: 29, scope: !1091)
!1345 = !DILocation(line: 624, column: 36, scope: !1091)
!1346 = !DILocation(line: 624, column: 28, scope: !1091)
!1347 = !DILocation(line: 626, column: 25, scope: !1091)
!1348 = !DILocation(line: 636, column: 38, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1098, file: !135, line: 634, column: 23)
!1350 = !DILocation(line: 636, column: 48, scope: !1349)
!1351 = !DILocation(line: 636, column: 51, scope: !1349)
!1352 = !DILocation(line: 636, column: 25, scope: !1349)
!1353 = !DILocation(line: 637, column: 28, scope: !1349)
!1354 = !DILocation(line: 636, column: 34, scope: !1349)
!1355 = distinct !{!1355, !1352, !1353}
!1356 = !DILocation(line: 650, column: 43, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !135, line: 650, column: 29)
!1358 = distinct !DILexicalBlock(scope: !1095, file: !135, line: 650, column: 29)
!1359 = !DILocation(line: 647, column: 29, scope: !1096)
!1360 = !DILocation(line: 649, column: 36, scope: !1095)
!1361 = !DILocation(line: 651, column: 49, scope: !1357)
!1362 = !DILocation(line: 651, column: 39, scope: !1357)
!1363 = !DILocation(line: 651, column: 31, scope: !1357)
!1364 = !DILocation(line: 650, column: 53, scope: !1357)
!1365 = !DILocation(line: 650, column: 29, scope: !1358)
!1366 = distinct !{!1366, !1365, !1367}
!1367 = !DILocation(line: 659, column: 33, scope: !1358)
!1368 = !DILocation(line: 666, column: 19, scope: !1075)
!1369 = !DILocation(line: 662, column: 41, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1097, file: !135, line: 662, column: 29)
!1371 = !DILocation(line: 662, column: 31, scope: !1370)
!1372 = !DILocation(line: 662, column: 29, scope: !1097)
!1373 = !DILocation(line: 664, column: 27, scope: !1097)
!1374 = !DILocation(line: 667, column: 26, scope: !1075)
!1375 = !DILocation(line: 667, column: 24, scope: !1075)
!1376 = !DILocation(line: 666, column: 19, scope: !1091)
!1377 = !DILocation(line: 668, column: 15, scope: !1076)
!1378 = !DILocation(line: 670, column: 40, scope: !1071)
!1379 = !DILocation(line: 672, column: 19, scope: !1103)
!1380 = !DILocation(line: 672, column: 45, scope: !1103)
!1381 = !DILocation(line: 672, column: 23, scope: !1103)
!1382 = !DILocation(line: 676, column: 33, scope: !1102)
!1383 = !DILocation(line: 676, column: 24, scope: !1102)
!1384 = !DILocation(line: 678, column: 17, scope: !1102)
!1385 = !DILocation(line: 680, column: 43, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !135, line: 680, column: 25)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !135, line: 679, column: 19)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !135, line: 678, column: 17)
!1389 = distinct !DILexicalBlock(scope: !1102, file: !135, line: 678, column: 17)
!1390 = !DILocation(line: 682, column: 25, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !135, line: 682, column: 25)
!1392 = distinct !DILexicalBlock(scope: !1386, file: !135, line: 681, column: 23)
!1393 = !DILocation(line: 682, column: 25, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !135, line: 682, column: 25)
!1395 = !DILocation(line: 682, column: 25, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !135, line: 682, column: 25)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !135, line: 682, column: 25)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !135, line: 682, column: 25)
!1399 = !DILocation(line: 682, column: 25, scope: !1397)
!1400 = !DILocation(line: 682, column: 25, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !135, line: 682, column: 25)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !135, line: 682, column: 25)
!1403 = !DILocation(line: 682, column: 25, scope: !1402)
!1404 = !DILocation(line: 682, column: 25, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !135, line: 682, column: 25)
!1406 = distinct !DILexicalBlock(scope: !1398, file: !135, line: 682, column: 25)
!1407 = !DILocation(line: 682, column: 25, scope: !1406)
!1408 = !DILocation(line: 682, column: 25, scope: !1398)
!1409 = !DILocation(line: 682, column: 25, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !135, line: 682, column: 25)
!1411 = distinct !DILexicalBlock(scope: !1391, file: !135, line: 682, column: 25)
!1412 = !DILocation(line: 682, column: 25, scope: !1411)
!1413 = !DILocation(line: 683, column: 25, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !135, line: 683, column: 25)
!1415 = distinct !DILexicalBlock(scope: !1392, file: !135, line: 683, column: 25)
!1416 = !DILocation(line: 683, column: 25, scope: !1415)
!1417 = !DILocation(line: 684, column: 25, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !135, line: 684, column: 25)
!1419 = distinct !DILexicalBlock(scope: !1392, file: !135, line: 684, column: 25)
!1420 = !DILocation(line: 684, column: 25, scope: !1419)
!1421 = !DILocation(line: 685, column: 38, scope: !1392)
!1422 = !DILocation(line: 685, column: 33, scope: !1392)
!1423 = !DILocation(line: 686, column: 23, scope: !1392)
!1424 = !DILocation(line: 687, column: 30, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1386, file: !135, line: 687, column: 30)
!1426 = !DILocation(line: 687, column: 30, scope: !1386)
!1427 = !DILocation(line: 689, column: 25, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !135, line: 689, column: 25)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !135, line: 689, column: 25)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !135, line: 688, column: 23)
!1431 = !DILocation(line: 689, column: 25, scope: !1429)
!1432 = !DILocation(line: 691, column: 23, scope: !1430)
!1433 = !DILocation(line: 692, column: 35, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1387, file: !135, line: 692, column: 25)
!1435 = !DILocation(line: 692, column: 30, scope: !1434)
!1436 = !DILocation(line: 692, column: 25, scope: !1387)
!1437 = !DILocation(line: 694, column: 21, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !135, line: 694, column: 21)
!1439 = distinct !DILexicalBlock(scope: !1387, file: !135, line: 694, column: 21)
!1440 = !DILocation(line: 694, column: 21, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !135, line: 694, column: 21)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !135, line: 694, column: 21)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !135, line: 694, column: 21)
!1444 = !DILocation(line: 694, column: 21, scope: !1442)
!1445 = !DILocation(line: 694, column: 21, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !135, line: 694, column: 21)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !135, line: 694, column: 21)
!1448 = !DILocation(line: 694, column: 21, scope: !1447)
!1449 = !DILocation(line: 694, column: 21, scope: !1443)
!1450 = !DILocation(line: 695, column: 21, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !135, line: 695, column: 21)
!1452 = distinct !DILexicalBlock(scope: !1387, file: !135, line: 695, column: 21)
!1453 = !DILocation(line: 695, column: 21, scope: !1452)
!1454 = !DILocation(line: 696, column: 25, scope: !1387)
!1455 = !DILocation(line: 678, column: 17, scope: !1388)
!1456 = distinct !{!1456, !1457, !1458}
!1457 = !DILocation(line: 678, column: 17, scope: !1389)
!1458 = !DILocation(line: 697, column: 19, scope: !1389)
!1459 = !DILocation(line: 704, column: 34, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1063, file: !135, line: 704, column: 11)
!1461 = !DILocation(line: 706, column: 14, scope: !1460)
!1462 = !DILocation(line: 707, column: 14, scope: !1460)
!1463 = !DILocation(line: 707, column: 35, scope: !1460)
!1464 = !DILocation(line: 707, column: 17, scope: !1460)
!1465 = !DILocation(line: 707, column: 53, scope: !1460)
!1466 = !DILocation(line: 707, column: 47, scope: !1460)
!1467 = !DILocation(line: 707, column: 65, scope: !1460)
!1468 = !DILocation(line: 708, column: 15, scope: !1460)
!1469 = !DILocation(line: 708, column: 11, scope: !1460)
!1470 = !DILocation(line: 704, column: 11, scope: !1063)
!1471 = !DILocation(line: 712, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1063, file: !135, line: 712, column: 7)
!1473 = !DILocation(line: 712, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1472, file: !135, line: 712, column: 7)
!1475 = !DILocation(line: 712, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !135, line: 712, column: 7)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !135, line: 712, column: 7)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !135, line: 712, column: 7)
!1479 = !DILocation(line: 712, column: 7, scope: !1477)
!1480 = !DILocation(line: 712, column: 7, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !135, line: 712, column: 7)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !135, line: 712, column: 7)
!1483 = !DILocation(line: 712, column: 7, scope: !1482)
!1484 = !DILocation(line: 712, column: 7, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !135, line: 712, column: 7)
!1486 = distinct !DILexicalBlock(scope: !1478, file: !135, line: 712, column: 7)
!1487 = !DILocation(line: 712, column: 7, scope: !1486)
!1488 = !DILocation(line: 712, column: 7, scope: !1478)
!1489 = !DILocation(line: 712, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !135, line: 712, column: 7)
!1491 = distinct !DILexicalBlock(scope: !1472, file: !135, line: 712, column: 7)
!1492 = !DILocation(line: 712, column: 7, scope: !1491)
!1493 = !DILocation(line: 715, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !135, line: 715, column: 7)
!1495 = distinct !DILexicalBlock(scope: !1063, file: !135, line: 715, column: 7)
!1496 = !DILocation(line: 715, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !135, line: 715, column: 7)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !135, line: 715, column: 7)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !135, line: 715, column: 7)
!1500 = !DILocation(line: 715, column: 7, scope: !1498)
!1501 = !DILocation(line: 715, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !135, line: 715, column: 7)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !135, line: 715, column: 7)
!1504 = !DILocation(line: 715, column: 7, scope: !1503)
!1505 = !DILocation(line: 715, column: 7, scope: !1499)
!1506 = !DILocation(line: 716, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !135, line: 716, column: 7)
!1508 = distinct !DILexicalBlock(scope: !1063, file: !135, line: 716, column: 7)
!1509 = !DILocation(line: 716, column: 7, scope: !1508)
!1510 = !DILocation(line: 718, column: 13, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1063, file: !135, line: 718, column: 11)
!1512 = !DILocation(line: 718, column: 11, scope: !1063)
!1513 = !DILocation(line: 720, column: 5, scope: !1064)
!1514 = !DILocation(line: 392, column: 75, scope: !1064)
!1515 = !DILocation(line: 392, column: 3, scope: !1064)
!1516 = distinct !{!1516, !1175, !1517}
!1517 = !DILocation(line: 720, column: 5, scope: !1065)
!1518 = !DILocation(line: 722, column: 11, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1036, file: !135, line: 722, column: 7)
!1520 = !DILocation(line: 722, column: 16, scope: !1519)
!1521 = !DILocation(line: 730, column: 51, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1036, file: !135, line: 730, column: 7)
!1523 = !DILocation(line: 731, column: 10, scope: !1522)
!1524 = !DILocation(line: 733, column: 11, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !135, line: 733, column: 11)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !135, line: 732, column: 5)
!1527 = !DILocation(line: 733, column: 11, scope: !1526)
!1528 = !DILocation(line: 734, column: 16, scope: !1525)
!1529 = !DILocation(line: 734, column: 9, scope: !1525)
!1530 = !DILocation(line: 738, column: 18, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1525, file: !135, line: 738, column: 16)
!1532 = !DILocation(line: 738, column: 32, scope: !1531)
!1533 = !DILocation(line: 738, column: 29, scope: !1531)
!1534 = !DILocation(line: 747, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1036, file: !135, line: 747, column: 7)
!1536 = !DILocation(line: 747, column: 20, scope: !1535)
!1537 = !DILocation(line: 748, column: 12, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !135, line: 748, column: 5)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !135, line: 748, column: 5)
!1540 = !DILocation(line: 748, column: 5, scope: !1539)
!1541 = !DILocation(line: 749, column: 7, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !135, line: 749, column: 7)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !135, line: 749, column: 7)
!1544 = !DILocation(line: 749, column: 7, scope: !1543)
!1545 = !DILocation(line: 748, column: 39, scope: !1538)
!1546 = distinct !{!1546, !1540, !1547}
!1547 = !DILocation(line: 749, column: 7, scope: !1539)
!1548 = !DILocation(line: 751, column: 11, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1036, file: !135, line: 751, column: 7)
!1550 = !DILocation(line: 751, column: 7, scope: !1036)
!1551 = !DILocation(line: 752, column: 5, scope: !1549)
!1552 = !DILocation(line: 752, column: 17, scope: !1549)
!1553 = !DILocation(line: 758, column: 21, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1036, file: !135, line: 758, column: 7)
!1555 = !DILocation(line: 758, column: 54, scope: !1554)
!1556 = !DILocation(line: 758, column: 51, scope: !1554)
!1557 = !DILocation(line: 762, column: 42, scope: !1036)
!1558 = !DILocation(line: 760, column: 10, scope: !1036)
!1559 = !DILocation(line: 760, column: 3, scope: !1036)
!1560 = !DILocation(line: 764, column: 1, scope: !1036)
!1561 = distinct !DISubprogram(name: "gettext_quote", scope: !135, file: !135, line: 199, type: !1562, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!24, !24, !96}
!1564 = !{!1565, !1566, !1567, !1568}
!1565 = !DILocalVariable(name: "msgid", arg: 1, scope: !1561, file: !135, line: 199, type: !24)
!1566 = !DILocalVariable(name: "s", arg: 2, scope: !1561, file: !135, line: 199, type: !96)
!1567 = !DILocalVariable(name: "translation", scope: !1561, file: !135, line: 201, type: !24)
!1568 = !DILocalVariable(name: "locale_code", scope: !1561, file: !135, line: 202, type: !24)
!1569 = !DILocation(line: 199, column: 28, scope: !1561)
!1570 = !DILocation(line: 199, column: 54, scope: !1561)
!1571 = !DILocation(line: 201, column: 29, scope: !1561)
!1572 = !DILocation(line: 201, column: 15, scope: !1561)
!1573 = !DILocation(line: 204, column: 19, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1561, file: !135, line: 204, column: 7)
!1575 = !DILocation(line: 204, column: 7, scope: !1561)
!1576 = !DILocation(line: 225, column: 17, scope: !1561)
!1577 = !DILocation(line: 202, column: 15, scope: !1561)
!1578 = !DILocalVariable(name: "s2", arg: 2, scope: !1579, file: !1580, line: 160, type: !24)
!1579 = distinct !DISubprogram(name: "strcaseeq0", scope: !1580, file: !1580, line: 160, type: !1581, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1583)
!1580 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!16, !24, !24, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1583 = !{!1584, !1578, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1584 = !DILocalVariable(name: "s1", arg: 1, scope: !1579, file: !1580, line: 160, type: !24)
!1585 = !DILocalVariable(name: "s20", arg: 3, scope: !1579, file: !1580, line: 160, type: !7)
!1586 = !DILocalVariable(name: "s21", arg: 4, scope: !1579, file: !1580, line: 160, type: !7)
!1587 = !DILocalVariable(name: "s22", arg: 5, scope: !1579, file: !1580, line: 160, type: !7)
!1588 = !DILocalVariable(name: "s23", arg: 6, scope: !1579, file: !1580, line: 160, type: !7)
!1589 = !DILocalVariable(name: "s24", arg: 7, scope: !1579, file: !1580, line: 160, type: !7)
!1590 = !DILocalVariable(name: "s25", arg: 8, scope: !1579, file: !1580, line: 160, type: !7)
!1591 = !DILocalVariable(name: "s26", arg: 9, scope: !1579, file: !1580, line: 160, type: !7)
!1592 = !DILocalVariable(name: "s27", arg: 10, scope: !1579, file: !1580, line: 160, type: !7)
!1593 = !DILocalVariable(name: "s28", arg: 11, scope: !1579, file: !1580, line: 160, type: !7)
!1594 = !DILocation(line: 160, column: 41, scope: !1579, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 226, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1561, file: !135, line: 226, column: 7)
!1597 = !DILocation(line: 160, column: 120, scope: !1579, inlinedAt: !1595)
!1598 = !DILocation(line: 160, column: 130, scope: !1579, inlinedAt: !1595)
!1599 = !DILocation(line: 162, column: 7, scope: !1600, inlinedAt: !1595)
!1600 = distinct !DILexicalBlock(scope: !1579, file: !1580, line: 162, column: 7)
!1601 = !DILocalVariable(name: "s2", arg: 2, scope: !1602, file: !1580, line: 146, type: !24)
!1602 = distinct !DISubprogram(name: "strcaseeq1", scope: !1580, file: !1580, line: 146, type: !1603, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1605)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!16, !24, !24, !7, !7, !7, !7, !7, !7, !7, !7}
!1605 = !{!1606, !1601, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614}
!1606 = !DILocalVariable(name: "s1", arg: 1, scope: !1602, file: !1580, line: 146, type: !24)
!1607 = !DILocalVariable(name: "s21", arg: 3, scope: !1602, file: !1580, line: 146, type: !7)
!1608 = !DILocalVariable(name: "s22", arg: 4, scope: !1602, file: !1580, line: 146, type: !7)
!1609 = !DILocalVariable(name: "s23", arg: 5, scope: !1602, file: !1580, line: 146, type: !7)
!1610 = !DILocalVariable(name: "s24", arg: 6, scope: !1602, file: !1580, line: 146, type: !7)
!1611 = !DILocalVariable(name: "s25", arg: 7, scope: !1602, file: !1580, line: 146, type: !7)
!1612 = !DILocalVariable(name: "s26", arg: 8, scope: !1602, file: !1580, line: 146, type: !7)
!1613 = !DILocalVariable(name: "s27", arg: 9, scope: !1602, file: !1580, line: 146, type: !7)
!1614 = !DILocalVariable(name: "s28", arg: 10, scope: !1602, file: !1580, line: 146, type: !7)
!1615 = !DILocation(line: 146, column: 41, scope: !1602, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 167, column: 16, scope: !1617, inlinedAt: !1595)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !1580, line: 164, column: 11)
!1618 = distinct !DILexicalBlock(scope: !1600, file: !1580, line: 163, column: 5)
!1619 = !DILocation(line: 146, column: 110, scope: !1602, inlinedAt: !1616)
!1620 = !DILocation(line: 146, column: 120, scope: !1602, inlinedAt: !1616)
!1621 = !DILocation(line: 148, column: 7, scope: !1622, inlinedAt: !1616)
!1622 = distinct !DILexicalBlock(scope: !1602, file: !1580, line: 148, column: 7)
!1623 = !DILocalVariable(name: "s2", arg: 2, scope: !1624, file: !1580, line: 132, type: !24)
!1624 = distinct !DISubprogram(name: "strcaseeq2", scope: !1580, file: !1580, line: 132, type: !1625, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1627)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!16, !24, !24, !7, !7, !7, !7, !7, !7, !7}
!1627 = !{!1628, !1623, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1628 = !DILocalVariable(name: "s1", arg: 1, scope: !1624, file: !1580, line: 132, type: !24)
!1629 = !DILocalVariable(name: "s22", arg: 3, scope: !1624, file: !1580, line: 132, type: !7)
!1630 = !DILocalVariable(name: "s23", arg: 4, scope: !1624, file: !1580, line: 132, type: !7)
!1631 = !DILocalVariable(name: "s24", arg: 5, scope: !1624, file: !1580, line: 132, type: !7)
!1632 = !DILocalVariable(name: "s25", arg: 6, scope: !1624, file: !1580, line: 132, type: !7)
!1633 = !DILocalVariable(name: "s26", arg: 7, scope: !1624, file: !1580, line: 132, type: !7)
!1634 = !DILocalVariable(name: "s27", arg: 8, scope: !1624, file: !1580, line: 132, type: !7)
!1635 = !DILocalVariable(name: "s28", arg: 9, scope: !1624, file: !1580, line: 132, type: !7)
!1636 = !DILocation(line: 132, column: 41, scope: !1624, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 153, column: 16, scope: !1638, inlinedAt: !1616)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !1580, line: 150, column: 11)
!1639 = distinct !DILexicalBlock(scope: !1622, file: !1580, line: 149, column: 5)
!1640 = !DILocation(line: 132, column: 100, scope: !1624, inlinedAt: !1637)
!1641 = !DILocation(line: 132, column: 110, scope: !1624, inlinedAt: !1637)
!1642 = !DILocation(line: 134, column: 7, scope: !1643, inlinedAt: !1637)
!1643 = distinct !DILexicalBlock(scope: !1624, file: !1580, line: 134, column: 7)
!1644 = !DILocalVariable(name: "s2", arg: 2, scope: !1645, file: !1580, line: 118, type: !24)
!1645 = distinct !DISubprogram(name: "strcaseeq3", scope: !1580, file: !1580, line: 118, type: !1646, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!16, !24, !24, !7, !7, !7, !7, !7, !7}
!1648 = !{!1649, !1644, !1650, !1651, !1652, !1653, !1654, !1655}
!1649 = !DILocalVariable(name: "s1", arg: 1, scope: !1645, file: !1580, line: 118, type: !24)
!1650 = !DILocalVariable(name: "s23", arg: 3, scope: !1645, file: !1580, line: 118, type: !7)
!1651 = !DILocalVariable(name: "s24", arg: 4, scope: !1645, file: !1580, line: 118, type: !7)
!1652 = !DILocalVariable(name: "s25", arg: 5, scope: !1645, file: !1580, line: 118, type: !7)
!1653 = !DILocalVariable(name: "s26", arg: 6, scope: !1645, file: !1580, line: 118, type: !7)
!1654 = !DILocalVariable(name: "s27", arg: 7, scope: !1645, file: !1580, line: 118, type: !7)
!1655 = !DILocalVariable(name: "s28", arg: 8, scope: !1645, file: !1580, line: 118, type: !7)
!1656 = !DILocation(line: 118, column: 41, scope: !1645, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 139, column: 16, scope: !1658, inlinedAt: !1637)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !1580, line: 136, column: 11)
!1659 = distinct !DILexicalBlock(scope: !1643, file: !1580, line: 135, column: 5)
!1660 = !DILocation(line: 118, column: 90, scope: !1645, inlinedAt: !1657)
!1661 = !DILocation(line: 118, column: 100, scope: !1645, inlinedAt: !1657)
!1662 = !DILocation(line: 120, column: 7, scope: !1663, inlinedAt: !1657)
!1663 = distinct !DILexicalBlock(scope: !1645, file: !1580, line: 120, column: 7)
!1664 = !DILocation(line: 120, column: 7, scope: !1645, inlinedAt: !1657)
!1665 = !DILocalVariable(name: "s2", arg: 2, scope: !1666, file: !1580, line: 104, type: !24)
!1666 = distinct !DISubprogram(name: "strcaseeq4", scope: !1580, file: !1580, line: 104, type: !1667, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!16, !24, !24, !7, !7, !7, !7, !7}
!1669 = !{!1670, !1665, !1671, !1672, !1673, !1674, !1675}
!1670 = !DILocalVariable(name: "s1", arg: 1, scope: !1666, file: !1580, line: 104, type: !24)
!1671 = !DILocalVariable(name: "s24", arg: 3, scope: !1666, file: !1580, line: 104, type: !7)
!1672 = !DILocalVariable(name: "s25", arg: 4, scope: !1666, file: !1580, line: 104, type: !7)
!1673 = !DILocalVariable(name: "s26", arg: 5, scope: !1666, file: !1580, line: 104, type: !7)
!1674 = !DILocalVariable(name: "s27", arg: 6, scope: !1666, file: !1580, line: 104, type: !7)
!1675 = !DILocalVariable(name: "s28", arg: 7, scope: !1666, file: !1580, line: 104, type: !7)
!1676 = !DILocation(line: 104, column: 41, scope: !1666, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 125, column: 16, scope: !1678, inlinedAt: !1657)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !1580, line: 122, column: 11)
!1679 = distinct !DILexicalBlock(scope: !1663, file: !1580, line: 121, column: 5)
!1680 = !DILocation(line: 104, column: 80, scope: !1666, inlinedAt: !1677)
!1681 = !DILocation(line: 104, column: 90, scope: !1666, inlinedAt: !1677)
!1682 = !DILocation(line: 106, column: 7, scope: !1683, inlinedAt: !1677)
!1683 = distinct !DILexicalBlock(scope: !1666, file: !1580, line: 106, column: 7)
!1684 = !DILocation(line: 106, column: 7, scope: !1666, inlinedAt: !1677)
!1685 = !DILocalVariable(name: "s2", arg: 2, scope: !1686, file: !1580, line: 90, type: !24)
!1686 = distinct !DISubprogram(name: "strcaseeq5", scope: !1580, file: !1580, line: 90, type: !1687, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!16, !24, !24, !7, !7, !7, !7}
!1689 = !{!1690, !1685, !1691, !1692, !1693, !1694}
!1690 = !DILocalVariable(name: "s1", arg: 1, scope: !1686, file: !1580, line: 90, type: !24)
!1691 = !DILocalVariable(name: "s25", arg: 3, scope: !1686, file: !1580, line: 90, type: !7)
!1692 = !DILocalVariable(name: "s26", arg: 4, scope: !1686, file: !1580, line: 90, type: !7)
!1693 = !DILocalVariable(name: "s27", arg: 5, scope: !1686, file: !1580, line: 90, type: !7)
!1694 = !DILocalVariable(name: "s28", arg: 6, scope: !1686, file: !1580, line: 90, type: !7)
!1695 = !DILocation(line: 90, column: 41, scope: !1686, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 111, column: 16, scope: !1697, inlinedAt: !1677)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !1580, line: 108, column: 11)
!1698 = distinct !DILexicalBlock(scope: !1683, file: !1580, line: 107, column: 5)
!1699 = !DILocation(line: 90, column: 70, scope: !1686, inlinedAt: !1696)
!1700 = !DILocation(line: 90, column: 80, scope: !1686, inlinedAt: !1696)
!1701 = !DILocation(line: 92, column: 7, scope: !1702, inlinedAt: !1696)
!1702 = distinct !DILexicalBlock(scope: !1686, file: !1580, line: 92, column: 7)
!1703 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !1696)
!1704 = !DILocation(line: 227, column: 12, scope: !1596)
!1705 = !DILocation(line: 227, column: 21, scope: !1596)
!1706 = !DILocation(line: 227, column: 5, scope: !1596)
!1707 = !DILocation(line: 146, column: 41, scope: !1602, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 167, column: 16, scope: !1617, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 228, column: 7, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1561, file: !135, line: 228, column: 7)
!1711 = !DILocation(line: 146, column: 110, scope: !1602, inlinedAt: !1708)
!1712 = !DILocation(line: 146, column: 120, scope: !1602, inlinedAt: !1708)
!1713 = !DILocation(line: 148, column: 7, scope: !1622, inlinedAt: !1708)
!1714 = !DILocation(line: 132, column: 41, scope: !1624, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 153, column: 16, scope: !1638, inlinedAt: !1708)
!1716 = !DILocation(line: 132, column: 100, scope: !1624, inlinedAt: !1715)
!1717 = !DILocation(line: 132, column: 110, scope: !1624, inlinedAt: !1715)
!1718 = !DILocation(line: 134, column: 7, scope: !1643, inlinedAt: !1715)
!1719 = !DILocation(line: 134, column: 7, scope: !1624, inlinedAt: !1715)
!1720 = !DILocation(line: 118, column: 41, scope: !1645, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 139, column: 16, scope: !1658, inlinedAt: !1715)
!1722 = !DILocation(line: 118, column: 90, scope: !1645, inlinedAt: !1721)
!1723 = !DILocation(line: 118, column: 100, scope: !1645, inlinedAt: !1721)
!1724 = !DILocation(line: 120, column: 7, scope: !1663, inlinedAt: !1721)
!1725 = !DILocation(line: 120, column: 7, scope: !1645, inlinedAt: !1721)
!1726 = !DILocation(line: 104, column: 41, scope: !1666, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 125, column: 16, scope: !1678, inlinedAt: !1721)
!1728 = !DILocation(line: 104, column: 80, scope: !1666, inlinedAt: !1727)
!1729 = !DILocation(line: 104, column: 90, scope: !1666, inlinedAt: !1727)
!1730 = !DILocation(line: 106, column: 7, scope: !1683, inlinedAt: !1727)
!1731 = !DILocation(line: 106, column: 7, scope: !1666, inlinedAt: !1727)
!1732 = !DILocation(line: 90, column: 41, scope: !1686, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 111, column: 16, scope: !1697, inlinedAt: !1727)
!1734 = !DILocation(line: 90, column: 70, scope: !1686, inlinedAt: !1733)
!1735 = !DILocation(line: 90, column: 80, scope: !1686, inlinedAt: !1733)
!1736 = !DILocation(line: 92, column: 7, scope: !1702, inlinedAt: !1733)
!1737 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !1733)
!1738 = !DILocalVariable(name: "s2", arg: 2, scope: !1739, file: !1580, line: 76, type: !24)
!1739 = distinct !DISubprogram(name: "strcaseeq6", scope: !1580, file: !1580, line: 76, type: !1740, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!16, !24, !24, !7, !7, !7}
!1742 = !{!1743, !1738, !1744, !1745, !1746}
!1743 = !DILocalVariable(name: "s1", arg: 1, scope: !1739, file: !1580, line: 76, type: !24)
!1744 = !DILocalVariable(name: "s26", arg: 3, scope: !1739, file: !1580, line: 76, type: !7)
!1745 = !DILocalVariable(name: "s27", arg: 4, scope: !1739, file: !1580, line: 76, type: !7)
!1746 = !DILocalVariable(name: "s28", arg: 5, scope: !1739, file: !1580, line: 76, type: !7)
!1747 = !DILocation(line: 76, column: 41, scope: !1739, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 97, column: 16, scope: !1749, inlinedAt: !1733)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !1580, line: 94, column: 11)
!1750 = distinct !DILexicalBlock(scope: !1702, file: !1580, line: 93, column: 5)
!1751 = !DILocation(line: 76, column: 60, scope: !1739, inlinedAt: !1748)
!1752 = !DILocation(line: 76, column: 70, scope: !1739, inlinedAt: !1748)
!1753 = !DILocation(line: 78, column: 7, scope: !1754, inlinedAt: !1748)
!1754 = distinct !DILexicalBlock(scope: !1739, file: !1580, line: 78, column: 7)
!1755 = !DILocation(line: 78, column: 7, scope: !1739, inlinedAt: !1748)
!1756 = !DILocalVariable(name: "s2", arg: 2, scope: !1757, file: !1580, line: 62, type: !24)
!1757 = distinct !DISubprogram(name: "strcaseeq7", scope: !1580, file: !1580, line: 62, type: !1758, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!16, !24, !24, !7, !7}
!1760 = !{!1761, !1756, !1762, !1763}
!1761 = !DILocalVariable(name: "s1", arg: 1, scope: !1757, file: !1580, line: 62, type: !24)
!1762 = !DILocalVariable(name: "s27", arg: 3, scope: !1757, file: !1580, line: 62, type: !7)
!1763 = !DILocalVariable(name: "s28", arg: 4, scope: !1757, file: !1580, line: 62, type: !7)
!1764 = !DILocation(line: 62, column: 41, scope: !1757, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 83, column: 16, scope: !1766, inlinedAt: !1748)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !1580, line: 80, column: 11)
!1767 = distinct !DILexicalBlock(scope: !1754, file: !1580, line: 79, column: 5)
!1768 = !DILocation(line: 62, column: 50, scope: !1757, inlinedAt: !1765)
!1769 = !DILocation(line: 62, column: 60, scope: !1757, inlinedAt: !1765)
!1770 = !DILocation(line: 64, column: 7, scope: !1771, inlinedAt: !1765)
!1771 = distinct !DILexicalBlock(scope: !1757, file: !1580, line: 64, column: 7)
!1772 = !DILocation(line: 228, column: 7, scope: !1561)
!1773 = !DILocation(line: 229, column: 12, scope: !1710)
!1774 = !DILocation(line: 229, column: 21, scope: !1710)
!1775 = !DILocation(line: 229, column: 5, scope: !1710)
!1776 = !DILocation(line: 231, column: 13, scope: !1561)
!1777 = !DILocation(line: 231, column: 11, scope: !1561)
!1778 = !DILocation(line: 231, column: 3, scope: !1561)
!1779 = !DILocation(line: 232, column: 1, scope: !1561)
!1780 = distinct !DISubprogram(name: "quotearg_alloc", scope: !135, file: !135, line: 791, type: !1781, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!6, !24, !27, !908}
!1783 = !{!1784, !1785, !1786}
!1784 = !DILocalVariable(name: "arg", arg: 1, scope: !1780, file: !135, line: 791, type: !24)
!1785 = !DILocalVariable(name: "argsize", arg: 2, scope: !1780, file: !135, line: 791, type: !27)
!1786 = !DILocalVariable(name: "o", arg: 3, scope: !1780, file: !135, line: 792, type: !908)
!1787 = !DILocation(line: 791, column: 29, scope: !1780)
!1788 = !DILocation(line: 791, column: 41, scope: !1780)
!1789 = !DILocation(line: 792, column: 47, scope: !1780)
!1790 = !DILocalVariable(name: "arg", arg: 1, scope: !1791, file: !135, line: 804, type: !24)
!1791 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !135, file: !135, line: 804, type: !1792, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!6, !24, !27, !553, !908}
!1794 = !{!1790, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1795 = !DILocalVariable(name: "argsize", arg: 2, scope: !1791, file: !135, line: 804, type: !27)
!1796 = !DILocalVariable(name: "size", arg: 3, scope: !1791, file: !135, line: 804, type: !553)
!1797 = !DILocalVariable(name: "o", arg: 4, scope: !1791, file: !135, line: 805, type: !908)
!1798 = !DILocalVariable(name: "p", scope: !1791, file: !135, line: 807, type: !908)
!1799 = !DILocalVariable(name: "e", scope: !1791, file: !135, line: 808, type: !16)
!1800 = !DILocalVariable(name: "flags", scope: !1791, file: !135, line: 810, type: !16)
!1801 = !DILocalVariable(name: "bufsize", scope: !1791, file: !135, line: 811, type: !27)
!1802 = !DILocalVariable(name: "buf", scope: !1791, file: !135, line: 815, type: !6)
!1803 = !DILocation(line: 804, column: 33, scope: !1791, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 794, column: 10, scope: !1780)
!1805 = !DILocation(line: 804, column: 45, scope: !1791, inlinedAt: !1804)
!1806 = !DILocation(line: 804, column: 62, scope: !1791, inlinedAt: !1804)
!1807 = !DILocation(line: 805, column: 51, scope: !1791, inlinedAt: !1804)
!1808 = !DILocation(line: 807, column: 37, scope: !1791, inlinedAt: !1804)
!1809 = !DILocation(line: 807, column: 33, scope: !1791, inlinedAt: !1804)
!1810 = !DILocation(line: 808, column: 11, scope: !1791, inlinedAt: !1804)
!1811 = !DILocation(line: 808, column: 7, scope: !1791, inlinedAt: !1804)
!1812 = !DILocation(line: 810, column: 18, scope: !1791, inlinedAt: !1804)
!1813 = !DILocation(line: 810, column: 24, scope: !1791, inlinedAt: !1804)
!1814 = !DILocation(line: 810, column: 7, scope: !1791, inlinedAt: !1804)
!1815 = !DILocation(line: 811, column: 69, scope: !1791, inlinedAt: !1804)
!1816 = !DILocation(line: 812, column: 53, scope: !1791, inlinedAt: !1804)
!1817 = !DILocation(line: 813, column: 49, scope: !1791, inlinedAt: !1804)
!1818 = !DILocation(line: 814, column: 49, scope: !1791, inlinedAt: !1804)
!1819 = !DILocation(line: 811, column: 20, scope: !1791, inlinedAt: !1804)
!1820 = !DILocation(line: 814, column: 62, scope: !1791, inlinedAt: !1804)
!1821 = !DILocation(line: 811, column: 10, scope: !1791, inlinedAt: !1804)
!1822 = !DILocalVariable(name: "n", arg: 1, scope: !1823, file: !549, line: 220, type: !27)
!1823 = distinct !DISubprogram(name: "xcharalloc", scope: !549, file: !549, line: 220, type: !1824, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!6, !27}
!1826 = !{!1822}
!1827 = !DILocation(line: 220, column: 20, scope: !1823, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 815, column: 15, scope: !1791, inlinedAt: !1804)
!1829 = !DILocation(line: 222, column: 10, scope: !1823, inlinedAt: !1828)
!1830 = !DILocation(line: 815, column: 9, scope: !1791, inlinedAt: !1804)
!1831 = !DILocation(line: 816, column: 60, scope: !1791, inlinedAt: !1804)
!1832 = !DILocation(line: 818, column: 32, scope: !1791, inlinedAt: !1804)
!1833 = !DILocation(line: 818, column: 47, scope: !1791, inlinedAt: !1804)
!1834 = !DILocation(line: 816, column: 3, scope: !1791, inlinedAt: !1804)
!1835 = !DILocation(line: 819, column: 9, scope: !1791, inlinedAt: !1804)
!1836 = !DILocation(line: 794, column: 3, scope: !1780)
!1837 = !DILocation(line: 804, column: 33, scope: !1791)
!1838 = !DILocation(line: 804, column: 45, scope: !1791)
!1839 = !DILocation(line: 804, column: 62, scope: !1791)
!1840 = !DILocation(line: 805, column: 51, scope: !1791)
!1841 = !DILocation(line: 807, column: 37, scope: !1791)
!1842 = !DILocation(line: 807, column: 33, scope: !1791)
!1843 = !DILocation(line: 808, column: 11, scope: !1791)
!1844 = !DILocation(line: 808, column: 7, scope: !1791)
!1845 = !DILocation(line: 810, column: 18, scope: !1791)
!1846 = !DILocation(line: 810, column: 27, scope: !1791)
!1847 = !DILocation(line: 810, column: 24, scope: !1791)
!1848 = !DILocation(line: 810, column: 7, scope: !1791)
!1849 = !DILocation(line: 811, column: 69, scope: !1791)
!1850 = !DILocation(line: 812, column: 53, scope: !1791)
!1851 = !DILocation(line: 813, column: 49, scope: !1791)
!1852 = !DILocation(line: 814, column: 49, scope: !1791)
!1853 = !DILocation(line: 811, column: 20, scope: !1791)
!1854 = !DILocation(line: 814, column: 62, scope: !1791)
!1855 = !DILocation(line: 811, column: 10, scope: !1791)
!1856 = !DILocation(line: 220, column: 20, scope: !1823, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 815, column: 15, scope: !1791)
!1858 = !DILocation(line: 222, column: 10, scope: !1823, inlinedAt: !1857)
!1859 = !DILocation(line: 815, column: 9, scope: !1791)
!1860 = !DILocation(line: 816, column: 60, scope: !1791)
!1861 = !DILocation(line: 818, column: 32, scope: !1791)
!1862 = !DILocation(line: 818, column: 47, scope: !1791)
!1863 = !DILocation(line: 816, column: 3, scope: !1791)
!1864 = !DILocation(line: 819, column: 9, scope: !1791)
!1865 = !DILocation(line: 820, column: 7, scope: !1791)
!1866 = !DILocation(line: 821, column: 11, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1791, file: !135, line: 820, column: 7)
!1868 = !{!676, !676, i64 0}
!1869 = !DILocation(line: 821, column: 5, scope: !1867)
!1870 = !DILocation(line: 822, column: 3, scope: !1791)
!1871 = distinct !DISubprogram(name: "quotearg_free", scope: !135, file: !135, line: 840, type: !703, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1872)
!1872 = !{!1873, !1874}
!1873 = !DILocalVariable(name: "sv", scope: !1871, file: !135, line: 842, type: !162)
!1874 = !DILocalVariable(name: "i", scope: !1871, file: !135, line: 843, type: !16)
!1875 = !DILocation(line: 842, column: 24, scope: !1871)
!1876 = !DILocation(line: 842, column: 19, scope: !1871)
!1877 = !DILocation(line: 843, column: 7, scope: !1871)
!1878 = !DILocation(line: 844, column: 19, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !135, line: 844, column: 3)
!1880 = distinct !DILexicalBlock(scope: !1871, file: !135, line: 844, column: 3)
!1881 = !DILocation(line: 844, column: 17, scope: !1879)
!1882 = !DILocation(line: 844, column: 3, scope: !1880)
!1883 = !DILocation(line: 845, column: 17, scope: !1879)
!1884 = !{!1885, !598, i64 8}
!1885 = !{!"slotvec", !676, i64 0, !598, i64 8}
!1886 = !DILocation(line: 845, column: 5, scope: !1879)
!1887 = !DILocation(line: 844, column: 28, scope: !1879)
!1888 = distinct !{!1888, !1882, !1889}
!1889 = !DILocation(line: 845, column: 20, scope: !1880)
!1890 = !DILocation(line: 846, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1871, file: !135, line: 846, column: 7)
!1892 = !DILocation(line: 846, column: 17, scope: !1891)
!1893 = !DILocation(line: 846, column: 7, scope: !1871)
!1894 = !DILocation(line: 848, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !135, line: 847, column: 5)
!1896 = !DILocation(line: 849, column: 21, scope: !1895)
!1897 = !{!1885, !676, i64 0}
!1898 = !DILocation(line: 850, column: 20, scope: !1895)
!1899 = !DILocation(line: 851, column: 5, scope: !1895)
!1900 = !DILocation(line: 852, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1871, file: !135, line: 852, column: 7)
!1902 = !DILocation(line: 852, column: 7, scope: !1871)
!1903 = !DILocation(line: 854, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !135, line: 853, column: 5)
!1905 = !DILocation(line: 854, column: 7, scope: !1904)
!1906 = !DILocation(line: 855, column: 15, scope: !1904)
!1907 = !DILocation(line: 856, column: 5, scope: !1904)
!1908 = !DILocation(line: 857, column: 10, scope: !1871)
!1909 = !DILocation(line: 858, column: 1, scope: !1871)
!1910 = distinct !DISubprogram(name: "quotearg_n", scope: !135, file: !135, line: 922, type: !1911, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!6, !16, !24}
!1913 = !{!1914, !1915}
!1914 = !DILocalVariable(name: "n", arg: 1, scope: !1910, file: !135, line: 922, type: !16)
!1915 = !DILocalVariable(name: "arg", arg: 2, scope: !1910, file: !135, line: 922, type: !24)
!1916 = !DILocation(line: 922, column: 17, scope: !1910)
!1917 = !DILocation(line: 922, column: 32, scope: !1910)
!1918 = !DILocation(line: 924, column: 10, scope: !1910)
!1919 = !DILocation(line: 924, column: 3, scope: !1910)
!1920 = distinct !DISubprogram(name: "quotearg_n_options", scope: !135, file: !135, line: 869, type: !1921, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1923)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!6, !16, !24, !27, !908}
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929, !1930, !1933, !1935, !1936, !1937}
!1924 = !DILocalVariable(name: "n", arg: 1, scope: !1920, file: !135, line: 869, type: !16)
!1925 = !DILocalVariable(name: "arg", arg: 2, scope: !1920, file: !135, line: 869, type: !24)
!1926 = !DILocalVariable(name: "argsize", arg: 3, scope: !1920, file: !135, line: 869, type: !27)
!1927 = !DILocalVariable(name: "options", arg: 4, scope: !1920, file: !135, line: 870, type: !908)
!1928 = !DILocalVariable(name: "e", scope: !1920, file: !135, line: 872, type: !16)
!1929 = !DILocalVariable(name: "sv", scope: !1920, file: !135, line: 874, type: !162)
!1930 = !DILocalVariable(name: "preallocated", scope: !1931, file: !135, line: 881, type: !22)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !135, line: 880, column: 5)
!1932 = distinct !DILexicalBlock(scope: !1920, file: !135, line: 879, column: 7)
!1933 = !DILocalVariable(name: "size", scope: !1934, file: !135, line: 894, type: !27)
!1934 = distinct !DILexicalBlock(scope: !1920, file: !135, line: 893, column: 3)
!1935 = !DILocalVariable(name: "val", scope: !1934, file: !135, line: 895, type: !6)
!1936 = !DILocalVariable(name: "flags", scope: !1934, file: !135, line: 897, type: !16)
!1937 = !DILocalVariable(name: "qsize", scope: !1934, file: !135, line: 898, type: !27)
!1938 = !DILocation(line: 869, column: 25, scope: !1920)
!1939 = !DILocation(line: 869, column: 40, scope: !1920)
!1940 = !DILocation(line: 869, column: 52, scope: !1920)
!1941 = !DILocation(line: 870, column: 51, scope: !1920)
!1942 = !DILocation(line: 872, column: 11, scope: !1920)
!1943 = !DILocation(line: 872, column: 7, scope: !1920)
!1944 = !DILocation(line: 874, column: 24, scope: !1920)
!1945 = !DILocation(line: 874, column: 19, scope: !1920)
!1946 = !DILocation(line: 876, column: 9, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1920, file: !135, line: 876, column: 7)
!1948 = !DILocation(line: 876, column: 7, scope: !1920)
!1949 = !DILocation(line: 877, column: 5, scope: !1947)
!1950 = !DILocation(line: 879, column: 7, scope: !1932)
!1951 = !DILocation(line: 879, column: 14, scope: !1932)
!1952 = !DILocation(line: 879, column: 7, scope: !1920)
!1953 = !DILocation(line: 881, column: 31, scope: !1931)
!1954 = !DILocation(line: 883, column: 67, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1931, file: !135, line: 883, column: 11)
!1956 = !DILocation(line: 883, column: 11, scope: !1931)
!1957 = !DILocation(line: 884, column: 9, scope: !1955)
!1958 = !DILocation(line: 886, column: 32, scope: !1931)
!1959 = !DILocation(line: 886, column: 61, scope: !1931)
!1960 = !DILocation(line: 886, column: 58, scope: !1931)
!1961 = !DILocation(line: 886, column: 66, scope: !1931)
!1962 = !DILocation(line: 886, column: 22, scope: !1931)
!1963 = !DILocation(line: 886, column: 15, scope: !1931)
!1964 = !DILocation(line: 887, column: 11, scope: !1931)
!1965 = !DILocation(line: 888, column: 15, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1931, file: !135, line: 887, column: 11)
!1967 = !{i64 0, i64 8, !1868, i64 8, i64 8, !597}
!1968 = !DILocation(line: 888, column: 9, scope: !1966)
!1969 = !DILocation(line: 889, column: 20, scope: !1931)
!1970 = !DILocation(line: 889, column: 18, scope: !1931)
!1971 = !DILocation(line: 889, column: 7, scope: !1931)
!1972 = !DILocation(line: 889, column: 38, scope: !1931)
!1973 = !DILocation(line: 889, column: 31, scope: !1931)
!1974 = !DILocation(line: 889, column: 48, scope: !1931)
!1975 = !DILocation(line: 890, column: 14, scope: !1931)
!1976 = !DILocation(line: 891, column: 5, scope: !1931)
!1977 = !DILocation(line: 894, column: 19, scope: !1934)
!1978 = !DILocation(line: 894, column: 25, scope: !1934)
!1979 = !DILocation(line: 894, column: 12, scope: !1934)
!1980 = !DILocation(line: 895, column: 23, scope: !1934)
!1981 = !DILocation(line: 895, column: 11, scope: !1934)
!1982 = !DILocation(line: 897, column: 26, scope: !1934)
!1983 = !DILocation(line: 897, column: 32, scope: !1934)
!1984 = !DILocation(line: 897, column: 9, scope: !1934)
!1985 = !DILocation(line: 899, column: 55, scope: !1934)
!1986 = !DILocation(line: 900, column: 46, scope: !1934)
!1987 = !DILocation(line: 901, column: 55, scope: !1934)
!1988 = !DILocation(line: 902, column: 55, scope: !1934)
!1989 = !DILocation(line: 898, column: 20, scope: !1934)
!1990 = !DILocation(line: 898, column: 12, scope: !1934)
!1991 = !DILocation(line: 904, column: 14, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1934, file: !135, line: 904, column: 9)
!1993 = !DILocation(line: 904, column: 9, scope: !1934)
!1994 = !DILocation(line: 906, column: 35, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !135, line: 905, column: 7)
!1996 = !DILocation(line: 906, column: 20, scope: !1995)
!1997 = !DILocation(line: 907, column: 17, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !135, line: 907, column: 13)
!1999 = !DILocation(line: 907, column: 13, scope: !1995)
!2000 = !DILocation(line: 908, column: 11, scope: !1998)
!2001 = !DILocation(line: 220, column: 20, scope: !1823, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 909, column: 27, scope: !1995)
!2003 = !DILocation(line: 222, column: 10, scope: !1823, inlinedAt: !2002)
!2004 = !DILocation(line: 909, column: 19, scope: !1995)
!2005 = !DILocation(line: 910, column: 69, scope: !1995)
!2006 = !DILocation(line: 912, column: 44, scope: !1995)
!2007 = !DILocation(line: 913, column: 44, scope: !1995)
!2008 = !DILocation(line: 910, column: 9, scope: !1995)
!2009 = !DILocation(line: 914, column: 7, scope: !1995)
!2010 = !DILocation(line: 916, column: 11, scope: !1934)
!2011 = !DILocation(line: 917, column: 5, scope: !1934)
!2012 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !135, file: !135, line: 928, type: !2013, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!6, !16, !24, !27}
!2015 = !{!2016, !2017, !2018}
!2016 = !DILocalVariable(name: "n", arg: 1, scope: !2012, file: !135, line: 928, type: !16)
!2017 = !DILocalVariable(name: "arg", arg: 2, scope: !2012, file: !135, line: 928, type: !24)
!2018 = !DILocalVariable(name: "argsize", arg: 3, scope: !2012, file: !135, line: 928, type: !27)
!2019 = !DILocation(line: 928, column: 21, scope: !2012)
!2020 = !DILocation(line: 928, column: 36, scope: !2012)
!2021 = !DILocation(line: 928, column: 48, scope: !2012)
!2022 = !DILocation(line: 930, column: 10, scope: !2012)
!2023 = !DILocation(line: 930, column: 3, scope: !2012)
!2024 = distinct !DISubprogram(name: "quotearg", scope: !135, file: !135, line: 934, type: !764, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2025)
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "arg", arg: 1, scope: !2024, file: !135, line: 934, type: !24)
!2027 = !DILocation(line: 934, column: 23, scope: !2024)
!2028 = !DILocation(line: 922, column: 17, scope: !1910, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 936, column: 10, scope: !2024)
!2030 = !DILocation(line: 922, column: 32, scope: !1910, inlinedAt: !2029)
!2031 = !DILocation(line: 924, column: 10, scope: !1910, inlinedAt: !2029)
!2032 = !DILocation(line: 936, column: 3, scope: !2024)
!2033 = distinct !DISubprogram(name: "quotearg_mem", scope: !135, file: !135, line: 940, type: !2034, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!6, !24, !27}
!2036 = !{!2037, !2038}
!2037 = !DILocalVariable(name: "arg", arg: 1, scope: !2033, file: !135, line: 940, type: !24)
!2038 = !DILocalVariable(name: "argsize", arg: 2, scope: !2033, file: !135, line: 940, type: !27)
!2039 = !DILocation(line: 940, column: 27, scope: !2033)
!2040 = !DILocation(line: 940, column: 39, scope: !2033)
!2041 = !DILocation(line: 928, column: 21, scope: !2012, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 942, column: 10, scope: !2033)
!2043 = !DILocation(line: 928, column: 36, scope: !2012, inlinedAt: !2042)
!2044 = !DILocation(line: 928, column: 48, scope: !2012, inlinedAt: !2042)
!2045 = !DILocation(line: 930, column: 10, scope: !2012, inlinedAt: !2042)
!2046 = !DILocation(line: 942, column: 3, scope: !2033)
!2047 = distinct !DISubprogram(name: "quotearg_n_style", scope: !135, file: !135, line: 946, type: !2048, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!6, !16, !96, !24}
!2050 = !{!2051, !2052, !2053, !2054}
!2051 = !DILocalVariable(name: "n", arg: 1, scope: !2047, file: !135, line: 946, type: !16)
!2052 = !DILocalVariable(name: "s", arg: 2, scope: !2047, file: !135, line: 946, type: !96)
!2053 = !DILocalVariable(name: "arg", arg: 3, scope: !2047, file: !135, line: 946, type: !24)
!2054 = !DILocalVariable(name: "o", scope: !2047, file: !135, line: 948, type: !909)
!2055 = !DILocalVariable(name: "o", scope: !2056, file: !135, line: 187, type: !142)
!2056 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !135, file: !135, line: 185, type: !2057, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!142, !96}
!2059 = !{!2060, !2055}
!2060 = !DILocalVariable(name: "style", arg: 1, scope: !2056, file: !135, line: 185, type: !96)
!2061 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2062 = !DILocation(line: 187, column: 26, scope: !2056, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 948, column: 36, scope: !2047)
!2064 = !DILocation(line: 946, column: 23, scope: !2047)
!2065 = !DILocation(line: 946, column: 45, scope: !2047)
!2066 = !DILocation(line: 946, column: 60, scope: !2047)
!2067 = !DILocation(line: 948, column: 3, scope: !2047)
!2068 = !DILocation(line: 948, column: 32, scope: !2047)
!2069 = !DILocation(line: 185, column: 48, scope: !2056, inlinedAt: !2063)
!2070 = !DILocation(line: 187, column: 3, scope: !2056, inlinedAt: !2063)
!2071 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2072 = !DILocation(line: 188, column: 13, scope: !2073, inlinedAt: !2063)
!2073 = distinct !DILexicalBlock(scope: !2056, file: !135, line: 188, column: 7)
!2074 = !DILocation(line: 188, column: 7, scope: !2056, inlinedAt: !2063)
!2075 = !DILocation(line: 189, column: 5, scope: !2073, inlinedAt: !2063)
!2076 = !{!2077}
!2077 = distinct !{!2077, !2078, !"quoting_options_from_style: argument 0"}
!2078 = distinct !{!2078, !"quoting_options_from_style"}
!2079 = !DILocation(line: 191, column: 10, scope: !2056, inlinedAt: !2063)
!2080 = !DILocation(line: 192, column: 1, scope: !2056, inlinedAt: !2063)
!2081 = !DILocation(line: 949, column: 10, scope: !2047)
!2082 = !DILocation(line: 950, column: 1, scope: !2047)
!2083 = !DILocation(line: 949, column: 3, scope: !2047)
!2084 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !135, file: !135, line: 953, type: !2085, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!6, !16, !96, !24, !27}
!2087 = !{!2088, !2089, !2090, !2091, !2092}
!2088 = !DILocalVariable(name: "n", arg: 1, scope: !2084, file: !135, line: 953, type: !16)
!2089 = !DILocalVariable(name: "s", arg: 2, scope: !2084, file: !135, line: 953, type: !96)
!2090 = !DILocalVariable(name: "arg", arg: 3, scope: !2084, file: !135, line: 954, type: !24)
!2091 = !DILocalVariable(name: "argsize", arg: 4, scope: !2084, file: !135, line: 954, type: !27)
!2092 = !DILocalVariable(name: "o", scope: !2084, file: !135, line: 956, type: !909)
!2093 = !DILocation(line: 187, column: 26, scope: !2056, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 956, column: 36, scope: !2084)
!2095 = !DILocation(line: 953, column: 27, scope: !2084)
!2096 = !DILocation(line: 953, column: 49, scope: !2084)
!2097 = !DILocation(line: 954, column: 35, scope: !2084)
!2098 = !DILocation(line: 954, column: 47, scope: !2084)
!2099 = !DILocation(line: 956, column: 3, scope: !2084)
!2100 = !DILocation(line: 956, column: 32, scope: !2084)
!2101 = !DILocation(line: 185, column: 48, scope: !2056, inlinedAt: !2094)
!2102 = !DILocation(line: 187, column: 3, scope: !2056, inlinedAt: !2094)
!2103 = !DILocation(line: 188, column: 13, scope: !2073, inlinedAt: !2094)
!2104 = !DILocation(line: 188, column: 7, scope: !2056, inlinedAt: !2094)
!2105 = !DILocation(line: 189, column: 5, scope: !2073, inlinedAt: !2094)
!2106 = !{!2107}
!2107 = distinct !{!2107, !2108, !"quoting_options_from_style: argument 0"}
!2108 = distinct !{!2108, !"quoting_options_from_style"}
!2109 = !DILocation(line: 191, column: 10, scope: !2056, inlinedAt: !2094)
!2110 = !DILocation(line: 192, column: 1, scope: !2056, inlinedAt: !2094)
!2111 = !DILocation(line: 957, column: 10, scope: !2084)
!2112 = !DILocation(line: 958, column: 1, scope: !2084)
!2113 = !DILocation(line: 957, column: 3, scope: !2084)
!2114 = distinct !DISubprogram(name: "quotearg_style", scope: !135, file: !135, line: 961, type: !2115, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!6, !96, !24}
!2117 = !{!2118, !2119}
!2118 = !DILocalVariable(name: "s", arg: 1, scope: !2114, file: !135, line: 961, type: !96)
!2119 = !DILocalVariable(name: "arg", arg: 2, scope: !2114, file: !135, line: 961, type: !24)
!2120 = !DILocation(line: 187, column: 26, scope: !2056, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 948, column: 36, scope: !2047, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 963, column: 10, scope: !2114)
!2123 = !DILocation(line: 961, column: 36, scope: !2114)
!2124 = !DILocation(line: 961, column: 51, scope: !2114)
!2125 = !DILocation(line: 946, column: 23, scope: !2047, inlinedAt: !2122)
!2126 = !DILocation(line: 946, column: 45, scope: !2047, inlinedAt: !2122)
!2127 = !DILocation(line: 946, column: 60, scope: !2047, inlinedAt: !2122)
!2128 = !DILocation(line: 948, column: 3, scope: !2047, inlinedAt: !2122)
!2129 = !DILocation(line: 948, column: 32, scope: !2047, inlinedAt: !2122)
!2130 = !DILocation(line: 185, column: 48, scope: !2056, inlinedAt: !2121)
!2131 = !DILocation(line: 187, column: 3, scope: !2056, inlinedAt: !2121)
!2132 = !DILocation(line: 188, column: 13, scope: !2073, inlinedAt: !2121)
!2133 = !DILocation(line: 188, column: 7, scope: !2056, inlinedAt: !2121)
!2134 = !DILocation(line: 189, column: 5, scope: !2073, inlinedAt: !2121)
!2135 = !{!2136}
!2136 = distinct !{!2136, !2137, !"quoting_options_from_style: argument 0"}
!2137 = distinct !{!2137, !"quoting_options_from_style"}
!2138 = !DILocation(line: 191, column: 10, scope: !2056, inlinedAt: !2121)
!2139 = !DILocation(line: 192, column: 1, scope: !2056, inlinedAt: !2121)
!2140 = !DILocation(line: 949, column: 10, scope: !2047, inlinedAt: !2122)
!2141 = !DILocation(line: 950, column: 1, scope: !2047, inlinedAt: !2122)
!2142 = !DILocation(line: 963, column: 3, scope: !2114)
!2143 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !135, file: !135, line: 967, type: !2144, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!6, !96, !24, !27}
!2146 = !{!2147, !2148, !2149}
!2147 = !DILocalVariable(name: "s", arg: 1, scope: !2143, file: !135, line: 967, type: !96)
!2148 = !DILocalVariable(name: "arg", arg: 2, scope: !2143, file: !135, line: 967, type: !24)
!2149 = !DILocalVariable(name: "argsize", arg: 3, scope: !2143, file: !135, line: 967, type: !27)
!2150 = !DILocation(line: 187, column: 26, scope: !2056, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 956, column: 36, scope: !2084, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 969, column: 10, scope: !2143)
!2153 = !DILocation(line: 967, column: 40, scope: !2143)
!2154 = !DILocation(line: 967, column: 55, scope: !2143)
!2155 = !DILocation(line: 967, column: 67, scope: !2143)
!2156 = !DILocation(line: 953, column: 27, scope: !2084, inlinedAt: !2152)
!2157 = !DILocation(line: 953, column: 49, scope: !2084, inlinedAt: !2152)
!2158 = !DILocation(line: 954, column: 35, scope: !2084, inlinedAt: !2152)
!2159 = !DILocation(line: 954, column: 47, scope: !2084, inlinedAt: !2152)
!2160 = !DILocation(line: 956, column: 3, scope: !2084, inlinedAt: !2152)
!2161 = !DILocation(line: 956, column: 32, scope: !2084, inlinedAt: !2152)
!2162 = !DILocation(line: 185, column: 48, scope: !2056, inlinedAt: !2151)
!2163 = !DILocation(line: 187, column: 3, scope: !2056, inlinedAt: !2151)
!2164 = !DILocation(line: 188, column: 13, scope: !2073, inlinedAt: !2151)
!2165 = !DILocation(line: 188, column: 7, scope: !2056, inlinedAt: !2151)
!2166 = !DILocation(line: 189, column: 5, scope: !2073, inlinedAt: !2151)
!2167 = !{!2168}
!2168 = distinct !{!2168, !2169, !"quoting_options_from_style: argument 0"}
!2169 = distinct !{!2169, !"quoting_options_from_style"}
!2170 = !DILocation(line: 191, column: 10, scope: !2056, inlinedAt: !2151)
!2171 = !DILocation(line: 192, column: 1, scope: !2056, inlinedAt: !2151)
!2172 = !DILocation(line: 957, column: 10, scope: !2084, inlinedAt: !2152)
!2173 = !DILocation(line: 958, column: 1, scope: !2084, inlinedAt: !2152)
!2174 = !DILocation(line: 969, column: 3, scope: !2143)
!2175 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !135, file: !135, line: 973, type: !2176, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!6, !24, !27, !7}
!2178 = !{!2179, !2180, !2181, !2182}
!2179 = !DILocalVariable(name: "arg", arg: 1, scope: !2175, file: !135, line: 973, type: !24)
!2180 = !DILocalVariable(name: "argsize", arg: 2, scope: !2175, file: !135, line: 973, type: !27)
!2181 = !DILocalVariable(name: "ch", arg: 3, scope: !2175, file: !135, line: 973, type: !7)
!2182 = !DILocalVariable(name: "options", scope: !2175, file: !135, line: 975, type: !142)
!2183 = !DILocation(line: 973, column: 32, scope: !2175)
!2184 = !DILocation(line: 973, column: 44, scope: !2175)
!2185 = !DILocation(line: 973, column: 58, scope: !2175)
!2186 = !DILocation(line: 975, column: 3, scope: !2175)
!2187 = !DILocation(line: 976, column: 13, scope: !2175)
!2188 = !{i64 0, i64 4, !680, i64 4, i64 4, !645, i64 8, i64 32, !680, i64 40, i64 8, !597, i64 48, i64 8, !597}
!2189 = !DILocation(line: 975, column: 26, scope: !2175)
!2190 = !DILocation(line: 144, column: 43, scope: !930, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 977, column: 3, scope: !2175)
!2192 = !DILocation(line: 144, column: 51, scope: !930, inlinedAt: !2191)
!2193 = !DILocation(line: 144, column: 58, scope: !930, inlinedAt: !2191)
!2194 = !DILocation(line: 146, column: 17, scope: !930, inlinedAt: !2191)
!2195 = !DILocation(line: 148, column: 62, scope: !930, inlinedAt: !2191)
!2196 = !DILocation(line: 148, column: 57, scope: !930, inlinedAt: !2191)
!2197 = !DILocation(line: 147, column: 17, scope: !930, inlinedAt: !2191)
!2198 = !DILocation(line: 149, column: 18, scope: !930, inlinedAt: !2191)
!2199 = !DILocation(line: 149, column: 15, scope: !930, inlinedAt: !2191)
!2200 = !DILocation(line: 149, column: 7, scope: !930, inlinedAt: !2191)
!2201 = !DILocation(line: 150, column: 12, scope: !930, inlinedAt: !2191)
!2202 = !DILocation(line: 150, column: 15, scope: !930, inlinedAt: !2191)
!2203 = !DILocation(line: 150, column: 25, scope: !930, inlinedAt: !2191)
!2204 = !DILocation(line: 150, column: 7, scope: !930, inlinedAt: !2191)
!2205 = !DILocation(line: 151, column: 18, scope: !930, inlinedAt: !2191)
!2206 = !DILocation(line: 151, column: 23, scope: !930, inlinedAt: !2191)
!2207 = !DILocation(line: 151, column: 6, scope: !930, inlinedAt: !2191)
!2208 = !DILocation(line: 978, column: 10, scope: !2175)
!2209 = !DILocation(line: 979, column: 1, scope: !2175)
!2210 = !DILocation(line: 978, column: 3, scope: !2175)
!2211 = distinct !DISubprogram(name: "quotearg_char", scope: !135, file: !135, line: 982, type: !2212, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!6, !24, !7}
!2214 = !{!2215, !2216}
!2215 = !DILocalVariable(name: "arg", arg: 1, scope: !2211, file: !135, line: 982, type: !24)
!2216 = !DILocalVariable(name: "ch", arg: 2, scope: !2211, file: !135, line: 982, type: !7)
!2217 = !DILocation(line: 982, column: 28, scope: !2211)
!2218 = !DILocation(line: 982, column: 38, scope: !2211)
!2219 = !DILocation(line: 973, column: 32, scope: !2175, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 984, column: 10, scope: !2211)
!2221 = !DILocation(line: 973, column: 44, scope: !2175, inlinedAt: !2220)
!2222 = !DILocation(line: 973, column: 58, scope: !2175, inlinedAt: !2220)
!2223 = !DILocation(line: 975, column: 3, scope: !2175, inlinedAt: !2220)
!2224 = !DILocation(line: 976, column: 13, scope: !2175, inlinedAt: !2220)
!2225 = !DILocation(line: 975, column: 26, scope: !2175, inlinedAt: !2220)
!2226 = !DILocation(line: 144, column: 43, scope: !930, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 977, column: 3, scope: !2175, inlinedAt: !2220)
!2228 = !DILocation(line: 144, column: 51, scope: !930, inlinedAt: !2227)
!2229 = !DILocation(line: 144, column: 58, scope: !930, inlinedAt: !2227)
!2230 = !DILocation(line: 146, column: 17, scope: !930, inlinedAt: !2227)
!2231 = !DILocation(line: 148, column: 62, scope: !930, inlinedAt: !2227)
!2232 = !DILocation(line: 148, column: 57, scope: !930, inlinedAt: !2227)
!2233 = !DILocation(line: 147, column: 17, scope: !930, inlinedAt: !2227)
!2234 = !DILocation(line: 149, column: 18, scope: !930, inlinedAt: !2227)
!2235 = !DILocation(line: 149, column: 15, scope: !930, inlinedAt: !2227)
!2236 = !DILocation(line: 149, column: 7, scope: !930, inlinedAt: !2227)
!2237 = !DILocation(line: 150, column: 12, scope: !930, inlinedAt: !2227)
!2238 = !DILocation(line: 150, column: 15, scope: !930, inlinedAt: !2227)
!2239 = !DILocation(line: 150, column: 25, scope: !930, inlinedAt: !2227)
!2240 = !DILocation(line: 150, column: 7, scope: !930, inlinedAt: !2227)
!2241 = !DILocation(line: 151, column: 18, scope: !930, inlinedAt: !2227)
!2242 = !DILocation(line: 151, column: 23, scope: !930, inlinedAt: !2227)
!2243 = !DILocation(line: 151, column: 6, scope: !930, inlinedAt: !2227)
!2244 = !DILocation(line: 978, column: 10, scope: !2175, inlinedAt: !2220)
!2245 = !DILocation(line: 979, column: 1, scope: !2175, inlinedAt: !2220)
!2246 = !DILocation(line: 984, column: 3, scope: !2211)
!2247 = distinct !DISubprogram(name: "quotearg_colon", scope: !135, file: !135, line: 988, type: !764, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2248)
!2248 = !{!2249}
!2249 = !DILocalVariable(name: "arg", arg: 1, scope: !2247, file: !135, line: 988, type: !24)
!2250 = !DILocation(line: 988, column: 29, scope: !2247)
!2251 = !DILocation(line: 982, column: 28, scope: !2211, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 990, column: 10, scope: !2247)
!2253 = !DILocation(line: 982, column: 38, scope: !2211, inlinedAt: !2252)
!2254 = !DILocation(line: 973, column: 32, scope: !2175, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 984, column: 10, scope: !2211, inlinedAt: !2252)
!2256 = !DILocation(line: 973, column: 44, scope: !2175, inlinedAt: !2255)
!2257 = !DILocation(line: 973, column: 58, scope: !2175, inlinedAt: !2255)
!2258 = !DILocation(line: 975, column: 3, scope: !2175, inlinedAt: !2255)
!2259 = !DILocation(line: 976, column: 13, scope: !2175, inlinedAt: !2255)
!2260 = !DILocation(line: 975, column: 26, scope: !2175, inlinedAt: !2255)
!2261 = !DILocation(line: 144, column: 43, scope: !930, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 977, column: 3, scope: !2175, inlinedAt: !2255)
!2263 = !DILocation(line: 144, column: 51, scope: !930, inlinedAt: !2262)
!2264 = !DILocation(line: 144, column: 58, scope: !930, inlinedAt: !2262)
!2265 = !DILocation(line: 146, column: 17, scope: !930, inlinedAt: !2262)
!2266 = !DILocation(line: 148, column: 57, scope: !930, inlinedAt: !2262)
!2267 = !DILocation(line: 147, column: 17, scope: !930, inlinedAt: !2262)
!2268 = !DILocation(line: 149, column: 7, scope: !930, inlinedAt: !2262)
!2269 = !DILocation(line: 150, column: 12, scope: !930, inlinedAt: !2262)
!2270 = !DILocation(line: 151, column: 6, scope: !930, inlinedAt: !2262)
!2271 = !DILocation(line: 978, column: 10, scope: !2175, inlinedAt: !2255)
!2272 = !DILocation(line: 979, column: 1, scope: !2175, inlinedAt: !2255)
!2273 = !DILocation(line: 990, column: 3, scope: !2247)
!2274 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !135, file: !135, line: 994, type: !2034, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2275)
!2275 = !{!2276, !2277}
!2276 = !DILocalVariable(name: "arg", arg: 1, scope: !2274, file: !135, line: 994, type: !24)
!2277 = !DILocalVariable(name: "argsize", arg: 2, scope: !2274, file: !135, line: 994, type: !27)
!2278 = !DILocation(line: 994, column: 33, scope: !2274)
!2279 = !DILocation(line: 994, column: 45, scope: !2274)
!2280 = !DILocation(line: 973, column: 32, scope: !2175, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 996, column: 10, scope: !2274)
!2282 = !DILocation(line: 973, column: 44, scope: !2175, inlinedAt: !2281)
!2283 = !DILocation(line: 973, column: 58, scope: !2175, inlinedAt: !2281)
!2284 = !DILocation(line: 975, column: 3, scope: !2175, inlinedAt: !2281)
!2285 = !DILocation(line: 976, column: 13, scope: !2175, inlinedAt: !2281)
!2286 = !DILocation(line: 975, column: 26, scope: !2175, inlinedAt: !2281)
!2287 = !DILocation(line: 144, column: 43, scope: !930, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 977, column: 3, scope: !2175, inlinedAt: !2281)
!2289 = !DILocation(line: 144, column: 51, scope: !930, inlinedAt: !2288)
!2290 = !DILocation(line: 144, column: 58, scope: !930, inlinedAt: !2288)
!2291 = !DILocation(line: 146, column: 17, scope: !930, inlinedAt: !2288)
!2292 = !DILocation(line: 148, column: 57, scope: !930, inlinedAt: !2288)
!2293 = !DILocation(line: 147, column: 17, scope: !930, inlinedAt: !2288)
!2294 = !DILocation(line: 149, column: 7, scope: !930, inlinedAt: !2288)
!2295 = !DILocation(line: 150, column: 12, scope: !930, inlinedAt: !2288)
!2296 = !DILocation(line: 151, column: 6, scope: !930, inlinedAt: !2288)
!2297 = !DILocation(line: 978, column: 10, scope: !2175, inlinedAt: !2281)
!2298 = !DILocation(line: 979, column: 1, scope: !2175, inlinedAt: !2281)
!2299 = !DILocation(line: 996, column: 3, scope: !2274)
!2300 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !135, file: !135, line: 1000, type: !2048, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2301)
!2301 = !{!2302, !2303, !2304, !2305}
!2302 = !DILocalVariable(name: "n", arg: 1, scope: !2300, file: !135, line: 1000, type: !16)
!2303 = !DILocalVariable(name: "s", arg: 2, scope: !2300, file: !135, line: 1000, type: !96)
!2304 = !DILocalVariable(name: "arg", arg: 3, scope: !2300, file: !135, line: 1000, type: !24)
!2305 = !DILocalVariable(name: "options", scope: !2300, file: !135, line: 1002, type: !142)
!2306 = !DILocation(line: 187, column: 26, scope: !2056, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 1003, column: 13, scope: !2300)
!2308 = !DILocation(line: 1000, column: 29, scope: !2300)
!2309 = !DILocation(line: 1000, column: 51, scope: !2300)
!2310 = !DILocation(line: 1000, column: 66, scope: !2300)
!2311 = !DILocation(line: 1002, column: 3, scope: !2300)
!2312 = !DILocation(line: 185, column: 48, scope: !2056, inlinedAt: !2307)
!2313 = !DILocation(line: 187, column: 3, scope: !2056, inlinedAt: !2307)
!2314 = !DILocation(line: 188, column: 13, scope: !2073, inlinedAt: !2307)
!2315 = !DILocation(line: 188, column: 7, scope: !2056, inlinedAt: !2307)
!2316 = !DILocation(line: 189, column: 5, scope: !2073, inlinedAt: !2307)
!2317 = !{!2318}
!2318 = distinct !{!2318, !2319, !"quoting_options_from_style: argument 0"}
!2319 = distinct !{!2319, !"quoting_options_from_style"}
!2320 = !DILocation(line: 191, column: 10, scope: !2056, inlinedAt: !2307)
!2321 = !DILocation(line: 192, column: 1, scope: !2056, inlinedAt: !2307)
!2322 = !DILocation(line: 1003, column: 13, scope: !2300)
!2323 = !DILocation(line: 1002, column: 26, scope: !2300)
!2324 = !DILocation(line: 144, column: 43, scope: !930, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 1004, column: 3, scope: !2300)
!2326 = !DILocation(line: 144, column: 51, scope: !930, inlinedAt: !2325)
!2327 = !DILocation(line: 144, column: 58, scope: !930, inlinedAt: !2325)
!2328 = !DILocation(line: 146, column: 17, scope: !930, inlinedAt: !2325)
!2329 = !DILocation(line: 148, column: 57, scope: !930, inlinedAt: !2325)
!2330 = !DILocation(line: 147, column: 17, scope: !930, inlinedAt: !2325)
!2331 = !DILocation(line: 149, column: 7, scope: !930, inlinedAt: !2325)
!2332 = !DILocation(line: 150, column: 12, scope: !930, inlinedAt: !2325)
!2333 = !DILocation(line: 151, column: 6, scope: !930, inlinedAt: !2325)
!2334 = !DILocation(line: 1005, column: 10, scope: !2300)
!2335 = !DILocation(line: 1006, column: 1, scope: !2300)
!2336 = !DILocation(line: 1005, column: 3, scope: !2300)
!2337 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !135, file: !135, line: 1009, type: !2338, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!6, !16, !24, !24, !24}
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DILocalVariable(name: "n", arg: 1, scope: !2337, file: !135, line: 1009, type: !16)
!2342 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2337, file: !135, line: 1009, type: !24)
!2343 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2337, file: !135, line: 1010, type: !24)
!2344 = !DILocalVariable(name: "arg", arg: 4, scope: !2337, file: !135, line: 1010, type: !24)
!2345 = !DILocation(line: 1009, column: 24, scope: !2337)
!2346 = !DILocation(line: 1009, column: 39, scope: !2337)
!2347 = !DILocation(line: 1010, column: 32, scope: !2337)
!2348 = !DILocation(line: 1010, column: 57, scope: !2337)
!2349 = !DILocalVariable(name: "n", arg: 1, scope: !2350, file: !135, line: 1017, type: !16)
!2350 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !135, file: !135, line: 1017, type: !2351, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!6, !16, !24, !24, !24, !27}
!2353 = !{!2349, !2354, !2355, !2356, !2357, !2358}
!2354 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2350, file: !135, line: 1017, type: !24)
!2355 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2350, file: !135, line: 1018, type: !24)
!2356 = !DILocalVariable(name: "arg", arg: 4, scope: !2350, file: !135, line: 1019, type: !24)
!2357 = !DILocalVariable(name: "argsize", arg: 5, scope: !2350, file: !135, line: 1019, type: !27)
!2358 = !DILocalVariable(name: "o", scope: !2350, file: !135, line: 1021, type: !142)
!2359 = !DILocation(line: 1017, column: 28, scope: !2350, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 1012, column: 10, scope: !2337)
!2361 = !DILocation(line: 1017, column: 43, scope: !2350, inlinedAt: !2360)
!2362 = !DILocation(line: 1018, column: 36, scope: !2350, inlinedAt: !2360)
!2363 = !DILocation(line: 1019, column: 36, scope: !2350, inlinedAt: !2360)
!2364 = !DILocation(line: 1019, column: 48, scope: !2350, inlinedAt: !2360)
!2365 = !DILocation(line: 1021, column: 3, scope: !2350, inlinedAt: !2360)
!2366 = !DILocation(line: 1021, column: 30, scope: !2350, inlinedAt: !2360)
!2367 = !DILocation(line: 1021, column: 26, scope: !2350, inlinedAt: !2360)
!2368 = !DILocation(line: 171, column: 45, scope: !979, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 1022, column: 3, scope: !2350, inlinedAt: !2360)
!2370 = !DILocation(line: 172, column: 33, scope: !979, inlinedAt: !2369)
!2371 = !DILocation(line: 172, column: 57, scope: !979, inlinedAt: !2369)
!2372 = !DILocation(line: 176, column: 6, scope: !979, inlinedAt: !2369)
!2373 = !DILocation(line: 176, column: 12, scope: !979, inlinedAt: !2369)
!2374 = !DILocation(line: 177, column: 8, scope: !995, inlinedAt: !2369)
!2375 = !DILocation(line: 177, column: 23, scope: !995, inlinedAt: !2369)
!2376 = !DILocation(line: 177, column: 19, scope: !995, inlinedAt: !2369)
!2377 = !DILocation(line: 178, column: 5, scope: !995, inlinedAt: !2369)
!2378 = !DILocation(line: 179, column: 6, scope: !979, inlinedAt: !2369)
!2379 = !DILocation(line: 179, column: 17, scope: !979, inlinedAt: !2369)
!2380 = !DILocation(line: 180, column: 6, scope: !979, inlinedAt: !2369)
!2381 = !DILocation(line: 180, column: 18, scope: !979, inlinedAt: !2369)
!2382 = !DILocation(line: 1023, column: 10, scope: !2350, inlinedAt: !2360)
!2383 = !DILocation(line: 1024, column: 1, scope: !2350, inlinedAt: !2360)
!2384 = !DILocation(line: 1012, column: 3, scope: !2337)
!2385 = !DILocation(line: 1017, column: 28, scope: !2350)
!2386 = !DILocation(line: 1017, column: 43, scope: !2350)
!2387 = !DILocation(line: 1018, column: 36, scope: !2350)
!2388 = !DILocation(line: 1019, column: 36, scope: !2350)
!2389 = !DILocation(line: 1019, column: 48, scope: !2350)
!2390 = !DILocation(line: 1021, column: 3, scope: !2350)
!2391 = !DILocation(line: 1021, column: 30, scope: !2350)
!2392 = !DILocation(line: 1021, column: 26, scope: !2350)
!2393 = !DILocation(line: 171, column: 45, scope: !979, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 1022, column: 3, scope: !2350)
!2395 = !DILocation(line: 172, column: 33, scope: !979, inlinedAt: !2394)
!2396 = !DILocation(line: 172, column: 57, scope: !979, inlinedAt: !2394)
!2397 = !DILocation(line: 176, column: 6, scope: !979, inlinedAt: !2394)
!2398 = !DILocation(line: 176, column: 12, scope: !979, inlinedAt: !2394)
!2399 = !DILocation(line: 177, column: 8, scope: !995, inlinedAt: !2394)
!2400 = !DILocation(line: 177, column: 23, scope: !995, inlinedAt: !2394)
!2401 = !DILocation(line: 177, column: 19, scope: !995, inlinedAt: !2394)
!2402 = !DILocation(line: 178, column: 5, scope: !995, inlinedAt: !2394)
!2403 = !DILocation(line: 179, column: 6, scope: !979, inlinedAt: !2394)
!2404 = !DILocation(line: 179, column: 17, scope: !979, inlinedAt: !2394)
!2405 = !DILocation(line: 180, column: 6, scope: !979, inlinedAt: !2394)
!2406 = !DILocation(line: 180, column: 18, scope: !979, inlinedAt: !2394)
!2407 = !DILocation(line: 1023, column: 10, scope: !2350)
!2408 = !DILocation(line: 1024, column: 1, scope: !2350)
!2409 = !DILocation(line: 1023, column: 3, scope: !2350)
!2410 = distinct !DISubprogram(name: "quotearg_custom", scope: !135, file: !135, line: 1027, type: !2411, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!6, !24, !24, !24}
!2413 = !{!2414, !2415, !2416}
!2414 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2410, file: !135, line: 1027, type: !24)
!2415 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2410, file: !135, line: 1027, type: !24)
!2416 = !DILocalVariable(name: "arg", arg: 3, scope: !2410, file: !135, line: 1028, type: !24)
!2417 = !DILocation(line: 1027, column: 30, scope: !2410)
!2418 = !DILocation(line: 1027, column: 54, scope: !2410)
!2419 = !DILocation(line: 1028, column: 30, scope: !2410)
!2420 = !DILocation(line: 1009, column: 24, scope: !2337, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 1030, column: 10, scope: !2410)
!2422 = !DILocation(line: 1009, column: 39, scope: !2337, inlinedAt: !2421)
!2423 = !DILocation(line: 1010, column: 32, scope: !2337, inlinedAt: !2421)
!2424 = !DILocation(line: 1010, column: 57, scope: !2337, inlinedAt: !2421)
!2425 = !DILocation(line: 1017, column: 28, scope: !2350, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 1012, column: 10, scope: !2337, inlinedAt: !2421)
!2427 = !DILocation(line: 1017, column: 43, scope: !2350, inlinedAt: !2426)
!2428 = !DILocation(line: 1018, column: 36, scope: !2350, inlinedAt: !2426)
!2429 = !DILocation(line: 1019, column: 36, scope: !2350, inlinedAt: !2426)
!2430 = !DILocation(line: 1019, column: 48, scope: !2350, inlinedAt: !2426)
!2431 = !DILocation(line: 1021, column: 3, scope: !2350, inlinedAt: !2426)
!2432 = !DILocation(line: 1021, column: 30, scope: !2350, inlinedAt: !2426)
!2433 = !DILocation(line: 1021, column: 26, scope: !2350, inlinedAt: !2426)
!2434 = !DILocation(line: 171, column: 45, scope: !979, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 1022, column: 3, scope: !2350, inlinedAt: !2426)
!2436 = !DILocation(line: 172, column: 33, scope: !979, inlinedAt: !2435)
!2437 = !DILocation(line: 172, column: 57, scope: !979, inlinedAt: !2435)
!2438 = !DILocation(line: 176, column: 6, scope: !979, inlinedAt: !2435)
!2439 = !DILocation(line: 176, column: 12, scope: !979, inlinedAt: !2435)
!2440 = !DILocation(line: 177, column: 8, scope: !995, inlinedAt: !2435)
!2441 = !DILocation(line: 177, column: 23, scope: !995, inlinedAt: !2435)
!2442 = !DILocation(line: 177, column: 19, scope: !995, inlinedAt: !2435)
!2443 = !DILocation(line: 178, column: 5, scope: !995, inlinedAt: !2435)
!2444 = !DILocation(line: 179, column: 6, scope: !979, inlinedAt: !2435)
!2445 = !DILocation(line: 179, column: 17, scope: !979, inlinedAt: !2435)
!2446 = !DILocation(line: 180, column: 6, scope: !979, inlinedAt: !2435)
!2447 = !DILocation(line: 180, column: 18, scope: !979, inlinedAt: !2435)
!2448 = !DILocation(line: 1023, column: 10, scope: !2350, inlinedAt: !2426)
!2449 = !DILocation(line: 1024, column: 1, scope: !2350, inlinedAt: !2426)
!2450 = !DILocation(line: 1030, column: 3, scope: !2410)
!2451 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !135, file: !135, line: 1034, type: !2452, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!6, !24, !24, !24, !27}
!2454 = !{!2455, !2456, !2457, !2458}
!2455 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2451, file: !135, line: 1034, type: !24)
!2456 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2451, file: !135, line: 1034, type: !24)
!2457 = !DILocalVariable(name: "arg", arg: 3, scope: !2451, file: !135, line: 1035, type: !24)
!2458 = !DILocalVariable(name: "argsize", arg: 4, scope: !2451, file: !135, line: 1035, type: !27)
!2459 = !DILocation(line: 1034, column: 34, scope: !2451)
!2460 = !DILocation(line: 1034, column: 58, scope: !2451)
!2461 = !DILocation(line: 1035, column: 34, scope: !2451)
!2462 = !DILocation(line: 1035, column: 46, scope: !2451)
!2463 = !DILocation(line: 1017, column: 28, scope: !2350, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 1037, column: 10, scope: !2451)
!2465 = !DILocation(line: 1017, column: 43, scope: !2350, inlinedAt: !2464)
!2466 = !DILocation(line: 1018, column: 36, scope: !2350, inlinedAt: !2464)
!2467 = !DILocation(line: 1019, column: 36, scope: !2350, inlinedAt: !2464)
!2468 = !DILocation(line: 1019, column: 48, scope: !2350, inlinedAt: !2464)
!2469 = !DILocation(line: 1021, column: 3, scope: !2350, inlinedAt: !2464)
!2470 = !DILocation(line: 1021, column: 30, scope: !2350, inlinedAt: !2464)
!2471 = !DILocation(line: 1021, column: 26, scope: !2350, inlinedAt: !2464)
!2472 = !DILocation(line: 171, column: 45, scope: !979, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 1022, column: 3, scope: !2350, inlinedAt: !2464)
!2474 = !DILocation(line: 172, column: 33, scope: !979, inlinedAt: !2473)
!2475 = !DILocation(line: 172, column: 57, scope: !979, inlinedAt: !2473)
!2476 = !DILocation(line: 176, column: 6, scope: !979, inlinedAt: !2473)
!2477 = !DILocation(line: 176, column: 12, scope: !979, inlinedAt: !2473)
!2478 = !DILocation(line: 177, column: 8, scope: !995, inlinedAt: !2473)
!2479 = !DILocation(line: 177, column: 23, scope: !995, inlinedAt: !2473)
!2480 = !DILocation(line: 177, column: 19, scope: !995, inlinedAt: !2473)
!2481 = !DILocation(line: 178, column: 5, scope: !995, inlinedAt: !2473)
!2482 = !DILocation(line: 179, column: 6, scope: !979, inlinedAt: !2473)
!2483 = !DILocation(line: 179, column: 17, scope: !979, inlinedAt: !2473)
!2484 = !DILocation(line: 180, column: 6, scope: !979, inlinedAt: !2473)
!2485 = !DILocation(line: 180, column: 18, scope: !979, inlinedAt: !2473)
!2486 = !DILocation(line: 1023, column: 10, scope: !2350, inlinedAt: !2464)
!2487 = !DILocation(line: 1024, column: 1, scope: !2350, inlinedAt: !2464)
!2488 = !DILocation(line: 1037, column: 3, scope: !2451)
!2489 = distinct !DISubprogram(name: "quote_n_mem", scope: !135, file: !135, line: 1052, type: !2490, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!24, !16, !24, !27}
!2492 = !{!2493, !2494, !2495}
!2493 = !DILocalVariable(name: "n", arg: 1, scope: !2489, file: !135, line: 1052, type: !16)
!2494 = !DILocalVariable(name: "arg", arg: 2, scope: !2489, file: !135, line: 1052, type: !24)
!2495 = !DILocalVariable(name: "argsize", arg: 3, scope: !2489, file: !135, line: 1052, type: !27)
!2496 = !DILocation(line: 1052, column: 18, scope: !2489)
!2497 = !DILocation(line: 1052, column: 33, scope: !2489)
!2498 = !DILocation(line: 1052, column: 45, scope: !2489)
!2499 = !DILocation(line: 1054, column: 10, scope: !2489)
!2500 = !DILocation(line: 1054, column: 3, scope: !2489)
!2501 = distinct !DISubprogram(name: "quote_mem", scope: !135, file: !135, line: 1058, type: !2502, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!24, !24, !27}
!2504 = !{!2505, !2506}
!2505 = !DILocalVariable(name: "arg", arg: 1, scope: !2501, file: !135, line: 1058, type: !24)
!2506 = !DILocalVariable(name: "argsize", arg: 2, scope: !2501, file: !135, line: 1058, type: !27)
!2507 = !DILocation(line: 1058, column: 24, scope: !2501)
!2508 = !DILocation(line: 1058, column: 36, scope: !2501)
!2509 = !DILocation(line: 1052, column: 18, scope: !2489, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 1060, column: 10, scope: !2501)
!2511 = !DILocation(line: 1052, column: 33, scope: !2489, inlinedAt: !2510)
!2512 = !DILocation(line: 1052, column: 45, scope: !2489, inlinedAt: !2510)
!2513 = !DILocation(line: 1054, column: 10, scope: !2489, inlinedAt: !2510)
!2514 = !DILocation(line: 1060, column: 3, scope: !2501)
!2515 = distinct !DISubprogram(name: "quote_n", scope: !135, file: !135, line: 1064, type: !2516, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!24, !16, !24}
!2518 = !{!2519, !2520}
!2519 = !DILocalVariable(name: "n", arg: 1, scope: !2515, file: !135, line: 1064, type: !16)
!2520 = !DILocalVariable(name: "arg", arg: 2, scope: !2515, file: !135, line: 1064, type: !24)
!2521 = !DILocation(line: 1064, column: 14, scope: !2515)
!2522 = !DILocation(line: 1064, column: 29, scope: !2515)
!2523 = !DILocation(line: 1052, column: 18, scope: !2489, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 1066, column: 10, scope: !2515)
!2525 = !DILocation(line: 1052, column: 33, scope: !2489, inlinedAt: !2524)
!2526 = !DILocation(line: 1052, column: 45, scope: !2489, inlinedAt: !2524)
!2527 = !DILocation(line: 1054, column: 10, scope: !2489, inlinedAt: !2524)
!2528 = !DILocation(line: 1066, column: 3, scope: !2515)
!2529 = distinct !DISubprogram(name: "quote", scope: !135, file: !135, line: 1070, type: !2530, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!24, !24}
!2532 = !{!2533}
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !135, line: 1070, type: !24)
!2534 = !DILocation(line: 1070, column: 20, scope: !2529)
!2535 = !DILocation(line: 1064, column: 14, scope: !2515, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 1072, column: 10, scope: !2529)
!2537 = !DILocation(line: 1064, column: 29, scope: !2515, inlinedAt: !2536)
!2538 = !DILocation(line: 1052, column: 18, scope: !2489, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 1066, column: 10, scope: !2515, inlinedAt: !2536)
!2540 = !DILocation(line: 1052, column: 33, scope: !2489, inlinedAt: !2539)
!2541 = !DILocation(line: 1052, column: 45, scope: !2489, inlinedAt: !2539)
!2542 = !DILocation(line: 1054, column: 10, scope: !2489, inlinedAt: !2539)
!2543 = !DILocation(line: 1072, column: 3, scope: !2529)
!2544 = distinct !DISubprogram(name: "version_etc_arn", scope: !541, file: !541, line: 62, type: !2545, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2603)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !2547, !24, !24, !24, !2602, !27}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2549, line: 7, baseType: !2550)
!2549 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2551, line: 241, size: 1728, elements: !2552)
!2551 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2573, !2574, !2575, !2576, !2580, !2581, !2583, !2587, !2590, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2550, file: !2551, line: 242, baseType: !16, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2550, file: !2551, line: 247, baseType: !6, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2550, file: !2551, line: 248, baseType: !6, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2550, file: !2551, line: 249, baseType: !6, size: 64, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2550, file: !2551, line: 250, baseType: !6, size: 64, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2550, file: !2551, line: 251, baseType: !6, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2550, file: !2551, line: 252, baseType: !6, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2550, file: !2551, line: 253, baseType: !6, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2550, file: !2551, line: 254, baseType: !6, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2550, file: !2551, line: 256, baseType: !6, size: 64, offset: 576)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2550, file: !2551, line: 257, baseType: !6, size: 64, offset: 640)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2550, file: !2551, line: 258, baseType: !6, size: 64, offset: 704)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2550, file: !2551, line: 260, baseType: !2566, size: 64, offset: 768)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2551, line: 156, size: 192, elements: !2568)
!2568 = !{!2569, !2570, !2572}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2567, file: !2551, line: 157, baseType: !2566, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2567, file: !2551, line: 158, baseType: !2571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2567, file: !2551, line: 162, baseType: !16, size: 32, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2550, file: !2551, line: 262, baseType: !2571, size: 64, offset: 832)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2550, file: !2551, line: 264, baseType: !16, size: 32, offset: 896)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2550, file: !2551, line: 268, baseType: !16, size: 32, offset: 928)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2550, file: !2551, line: 270, baseType: !2577, size: 64, offset: 960)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2578, line: 140, baseType: !2579)
!2578 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2579 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2550, file: !2551, line: 274, baseType: !131, size: 16, offset: 1024)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2550, file: !2551, line: 275, baseType: !2582, size: 8, offset: 1040)
!2582 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2550, file: !2551, line: 276, baseType: !2584, size: 8, offset: 1048)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2585)
!2585 = !{!2586}
!2586 = !DISubrange(count: 1)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2550, file: !2551, line: 280, baseType: !2588, size: 64, offset: 1088)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2551, line: 150, baseType: null)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2550, file: !2551, line: 289, baseType: !2591, size: 64, offset: 1152)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2578, line: 141, baseType: !2579)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2550, file: !2551, line: 297, baseType: !8, size: 64, offset: 1216)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2550, file: !2551, line: 298, baseType: !8, size: 64, offset: 1280)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2550, file: !2551, line: 299, baseType: !8, size: 64, offset: 1344)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2550, file: !2551, line: 300, baseType: !8, size: 64, offset: 1408)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2550, file: !2551, line: 302, baseType: !27, size: 64, offset: 1472)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2550, file: !2551, line: 303, baseType: !16, size: 32, offset: 1536)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2550, file: !2551, line: 305, baseType: !2599, size: 160, offset: 1568)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2600)
!2600 = !{!2601}
!2601 = !DISubrange(count: 20)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609}
!2604 = !DILocalVariable(name: "stream", arg: 1, scope: !2544, file: !541, line: 62, type: !2547)
!2605 = !DILocalVariable(name: "command_name", arg: 2, scope: !2544, file: !541, line: 63, type: !24)
!2606 = !DILocalVariable(name: "package", arg: 3, scope: !2544, file: !541, line: 63, type: !24)
!2607 = !DILocalVariable(name: "version", arg: 4, scope: !2544, file: !541, line: 64, type: !24)
!2608 = !DILocalVariable(name: "authors", arg: 5, scope: !2544, file: !541, line: 65, type: !2602)
!2609 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2544, file: !541, line: 65, type: !27)
!2610 = !DILocation(line: 62, column: 24, scope: !2544)
!2611 = !DILocation(line: 63, column: 30, scope: !2544)
!2612 = !DILocation(line: 63, column: 56, scope: !2544)
!2613 = !DILocation(line: 64, column: 30, scope: !2544)
!2614 = !DILocation(line: 65, column: 39, scope: !2544)
!2615 = !DILocation(line: 65, column: 55, scope: !2544)
!2616 = !DILocation(line: 67, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2544, file: !541, line: 67, column: 7)
!2618 = !DILocation(line: 67, column: 7, scope: !2544)
!2619 = !DILocation(line: 68, column: 5, scope: !2617)
!2620 = !DILocation(line: 70, column: 5, scope: !2617)
!2621 = !DILocation(line: 84, column: 3, scope: !2544)
!2622 = !DILocation(line: 86, column: 3, scope: !2544)
!2623 = !DILocation(line: 95, column: 3, scope: !2544)
!2624 = !DILocation(line: 99, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2544, file: !541, line: 96, column: 5)
!2626 = !DILocation(line: 102, column: 7, scope: !2625)
!2627 = !DILocation(line: 103, column: 7, scope: !2625)
!2628 = !DILocation(line: 106, column: 7, scope: !2625)
!2629 = !DILocation(line: 107, column: 7, scope: !2625)
!2630 = !DILocation(line: 110, column: 7, scope: !2625)
!2631 = !DILocation(line: 112, column: 7, scope: !2625)
!2632 = !DILocation(line: 117, column: 7, scope: !2625)
!2633 = !DILocation(line: 119, column: 7, scope: !2625)
!2634 = !DILocation(line: 124, column: 7, scope: !2625)
!2635 = !DILocation(line: 126, column: 7, scope: !2625)
!2636 = !DILocation(line: 131, column: 7, scope: !2625)
!2637 = !DILocation(line: 134, column: 7, scope: !2625)
!2638 = !DILocation(line: 139, column: 7, scope: !2625)
!2639 = !DILocation(line: 142, column: 7, scope: !2625)
!2640 = !DILocation(line: 147, column: 7, scope: !2625)
!2641 = !DILocation(line: 151, column: 7, scope: !2625)
!2642 = !DILocation(line: 156, column: 7, scope: !2625)
!2643 = !DILocation(line: 160, column: 7, scope: !2625)
!2644 = !DILocation(line: 167, column: 7, scope: !2625)
!2645 = !DILocation(line: 171, column: 7, scope: !2625)
!2646 = !DILocation(line: 173, column: 1, scope: !2544)
!2647 = distinct !DISubprogram(name: "version_etc_ar", scope: !541, file: !541, line: 180, type: !2648, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !2547, !24, !24, !24, !2602}
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656}
!2651 = !DILocalVariable(name: "stream", arg: 1, scope: !2647, file: !541, line: 180, type: !2547)
!2652 = !DILocalVariable(name: "command_name", arg: 2, scope: !2647, file: !541, line: 181, type: !24)
!2653 = !DILocalVariable(name: "package", arg: 3, scope: !2647, file: !541, line: 181, type: !24)
!2654 = !DILocalVariable(name: "version", arg: 4, scope: !2647, file: !541, line: 182, type: !24)
!2655 = !DILocalVariable(name: "authors", arg: 5, scope: !2647, file: !541, line: 182, type: !2602)
!2656 = !DILocalVariable(name: "n_authors", scope: !2647, file: !541, line: 184, type: !27)
!2657 = !DILocation(line: 180, column: 23, scope: !2647)
!2658 = !DILocation(line: 181, column: 29, scope: !2647)
!2659 = !DILocation(line: 181, column: 55, scope: !2647)
!2660 = !DILocation(line: 182, column: 29, scope: !2647)
!2661 = !DILocation(line: 182, column: 59, scope: !2647)
!2662 = !DILocation(line: 184, column: 10, scope: !2647)
!2663 = !DILocation(line: 186, column: 8, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2647, file: !541, line: 186, column: 3)
!2665 = !DILocation(line: 186, column: 23, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2664, file: !541, line: 186, column: 3)
!2667 = !DILocation(line: 186, column: 3, scope: !2664)
!2668 = !DILocation(line: 186, column: 52, scope: !2666)
!2669 = distinct !{!2669, !2667, !2670}
!2670 = !DILocation(line: 187, column: 5, scope: !2664)
!2671 = !DILocation(line: 188, column: 3, scope: !2647)
!2672 = !DILocation(line: 189, column: 1, scope: !2647)
!2673 = distinct !DISubprogram(name: "version_etc_va", scope: !541, file: !541, line: 196, type: !2674, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2683)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{null, !2547, !24, !24, !24, !2676}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !538, line: 189, size: 192, elements: !2678)
!2678 = !{!2679, !2680, !2681, !2682}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2677, file: !538, line: 189, baseType: !148, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2677, file: !538, line: 189, baseType: !148, size: 32, offset: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2677, file: !538, line: 189, baseType: !8, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2677, file: !538, line: 189, baseType: !8, size: 64, offset: 128)
!2683 = !{!2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2684 = !DILocalVariable(name: "stream", arg: 1, scope: !2673, file: !541, line: 196, type: !2547)
!2685 = !DILocalVariable(name: "command_name", arg: 2, scope: !2673, file: !541, line: 197, type: !24)
!2686 = !DILocalVariable(name: "package", arg: 3, scope: !2673, file: !541, line: 197, type: !24)
!2687 = !DILocalVariable(name: "version", arg: 4, scope: !2673, file: !541, line: 198, type: !24)
!2688 = !DILocalVariable(name: "authors", arg: 5, scope: !2673, file: !541, line: 198, type: !2676)
!2689 = !DILocalVariable(name: "n_authors", scope: !2673, file: !541, line: 200, type: !27)
!2690 = !DILocalVariable(name: "authtab", scope: !2673, file: !541, line: 201, type: !2691)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 640, elements: !138)
!2692 = !DILocation(line: 196, column: 23, scope: !2673)
!2693 = !DILocation(line: 197, column: 29, scope: !2673)
!2694 = !DILocation(line: 197, column: 55, scope: !2673)
!2695 = !DILocation(line: 198, column: 29, scope: !2673)
!2696 = !DILocation(line: 198, column: 46, scope: !2673)
!2697 = !DILocation(line: 201, column: 3, scope: !2673)
!2698 = !DILocation(line: 201, column: 15, scope: !2673)
!2699 = !DILocation(line: 200, column: 10, scope: !2673)
!2700 = !DILocation(line: 205, column: 35, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !541, line: 203, column: 3)
!2702 = distinct !DILexicalBlock(scope: !2673, file: !541, line: 203, column: 3)
!2703 = !DILocation(line: 205, column: 14, scope: !2701)
!2704 = !DILocation(line: 205, column: 33, scope: !2701)
!2705 = !DILocation(line: 205, column: 67, scope: !2701)
!2706 = !DILocation(line: 203, column: 3, scope: !2702)
!2707 = !DILocation(line: 208, column: 3, scope: !2673)
!2708 = !DILocation(line: 210, column: 1, scope: !2673)
!2709 = distinct !DISubprogram(name: "version_etc", scope: !541, file: !541, line: 227, type: !2710, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !2547, !24, !24, !24, null}
!2712 = !{!2713, !2714, !2715, !2716, !2717}
!2713 = !DILocalVariable(name: "stream", arg: 1, scope: !2709, file: !541, line: 227, type: !2547)
!2714 = !DILocalVariable(name: "command_name", arg: 2, scope: !2709, file: !541, line: 228, type: !24)
!2715 = !DILocalVariable(name: "package", arg: 3, scope: !2709, file: !541, line: 228, type: !24)
!2716 = !DILocalVariable(name: "version", arg: 4, scope: !2709, file: !541, line: 229, type: !24)
!2717 = !DILocalVariable(name: "authors", scope: !2709, file: !541, line: 231, type: !2718)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2719, line: 46, baseType: !2720)
!2719 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2721, line: 48, baseType: !2722)
!2721 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !538, line: 231, baseType: !2723)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2677, size: 192, elements: !2585)
!2724 = !DILocation(line: 227, column: 20, scope: !2709)
!2725 = !DILocation(line: 228, column: 26, scope: !2709)
!2726 = !DILocation(line: 228, column: 52, scope: !2709)
!2727 = !DILocation(line: 229, column: 26, scope: !2709)
!2728 = !DILocation(line: 231, column: 3, scope: !2709)
!2729 = !DILocation(line: 231, column: 11, scope: !2709)
!2730 = !DILocation(line: 233, column: 3, scope: !2709)
!2731 = !DILocation(line: 234, column: 3, scope: !2709)
!2732 = !DILocation(line: 235, column: 3, scope: !2709)
!2733 = !DILocation(line: 236, column: 1, scope: !2709)
!2734 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !541, file: !541, line: 239, type: !703, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !4)
!2735 = !DILocation(line: 245, column: 3, scope: !2734)
!2736 = !DILocation(line: 251, column: 3, scope: !2734)
!2737 = !DILocation(line: 256, column: 3, scope: !2734)
!2738 = !DILocation(line: 258, column: 1, scope: !2734)
!2739 = distinct !DISubprogram(name: "xnmalloc", scope: !549, file: !549, line: 105, type: !2740, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!8, !27, !27}
!2742 = !{!2743, !2744}
!2743 = !DILocalVariable(name: "n", arg: 1, scope: !2739, file: !549, line: 105, type: !27)
!2744 = !DILocalVariable(name: "s", arg: 2, scope: !2739, file: !549, line: 105, type: !27)
!2745 = !DILocation(line: 105, column: 18, scope: !2739)
!2746 = !DILocation(line: 105, column: 28, scope: !2739)
!2747 = !DILocation(line: 107, column: 7, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2739, file: !549, line: 107, column: 7)
!2749 = !DILocation(line: 107, column: 7, scope: !2739)
!2750 = !DILocation(line: 108, column: 5, scope: !2748)
!2751 = !DILocation(line: 109, column: 21, scope: !2739)
!2752 = !DILocalVariable(name: "n", arg: 1, scope: !2753, file: !2754, line: 39, type: !27)
!2753 = distinct !DISubprogram(name: "xmalloc", scope: !2754, file: !2754, line: 39, type: !2755, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2757)
!2754 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!8, !27}
!2757 = !{!2752, !2758}
!2758 = !DILocalVariable(name: "p", scope: !2753, file: !2754, line: 41, type: !8)
!2759 = !DILocation(line: 39, column: 17, scope: !2753, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 109, column: 10, scope: !2739)
!2761 = !DILocation(line: 41, column: 13, scope: !2753, inlinedAt: !2760)
!2762 = !DILocation(line: 41, column: 9, scope: !2753, inlinedAt: !2760)
!2763 = !DILocation(line: 42, column: 8, scope: !2764, inlinedAt: !2760)
!2764 = distinct !DILexicalBlock(scope: !2753, file: !2754, line: 42, column: 7)
!2765 = !DILocation(line: 42, column: 15, scope: !2764, inlinedAt: !2760)
!2766 = !DILocation(line: 42, column: 10, scope: !2764, inlinedAt: !2760)
!2767 = !DILocation(line: 43, column: 5, scope: !2764, inlinedAt: !2760)
!2768 = !DILocation(line: 109, column: 3, scope: !2739)
!2769 = !DILocation(line: 39, column: 17, scope: !2753)
!2770 = !DILocation(line: 41, column: 13, scope: !2753)
!2771 = !DILocation(line: 41, column: 9, scope: !2753)
!2772 = !DILocation(line: 42, column: 8, scope: !2764)
!2773 = !DILocation(line: 42, column: 15, scope: !2764)
!2774 = !DILocation(line: 42, column: 10, scope: !2764)
!2775 = !DILocation(line: 43, column: 5, scope: !2764)
!2776 = !DILocation(line: 44, column: 3, scope: !2753)
!2777 = distinct !DISubprogram(name: "xnrealloc", scope: !549, file: !549, line: 118, type: !2778, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!8, !8, !27, !27}
!2780 = !{!2781, !2782, !2783}
!2781 = !DILocalVariable(name: "p", arg: 1, scope: !2777, file: !549, line: 118, type: !8)
!2782 = !DILocalVariable(name: "n", arg: 2, scope: !2777, file: !549, line: 118, type: !27)
!2783 = !DILocalVariable(name: "s", arg: 3, scope: !2777, file: !549, line: 118, type: !27)
!2784 = !DILocation(line: 118, column: 18, scope: !2777)
!2785 = !DILocation(line: 118, column: 28, scope: !2777)
!2786 = !DILocation(line: 118, column: 38, scope: !2777)
!2787 = !DILocation(line: 120, column: 7, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2777, file: !549, line: 120, column: 7)
!2789 = !DILocation(line: 120, column: 7, scope: !2777)
!2790 = !DILocation(line: 121, column: 5, scope: !2788)
!2791 = !DILocation(line: 122, column: 25, scope: !2777)
!2792 = !DILocalVariable(name: "p", arg: 1, scope: !2793, file: !2754, line: 51, type: !8)
!2793 = distinct !DISubprogram(name: "xrealloc", scope: !2754, file: !2754, line: 51, type: !2794, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!8, !8, !27}
!2796 = !{!2792, !2797}
!2797 = !DILocalVariable(name: "n", arg: 2, scope: !2793, file: !2754, line: 51, type: !27)
!2798 = !DILocation(line: 51, column: 17, scope: !2793, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 122, column: 10, scope: !2777)
!2800 = !DILocation(line: 51, column: 27, scope: !2793, inlinedAt: !2799)
!2801 = !DILocation(line: 53, column: 8, scope: !2802, inlinedAt: !2799)
!2802 = distinct !DILexicalBlock(scope: !2793, file: !2754, line: 53, column: 7)
!2803 = !DILocation(line: 53, column: 13, scope: !2802, inlinedAt: !2799)
!2804 = !DILocation(line: 53, column: 10, scope: !2802, inlinedAt: !2799)
!2805 = !DILocation(line: 57, column: 7, scope: !2806, inlinedAt: !2799)
!2806 = distinct !DILexicalBlock(scope: !2802, file: !2754, line: 54, column: 5)
!2807 = !DILocation(line: 58, column: 7, scope: !2806, inlinedAt: !2799)
!2808 = !DILocation(line: 61, column: 7, scope: !2793, inlinedAt: !2799)
!2809 = !DILocation(line: 62, column: 8, scope: !2810, inlinedAt: !2799)
!2810 = distinct !DILexicalBlock(scope: !2793, file: !2754, line: 62, column: 7)
!2811 = !DILocation(line: 62, column: 13, scope: !2810, inlinedAt: !2799)
!2812 = !DILocation(line: 62, column: 10, scope: !2810, inlinedAt: !2799)
!2813 = !DILocation(line: 63, column: 5, scope: !2810, inlinedAt: !2799)
!2814 = !DILocation(line: 122, column: 3, scope: !2777)
!2815 = !DILocation(line: 51, column: 17, scope: !2793)
!2816 = !DILocation(line: 51, column: 27, scope: !2793)
!2817 = !DILocation(line: 53, column: 8, scope: !2802)
!2818 = !DILocation(line: 53, column: 13, scope: !2802)
!2819 = !DILocation(line: 53, column: 10, scope: !2802)
!2820 = !DILocation(line: 57, column: 7, scope: !2806)
!2821 = !DILocation(line: 58, column: 7, scope: !2806)
!2822 = !DILocation(line: 61, column: 7, scope: !2793)
!2823 = !DILocation(line: 62, column: 8, scope: !2810)
!2824 = !DILocation(line: 62, column: 13, scope: !2810)
!2825 = !DILocation(line: 62, column: 10, scope: !2810)
!2826 = !DILocation(line: 63, column: 5, scope: !2810)
!2827 = !DILocation(line: 65, column: 1, scope: !2793)
!2828 = !DILocation(line: 180, column: 19, scope: !550)
!2829 = !DILocation(line: 180, column: 30, scope: !550)
!2830 = !DILocation(line: 180, column: 41, scope: !550)
!2831 = !DILocation(line: 182, column: 14, scope: !550)
!2832 = !DILocation(line: 182, column: 10, scope: !550)
!2833 = !DILocation(line: 184, column: 9, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !550, file: !549, line: 184, column: 7)
!2835 = !DILocation(line: 184, column: 7, scope: !550)
!2836 = !DILocation(line: 186, column: 13, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !549, line: 186, column: 11)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !549, line: 185, column: 5)
!2839 = !DILocation(line: 186, column: 11, scope: !2838)
!2840 = !DILocation(line: 194, column: 30, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2837, file: !549, line: 187, column: 9)
!2842 = !DILocation(line: 195, column: 16, scope: !2841)
!2843 = !DILocation(line: 195, column: 13, scope: !2841)
!2844 = !DILocation(line: 196, column: 9, scope: !2841)
!2845 = !DILocation(line: 204, column: 69, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !549, line: 204, column: 11)
!2847 = distinct !DILexicalBlock(scope: !2834, file: !549, line: 199, column: 5)
!2848 = !DILocation(line: 205, column: 11, scope: !2846)
!2849 = !DILocation(line: 204, column: 11, scope: !2847)
!2850 = !DILocation(line: 206, column: 9, scope: !2846)
!2851 = !DILocation(line: 210, column: 7, scope: !550)
!2852 = !DILocation(line: 211, column: 25, scope: !550)
!2853 = !DILocation(line: 51, column: 17, scope: !2793, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 211, column: 10, scope: !550)
!2855 = !DILocation(line: 51, column: 27, scope: !2793, inlinedAt: !2854)
!2856 = !DILocation(line: 53, column: 10, scope: !2802, inlinedAt: !2854)
!2857 = !DILocation(line: 207, column: 14, scope: !2847)
!2858 = !DILocation(line: 207, column: 18, scope: !2847)
!2859 = !DILocation(line: 207, column: 9, scope: !2847)
!2860 = !DILocation(line: 53, column: 8, scope: !2802, inlinedAt: !2854)
!2861 = !DILocation(line: 57, column: 7, scope: !2806, inlinedAt: !2854)
!2862 = !DILocation(line: 58, column: 7, scope: !2806, inlinedAt: !2854)
!2863 = !DILocation(line: 61, column: 7, scope: !2793, inlinedAt: !2854)
!2864 = !DILocation(line: 62, column: 8, scope: !2810, inlinedAt: !2854)
!2865 = !DILocation(line: 62, column: 13, scope: !2810, inlinedAt: !2854)
!2866 = !DILocation(line: 62, column: 10, scope: !2810, inlinedAt: !2854)
!2867 = !DILocation(line: 63, column: 5, scope: !2810, inlinedAt: !2854)
!2868 = !DILocation(line: 211, column: 3, scope: !550)
!2869 = distinct !DISubprogram(name: "xcharalloc", scope: !549, file: !549, line: 220, type: !1824, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2870)
!2870 = !{!2871}
!2871 = !DILocalVariable(name: "n", arg: 1, scope: !2869, file: !549, line: 220, type: !27)
!2872 = !DILocation(line: 220, column: 20, scope: !2869)
!2873 = !DILocation(line: 39, column: 17, scope: !2753, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 222, column: 10, scope: !2869)
!2875 = !DILocation(line: 41, column: 13, scope: !2753, inlinedAt: !2874)
!2876 = !DILocation(line: 41, column: 9, scope: !2753, inlinedAt: !2874)
!2877 = !DILocation(line: 42, column: 8, scope: !2764, inlinedAt: !2874)
!2878 = !DILocation(line: 42, column: 15, scope: !2764, inlinedAt: !2874)
!2879 = !DILocation(line: 42, column: 10, scope: !2764, inlinedAt: !2874)
!2880 = !DILocation(line: 43, column: 5, scope: !2764, inlinedAt: !2874)
!2881 = !DILocation(line: 222, column: 3, scope: !2869)
!2882 = distinct !DISubprogram(name: "x2realloc", scope: !2754, file: !2754, line: 74, type: !2883, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!8, !8, !553}
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "p", arg: 1, scope: !2882, file: !2754, line: 74, type: !8)
!2887 = !DILocalVariable(name: "pn", arg: 2, scope: !2882, file: !2754, line: 74, type: !553)
!2888 = !DILocation(line: 74, column: 18, scope: !2882)
!2889 = !DILocation(line: 74, column: 29, scope: !2882)
!2890 = !DILocation(line: 180, column: 19, scope: !550, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 76, column: 10, scope: !2882)
!2892 = !DILocation(line: 180, column: 30, scope: !550, inlinedAt: !2891)
!2893 = !DILocation(line: 180, column: 41, scope: !550, inlinedAt: !2891)
!2894 = !DILocation(line: 182, column: 14, scope: !550, inlinedAt: !2891)
!2895 = !DILocation(line: 182, column: 10, scope: !550, inlinedAt: !2891)
!2896 = !DILocation(line: 184, column: 9, scope: !2834, inlinedAt: !2891)
!2897 = !DILocation(line: 184, column: 7, scope: !550, inlinedAt: !2891)
!2898 = !DILocation(line: 186, column: 13, scope: !2837, inlinedAt: !2891)
!2899 = !DILocation(line: 186, column: 11, scope: !2838, inlinedAt: !2891)
!2900 = !DILocation(line: 210, column: 7, scope: !550, inlinedAt: !2891)
!2901 = !DILocation(line: 51, column: 17, scope: !2793, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 211, column: 10, scope: !550, inlinedAt: !2891)
!2903 = !DILocation(line: 51, column: 27, scope: !2793, inlinedAt: !2902)
!2904 = !DILocation(line: 53, column: 10, scope: !2802, inlinedAt: !2902)
!2905 = !DILocation(line: 205, column: 11, scope: !2846, inlinedAt: !2891)
!2906 = !DILocation(line: 204, column: 11, scope: !2847, inlinedAt: !2891)
!2907 = !DILocation(line: 206, column: 9, scope: !2846, inlinedAt: !2891)
!2908 = !DILocation(line: 207, column: 14, scope: !2847, inlinedAt: !2891)
!2909 = !DILocation(line: 207, column: 18, scope: !2847, inlinedAt: !2891)
!2910 = !DILocation(line: 207, column: 9, scope: !2847, inlinedAt: !2891)
!2911 = !DILocation(line: 53, column: 8, scope: !2802, inlinedAt: !2902)
!2912 = !DILocation(line: 57, column: 7, scope: !2806, inlinedAt: !2902)
!2913 = !DILocation(line: 58, column: 7, scope: !2806, inlinedAt: !2902)
!2914 = !DILocation(line: 61, column: 7, scope: !2793, inlinedAt: !2902)
!2915 = !DILocation(line: 62, column: 8, scope: !2810, inlinedAt: !2902)
!2916 = !DILocation(line: 62, column: 13, scope: !2810, inlinedAt: !2902)
!2917 = !DILocation(line: 62, column: 10, scope: !2810, inlinedAt: !2902)
!2918 = !DILocation(line: 63, column: 5, scope: !2810, inlinedAt: !2902)
!2919 = !DILocation(line: 76, column: 3, scope: !2882)
!2920 = distinct !DISubprogram(name: "xzalloc", scope: !2754, file: !2754, line: 84, type: !2755, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2921)
!2921 = !{!2922}
!2922 = !DILocalVariable(name: "s", arg: 1, scope: !2920, file: !2754, line: 84, type: !27)
!2923 = !DILocation(line: 84, column: 17, scope: !2920)
!2924 = !DILocation(line: 39, column: 17, scope: !2753, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 86, column: 18, scope: !2920)
!2926 = !DILocation(line: 41, column: 13, scope: !2753, inlinedAt: !2925)
!2927 = !DILocation(line: 41, column: 9, scope: !2753, inlinedAt: !2925)
!2928 = !DILocation(line: 42, column: 8, scope: !2764, inlinedAt: !2925)
!2929 = !DILocation(line: 42, column: 15, scope: !2764, inlinedAt: !2925)
!2930 = !DILocation(line: 42, column: 10, scope: !2764, inlinedAt: !2925)
!2931 = !DILocation(line: 43, column: 5, scope: !2764, inlinedAt: !2925)
!2932 = !DILocation(line: 86, column: 10, scope: !2920)
!2933 = !DILocation(line: 86, column: 3, scope: !2920)
!2934 = distinct !DISubprogram(name: "xcalloc", scope: !2754, file: !2754, line: 93, type: !2740, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2935)
!2935 = !{!2936, !2937, !2938}
!2936 = !DILocalVariable(name: "n", arg: 1, scope: !2934, file: !2754, line: 93, type: !27)
!2937 = !DILocalVariable(name: "s", arg: 2, scope: !2934, file: !2754, line: 93, type: !27)
!2938 = !DILocalVariable(name: "p", scope: !2934, file: !2754, line: 95, type: !8)
!2939 = !DILocation(line: 93, column: 17, scope: !2934)
!2940 = !DILocation(line: 93, column: 27, scope: !2934)
!2941 = !DILocation(line: 100, column: 7, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2934, file: !2754, line: 100, column: 7)
!2943 = !DILocation(line: 101, column: 7, scope: !2942)
!2944 = !DILocation(line: 101, column: 18, scope: !2942)
!2945 = !DILocation(line: 95, column: 9, scope: !2934)
!2946 = !DILocation(line: 101, column: 16, scope: !2942)
!2947 = !DILocation(line: 100, column: 7, scope: !2934)
!2948 = !DILocation(line: 102, column: 5, scope: !2942)
!2949 = !DILocation(line: 103, column: 3, scope: !2934)
!2950 = distinct !DISubprogram(name: "xmemdup", scope: !2754, file: !2754, line: 111, type: !2951, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2955)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!8, !2953, !27}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "p", arg: 1, scope: !2950, file: !2754, line: 111, type: !2953)
!2957 = !DILocalVariable(name: "s", arg: 2, scope: !2950, file: !2754, line: 111, type: !27)
!2958 = !DILocation(line: 111, column: 22, scope: !2950)
!2959 = !DILocation(line: 111, column: 32, scope: !2950)
!2960 = !DILocation(line: 39, column: 17, scope: !2753, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 113, column: 18, scope: !2950)
!2962 = !DILocation(line: 41, column: 13, scope: !2753, inlinedAt: !2961)
!2963 = !DILocation(line: 41, column: 9, scope: !2753, inlinedAt: !2961)
!2964 = !DILocation(line: 42, column: 8, scope: !2764, inlinedAt: !2961)
!2965 = !DILocation(line: 42, column: 15, scope: !2764, inlinedAt: !2961)
!2966 = !DILocation(line: 42, column: 10, scope: !2764, inlinedAt: !2961)
!2967 = !DILocation(line: 43, column: 5, scope: !2764, inlinedAt: !2961)
!2968 = !DILocation(line: 113, column: 10, scope: !2950)
!2969 = !DILocation(line: 113, column: 3, scope: !2950)
!2970 = distinct !DISubprogram(name: "xstrdup", scope: !2754, file: !2754, line: 119, type: !764, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2971)
!2971 = !{!2972}
!2972 = !DILocalVariable(name: "string", arg: 1, scope: !2970, file: !2754, line: 119, type: !24)
!2973 = !DILocation(line: 119, column: 22, scope: !2970)
!2974 = !DILocation(line: 121, column: 27, scope: !2970)
!2975 = !DILocation(line: 121, column: 43, scope: !2970)
!2976 = !DILocation(line: 111, column: 22, scope: !2950, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 121, column: 10, scope: !2970)
!2978 = !DILocation(line: 111, column: 32, scope: !2950, inlinedAt: !2977)
!2979 = !DILocation(line: 39, column: 17, scope: !2753, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 113, column: 18, scope: !2950, inlinedAt: !2977)
!2981 = !DILocation(line: 41, column: 13, scope: !2753, inlinedAt: !2980)
!2982 = !DILocation(line: 41, column: 9, scope: !2753, inlinedAt: !2980)
!2983 = !DILocation(line: 42, column: 8, scope: !2764, inlinedAt: !2980)
!2984 = !DILocation(line: 42, column: 15, scope: !2764, inlinedAt: !2980)
!2985 = !DILocation(line: 42, column: 10, scope: !2764, inlinedAt: !2980)
!2986 = !DILocation(line: 43, column: 5, scope: !2764, inlinedAt: !2980)
!2987 = !DILocation(line: 113, column: 10, scope: !2950, inlinedAt: !2977)
!2988 = !DILocation(line: 121, column: 3, scope: !2970)
!2989 = distinct !DISubprogram(name: "xalloc_die", scope: !2990, file: !2990, line: 32, type: !703, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !562, variables: !4)
!2990 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2991 = !DILocation(line: 34, column: 10, scope: !2989)
!2992 = !DILocation(line: 34, column: 33, scope: !2989)
!2993 = !DILocation(line: 34, column: 3, scope: !2989)
!2994 = !DILocation(line: 40, column: 3, scope: !2989)
!2995 = distinct !DISubprogram(name: "rpl_calloc", scope: !2996, file: !2996, line: 42, type: !2740, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !2997)
!2996 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2997 = !{!2998, !2999, !3000, !3001}
!2998 = !DILocalVariable(name: "n", arg: 1, scope: !2995, file: !2996, line: 42, type: !27)
!2999 = !DILocalVariable(name: "s", arg: 2, scope: !2995, file: !2996, line: 42, type: !27)
!3000 = !DILocalVariable(name: "result", scope: !2995, file: !2996, line: 44, type: !8)
!3001 = !DILocalVariable(name: "bytes", scope: !3002, file: !2996, line: 56, type: !27)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !2996, line: 53, column: 5)
!3003 = distinct !DILexicalBlock(scope: !2995, file: !2996, line: 47, column: 7)
!3004 = !DILocation(line: 42, column: 20, scope: !2995)
!3005 = !DILocation(line: 42, column: 30, scope: !2995)
!3006 = !DILocation(line: 47, column: 9, scope: !3003)
!3007 = !DILocation(line: 47, column: 19, scope: !3003)
!3008 = !DILocation(line: 47, column: 14, scope: !3003)
!3009 = !DILocation(line: 56, column: 24, scope: !3002)
!3010 = !DILocation(line: 56, column: 14, scope: !3002)
!3011 = !DILocation(line: 57, column: 17, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3002, file: !2996, line: 57, column: 11)
!3013 = !DILocation(line: 57, column: 21, scope: !3012)
!3014 = !DILocation(line: 57, column: 11, scope: !3002)
!3015 = !DILocation(line: 59, column: 11, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3012, file: !2996, line: 58, column: 9)
!3017 = !DILocation(line: 59, column: 17, scope: !3016)
!3018 = !DILocation(line: 65, column: 12, scope: !2995)
!3019 = !DILocation(line: 44, column: 9, scope: !2995)
!3020 = !DILocation(line: 72, column: 3, scope: !2995)
!3021 = !DILocation(line: 73, column: 1, scope: !2995)
!3022 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3023, file: !3023, line: 334, type: !3024, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3038)
!3023 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!27, !3026, !24, !27, !3027}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1078, line: 6, baseType: !3029)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1080, line: 21, baseType: !3030)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 13, size: 64, elements: !3031)
!3031 = !{!3032, !3033}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3030, file: !1080, line: 15, baseType: !16, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3030, file: !1080, line: 20, baseType: !3034, size: 32, offset: 32)
!3034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3030, file: !1080, line: 16, size: 32, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3034, file: !1080, line: 18, baseType: !148, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3034, file: !1080, line: 19, baseType: !1089, size: 32)
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045}
!3039 = !DILocalVariable(name: "pwc", arg: 1, scope: !3022, file: !3023, line: 334, type: !3026)
!3040 = !DILocalVariable(name: "s", arg: 2, scope: !3022, file: !3023, line: 334, type: !24)
!3041 = !DILocalVariable(name: "n", arg: 3, scope: !3022, file: !3023, line: 334, type: !27)
!3042 = !DILocalVariable(name: "ps", arg: 4, scope: !3022, file: !3023, line: 334, type: !3027)
!3043 = !DILocalVariable(name: "ret", scope: !3022, file: !3023, line: 336, type: !27)
!3044 = !DILocalVariable(name: "wc", scope: !3022, file: !3023, line: 337, type: !1092)
!3045 = !DILocalVariable(name: "uc", scope: !3046, file: !3023, line: 398, type: !9)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !3023, line: 397, column: 5)
!3047 = distinct !DILexicalBlock(scope: !3022, file: !3023, line: 396, column: 7)
!3048 = !DILocation(line: 334, column: 23, scope: !3022)
!3049 = !DILocation(line: 334, column: 40, scope: !3022)
!3050 = !DILocation(line: 334, column: 50, scope: !3022)
!3051 = !DILocation(line: 334, column: 64, scope: !3022)
!3052 = !DILocation(line: 337, column: 3, scope: !3022)
!3053 = !DILocation(line: 353, column: 9, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3022, file: !3023, line: 353, column: 7)
!3055 = !DILocation(line: 353, column: 7, scope: !3022)
!3056 = !DILocation(line: 388, column: 9, scope: !3022)
!3057 = !DILocation(line: 336, column: 10, scope: !3022)
!3058 = !DILocation(line: 396, column: 19, scope: !3047)
!3059 = !DILocation(line: 396, column: 31, scope: !3047)
!3060 = !DILocation(line: 396, column: 26, scope: !3047)
!3061 = !DILocation(line: 396, column: 41, scope: !3047)
!3062 = !DILocation(line: 396, column: 7, scope: !3022)
!3063 = !DILocation(line: 398, column: 26, scope: !3046)
!3064 = !DILocation(line: 398, column: 21, scope: !3046)
!3065 = !DILocation(line: 399, column: 14, scope: !3046)
!3066 = !DILocation(line: 399, column: 12, scope: !3046)
!3067 = !DILocation(line: 405, column: 1, scope: !3022)
!3068 = distinct !DISubprogram(name: "close_stream", scope: !3069, file: !3069, line: 56, type: !3070, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3112)
!3069 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!16, !3072}
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2549, line: 7, baseType: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2551, line: 241, size: 1728, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3074, file: !2551, line: 242, baseType: !16, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3074, file: !2551, line: 247, baseType: !6, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3074, file: !2551, line: 248, baseType: !6, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3074, file: !2551, line: 249, baseType: !6, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3074, file: !2551, line: 250, baseType: !6, size: 64, offset: 256)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3074, file: !2551, line: 251, baseType: !6, size: 64, offset: 320)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3074, file: !2551, line: 252, baseType: !6, size: 64, offset: 384)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3074, file: !2551, line: 253, baseType: !6, size: 64, offset: 448)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3074, file: !2551, line: 254, baseType: !6, size: 64, offset: 512)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3074, file: !2551, line: 256, baseType: !6, size: 64, offset: 576)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3074, file: !2551, line: 257, baseType: !6, size: 64, offset: 640)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3074, file: !2551, line: 258, baseType: !6, size: 64, offset: 704)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3074, file: !2551, line: 260, baseType: !3089, size: 64, offset: 768)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2551, line: 156, size: 192, elements: !3091)
!3091 = !{!3092, !3093, !3095}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3090, file: !2551, line: 157, baseType: !3089, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3090, file: !2551, line: 158, baseType: !3094, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3090, file: !2551, line: 162, baseType: !16, size: 32, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3074, file: !2551, line: 262, baseType: !3094, size: 64, offset: 832)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3074, file: !2551, line: 264, baseType: !16, size: 32, offset: 896)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3074, file: !2551, line: 268, baseType: !16, size: 32, offset: 928)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3074, file: !2551, line: 270, baseType: !2577, size: 64, offset: 960)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3074, file: !2551, line: 274, baseType: !131, size: 16, offset: 1024)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3074, file: !2551, line: 275, baseType: !2582, size: 8, offset: 1040)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3074, file: !2551, line: 276, baseType: !2584, size: 8, offset: 1048)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3074, file: !2551, line: 280, baseType: !2588, size: 64, offset: 1088)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3074, file: !2551, line: 289, baseType: !2591, size: 64, offset: 1152)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3074, file: !2551, line: 297, baseType: !8, size: 64, offset: 1216)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3074, file: !2551, line: 298, baseType: !8, size: 64, offset: 1280)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3074, file: !2551, line: 299, baseType: !8, size: 64, offset: 1344)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3074, file: !2551, line: 300, baseType: !8, size: 64, offset: 1408)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3074, file: !2551, line: 302, baseType: !27, size: 64, offset: 1472)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3074, file: !2551, line: 303, baseType: !16, size: 32, offset: 1536)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3074, file: !2551, line: 305, baseType: !2599, size: 160, offset: 1568)
!3112 = !{!3113, !3114, !3116, !3117}
!3113 = !DILocalVariable(name: "stream", arg: 1, scope: !3068, file: !3069, line: 56, type: !3072)
!3114 = !DILocalVariable(name: "some_pending", scope: !3068, file: !3069, line: 58, type: !3115)
!3115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!3116 = !DILocalVariable(name: "prev_fail", scope: !3068, file: !3069, line: 59, type: !3115)
!3117 = !DILocalVariable(name: "fclose_fail", scope: !3068, file: !3069, line: 60, type: !3115)
!3118 = !DILocation(line: 56, column: 21, scope: !3068)
!3119 = !DILocation(line: 58, column: 30, scope: !3068)
!3120 = !DILocalVariable(name: "__stream", arg: 1, scope: !3121, file: !667, line: 132, type: !3072)
!3121 = distinct !DISubprogram(name: "ferror_unlocked", scope: !667, file: !667, line: 132, type: !3070, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3122)
!3122 = !{!3120}
!3123 = !DILocation(line: 132, column: 1, scope: !3121, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 59, column: 27, scope: !3068)
!3125 = !DILocation(line: 134, column: 10, scope: !3121, inlinedAt: !3124)
!3126 = !{!675, !646, i64 0}
!3127 = !DILocation(line: 59, column: 43, scope: !3068)
!3128 = !DILocation(line: 60, column: 29, scope: !3068)
!3129 = !DILocation(line: 60, column: 45, scope: !3068)
!3130 = !DILocation(line: 70, column: 17, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3068, file: !3069, line: 70, column: 7)
!3132 = !DILocation(line: 58, column: 50, scope: !3068)
!3133 = !DILocation(line: 70, column: 33, scope: !3131)
!3134 = !DILocation(line: 70, column: 53, scope: !3131)
!3135 = !DILocation(line: 70, column: 59, scope: !3131)
!3136 = !DILocation(line: 70, column: 7, scope: !3068)
!3137 = !DILocation(line: 72, column: 11, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3131, file: !3069, line: 71, column: 5)
!3139 = !DILocation(line: 73, column: 9, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3138, file: !3069, line: 72, column: 11)
!3141 = !DILocation(line: 73, column: 15, scope: !3140)
!3142 = !DILocation(line: 78, column: 1, scope: !3068)
!3143 = distinct !DISubprogram(name: "hard_locale", scope: !3144, file: !3144, line: 38, type: !3145, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3147)
!3144 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!22, !16}
!3147 = !{!3148, !3149, !3150}
!3148 = !DILocalVariable(name: "category", arg: 1, scope: !3143, file: !3144, line: 38, type: !16)
!3149 = !DILocalVariable(name: "hard", scope: !3143, file: !3144, line: 40, type: !22)
!3150 = !DILocalVariable(name: "p", scope: !3143, file: !3144, line: 41, type: !24)
!3151 = !DILocation(line: 38, column: 18, scope: !3143)
!3152 = !DILocation(line: 40, column: 8, scope: !3143)
!3153 = !DILocation(line: 41, column: 19, scope: !3143)
!3154 = !DILocation(line: 41, column: 15, scope: !3143)
!3155 = !DILocation(line: 43, column: 7, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3143, file: !3144, line: 43, column: 7)
!3157 = !DILocation(line: 43, column: 7, scope: !3143)
!3158 = !DILocation(line: 47, column: 15, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !3144, line: 47, column: 15)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !3144, line: 46, column: 9)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !3144, line: 45, column: 11)
!3162 = distinct !DILexicalBlock(scope: !3156, file: !3144, line: 44, column: 5)
!3163 = !DILocation(line: 47, column: 31, scope: !3159)
!3164 = !DILocation(line: 47, column: 36, scope: !3159)
!3165 = !DILocation(line: 47, column: 39, scope: !3159)
!3166 = !DILocation(line: 47, column: 59, scope: !3159)
!3167 = !DILocation(line: 47, column: 15, scope: !3160)
!3168 = !DILocation(line: 48, column: 13, scope: !3159)
!3169 = !DILocation(line: 71, column: 3, scope: !3143)
!3170 = distinct !DISubprogram(name: "locale_charset", scope: !530, file: !530, line: 393, type: !3171, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!24}
!3173 = !{!3174, !3175}
!3174 = !DILocalVariable(name: "codeset", scope: !3170, file: !530, line: 395, type: !24)
!3175 = !DILocalVariable(name: "aliases", scope: !3170, file: !530, line: 396, type: !24)
!3176 = !DILocalVariable(name: "buf1", scope: !3177, file: !530, line: 196, type: !3244)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !530, line: 194, column: 21)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !530, line: 193, column: 19)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !530, line: 193, column: 19)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !530, line: 188, column: 17)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !530, line: 181, column: 19)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !530, line: 177, column: 13)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !530, line: 173, column: 15)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !530, line: 161, column: 9)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !530, line: 157, column: 11)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !530, line: 130, column: 5)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !530, line: 129, column: 7)
!3188 = distinct !DISubprogram(name: "get_charset_aliases", scope: !530, file: !530, line: 124, type: !3171, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3189)
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3196, !3197, !3198, !3199, !3240, !3241, !3242, !3176, !3243, !3247, !3248, !3249}
!3190 = !DILocalVariable(name: "cp", scope: !3188, file: !530, line: 126, type: !24)
!3191 = !DILocalVariable(name: "dir", scope: !3186, file: !530, line: 132, type: !24)
!3192 = !DILocalVariable(name: "base", scope: !3186, file: !530, line: 133, type: !24)
!3193 = !DILocalVariable(name: "file_name", scope: !3186, file: !530, line: 134, type: !6)
!3194 = !DILocalVariable(name: "dir_len", scope: !3195, file: !530, line: 144, type: !27)
!3195 = distinct !DILexicalBlock(scope: !3186, file: !530, line: 143, column: 7)
!3196 = !DILocalVariable(name: "base_len", scope: !3195, file: !530, line: 145, type: !27)
!3197 = !DILocalVariable(name: "add_slash", scope: !3195, file: !530, line: 146, type: !16)
!3198 = !DILocalVariable(name: "fd", scope: !3184, file: !530, line: 162, type: !16)
!3199 = !DILocalVariable(name: "fp", scope: !3182, file: !530, line: 178, type: !3200)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2549, line: 7, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2551, line: 241, size: 1728, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3202, file: !2551, line: 242, baseType: !16, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3202, file: !2551, line: 247, baseType: !6, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3202, file: !2551, line: 248, baseType: !6, size: 64, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3202, file: !2551, line: 249, baseType: !6, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3202, file: !2551, line: 250, baseType: !6, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3202, file: !2551, line: 251, baseType: !6, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3202, file: !2551, line: 252, baseType: !6, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3202, file: !2551, line: 253, baseType: !6, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3202, file: !2551, line: 254, baseType: !6, size: 64, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3202, file: !2551, line: 256, baseType: !6, size: 64, offset: 576)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3202, file: !2551, line: 257, baseType: !6, size: 64, offset: 640)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3202, file: !2551, line: 258, baseType: !6, size: 64, offset: 704)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3202, file: !2551, line: 260, baseType: !3217, size: 64, offset: 768)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2551, line: 156, size: 192, elements: !3219)
!3219 = !{!3220, !3221, !3223}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3218, file: !2551, line: 157, baseType: !3217, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3218, file: !2551, line: 158, baseType: !3222, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3218, file: !2551, line: 162, baseType: !16, size: 32, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3202, file: !2551, line: 262, baseType: !3222, size: 64, offset: 832)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3202, file: !2551, line: 264, baseType: !16, size: 32, offset: 896)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3202, file: !2551, line: 268, baseType: !16, size: 32, offset: 928)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3202, file: !2551, line: 270, baseType: !2577, size: 64, offset: 960)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3202, file: !2551, line: 274, baseType: !131, size: 16, offset: 1024)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3202, file: !2551, line: 275, baseType: !2582, size: 8, offset: 1040)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3202, file: !2551, line: 276, baseType: !2584, size: 8, offset: 1048)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3202, file: !2551, line: 280, baseType: !2588, size: 64, offset: 1088)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3202, file: !2551, line: 289, baseType: !2591, size: 64, offset: 1152)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3202, file: !2551, line: 297, baseType: !8, size: 64, offset: 1216)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3202, file: !2551, line: 298, baseType: !8, size: 64, offset: 1280)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3202, file: !2551, line: 299, baseType: !8, size: 64, offset: 1344)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3202, file: !2551, line: 300, baseType: !8, size: 64, offset: 1408)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3202, file: !2551, line: 302, baseType: !27, size: 64, offset: 1472)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3202, file: !2551, line: 303, baseType: !16, size: 32, offset: 1536)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3202, file: !2551, line: 305, baseType: !2599, size: 160, offset: 1568)
!3240 = !DILocalVariable(name: "res_ptr", scope: !3180, file: !530, line: 190, type: !6)
!3241 = !DILocalVariable(name: "res_size", scope: !3180, file: !530, line: 191, type: !27)
!3242 = !DILocalVariable(name: "c", scope: !3177, file: !530, line: 195, type: !16)
!3243 = !DILocalVariable(name: "buf2", scope: !3177, file: !530, line: 197, type: !3244)
!3244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !3245)
!3245 = !{!3246}
!3246 = !DISubrange(count: 51)
!3247 = !DILocalVariable(name: "l1", scope: !3177, file: !530, line: 198, type: !27)
!3248 = !DILocalVariable(name: "l2", scope: !3177, file: !530, line: 198, type: !27)
!3249 = !DILocalVariable(name: "old_res_ptr", scope: !3177, file: !530, line: 199, type: !6)
!3250 = !DILocation(line: 196, column: 28, scope: !3177, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 589, column: 18, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3170, file: !530, line: 589, column: 3)
!3253 = !DILocation(line: 197, column: 28, scope: !3177, inlinedAt: !3251)
!3254 = !DILocation(line: 403, column: 13, scope: !3170)
!3255 = !DILocation(line: 395, column: 15, scope: !3170)
!3256 = !DILocation(line: 584, column: 15, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3170, file: !530, line: 584, column: 7)
!3258 = !DILocation(line: 584, column: 7, scope: !3170)
!3259 = !DILocation(line: 128, column: 8, scope: !3188, inlinedAt: !3251)
!3260 = !DILocation(line: 126, column: 15, scope: !3188, inlinedAt: !3251)
!3261 = !DILocation(line: 129, column: 10, scope: !3187, inlinedAt: !3251)
!3262 = !DILocation(line: 129, column: 7, scope: !3188, inlinedAt: !3251)
!3263 = !DILocation(line: 138, column: 13, scope: !3186, inlinedAt: !3251)
!3264 = !DILocation(line: 132, column: 19, scope: !3186, inlinedAt: !3251)
!3265 = !DILocation(line: 139, column: 15, scope: !3266, inlinedAt: !3251)
!3266 = distinct !DILexicalBlock(scope: !3186, file: !530, line: 139, column: 11)
!3267 = !DILocation(line: 139, column: 23, scope: !3266, inlinedAt: !3251)
!3268 = !DILocation(line: 139, column: 26, scope: !3266, inlinedAt: !3251)
!3269 = !DILocation(line: 139, column: 33, scope: !3266, inlinedAt: !3251)
!3270 = !DILocation(line: 139, column: 11, scope: !3186, inlinedAt: !3251)
!3271 = !DILocation(line: 140, column: 9, scope: !3266, inlinedAt: !3251)
!3272 = !DILocation(line: 144, column: 26, scope: !3195, inlinedAt: !3251)
!3273 = !DILocation(line: 144, column: 16, scope: !3195, inlinedAt: !3251)
!3274 = !DILocation(line: 145, column: 16, scope: !3195, inlinedAt: !3251)
!3275 = !DILocation(line: 146, column: 34, scope: !3195, inlinedAt: !3251)
!3276 = !DILocation(line: 146, column: 38, scope: !3195, inlinedAt: !3251)
!3277 = !DILocation(line: 146, column: 42, scope: !3195, inlinedAt: !3251)
!3278 = !DILocation(line: 147, column: 48, scope: !3195, inlinedAt: !3251)
!3279 = !DILocation(line: 147, column: 46, scope: !3195, inlinedAt: !3251)
!3280 = !DILocation(line: 147, column: 69, scope: !3195, inlinedAt: !3251)
!3281 = !DILocation(line: 147, column: 30, scope: !3195, inlinedAt: !3251)
!3282 = !DILocation(line: 134, column: 13, scope: !3186, inlinedAt: !3251)
!3283 = !DILocation(line: 148, column: 13, scope: !3195, inlinedAt: !3251)
!3284 = !DILocation(line: 150, column: 13, scope: !3285, inlinedAt: !3251)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !530, line: 149, column: 11)
!3286 = distinct !DILexicalBlock(scope: !3195, file: !530, line: 148, column: 13)
!3287 = !DILocation(line: 151, column: 17, scope: !3285, inlinedAt: !3251)
!3288 = !DILocation(line: 152, column: 34, scope: !3289, inlinedAt: !3251)
!3289 = distinct !DILexicalBlock(scope: !3285, file: !530, line: 151, column: 17)
!3290 = !DILocation(line: 153, column: 41, scope: !3285, inlinedAt: !3251)
!3291 = !DILocation(line: 153, column: 13, scope: !3285, inlinedAt: !3251)
!3292 = !DILocation(line: 157, column: 11, scope: !3186, inlinedAt: !3251)
!3293 = !DILocation(line: 171, column: 16, scope: !3184, inlinedAt: !3251)
!3294 = !DILocation(line: 162, column: 15, scope: !3184, inlinedAt: !3251)
!3295 = !DILocation(line: 173, column: 18, scope: !3183, inlinedAt: !3251)
!3296 = !DILocation(line: 173, column: 15, scope: !3184, inlinedAt: !3251)
!3297 = !DILocation(line: 180, column: 20, scope: !3182, inlinedAt: !3251)
!3298 = !DILocation(line: 178, column: 21, scope: !3182, inlinedAt: !3251)
!3299 = !DILocation(line: 181, column: 22, scope: !3181, inlinedAt: !3251)
!3300 = !DILocation(line: 181, column: 19, scope: !3182, inlinedAt: !3251)
!3301 = !DILocation(line: 184, column: 19, scope: !3302, inlinedAt: !3251)
!3302 = distinct !DILexicalBlock(scope: !3181, file: !530, line: 182, column: 17)
!3303 = !DILocation(line: 186, column: 17, scope: !3302, inlinedAt: !3251)
!3304 = !DILocation(line: 190, column: 25, scope: !3180, inlinedAt: !3251)
!3305 = !DILocation(line: 191, column: 26, scope: !3180, inlinedAt: !3251)
!3306 = !DILocation(line: 193, column: 19, scope: !3180, inlinedAt: !3251)
!3307 = !DILocation(line: 196, column: 23, scope: !3177, inlinedAt: !3251)
!3308 = !DILocation(line: 197, column: 23, scope: !3177, inlinedAt: !3251)
!3309 = !DILocalVariable(name: "__fp", arg: 1, scope: !3310, file: !667, line: 63, type: !3200)
!3310 = distinct !DISubprogram(name: "getc_unlocked", scope: !667, file: !667, line: 63, type: !3311, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!16, !3200}
!3313 = !{!3309}
!3314 = !DILocation(line: 63, column: 22, scope: !3310, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 201, column: 27, scope: !3177, inlinedAt: !3251)
!3316 = !DILocation(line: 65, column: 10, scope: !3310, inlinedAt: !3315)
!3317 = !{!675, !598, i64 8}
!3318 = !{!675, !598, i64 16}
!3319 = !DILocation(line: 195, column: 27, scope: !3177, inlinedAt: !3251)
!3320 = !DILocation(line: 202, column: 27, scope: !3177, inlinedAt: !3251)
!3321 = distinct !{!3321, !3322, !3325}
!3322 = !DILocation(line: 209, column: 27, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !530, line: 207, column: 25)
!3324 = distinct !DILexicalBlock(scope: !3177, file: !530, line: 206, column: 27)
!3325 = !DILocation(line: 211, column: 58, scope: !3323)
!3326 = !DILocation(line: 65, column: 10, scope: !3310, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 210, column: 33, scope: !3323, inlinedAt: !3251)
!3328 = !DILocation(line: 63, column: 22, scope: !3310, inlinedAt: !3327)
!3329 = !DILocation(line: 210, column: 29, scope: !3323, inlinedAt: !3251)
!3330 = distinct !{!3330, !3331, !3332}
!3331 = !DILocation(line: 193, column: 19, scope: !3179)
!3332 = !DILocation(line: 241, column: 21, scope: !3179)
!3333 = !DILocation(line: 216, column: 23, scope: !3177, inlinedAt: !3251)
!3334 = !DILocation(line: 217, column: 27, scope: !3335, inlinedAt: !3251)
!3335 = distinct !DILexicalBlock(scope: !3177, file: !530, line: 217, column: 27)
!3336 = !DILocation(line: 217, column: 64, scope: !3335, inlinedAt: !3251)
!3337 = !DILocation(line: 217, column: 27, scope: !3177, inlinedAt: !3251)
!3338 = !DILocation(line: 219, column: 28, scope: !3177, inlinedAt: !3251)
!3339 = !DILocation(line: 198, column: 30, scope: !3177, inlinedAt: !3251)
!3340 = !DILocation(line: 220, column: 28, scope: !3177, inlinedAt: !3251)
!3341 = !DILocation(line: 198, column: 34, scope: !3177, inlinedAt: !3251)
!3342 = !DILocation(line: 199, column: 29, scope: !3177, inlinedAt: !3251)
!3343 = !DILocation(line: 222, column: 36, scope: !3344, inlinedAt: !3251)
!3344 = distinct !DILexicalBlock(scope: !3177, file: !530, line: 222, column: 27)
!3345 = !DILocation(line: 222, column: 27, scope: !3177, inlinedAt: !3251)
!3346 = !DILocation(line: 225, column: 63, scope: !3347, inlinedAt: !3251)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !530, line: 223, column: 25)
!3348 = !DILocation(line: 225, column: 46, scope: !3347, inlinedAt: !3251)
!3349 = !DILocation(line: 226, column: 25, scope: !3347, inlinedAt: !3251)
!3350 = !DILocation(line: 229, column: 36, scope: !3351, inlinedAt: !3251)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !530, line: 228, column: 25)
!3352 = !DILocation(line: 230, column: 73, scope: !3351, inlinedAt: !3251)
!3353 = !DILocation(line: 230, column: 46, scope: !3351, inlinedAt: !3251)
!3354 = !DILocation(line: 232, column: 35, scope: !3355, inlinedAt: !3251)
!3355 = distinct !DILexicalBlock(scope: !3177, file: !530, line: 232, column: 27)
!3356 = !DILocation(line: 232, column: 27, scope: !3177, inlinedAt: !3251)
!3357 = !DILocation(line: 236, column: 27, scope: !3358, inlinedAt: !3251)
!3358 = distinct !DILexicalBlock(scope: !3355, file: !530, line: 233, column: 25)
!3359 = !DILocation(line: 237, column: 27, scope: !3358, inlinedAt: !3251)
!3360 = !DILocation(line: 241, column: 21, scope: !3178, inlinedAt: !3251)
!3361 = !DILocation(line: 239, column: 39, scope: !3177, inlinedAt: !3251)
!3362 = !DILocation(line: 239, column: 50, scope: !3177, inlinedAt: !3251)
!3363 = !DILocation(line: 239, column: 61, scope: !3177, inlinedAt: !3251)
!3364 = !DILocalVariable(name: "__dest", arg: 1, scope: !3365, file: !3366, line: 88, type: !3369)
!3365 = distinct !DISubprogram(name: "strcpy", scope: !3366, file: !3366, line: 88, type: !3367, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3371)
!3366 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!6, !3369, !3370}
!3369 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3370 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!3371 = !{!3364, !3372}
!3372 = !DILocalVariable(name: "__src", arg: 2, scope: !3365, file: !3366, line: 88, type: !3370)
!3373 = !DILocation(line: 88, column: 1, scope: !3365, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 239, column: 23, scope: !3177, inlinedAt: !3251)
!3375 = !DILocation(line: 90, column: 49, scope: !3365, inlinedAt: !3374)
!3376 = !DILocation(line: 90, column: 10, scope: !3365, inlinedAt: !3374)
!3377 = !DILocation(line: 88, column: 1, scope: !3365, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 240, column: 23, scope: !3177, inlinedAt: !3251)
!3379 = !DILocation(line: 90, column: 49, scope: !3365, inlinedAt: !3378)
!3380 = !DILocation(line: 90, column: 10, scope: !3365, inlinedAt: !3378)
!3381 = !DILocation(line: 193, column: 19, scope: !3178, inlinedAt: !3251)
!3382 = !DILocation(line: 242, column: 19, scope: !3180, inlinedAt: !3251)
!3383 = !DILocation(line: 243, column: 32, scope: !3384, inlinedAt: !3251)
!3384 = distinct !DILexicalBlock(scope: !3180, file: !530, line: 243, column: 23)
!3385 = !DILocation(line: 243, column: 23, scope: !3180, inlinedAt: !3251)
!3386 = !DILocation(line: 247, column: 33, scope: !3387, inlinedAt: !3251)
!3387 = distinct !DILexicalBlock(scope: !3384, file: !530, line: 246, column: 21)
!3388 = !DILocation(line: 247, column: 45, scope: !3387, inlinedAt: !3251)
!3389 = !DILocation(line: 253, column: 11, scope: !3184, inlinedAt: !3251)
!3390 = !DILocation(line: 377, column: 23, scope: !3186, inlinedAt: !3251)
!3391 = !DILocation(line: 378, column: 5, scope: !3186, inlinedAt: !3251)
!3392 = !DILocation(line: 396, column: 15, scope: !3170)
!3393 = !DILocation(line: 590, column: 8, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3252, file: !530, line: 589, column: 3)
!3395 = !DILocation(line: 590, column: 17, scope: !3394)
!3396 = !DILocation(line: 589, column: 3, scope: !3252)
!3397 = !DILocation(line: 592, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3394, file: !530, line: 592, column: 9)
!3399 = !DILocation(line: 592, column: 35, scope: !3398)
!3400 = !DILocation(line: 593, column: 9, scope: !3398)
!3401 = !DILocation(line: 593, column: 24, scope: !3398)
!3402 = !DILocation(line: 593, column: 31, scope: !3398)
!3403 = !DILocation(line: 593, column: 34, scope: !3398)
!3404 = !DILocation(line: 593, column: 45, scope: !3398)
!3405 = !DILocation(line: 592, column: 9, scope: !3394)
!3406 = !DILocation(line: 595, column: 29, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3398, file: !530, line: 594, column: 7)
!3408 = !DILocation(line: 595, column: 27, scope: !3407)
!3409 = !DILocation(line: 595, column: 46, scope: !3407)
!3410 = !DILocation(line: 596, column: 9, scope: !3407)
!3411 = !DILocation(line: 591, column: 19, scope: !3394)
!3412 = !DILocation(line: 591, column: 36, scope: !3394)
!3413 = !DILocation(line: 591, column: 16, scope: !3394)
!3414 = !DILocation(line: 591, column: 52, scope: !3394)
!3415 = !DILocation(line: 591, column: 69, scope: !3394)
!3416 = !DILocation(line: 591, column: 49, scope: !3394)
!3417 = distinct !{!3417, !3396, !3418}
!3418 = !DILocation(line: 597, column: 7, scope: !3252)
!3419 = !DILocation(line: 602, column: 7, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3170, file: !530, line: 602, column: 7)
!3421 = !DILocation(line: 602, column: 18, scope: !3420)
!3422 = !DILocation(line: 602, column: 7, scope: !3170)
!3423 = !DILocation(line: 612, column: 3, scope: !3170)
!3424 = distinct !DISubprogram(name: "rpl_fclose", scope: !3425, file: !3425, line: 56, type: !3426, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3468)
!3425 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!16, !3428}
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2549, line: 7, baseType: !3430)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2551, line: 241, size: 1728, elements: !3431)
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3430, file: !2551, line: 242, baseType: !16, size: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3430, file: !2551, line: 247, baseType: !6, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3430, file: !2551, line: 248, baseType: !6, size: 64, offset: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3430, file: !2551, line: 249, baseType: !6, size: 64, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3430, file: !2551, line: 250, baseType: !6, size: 64, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3430, file: !2551, line: 251, baseType: !6, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3430, file: !2551, line: 252, baseType: !6, size: 64, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3430, file: !2551, line: 253, baseType: !6, size: 64, offset: 448)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3430, file: !2551, line: 254, baseType: !6, size: 64, offset: 512)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3430, file: !2551, line: 256, baseType: !6, size: 64, offset: 576)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3430, file: !2551, line: 257, baseType: !6, size: 64, offset: 640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3430, file: !2551, line: 258, baseType: !6, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3430, file: !2551, line: 260, baseType: !3445, size: 64, offset: 768)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2551, line: 156, size: 192, elements: !3447)
!3447 = !{!3448, !3449, !3451}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3446, file: !2551, line: 157, baseType: !3445, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3446, file: !2551, line: 158, baseType: !3450, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3446, file: !2551, line: 162, baseType: !16, size: 32, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3430, file: !2551, line: 262, baseType: !3450, size: 64, offset: 832)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3430, file: !2551, line: 264, baseType: !16, size: 32, offset: 896)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3430, file: !2551, line: 268, baseType: !16, size: 32, offset: 928)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3430, file: !2551, line: 270, baseType: !2577, size: 64, offset: 960)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3430, file: !2551, line: 274, baseType: !131, size: 16, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3430, file: !2551, line: 275, baseType: !2582, size: 8, offset: 1040)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3430, file: !2551, line: 276, baseType: !2584, size: 8, offset: 1048)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3430, file: !2551, line: 280, baseType: !2588, size: 64, offset: 1088)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3430, file: !2551, line: 289, baseType: !2591, size: 64, offset: 1152)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3430, file: !2551, line: 297, baseType: !8, size: 64, offset: 1216)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3430, file: !2551, line: 298, baseType: !8, size: 64, offset: 1280)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3430, file: !2551, line: 299, baseType: !8, size: 64, offset: 1344)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3430, file: !2551, line: 300, baseType: !8, size: 64, offset: 1408)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3430, file: !2551, line: 302, baseType: !27, size: 64, offset: 1472)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3430, file: !2551, line: 303, baseType: !16, size: 32, offset: 1536)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3430, file: !2551, line: 305, baseType: !2599, size: 160, offset: 1568)
!3468 = !{!3469, !3470, !3471, !3472}
!3469 = !DILocalVariable(name: "fp", arg: 1, scope: !3424, file: !3425, line: 56, type: !3428)
!3470 = !DILocalVariable(name: "saved_errno", scope: !3424, file: !3425, line: 58, type: !16)
!3471 = !DILocalVariable(name: "fd", scope: !3424, file: !3425, line: 59, type: !16)
!3472 = !DILocalVariable(name: "result", scope: !3424, file: !3425, line: 60, type: !16)
!3473 = !DILocation(line: 56, column: 19, scope: !3424)
!3474 = !DILocation(line: 58, column: 7, scope: !3424)
!3475 = !DILocation(line: 60, column: 7, scope: !3424)
!3476 = !DILocation(line: 63, column: 8, scope: !3424)
!3477 = !DILocation(line: 59, column: 7, scope: !3424)
!3478 = !DILocation(line: 64, column: 10, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3424, file: !3425, line: 64, column: 7)
!3480 = !DILocation(line: 64, column: 7, scope: !3424)
!3481 = !DILocation(line: 65, column: 12, scope: !3479)
!3482 = !DILocation(line: 65, column: 5, scope: !3479)
!3483 = !DILocation(line: 70, column: 9, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3424, file: !3425, line: 70, column: 7)
!3485 = !DILocation(line: 70, column: 23, scope: !3484)
!3486 = !DILocation(line: 70, column: 33, scope: !3484)
!3487 = !DILocation(line: 70, column: 26, scope: !3484)
!3488 = !DILocation(line: 70, column: 59, scope: !3484)
!3489 = !DILocation(line: 71, column: 7, scope: !3484)
!3490 = !DILocation(line: 71, column: 10, scope: !3484)
!3491 = !DILocation(line: 70, column: 7, scope: !3424)
!3492 = !DILocation(line: 98, column: 12, scope: !3424)
!3493 = !DILocation(line: 103, column: 7, scope: !3424)
!3494 = !DILocation(line: 72, column: 19, scope: !3484)
!3495 = !DILocation(line: 103, column: 19, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3424, file: !3425, line: 103, column: 7)
!3497 = !DILocation(line: 105, column: 13, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3496, file: !3425, line: 104, column: 5)
!3499 = !DILocation(line: 107, column: 5, scope: !3498)
!3500 = !DILocation(line: 110, column: 1, scope: !3424)
!3501 = distinct !DISubprogram(name: "rpl_fflush", scope: !3502, file: !3502, line: 127, type: !3503, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3545)
!3502 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!16, !3505}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2549, line: 7, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2551, line: 241, size: 1728, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3507, file: !2551, line: 242, baseType: !16, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3507, file: !2551, line: 247, baseType: !6, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3507, file: !2551, line: 248, baseType: !6, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3507, file: !2551, line: 249, baseType: !6, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3507, file: !2551, line: 250, baseType: !6, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3507, file: !2551, line: 251, baseType: !6, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3507, file: !2551, line: 252, baseType: !6, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3507, file: !2551, line: 253, baseType: !6, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3507, file: !2551, line: 254, baseType: !6, size: 64, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3507, file: !2551, line: 256, baseType: !6, size: 64, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3507, file: !2551, line: 257, baseType: !6, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3507, file: !2551, line: 258, baseType: !6, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3507, file: !2551, line: 260, baseType: !3522, size: 64, offset: 768)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2551, line: 156, size: 192, elements: !3524)
!3524 = !{!3525, !3526, !3528}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3523, file: !2551, line: 157, baseType: !3522, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3523, file: !2551, line: 158, baseType: !3527, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3523, file: !2551, line: 162, baseType: !16, size: 32, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3507, file: !2551, line: 262, baseType: !3527, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3507, file: !2551, line: 264, baseType: !16, size: 32, offset: 896)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3507, file: !2551, line: 268, baseType: !16, size: 32, offset: 928)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3507, file: !2551, line: 270, baseType: !2577, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3507, file: !2551, line: 274, baseType: !131, size: 16, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3507, file: !2551, line: 275, baseType: !2582, size: 8, offset: 1040)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3507, file: !2551, line: 276, baseType: !2584, size: 8, offset: 1048)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3507, file: !2551, line: 280, baseType: !2588, size: 64, offset: 1088)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3507, file: !2551, line: 289, baseType: !2591, size: 64, offset: 1152)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3507, file: !2551, line: 297, baseType: !8, size: 64, offset: 1216)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3507, file: !2551, line: 298, baseType: !8, size: 64, offset: 1280)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3507, file: !2551, line: 299, baseType: !8, size: 64, offset: 1344)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3507, file: !2551, line: 300, baseType: !8, size: 64, offset: 1408)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3507, file: !2551, line: 302, baseType: !27, size: 64, offset: 1472)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3507, file: !2551, line: 303, baseType: !16, size: 32, offset: 1536)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3507, file: !2551, line: 305, baseType: !2599, size: 160, offset: 1568)
!3545 = !{!3546}
!3546 = !DILocalVariable(name: "stream", arg: 1, scope: !3501, file: !3502, line: 127, type: !3505)
!3547 = !DILocation(line: 127, column: 19, scope: !3501)
!3548 = !DILocation(line: 148, column: 14, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3501, file: !3502, line: 148, column: 7)
!3550 = !DILocation(line: 148, column: 22, scope: !3549)
!3551 = !DILocation(line: 148, column: 27, scope: !3549)
!3552 = !DILocation(line: 148, column: 7, scope: !3501)
!3553 = !DILocation(line: 149, column: 12, scope: !3549)
!3554 = !DILocation(line: 149, column: 5, scope: !3549)
!3555 = !DILocalVariable(name: "fp", arg: 1, scope: !3556, file: !3502, line: 40, type: !3505)
!3556 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3502, file: !3502, line: 40, type: !3557, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{null, !3505}
!3559 = !{!3555}
!3560 = !DILocation(line: 40, column: 48, scope: !3556, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 153, column: 3, scope: !3501)
!3562 = !DILocation(line: 42, column: 11, scope: !3563, inlinedAt: !3561)
!3563 = distinct !DILexicalBlock(scope: !3556, file: !3502, line: 42, column: 7)
!3564 = !DILocation(line: 42, column: 18, scope: !3563, inlinedAt: !3561)
!3565 = !DILocation(line: 42, column: 7, scope: !3556, inlinedAt: !3561)
!3566 = !DILocation(line: 44, column: 5, scope: !3563, inlinedAt: !3561)
!3567 = !DILocation(line: 155, column: 10, scope: !3501)
!3568 = !DILocation(line: 155, column: 3, scope: !3501)
!3569 = !DILocation(line: 229, column: 1, scope: !3501)
!3570 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3571, file: !3571, line: 28, type: !3572, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3615)
!3571 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!16, !3574, !3614, !16}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2549, line: 7, baseType: !3576)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2551, line: 241, size: 1728, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3576, file: !2551, line: 242, baseType: !16, size: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3576, file: !2551, line: 247, baseType: !6, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3576, file: !2551, line: 248, baseType: !6, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3576, file: !2551, line: 249, baseType: !6, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3576, file: !2551, line: 250, baseType: !6, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3576, file: !2551, line: 251, baseType: !6, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3576, file: !2551, line: 252, baseType: !6, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3576, file: !2551, line: 253, baseType: !6, size: 64, offset: 448)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3576, file: !2551, line: 254, baseType: !6, size: 64, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3576, file: !2551, line: 256, baseType: !6, size: 64, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3576, file: !2551, line: 257, baseType: !6, size: 64, offset: 640)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3576, file: !2551, line: 258, baseType: !6, size: 64, offset: 704)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3576, file: !2551, line: 260, baseType: !3591, size: 64, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2551, line: 156, size: 192, elements: !3593)
!3593 = !{!3594, !3595, !3597}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3592, file: !2551, line: 157, baseType: !3591, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3592, file: !2551, line: 158, baseType: !3596, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3592, file: !2551, line: 162, baseType: !16, size: 32, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3576, file: !2551, line: 262, baseType: !3596, size: 64, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3576, file: !2551, line: 264, baseType: !16, size: 32, offset: 896)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3576, file: !2551, line: 268, baseType: !16, size: 32, offset: 928)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3576, file: !2551, line: 270, baseType: !2577, size: 64, offset: 960)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3576, file: !2551, line: 274, baseType: !131, size: 16, offset: 1024)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3576, file: !2551, line: 275, baseType: !2582, size: 8, offset: 1040)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3576, file: !2551, line: 276, baseType: !2584, size: 8, offset: 1048)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3576, file: !2551, line: 280, baseType: !2588, size: 64, offset: 1088)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3576, file: !2551, line: 289, baseType: !2591, size: 64, offset: 1152)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3576, file: !2551, line: 297, baseType: !8, size: 64, offset: 1216)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3576, file: !2551, line: 298, baseType: !8, size: 64, offset: 1280)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3576, file: !2551, line: 299, baseType: !8, size: 64, offset: 1344)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3576, file: !2551, line: 300, baseType: !8, size: 64, offset: 1408)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3576, file: !2551, line: 302, baseType: !27, size: 64, offset: 1472)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3576, file: !2551, line: 303, baseType: !16, size: 32, offset: 1536)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3576, file: !2551, line: 305, baseType: !2599, size: 160, offset: 1568)
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2719, line: 57, baseType: !2577)
!3615 = !{!3616, !3617, !3618, !3619}
!3616 = !DILocalVariable(name: "fp", arg: 1, scope: !3570, file: !3571, line: 28, type: !3574)
!3617 = !DILocalVariable(name: "offset", arg: 2, scope: !3570, file: !3571, line: 28, type: !3614)
!3618 = !DILocalVariable(name: "whence", arg: 3, scope: !3570, file: !3571, line: 28, type: !16)
!3619 = !DILocalVariable(name: "pos", scope: !3620, file: !3571, line: 116, type: !3614)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3571, line: 112, column: 5)
!3621 = distinct !DILexicalBlock(scope: !3570, file: !3571, line: 51, column: 7)
!3622 = !DILocation(line: 28, column: 15, scope: !3570)
!3623 = !DILocation(line: 28, column: 25, scope: !3570)
!3624 = !DILocation(line: 28, column: 37, scope: !3570)
!3625 = !DILocation(line: 51, column: 11, scope: !3621)
!3626 = !DILocation(line: 51, column: 31, scope: !3621)
!3627 = !DILocation(line: 51, column: 24, scope: !3621)
!3628 = !DILocation(line: 52, column: 7, scope: !3621)
!3629 = !DILocation(line: 52, column: 14, scope: !3621)
!3630 = !DILocation(line: 52, column: 35, scope: !3621)
!3631 = !{!675, !598, i64 32}
!3632 = !DILocation(line: 52, column: 28, scope: !3621)
!3633 = !DILocation(line: 53, column: 7, scope: !3621)
!3634 = !DILocation(line: 53, column: 14, scope: !3621)
!3635 = !{!675, !598, i64 72}
!3636 = !DILocation(line: 53, column: 28, scope: !3621)
!3637 = !DILocation(line: 51, column: 7, scope: !3570)
!3638 = !DILocation(line: 116, column: 26, scope: !3620)
!3639 = !DILocation(line: 116, column: 19, scope: !3620)
!3640 = !DILocation(line: 116, column: 13, scope: !3620)
!3641 = !DILocation(line: 117, column: 15, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3620, file: !3571, line: 117, column: 11)
!3643 = !DILocation(line: 117, column: 11, scope: !3620)
!3644 = !DILocation(line: 127, column: 11, scope: !3620)
!3645 = !DILocation(line: 127, column: 18, scope: !3620)
!3646 = !DILocation(line: 128, column: 11, scope: !3620)
!3647 = !DILocation(line: 128, column: 19, scope: !3620)
!3648 = !{!675, !676, i64 144}
!3649 = !DILocation(line: 159, column: 7, scope: !3620)
!3650 = !DILocation(line: 161, column: 10, scope: !3570)
!3651 = !DILocation(line: 161, column: 3, scope: !3570)
!3652 = !DILocation(line: 162, column: 1, scope: !3570)
