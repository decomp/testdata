; ModuleID = 'coreutils-8.27/src/false.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating failure.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !0
@.str.14 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.17 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@exit_failure = global i32 1, align 4, !dbg !18
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !26
@.str.29 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.30 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.31 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.33, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.37, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.41, i32 0, i32 0), i8* null], align 16, !dbg !35
@.str.32 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.33 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.34 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.35 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.36 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.37 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.38 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.39 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.40 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.41 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !80
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !87
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !100
@.str.11.42 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.43 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.44 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.45 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.46 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !107
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !114
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !102
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !116
@.str.49 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.52 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.53 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.54 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.55 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.56 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.57 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.58 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.59 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.60 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.61 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.62 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.65 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.66 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.67 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.68 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !122
@.str.1.79 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.90 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.93 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !131
@.str.3.94 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.95 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.96 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.97 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.98 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.99 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !552 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !557, metadata !558), !dbg !559
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !560
  %3 = load i8*, i8** @program_name, align 8, !dbg !560, !tbaa !561
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #9, !dbg !560
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !565
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #9, !dbg !565
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !566
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !566, !tbaa !561
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8) #9, !dbg !566
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !567
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !567, !tbaa !561
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11) #9, !dbg !567
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !568
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !568
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !492, metadata !558) #9, !dbg !569
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !492, metadata !558) #9, !dbg !569
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !571
  %16 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !571
  %17 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !572
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !500, metadata !558) #9, !dbg !573
  %18 = icmp eq i8* %17, null, !dbg !574
  br i1 %18, label %25, label %19, !dbg !576

; <label>:19:                                     ; preds = %1
  %20 = tail call i32 @strncmp(i8* nonnull %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !577
  %21 = icmp eq i32 %20, 0, !dbg !577
  br i1 %21, label %25, label %22, !dbg !578

; <label>:22:                                     ; preds = %19
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #9, !dbg !579
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !579
  br label %25, !dbg !581

; <label>:25:                                     ; preds = %1, %19, %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #9, !dbg !582
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !582
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !583
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !583
  tail call void @exit(i32 %0) #15, !dbg !584
  unreachable, !dbg !584
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #6 !dbg !585 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !590, metadata !558), !dbg !592
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !591, metadata !558), !dbg !593
  %3 = icmp eq i32 %0, 2, !dbg !594
  br i1 %3, label %4, label %21, !dbg !596

; <label>:4:                                      ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !597, !tbaa !561
  tail call void @set_program_name(i8* %5) #9, !dbg !599
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !600
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !601
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !602
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !603
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !604
  %11 = load i8*, i8** %10, align 8, !dbg !604, !tbaa !561
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !604
  %13 = icmp eq i32 %12, 0, !dbg !604
  br i1 %13, label %14, label %15, !dbg !606

; <label>:14:                                     ; preds = %4
  tail call void @usage(i32 1) #16, !dbg !607
  unreachable, !dbg !607

; <label>:15:                                     ; preds = %4
  %16 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #14, !dbg !608
  %17 = icmp eq i32 %16, 0, !dbg !608
  br i1 %17, label %18, label %21, !dbg !610

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !561
  %20 = load i8*, i8** @Version, align 8, !dbg !612, !tbaa !561
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #9, !dbg !613
  br label %21, !dbg !613

; <label>:21:                                     ; preds = %15, %18, %2
  ret i32 1, !dbg !614
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !615 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !617, metadata !558), !dbg !618
  store i8* %0, i8** @file_name, align 8, !dbg !619, !tbaa !561
  ret void, !dbg !620
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !621 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !625, metadata !558), !dbg !626
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !627, !tbaa !628
  ret void, !dbg !630
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !631 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !561
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !639
  %3 = icmp eq i32 %2, 0, !dbg !640
  br i1 %3, label %21, label %4, !dbg !641

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !642, !tbaa !628, !range !643
  %6 = icmp eq i8 %5, 0, !dbg !642
  %7 = tail call i32* @__errno_location() #17, !dbg !644
  br i1 %6, label %11, label %8, !dbg !646

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !647, !tbaa !648
  %10 = icmp eq i32 %9, 32, !dbg !650
  br i1 %10, label %21, label %11, !dbg !651

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #9, !dbg !652
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !635, metadata !558), !dbg !653
  %13 = load i8*, i8** @file_name, align 8, !dbg !654, !tbaa !561
  %14 = icmp eq i8* %13, null, !dbg !654
  %15 = load i32, i32* %7, align 4, !tbaa !648
  br i1 %14, label %18, label %16, !dbg !655

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !656
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !657
  br label %19, !dbg !657

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #9, !dbg !658
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !659, !tbaa !648
  tail call void @_exit(i32 %20) #15, !dbg !660
  unreachable, !dbg !660

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !661, !tbaa !561
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !663
  %24 = icmp eq i32 %23, 0, !dbg !664
  br i1 %24, label %27, label %25, !dbg !665

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !666, !tbaa !648
  tail call void @_exit(i32 %26) #15, !dbg !667
  unreachable, !dbg !667

; <label>:27:                                     ; preds = %21
  ret void, !dbg !668
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !669 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !671, metadata !558), !dbg !674
  %2 = icmp eq i8* %0, null, !dbg !675
  br i1 %2, label %3, label %6, !dbg !677

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !678, !tbaa !561
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !680
  tail call void @abort() #15, !dbg !681
  unreachable, !dbg !681

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !682
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !672, metadata !558), !dbg !683
  %8 = icmp eq i8* %7, null, !dbg !684
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !685
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !686
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !673, metadata !558), !dbg !687
  %11 = ptrtoint i8* %10 to i64, !dbg !688
  %12 = ptrtoint i8* %0 to i64, !dbg !688
  %13 = sub i64 %11, %12, !dbg !688
  %14 = icmp sgt i64 %13, 6, !dbg !690
  br i1 %14, label %15, label %24, !dbg !691

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !692
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.30, i64 0, i64 0), i64 7) #14, !dbg !693
  %18 = icmp eq i32 %17, 0, !dbg !694
  br i1 %18, label %19, label %24, !dbg !695

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !671, metadata !558), !dbg !674
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.31, i64 0, i64 0), i64 3) #14, !dbg !696
  %21 = icmp eq i32 %20, 0, !dbg !699
  br i1 %21, label %22, label %24, !dbg !700

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !701
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !671, metadata !558), !dbg !674
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !703, !tbaa !561
  br label %24, !dbg !704

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !671, metadata !558), !dbg !674
  store i8* %25, i8** @program_name, align 8, !dbg !705, !tbaa !561
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !706, !tbaa !561
  ret void, !dbg !707
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !708 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !713, metadata !558), !dbg !716
  %2 = tail call i32* @__errno_location() #17, !dbg !717
  %3 = load i32, i32* %2, align 4, !dbg !717, !tbaa !648
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !714, metadata !558), !dbg !718
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !719
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !719
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !719
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !720
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !720
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !715, metadata !558), !dbg !721
  store i32 %3, i32* %2, align 4, !dbg !722, !tbaa !648
  ret %struct.quoting_options* %8, !dbg !723
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !724 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !730, metadata !558), !dbg !731
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !732
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !732
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !733
  %5 = load i32, i32* %4, align 8, !dbg !733, !tbaa !734
  ret i32 %5, !dbg !736
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !737 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !741, metadata !558), !dbg !743
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !742, metadata !558), !dbg !744
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !745
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !745
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !746
  store i32 %1, i32* %5, align 8, !dbg !747, !tbaa !734
  ret void, !dbg !748
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !749 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !753, metadata !558), !dbg !761
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !754, metadata !558), !dbg !762
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !755, metadata !558), !dbg !763
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !756, metadata !558), !dbg !764
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !765
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !765
  %6 = lshr i8 %1, 5, !dbg !766
  %7 = zext i8 %6 to i64, !dbg !766
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !767
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !757, metadata !558), !dbg !768
  %9 = and i8 %1, 31, !dbg !769
  %10 = zext i8 %9 to i32, !dbg !770
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !759, metadata !558), !dbg !771
  %11 = load i32, i32* %8, align 4, !dbg !772, !tbaa !648
  %12 = lshr i32 %11, %10, !dbg !773
  %13 = and i32 %12, 1, !dbg !774
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !760, metadata !558), !dbg !775
  %14 = and i32 %2, 1, !dbg !776
  %15 = xor i32 %13, %14, !dbg !777
  %16 = shl i32 %15, %10, !dbg !778
  %17 = xor i32 %16, %11, !dbg !779
  store i32 %17, i32* %8, align 4, !dbg !779, !tbaa !648
  ret i32 %13, !dbg !780
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !781 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !785, metadata !558), !dbg !788
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !786, metadata !558), !dbg !789
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !790
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !785, metadata !558), !dbg !788
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !792
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !785, metadata !558), !dbg !788
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !793
  %6 = load i32, i32* %5, align 4, !dbg !793, !tbaa !794
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !787, metadata !558), !dbg !795
  store i32 %1, i32* %5, align 4, !dbg !796, !tbaa !794
  ret i32 %6, !dbg !797
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !798 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !802, metadata !558), !dbg !805
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !803, metadata !558), !dbg !806
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !804, metadata !558), !dbg !807
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !808
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !802, metadata !558), !dbg !805
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !810
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !802, metadata !558), !dbg !805
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !811
  store i32 10, i32* %6, align 8, !dbg !812, !tbaa !734
  %7 = icmp ne i8* %1, null, !dbg !813
  %8 = icmp ne i8* %2, null, !dbg !815
  %9 = and i1 %7, %8, !dbg !816
  br i1 %9, label %11, label %10, !dbg !816

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !817
  unreachable, !dbg !817

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !818
  store i8* %1, i8** %12, align 8, !dbg !819, !tbaa !820
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !821
  store i8* %2, i8** %13, align 8, !dbg !822, !tbaa !823
  ret void, !dbg !824
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !825 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !829, metadata !558), !dbg !837
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !830, metadata !558), !dbg !838
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !831, metadata !558), !dbg !839
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !832, metadata !558), !dbg !840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !833, metadata !558), !dbg !841
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !842
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !842
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !834, metadata !558), !dbg !843
  %8 = tail call i32* @__errno_location() #17, !dbg !844
  %9 = load i32, i32* %8, align 4, !dbg !844, !tbaa !648
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !835, metadata !558), !dbg !845
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !846
  %11 = load i32, i32* %10, align 8, !dbg !846, !tbaa !734
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !847
  %13 = load i32, i32* %12, align 4, !dbg !847, !tbaa !794
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !848
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !849
  %16 = load i8*, i8** %15, align 8, !dbg !849, !tbaa !820
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !850
  %18 = load i8*, i8** %17, align 8, !dbg !850, !tbaa !823
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !851
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !836, metadata !558), !dbg !852
  store i32 %9, i32* %8, align 4, !dbg !853, !tbaa !648
  ret i64 %19, !dbg !854
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !855 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !861, metadata !558), !dbg !925
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !862, metadata !558), !dbg !926
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !863, metadata !558), !dbg !927
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !864, metadata !558), !dbg !928
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !865, metadata !558), !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !866, metadata !558), !dbg !930
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !867, metadata !558), !dbg !931
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !868, metadata !558), !dbg !932
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !869, metadata !558), !dbg !933
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !871, metadata !558), !dbg !934
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !872, metadata !558), !dbg !935
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !873, metadata !558), !dbg !936
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !874, metadata !558), !dbg !937
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !875, metadata !558), !dbg !938
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !939
  %14 = icmp eq i64 %13, 1, !dbg !940
  %15 = lshr i32 %5, 1, !dbg !941
  %16 = trunc i32 %15 to i8, !dbg !941
  %17 = and i8 %16, 1, !dbg !941
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !877, metadata !558), !dbg !941
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !878, metadata !558), !dbg !942
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !879, metadata !558), !dbg !943
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !880, metadata !558), !dbg !944
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !945

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !880, metadata !558), !dbg !944
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !879, metadata !558), !dbg !943
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !877, metadata !558), !dbg !941
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !864, metadata !558), !dbg !928
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !875, metadata !558), !dbg !938
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !874, metadata !558), !dbg !937
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !873, metadata !558), !dbg !936
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !872, metadata !558), !dbg !935
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !869, metadata !558), !dbg !933
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !868, metadata !558), !dbg !932
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !865, metadata !558), !dbg !929
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
  ], !dbg !946

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !865, metadata !558), !dbg !929
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !877, metadata !558), !dbg !941
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !877, metadata !558), !dbg !941
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !865, metadata !558), !dbg !929
  br label %94, !dbg !947

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !877, metadata !558), !dbg !941
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !865, metadata !558), !dbg !929
  %43 = and i8 %36, 1, !dbg !949
  %44 = icmp eq i8 %43, 0, !dbg !949
  br i1 %44, label %45, label %94, !dbg !947

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !951
  br i1 %46, label %94, label %47, !dbg !954

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !951, !tbaa !955
  br label %94, !dbg !951

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.42, i64 0, i64 0), i32 %28), !dbg !956
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !868, metadata !558), !dbg !932
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), i32 %28), !dbg !960
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !869, metadata !558), !dbg !933
  br label %51, !dbg !961

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !869, metadata !558), !dbg !933
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !868, metadata !558), !dbg !932
  %54 = and i8 %36, 1, !dbg !962
  %55 = icmp eq i8 %54, 0, !dbg !962
  br i1 %55, label %56, label %72, !dbg !964

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !873, metadata !558), !dbg !936
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !873, metadata !558), !dbg !936
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !871, metadata !558), !dbg !934
  %57 = load i8, i8* %52, align 1, !dbg !965, !tbaa !955
  %58 = icmp eq i8 %57, 0, !dbg !968
  br i1 %58, label %72, label %59, !dbg !968

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !969

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !873, metadata !558), !dbg !936
  %64 = icmp ult i64 %63, %40, !dbg !969
  br i1 %64, label %65, label %67, !dbg !972

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !969
  store i8 %61, i8* %66, align 1, !dbg !969, !tbaa !955
  br label %67, !dbg !969

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !972
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !871, metadata !558), !dbg !934
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !973
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !873, metadata !558), !dbg !936
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !873, metadata !558), !dbg !936
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !871, metadata !558), !dbg !934
  %70 = load i8, i8* %69, align 1, !dbg !965, !tbaa !955
  %71 = icmp eq i8 %70, 0, !dbg !968
  br i1 %71, label %72, label %60, !dbg !968, !llvm.loop !974

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !875, metadata !558), !dbg !938
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !873, metadata !558), !dbg !936
  %74 = call i64 @strlen(i8* %53) #14, !dbg !976
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !874, metadata !558), !dbg !937
  br label %94, !dbg !977

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !875, metadata !558), !dbg !938
  br label %76, !dbg !978

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !875, metadata !558), !dbg !938
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !877, metadata !558), !dbg !941
  br label %78, !dbg !979

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !877, metadata !558), !dbg !941
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !875, metadata !558), !dbg !938
  %81 = and i8 %80, 1, !dbg !980
  %82 = icmp eq i8 %81, 0, !dbg !980
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !875, metadata !558), !dbg !938
  %83 = select i1 %82, i8 1, i8 %79, !dbg !982
  br label %84, !dbg !982

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !877, metadata !558), !dbg !941
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !875, metadata !558), !dbg !938
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !865, metadata !558), !dbg !929
  %87 = and i8 %86, 1, !dbg !983
  %88 = icmp eq i8 %87, 0, !dbg !983
  br i1 %88, label %89, label %94, !dbg !985

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !986
  br i1 %90, label %94, label %91, !dbg !989

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !986, !tbaa !955
  br label %94, !dbg !986

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !877, metadata !558), !dbg !941
  br label %94, !dbg !990

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !991
  unreachable, !dbg !991

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !877, metadata !558), !dbg !941
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !875, metadata !558), !dbg !938
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !874, metadata !558), !dbg !937
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !873, metadata !558), !dbg !936
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !869, metadata !558), !dbg !933
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !868, metadata !558), !dbg !932
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !865, metadata !558), !dbg !929
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !870, metadata !558), !dbg !992
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
  br label %122, !dbg !993

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !880, metadata !558), !dbg !944
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !879, metadata !558), !dbg !943
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !864, metadata !558), !dbg !928
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !872, metadata !558), !dbg !935
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !870, metadata !558), !dbg !992
  %131 = icmp eq i64 %126, -1, !dbg !994
  br i1 %131, label %134, label %132, !dbg !995

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !996
  br i1 %133, label %590, label %138, !dbg !997

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !998
  %136 = load i8, i8* %135, align 1, !dbg !998, !tbaa !955
  %137 = icmp eq i8 %136, 0, !dbg !999
  br i1 %137, label %590, label %138, !dbg !997

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !886, metadata !558), !dbg !1000
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !887, metadata !558), !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !888, metadata !558), !dbg !1002
  br i1 %108, label %139, label %154, !dbg !1003

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1005
  %141 = and i1 %109, %131, !dbg !1006
  br i1 %141, label %142, label %144, !dbg !1006

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !864, metadata !558), !dbg !928
  br label %144, !dbg !1008

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !864, metadata !558), !dbg !928
  %146 = icmp ugt i64 %140, %145, !dbg !1009
  br i1 %146, label %154, label %147, !dbg !1010

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1011
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1012
  %150 = icmp ne i32 %149, 0, !dbg !1013
  %151 = or i1 %150, %111, !dbg !1014
  %152 = xor i1 %150, true, !dbg !1014
  %153 = zext i1 %152 to i8, !dbg !1014
  br i1 %151, label %154, label %635, !dbg !1014

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !886, metadata !558), !dbg !1000
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !864, metadata !558), !dbg !928
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1015
  %158 = load i8, i8* %157, align 1, !dbg !1015, !tbaa !955
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !881, metadata !558), !dbg !1016
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
  ], !dbg !1017

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1018

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1019

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !887, metadata !558), !dbg !1001
  %162 = and i8 %127, 1, !dbg !1023
  %163 = icmp eq i8 %162, 0, !dbg !1023
  %164 = and i1 %113, %163, !dbg !1023
  br i1 %164, label %165, label %181, !dbg !1023

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1025
  br i1 %166, label %167, label %169, !dbg !1029

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1025
  store i8 39, i8* %168, align 1, !dbg !1025, !tbaa !955
  br label %169, !dbg !1025

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !871, metadata !558), !dbg !934
  %171 = icmp ult i64 %170, %130, !dbg !1030
  br i1 %171, label %172, label %174, !dbg !1033

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1030
  store i8 36, i8* %173, align 1, !dbg !1030, !tbaa !955
  br label %174, !dbg !1030

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !871, metadata !558), !dbg !934
  %176 = icmp ult i64 %175, %130, !dbg !1034
  br i1 %176, label %177, label %179, !dbg !1037

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1034
  store i8 39, i8* %178, align 1, !dbg !1034, !tbaa !955
  br label %179, !dbg !1034

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !878, metadata !558), !dbg !942
  br label %181, !dbg !1038

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !871, metadata !558), !dbg !934
  %184 = icmp ult i64 %182, %130, !dbg !1039
  br i1 %184, label %185, label %187, !dbg !1042

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1039
  store i8 92, i8* %186, align 1, !dbg !1039, !tbaa !955
  br label %187, !dbg !1039

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1042
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !871, metadata !558), !dbg !934
  br i1 %105, label %189, label %470, !dbg !1043

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1045
  %191 = icmp ult i64 %190, %155, !dbg !1046
  br i1 %191, label %192, label %470, !dbg !1047

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1048
  %194 = load i8, i8* %193, align 1, !dbg !1048, !tbaa !955
  %195 = add i8 %194, -48, !dbg !1049
  %196 = icmp ult i8 %195, 10, !dbg !1049
  br i1 %196, label %197, label %470, !dbg !1049

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1050
  br i1 %198, label %199, label %201, !dbg !1054

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1050
  store i8 48, i8* %200, align 1, !dbg !1050, !tbaa !955
  br label %201, !dbg !1050

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !871, metadata !558), !dbg !934
  %203 = icmp ult i64 %202, %130, !dbg !1055
  br i1 %203, label %204, label %206, !dbg !1058

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1055
  store i8 48, i8* %205, align 1, !dbg !1055, !tbaa !955
  br label %206, !dbg !1055

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1058
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !871, metadata !558), !dbg !934
  br label %470, !dbg !1059

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1060

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1061

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1062

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1064

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1066
  %214 = icmp ult i64 %213, %155, !dbg !1067
  br i1 %214, label %215, label %470, !dbg !1068

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1069
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1070
  %218 = load i8, i8* %217, align 1, !dbg !1070, !tbaa !955
  %219 = icmp eq i8 %218, 63, !dbg !1071
  br i1 %219, label %220, label %470, !dbg !1072

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1073
  %222 = load i8, i8* %221, align 1, !dbg !1073, !tbaa !955
  %223 = sext i8 %222 to i32, !dbg !1073
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
  ], !dbg !1074

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1075

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !881, metadata !558), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !870, metadata !558), !dbg !992
  %226 = icmp ult i64 %124, %130, !dbg !1077
  br i1 %226, label %227, label %229, !dbg !1080

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1077
  store i8 63, i8* %228, align 1, !dbg !1077, !tbaa !955
  br label %229, !dbg !1077

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !871, metadata !558), !dbg !934
  %231 = icmp ult i64 %230, %130, !dbg !1081
  br i1 %231, label %232, label %234, !dbg !1084

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1081
  store i8 34, i8* %233, align 1, !dbg !1081, !tbaa !955
  br label %234, !dbg !1081

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !871, metadata !558), !dbg !934
  %236 = icmp ult i64 %235, %130, !dbg !1085
  br i1 %236, label %237, label %239, !dbg !1088

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1085
  store i8 34, i8* %238, align 1, !dbg !1085, !tbaa !955
  br label %239, !dbg !1085

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !871, metadata !558), !dbg !934
  %241 = icmp ult i64 %240, %130, !dbg !1089
  br i1 %241, label %242, label %244, !dbg !1092

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1089
  store i8 63, i8* %243, align 1, !dbg !1089, !tbaa !955
  br label %244, !dbg !1089

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !871, metadata !558), !dbg !934
  br label %470, !dbg !1093

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !885, metadata !558), !dbg !1094
  br label %256, !dbg !1095

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !885, metadata !558), !dbg !1094
  br label %256, !dbg !1096

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !885, metadata !558), !dbg !1094
  br label %254, !dbg !1097

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !885, metadata !558), !dbg !1094
  br label %254, !dbg !1098

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !885, metadata !558), !dbg !1094
  br label %256, !dbg !1099

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !885, metadata !558), !dbg !1094
  br i1 %113, label %252, label %253, !dbg !1100

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1101

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1104

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !885, metadata !558), !dbg !1094
  br i1 %117, label %256, label %635, !dbg !1106

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !885, metadata !558), !dbg !1094
  br i1 %104, label %497, label %470, !dbg !1108

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1109
  br i1 %259, label %260, label %265, !dbg !1111

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1112, !tbaa !955
  %262 = icmp ne i8 %261, 0, !dbg !1113
  %263 = icmp ne i64 %123, 0, !dbg !1114
  %264 = or i1 %263, %262, !dbg !1116
  br i1 %264, label %470, label %271, !dbg !1116

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1117
  %267 = icmp ne i64 %123, 0, !dbg !1114
  %268 = or i1 %267, %266, !dbg !1111
  br i1 %268, label %470, label %271, !dbg !1111

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1114
  br i1 %270, label %271, label %470, !dbg !1118

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !888, metadata !558), !dbg !1002
  br label %272, !dbg !1119

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !888, metadata !558), !dbg !1002
  br i1 %117, label %470, label %635, !dbg !1120

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !879, metadata !558), !dbg !943
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !888, metadata !558), !dbg !1002
  br i1 %113, label %275, label %470, !dbg !1122

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1123

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1126
  %278 = icmp ne i64 %125, 0, !dbg !1128
  %279 = or i1 %278, %277, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !872, metadata !558), !dbg !935
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !862, metadata !558), !dbg !926
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1129
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !872, metadata !558), !dbg !935
  %282 = icmp ult i64 %124, %281, !dbg !1130
  br i1 %282, label %283, label %285, !dbg !1133

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1130
  store i8 39, i8* %284, align 1, !dbg !1130, !tbaa !955
  br label %285, !dbg !1130

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !871, metadata !558), !dbg !934
  %287 = icmp ult i64 %286, %281, !dbg !1134
  br i1 %287, label %288, label %290, !dbg !1137

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1134
  store i8 92, i8* %289, align 1, !dbg !1134, !tbaa !955
  br label %290, !dbg !1134

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !871, metadata !558), !dbg !934
  %292 = icmp ult i64 %291, %281, !dbg !1138
  br i1 %292, label %293, label %295, !dbg !1141

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1138
  store i8 39, i8* %294, align 1, !dbg !1138, !tbaa !955
  br label %295, !dbg !1138

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !878, metadata !558), !dbg !942
  br label %470, !dbg !1142

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1143

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !889, metadata !558), !dbg !1144
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1145
  %300 = load i16*, i16** %299, align 8, !dbg !1145, !tbaa !561
  %301 = zext i8 %158 to i64, !dbg !1145
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1145
  %303 = load i16, i16* %302, align 2, !dbg !1145, !tbaa !1147
  %304 = lshr i16 %303, 14, !dbg !1149
  %305 = trunc i16 %304 to i8, !dbg !1149
  %306 = and i8 %305, 1, !dbg !1149
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !892, metadata !558), !dbg !1150
  br label %362, !dbg !1151

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1152
  store i64 0, i64* %10, align 8, !dbg !1153
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !889, metadata !558), !dbg !1144
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !892, metadata !558), !dbg !1150
  %308 = icmp eq i64 %155, -1, !dbg !1154
  br i1 %308, label %309, label %311, !dbg !1156

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !864, metadata !558), !dbg !928
  br label %311, !dbg !1158

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !864, metadata !558), !dbg !928
  br label %313, !dbg !1159, !llvm.loop !1160

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !892, metadata !558), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !889, metadata !558), !dbg !1144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1162
  %316 = add i64 %314, %123, !dbg !1163
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1164
  %318 = sub i64 %312, %316, !dbg !1165
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !893, metadata !558), !dbg !1166
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !911, metadata !558), !dbg !1167
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #9, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !914, metadata !558), !dbg !1169
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1170

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !892, metadata !558), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !889, metadata !558), !dbg !1144
  %321 = icmp ugt i64 %312, %316, !dbg !1171
  br i1 %321, label %322, label %347, !dbg !1173

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1174

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !889, metadata !558), !dbg !1144
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1174
  %327 = load i8, i8* %326, align 1, !dbg !1174, !tbaa !955
  %328 = icmp eq i8 %327, 0, !dbg !1173
  br i1 %328, label %347, label %329, !dbg !1175

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !889, metadata !558), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !889, metadata !558), !dbg !1144
  %331 = add i64 %330, %123, !dbg !1177
  %332 = icmp ult i64 %331, %312, !dbg !1171
  br i1 %332, label %323, label %347, !dbg !1173, !llvm.loop !1178

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1179
  %335 = and i1 %115, %334, !dbg !1182
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !915, metadata !558), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !915, metadata !558), !dbg !1183
  br i1 %335, label %336, label %350, !dbg !1182

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1184

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !915, metadata !558), !dbg !1183
  %339 = add i64 %338, %316, !dbg !1184
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1185
  %341 = load i8, i8* %340, align 1, !dbg !1185, !tbaa !955
  %342 = sext i8 %341 to i32, !dbg !1185
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1186

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !915, metadata !558), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !915, metadata !558), !dbg !1183
  %345 = icmp ult i64 %344, %319, !dbg !1179
  br i1 %345, label %337, label %350, !dbg !1188, !llvm.loop !1189

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1191

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !892, metadata !558), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !889, metadata !558), !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1191
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1192, !tbaa !648
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !911, metadata !558), !dbg !1167
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !1194
  %353 = icmp eq i32 %352, 0, !dbg !1194
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !892, metadata !558), !dbg !1150
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1195
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !892, metadata !558), !dbg !1150
  %355 = add i64 %319, %314, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !889, metadata !558), !dbg !1144
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !892, metadata !558), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !889, metadata !558), !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1191
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !893, metadata !558), !dbg !1166
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1197
  %357 = icmp eq i32 %356, 0, !dbg !1198
  br i1 %357, label %313, label %358, !dbg !1199, !llvm.loop !1160

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1200
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !892, metadata !558), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !889, metadata !558), !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1200
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !892, metadata !558), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !889, metadata !558), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !864, metadata !558), !dbg !928
  %366 = and i8 %365, 1, !dbg !1201
  %367 = icmp ne i8 %366, 0, !dbg !1201
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !888, metadata !558), !dbg !1002
  %368 = icmp ult i64 %364, 2, !dbg !1202
  %369 = or i1 %367, %112, !dbg !1203
  %370 = and i1 %368, %369, !dbg !1204
  br i1 %370, label %470, label %371, !dbg !1204

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !922, metadata !558), !dbg !1206
  br label %373, !dbg !1207

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !887, metadata !558), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !886, metadata !558), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !881, metadata !558), !dbg !1016
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !870, metadata !558), !dbg !992
  br i1 %369, label %426, label %380, !dbg !1208

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1213

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !887, metadata !558), !dbg !1001
  %382 = and i8 %376, 1, !dbg !1216
  %383 = icmp eq i8 %382, 0, !dbg !1216
  %384 = and i1 %113, %383, !dbg !1216
  br i1 %384, label %385, label %401, !dbg !1216

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1218
  br i1 %386, label %387, label %389, !dbg !1222

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1218
  store i8 39, i8* %388, align 1, !dbg !1218, !tbaa !955
  br label %389, !dbg !1218

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !871, metadata !558), !dbg !934
  %391 = icmp ult i64 %390, %130, !dbg !1223
  br i1 %391, label %392, label %394, !dbg !1226

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1223
  store i8 36, i8* %393, align 1, !dbg !1223, !tbaa !955
  br label %394, !dbg !1223

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !871, metadata !558), !dbg !934
  %396 = icmp ult i64 %395, %130, !dbg !1227
  br i1 %396, label %397, label %399, !dbg !1230

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1227
  store i8 39, i8* %398, align 1, !dbg !1227, !tbaa !955
  br label %399, !dbg !1227

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1230
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !878, metadata !558), !dbg !942
  br label %401, !dbg !1231

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !871, metadata !558), !dbg !934
  %404 = icmp ult i64 %402, %130, !dbg !1232
  br i1 %404, label %405, label %407, !dbg !1235

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1232
  store i8 92, i8* %406, align 1, !dbg !1232, !tbaa !955
  br label %407, !dbg !1232

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !871, metadata !558), !dbg !934
  %409 = icmp ult i64 %408, %130, !dbg !1236
  br i1 %409, label %410, label %414, !dbg !1239

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1236
  %412 = or i8 %411, 48, !dbg !1236
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1236
  store i8 %412, i8* %413, align 1, !dbg !1236, !tbaa !955
  br label %414, !dbg !1236

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !871, metadata !558), !dbg !934
  %416 = icmp ult i64 %415, %130, !dbg !1240
  br i1 %416, label %417, label %422, !dbg !1243

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1240
  %419 = and i8 %418, 7, !dbg !1240
  %420 = or i8 %419, 48, !dbg !1240
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1240
  store i8 %420, i8* %421, align 1, !dbg !1240, !tbaa !955
  br label %422, !dbg !1240

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !871, metadata !558), !dbg !934
  %424 = and i8 %377, 7, !dbg !1244
  %425 = or i8 %424, 48, !dbg !1245
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !881, metadata !558), !dbg !1016
  br label %435, !dbg !1246

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1247
  %428 = icmp eq i8 %427, 0, !dbg !1247
  br i1 %428, label %435, label %429, !dbg !1249

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1250
  br i1 %430, label %431, label %433, !dbg !1254

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1250
  store i8 92, i8* %432, align 1, !dbg !1250, !tbaa !955
  br label %433, !dbg !1250

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !886, metadata !558), !dbg !1000
  br label %435, !dbg !1255

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !887, metadata !558), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !886, metadata !558), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !881, metadata !558), !dbg !1016
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !871, metadata !558), !dbg !934
  %441 = add i64 %374, 1, !dbg !1256
  %442 = icmp ugt i64 %372, %441, !dbg !1258
  br i1 %442, label %443, label %535, !dbg !1259

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1260
  %445 = icmp ne i8 %444, 0, !dbg !1260
  %446 = and i8 %440, 1, !dbg !1260
  %447 = icmp eq i8 %446, 0, !dbg !1260
  %448 = and i1 %445, %447, !dbg !1260
  br i1 %448, label %449, label %460, !dbg !1260

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1263
  br i1 %450, label %451, label %453, !dbg !1267

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1263
  store i8 39, i8* %452, align 1, !dbg !1263, !tbaa !955
  br label %453, !dbg !1263

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !871, metadata !558), !dbg !934
  %455 = icmp ult i64 %454, %130, !dbg !1268
  br i1 %455, label %456, label %458, !dbg !1271

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1268
  store i8 39, i8* %457, align 1, !dbg !1268, !tbaa !955
  br label %458, !dbg !1268

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !878, metadata !558), !dbg !942
  br label %460, !dbg !1272

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !871, metadata !558), !dbg !934
  %463 = icmp ult i64 %461, %130, !dbg !1273
  br i1 %463, label %464, label %466, !dbg !1276

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1273
  store i8 %438, i8* %465, align 1, !dbg !1273, !tbaa !955
  br label %466, !dbg !1273

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !870, metadata !558), !dbg !992
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1277
  %469 = load i8, i8* %468, align 1, !dbg !1277, !tbaa !955
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !881, metadata !558), !dbg !1016
  br label %373, !dbg !1278, !llvm.loop !1279

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !888, metadata !558), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !887, metadata !558), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !886, metadata !558), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !881, metadata !558), !dbg !1016
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !879, metadata !558), !dbg !943
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !864, metadata !558), !dbg !928
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !872, metadata !558), !dbg !935
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !870, metadata !558), !dbg !992
  br i1 %106, label %482, label %481, !dbg !1282

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1284

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1285

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1286
  %485 = zext i8 %484 to i64, !dbg !1286
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1287
  %487 = load i32, i32* %486, align 4, !dbg !1287, !tbaa !648
  %488 = and i8 %477, 31, !dbg !1288
  %489 = zext i8 %488 to i32, !dbg !1289
  %490 = shl i32 1, %489, !dbg !1290
  %491 = and i32 %487, %490, !dbg !1290
  %492 = icmp eq i32 %491, 0, !dbg !1290
  %493 = icmp eq i8 %156, 0, !dbg !1291
  %494 = and i1 %493, %492, !dbg !1292
  br i1 %494, label %535, label %497, !dbg !1292

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1291
  br i1 %496, label %535, label %497, !dbg !1293

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !888, metadata !558), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !881, metadata !558), !dbg !1016
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !879, metadata !558), !dbg !943
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !864, metadata !558), !dbg !928
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !872, metadata !558), !dbg !935
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !870, metadata !558), !dbg !992
  br i1 %111, label %507, label %635, !dbg !1294

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !887, metadata !558), !dbg !1001
  %508 = and i8 %502, 1, !dbg !1296
  %509 = icmp eq i8 %508, 0, !dbg !1296
  %510 = and i1 %113, %509, !dbg !1296
  br i1 %510, label %511, label %527, !dbg !1296

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1298
  br i1 %512, label %513, label %515, !dbg !1302

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1298
  store i8 39, i8* %514, align 1, !dbg !1298, !tbaa !955
  br label %515, !dbg !1298

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !871, metadata !558), !dbg !934
  %517 = icmp ult i64 %516, %506, !dbg !1303
  br i1 %517, label %518, label %520, !dbg !1306

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1303
  store i8 36, i8* %519, align 1, !dbg !1303, !tbaa !955
  br label %520, !dbg !1303

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !871, metadata !558), !dbg !934
  %522 = icmp ult i64 %521, %506, !dbg !1307
  br i1 %522, label %523, label %525, !dbg !1310

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1307
  store i8 39, i8* %524, align 1, !dbg !1307, !tbaa !955
  br label %525, !dbg !1307

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !878, metadata !558), !dbg !942
  br label %527, !dbg !1311

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !871, metadata !558), !dbg !934
  %530 = icmp ult i64 %528, %506, !dbg !1312
  br i1 %530, label %531, label %533, !dbg !1315

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1312
  store i8 92, i8* %532, align 1, !dbg !1312, !tbaa !955
  br label %533, !dbg !1312

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !888, metadata !558), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !887, metadata !558), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !881, metadata !558), !dbg !1016
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !879, metadata !558), !dbg !943
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !864, metadata !558), !dbg !928
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !872, metadata !558), !dbg !935
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !870, metadata !558), !dbg !992
  br label %562, !dbg !1316

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !888, metadata !558), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !887, metadata !558), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !881, metadata !558), !dbg !1016
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !879, metadata !558), !dbg !943
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !864, metadata !558), !dbg !928
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !872, metadata !558), !dbg !935
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !870, metadata !558), !dbg !992
  %546 = and i8 %540, 1, !dbg !1316
  %547 = icmp ne i8 %546, 0, !dbg !1316
  %548 = and i8 %543, 1, !dbg !1316
  %549 = icmp eq i8 %548, 0, !dbg !1316
  %550 = and i1 %547, %549, !dbg !1316
  br i1 %550, label %551, label %562, !dbg !1316

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1319
  br i1 %552, label %553, label %555, !dbg !1323

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1319
  store i8 39, i8* %554, align 1, !dbg !1319, !tbaa !955
  br label %555, !dbg !1319

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !871, metadata !558), !dbg !934
  %557 = icmp ult i64 %556, %545, !dbg !1324
  br i1 %557, label %558, label %560, !dbg !1327

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1324
  store i8 39, i8* %559, align 1, !dbg !1324, !tbaa !955
  br label %560, !dbg !1324

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !878, metadata !558), !dbg !942
  br label %562, !dbg !1328

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !871, metadata !558), !dbg !934
  %572 = icmp ult i64 %570, %563, !dbg !1329
  br i1 %572, label %573, label %575, !dbg !1332

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1329
  store i8 %565, i8* %574, align 1, !dbg !1329, !tbaa !955
  br label %575, !dbg !1329

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !871, metadata !558), !dbg !934
  %577 = and i8 %564, 1, !dbg !1333
  %578 = icmp eq i8 %577, 0, !dbg !1333
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !880, metadata !558), !dbg !944
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1335
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !880, metadata !558), !dbg !944
  br label %580, !dbg !1336

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !880, metadata !558), !dbg !944
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !879, metadata !558), !dbg !943
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !878, metadata !558), !dbg !942
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !864, metadata !558), !dbg !928
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !872, metadata !558), !dbg !935
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !870, metadata !558), !dbg !992
  %589 = add i64 %581, 1, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !870, metadata !558), !dbg !992
  br label %122, !dbg !1338, !llvm.loop !1339

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1341
  %593 = and i1 %113, %592, !dbg !1343
  %594 = xor i1 %593, true, !dbg !1343
  %595 = or i1 %111, %594, !dbg !1343
  br i1 %595, label %596, label %635, !dbg !1343

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1344
  %598 = xor i1 %597, true, !dbg !1344
  %599 = and i8 %128, 1, !dbg !1346
  %600 = icmp eq i8 %599, 0, !dbg !1346
  %601 = or i1 %600, %598, !dbg !1344
  br i1 %601, label %611, label %602, !dbg !1344

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1347
  %604 = icmp eq i8 %603, 0, !dbg !1347
  br i1 %604, label %607, label %605, !dbg !1350

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1351
  br label %645, !dbg !1352

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1353
  %609 = icmp ne i64 %125, 0, !dbg !1355
  %610 = and i1 %609, %608, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !871, metadata !558), !dbg !934
  br i1 %610, label %27, label %611, !dbg !1356

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1357
  %613 = and i1 %612, %111, !dbg !1359
  br i1 %613, label %614, label %630, !dbg !1359

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !873, metadata !558), !dbg !936
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !871, metadata !558), !dbg !934
  %615 = load i8, i8* %99, align 1, !dbg !1360, !tbaa !955
  %616 = icmp eq i8 %615, 0, !dbg !1363
  br i1 %616, label %630, label %617, !dbg !1363

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1364

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !871, metadata !558), !dbg !934
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !873, metadata !558), !dbg !936
  %622 = icmp ult i64 %621, %130, !dbg !1364
  br i1 %622, label %623, label %625, !dbg !1367

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1364
  store i8 %619, i8* %624, align 1, !dbg !1364, !tbaa !955
  br label %625, !dbg !1364

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !871, metadata !558), !dbg !934
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1368
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !873, metadata !558), !dbg !936
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !873, metadata !558), !dbg !936
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !871, metadata !558), !dbg !934
  %628 = load i8, i8* %627, align 1, !dbg !1360, !tbaa !955
  %629 = icmp eq i8 %628, 0, !dbg !1363
  br i1 %629, label %630, label %618, !dbg !1363, !llvm.loop !1369

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !871, metadata !558), !dbg !934
  %632 = icmp ult i64 %631, %130, !dbg !1371
  br i1 %632, label %633, label %645, !dbg !1373

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1374
  store i8 0, i8* %634, align 1, !dbg !1375, !tbaa !955
  br label %645, !dbg !1374

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !862, metadata !558), !dbg !926
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !864, metadata !558), !dbg !928
  %639 = icmp ne i32 %636, 2, !dbg !1376
  %640 = icmp eq i8 %103, 0, !dbg !1378
  %641 = or i1 %639, %640, !dbg !1379
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !865, metadata !558), !dbg !929
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !865, metadata !558), !dbg !929
  %643 = and i32 %5, -3, !dbg !1380
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1381
  br label %645, !dbg !1382

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1383
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1384 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1388, metadata !558), !dbg !1392
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1389, metadata !558), !dbg !1393
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1394
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1390, metadata !558), !dbg !1395
  %4 = icmp eq i8* %3, %0, !dbg !1396
  br i1 %4, label %5, label %75, !dbg !1398

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1399
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1391, metadata !558), !dbg !1400
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1401, metadata !558), !dbg !1417
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !558), !dbg !1420
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1416, metadata !558), !dbg !1421
  %7 = load i8, i8* %6, align 1, !dbg !1422, !tbaa !955
  %8 = sext i8 %7 to i32, !dbg !1422
  %9 = and i32 %8, -33, !dbg !1422
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1422

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1424, metadata !558), !dbg !1438
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1436, metadata !558), !dbg !1442
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1437, metadata !558), !dbg !1443
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1444
  %12 = load i8, i8* %11, align 1, !dbg !1444, !tbaa !955
  %13 = sext i8 %12 to i32, !dbg !1444
  %14 = and i32 %13, -33, !dbg !1444
  %15 = icmp eq i32 %14, 84, !dbg !1444
  br i1 %15, label %16, label %72, !dbg !1444

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1446, metadata !558), !dbg !1459
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1457, metadata !558), !dbg !1463
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1458, metadata !558), !dbg !1464
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1465
  %18 = load i8, i8* %17, align 1, !dbg !1465, !tbaa !955
  %19 = sext i8 %18 to i32, !dbg !1465
  %20 = and i32 %19, -33, !dbg !1465
  %21 = icmp eq i32 %20, 70, !dbg !1465
  br i1 %21, label %22, label %72, !dbg !1465

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1467, metadata !558), !dbg !1479
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1477, metadata !558), !dbg !1483
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1478, metadata !558), !dbg !1484
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1485
  %24 = load i8, i8* %23, align 1, !dbg !1485, !tbaa !955
  %25 = icmp eq i8 %24, 45, !dbg !1485
  br i1 %25, label %26, label %72, !dbg !1487

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1488, metadata !558), !dbg !1499
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1497, metadata !558), !dbg !1503
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1498, metadata !558), !dbg !1504
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1505
  %28 = load i8, i8* %27, align 1, !dbg !1505, !tbaa !955
  %29 = icmp eq i8 %28, 56, !dbg !1505
  br i1 %29, label %30, label %72, !dbg !1507

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1508, metadata !558), !dbg !1518
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1516, metadata !558), !dbg !1522
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1517, metadata !558), !dbg !1523
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1524
  %32 = load i8, i8* %31, align 1, !dbg !1524, !tbaa !955
  %33 = icmp eq i8 %32, 0, !dbg !1524
  br i1 %33, label %34, label %72, !dbg !1526

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1527, !tbaa !955
  %36 = icmp eq i8 %35, 96, !dbg !1528
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1527
  br label %75, !dbg !1529

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1424, metadata !558), !dbg !1530
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1436, metadata !558), !dbg !1534
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1437, metadata !558), !dbg !1535
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1536
  %40 = load i8, i8* %39, align 1, !dbg !1536, !tbaa !955
  %41 = sext i8 %40 to i32, !dbg !1536
  %42 = and i32 %41, -33, !dbg !1536
  %43 = icmp eq i32 %42, 66, !dbg !1536
  br i1 %43, label %44, label %72, !dbg !1536

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1446, metadata !558), !dbg !1537
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1457, metadata !558), !dbg !1539
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1458, metadata !558), !dbg !1540
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1541
  %46 = load i8, i8* %45, align 1, !dbg !1541, !tbaa !955
  %47 = icmp eq i8 %46, 49, !dbg !1541
  br i1 %47, label %48, label %72, !dbg !1542

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1467, metadata !558), !dbg !1543
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1477, metadata !558), !dbg !1545
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1478, metadata !558), !dbg !1546
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1547
  %50 = load i8, i8* %49, align 1, !dbg !1547, !tbaa !955
  %51 = icmp eq i8 %50, 56, !dbg !1547
  br i1 %51, label %52, label %72, !dbg !1548

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1488, metadata !558), !dbg !1549
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1497, metadata !558), !dbg !1551
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1498, metadata !558), !dbg !1552
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1553
  %54 = load i8, i8* %53, align 1, !dbg !1553, !tbaa !955
  %55 = icmp eq i8 %54, 48, !dbg !1553
  br i1 %55, label %56, label %72, !dbg !1554

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1508, metadata !558), !dbg !1555
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1516, metadata !558), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1517, metadata !558), !dbg !1558
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1559
  %58 = load i8, i8* %57, align 1, !dbg !1559, !tbaa !955
  %59 = icmp eq i8 %58, 51, !dbg !1559
  br i1 %59, label %60, label %72, !dbg !1560

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1561, metadata !558), !dbg !1570
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !558), !dbg !1574
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1569, metadata !558), !dbg !1575
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1576
  %62 = load i8, i8* %61, align 1, !dbg !1576, !tbaa !955
  %63 = icmp eq i8 %62, 48, !dbg !1576
  br i1 %63, label %64, label %72, !dbg !1578

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1579, metadata !558), !dbg !1587
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1585, metadata !558), !dbg !1591
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1586, metadata !558), !dbg !1592
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1593
  %66 = load i8, i8* %65, align 1, !dbg !1593, !tbaa !955
  %67 = icmp eq i8 %66, 0, !dbg !1593
  br i1 %67, label %68, label %72, !dbg !1595

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1596, !tbaa !955
  %70 = icmp eq i8 %69, 96, !dbg !1597
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.46, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1596
  br label %75, !dbg !1598

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1599
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), !dbg !1600
  br label %75, !dbg !1601

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1602
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1603 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1607, metadata !558), !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1608, metadata !558), !dbg !1611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1609, metadata !558), !dbg !1612
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1613, metadata !558) #9, !dbg !1626
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1618, metadata !558) #9, !dbg !1628
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1619, metadata !558) #9, !dbg !1629
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1620, metadata !558) #9, !dbg !1630
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1631
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1631
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1621, metadata !558) #9, !dbg !1632
  %6 = tail call i32* @__errno_location() #17, !dbg !1633
  %7 = load i32, i32* %6, align 4, !dbg !1633, !tbaa !648
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1622, metadata !558) #9, !dbg !1634
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1635
  %9 = load i32, i32* %8, align 4, !dbg !1635, !tbaa !794
  %10 = or i32 %9, 1, !dbg !1636
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1623, metadata !558) #9, !dbg !1637
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1638
  %12 = load i32, i32* %11, align 8, !dbg !1638, !tbaa !734
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1639
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1640
  %15 = load i8*, i8** %14, align 8, !dbg !1640, !tbaa !820
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1641
  %17 = load i8*, i8** %16, align 8, !dbg !1641, !tbaa !823
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !1642
  %19 = add i64 %18, 1, !dbg !1643
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1624, metadata !558) #9, !dbg !1644
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1645, metadata !558) #9, !dbg !1650
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !1652
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1625, metadata !558) #9, !dbg !1653
  %21 = load i32, i32* %11, align 8, !dbg !1654, !tbaa !734
  %22 = load i8*, i8** %14, align 8, !dbg !1655, !tbaa !820
  %23 = load i8*, i8** %16, align 8, !dbg !1656, !tbaa !823
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !1657
  store i32 %7, i32* %6, align 4, !dbg !1658, !tbaa !648
  ret i8* %20, !dbg !1659
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1614 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1613, metadata !558), !dbg !1660
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1618, metadata !558), !dbg !1661
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1619, metadata !558), !dbg !1662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1620, metadata !558), !dbg !1663
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1664
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1664
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1621, metadata !558), !dbg !1665
  %7 = tail call i32* @__errno_location() #17, !dbg !1666
  %8 = load i32, i32* %7, align 4, !dbg !1666, !tbaa !648
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1622, metadata !558), !dbg !1667
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1668
  %10 = load i32, i32* %9, align 4, !dbg !1668, !tbaa !794
  %11 = icmp ne i64* %2, null, !dbg !1669
  %12 = xor i1 %11, true, !dbg !1669
  %13 = zext i1 %12 to i32, !dbg !1669
  %14 = or i32 %10, %13, !dbg !1670
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1623, metadata !558), !dbg !1671
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1672
  %16 = load i32, i32* %15, align 8, !dbg !1672, !tbaa !734
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1673
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1674
  %19 = load i8*, i8** %18, align 8, !dbg !1674, !tbaa !820
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1675
  %21 = load i8*, i8** %20, align 8, !dbg !1675, !tbaa !823
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1676
  %23 = add i64 %22, 1, !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1624, metadata !558), !dbg !1678
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1645, metadata !558) #9, !dbg !1679
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !1681
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1625, metadata !558), !dbg !1682
  %25 = load i32, i32* %15, align 8, !dbg !1683, !tbaa !734
  %26 = load i8*, i8** %18, align 8, !dbg !1684, !tbaa !820
  %27 = load i8*, i8** %20, align 8, !dbg !1685, !tbaa !823
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1686
  store i32 %8, i32* %7, align 4, !dbg !1687, !tbaa !648
  br i1 %11, label %29, label %30, !dbg !1688

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1689, !tbaa !1691
  br label %30, !dbg !1693

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1694
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1695 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1699, !tbaa !561
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1697, metadata !558), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1698, metadata !558), !dbg !1701
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1698, metadata !558), !dbg !1701
  %2 = load i32, i32* @nslots, align 4, !dbg !1702, !tbaa !648
  %3 = icmp sgt i32 %2, 1, !dbg !1705
  br i1 %3, label %4, label %13, !dbg !1706

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1707

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1698, metadata !558), !dbg !1701
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1707
  %8 = load i8*, i8** %7, align 8, !dbg !1707, !tbaa !1708
  tail call void @free(i8* %8) #9, !dbg !1710
  %9 = add nuw i64 %6, 1, !dbg !1711
  %10 = load i32, i32* @nslots, align 4, !dbg !1702, !tbaa !648
  %11 = sext i32 %10 to i64, !dbg !1705
  %12 = icmp slt i64 %9, %11, !dbg !1705
  br i1 %12, label %5, label %13, !dbg !1706, !llvm.loop !1712

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1714
  %15 = load i8*, i8** %14, align 8, !dbg !1714, !tbaa !1708
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1716
  br i1 %16, label %18, label %17, !dbg !1717

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !1718
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1720, !tbaa !1721
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1722, !tbaa !1708
  br label %18, !dbg !1723

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1724
  br i1 %19, label %22, label %20, !dbg !1726

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1727
  tail call void @free(i8* %21) #9, !dbg !1729
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1730, !tbaa !561
  br label %22, !dbg !1731

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1732, !tbaa !648
  ret void, !dbg !1733
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1734 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1738, metadata !558), !dbg !1740
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1739, metadata !558), !dbg !1741
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1742
  ret i8* %3, !dbg !1743
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1744 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1748, metadata !558), !dbg !1762
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1749, metadata !558), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1750, metadata !558), !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1751, metadata !558), !dbg !1765
  %5 = tail call i32* @__errno_location() #17, !dbg !1766
  %6 = load i32, i32* %5, align 4, !dbg !1766, !tbaa !648
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1752, metadata !558), !dbg !1767
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1768, !tbaa !561
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1753, metadata !558), !dbg !1769
  %8 = icmp slt i32 %0, 0, !dbg !1770
  br i1 %8, label %9, label %10, !dbg !1772

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1773
  unreachable, !dbg !1773

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1774, !tbaa !648
  %12 = icmp sgt i32 %11, %0, !dbg !1775
  br i1 %12, label %34, label %13, !dbg !1776

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1777
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1778
  br i1 %15, label %16, label %17, !dbg !1780

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1781
  unreachable, !dbg !1781

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1782
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1782
  %20 = add nsw i32 %0, 1, !dbg !1783
  %21 = sext i32 %20 to i64, !dbg !1784
  %22 = shl nsw i64 %21, 4, !dbg !1785
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !1786
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1753, metadata !558), !dbg !1769
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1787, !tbaa !561
  br i1 %14, label %25, label %26, !dbg !1788

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1789, !tbaa.struct !1791
  br label %26, !dbg !1792

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1793, !tbaa !648
  %28 = sext i32 %27 to i64, !dbg !1794
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1794
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1795
  %31 = sub nsw i32 %20, %27, !dbg !1796
  %32 = sext i32 %31 to i64, !dbg !1797
  %33 = shl nsw i64 %32, 4, !dbg !1798
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1795
  store i32 %20, i32* @nslots, align 4, !dbg !1799, !tbaa !648
  br label %34, !dbg !1800

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1753, metadata !558), !dbg !1769
  %36 = sext i32 %0 to i64, !dbg !1801
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1802
  %38 = load i64, i64* %37, align 8, !dbg !1802, !tbaa !1721
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1757, metadata !558), !dbg !1803
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1804
  %40 = load i8*, i8** %39, align 8, !dbg !1804, !tbaa !1708
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1759, metadata !558), !dbg !1805
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1806
  %42 = load i32, i32* %41, align 4, !dbg !1806, !tbaa !794
  %43 = or i32 %42, 1, !dbg !1807
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1760, metadata !558), !dbg !1808
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1809
  %45 = load i32, i32* %44, align 8, !dbg !1809, !tbaa !734
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1810
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1811
  %48 = load i8*, i8** %47, align 8, !dbg !1811, !tbaa !820
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1812
  %50 = load i8*, i8** %49, align 8, !dbg !1812, !tbaa !823
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1813
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1761, metadata !558), !dbg !1814
  %52 = icmp ugt i64 %38, %51, !dbg !1815
  br i1 %52, label %63, label %53, !dbg !1817

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1757, metadata !558), !dbg !1803
  store i64 %54, i64* %37, align 8, !dbg !1820, !tbaa !1721
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1821
  br i1 %55, label %57, label %56, !dbg !1823

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !1824
  br label %57, !dbg !1824

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1645, metadata !558) #9, !dbg !1825
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !1827
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1759, metadata !558), !dbg !1805
  store i8* %58, i8** %39, align 8, !dbg !1828, !tbaa !1708
  %59 = load i32, i32* %44, align 8, !dbg !1829, !tbaa !734
  %60 = load i8*, i8** %47, align 8, !dbg !1830, !tbaa !820
  %61 = load i8*, i8** %49, align 8, !dbg !1831, !tbaa !823
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1832
  br label %63, !dbg !1833

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1759, metadata !558), !dbg !1805
  store i32 %6, i32* %5, align 4, !dbg !1834, !tbaa !648
  ret i8* %64, !dbg !1835
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1836 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1840, metadata !558), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1841, metadata !558), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1842, metadata !558), !dbg !1845
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1846
  ret i8* %4, !dbg !1847
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1848 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1852, metadata !558), !dbg !1853
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1738, metadata !558) #9, !dbg !1854
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1739, metadata !558) #9, !dbg !1856
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1857
  ret i8* %2, !dbg !1858
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1859 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1863, metadata !558), !dbg !1865
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1864, metadata !558), !dbg !1866
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1840, metadata !558) #9, !dbg !1867
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1841, metadata !558) #9, !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1842, metadata !558) #9, !dbg !1870
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1871
  ret i8* %3, !dbg !1872
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1873 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1881, metadata !1887), !dbg !1888
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1877, metadata !558), !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1878, metadata !558), !dbg !1891
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1879, metadata !558), !dbg !1892
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1893
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1893
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1880, metadata !558), !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1886, metadata !558) #9, !dbg !1895
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !1896
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !1896
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1881, metadata !558) #9, !dbg !1888
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1881, metadata !1897) #9, !dbg !1888
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1888
  %8 = icmp eq i32 %1, 10, !dbg !1898
  br i1 %8, label %9, label %10, !dbg !1900

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !1901, !noalias !1902
  unreachable, !dbg !1901

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1881, metadata !1897) #9, !dbg !1888
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1905
  store i32 %1, i32* %11, align 8, !dbg !1905, !alias.scope !1902
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1905
  %13 = bitcast i32* %12 to i8*, !dbg !1905
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !1905
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !1906
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1880, metadata !558), !dbg !1894
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !1907
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1908
  ret i8* %14, !dbg !1909
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !1910 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1881, metadata !1887), !dbg !1919
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1914, metadata !558), !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1915, metadata !558), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1916, metadata !558), !dbg !1923
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1917, metadata !558), !dbg !1924
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !1925
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !1925
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1918, metadata !558), !dbg !1926
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1886, metadata !558) #9, !dbg !1927
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !1928
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !1928
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1881, metadata !558) #9, !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1881, metadata !1897) #9, !dbg !1919
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !1919
  %9 = icmp eq i32 %1, 10, !dbg !1929
  br i1 %9, label %10, label %11, !dbg !1930

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !1931, !noalias !1932
  unreachable, !dbg !1931

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1881, metadata !1897) #9, !dbg !1919
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1935
  store i32 %1, i32* %12, align 8, !dbg !1935, !alias.scope !1932
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1935
  %14 = bitcast i32* %13 to i8*, !dbg !1935
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !1935
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !1936
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1918, metadata !558), !dbg !1926
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !1937
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !1938
  ret i8* %15, !dbg !1939
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !1940 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !1881, metadata !1887), !dbg !1946
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1944, metadata !558), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1945, metadata !558), !dbg !1950
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1877, metadata !558) #9, !dbg !1951
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1878, metadata !558) #9, !dbg !1952
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1879, metadata !558) #9, !dbg !1953
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !1954
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !1954
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1880, metadata !558) #9, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1886, metadata !558) #9, !dbg !1956
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !1957
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !1957
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1881, metadata !558) #9, !dbg !1946
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1881, metadata !1897) #9, !dbg !1946
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !1946
  %7 = icmp eq i32 %0, 10, !dbg !1958
  br i1 %7, label %8, label %9, !dbg !1959

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !1960, !noalias !1961
  unreachable, !dbg !1960

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1881, metadata !1897) #9, !dbg !1946
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1964
  store i32 %0, i32* %10, align 8, !dbg !1964, !alias.scope !1961
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1964
  %12 = bitcast i32* %11 to i8*, !dbg !1964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !1964
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !1965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1880, metadata !558) #9, !dbg !1955
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !1966
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !1967
  ret i8* %13, !dbg !1968
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1969 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1881, metadata !1887), !dbg !1976
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1973, metadata !558), !dbg !1979
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1974, metadata !558), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1975, metadata !558), !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1914, metadata !558) #9, !dbg !1982
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1915, metadata !558) #9, !dbg !1983
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1916, metadata !558) #9, !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1917, metadata !558) #9, !dbg !1985
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1986
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1986
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1918, metadata !558) #9, !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1886, metadata !558) #9, !dbg !1988
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !1989
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !1989
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1881, metadata !558) #9, !dbg !1976
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1881, metadata !1897) #9, !dbg !1976
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1976
  %8 = icmp eq i32 %0, 10, !dbg !1990
  br i1 %8, label %9, label %10, !dbg !1991

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !1992, !noalias !1993
  unreachable, !dbg !1992

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1881, metadata !1897) #9, !dbg !1976
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1996
  store i32 %0, i32* %11, align 8, !dbg !1996, !alias.scope !1993
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1996
  %13 = bitcast i32* %12 to i8*, !dbg !1996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !1996
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !1997
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1918, metadata !558) #9, !dbg !1987
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !1998
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1999
  ret i8* %14, !dbg !2000
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2001 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2005, metadata !558), !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2006, metadata !558), !dbg !2010
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2007, metadata !558), !dbg !2011
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2012
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2013, !tbaa.struct !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2008, metadata !558), !dbg !2015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !753, metadata !558), !dbg !2016
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !754, metadata !558), !dbg !2018
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !755, metadata !558), !dbg !2019
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !756, metadata !558), !dbg !2020
  %6 = lshr i8 %2, 5, !dbg !2021
  %7 = zext i8 %6 to i64, !dbg !2021
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2022
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !757, metadata !558), !dbg !2023
  %9 = and i8 %2, 31, !dbg !2024
  %10 = zext i8 %9 to i32, !dbg !2025
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !759, metadata !558), !dbg !2026
  %11 = load i32, i32* %8, align 4, !dbg !2027, !tbaa !648
  %12 = lshr i32 %11, %10, !dbg !2028
  %13 = and i32 %12, 1, !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !760, metadata !558), !dbg !2030
  %14 = xor i32 %13, 1, !dbg !2031
  %15 = shl i32 %14, %10, !dbg !2032
  %16 = xor i32 %15, %11, !dbg !2033
  store i32 %16, i32* %8, align 4, !dbg !2033, !tbaa !648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2008, metadata !558), !dbg !2015
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2034
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2035
  ret i8* %17, !dbg !2036
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2037 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2041, metadata !558), !dbg !2043
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2042, metadata !558), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2005, metadata !558) #9, !dbg !2045
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2006, metadata !558) #9, !dbg !2047
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2007, metadata !558) #9, !dbg !2048
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2049
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2050, !tbaa.struct !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2008, metadata !558) #9, !dbg !2051
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !753, metadata !558) #9, !dbg !2052
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !754, metadata !558) #9, !dbg !2054
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !755, metadata !558) #9, !dbg !2055
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !756, metadata !558) #9, !dbg !2056
  %5 = lshr i8 %1, 5, !dbg !2057
  %6 = zext i8 %5 to i64, !dbg !2057
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2058
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !757, metadata !558) #9, !dbg !2059
  %8 = and i8 %1, 31, !dbg !2060
  %9 = zext i8 %8 to i32, !dbg !2061
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !759, metadata !558) #9, !dbg !2062
  %10 = load i32, i32* %7, align 4, !dbg !2063, !tbaa !648
  %11 = lshr i32 %10, %9, !dbg !2064
  %12 = and i32 %11, 1, !dbg !2065
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !760, metadata !558) #9, !dbg !2066
  %13 = xor i32 %12, 1, !dbg !2067
  %14 = shl i32 %13, %9, !dbg !2068
  %15 = xor i32 %14, %10, !dbg !2069
  store i32 %15, i32* %7, align 4, !dbg !2069, !tbaa !648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2008, metadata !558) #9, !dbg !2051
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2070
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2071
  ret i8* %16, !dbg !2072
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2073 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2075, metadata !558), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2041, metadata !558) #9, !dbg !2077
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2042, metadata !558) #9, !dbg !2079
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2005, metadata !558) #9, !dbg !2080
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2006, metadata !558) #9, !dbg !2082
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2007, metadata !558) #9, !dbg !2083
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2084
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2085, !tbaa.struct !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2008, metadata !558) #9, !dbg !2086
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !753, metadata !558) #9, !dbg !2087
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !754, metadata !558) #9, !dbg !2089
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !755, metadata !558) #9, !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !756, metadata !558) #9, !dbg !2091
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2092
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !757, metadata !558) #9, !dbg !2093
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !759, metadata !558) #9, !dbg !2094
  %5 = load i32, i32* %4, align 4, !dbg !2095, !tbaa !648
  %6 = or i32 %5, 67108864, !dbg !2096
  store i32 %6, i32* %4, align 4, !dbg !2096, !tbaa !648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2008, metadata !558) #9, !dbg !2086
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2098
  ret i8* %7, !dbg !2099
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2100 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2102, metadata !558), !dbg !2104
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2103, metadata !558), !dbg !2105
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2005, metadata !558) #9, !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2006, metadata !558) #9, !dbg !2108
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2007, metadata !558) #9, !dbg !2109
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2110
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2111, !tbaa.struct !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2008, metadata !558) #9, !dbg !2112
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !753, metadata !558) #9, !dbg !2113
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !754, metadata !558) #9, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !755, metadata !558) #9, !dbg !2116
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !756, metadata !558) #9, !dbg !2117
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2118
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !757, metadata !558) #9, !dbg !2119
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !759, metadata !558) #9, !dbg !2120
  %6 = load i32, i32* %5, align 4, !dbg !2121, !tbaa !648
  %7 = or i32 %6, 67108864, !dbg !2122
  store i32 %7, i32* %5, align 4, !dbg !2122, !tbaa !648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2008, metadata !558) #9, !dbg !2112
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2123
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2124
  ret i8* %8, !dbg !2125
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2126 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1881, metadata !1887), !dbg !2132
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2128, metadata !558), !dbg !2134
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2129, metadata !558), !dbg !2135
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2130, metadata !558), !dbg !2136
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1886, metadata !558) #9, !dbg !2138
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2139
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2139
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1881, metadata !558) #9, !dbg !2132
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1881, metadata !1897) #9, !dbg !2132
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2132
  %9 = icmp eq i32 %1, 10, !dbg !2140
  br i1 %9, label %10, label %11, !dbg !2141

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2142, !noalias !2143
  unreachable, !dbg !2142

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1881, metadata !1897) #9, !dbg !2132
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2146
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2147
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2148
  store i32 %1, i32* %13, align 8, !dbg !2148
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2148
  %15 = bitcast i32* %14 to i8*, !dbg !2148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2131, metadata !558), !dbg !2149
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !753, metadata !558), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !754, metadata !558), !dbg !2152
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !755, metadata !558), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !756, metadata !558), !dbg !2154
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2155
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !757, metadata !558), !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !759, metadata !558), !dbg !2157
  %17 = load i32, i32* %16, align 4, !dbg !2158, !tbaa !648
  %18 = or i32 %17, 67108864, !dbg !2159
  store i32 %18, i32* %16, align 4, !dbg !2159, !tbaa !648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2131, metadata !558), !dbg !2149
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2160
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2161
  ret i8* %19, !dbg !2162
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2163 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2167, metadata !558), !dbg !2171
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2168, metadata !558), !dbg !2172
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2169, metadata !558), !dbg !2173
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2170, metadata !558), !dbg !2174
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2175, metadata !558) #9, !dbg !2185
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2180, metadata !558) #9, !dbg !2187
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2181, metadata !558) #9, !dbg !2188
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2182, metadata !558) #9, !dbg !2189
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2183, metadata !558) #9, !dbg !2190
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2191
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2192, !tbaa.struct !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2184, metadata !558) #9, !dbg !2193
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !802, metadata !558) #9, !dbg !2194
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !803, metadata !558) #9, !dbg !2196
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !804, metadata !558) #9, !dbg !2197
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !802, metadata !558) #9, !dbg !2194
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !802, metadata !558) #9, !dbg !2194
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2198
  store i32 10, i32* %7, align 8, !dbg !2199, !tbaa !734
  %8 = icmp ne i8* %1, null, !dbg !2200
  %9 = icmp ne i8* %2, null, !dbg !2201
  %10 = and i1 %8, %9, !dbg !2202
  br i1 %10, label %12, label %11, !dbg !2202

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2203
  unreachable, !dbg !2203

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2204
  store i8* %1, i8** %13, align 8, !dbg !2205, !tbaa !820
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2206
  store i8* %2, i8** %14, align 8, !dbg !2207, !tbaa !823
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2184, metadata !558) #9, !dbg !2193
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2208
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2209
  ret i8* %15, !dbg !2210
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2176 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2175, metadata !558), !dbg !2211
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2180, metadata !558), !dbg !2212
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2181, metadata !558), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2182, metadata !558), !dbg !2214
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2183, metadata !558), !dbg !2215
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2216
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2217, !tbaa.struct !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2184, metadata !558), !dbg !2218
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !802, metadata !558) #9, !dbg !2219
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !803, metadata !558) #9, !dbg !2221
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !804, metadata !558) #9, !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !802, metadata !558) #9, !dbg !2219
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !802, metadata !558) #9, !dbg !2219
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2223
  store i32 10, i32* %8, align 8, !dbg !2224, !tbaa !734
  %9 = icmp ne i8* %1, null, !dbg !2225
  %10 = icmp ne i8* %2, null, !dbg !2226
  %11 = and i1 %9, %10, !dbg !2227
  br i1 %11, label %13, label %12, !dbg !2227

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2228
  unreachable, !dbg !2228

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2229
  store i8* %1, i8** %14, align 8, !dbg !2230, !tbaa !820
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2231
  store i8* %2, i8** %15, align 8, !dbg !2232, !tbaa !823
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2184, metadata !558), !dbg !2218
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2233
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2234
  ret i8* %16, !dbg !2235
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2236 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2240, metadata !558), !dbg !2243
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2241, metadata !558), !dbg !2244
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2242, metadata !558), !dbg !2245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2167, metadata !558) #9, !dbg !2246
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2168, metadata !558) #9, !dbg !2248
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2169, metadata !558) #9, !dbg !2249
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2170, metadata !558) #9, !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2175, metadata !558) #9, !dbg !2251
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2180, metadata !558) #9, !dbg !2253
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2181, metadata !558) #9, !dbg !2254
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2182, metadata !558) #9, !dbg !2255
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2183, metadata !558) #9, !dbg !2256
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2257
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2258, !tbaa.struct !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2184, metadata !558) #9, !dbg !2259
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !802, metadata !558) #9, !dbg !2260
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !803, metadata !558) #9, !dbg !2262
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !804, metadata !558) #9, !dbg !2263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !802, metadata !558) #9, !dbg !2260
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !802, metadata !558) #9, !dbg !2260
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2264
  store i32 10, i32* %6, align 8, !dbg !2265, !tbaa !734
  %7 = icmp ne i8* %0, null, !dbg !2266
  %8 = icmp ne i8* %1, null, !dbg !2267
  %9 = and i1 %7, %8, !dbg !2268
  br i1 %9, label %11, label %10, !dbg !2268

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2269
  unreachable, !dbg !2269

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2270
  store i8* %0, i8** %12, align 8, !dbg !2271, !tbaa !820
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2272
  store i8* %1, i8** %13, align 8, !dbg !2273, !tbaa !823
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2184, metadata !558) #9, !dbg !2259
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2275
  ret i8* %14, !dbg !2276
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2277 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2281, metadata !558), !dbg !2285
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2282, metadata !558), !dbg !2286
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2283, metadata !558), !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2284, metadata !558), !dbg !2288
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2175, metadata !558) #9, !dbg !2289
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2180, metadata !558) #9, !dbg !2291
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2181, metadata !558) #9, !dbg !2292
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2182, metadata !558) #9, !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2183, metadata !558) #9, !dbg !2294
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2296, !tbaa.struct !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2184, metadata !558) #9, !dbg !2297
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !802, metadata !558) #9, !dbg !2298
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !803, metadata !558) #9, !dbg !2300
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !804, metadata !558) #9, !dbg !2301
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !802, metadata !558) #9, !dbg !2298
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !802, metadata !558) #9, !dbg !2298
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2302
  store i32 10, i32* %7, align 8, !dbg !2303, !tbaa !734
  %8 = icmp ne i8* %0, null, !dbg !2304
  %9 = icmp ne i8* %1, null, !dbg !2305
  %10 = and i1 %8, %9, !dbg !2306
  br i1 %10, label %12, label %11, !dbg !2306

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2307
  unreachable, !dbg !2307

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2308
  store i8* %0, i8** %13, align 8, !dbg !2309, !tbaa !820
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2310
  store i8* %1, i8** %14, align 8, !dbg !2311, !tbaa !823
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2184, metadata !558) #9, !dbg !2297
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2312
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2313
  ret i8* %15, !dbg !2314
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2315 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2319, metadata !558), !dbg !2322
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2320, metadata !558), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2321, metadata !558), !dbg !2324
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2325
  ret i8* %4, !dbg !2326
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2327 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2331, metadata !558), !dbg !2333
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2332, metadata !558), !dbg !2334
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2319, metadata !558) #9, !dbg !2335
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2320, metadata !558) #9, !dbg !2337
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2321, metadata !558) #9, !dbg !2338
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2339
  ret i8* %3, !dbg !2340
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2341 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2345, metadata !558), !dbg !2347
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2346, metadata !558), !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2319, metadata !558) #9, !dbg !2349
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2320, metadata !558) #9, !dbg !2351
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2321, metadata !558) #9, !dbg !2352
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2353
  ret i8* %3, !dbg !2354
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2355 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2359, metadata !558), !dbg !2360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2345, metadata !558) #9, !dbg !2361
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2346, metadata !558) #9, !dbg !2363
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2319, metadata !558) #9, !dbg !2364
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2320, metadata !558) #9, !dbg !2366
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2321, metadata !558) #9, !dbg !2367
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2368
  ret i8* %2, !dbg !2369
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2370 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2430, metadata !558), !dbg !2436
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2431, metadata !558), !dbg !2437
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2432, metadata !558), !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2433, metadata !558), !dbg !2439
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2434, metadata !558), !dbg !2440
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2435, metadata !558), !dbg !2441
  %7 = icmp eq i8* %1, null, !dbg !2442
  br i1 %7, label %10, label %8, !dbg !2444

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2445
  br label %12, !dbg !2445

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.50, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2446
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i32 5) #9, !dbg !2447
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2447
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.52, i64 0, i64 0), i32 5) #9, !dbg !2448
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2448
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
  ], !dbg !2449

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2450
  unreachable, !dbg !2450

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.53, i64 0, i64 0), i32 5) #9, !dbg !2452
  %20 = load i8*, i8** %4, align 8, !dbg !2452, !tbaa !561
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2452
  br label %146, !dbg !2453

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.54, i64 0, i64 0), i32 5) #9, !dbg !2454
  %24 = load i8*, i8** %4, align 8, !dbg !2454, !tbaa !561
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2454
  %26 = load i8*, i8** %25, align 8, !dbg !2454, !tbaa !561
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2454
  br label %146, !dbg !2455

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.55, i64 0, i64 0), i32 5) #9, !dbg !2456
  %30 = load i8*, i8** %4, align 8, !dbg !2456, !tbaa !561
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2456
  %32 = load i8*, i8** %31, align 8, !dbg !2456, !tbaa !561
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2456
  %34 = load i8*, i8** %33, align 8, !dbg !2456, !tbaa !561
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2456
  br label %146, !dbg !2457

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.56, i64 0, i64 0), i32 5) #9, !dbg !2458
  %38 = load i8*, i8** %4, align 8, !dbg !2458, !tbaa !561
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2458
  %40 = load i8*, i8** %39, align 8, !dbg !2458, !tbaa !561
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2458
  %42 = load i8*, i8** %41, align 8, !dbg !2458, !tbaa !561
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2458
  %44 = load i8*, i8** %43, align 8, !dbg !2458, !tbaa !561
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2458
  br label %146, !dbg !2459

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.57, i64 0, i64 0), i32 5) #9, !dbg !2460
  %48 = load i8*, i8** %4, align 8, !dbg !2460, !tbaa !561
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2460
  %50 = load i8*, i8** %49, align 8, !dbg !2460, !tbaa !561
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2460
  %52 = load i8*, i8** %51, align 8, !dbg !2460, !tbaa !561
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2460
  %54 = load i8*, i8** %53, align 8, !dbg !2460, !tbaa !561
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2460
  %56 = load i8*, i8** %55, align 8, !dbg !2460, !tbaa !561
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2460
  br label %146, !dbg !2461

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.58, i64 0, i64 0), i32 5) #9, !dbg !2462
  %60 = load i8*, i8** %4, align 8, !dbg !2462, !tbaa !561
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2462
  %62 = load i8*, i8** %61, align 8, !dbg !2462, !tbaa !561
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2462
  %64 = load i8*, i8** %63, align 8, !dbg !2462, !tbaa !561
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2462
  %66 = load i8*, i8** %65, align 8, !dbg !2462, !tbaa !561
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2462
  %68 = load i8*, i8** %67, align 8, !dbg !2462, !tbaa !561
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2462
  %70 = load i8*, i8** %69, align 8, !dbg !2462, !tbaa !561
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2462
  br label %146, !dbg !2463

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.59, i64 0, i64 0), i32 5) #9, !dbg !2464
  %74 = load i8*, i8** %4, align 8, !dbg !2464, !tbaa !561
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2464
  %76 = load i8*, i8** %75, align 8, !dbg !2464, !tbaa !561
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2464
  %78 = load i8*, i8** %77, align 8, !dbg !2464, !tbaa !561
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2464
  %80 = load i8*, i8** %79, align 8, !dbg !2464, !tbaa !561
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2464
  %82 = load i8*, i8** %81, align 8, !dbg !2464, !tbaa !561
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2464
  %84 = load i8*, i8** %83, align 8, !dbg !2464, !tbaa !561
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2464
  %86 = load i8*, i8** %85, align 8, !dbg !2464, !tbaa !561
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2464
  br label %146, !dbg !2465

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.60, i64 0, i64 0), i32 5) #9, !dbg !2466
  %90 = load i8*, i8** %4, align 8, !dbg !2466, !tbaa !561
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2466
  %92 = load i8*, i8** %91, align 8, !dbg !2466, !tbaa !561
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2466
  %94 = load i8*, i8** %93, align 8, !dbg !2466, !tbaa !561
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2466
  %96 = load i8*, i8** %95, align 8, !dbg !2466, !tbaa !561
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2466
  %98 = load i8*, i8** %97, align 8, !dbg !2466, !tbaa !561
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2466
  %100 = load i8*, i8** %99, align 8, !dbg !2466, !tbaa !561
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2466
  %102 = load i8*, i8** %101, align 8, !dbg !2466, !tbaa !561
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2466
  %104 = load i8*, i8** %103, align 8, !dbg !2466, !tbaa !561
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2466
  br label %146, !dbg !2467

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.61, i64 0, i64 0), i32 5) #9, !dbg !2468
  %108 = load i8*, i8** %4, align 8, !dbg !2468, !tbaa !561
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2468
  %110 = load i8*, i8** %109, align 8, !dbg !2468, !tbaa !561
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2468
  %112 = load i8*, i8** %111, align 8, !dbg !2468, !tbaa !561
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2468
  %114 = load i8*, i8** %113, align 8, !dbg !2468, !tbaa !561
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2468
  %116 = load i8*, i8** %115, align 8, !dbg !2468, !tbaa !561
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2468
  %118 = load i8*, i8** %117, align 8, !dbg !2468, !tbaa !561
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2468
  %120 = load i8*, i8** %119, align 8, !dbg !2468, !tbaa !561
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2468
  %122 = load i8*, i8** %121, align 8, !dbg !2468, !tbaa !561
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2468
  %124 = load i8*, i8** %123, align 8, !dbg !2468, !tbaa !561
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2468
  br label %146, !dbg !2469

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.62, i64 0, i64 0), i32 5) #9, !dbg !2470
  %128 = load i8*, i8** %4, align 8, !dbg !2470, !tbaa !561
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2470
  %130 = load i8*, i8** %129, align 8, !dbg !2470, !tbaa !561
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2470
  %132 = load i8*, i8** %131, align 8, !dbg !2470, !tbaa !561
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2470
  %134 = load i8*, i8** %133, align 8, !dbg !2470, !tbaa !561
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2470
  %136 = load i8*, i8** %135, align 8, !dbg !2470, !tbaa !561
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2470
  %138 = load i8*, i8** %137, align 8, !dbg !2470, !tbaa !561
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2470
  %140 = load i8*, i8** %139, align 8, !dbg !2470, !tbaa !561
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2470
  %142 = load i8*, i8** %141, align 8, !dbg !2470, !tbaa !561
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2470
  %144 = load i8*, i8** %143, align 8, !dbg !2470, !tbaa !561
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2470
  br label %146, !dbg !2471

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2472
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2473 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2477, metadata !558), !dbg !2483
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2478, metadata !558), !dbg !2484
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2479, metadata !558), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2480, metadata !558), !dbg !2486
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2481, metadata !558), !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2482, metadata !558), !dbg !2488
  br label %6, !dbg !2489

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2482, metadata !558), !dbg !2488
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2491
  %9 = load i8*, i8** %8, align 8, !dbg !2491, !tbaa !561
  %10 = icmp eq i8* %9, null, !dbg !2493
  %11 = add i64 %7, 1, !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2482, metadata !558), !dbg !2488
  br i1 %10, label %12, label %6, !dbg !2493, !llvm.loop !2495

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2497
  ret void, !dbg !2498
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2499 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2510, metadata !558), !dbg !2518
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2511, metadata !558), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2512, metadata !558), !dbg !2520
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2513, metadata !558), !dbg !2521
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2514, metadata !558), !dbg !2522
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2523
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2523
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2516, metadata !558), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %11 = load i32, i32* %8, align 8, !dbg !2526
  %12 = icmp ult i32 %11, 41, !dbg !2526
  br i1 %12, label %13, label %18, !dbg !2526

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2526
  %15 = sext i32 %11 to i64, !dbg !2526
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2526
  %17 = add i32 %11, 8, !dbg !2526
  store i32 %17, i32* %8, align 8, !dbg !2526
  br label %21, !dbg !2526

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2526
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2526
  store i8* %20, i8** %10, align 8, !dbg !2526
  br label %21, !dbg !2526

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2526
  %25 = load i8*, i8** %24, align 8, !dbg !2526
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2529
  store i8* %25, i8** %26, align 16, !dbg !2530, !tbaa !561
  %27 = icmp eq i8* %25, null, !dbg !2531
  br i1 %27, label %30, label %28, !dbg !2532

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %29 = icmp ult i32 %22, 41, !dbg !2526
  br i1 %29, label %35, label %32, !dbg !2526

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2534
  ret void, !dbg !2534

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2526
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2526
  store i8* %34, i8** %10, align 8, !dbg !2526
  br label %40, !dbg !2526

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2526
  %37 = sext i32 %22 to i64, !dbg !2526
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2526
  %39 = add i32 %22, 8, !dbg !2526
  store i32 %39, i32* %8, align 8, !dbg !2526
  br label %40, !dbg !2526

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2526
  %44 = load i8*, i8** %43, align 8, !dbg !2526
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2529
  store i8* %44, i8** %45, align 8, !dbg !2530, !tbaa !561
  %46 = icmp eq i8* %44, null, !dbg !2531
  br i1 %46, label %30, label %47, !dbg !2532

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %48 = icmp ult i32 %41, 41, !dbg !2526
  br i1 %48, label %52, label %49, !dbg !2526

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2526
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2526
  store i8* %51, i8** %10, align 8, !dbg !2526
  br label %57, !dbg !2526

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2526
  %54 = sext i32 %41 to i64, !dbg !2526
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2526
  %56 = add i32 %41, 8, !dbg !2526
  store i32 %56, i32* %8, align 8, !dbg !2526
  br label %57, !dbg !2526

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2526
  %61 = load i8*, i8** %60, align 8, !dbg !2526
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2529
  store i8* %61, i8** %62, align 16, !dbg !2530, !tbaa !561
  %63 = icmp eq i8* %61, null, !dbg !2531
  br i1 %63, label %30, label %64, !dbg !2532

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %65 = icmp ult i32 %58, 41, !dbg !2526
  br i1 %65, label %69, label %66, !dbg !2526

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2526
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2526
  store i8* %68, i8** %10, align 8, !dbg !2526
  br label %74, !dbg !2526

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2526
  %71 = sext i32 %58 to i64, !dbg !2526
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2526
  %73 = add i32 %58, 8, !dbg !2526
  store i32 %73, i32* %8, align 8, !dbg !2526
  br label %74, !dbg !2526

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2526
  %78 = load i8*, i8** %77, align 8, !dbg !2526
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2529
  store i8* %78, i8** %79, align 8, !dbg !2530, !tbaa !561
  %80 = icmp eq i8* %78, null, !dbg !2531
  br i1 %80, label %30, label %81, !dbg !2532

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %82 = icmp ult i32 %75, 41, !dbg !2526
  br i1 %82, label %86, label %83, !dbg !2526

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2526
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2526
  store i8* %85, i8** %10, align 8, !dbg !2526
  br label %91, !dbg !2526

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2526
  %88 = sext i32 %75 to i64, !dbg !2526
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2526
  %90 = add i32 %75, 8, !dbg !2526
  store i32 %90, i32* %8, align 8, !dbg !2526
  br label %91, !dbg !2526

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2526
  %95 = load i8*, i8** %94, align 8, !dbg !2526
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2529
  store i8* %95, i8** %96, align 16, !dbg !2530, !tbaa !561
  %97 = icmp eq i8* %95, null, !dbg !2531
  br i1 %97, label %30, label %98, !dbg !2532

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %99 = icmp ult i32 %92, 41, !dbg !2526
  br i1 %99, label %103, label %100, !dbg !2526

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2526
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2526
  store i8* %102, i8** %10, align 8, !dbg !2526
  br label %108, !dbg !2526

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2526
  %105 = sext i32 %92 to i64, !dbg !2526
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2526
  %107 = add i32 %92, 8, !dbg !2526
  store i32 %107, i32* %8, align 8, !dbg !2526
  br label %108, !dbg !2526

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2526
  %111 = load i8*, i8** %110, align 8, !dbg !2526
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2529
  store i8* %111, i8** %112, align 8, !dbg !2530, !tbaa !561
  %113 = icmp eq i8* %111, null, !dbg !2531
  br i1 %113, label %30, label %114, !dbg !2532

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %115 = load i8*, i8** %10, align 8, !dbg !2526
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2526
  store i8* %116, i8** %10, align 8, !dbg !2526
  %117 = bitcast i8* %115 to i8**, !dbg !2526
  %118 = load i8*, i8** %117, align 8, !dbg !2526
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2529
  store i8* %118, i8** %119, align 16, !dbg !2530, !tbaa !561
  %120 = icmp eq i8* %118, null, !dbg !2531
  br i1 %120, label %30, label %121, !dbg !2532

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %122 = load i8*, i8** %10, align 8, !dbg !2526
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2526
  store i8* %123, i8** %10, align 8, !dbg !2526
  %124 = bitcast i8* %122 to i8**, !dbg !2526
  %125 = load i8*, i8** %124, align 8, !dbg !2526
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2529
  store i8* %125, i8** %126, align 8, !dbg !2530, !tbaa !561
  %127 = icmp eq i8* %125, null, !dbg !2531
  br i1 %127, label %30, label %128, !dbg !2532

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %129 = load i8*, i8** %10, align 8, !dbg !2526
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2526
  store i8* %130, i8** %10, align 8, !dbg !2526
  %131 = bitcast i8* %129 to i8**, !dbg !2526
  %132 = load i8*, i8** %131, align 8, !dbg !2526
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2529
  store i8* %132, i8** %133, align 16, !dbg !2530, !tbaa !561
  %134 = icmp eq i8* %132, null, !dbg !2531
  br i1 %134, label %30, label %135, !dbg !2532

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2515, metadata !558), !dbg !2525
  %136 = load i8*, i8** %10, align 8, !dbg !2526
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2526
  store i8* %137, i8** %10, align 8, !dbg !2526
  %138 = bitcast i8* %136 to i8**, !dbg !2526
  %139 = load i8*, i8** %138, align 8, !dbg !2526
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2529
  store i8* %139, i8** %140, align 8, !dbg !2530, !tbaa !561
  %141 = icmp eq i8* %139, null, !dbg !2531
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2515, metadata !558), !dbg !2525
  %142 = select i1 %141, i64 9, i64 10, !dbg !2532
  br label %30, !dbg !2532
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2535 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2539, metadata !558), !dbg !2550
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2540, metadata !558), !dbg !2551
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2541, metadata !558), !dbg !2552
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2542, metadata !558), !dbg !2553
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2554
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2554
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2543, metadata !558), !dbg !2555
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2556
  call void @llvm.va_start(i8* nonnull %6), !dbg !2556
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2557
  call void @llvm.va_end(i8* nonnull %6), !dbg !2558
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2559
  ret void, !dbg !2559
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2560 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.65, i64 0, i64 0), i32 5) #9, !dbg !2561
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.66, i64 0, i64 0)) #9, !dbg !2561
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !2562
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.68, i64 0, i64 0)) #9, !dbg !2562
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !2563
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2563, !tbaa !561
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2563
  ret void, !dbg !2564
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2565 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2569, metadata !558), !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2570, metadata !558), !dbg !2572
  %3 = udiv i64 9223372036854775807, %1, !dbg !2573
  %4 = icmp ult i64 %3, %0, !dbg !2573
  br i1 %4, label %5, label %6, !dbg !2575

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2576
  unreachable, !dbg !2576

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2578, metadata !558) #9, !dbg !2585
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2587
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2584, metadata !558) #9, !dbg !2588
  %9 = icmp eq i8* %8, null, !dbg !2589
  %10 = icmp ne i64 %7, 0, !dbg !2591
  %11 = and i1 %10, %9, !dbg !2592
  br i1 %11, label %12, label %13, !dbg !2592

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2593
  unreachable, !dbg !2593

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2594
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2579 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2578, metadata !558), !dbg !2595
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2584, metadata !558), !dbg !2597
  %3 = icmp eq i8* %2, null, !dbg !2598
  %4 = icmp ne i64 %0, 0, !dbg !2599
  %5 = and i1 %4, %3, !dbg !2600
  br i1 %5, label %6, label %7, !dbg !2600

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2601
  unreachable, !dbg !2601

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2602
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2603 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2607, metadata !558), !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2608, metadata !558), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2609, metadata !558), !dbg !2612
  %4 = udiv i64 9223372036854775807, %2, !dbg !2613
  %5 = icmp ult i64 %4, %1, !dbg !2613
  br i1 %5, label %6, label %7, !dbg !2615

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2616
  unreachable, !dbg !2616

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2617
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2618, metadata !558) #9, !dbg !2624
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2623, metadata !558) #9, !dbg !2626
  %9 = icmp eq i64 %8, 0, !dbg !2627
  %10 = icmp ne i8* %0, null, !dbg !2629
  %11 = and i1 %10, %9, !dbg !2630
  br i1 %11, label %12, label %13, !dbg !2630

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !2631
  br label %19, !dbg !2633

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !2634
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2618, metadata !558) #9, !dbg !2624
  %15 = icmp eq i8* %14, null, !dbg !2635
  %16 = icmp ne i64 %8, 0, !dbg !2637
  %17 = and i1 %16, %15, !dbg !2638
  br i1 %17, label %18, label %19, !dbg !2638

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2639
  unreachable, !dbg !2639

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2640
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2619 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2618, metadata !558), !dbg !2641
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2623, metadata !558), !dbg !2642
  %3 = icmp eq i64 %1, 0, !dbg !2643
  %4 = icmp ne i8* %0, null, !dbg !2644
  %5 = and i1 %4, %3, !dbg !2645
  br i1 %5, label %6, label %7, !dbg !2645

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !2646
  br label %13, !dbg !2647

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !2648
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2618, metadata !558), !dbg !2641
  %9 = icmp eq i8* %8, null, !dbg !2649
  %10 = icmp ne i64 %1, 0, !dbg !2650
  %11 = and i1 %10, %9, !dbg !2651
  br i1 %11, label %12, label %13, !dbg !2651

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2652
  unreachable, !dbg !2652

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2653
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !517 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !522, metadata !558), !dbg !2654
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !523, metadata !558), !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !524, metadata !558), !dbg !2656
  %4 = load i64, i64* %1, align 8, !dbg !2657, !tbaa !1691
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !525, metadata !558), !dbg !2658
  %5 = icmp eq i8* %0, null, !dbg !2659
  br i1 %5, label %6, label %13, !dbg !2661

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2662
  br i1 %7, label %8, label %17, !dbg !2665

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !525, metadata !558), !dbg !2658
  %10 = icmp ugt i64 %2, 128, !dbg !2668
  %11 = zext i1 %10 to i64, !dbg !2668
  %12 = add nuw nsw i64 %9, %11, !dbg !2669
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !525, metadata !558), !dbg !2658
  br label %17, !dbg !2670

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2671
  %15 = icmp ugt i64 %14, %4, !dbg !2674
  br i1 %15, label %20, label %16, !dbg !2675

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2676
  unreachable, !dbg !2676

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !525, metadata !558), !dbg !2658
  store i64 %18, i64* %1, align 8, !dbg !2677, !tbaa !1691
  %19 = mul i64 %18, %2, !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2618, metadata !558) #9, !dbg !2679
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2623, metadata !558) #9, !dbg !2681
  br label %27, !dbg !2682

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2683
  %22 = add i64 %4, 1, !dbg !2684
  %23 = add i64 %22, %21, !dbg !2685
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !525, metadata !558), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !525, metadata !558), !dbg !2658
  store i64 %23, i64* %1, align 8, !dbg !2677, !tbaa !1691
  %24 = mul i64 %23, %2, !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2618, metadata !558) #9, !dbg !2679
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2623, metadata !558) #9, !dbg !2681
  %25 = icmp eq i64 %24, 0, !dbg !2686
  br i1 %25, label %26, label %27, !dbg !2682

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !2687
  br label %34, !dbg !2688

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !2689
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2618, metadata !558) #9, !dbg !2679
  %30 = icmp eq i8* %29, null, !dbg !2690
  %31 = icmp ne i64 %28, 0, !dbg !2691
  %32 = and i1 %31, %30, !dbg !2692
  br i1 %32, label %33, label %34, !dbg !2692

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2693
  unreachable, !dbg !2693

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2694
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2695 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2697, metadata !558), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2578, metadata !558) #9, !dbg !2699
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2701
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2584, metadata !558) #9, !dbg !2702
  %3 = icmp eq i8* %2, null, !dbg !2703
  %4 = icmp ne i64 %0, 0, !dbg !2704
  %5 = and i1 %4, %3, !dbg !2705
  br i1 %5, label %6, label %7, !dbg !2705

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2706
  unreachable, !dbg !2706

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2707
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2708 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2712, metadata !558), !dbg !2714
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2713, metadata !558), !dbg !2715
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !522, metadata !558) #9, !dbg !2716
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !523, metadata !558) #9, !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !524, metadata !558) #9, !dbg !2719
  %3 = load i64, i64* %1, align 8, !dbg !2720, !tbaa !1691
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !525, metadata !558) #9, !dbg !2721
  %4 = icmp eq i8* %0, null, !dbg !2722
  br i1 %4, label %5, label %8, !dbg !2723

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !525, metadata !558) #9, !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !525, metadata !558) #9, !dbg !2721
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2725
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !525, metadata !558) #9, !dbg !2721
  store i64 %7, i64* %1, align 8, !dbg !2726, !tbaa !1691
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2618, metadata !558) #9, !dbg !2727
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2623, metadata !558) #9, !dbg !2729
  br label %17, !dbg !2730

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2731
  br i1 %9, label %11, label %10, !dbg !2732

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2733
  unreachable, !dbg !2733

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2734
  %13 = add i64 %3, 1, !dbg !2735
  %14 = add i64 %13, %12, !dbg !2736
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !525, metadata !558) #9, !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !525, metadata !558) #9, !dbg !2721
  store i64 %14, i64* %1, align 8, !dbg !2726, !tbaa !1691
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2618, metadata !558) #9, !dbg !2727
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2623, metadata !558) #9, !dbg !2729
  %15 = icmp eq i64 %14, 0, !dbg !2737
  br i1 %15, label %16, label %17, !dbg !2730

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !2738
  br label %24, !dbg !2739

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !2740
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2618, metadata !558) #9, !dbg !2727
  %20 = icmp eq i8* %19, null, !dbg !2741
  %21 = icmp ne i64 %18, 0, !dbg !2742
  %22 = and i1 %21, %20, !dbg !2743
  br i1 %22, label %23, label %24, !dbg !2743

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2744
  unreachable, !dbg !2744

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2745
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2746 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2748, metadata !558), !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2578, metadata !558) #9, !dbg !2750
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2752
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2584, metadata !558) #9, !dbg !2753
  %3 = icmp eq i8* %2, null, !dbg !2754
  %4 = icmp ne i64 %0, 0, !dbg !2755
  %5 = and i1 %4, %3, !dbg !2756
  br i1 %5, label %6, label %7, !dbg !2756

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2757
  unreachable, !dbg !2757

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2758
  ret i8* %2, !dbg !2759
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2760 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2762, metadata !558), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2763, metadata !558), !dbg !2766
  %3 = udiv i64 9223372036854775807, %1, !dbg !2767
  %4 = icmp ult i64 %3, %0, !dbg !2767
  br i1 %4, label %8, label %5, !dbg !2769

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2764, metadata !558), !dbg !2771
  %7 = icmp eq i8* %6, null, !dbg !2772
  br i1 %7, label %8, label %9, !dbg !2773

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2774
  unreachable, !dbg !2774

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2775
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2776 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2782, metadata !558), !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2783, metadata !558), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2578, metadata !558) #9, !dbg !2786
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !2788
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2584, metadata !558) #9, !dbg !2789
  %4 = icmp eq i8* %3, null, !dbg !2790
  %5 = icmp ne i64 %1, 0, !dbg !2791
  %6 = and i1 %5, %4, !dbg !2792
  br i1 %6, label %7, label %8, !dbg !2792

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2793
  unreachable, !dbg !2793

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2794
  ret i8* %3, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2798, metadata !558), !dbg !2799
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2800
  %3 = add i64 %2, 1, !dbg !2801
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2782, metadata !558) #9, !dbg !2802
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2783, metadata !558) #9, !dbg !2804
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2578, metadata !558) #9, !dbg !2805
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !2807
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2584, metadata !558) #9, !dbg !2808
  %5 = icmp eq i8* %4, null, !dbg !2809
  %6 = icmp ne i64 %3, 0, !dbg !2810
  %7 = and i1 %6, %5, !dbg !2811
  br i1 %7, label %8, label %9, !dbg !2811

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2812
  unreachable, !dbg !2812

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !2813
  ret i8* %4, !dbg !2814
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2815 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2817, !tbaa !648
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.79, i64 0, i64 0), i32 5) #9, !dbg !2818
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i8* %2) #9, !dbg !2819
  tail call void @abort() #15, !dbg !2820
  unreachable, !dbg !2820
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2821 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2824, metadata !558), !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2825, metadata !558), !dbg !2831
  %3 = icmp eq i64 %0, 0, !dbg !2832
  %4 = icmp eq i64 %1, 0, !dbg !2833
  %5 = or i1 %3, %4, !dbg !2834
  br i1 %5, label %12, label %6, !dbg !2834

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2835
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2827, metadata !558), !dbg !2836
  %8 = udiv i64 %7, %1, !dbg !2837
  %9 = icmp eq i64 %8, %0, !dbg !2839
  br i1 %9, label %12, label %10, !dbg !2840

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2841
  store i32 12, i32* %11, align 4, !dbg !2843, !tbaa !648
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2824, metadata !558), !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2825, metadata !558), !dbg !2831
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !2844
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2826, metadata !558), !dbg !2845
  br label %16, !dbg !2846

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2847
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2848 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2865, metadata !558), !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2866, metadata !558), !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2867, metadata !558), !dbg !2876
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2868, metadata !558), !dbg !2877
  %6 = bitcast i32* %5 to i8*, !dbg !2878
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !2878
  %7 = icmp eq i32* %0, null, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2865, metadata !558), !dbg !2874
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2881
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2865, metadata !558), !dbg !2874
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2869, metadata !558), !dbg !2883
  %10 = icmp ugt i64 %9, -3, !dbg !2884
  %11 = icmp ne i64 %2, 0, !dbg !2885
  %12 = and i1 %11, %10, !dbg !2886
  br i1 %12, label %13, label %18, !dbg !2886

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !2887
  br i1 %14, label %18, label %15, !dbg !2888

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2889, !tbaa !955
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2871, metadata !558), !dbg !2890
  %17 = zext i8 %16 to i32, !dbg !2891
  store i32 %17, i32* %8, align 4, !dbg !2892, !tbaa !648
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !2893
  ret i64 %19, !dbg !2893
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !2894 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2939, metadata !558), !dbg !2944
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !2945
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2946, metadata !558), !dbg !2950
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2952
  %4 = load i32, i32* %3, align 8, !dbg !2952, !tbaa !2953
  %5 = and i32 %4, 32, !dbg !2952
  %6 = icmp eq i32 %5, 0, !dbg !2955
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !2956
  %8 = icmp ne i32 %7, 0, !dbg !2957
  br i1 %6, label %9, label %19, !dbg !2958

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2960
  %11 = xor i1 %8, true, !dbg !2961
  %12 = or i1 %10, %11, !dbg !2961
  %13 = sext i1 %8 to i32, !dbg !2961
  br i1 %12, label %22, label %14, !dbg !2961

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !2962
  %16 = load i32, i32* %15, align 4, !dbg !2962, !tbaa !648
  %17 = icmp ne i32 %16, 9, !dbg !2963
  %18 = sext i1 %17 to i32, !dbg !2964
  br label %22, !dbg !2964

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !2965

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !2967
  store i32 0, i32* %21, align 4, !dbg !2969, !tbaa !648
  br label %22, !dbg !2967

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !2970
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !2971 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2976, metadata !558), !dbg !2979
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2977, metadata !558), !dbg !2980
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !2981
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2978, metadata !558), !dbg !2982
  %3 = icmp eq i8* %2, null, !dbg !2983
  br i1 %3, label %11, label %4, !dbg !2985

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i64 0, i64 0)) #14, !dbg !2986
  %6 = icmp eq i32 %5, 0, !dbg !2991
  br i1 %6, label %10, label %7, !dbg !2992

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.90, i64 0, i64 0)) #14, !dbg !2993
  %9 = icmp eq i32 %8, 0, !dbg !2994
  br i1 %9, label %10, label %11, !dbg !2995

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2977, metadata !558), !dbg !2980
  br label %11, !dbg !2996

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !2997
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !2998 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3004, metadata !558), !dbg !3078
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3071, metadata !558), !dbg !3081
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3082
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3002, metadata !558), !dbg !3083
  %4 = icmp eq i8* %3, null, !dbg !3084
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), i8* %3, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3002, metadata !558), !dbg !3083
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3087, !tbaa !561
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3018, metadata !558) #9, !dbg !3088
  %7 = icmp eq i8* %6, null, !dbg !3089
  br i1 %7, label %8, label %123, !dbg !3090

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.94, i64 0, i64 0)) #9, !dbg !3091
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3019, metadata !558) #9, !dbg !3092
  %10 = icmp eq i8* %9, null, !dbg !3093
  br i1 %10, label %14, label %11, !dbg !3095

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3096, !tbaa !955
  %13 = icmp eq i8 %12, 0, !dbg !3097
  br i1 %13, label %14, label %15, !dbg !3098

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3099

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.95, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3019, metadata !558) #9, !dbg !3092
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3022, metadata !558) #9, !dbg !3101
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3024, metadata !558) #9, !dbg !3102
  %18 = icmp eq i64 %17, 0, !dbg !3103
  br i1 %18, label %24, label %19, !dbg !3104

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3105
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3105
  %22 = load i8, i8* %21, align 1, !dbg !3105, !tbaa !955
  %23 = icmp ne i8 %22, 47, !dbg !3105
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3106
  %27 = add i64 %17, 14, !dbg !3107
  %28 = add i64 %27, %26, !dbg !3108
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3109
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3021, metadata !558) #9, !dbg !3110
  %30 = icmp eq i8* %29, null, !dbg !3111
  br i1 %30, label %121, label %31, !dbg !3111

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3112
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3115

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3116, !tbaa !955
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3118
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.96, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3119
  br label %37, !dbg !3120

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3118
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.96, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3119
  br label %37, !dbg !3120

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3121
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3026, metadata !558) #9, !dbg !3122
  %39 = icmp slt i32 %38, 0, !dbg !3123
  br i1 %39, label %119, label %40, !dbg !3124

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.97, i64 0, i64 0)) #9, !dbg !3125
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3027, metadata !558) #9, !dbg !3126
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3127
  br i1 %42, label %43, label %45, !dbg !3128

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !3129
  br label %119, !dbg !3131

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3068, metadata !558) #9, !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3069, metadata !558) #9, !dbg !3133
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3134

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3135

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3068, metadata !558) #9, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3069, metadata !558) #9, !dbg !3133
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3135
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3136
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3137, metadata !558) #9, !dbg !3142
  %54 = load i8*, i8** %48, align 8, !dbg !3144, !tbaa !3145
  %55 = load i8*, i8** %49, align 8, !dbg !3144, !tbaa !3146
  %56 = icmp ult i8* %54, %55, !dbg !3144
  br i1 %56, label %59, label %57, !dbg !3144, !prof !3147

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3144
  br label %63, !dbg !3144

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3144
  store i8* %60, i8** %48, align 8, !dbg !3144, !tbaa !3145
  %61 = load i8, i8* %54, align 1, !dbg !3144, !tbaa !955
  %62 = zext i8 %61 to i32, !dbg !3144
  br label %63, !dbg !3144

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3144
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3070, metadata !558) #9, !dbg !3148
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3149, !llvm.loop !3150

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3155

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3137, metadata !558) #9, !dbg !3157
  %67 = load i8*, i8** %48, align 8, !dbg !3155, !tbaa !3145
  %68 = load i8*, i8** %49, align 8, !dbg !3155, !tbaa !3146
  %69 = icmp ult i8* %67, %68, !dbg !3155
  br i1 %69, label %72, label %70, !dbg !3155, !prof !3147

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3155
  br label %76, !dbg !3155

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3155
  store i8* %73, i8** %48, align 8, !dbg !3155, !tbaa !3145
  %74 = load i8, i8* %67, align 1, !dbg !3155, !tbaa !955
  %75 = zext i8 %74 to i32, !dbg !3155
  br label %76, !dbg !3155

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3155
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3070, metadata !558) #9, !dbg !3148
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3158, !llvm.loop !3159

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !3162
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.98, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !3163
  %81 = icmp slt i32 %80, 2, !dbg !3165
  br i1 %81, label %112, label %82, !dbg !3166

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3075, metadata !558) #9, !dbg !3168
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3076, metadata !558) #9, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3077, metadata !558) #9, !dbg !3171
  %85 = icmp eq i64 %51, 0, !dbg !3172
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3174

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3069, metadata !558) #9, !dbg !3133
  %90 = add i64 %87, 2, !dbg !3175
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3068, metadata !558) #9, !dbg !3132
  br label %96, !dbg !3178

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3069, metadata !558) #9, !dbg !3133
  %94 = add i64 %93, 1, !dbg !3181
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !3182
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3068, metadata !558) #9, !dbg !3132
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3068, metadata !558) #9, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3069, metadata !558) #9, !dbg !3133
  %99 = icmp eq i8* %98, null, !dbg !3183
  br i1 %99, label %100, label %102, !dbg !3185

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3069, metadata !558) #9, !dbg !3133
  call void @free(i8* %52) #9, !dbg !3186
  br label %112, !dbg !3188

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3189
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3189
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3190
  %104 = xor i64 %84, -1, !dbg !3191
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3191
  %106 = xor i64 %83, -1, !dbg !3192
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3193, metadata !558) #9, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3201, metadata !558) #9, !dbg !3202
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !3204
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !3205
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3193, metadata !558) #9, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3201, metadata !558) #9, !dbg !3206
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !3208
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3068, metadata !558) #9, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3069, metadata !558) #9, !dbg !3133
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3189
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3189
  br label %50, !dbg !3210, !llvm.loop !3159

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3189
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3189
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3211
  %116 = icmp eq i64 %113, 0, !dbg !3212
  br i1 %116, label %119, label %117, !dbg !3214

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3215
  store i8 0, i8* %118, align 1, !dbg !3217, !tbaa !955
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3018, metadata !558) #9, !dbg !3088
  call void @free(i8* %29) #9, !dbg !3218
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3018, metadata !558) #9, !dbg !3088
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3219, !tbaa !561
  br label %123, !dbg !3220

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3018, metadata !558) #9, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3003, metadata !558), !dbg !3221
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3003, metadata !558), !dbg !3221
  %125 = load i8, i8* %124, align 1, !dbg !3222, !tbaa !955
  %126 = icmp eq i8 %125, 0, !dbg !3224
  br i1 %126, label %152, label %127, !dbg !3225

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3226

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3003, metadata !558), !dbg !3221
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3226
  %132 = icmp eq i32 %131, 0, !dbg !3228
  br i1 %132, label %139, label %133, !dbg !3229

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3230
  br i1 %134, label %135, label %143, !dbg !3231

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3232
  %137 = load i8, i8* %136, align 1, !dbg !3232, !tbaa !955
  %138 = icmp eq i8 %137, 0, !dbg !3233
  br i1 %138, label %139, label %143, !dbg !3234

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3235
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3237
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3002, metadata !558), !dbg !3083
  br label %152, !dbg !3239

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3240
  %145 = add i64 %144, 1, !dbg !3241
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3003, metadata !558), !dbg !3221
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3243
  %148 = add i64 %147, 1, !dbg !3244
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3245
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3003, metadata !558), !dbg !3221
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3003, metadata !558), !dbg !3221
  %150 = load i8, i8* %149, align 1, !dbg !3222, !tbaa !955
  %151 = icmp eq i8 %150, 0, !dbg !3224
  br i1 %151, label %152, label %128, !dbg !3225, !llvm.loop !3246

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3002, metadata !558), !dbg !3083
  %154 = load i8, i8* %153, align 1, !dbg !3248, !tbaa !955
  %155 = icmp eq i8 %154, 0, !dbg !3250
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.99, i64 0, i64 0), i8* %153, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3002, metadata !558), !dbg !3083
  ret i8* %156, !dbg !3252
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3253 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3298, metadata !558), !dbg !3302
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3299, metadata !558), !dbg !3303
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3301, metadata !558), !dbg !3304
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3305
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3300, metadata !558), !dbg !3306
  %3 = icmp slt i32 %2, 0, !dbg !3307
  br i1 %3, label %4, label %6, !dbg !3309

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3310
  br label %24, !dbg !3311

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3312
  %8 = icmp eq i32 %7, 0, !dbg !3312
  br i1 %8, label %13, label %9, !dbg !3314

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3315
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3316
  %12 = icmp eq i64 %11, -1, !dbg !3317
  br i1 %12, label %16, label %13, !dbg !3318

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3319
  %15 = icmp eq i32 %14, 0, !dbg !3319
  br i1 %15, label %16, label %18, !dbg !3320

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3299, metadata !558), !dbg !3303
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3321
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3301, metadata !558), !dbg !3304
  br label %24, !dbg !3322

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3323
  %20 = load i32, i32* %19, align 4, !dbg !3323, !tbaa !648
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3299, metadata !558), !dbg !3303
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3299, metadata !558), !dbg !3303
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3321
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3301, metadata !558), !dbg !3304
  %22 = icmp eq i32 %20, 0, !dbg !3324
  br i1 %22, label %24, label %23, !dbg !3322

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3326, !tbaa !648
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3301, metadata !558), !dbg !3304
  br label %24, !dbg !3328

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3329
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3330 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3375, metadata !558), !dbg !3376
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3377
  br i1 %2, label %6, label %3, !dbg !3379

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3380
  %5 = icmp eq i32 %4, 0, !dbg !3380
  br i1 %5, label %6, label %8, !dbg !3381

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3382
  br label %17, !dbg !3383

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3384, metadata !558) #9, !dbg !3389
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3391
  %10 = load i32, i32* %9, align 8, !dbg !3391, !tbaa !2953
  %11 = and i32 %10, 256, !dbg !3393
  %12 = icmp eq i32 %11, 0, !dbg !3393
  br i1 %12, label %15, label %13, !dbg !3394

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3395
  br label %15, !dbg !3395

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3396
  br label %17, !dbg !3397

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3398
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3399 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3445, metadata !558), !dbg !3451
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3446, metadata !558), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3447, metadata !558), !dbg !3453
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3454
  %5 = load i8*, i8** %4, align 8, !dbg !3454, !tbaa !3146
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3455
  %7 = load i8*, i8** %6, align 8, !dbg !3455, !tbaa !3145
  %8 = icmp eq i8* %5, %7, !dbg !3456
  br i1 %8, label %9, label %28, !dbg !3457

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3458
  %11 = load i8*, i8** %10, align 8, !dbg !3458, !tbaa !3459
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3460
  %13 = load i8*, i8** %12, align 8, !dbg !3460, !tbaa !3461
  %14 = icmp eq i8* %11, %13, !dbg !3462
  br i1 %14, label %15, label %28, !dbg !3463

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3464
  %17 = load i8*, i8** %16, align 8, !dbg !3464, !tbaa !3465
  %18 = icmp eq i8* %17, null, !dbg !3466
  br i1 %18, label %19, label %28, !dbg !3467

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3468
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3469
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3448, metadata !558), !dbg !3470
  %22 = icmp eq i64 %21, -1, !dbg !3471
  br i1 %22, label %30, label %23, !dbg !3473

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3474
  %25 = load i32, i32* %24, align 8, !dbg !3475, !tbaa !2953
  %26 = and i32 %25, -17, !dbg !3475
  store i32 %26, i32* %24, align 8, !dbg !3475, !tbaa !2953
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3476
  store i64 %21, i64* %27, align 8, !dbg !3477, !tbaa !3478
  br label %30, !dbg !3479

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3480
  br label %30, !dbg !3481

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3482
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

!llvm.dbg.cu = !{!480, !2, !11, !20, !28, !37, !504, !124, !512, !529, !531, !533, !536, !538, !133, !540, !542, !544}
!llvm.ident = !{!546, !546, !546, !546, !546, !546, !546, !546, !546, !546, !546, !546, !546, !546, !546, !546, !546, !546}
!llvm.module.flags = !{!547, !548, !549, !550, !551}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10)
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !16, line: 36, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13)
!12 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!13 = !{!9, !14}
!14 = !DIGlobalVariableExpression(var: !15)
!15 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !16, line: 46, type: !17, isLocal: true, isDefinition: true)
!16 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!18 = !DIGlobalVariableExpression(var: !19)
!19 = distinct !DIGlobalVariable(name: "exit_failure", scope: !20, file: !23, line: 24, type: !24, isLocal: false, isDefinition: true)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !22)
!21 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!22 = !{!18}
!23 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIGlobalVariableExpression(var: !27)
!27 = distinct !DIGlobalVariable(name: "program_name", scope: !28, file: !34, line: 33, type: !6, isLocal: false, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !33)
!29 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!33 = !{!26}
!34 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !37, file: !82, line: 77, type: !118, isLocal: false, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !74, globals: !79)
!38 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !{!40, !54, !59}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !41, line: 32, size: 32, elements: !42)
!41 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!43 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!44 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!45 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!46 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!47 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!48 = !DIEnumerator(name: "c_quoting_style", value: 5)
!49 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!50 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!51 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!52 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!53 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !41, line: 242, size: 32, elements: !55)
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!57 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!58 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 46, size: 32, elements: !61)
!60 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!62 = !DIEnumerator(name: "_ISupper", value: 256)
!63 = !DIEnumerator(name: "_ISlower", value: 512)
!64 = !DIEnumerator(name: "_ISalpha", value: 1024)
!65 = !DIEnumerator(name: "_ISdigit", value: 2048)
!66 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!67 = !DIEnumerator(name: "_ISspace", value: 8192)
!68 = !DIEnumerator(name: "_ISprint", value: 16384)
!69 = !DIEnumerator(name: "_ISgraph", value: 32768)
!70 = !DIEnumerator(name: "_ISblank", value: 1)
!71 = !DIEnumerator(name: "_IScntrl", value: 2)
!72 = !DIEnumerator(name: "_ISpunct", value: 4)
!73 = !DIEnumerator(name: "_ISalnum", value: 8)
!74 = !{!25, !75, !76, !32}
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 62, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !{!35, !80, !87, !100, !102, !107, !114, !116}
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !37, file: !82, line: 93, type: !83, isLocal: false, isDefinition: true)
!82 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 320, elements: !85)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!85 = !{!86}
!86 = !DISubrange(count: 10)
!87 = !DIGlobalVariableExpression(var: !88)
!88 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !37, file: !82, line: 1043, type: !89, isLocal: false, isDefinition: true)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !82, line: 57, size: 448, elements: !90)
!90 = !{!91, !92, !93, !98, !99}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !89, file: !82, line: 60, baseType: !40, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !82, line: 63, baseType: !25, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !89, file: !82, line: 67, baseType: !94, size: 256, offset: 64)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !96)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !{!97}
!97 = !DISubrange(count: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !89, file: !82, line: 70, baseType: !6, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !89, file: !82, line: 73, baseType: !6, size: 64, offset: 384)
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !37, file: !82, line: 108, type: !89, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "slot0", scope: !37, file: !82, line: 834, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 256)
!107 = !DIGlobalVariableExpression(var: !108)
!108 = distinct !DIGlobalVariable(name: "slotvec", scope: !37, file: !82, line: 837, type: !109, isLocal: true, isDefinition: true)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !82, line: 826, size: 128, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !110, file: !82, line: 828, baseType: !76, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !82, line: 829, baseType: !32, size: 64, offset: 64)
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "nslots", scope: !37, file: !82, line: 835, type: !25, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117)
!117 = distinct !DIGlobalVariable(name: "slotvec0", scope: !37, file: !82, line: 836, type: !110, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 704, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!120 = !{!121}
!121 = !DISubrange(count: 11)
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !124, file: !127, line: 26, type: !128, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !126)
!125 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!122}
!127 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 47)
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !133, file: !478, line: 120, type: !479, isLocal: true, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !135, retainedTypes: !474, globals: !477)
!134 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!136}
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !137, line: 41, size: 32, elements: !138)
!137 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!139 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!140 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!141 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!142 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!143 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!144 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!145 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!146 = !DIEnumerator(name: "DAY_1", value: 131079)
!147 = !DIEnumerator(name: "DAY_2", value: 131080)
!148 = !DIEnumerator(name: "DAY_3", value: 131081)
!149 = !DIEnumerator(name: "DAY_4", value: 131082)
!150 = !DIEnumerator(name: "DAY_5", value: 131083)
!151 = !DIEnumerator(name: "DAY_6", value: 131084)
!152 = !DIEnumerator(name: "DAY_7", value: 131085)
!153 = !DIEnumerator(name: "ABMON_1", value: 131086)
!154 = !DIEnumerator(name: "ABMON_2", value: 131087)
!155 = !DIEnumerator(name: "ABMON_3", value: 131088)
!156 = !DIEnumerator(name: "ABMON_4", value: 131089)
!157 = !DIEnumerator(name: "ABMON_5", value: 131090)
!158 = !DIEnumerator(name: "ABMON_6", value: 131091)
!159 = !DIEnumerator(name: "ABMON_7", value: 131092)
!160 = !DIEnumerator(name: "ABMON_8", value: 131093)
!161 = !DIEnumerator(name: "ABMON_9", value: 131094)
!162 = !DIEnumerator(name: "ABMON_10", value: 131095)
!163 = !DIEnumerator(name: "ABMON_11", value: 131096)
!164 = !DIEnumerator(name: "ABMON_12", value: 131097)
!165 = !DIEnumerator(name: "MON_1", value: 131098)
!166 = !DIEnumerator(name: "MON_2", value: 131099)
!167 = !DIEnumerator(name: "MON_3", value: 131100)
!168 = !DIEnumerator(name: "MON_4", value: 131101)
!169 = !DIEnumerator(name: "MON_5", value: 131102)
!170 = !DIEnumerator(name: "MON_6", value: 131103)
!171 = !DIEnumerator(name: "MON_7", value: 131104)
!172 = !DIEnumerator(name: "MON_8", value: 131105)
!173 = !DIEnumerator(name: "MON_9", value: 131106)
!174 = !DIEnumerator(name: "MON_10", value: 131107)
!175 = !DIEnumerator(name: "MON_11", value: 131108)
!176 = !DIEnumerator(name: "MON_12", value: 131109)
!177 = !DIEnumerator(name: "AM_STR", value: 131110)
!178 = !DIEnumerator(name: "PM_STR", value: 131111)
!179 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!180 = !DIEnumerator(name: "D_FMT", value: 131113)
!181 = !DIEnumerator(name: "T_FMT", value: 131114)
!182 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!183 = !DIEnumerator(name: "ERA", value: 131116)
!184 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!185 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!186 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!187 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!188 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!189 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!190 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!191 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!192 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!193 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!194 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!195 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!196 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!197 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!198 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!199 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!200 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!201 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!202 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!203 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!204 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!205 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!206 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!207 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!208 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!209 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!210 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!211 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!212 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!213 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!214 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!215 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!216 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!217 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!218 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!219 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!220 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!221 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!222 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!223 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!224 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!225 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!226 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!227 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!228 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!229 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!230 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!231 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!232 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!233 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!234 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!235 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!236 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!237 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!238 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!239 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!240 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!241 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!242 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!243 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!244 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!245 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!246 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!247 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!248 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!249 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!250 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!251 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!252 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!253 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!254 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!255 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!256 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!257 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!258 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!259 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!260 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!261 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!262 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!263 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!264 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!265 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!266 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!267 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!268 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!269 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!270 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!271 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!272 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!273 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!274 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!275 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!276 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!277 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!278 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!279 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!280 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!281 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!282 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!283 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!284 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!285 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!286 = !DIEnumerator(name: "CODESET", value: 14)
!287 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!288 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!289 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!290 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!291 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!292 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!293 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!294 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!295 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!296 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!297 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!298 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!299 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!300 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!301 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!302 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!303 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!304 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!305 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!306 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!307 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!308 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!309 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!310 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!311 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!312 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!313 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!314 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!315 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!316 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!317 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!318 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!319 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!320 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!321 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!322 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!323 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!324 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!325 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!326 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!327 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!328 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!329 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!330 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!331 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!332 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!333 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!334 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!335 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!336 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!337 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!338 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!339 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!340 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!341 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!342 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!343 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!344 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!345 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!346 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!347 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!348 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!349 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!350 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!351 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!352 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!353 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!354 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!355 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!356 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!357 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!358 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!359 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!360 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!361 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!362 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!363 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!364 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!365 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!366 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!367 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!368 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!369 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!370 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!371 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!372 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!373 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!374 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!375 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!376 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!377 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!378 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!379 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!380 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!381 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!382 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!383 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!384 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!385 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!386 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!387 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!388 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!389 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!390 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!391 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!392 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!393 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!394 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!395 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!396 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!397 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!398 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!399 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!400 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!401 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!402 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!403 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!404 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!405 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!406 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!407 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!408 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!409 = !DIEnumerator(name: "THOUSEP", value: 65537)
!410 = !DIEnumerator(name: "__GROUPING", value: 65538)
!411 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!412 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!413 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!414 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!415 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!416 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!417 = !DIEnumerator(name: "__YESSTR", value: 327682)
!418 = !DIEnumerator(name: "__NOSTR", value: 327683)
!419 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!420 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!421 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!422 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!423 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!424 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!425 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!426 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!427 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!428 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!429 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!430 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!431 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!432 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!433 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!434 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!435 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!436 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!437 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!438 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!439 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!440 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!441 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!442 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!443 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!444 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!445 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!446 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!447 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!448 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!449 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!450 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!451 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!452 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!453 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!454 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!455 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!456 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!457 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!458 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!459 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!460 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!461 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!462 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!463 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!464 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!465 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!466 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!467 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!468 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!469 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!470 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!471 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!472 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!473 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!474 = !{!31, !32, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!477 = !{!131}
!478 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!479 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!480 = distinct !DICompileUnit(language: DW_LANG_C99, file: !481, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !482, globals: !483)
!481 = !DIFile(filename: "src/false.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!482 = !{!32, !31}
!483 = !{!484}
!484 = !DIGlobalVariableExpression(var: !485)
!485 = distinct !DIGlobalVariable(name: "infomap", scope: !486, file: !487, line: 632, type: !501, isLocal: true, isDefinition: true)
!486 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !487, file: !487, line: 630, type: !488, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !490)
!487 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!488 = !DISubroutineType(types: !489)
!489 = !{null, !6}
!490 = !{!491, !492, !493, !500}
!491 = !DILocalVariable(name: "program", arg: 1, scope: !486, file: !487, line: 630, type: !6)
!492 = !DILocalVariable(name: "node", scope: !486, file: !487, line: 642, type: !6)
!493 = !DILocalVariable(name: "map_prog", scope: !486, file: !487, line: 643, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !486, file: !487, line: 632, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !496, file: !487, line: 632, baseType: !6, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !487, line: 632, baseType: !6, size: 64, offset: 64)
!500 = !DILocalVariable(name: "lc_messages", scope: !486, file: !487, line: 655, type: !6)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 896, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 7)
!504 = distinct !DICompileUnit(language: DW_LANG_C99, file: !505, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !506, retainedTypes: !511)
!505 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!506 = !{!507}
!507 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !508, line: 41, size: 32, elements: !509)
!508 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!509 = !{!510}
!510 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!511 = !{!31}
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !514, retainedTypes: !528)
!513 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!514 = !{!515}
!515 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !517, file: !516, line: 192, size: 32, elements: !526)
!516 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!517 = distinct !DISubprogram(name: "x2nrealloc", scope: !516, file: !516, line: 180, type: !518, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !521)
!518 = !DISubroutineType(types: !519)
!519 = !{!31, !31, !520, !76}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!521 = !{!522, !523, !524, !525}
!522 = !DILocalVariable(name: "p", arg: 1, scope: !517, file: !516, line: 180, type: !31)
!523 = !DILocalVariable(name: "pn", arg: 2, scope: !517, file: !516, line: 180, type: !520)
!524 = !DILocalVariable(name: "s", arg: 3, scope: !517, file: !516, line: 180, type: !76)
!525 = !DILocalVariable(name: "n", scope: !517, file: !516, line: 182, type: !76)
!526 = !{!527}
!527 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!528 = !{!76, !32, !31}
!529 = distinct !DICompileUnit(language: DW_LANG_C99, file: !530, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!530 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!531 = distinct !DICompileUnit(language: DW_LANG_C99, file: !532, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !511)
!532 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !535)
!534 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = !{!76}
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!537 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!539 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!541 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !543, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !511)
!543 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !511)
!545 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!547 = !{i32 2, !"Dwarf Version", i32 4}
!548 = !{i32 2, !"Debug Info Version", i32 3}
!549 = !{i32 1, !"wchar_size", i32 4}
!550 = !{i32 7, !"PIC Level", i32 2}
!551 = !{i32 7, !"PIE Level", i32 2}
!552 = distinct !DISubprogram(name: "usage", scope: !553, file: !553, line: 36, type: !554, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !480, variables: !556)
!553 = !DIFile(filename: "src/true.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !DISubroutineType(types: !555)
!555 = !{null, !25}
!556 = !{!557}
!557 = !DILocalVariable(name: "status", arg: 1, scope: !552, file: !553, line: 36, type: !25)
!558 = !DIExpression()
!559 = !DILocation(line: 36, column: 12, scope: !552)
!560 = !DILocation(line: 38, column: 3, scope: !552)
!561 = !{!562, !562, i64 0}
!562 = !{!"any pointer", !563, i64 0}
!563 = !{!"omnipotent char", !564, i64 0}
!564 = !{!"Simple C/C++ TBAA"}
!565 = !DILocation(line: 43, column: 3, scope: !552)
!566 = !DILocation(line: 47, column: 3, scope: !552)
!567 = !DILocation(line: 48, column: 3, scope: !552)
!568 = !DILocation(line: 49, column: 3, scope: !552)
!569 = !DILocation(line: 642, column: 15, scope: !486, inlinedAt: !570)
!570 = distinct !DILocation(line: 50, column: 3, scope: !552)
!571 = !DILocation(line: 651, column: 3, scope: !486, inlinedAt: !570)
!572 = !DILocation(line: 655, column: 29, scope: !486, inlinedAt: !570)
!573 = !DILocation(line: 655, column: 15, scope: !486, inlinedAt: !570)
!574 = !DILocation(line: 656, column: 7, scope: !575, inlinedAt: !570)
!575 = distinct !DILexicalBlock(scope: !486, file: !487, line: 656, column: 7)
!576 = !DILocation(line: 656, column: 19, scope: !575, inlinedAt: !570)
!577 = !DILocation(line: 656, column: 22, scope: !575, inlinedAt: !570)
!578 = !DILocation(line: 656, column: 7, scope: !486, inlinedAt: !570)
!579 = !DILocation(line: 662, column: 7, scope: !580, inlinedAt: !570)
!580 = distinct !DILexicalBlock(scope: !575, file: !487, line: 657, column: 5)
!581 = !DILocation(line: 664, column: 5, scope: !580, inlinedAt: !570)
!582 = !DILocation(line: 665, column: 3, scope: !486, inlinedAt: !570)
!583 = !DILocation(line: 667, column: 3, scope: !486, inlinedAt: !570)
!584 = !DILocation(line: 51, column: 3, scope: !552)
!585 = distinct !DISubprogram(name: "main", scope: !553, file: !553, line: 55, type: !586, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !589)
!586 = !DISubroutineType(types: !587)
!587 = !{!25, !25, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!589 = !{!590, !591}
!590 = !DILocalVariable(name: "argc", arg: 1, scope: !585, file: !553, line: 55, type: !25)
!591 = !DILocalVariable(name: "argv", arg: 2, scope: !585, file: !553, line: 55, type: !588)
!592 = !DILocation(line: 55, column: 11, scope: !585)
!593 = !DILocation(line: 55, column: 24, scope: !585)
!594 = !DILocation(line: 59, column: 12, scope: !595)
!595 = distinct !DILexicalBlock(scope: !585, file: !553, line: 59, column: 7)
!596 = !DILocation(line: 59, column: 7, scope: !585)
!597 = !DILocation(line: 62, column: 25, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !553, line: 60, column: 5)
!599 = !DILocation(line: 62, column: 7, scope: !598)
!600 = !DILocation(line: 63, column: 7, scope: !598)
!601 = !DILocation(line: 64, column: 7, scope: !598)
!602 = !DILocation(line: 65, column: 7, scope: !598)
!603 = !DILocation(line: 69, column: 7, scope: !598)
!604 = !DILocation(line: 71, column: 11, scope: !605)
!605 = distinct !DILexicalBlock(scope: !598, file: !553, line: 71, column: 11)
!606 = !DILocation(line: 71, column: 11, scope: !598)
!607 = !DILocation(line: 72, column: 9, scope: !605)
!608 = !DILocation(line: 74, column: 11, scope: !609)
!609 = distinct !DILexicalBlock(scope: !598, file: !553, line: 74, column: 11)
!610 = !DILocation(line: 74, column: 11, scope: !598)
!611 = !DILocation(line: 75, column: 22, scope: !609)
!612 = !DILocation(line: 75, column: 58, scope: !609)
!613 = !DILocation(line: 75, column: 9, scope: !609)
!614 = !DILocation(line: 79, column: 3, scope: !585)
!615 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !488, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !616)
!616 = !{!617}
!617 = !DILocalVariable(name: "file", arg: 1, scope: !615, file: !16, line: 41, type: !6)
!618 = !DILocation(line: 41, column: 41, scope: !615)
!619 = !DILocation(line: 43, column: 13, scope: !615)
!620 = !DILocation(line: 44, column: 1, scope: !615)
!621 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !622, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !17}
!624 = !{!625}
!625 = !DILocalVariable(name: "ignore", arg: 1, scope: !621, file: !16, line: 78, type: !17)
!626 = !DILocation(line: 78, column: 37, scope: !621)
!627 = !DILocation(line: 80, column: 16, scope: !621)
!628 = !{!629, !629, i64 0}
!629 = !{!"_Bool", !563, i64 0}
!630 = !DILocation(line: 81, column: 1, scope: !621)
!631 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !632, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{null}
!634 = !{!635}
!635 = !DILocalVariable(name: "write_error", scope: !636, file: !16, line: 112, type: !6)
!636 = distinct !DILexicalBlock(scope: !637, file: !16, line: 111, column: 5)
!637 = distinct !DILexicalBlock(scope: !631, file: !16, line: 109, column: 7)
!638 = !DILocation(line: 109, column: 21, scope: !637)
!639 = !DILocation(line: 109, column: 7, scope: !637)
!640 = !DILocation(line: 109, column: 29, scope: !637)
!641 = !DILocation(line: 110, column: 7, scope: !637)
!642 = !DILocation(line: 110, column: 12, scope: !637)
!643 = !{i8 0, i8 2}
!644 = !DILocation(line: 114, column: 19, scope: !645)
!645 = distinct !DILexicalBlock(scope: !636, file: !16, line: 113, column: 11)
!646 = !DILocation(line: 110, column: 25, scope: !637)
!647 = !DILocation(line: 110, column: 28, scope: !637)
!648 = !{!649, !649, i64 0}
!649 = !{!"int", !563, i64 0}
!650 = !DILocation(line: 110, column: 34, scope: !637)
!651 = !DILocation(line: 109, column: 7, scope: !631)
!652 = !DILocation(line: 112, column: 33, scope: !636)
!653 = !DILocation(line: 112, column: 19, scope: !636)
!654 = !DILocation(line: 113, column: 11, scope: !645)
!655 = !DILocation(line: 113, column: 11, scope: !636)
!656 = !DILocation(line: 114, column: 36, scope: !645)
!657 = !DILocation(line: 114, column: 9, scope: !645)
!658 = !DILocation(line: 117, column: 9, scope: !645)
!659 = !DILocation(line: 119, column: 14, scope: !636)
!660 = !DILocation(line: 119, column: 7, scope: !636)
!661 = !DILocation(line: 122, column: 22, scope: !662)
!662 = distinct !DILexicalBlock(scope: !631, file: !16, line: 122, column: 8)
!663 = !DILocation(line: 122, column: 8, scope: !662)
!664 = !DILocation(line: 122, column: 30, scope: !662)
!665 = !DILocation(line: 122, column: 8, scope: !631)
!666 = !DILocation(line: 123, column: 13, scope: !662)
!667 = !DILocation(line: 123, column: 6, scope: !662)
!668 = !DILocation(line: 124, column: 1, scope: !631)
!669 = distinct !DISubprogram(name: "set_program_name", scope: !34, file: !34, line: 39, type: !488, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !670)
!670 = !{!671, !672, !673}
!671 = !DILocalVariable(name: "argv0", arg: 1, scope: !669, file: !34, line: 39, type: !6)
!672 = !DILocalVariable(name: "slash", scope: !669, file: !34, line: 46, type: !6)
!673 = !DILocalVariable(name: "base", scope: !669, file: !34, line: 47, type: !6)
!674 = !DILocation(line: 39, column: 31, scope: !669)
!675 = !DILocation(line: 51, column: 13, scope: !676)
!676 = distinct !DILexicalBlock(scope: !669, file: !34, line: 51, column: 7)
!677 = !DILocation(line: 51, column: 7, scope: !669)
!678 = !DILocation(line: 55, column: 14, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !34, line: 52, column: 5)
!680 = !DILocation(line: 54, column: 7, scope: !679)
!681 = !DILocation(line: 56, column: 7, scope: !679)
!682 = !DILocation(line: 59, column: 11, scope: !669)
!683 = !DILocation(line: 46, column: 15, scope: !669)
!684 = !DILocation(line: 60, column: 17, scope: !669)
!685 = !DILocation(line: 60, column: 33, scope: !669)
!686 = !DILocation(line: 60, column: 11, scope: !669)
!687 = !DILocation(line: 47, column: 15, scope: !669)
!688 = !DILocation(line: 61, column: 12, scope: !689)
!689 = distinct !DILexicalBlock(scope: !669, file: !34, line: 61, column: 7)
!690 = !DILocation(line: 61, column: 20, scope: !689)
!691 = !DILocation(line: 61, column: 25, scope: !689)
!692 = !DILocation(line: 61, column: 42, scope: !689)
!693 = !DILocation(line: 61, column: 28, scope: !689)
!694 = !DILocation(line: 61, column: 61, scope: !689)
!695 = !DILocation(line: 61, column: 7, scope: !669)
!696 = !DILocation(line: 64, column: 11, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !34, line: 64, column: 11)
!698 = distinct !DILexicalBlock(scope: !689, file: !34, line: 62, column: 5)
!699 = !DILocation(line: 64, column: 36, scope: !697)
!700 = !DILocation(line: 64, column: 11, scope: !698)
!701 = !DILocation(line: 66, column: 24, scope: !702)
!702 = distinct !DILexicalBlock(scope: !697, file: !34, line: 65, column: 9)
!703 = !DILocation(line: 70, column: 41, scope: !702)
!704 = !DILocation(line: 72, column: 9, scope: !702)
!705 = !DILocation(line: 84, column: 16, scope: !669)
!706 = !DILocation(line: 90, column: 27, scope: !669)
!707 = !DILocation(line: 92, column: 1, scope: !669)
!708 = distinct !DISubprogram(name: "clone_quoting_options", scope: !82, file: !82, line: 114, type: !709, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !712)
!709 = !DISubroutineType(types: !710)
!710 = !{!711, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!712 = !{!713, !714, !715}
!713 = !DILocalVariable(name: "o", arg: 1, scope: !708, file: !82, line: 114, type: !711)
!714 = !DILocalVariable(name: "e", scope: !708, file: !82, line: 116, type: !25)
!715 = !DILocalVariable(name: "p", scope: !708, file: !82, line: 117, type: !711)
!716 = !DILocation(line: 114, column: 48, scope: !708)
!717 = !DILocation(line: 116, column: 11, scope: !708)
!718 = !DILocation(line: 116, column: 7, scope: !708)
!719 = !DILocation(line: 117, column: 40, scope: !708)
!720 = !DILocation(line: 117, column: 31, scope: !708)
!721 = !DILocation(line: 117, column: 27, scope: !708)
!722 = !DILocation(line: 119, column: 9, scope: !708)
!723 = !DILocation(line: 120, column: 3, scope: !708)
!724 = distinct !DISubprogram(name: "get_quoting_style", scope: !82, file: !82, line: 125, type: !725, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !729)
!725 = !DISubroutineType(types: !726)
!726 = !{!40, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!729 = !{!730}
!730 = !DILocalVariable(name: "o", arg: 1, scope: !724, file: !82, line: 125, type: !727)
!731 = !DILocation(line: 125, column: 50, scope: !724)
!732 = !DILocation(line: 127, column: 11, scope: !724)
!733 = !DILocation(line: 127, column: 46, scope: !724)
!734 = !{!735, !563, i64 0}
!735 = !{!"quoting_options", !563, i64 0, !649, i64 4, !563, i64 8, !562, i64 40, !562, i64 48}
!736 = !DILocation(line: 127, column: 3, scope: !724)
!737 = distinct !DISubprogram(name: "set_quoting_style", scope: !82, file: !82, line: 133, type: !738, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !711, !40}
!740 = !{!741, !742}
!741 = !DILocalVariable(name: "o", arg: 1, scope: !737, file: !82, line: 133, type: !711)
!742 = !DILocalVariable(name: "s", arg: 2, scope: !737, file: !82, line: 133, type: !40)
!743 = !DILocation(line: 133, column: 44, scope: !737)
!744 = !DILocation(line: 133, column: 66, scope: !737)
!745 = !DILocation(line: 135, column: 4, scope: !737)
!746 = !DILocation(line: 135, column: 39, scope: !737)
!747 = !DILocation(line: 135, column: 45, scope: !737)
!748 = !DILocation(line: 136, column: 1, scope: !737)
!749 = distinct !DISubprogram(name: "set_char_quoting", scope: !82, file: !82, line: 144, type: !750, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{!25, !711, !8, !25}
!752 = !{!753, !754, !755, !756, !757, !759, !760}
!753 = !DILocalVariable(name: "o", arg: 1, scope: !749, file: !82, line: 144, type: !711)
!754 = !DILocalVariable(name: "c", arg: 2, scope: !749, file: !82, line: 144, type: !8)
!755 = !DILocalVariable(name: "i", arg: 3, scope: !749, file: !82, line: 144, type: !25)
!756 = !DILocalVariable(name: "uc", scope: !749, file: !82, line: 146, type: !476)
!757 = !DILocalVariable(name: "p", scope: !749, file: !82, line: 147, type: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!759 = !DILocalVariable(name: "shift", scope: !749, file: !82, line: 149, type: !25)
!760 = !DILocalVariable(name: "r", scope: !749, file: !82, line: 150, type: !25)
!761 = !DILocation(line: 144, column: 43, scope: !749)
!762 = !DILocation(line: 144, column: 51, scope: !749)
!763 = !DILocation(line: 144, column: 58, scope: !749)
!764 = !DILocation(line: 146, column: 17, scope: !749)
!765 = !DILocation(line: 148, column: 6, scope: !749)
!766 = !DILocation(line: 148, column: 62, scope: !749)
!767 = !DILocation(line: 148, column: 57, scope: !749)
!768 = !DILocation(line: 147, column: 17, scope: !749)
!769 = !DILocation(line: 149, column: 18, scope: !749)
!770 = !DILocation(line: 149, column: 15, scope: !749)
!771 = !DILocation(line: 149, column: 7, scope: !749)
!772 = !DILocation(line: 150, column: 12, scope: !749)
!773 = !DILocation(line: 150, column: 15, scope: !749)
!774 = !DILocation(line: 150, column: 25, scope: !749)
!775 = !DILocation(line: 150, column: 7, scope: !749)
!776 = !DILocation(line: 151, column: 13, scope: !749)
!777 = !DILocation(line: 151, column: 18, scope: !749)
!778 = !DILocation(line: 151, column: 23, scope: !749)
!779 = !DILocation(line: 151, column: 6, scope: !749)
!780 = !DILocation(line: 152, column: 3, scope: !749)
!781 = distinct !DISubprogram(name: "set_quoting_flags", scope: !82, file: !82, line: 160, type: !782, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!25, !711, !25}
!784 = !{!785, !786, !787}
!785 = !DILocalVariable(name: "o", arg: 1, scope: !781, file: !82, line: 160, type: !711)
!786 = !DILocalVariable(name: "i", arg: 2, scope: !781, file: !82, line: 160, type: !25)
!787 = !DILocalVariable(name: "r", scope: !781, file: !82, line: 162, type: !25)
!788 = !DILocation(line: 160, column: 44, scope: !781)
!789 = !DILocation(line: 160, column: 51, scope: !781)
!790 = !DILocation(line: 163, column: 8, scope: !791)
!791 = distinct !DILexicalBlock(scope: !781, file: !82, line: 163, column: 7)
!792 = !DILocation(line: 163, column: 7, scope: !781)
!793 = !DILocation(line: 165, column: 10, scope: !781)
!794 = !{!735, !649, i64 4}
!795 = !DILocation(line: 162, column: 7, scope: !781)
!796 = !DILocation(line: 166, column: 12, scope: !781)
!797 = !DILocation(line: 167, column: 3, scope: !781)
!798 = distinct !DISubprogram(name: "set_custom_quoting", scope: !82, file: !82, line: 171, type: !799, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !711, !6, !6}
!801 = !{!802, !803, !804}
!802 = !DILocalVariable(name: "o", arg: 1, scope: !798, file: !82, line: 171, type: !711)
!803 = !DILocalVariable(name: "left_quote", arg: 2, scope: !798, file: !82, line: 172, type: !6)
!804 = !DILocalVariable(name: "right_quote", arg: 3, scope: !798, file: !82, line: 172, type: !6)
!805 = !DILocation(line: 171, column: 45, scope: !798)
!806 = !DILocation(line: 172, column: 33, scope: !798)
!807 = !DILocation(line: 172, column: 57, scope: !798)
!808 = !DILocation(line: 174, column: 8, scope: !809)
!809 = distinct !DILexicalBlock(scope: !798, file: !82, line: 174, column: 7)
!810 = !DILocation(line: 174, column: 7, scope: !798)
!811 = !DILocation(line: 176, column: 6, scope: !798)
!812 = !DILocation(line: 176, column: 12, scope: !798)
!813 = !DILocation(line: 177, column: 8, scope: !814)
!814 = distinct !DILexicalBlock(scope: !798, file: !82, line: 177, column: 7)
!815 = !DILocation(line: 177, column: 23, scope: !814)
!816 = !DILocation(line: 177, column: 19, scope: !814)
!817 = !DILocation(line: 178, column: 5, scope: !814)
!818 = !DILocation(line: 179, column: 6, scope: !798)
!819 = !DILocation(line: 179, column: 17, scope: !798)
!820 = !{!735, !562, i64 40}
!821 = !DILocation(line: 180, column: 6, scope: !798)
!822 = !DILocation(line: 180, column: 18, scope: !798)
!823 = !{!735, !562, i64 48}
!824 = !DILocation(line: 181, column: 1, scope: !798)
!825 = distinct !DISubprogram(name: "quotearg_buffer", scope: !82, file: !82, line: 776, type: !826, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!76, !32, !76, !6, !76, !727}
!828 = !{!829, !830, !831, !832, !833, !834, !835, !836}
!829 = !DILocalVariable(name: "buffer", arg: 1, scope: !825, file: !82, line: 776, type: !32)
!830 = !DILocalVariable(name: "buffersize", arg: 2, scope: !825, file: !82, line: 776, type: !76)
!831 = !DILocalVariable(name: "arg", arg: 3, scope: !825, file: !82, line: 777, type: !6)
!832 = !DILocalVariable(name: "argsize", arg: 4, scope: !825, file: !82, line: 777, type: !76)
!833 = !DILocalVariable(name: "o", arg: 5, scope: !825, file: !82, line: 778, type: !727)
!834 = !DILocalVariable(name: "p", scope: !825, file: !82, line: 780, type: !727)
!835 = !DILocalVariable(name: "e", scope: !825, file: !82, line: 781, type: !25)
!836 = !DILocalVariable(name: "r", scope: !825, file: !82, line: 782, type: !76)
!837 = !DILocation(line: 776, column: 24, scope: !825)
!838 = !DILocation(line: 776, column: 39, scope: !825)
!839 = !DILocation(line: 777, column: 30, scope: !825)
!840 = !DILocation(line: 777, column: 42, scope: !825)
!841 = !DILocation(line: 778, column: 48, scope: !825)
!842 = !DILocation(line: 780, column: 37, scope: !825)
!843 = !DILocation(line: 780, column: 33, scope: !825)
!844 = !DILocation(line: 781, column: 11, scope: !825)
!845 = !DILocation(line: 781, column: 7, scope: !825)
!846 = !DILocation(line: 783, column: 43, scope: !825)
!847 = !DILocation(line: 783, column: 53, scope: !825)
!848 = !DILocation(line: 783, column: 60, scope: !825)
!849 = !DILocation(line: 784, column: 43, scope: !825)
!850 = !DILocation(line: 784, column: 58, scope: !825)
!851 = !DILocation(line: 782, column: 14, scope: !825)
!852 = !DILocation(line: 782, column: 10, scope: !825)
!853 = !DILocation(line: 785, column: 9, scope: !825)
!854 = !DILocation(line: 786, column: 3, scope: !825)
!855 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !82, file: !82, line: 248, type: !856, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !860)
!856 = !DISubroutineType(types: !857)
!857 = !{!76, !32, !76, !6, !76, !40, !25, !858, !6, !6}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !885, !886, !887, !888, !889, !892, !893, !911, !914, !915, !922}
!861 = !DILocalVariable(name: "buffer", arg: 1, scope: !855, file: !82, line: 248, type: !32)
!862 = !DILocalVariable(name: "buffersize", arg: 2, scope: !855, file: !82, line: 248, type: !76)
!863 = !DILocalVariable(name: "arg", arg: 3, scope: !855, file: !82, line: 249, type: !6)
!864 = !DILocalVariable(name: "argsize", arg: 4, scope: !855, file: !82, line: 249, type: !76)
!865 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !855, file: !82, line: 250, type: !40)
!866 = !DILocalVariable(name: "flags", arg: 6, scope: !855, file: !82, line: 250, type: !25)
!867 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !855, file: !82, line: 251, type: !858)
!868 = !DILocalVariable(name: "left_quote", arg: 8, scope: !855, file: !82, line: 252, type: !6)
!869 = !DILocalVariable(name: "right_quote", arg: 9, scope: !855, file: !82, line: 253, type: !6)
!870 = !DILocalVariable(name: "i", scope: !855, file: !82, line: 255, type: !76)
!871 = !DILocalVariable(name: "len", scope: !855, file: !82, line: 256, type: !76)
!872 = !DILocalVariable(name: "orig_buffersize", scope: !855, file: !82, line: 257, type: !76)
!873 = !DILocalVariable(name: "quote_string", scope: !855, file: !82, line: 258, type: !6)
!874 = !DILocalVariable(name: "quote_string_len", scope: !855, file: !82, line: 259, type: !76)
!875 = !DILocalVariable(name: "backslash_escapes", scope: !855, file: !82, line: 260, type: !17)
!876 = !DILocalVariable(name: "unibyte_locale", scope: !855, file: !82, line: 261, type: !17)
!877 = !DILocalVariable(name: "elide_outer_quotes", scope: !855, file: !82, line: 262, type: !17)
!878 = !DILocalVariable(name: "pending_shell_escape_end", scope: !855, file: !82, line: 263, type: !17)
!879 = !DILocalVariable(name: "encountered_single_quote", scope: !855, file: !82, line: 264, type: !17)
!880 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !855, file: !82, line: 265, type: !17)
!881 = !DILocalVariable(name: "c", scope: !882, file: !82, line: 394, type: !476)
!882 = distinct !DILexicalBlock(scope: !883, file: !82, line: 393, column: 5)
!883 = distinct !DILexicalBlock(scope: !884, file: !82, line: 392, column: 3)
!884 = distinct !DILexicalBlock(scope: !855, file: !82, line: 392, column: 3)
!885 = !DILocalVariable(name: "esc", scope: !882, file: !82, line: 395, type: !476)
!886 = !DILocalVariable(name: "is_right_quote", scope: !882, file: !82, line: 396, type: !17)
!887 = !DILocalVariable(name: "escaping", scope: !882, file: !82, line: 397, type: !17)
!888 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !882, file: !82, line: 398, type: !17)
!889 = !DILocalVariable(name: "m", scope: !890, file: !82, line: 602, type: !76)
!890 = distinct !DILexicalBlock(scope: !891, file: !82, line: 600, column: 11)
!891 = distinct !DILexicalBlock(scope: !882, file: !82, line: 418, column: 9)
!892 = !DILocalVariable(name: "printable", scope: !890, file: !82, line: 604, type: !17)
!893 = !DILocalVariable(name: "mbstate", scope: !894, file: !82, line: 613, type: !896)
!894 = distinct !DILexicalBlock(scope: !895, file: !82, line: 612, column: 15)
!895 = distinct !DILexicalBlock(scope: !890, file: !82, line: 606, column: 17)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !897, line: 6, baseType: !898)
!897 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !899, line: 21, baseType: !900)
!899 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !899, line: 13, size: 64, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !900, file: !899, line: 15, baseType: !25, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !900, file: !899, line: 20, baseType: !904, size: 32, offset: 32)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !900, file: !899, line: 16, size: 32, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !904, file: !899, line: 18, baseType: !95, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !904, file: !899, line: 19, baseType: !908, size: 32)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 4)
!911 = !DILocalVariable(name: "w", scope: !912, file: !82, line: 623, type: !913)
!912 = distinct !DILexicalBlock(scope: !894, file: !82, line: 622, column: 19)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 90, baseType: !25)
!914 = !DILocalVariable(name: "bytes", scope: !912, file: !82, line: 624, type: !76)
!915 = !DILocalVariable(name: "j", scope: !916, file: !82, line: 649, type: !76)
!916 = distinct !DILexicalBlock(scope: !917, file: !82, line: 648, column: 27)
!917 = distinct !DILexicalBlock(scope: !918, file: !82, line: 646, column: 29)
!918 = distinct !DILexicalBlock(scope: !919, file: !82, line: 641, column: 23)
!919 = distinct !DILexicalBlock(scope: !920, file: !82, line: 633, column: 30)
!920 = distinct !DILexicalBlock(scope: !921, file: !82, line: 628, column: 30)
!921 = distinct !DILexicalBlock(scope: !912, file: !82, line: 626, column: 25)
!922 = !DILocalVariable(name: "ilim", scope: !923, file: !82, line: 676, type: !76)
!923 = distinct !DILexicalBlock(scope: !924, file: !82, line: 673, column: 15)
!924 = distinct !DILexicalBlock(scope: !890, file: !82, line: 672, column: 17)
!925 = !DILocation(line: 248, column: 33, scope: !855)
!926 = !DILocation(line: 248, column: 48, scope: !855)
!927 = !DILocation(line: 249, column: 39, scope: !855)
!928 = !DILocation(line: 249, column: 51, scope: !855)
!929 = !DILocation(line: 250, column: 46, scope: !855)
!930 = !DILocation(line: 250, column: 65, scope: !855)
!931 = !DILocation(line: 251, column: 47, scope: !855)
!932 = !DILocation(line: 252, column: 39, scope: !855)
!933 = !DILocation(line: 253, column: 39, scope: !855)
!934 = !DILocation(line: 256, column: 10, scope: !855)
!935 = !DILocation(line: 257, column: 10, scope: !855)
!936 = !DILocation(line: 258, column: 15, scope: !855)
!937 = !DILocation(line: 259, column: 10, scope: !855)
!938 = !DILocation(line: 260, column: 8, scope: !855)
!939 = !DILocation(line: 261, column: 25, scope: !855)
!940 = !DILocation(line: 261, column: 36, scope: !855)
!941 = !DILocation(line: 262, column: 8, scope: !855)
!942 = !DILocation(line: 263, column: 8, scope: !855)
!943 = !DILocation(line: 264, column: 8, scope: !855)
!944 = !DILocation(line: 265, column: 8, scope: !855)
!945 = !DILocation(line: 265, column: 3, scope: !855)
!946 = !DILocation(line: 308, column: 3, scope: !855)
!947 = !DILocation(line: 315, column: 11, scope: !948)
!948 = distinct !DILexicalBlock(scope: !855, file: !82, line: 309, column: 5)
!949 = !DILocation(line: 315, column: 12, scope: !950)
!950 = distinct !DILexicalBlock(scope: !948, file: !82, line: 315, column: 11)
!951 = !DILocation(line: 316, column: 9, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !82, line: 316, column: 9)
!953 = distinct !DILexicalBlock(scope: !950, file: !82, line: 316, column: 9)
!954 = !DILocation(line: 316, column: 9, scope: !953)
!955 = !{!563, !563, i64 0}
!956 = !DILocation(line: 354, column: 26, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !82, line: 332, column: 11)
!958 = distinct !DILexicalBlock(scope: !959, file: !82, line: 331, column: 13)
!959 = distinct !DILexicalBlock(scope: !948, file: !82, line: 330, column: 7)
!960 = !DILocation(line: 355, column: 27, scope: !957)
!961 = !DILocation(line: 356, column: 11, scope: !957)
!962 = !DILocation(line: 357, column: 14, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !82, line: 357, column: 13)
!964 = !DILocation(line: 357, column: 13, scope: !959)
!965 = !DILocation(line: 358, column: 43, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !82, line: 358, column: 11)
!967 = distinct !DILexicalBlock(scope: !963, file: !82, line: 358, column: 11)
!968 = !DILocation(line: 358, column: 11, scope: !967)
!969 = !DILocation(line: 359, column: 13, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !82, line: 359, column: 13)
!971 = distinct !DILexicalBlock(scope: !966, file: !82, line: 359, column: 13)
!972 = !DILocation(line: 359, column: 13, scope: !971)
!973 = !DILocation(line: 358, column: 70, scope: !966)
!974 = distinct !{!974, !968, !975}
!975 = !DILocation(line: 359, column: 13, scope: !967)
!976 = !DILocation(line: 362, column: 28, scope: !959)
!977 = !DILocation(line: 364, column: 7, scope: !948)
!978 = !DILocation(line: 367, column: 7, scope: !948)
!979 = !DILocation(line: 370, column: 7, scope: !948)
!980 = !DILocation(line: 373, column: 12, scope: !981)
!981 = distinct !DILexicalBlock(scope: !948, file: !82, line: 373, column: 11)
!982 = !DILocation(line: 373, column: 11, scope: !948)
!983 = !DILocation(line: 378, column: 12, scope: !984)
!984 = distinct !DILexicalBlock(scope: !948, file: !82, line: 378, column: 11)
!985 = !DILocation(line: 378, column: 11, scope: !948)
!986 = !DILocation(line: 379, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !82, line: 379, column: 9)
!988 = distinct !DILexicalBlock(scope: !984, file: !82, line: 379, column: 9)
!989 = !DILocation(line: 379, column: 9, scope: !988)
!990 = !DILocation(line: 386, column: 7, scope: !948)
!991 = !DILocation(line: 389, column: 7, scope: !948)
!992 = !DILocation(line: 255, column: 10, scope: !855)
!993 = !DILocation(line: 392, column: 8, scope: !884)
!994 = !DILocation(line: 392, column: 27, scope: !883)
!995 = !DILocation(line: 392, column: 19, scope: !883)
!996 = !DILocation(line: 392, column: 60, scope: !883)
!997 = !DILocation(line: 392, column: 3, scope: !884)
!998 = !DILocation(line: 392, column: 41, scope: !883)
!999 = !DILocation(line: 392, column: 48, scope: !883)
!1000 = !DILocation(line: 396, column: 12, scope: !882)
!1001 = !DILocation(line: 397, column: 12, scope: !882)
!1002 = !DILocation(line: 398, column: 12, scope: !882)
!1003 = !DILocation(line: 401, column: 11, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !882, file: !82, line: 400, column: 11)
!1005 = !DILocation(line: 403, column: 17, scope: !1004)
!1006 = !DILocation(line: 404, column: 39, scope: !1004)
!1007 = !DILocation(line: 408, column: 32, scope: !1004)
!1008 = !DILocation(line: 404, column: 19, scope: !1004)
!1009 = !DILocation(line: 404, column: 15, scope: !1004)
!1010 = !DILocation(line: 409, column: 11, scope: !1004)
!1011 = !DILocation(line: 409, column: 26, scope: !1004)
!1012 = !DILocation(line: 409, column: 14, scope: !1004)
!1013 = !DILocation(line: 409, column: 63, scope: !1004)
!1014 = !DILocation(line: 400, column: 11, scope: !882)
!1015 = !DILocation(line: 416, column: 11, scope: !882)
!1016 = !DILocation(line: 394, column: 21, scope: !882)
!1017 = !DILocation(line: 417, column: 7, scope: !882)
!1018 = !DILocation(line: 420, column: 15, scope: !891)
!1019 = !DILocation(line: 422, column: 15, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !82, line: 422, column: 15)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !82, line: 421, column: 13)
!1022 = distinct !DILexicalBlock(scope: !891, file: !82, line: 420, column: 15)
!1023 = !DILocation(line: 422, column: 15, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !82, line: 422, column: 15)
!1025 = !DILocation(line: 422, column: 15, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !82, line: 422, column: 15)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !82, line: 422, column: 15)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !82, line: 422, column: 15)
!1029 = !DILocation(line: 422, column: 15, scope: !1027)
!1030 = !DILocation(line: 422, column: 15, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !82, line: 422, column: 15)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !82, line: 422, column: 15)
!1033 = !DILocation(line: 422, column: 15, scope: !1032)
!1034 = !DILocation(line: 422, column: 15, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !82, line: 422, column: 15)
!1036 = distinct !DILexicalBlock(scope: !1028, file: !82, line: 422, column: 15)
!1037 = !DILocation(line: 422, column: 15, scope: !1036)
!1038 = !DILocation(line: 422, column: 15, scope: !1028)
!1039 = !DILocation(line: 422, column: 15, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !82, line: 422, column: 15)
!1041 = distinct !DILexicalBlock(scope: !1020, file: !82, line: 422, column: 15)
!1042 = !DILocation(line: 422, column: 15, scope: !1041)
!1043 = !DILocation(line: 430, column: 19, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1021, file: !82, line: 429, column: 19)
!1045 = !DILocation(line: 430, column: 24, scope: !1044)
!1046 = !DILocation(line: 430, column: 28, scope: !1044)
!1047 = !DILocation(line: 430, column: 38, scope: !1044)
!1048 = !DILocation(line: 430, column: 48, scope: !1044)
!1049 = !DILocation(line: 430, column: 59, scope: !1044)
!1050 = !DILocation(line: 432, column: 19, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !82, line: 432, column: 19)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !82, line: 432, column: 19)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !82, line: 431, column: 17)
!1054 = !DILocation(line: 432, column: 19, scope: !1052)
!1055 = !DILocation(line: 433, column: 19, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !82, line: 433, column: 19)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !82, line: 433, column: 19)
!1058 = !DILocation(line: 433, column: 19, scope: !1057)
!1059 = !DILocation(line: 434, column: 17, scope: !1053)
!1060 = !DILocation(line: 441, column: 20, scope: !1022)
!1061 = !DILocation(line: 446, column: 11, scope: !891)
!1062 = !DILocation(line: 449, column: 19, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !891, file: !82, line: 447, column: 13)
!1064 = !DILocation(line: 455, column: 19, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1063, file: !82, line: 454, column: 19)
!1066 = !DILocation(line: 455, column: 24, scope: !1065)
!1067 = !DILocation(line: 455, column: 28, scope: !1065)
!1068 = !DILocation(line: 455, column: 38, scope: !1065)
!1069 = !DILocation(line: 455, column: 47, scope: !1065)
!1070 = !DILocation(line: 455, column: 41, scope: !1065)
!1071 = !DILocation(line: 455, column: 52, scope: !1065)
!1072 = !DILocation(line: 454, column: 19, scope: !1063)
!1073 = !DILocation(line: 456, column: 25, scope: !1065)
!1074 = !DILocation(line: 456, column: 17, scope: !1065)
!1075 = !DILocation(line: 463, column: 25, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1065, file: !82, line: 457, column: 19)
!1077 = !DILocation(line: 467, column: 21, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !82, line: 467, column: 21)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !82, line: 467, column: 21)
!1080 = !DILocation(line: 467, column: 21, scope: !1079)
!1081 = !DILocation(line: 468, column: 21, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !82, line: 468, column: 21)
!1083 = distinct !DILexicalBlock(scope: !1076, file: !82, line: 468, column: 21)
!1084 = !DILocation(line: 468, column: 21, scope: !1083)
!1085 = !DILocation(line: 469, column: 21, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !82, line: 469, column: 21)
!1087 = distinct !DILexicalBlock(scope: !1076, file: !82, line: 469, column: 21)
!1088 = !DILocation(line: 469, column: 21, scope: !1087)
!1089 = !DILocation(line: 470, column: 21, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !82, line: 470, column: 21)
!1091 = distinct !DILexicalBlock(scope: !1076, file: !82, line: 470, column: 21)
!1092 = !DILocation(line: 470, column: 21, scope: !1091)
!1093 = !DILocation(line: 471, column: 21, scope: !1076)
!1094 = !DILocation(line: 395, column: 21, scope: !882)
!1095 = !DILocation(line: 484, column: 31, scope: !891)
!1096 = !DILocation(line: 485, column: 31, scope: !891)
!1097 = !DILocation(line: 487, column: 31, scope: !891)
!1098 = !DILocation(line: 488, column: 31, scope: !891)
!1099 = !DILocation(line: 489, column: 31, scope: !891)
!1100 = !DILocation(line: 492, column: 15, scope: !891)
!1101 = !DILocation(line: 494, column: 19, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !82, line: 493, column: 13)
!1103 = distinct !DILexicalBlock(scope: !891, file: !82, line: 492, column: 15)
!1104 = !DILocation(line: 501, column: 33, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !891, file: !82, line: 501, column: 15)
!1106 = !DILocation(line: 506, column: 15, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !891, file: !82, line: 505, column: 15)
!1108 = !DILocation(line: 510, column: 15, scope: !891)
!1109 = !DILocation(line: 518, column: 26, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !891, file: !82, line: 518, column: 15)
!1111 = !DILocation(line: 518, column: 15, scope: !891)
!1112 = !DILocation(line: 518, column: 40, scope: !1110)
!1113 = !DILocation(line: 518, column: 47, scope: !1110)
!1114 = !DILocation(line: 522, column: 17, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !891, file: !82, line: 522, column: 15)
!1116 = !DILocation(line: 518, column: 18, scope: !1110)
!1117 = !DILocation(line: 518, column: 65, scope: !1110)
!1118 = !DILocation(line: 522, column: 15, scope: !891)
!1119 = !DILocation(line: 526, column: 11, scope: !891)
!1120 = !DILocation(line: 541, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !891, file: !82, line: 540, column: 15)
!1122 = !DILocation(line: 548, column: 15, scope: !891)
!1123 = !DILocation(line: 550, column: 19, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !82, line: 549, column: 13)
!1125 = distinct !DILexicalBlock(scope: !891, file: !82, line: 548, column: 15)
!1126 = !DILocation(line: 553, column: 19, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !82, line: 553, column: 19)
!1128 = !DILocation(line: 553, column: 35, scope: !1127)
!1129 = !DILocation(line: 553, column: 30, scope: !1127)
!1130 = !DILocation(line: 562, column: 15, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !82, line: 562, column: 15)
!1132 = distinct !DILexicalBlock(scope: !1124, file: !82, line: 562, column: 15)
!1133 = !DILocation(line: 562, column: 15, scope: !1132)
!1134 = !DILocation(line: 563, column: 15, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !82, line: 563, column: 15)
!1136 = distinct !DILexicalBlock(scope: !1124, file: !82, line: 563, column: 15)
!1137 = !DILocation(line: 563, column: 15, scope: !1136)
!1138 = !DILocation(line: 564, column: 15, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !82, line: 564, column: 15)
!1140 = distinct !DILexicalBlock(scope: !1124, file: !82, line: 564, column: 15)
!1141 = !DILocation(line: 564, column: 15, scope: !1140)
!1142 = !DILocation(line: 566, column: 13, scope: !1124)
!1143 = !DILocation(line: 606, column: 17, scope: !890)
!1144 = !DILocation(line: 602, column: 20, scope: !890)
!1145 = !DILocation(line: 609, column: 29, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !895, file: !82, line: 607, column: 15)
!1147 = !{!1148, !1148, i64 0}
!1148 = !{!"short", !563, i64 0}
!1149 = !DILocation(line: 609, column: 27, scope: !1146)
!1150 = !DILocation(line: 604, column: 18, scope: !890)
!1151 = !DILocation(line: 610, column: 15, scope: !1146)
!1152 = !DILocation(line: 613, column: 17, scope: !894)
!1153 = !DILocation(line: 614, column: 17, scope: !894)
!1154 = !DILocation(line: 618, column: 29, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !894, file: !82, line: 618, column: 21)
!1156 = !DILocation(line: 618, column: 21, scope: !894)
!1157 = !DILocation(line: 619, column: 29, scope: !1155)
!1158 = !DILocation(line: 619, column: 19, scope: !1155)
!1159 = !DILocation(line: 621, column: 17, scope: !894)
!1160 = distinct !{!1160, !1159, !1161}
!1161 = !DILocation(line: 667, column: 44, scope: !894)
!1162 = !DILocation(line: 623, column: 21, scope: !912)
!1163 = !DILocation(line: 624, column: 56, scope: !912)
!1164 = !DILocation(line: 624, column: 50, scope: !912)
!1165 = !DILocation(line: 625, column: 53, scope: !912)
!1166 = !DILocation(line: 613, column: 27, scope: !894)
!1167 = !DILocation(line: 623, column: 29, scope: !912)
!1168 = !DILocation(line: 624, column: 36, scope: !912)
!1169 = !DILocation(line: 624, column: 28, scope: !912)
!1170 = !DILocation(line: 626, column: 25, scope: !912)
!1171 = !DILocation(line: 636, column: 38, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !919, file: !82, line: 634, column: 23)
!1173 = !DILocation(line: 636, column: 48, scope: !1172)
!1174 = !DILocation(line: 636, column: 51, scope: !1172)
!1175 = !DILocation(line: 636, column: 25, scope: !1172)
!1176 = !DILocation(line: 637, column: 28, scope: !1172)
!1177 = !DILocation(line: 636, column: 34, scope: !1172)
!1178 = distinct !{!1178, !1175, !1176}
!1179 = !DILocation(line: 650, column: 43, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !82, line: 650, column: 29)
!1181 = distinct !DILexicalBlock(scope: !916, file: !82, line: 650, column: 29)
!1182 = !DILocation(line: 647, column: 29, scope: !917)
!1183 = !DILocation(line: 649, column: 36, scope: !916)
!1184 = !DILocation(line: 651, column: 49, scope: !1180)
!1185 = !DILocation(line: 651, column: 39, scope: !1180)
!1186 = !DILocation(line: 651, column: 31, scope: !1180)
!1187 = !DILocation(line: 650, column: 53, scope: !1180)
!1188 = !DILocation(line: 650, column: 29, scope: !1181)
!1189 = distinct !{!1189, !1188, !1190}
!1190 = !DILocation(line: 659, column: 33, scope: !1181)
!1191 = !DILocation(line: 666, column: 19, scope: !894)
!1192 = !DILocation(line: 662, column: 41, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !918, file: !82, line: 662, column: 29)
!1194 = !DILocation(line: 662, column: 31, scope: !1193)
!1195 = !DILocation(line: 662, column: 29, scope: !918)
!1196 = !DILocation(line: 664, column: 27, scope: !918)
!1197 = !DILocation(line: 667, column: 26, scope: !894)
!1198 = !DILocation(line: 667, column: 24, scope: !894)
!1199 = !DILocation(line: 666, column: 19, scope: !912)
!1200 = !DILocation(line: 668, column: 15, scope: !895)
!1201 = !DILocation(line: 670, column: 40, scope: !890)
!1202 = !DILocation(line: 672, column: 19, scope: !924)
!1203 = !DILocation(line: 672, column: 45, scope: !924)
!1204 = !DILocation(line: 672, column: 23, scope: !924)
!1205 = !DILocation(line: 676, column: 33, scope: !923)
!1206 = !DILocation(line: 676, column: 24, scope: !923)
!1207 = !DILocation(line: 678, column: 17, scope: !923)
!1208 = !DILocation(line: 680, column: 43, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !82, line: 680, column: 25)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !82, line: 679, column: 19)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !82, line: 678, column: 17)
!1212 = distinct !DILexicalBlock(scope: !923, file: !82, line: 678, column: 17)
!1213 = !DILocation(line: 682, column: 25, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !82, line: 682, column: 25)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !82, line: 681, column: 23)
!1216 = !DILocation(line: 682, column: 25, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !82, line: 682, column: 25)
!1218 = !DILocation(line: 682, column: 25, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !82, line: 682, column: 25)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !82, line: 682, column: 25)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !82, line: 682, column: 25)
!1222 = !DILocation(line: 682, column: 25, scope: !1220)
!1223 = !DILocation(line: 682, column: 25, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !82, line: 682, column: 25)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !82, line: 682, column: 25)
!1226 = !DILocation(line: 682, column: 25, scope: !1225)
!1227 = !DILocation(line: 682, column: 25, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !82, line: 682, column: 25)
!1229 = distinct !DILexicalBlock(scope: !1221, file: !82, line: 682, column: 25)
!1230 = !DILocation(line: 682, column: 25, scope: !1229)
!1231 = !DILocation(line: 682, column: 25, scope: !1221)
!1232 = !DILocation(line: 682, column: 25, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !82, line: 682, column: 25)
!1234 = distinct !DILexicalBlock(scope: !1214, file: !82, line: 682, column: 25)
!1235 = !DILocation(line: 682, column: 25, scope: !1234)
!1236 = !DILocation(line: 683, column: 25, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !82, line: 683, column: 25)
!1238 = distinct !DILexicalBlock(scope: !1215, file: !82, line: 683, column: 25)
!1239 = !DILocation(line: 683, column: 25, scope: !1238)
!1240 = !DILocation(line: 684, column: 25, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !82, line: 684, column: 25)
!1242 = distinct !DILexicalBlock(scope: !1215, file: !82, line: 684, column: 25)
!1243 = !DILocation(line: 684, column: 25, scope: !1242)
!1244 = !DILocation(line: 685, column: 38, scope: !1215)
!1245 = !DILocation(line: 685, column: 33, scope: !1215)
!1246 = !DILocation(line: 686, column: 23, scope: !1215)
!1247 = !DILocation(line: 687, column: 30, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1209, file: !82, line: 687, column: 30)
!1249 = !DILocation(line: 687, column: 30, scope: !1209)
!1250 = !DILocation(line: 689, column: 25, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !82, line: 689, column: 25)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !82, line: 689, column: 25)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !82, line: 688, column: 23)
!1254 = !DILocation(line: 689, column: 25, scope: !1252)
!1255 = !DILocation(line: 691, column: 23, scope: !1253)
!1256 = !DILocation(line: 692, column: 35, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1210, file: !82, line: 692, column: 25)
!1258 = !DILocation(line: 692, column: 30, scope: !1257)
!1259 = !DILocation(line: 692, column: 25, scope: !1210)
!1260 = !DILocation(line: 694, column: 21, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !82, line: 694, column: 21)
!1262 = distinct !DILexicalBlock(scope: !1210, file: !82, line: 694, column: 21)
!1263 = !DILocation(line: 694, column: 21, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !82, line: 694, column: 21)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !82, line: 694, column: 21)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !82, line: 694, column: 21)
!1267 = !DILocation(line: 694, column: 21, scope: !1265)
!1268 = !DILocation(line: 694, column: 21, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !82, line: 694, column: 21)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !82, line: 694, column: 21)
!1271 = !DILocation(line: 694, column: 21, scope: !1270)
!1272 = !DILocation(line: 694, column: 21, scope: !1266)
!1273 = !DILocation(line: 695, column: 21, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !82, line: 695, column: 21)
!1275 = distinct !DILexicalBlock(scope: !1210, file: !82, line: 695, column: 21)
!1276 = !DILocation(line: 695, column: 21, scope: !1275)
!1277 = !DILocation(line: 696, column: 25, scope: !1210)
!1278 = !DILocation(line: 678, column: 17, scope: !1211)
!1279 = distinct !{!1279, !1280, !1281}
!1280 = !DILocation(line: 678, column: 17, scope: !1212)
!1281 = !DILocation(line: 697, column: 19, scope: !1212)
!1282 = !DILocation(line: 704, column: 34, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !882, file: !82, line: 704, column: 11)
!1284 = !DILocation(line: 706, column: 14, scope: !1283)
!1285 = !DILocation(line: 707, column: 14, scope: !1283)
!1286 = !DILocation(line: 707, column: 35, scope: !1283)
!1287 = !DILocation(line: 707, column: 17, scope: !1283)
!1288 = !DILocation(line: 707, column: 53, scope: !1283)
!1289 = !DILocation(line: 707, column: 47, scope: !1283)
!1290 = !DILocation(line: 707, column: 65, scope: !1283)
!1291 = !DILocation(line: 708, column: 15, scope: !1283)
!1292 = !DILocation(line: 708, column: 11, scope: !1283)
!1293 = !DILocation(line: 704, column: 11, scope: !882)
!1294 = !DILocation(line: 712, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !882, file: !82, line: 712, column: 7)
!1296 = !DILocation(line: 712, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1295, file: !82, line: 712, column: 7)
!1298 = !DILocation(line: 712, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !82, line: 712, column: 7)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !82, line: 712, column: 7)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !82, line: 712, column: 7)
!1302 = !DILocation(line: 712, column: 7, scope: !1300)
!1303 = !DILocation(line: 712, column: 7, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !82, line: 712, column: 7)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !82, line: 712, column: 7)
!1306 = !DILocation(line: 712, column: 7, scope: !1305)
!1307 = !DILocation(line: 712, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !82, line: 712, column: 7)
!1309 = distinct !DILexicalBlock(scope: !1301, file: !82, line: 712, column: 7)
!1310 = !DILocation(line: 712, column: 7, scope: !1309)
!1311 = !DILocation(line: 712, column: 7, scope: !1301)
!1312 = !DILocation(line: 712, column: 7, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !82, line: 712, column: 7)
!1314 = distinct !DILexicalBlock(scope: !1295, file: !82, line: 712, column: 7)
!1315 = !DILocation(line: 712, column: 7, scope: !1314)
!1316 = !DILocation(line: 715, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !82, line: 715, column: 7)
!1318 = distinct !DILexicalBlock(scope: !882, file: !82, line: 715, column: 7)
!1319 = !DILocation(line: 715, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !82, line: 715, column: 7)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !82, line: 715, column: 7)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !82, line: 715, column: 7)
!1323 = !DILocation(line: 715, column: 7, scope: !1321)
!1324 = !DILocation(line: 715, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !82, line: 715, column: 7)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !82, line: 715, column: 7)
!1327 = !DILocation(line: 715, column: 7, scope: !1326)
!1328 = !DILocation(line: 715, column: 7, scope: !1322)
!1329 = !DILocation(line: 716, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !82, line: 716, column: 7)
!1331 = distinct !DILexicalBlock(scope: !882, file: !82, line: 716, column: 7)
!1332 = !DILocation(line: 716, column: 7, scope: !1331)
!1333 = !DILocation(line: 718, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !882, file: !82, line: 718, column: 11)
!1335 = !DILocation(line: 718, column: 11, scope: !882)
!1336 = !DILocation(line: 720, column: 5, scope: !883)
!1337 = !DILocation(line: 392, column: 75, scope: !883)
!1338 = !DILocation(line: 392, column: 3, scope: !883)
!1339 = distinct !{!1339, !997, !1340}
!1340 = !DILocation(line: 720, column: 5, scope: !884)
!1341 = !DILocation(line: 722, column: 11, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !855, file: !82, line: 722, column: 7)
!1343 = !DILocation(line: 722, column: 16, scope: !1342)
!1344 = !DILocation(line: 730, column: 51, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !855, file: !82, line: 730, column: 7)
!1346 = !DILocation(line: 731, column: 10, scope: !1345)
!1347 = !DILocation(line: 733, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !82, line: 733, column: 11)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !82, line: 732, column: 5)
!1350 = !DILocation(line: 733, column: 11, scope: !1349)
!1351 = !DILocation(line: 734, column: 16, scope: !1348)
!1352 = !DILocation(line: 734, column: 9, scope: !1348)
!1353 = !DILocation(line: 738, column: 18, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !82, line: 738, column: 16)
!1355 = !DILocation(line: 738, column: 32, scope: !1354)
!1356 = !DILocation(line: 738, column: 29, scope: !1354)
!1357 = !DILocation(line: 747, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !855, file: !82, line: 747, column: 7)
!1359 = !DILocation(line: 747, column: 20, scope: !1358)
!1360 = !DILocation(line: 748, column: 12, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !82, line: 748, column: 5)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !82, line: 748, column: 5)
!1363 = !DILocation(line: 748, column: 5, scope: !1362)
!1364 = !DILocation(line: 749, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !82, line: 749, column: 7)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !82, line: 749, column: 7)
!1367 = !DILocation(line: 749, column: 7, scope: !1366)
!1368 = !DILocation(line: 748, column: 39, scope: !1361)
!1369 = distinct !{!1369, !1363, !1370}
!1370 = !DILocation(line: 749, column: 7, scope: !1362)
!1371 = !DILocation(line: 751, column: 11, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !855, file: !82, line: 751, column: 7)
!1373 = !DILocation(line: 751, column: 7, scope: !855)
!1374 = !DILocation(line: 752, column: 5, scope: !1372)
!1375 = !DILocation(line: 752, column: 17, scope: !1372)
!1376 = !DILocation(line: 758, column: 21, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !855, file: !82, line: 758, column: 7)
!1378 = !DILocation(line: 758, column: 54, scope: !1377)
!1379 = !DILocation(line: 758, column: 51, scope: !1377)
!1380 = !DILocation(line: 762, column: 42, scope: !855)
!1381 = !DILocation(line: 760, column: 10, scope: !855)
!1382 = !DILocation(line: 760, column: 3, scope: !855)
!1383 = !DILocation(line: 764, column: 1, scope: !855)
!1384 = distinct !DISubprogram(name: "gettext_quote", scope: !82, file: !82, line: 199, type: !1385, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!6, !6, !40}
!1387 = !{!1388, !1389, !1390, !1391}
!1388 = !DILocalVariable(name: "msgid", arg: 1, scope: !1384, file: !82, line: 199, type: !6)
!1389 = !DILocalVariable(name: "s", arg: 2, scope: !1384, file: !82, line: 199, type: !40)
!1390 = !DILocalVariable(name: "translation", scope: !1384, file: !82, line: 201, type: !6)
!1391 = !DILocalVariable(name: "locale_code", scope: !1384, file: !82, line: 202, type: !6)
!1392 = !DILocation(line: 199, column: 28, scope: !1384)
!1393 = !DILocation(line: 199, column: 54, scope: !1384)
!1394 = !DILocation(line: 201, column: 29, scope: !1384)
!1395 = !DILocation(line: 201, column: 15, scope: !1384)
!1396 = !DILocation(line: 204, column: 19, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1384, file: !82, line: 204, column: 7)
!1398 = !DILocation(line: 204, column: 7, scope: !1384)
!1399 = !DILocation(line: 225, column: 17, scope: !1384)
!1400 = !DILocation(line: 202, column: 15, scope: !1384)
!1401 = !DILocalVariable(name: "s2", arg: 2, scope: !1402, file: !1403, line: 160, type: !6)
!1402 = distinct !DISubprogram(name: "strcaseeq0", scope: !1403, file: !1403, line: 160, type: !1404, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1406)
!1403 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1406 = !{!1407, !1401, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1407 = !DILocalVariable(name: "s1", arg: 1, scope: !1402, file: !1403, line: 160, type: !6)
!1408 = !DILocalVariable(name: "s20", arg: 3, scope: !1402, file: !1403, line: 160, type: !8)
!1409 = !DILocalVariable(name: "s21", arg: 4, scope: !1402, file: !1403, line: 160, type: !8)
!1410 = !DILocalVariable(name: "s22", arg: 5, scope: !1402, file: !1403, line: 160, type: !8)
!1411 = !DILocalVariable(name: "s23", arg: 6, scope: !1402, file: !1403, line: 160, type: !8)
!1412 = !DILocalVariable(name: "s24", arg: 7, scope: !1402, file: !1403, line: 160, type: !8)
!1413 = !DILocalVariable(name: "s25", arg: 8, scope: !1402, file: !1403, line: 160, type: !8)
!1414 = !DILocalVariable(name: "s26", arg: 9, scope: !1402, file: !1403, line: 160, type: !8)
!1415 = !DILocalVariable(name: "s27", arg: 10, scope: !1402, file: !1403, line: 160, type: !8)
!1416 = !DILocalVariable(name: "s28", arg: 11, scope: !1402, file: !1403, line: 160, type: !8)
!1417 = !DILocation(line: 160, column: 41, scope: !1402, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 226, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1384, file: !82, line: 226, column: 7)
!1420 = !DILocation(line: 160, column: 120, scope: !1402, inlinedAt: !1418)
!1421 = !DILocation(line: 160, column: 130, scope: !1402, inlinedAt: !1418)
!1422 = !DILocation(line: 162, column: 7, scope: !1423, inlinedAt: !1418)
!1423 = distinct !DILexicalBlock(scope: !1402, file: !1403, line: 162, column: 7)
!1424 = !DILocalVariable(name: "s2", arg: 2, scope: !1425, file: !1403, line: 146, type: !6)
!1425 = distinct !DISubprogram(name: "strcaseeq1", scope: !1403, file: !1403, line: 146, type: !1426, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1428 = !{!1429, !1424, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437}
!1429 = !DILocalVariable(name: "s1", arg: 1, scope: !1425, file: !1403, line: 146, type: !6)
!1430 = !DILocalVariable(name: "s21", arg: 3, scope: !1425, file: !1403, line: 146, type: !8)
!1431 = !DILocalVariable(name: "s22", arg: 4, scope: !1425, file: !1403, line: 146, type: !8)
!1432 = !DILocalVariable(name: "s23", arg: 5, scope: !1425, file: !1403, line: 146, type: !8)
!1433 = !DILocalVariable(name: "s24", arg: 6, scope: !1425, file: !1403, line: 146, type: !8)
!1434 = !DILocalVariable(name: "s25", arg: 7, scope: !1425, file: !1403, line: 146, type: !8)
!1435 = !DILocalVariable(name: "s26", arg: 8, scope: !1425, file: !1403, line: 146, type: !8)
!1436 = !DILocalVariable(name: "s27", arg: 9, scope: !1425, file: !1403, line: 146, type: !8)
!1437 = !DILocalVariable(name: "s28", arg: 10, scope: !1425, file: !1403, line: 146, type: !8)
!1438 = !DILocation(line: 146, column: 41, scope: !1425, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 167, column: 16, scope: !1440, inlinedAt: !1418)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !1403, line: 164, column: 11)
!1441 = distinct !DILexicalBlock(scope: !1423, file: !1403, line: 163, column: 5)
!1442 = !DILocation(line: 146, column: 110, scope: !1425, inlinedAt: !1439)
!1443 = !DILocation(line: 146, column: 120, scope: !1425, inlinedAt: !1439)
!1444 = !DILocation(line: 148, column: 7, scope: !1445, inlinedAt: !1439)
!1445 = distinct !DILexicalBlock(scope: !1425, file: !1403, line: 148, column: 7)
!1446 = !DILocalVariable(name: "s2", arg: 2, scope: !1447, file: !1403, line: 132, type: !6)
!1447 = distinct !DISubprogram(name: "strcaseeq2", scope: !1403, file: !1403, line: 132, type: !1448, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1450 = !{!1451, !1446, !1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1451 = !DILocalVariable(name: "s1", arg: 1, scope: !1447, file: !1403, line: 132, type: !6)
!1452 = !DILocalVariable(name: "s22", arg: 3, scope: !1447, file: !1403, line: 132, type: !8)
!1453 = !DILocalVariable(name: "s23", arg: 4, scope: !1447, file: !1403, line: 132, type: !8)
!1454 = !DILocalVariable(name: "s24", arg: 5, scope: !1447, file: !1403, line: 132, type: !8)
!1455 = !DILocalVariable(name: "s25", arg: 6, scope: !1447, file: !1403, line: 132, type: !8)
!1456 = !DILocalVariable(name: "s26", arg: 7, scope: !1447, file: !1403, line: 132, type: !8)
!1457 = !DILocalVariable(name: "s27", arg: 8, scope: !1447, file: !1403, line: 132, type: !8)
!1458 = !DILocalVariable(name: "s28", arg: 9, scope: !1447, file: !1403, line: 132, type: !8)
!1459 = !DILocation(line: 132, column: 41, scope: !1447, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 153, column: 16, scope: !1461, inlinedAt: !1439)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !1403, line: 150, column: 11)
!1462 = distinct !DILexicalBlock(scope: !1445, file: !1403, line: 149, column: 5)
!1463 = !DILocation(line: 132, column: 100, scope: !1447, inlinedAt: !1460)
!1464 = !DILocation(line: 132, column: 110, scope: !1447, inlinedAt: !1460)
!1465 = !DILocation(line: 134, column: 7, scope: !1466, inlinedAt: !1460)
!1466 = distinct !DILexicalBlock(scope: !1447, file: !1403, line: 134, column: 7)
!1467 = !DILocalVariable(name: "s2", arg: 2, scope: !1468, file: !1403, line: 118, type: !6)
!1468 = distinct !DISubprogram(name: "strcaseeq3", scope: !1403, file: !1403, line: 118, type: !1469, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1471)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1471 = !{!1472, !1467, !1473, !1474, !1475, !1476, !1477, !1478}
!1472 = !DILocalVariable(name: "s1", arg: 1, scope: !1468, file: !1403, line: 118, type: !6)
!1473 = !DILocalVariable(name: "s23", arg: 3, scope: !1468, file: !1403, line: 118, type: !8)
!1474 = !DILocalVariable(name: "s24", arg: 4, scope: !1468, file: !1403, line: 118, type: !8)
!1475 = !DILocalVariable(name: "s25", arg: 5, scope: !1468, file: !1403, line: 118, type: !8)
!1476 = !DILocalVariable(name: "s26", arg: 6, scope: !1468, file: !1403, line: 118, type: !8)
!1477 = !DILocalVariable(name: "s27", arg: 7, scope: !1468, file: !1403, line: 118, type: !8)
!1478 = !DILocalVariable(name: "s28", arg: 8, scope: !1468, file: !1403, line: 118, type: !8)
!1479 = !DILocation(line: 118, column: 41, scope: !1468, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 139, column: 16, scope: !1481, inlinedAt: !1460)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !1403, line: 136, column: 11)
!1482 = distinct !DILexicalBlock(scope: !1466, file: !1403, line: 135, column: 5)
!1483 = !DILocation(line: 118, column: 90, scope: !1468, inlinedAt: !1480)
!1484 = !DILocation(line: 118, column: 100, scope: !1468, inlinedAt: !1480)
!1485 = !DILocation(line: 120, column: 7, scope: !1486, inlinedAt: !1480)
!1486 = distinct !DILexicalBlock(scope: !1468, file: !1403, line: 120, column: 7)
!1487 = !DILocation(line: 120, column: 7, scope: !1468, inlinedAt: !1480)
!1488 = !DILocalVariable(name: "s2", arg: 2, scope: !1489, file: !1403, line: 104, type: !6)
!1489 = distinct !DISubprogram(name: "strcaseeq4", scope: !1403, file: !1403, line: 104, type: !1490, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1492 = !{!1493, !1488, !1494, !1495, !1496, !1497, !1498}
!1493 = !DILocalVariable(name: "s1", arg: 1, scope: !1489, file: !1403, line: 104, type: !6)
!1494 = !DILocalVariable(name: "s24", arg: 3, scope: !1489, file: !1403, line: 104, type: !8)
!1495 = !DILocalVariable(name: "s25", arg: 4, scope: !1489, file: !1403, line: 104, type: !8)
!1496 = !DILocalVariable(name: "s26", arg: 5, scope: !1489, file: !1403, line: 104, type: !8)
!1497 = !DILocalVariable(name: "s27", arg: 6, scope: !1489, file: !1403, line: 104, type: !8)
!1498 = !DILocalVariable(name: "s28", arg: 7, scope: !1489, file: !1403, line: 104, type: !8)
!1499 = !DILocation(line: 104, column: 41, scope: !1489, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 125, column: 16, scope: !1501, inlinedAt: !1480)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !1403, line: 122, column: 11)
!1502 = distinct !DILexicalBlock(scope: !1486, file: !1403, line: 121, column: 5)
!1503 = !DILocation(line: 104, column: 80, scope: !1489, inlinedAt: !1500)
!1504 = !DILocation(line: 104, column: 90, scope: !1489, inlinedAt: !1500)
!1505 = !DILocation(line: 106, column: 7, scope: !1506, inlinedAt: !1500)
!1506 = distinct !DILexicalBlock(scope: !1489, file: !1403, line: 106, column: 7)
!1507 = !DILocation(line: 106, column: 7, scope: !1489, inlinedAt: !1500)
!1508 = !DILocalVariable(name: "s2", arg: 2, scope: !1509, file: !1403, line: 90, type: !6)
!1509 = distinct !DISubprogram(name: "strcaseeq5", scope: !1403, file: !1403, line: 90, type: !1510, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!25, !6, !6, !8, !8, !8, !8}
!1512 = !{!1513, !1508, !1514, !1515, !1516, !1517}
!1513 = !DILocalVariable(name: "s1", arg: 1, scope: !1509, file: !1403, line: 90, type: !6)
!1514 = !DILocalVariable(name: "s25", arg: 3, scope: !1509, file: !1403, line: 90, type: !8)
!1515 = !DILocalVariable(name: "s26", arg: 4, scope: !1509, file: !1403, line: 90, type: !8)
!1516 = !DILocalVariable(name: "s27", arg: 5, scope: !1509, file: !1403, line: 90, type: !8)
!1517 = !DILocalVariable(name: "s28", arg: 6, scope: !1509, file: !1403, line: 90, type: !8)
!1518 = !DILocation(line: 90, column: 41, scope: !1509, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 111, column: 16, scope: !1520, inlinedAt: !1500)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !1403, line: 108, column: 11)
!1521 = distinct !DILexicalBlock(scope: !1506, file: !1403, line: 107, column: 5)
!1522 = !DILocation(line: 90, column: 70, scope: !1509, inlinedAt: !1519)
!1523 = !DILocation(line: 90, column: 80, scope: !1509, inlinedAt: !1519)
!1524 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !1519)
!1525 = distinct !DILexicalBlock(scope: !1509, file: !1403, line: 92, column: 7)
!1526 = !DILocation(line: 92, column: 7, scope: !1509, inlinedAt: !1519)
!1527 = !DILocation(line: 227, column: 12, scope: !1419)
!1528 = !DILocation(line: 227, column: 21, scope: !1419)
!1529 = !DILocation(line: 227, column: 5, scope: !1419)
!1530 = !DILocation(line: 146, column: 41, scope: !1425, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 167, column: 16, scope: !1440, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 228, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1384, file: !82, line: 228, column: 7)
!1534 = !DILocation(line: 146, column: 110, scope: !1425, inlinedAt: !1531)
!1535 = !DILocation(line: 146, column: 120, scope: !1425, inlinedAt: !1531)
!1536 = !DILocation(line: 148, column: 7, scope: !1445, inlinedAt: !1531)
!1537 = !DILocation(line: 132, column: 41, scope: !1447, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 153, column: 16, scope: !1461, inlinedAt: !1531)
!1539 = !DILocation(line: 132, column: 100, scope: !1447, inlinedAt: !1538)
!1540 = !DILocation(line: 132, column: 110, scope: !1447, inlinedAt: !1538)
!1541 = !DILocation(line: 134, column: 7, scope: !1466, inlinedAt: !1538)
!1542 = !DILocation(line: 134, column: 7, scope: !1447, inlinedAt: !1538)
!1543 = !DILocation(line: 118, column: 41, scope: !1468, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 139, column: 16, scope: !1481, inlinedAt: !1538)
!1545 = !DILocation(line: 118, column: 90, scope: !1468, inlinedAt: !1544)
!1546 = !DILocation(line: 118, column: 100, scope: !1468, inlinedAt: !1544)
!1547 = !DILocation(line: 120, column: 7, scope: !1486, inlinedAt: !1544)
!1548 = !DILocation(line: 120, column: 7, scope: !1468, inlinedAt: !1544)
!1549 = !DILocation(line: 104, column: 41, scope: !1489, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 125, column: 16, scope: !1501, inlinedAt: !1544)
!1551 = !DILocation(line: 104, column: 80, scope: !1489, inlinedAt: !1550)
!1552 = !DILocation(line: 104, column: 90, scope: !1489, inlinedAt: !1550)
!1553 = !DILocation(line: 106, column: 7, scope: !1506, inlinedAt: !1550)
!1554 = !DILocation(line: 106, column: 7, scope: !1489, inlinedAt: !1550)
!1555 = !DILocation(line: 90, column: 41, scope: !1509, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 111, column: 16, scope: !1520, inlinedAt: !1550)
!1557 = !DILocation(line: 90, column: 70, scope: !1509, inlinedAt: !1556)
!1558 = !DILocation(line: 90, column: 80, scope: !1509, inlinedAt: !1556)
!1559 = !DILocation(line: 92, column: 7, scope: !1525, inlinedAt: !1556)
!1560 = !DILocation(line: 92, column: 7, scope: !1509, inlinedAt: !1556)
!1561 = !DILocalVariable(name: "s2", arg: 2, scope: !1562, file: !1403, line: 76, type: !6)
!1562 = distinct !DISubprogram(name: "strcaseeq6", scope: !1403, file: !1403, line: 76, type: !1563, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!25, !6, !6, !8, !8, !8}
!1565 = !{!1566, !1561, !1567, !1568, !1569}
!1566 = !DILocalVariable(name: "s1", arg: 1, scope: !1562, file: !1403, line: 76, type: !6)
!1567 = !DILocalVariable(name: "s26", arg: 3, scope: !1562, file: !1403, line: 76, type: !8)
!1568 = !DILocalVariable(name: "s27", arg: 4, scope: !1562, file: !1403, line: 76, type: !8)
!1569 = !DILocalVariable(name: "s28", arg: 5, scope: !1562, file: !1403, line: 76, type: !8)
!1570 = !DILocation(line: 76, column: 41, scope: !1562, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 97, column: 16, scope: !1572, inlinedAt: !1556)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !1403, line: 94, column: 11)
!1573 = distinct !DILexicalBlock(scope: !1525, file: !1403, line: 93, column: 5)
!1574 = !DILocation(line: 76, column: 60, scope: !1562, inlinedAt: !1571)
!1575 = !DILocation(line: 76, column: 70, scope: !1562, inlinedAt: !1571)
!1576 = !DILocation(line: 78, column: 7, scope: !1577, inlinedAt: !1571)
!1577 = distinct !DILexicalBlock(scope: !1562, file: !1403, line: 78, column: 7)
!1578 = !DILocation(line: 78, column: 7, scope: !1562, inlinedAt: !1571)
!1579 = !DILocalVariable(name: "s2", arg: 2, scope: !1580, file: !1403, line: 62, type: !6)
!1580 = distinct !DISubprogram(name: "strcaseeq7", scope: !1403, file: !1403, line: 62, type: !1581, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!25, !6, !6, !8, !8}
!1583 = !{!1584, !1579, !1585, !1586}
!1584 = !DILocalVariable(name: "s1", arg: 1, scope: !1580, file: !1403, line: 62, type: !6)
!1585 = !DILocalVariable(name: "s27", arg: 3, scope: !1580, file: !1403, line: 62, type: !8)
!1586 = !DILocalVariable(name: "s28", arg: 4, scope: !1580, file: !1403, line: 62, type: !8)
!1587 = !DILocation(line: 62, column: 41, scope: !1580, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 83, column: 16, scope: !1589, inlinedAt: !1571)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !1403, line: 80, column: 11)
!1590 = distinct !DILexicalBlock(scope: !1577, file: !1403, line: 79, column: 5)
!1591 = !DILocation(line: 62, column: 50, scope: !1580, inlinedAt: !1588)
!1592 = !DILocation(line: 62, column: 60, scope: !1580, inlinedAt: !1588)
!1593 = !DILocation(line: 64, column: 7, scope: !1594, inlinedAt: !1588)
!1594 = distinct !DILexicalBlock(scope: !1580, file: !1403, line: 64, column: 7)
!1595 = !DILocation(line: 228, column: 7, scope: !1384)
!1596 = !DILocation(line: 229, column: 12, scope: !1533)
!1597 = !DILocation(line: 229, column: 21, scope: !1533)
!1598 = !DILocation(line: 229, column: 5, scope: !1533)
!1599 = !DILocation(line: 231, column: 13, scope: !1384)
!1600 = !DILocation(line: 231, column: 11, scope: !1384)
!1601 = !DILocation(line: 231, column: 3, scope: !1384)
!1602 = !DILocation(line: 232, column: 1, scope: !1384)
!1603 = distinct !DISubprogram(name: "quotearg_alloc", scope: !82, file: !82, line: 791, type: !1604, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!32, !6, !76, !727}
!1606 = !{!1607, !1608, !1609}
!1607 = !DILocalVariable(name: "arg", arg: 1, scope: !1603, file: !82, line: 791, type: !6)
!1608 = !DILocalVariable(name: "argsize", arg: 2, scope: !1603, file: !82, line: 791, type: !76)
!1609 = !DILocalVariable(name: "o", arg: 3, scope: !1603, file: !82, line: 792, type: !727)
!1610 = !DILocation(line: 791, column: 29, scope: !1603)
!1611 = !DILocation(line: 791, column: 41, scope: !1603)
!1612 = !DILocation(line: 792, column: 47, scope: !1603)
!1613 = !DILocalVariable(name: "arg", arg: 1, scope: !1614, file: !82, line: 804, type: !6)
!1614 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 804, type: !1615, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!32, !6, !76, !520, !727}
!1617 = !{!1613, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1618 = !DILocalVariable(name: "argsize", arg: 2, scope: !1614, file: !82, line: 804, type: !76)
!1619 = !DILocalVariable(name: "size", arg: 3, scope: !1614, file: !82, line: 804, type: !520)
!1620 = !DILocalVariable(name: "o", arg: 4, scope: !1614, file: !82, line: 805, type: !727)
!1621 = !DILocalVariable(name: "p", scope: !1614, file: !82, line: 807, type: !727)
!1622 = !DILocalVariable(name: "e", scope: !1614, file: !82, line: 808, type: !25)
!1623 = !DILocalVariable(name: "flags", scope: !1614, file: !82, line: 810, type: !25)
!1624 = !DILocalVariable(name: "bufsize", scope: !1614, file: !82, line: 811, type: !76)
!1625 = !DILocalVariable(name: "buf", scope: !1614, file: !82, line: 815, type: !32)
!1626 = !DILocation(line: 804, column: 33, scope: !1614, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 794, column: 10, scope: !1603)
!1628 = !DILocation(line: 804, column: 45, scope: !1614, inlinedAt: !1627)
!1629 = !DILocation(line: 804, column: 62, scope: !1614, inlinedAt: !1627)
!1630 = !DILocation(line: 805, column: 51, scope: !1614, inlinedAt: !1627)
!1631 = !DILocation(line: 807, column: 37, scope: !1614, inlinedAt: !1627)
!1632 = !DILocation(line: 807, column: 33, scope: !1614, inlinedAt: !1627)
!1633 = !DILocation(line: 808, column: 11, scope: !1614, inlinedAt: !1627)
!1634 = !DILocation(line: 808, column: 7, scope: !1614, inlinedAt: !1627)
!1635 = !DILocation(line: 810, column: 18, scope: !1614, inlinedAt: !1627)
!1636 = !DILocation(line: 810, column: 24, scope: !1614, inlinedAt: !1627)
!1637 = !DILocation(line: 810, column: 7, scope: !1614, inlinedAt: !1627)
!1638 = !DILocation(line: 811, column: 69, scope: !1614, inlinedAt: !1627)
!1639 = !DILocation(line: 812, column: 53, scope: !1614, inlinedAt: !1627)
!1640 = !DILocation(line: 813, column: 49, scope: !1614, inlinedAt: !1627)
!1641 = !DILocation(line: 814, column: 49, scope: !1614, inlinedAt: !1627)
!1642 = !DILocation(line: 811, column: 20, scope: !1614, inlinedAt: !1627)
!1643 = !DILocation(line: 814, column: 62, scope: !1614, inlinedAt: !1627)
!1644 = !DILocation(line: 811, column: 10, scope: !1614, inlinedAt: !1627)
!1645 = !DILocalVariable(name: "n", arg: 1, scope: !1646, file: !516, line: 220, type: !76)
!1646 = distinct !DISubprogram(name: "xcharalloc", scope: !516, file: !516, line: 220, type: !1647, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1649)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!32, !76}
!1649 = !{!1645}
!1650 = !DILocation(line: 220, column: 20, scope: !1646, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 815, column: 15, scope: !1614, inlinedAt: !1627)
!1652 = !DILocation(line: 222, column: 10, scope: !1646, inlinedAt: !1651)
!1653 = !DILocation(line: 815, column: 9, scope: !1614, inlinedAt: !1627)
!1654 = !DILocation(line: 816, column: 60, scope: !1614, inlinedAt: !1627)
!1655 = !DILocation(line: 818, column: 32, scope: !1614, inlinedAt: !1627)
!1656 = !DILocation(line: 818, column: 47, scope: !1614, inlinedAt: !1627)
!1657 = !DILocation(line: 816, column: 3, scope: !1614, inlinedAt: !1627)
!1658 = !DILocation(line: 819, column: 9, scope: !1614, inlinedAt: !1627)
!1659 = !DILocation(line: 794, column: 3, scope: !1603)
!1660 = !DILocation(line: 804, column: 33, scope: !1614)
!1661 = !DILocation(line: 804, column: 45, scope: !1614)
!1662 = !DILocation(line: 804, column: 62, scope: !1614)
!1663 = !DILocation(line: 805, column: 51, scope: !1614)
!1664 = !DILocation(line: 807, column: 37, scope: !1614)
!1665 = !DILocation(line: 807, column: 33, scope: !1614)
!1666 = !DILocation(line: 808, column: 11, scope: !1614)
!1667 = !DILocation(line: 808, column: 7, scope: !1614)
!1668 = !DILocation(line: 810, column: 18, scope: !1614)
!1669 = !DILocation(line: 810, column: 27, scope: !1614)
!1670 = !DILocation(line: 810, column: 24, scope: !1614)
!1671 = !DILocation(line: 810, column: 7, scope: !1614)
!1672 = !DILocation(line: 811, column: 69, scope: !1614)
!1673 = !DILocation(line: 812, column: 53, scope: !1614)
!1674 = !DILocation(line: 813, column: 49, scope: !1614)
!1675 = !DILocation(line: 814, column: 49, scope: !1614)
!1676 = !DILocation(line: 811, column: 20, scope: !1614)
!1677 = !DILocation(line: 814, column: 62, scope: !1614)
!1678 = !DILocation(line: 811, column: 10, scope: !1614)
!1679 = !DILocation(line: 220, column: 20, scope: !1646, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 815, column: 15, scope: !1614)
!1681 = !DILocation(line: 222, column: 10, scope: !1646, inlinedAt: !1680)
!1682 = !DILocation(line: 815, column: 9, scope: !1614)
!1683 = !DILocation(line: 816, column: 60, scope: !1614)
!1684 = !DILocation(line: 818, column: 32, scope: !1614)
!1685 = !DILocation(line: 818, column: 47, scope: !1614)
!1686 = !DILocation(line: 816, column: 3, scope: !1614)
!1687 = !DILocation(line: 819, column: 9, scope: !1614)
!1688 = !DILocation(line: 820, column: 7, scope: !1614)
!1689 = !DILocation(line: 821, column: 11, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 820, column: 7)
!1691 = !{!1692, !1692, i64 0}
!1692 = !{!"long", !563, i64 0}
!1693 = !DILocation(line: 821, column: 5, scope: !1690)
!1694 = !DILocation(line: 822, column: 3, scope: !1614)
!1695 = distinct !DISubprogram(name: "quotearg_free", scope: !82, file: !82, line: 840, type: !632, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1696)
!1696 = !{!1697, !1698}
!1697 = !DILocalVariable(name: "sv", scope: !1695, file: !82, line: 842, type: !109)
!1698 = !DILocalVariable(name: "i", scope: !1695, file: !82, line: 843, type: !25)
!1699 = !DILocation(line: 842, column: 24, scope: !1695)
!1700 = !DILocation(line: 842, column: 19, scope: !1695)
!1701 = !DILocation(line: 843, column: 7, scope: !1695)
!1702 = !DILocation(line: 844, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !82, line: 844, column: 3)
!1704 = distinct !DILexicalBlock(scope: !1695, file: !82, line: 844, column: 3)
!1705 = !DILocation(line: 844, column: 17, scope: !1703)
!1706 = !DILocation(line: 844, column: 3, scope: !1704)
!1707 = !DILocation(line: 845, column: 17, scope: !1703)
!1708 = !{!1709, !562, i64 8}
!1709 = !{!"slotvec", !1692, i64 0, !562, i64 8}
!1710 = !DILocation(line: 845, column: 5, scope: !1703)
!1711 = !DILocation(line: 844, column: 28, scope: !1703)
!1712 = distinct !{!1712, !1706, !1713}
!1713 = !DILocation(line: 845, column: 20, scope: !1704)
!1714 = !DILocation(line: 846, column: 13, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1695, file: !82, line: 846, column: 7)
!1716 = !DILocation(line: 846, column: 17, scope: !1715)
!1717 = !DILocation(line: 846, column: 7, scope: !1695)
!1718 = !DILocation(line: 848, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !82, line: 847, column: 5)
!1720 = !DILocation(line: 849, column: 21, scope: !1719)
!1721 = !{!1709, !1692, i64 0}
!1722 = !DILocation(line: 850, column: 20, scope: !1719)
!1723 = !DILocation(line: 851, column: 5, scope: !1719)
!1724 = !DILocation(line: 852, column: 10, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1695, file: !82, line: 852, column: 7)
!1726 = !DILocation(line: 852, column: 7, scope: !1695)
!1727 = !DILocation(line: 854, column: 13, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !82, line: 853, column: 5)
!1729 = !DILocation(line: 854, column: 7, scope: !1728)
!1730 = !DILocation(line: 855, column: 15, scope: !1728)
!1731 = !DILocation(line: 856, column: 5, scope: !1728)
!1732 = !DILocation(line: 857, column: 10, scope: !1695)
!1733 = !DILocation(line: 858, column: 1, scope: !1695)
!1734 = distinct !DISubprogram(name: "quotearg_n", scope: !82, file: !82, line: 922, type: !1735, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1737)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!32, !25, !6}
!1737 = !{!1738, !1739}
!1738 = !DILocalVariable(name: "n", arg: 1, scope: !1734, file: !82, line: 922, type: !25)
!1739 = !DILocalVariable(name: "arg", arg: 2, scope: !1734, file: !82, line: 922, type: !6)
!1740 = !DILocation(line: 922, column: 17, scope: !1734)
!1741 = !DILocation(line: 922, column: 32, scope: !1734)
!1742 = !DILocation(line: 924, column: 10, scope: !1734)
!1743 = !DILocation(line: 924, column: 3, scope: !1734)
!1744 = distinct !DISubprogram(name: "quotearg_n_options", scope: !82, file: !82, line: 869, type: !1745, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!32, !25, !6, !76, !727}
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754, !1757, !1759, !1760, !1761}
!1748 = !DILocalVariable(name: "n", arg: 1, scope: !1744, file: !82, line: 869, type: !25)
!1749 = !DILocalVariable(name: "arg", arg: 2, scope: !1744, file: !82, line: 869, type: !6)
!1750 = !DILocalVariable(name: "argsize", arg: 3, scope: !1744, file: !82, line: 869, type: !76)
!1751 = !DILocalVariable(name: "options", arg: 4, scope: !1744, file: !82, line: 870, type: !727)
!1752 = !DILocalVariable(name: "e", scope: !1744, file: !82, line: 872, type: !25)
!1753 = !DILocalVariable(name: "sv", scope: !1744, file: !82, line: 874, type: !109)
!1754 = !DILocalVariable(name: "preallocated", scope: !1755, file: !82, line: 881, type: !17)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !82, line: 880, column: 5)
!1756 = distinct !DILexicalBlock(scope: !1744, file: !82, line: 879, column: 7)
!1757 = !DILocalVariable(name: "size", scope: !1758, file: !82, line: 894, type: !76)
!1758 = distinct !DILexicalBlock(scope: !1744, file: !82, line: 893, column: 3)
!1759 = !DILocalVariable(name: "val", scope: !1758, file: !82, line: 895, type: !32)
!1760 = !DILocalVariable(name: "flags", scope: !1758, file: !82, line: 897, type: !25)
!1761 = !DILocalVariable(name: "qsize", scope: !1758, file: !82, line: 898, type: !76)
!1762 = !DILocation(line: 869, column: 25, scope: !1744)
!1763 = !DILocation(line: 869, column: 40, scope: !1744)
!1764 = !DILocation(line: 869, column: 52, scope: !1744)
!1765 = !DILocation(line: 870, column: 51, scope: !1744)
!1766 = !DILocation(line: 872, column: 11, scope: !1744)
!1767 = !DILocation(line: 872, column: 7, scope: !1744)
!1768 = !DILocation(line: 874, column: 24, scope: !1744)
!1769 = !DILocation(line: 874, column: 19, scope: !1744)
!1770 = !DILocation(line: 876, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1744, file: !82, line: 876, column: 7)
!1772 = !DILocation(line: 876, column: 7, scope: !1744)
!1773 = !DILocation(line: 877, column: 5, scope: !1771)
!1774 = !DILocation(line: 879, column: 7, scope: !1756)
!1775 = !DILocation(line: 879, column: 14, scope: !1756)
!1776 = !DILocation(line: 879, column: 7, scope: !1744)
!1777 = !DILocation(line: 881, column: 31, scope: !1755)
!1778 = !DILocation(line: 883, column: 67, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1755, file: !82, line: 883, column: 11)
!1780 = !DILocation(line: 883, column: 11, scope: !1755)
!1781 = !DILocation(line: 884, column: 9, scope: !1779)
!1782 = !DILocation(line: 886, column: 32, scope: !1755)
!1783 = !DILocation(line: 886, column: 61, scope: !1755)
!1784 = !DILocation(line: 886, column: 58, scope: !1755)
!1785 = !DILocation(line: 886, column: 66, scope: !1755)
!1786 = !DILocation(line: 886, column: 22, scope: !1755)
!1787 = !DILocation(line: 886, column: 15, scope: !1755)
!1788 = !DILocation(line: 887, column: 11, scope: !1755)
!1789 = !DILocation(line: 888, column: 15, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1755, file: !82, line: 887, column: 11)
!1791 = !{i64 0, i64 8, !1691, i64 8, i64 8, !561}
!1792 = !DILocation(line: 888, column: 9, scope: !1790)
!1793 = !DILocation(line: 889, column: 20, scope: !1755)
!1794 = !DILocation(line: 889, column: 18, scope: !1755)
!1795 = !DILocation(line: 889, column: 7, scope: !1755)
!1796 = !DILocation(line: 889, column: 38, scope: !1755)
!1797 = !DILocation(line: 889, column: 31, scope: !1755)
!1798 = !DILocation(line: 889, column: 48, scope: !1755)
!1799 = !DILocation(line: 890, column: 14, scope: !1755)
!1800 = !DILocation(line: 891, column: 5, scope: !1755)
!1801 = !DILocation(line: 894, column: 19, scope: !1758)
!1802 = !DILocation(line: 894, column: 25, scope: !1758)
!1803 = !DILocation(line: 894, column: 12, scope: !1758)
!1804 = !DILocation(line: 895, column: 23, scope: !1758)
!1805 = !DILocation(line: 895, column: 11, scope: !1758)
!1806 = !DILocation(line: 897, column: 26, scope: !1758)
!1807 = !DILocation(line: 897, column: 32, scope: !1758)
!1808 = !DILocation(line: 897, column: 9, scope: !1758)
!1809 = !DILocation(line: 899, column: 55, scope: !1758)
!1810 = !DILocation(line: 900, column: 46, scope: !1758)
!1811 = !DILocation(line: 901, column: 55, scope: !1758)
!1812 = !DILocation(line: 902, column: 55, scope: !1758)
!1813 = !DILocation(line: 898, column: 20, scope: !1758)
!1814 = !DILocation(line: 898, column: 12, scope: !1758)
!1815 = !DILocation(line: 904, column: 14, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1758, file: !82, line: 904, column: 9)
!1817 = !DILocation(line: 904, column: 9, scope: !1758)
!1818 = !DILocation(line: 906, column: 35, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !82, line: 905, column: 7)
!1820 = !DILocation(line: 906, column: 20, scope: !1819)
!1821 = !DILocation(line: 907, column: 17, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !82, line: 907, column: 13)
!1823 = !DILocation(line: 907, column: 13, scope: !1819)
!1824 = !DILocation(line: 908, column: 11, scope: !1822)
!1825 = !DILocation(line: 220, column: 20, scope: !1646, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 909, column: 27, scope: !1819)
!1827 = !DILocation(line: 222, column: 10, scope: !1646, inlinedAt: !1826)
!1828 = !DILocation(line: 909, column: 19, scope: !1819)
!1829 = !DILocation(line: 910, column: 69, scope: !1819)
!1830 = !DILocation(line: 912, column: 44, scope: !1819)
!1831 = !DILocation(line: 913, column: 44, scope: !1819)
!1832 = !DILocation(line: 910, column: 9, scope: !1819)
!1833 = !DILocation(line: 914, column: 7, scope: !1819)
!1834 = !DILocation(line: 916, column: 11, scope: !1758)
!1835 = !DILocation(line: 917, column: 5, scope: !1758)
!1836 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !82, file: !82, line: 928, type: !1837, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!32, !25, !6, !76}
!1839 = !{!1840, !1841, !1842}
!1840 = !DILocalVariable(name: "n", arg: 1, scope: !1836, file: !82, line: 928, type: !25)
!1841 = !DILocalVariable(name: "arg", arg: 2, scope: !1836, file: !82, line: 928, type: !6)
!1842 = !DILocalVariable(name: "argsize", arg: 3, scope: !1836, file: !82, line: 928, type: !76)
!1843 = !DILocation(line: 928, column: 21, scope: !1836)
!1844 = !DILocation(line: 928, column: 36, scope: !1836)
!1845 = !DILocation(line: 928, column: 48, scope: !1836)
!1846 = !DILocation(line: 930, column: 10, scope: !1836)
!1847 = !DILocation(line: 930, column: 3, scope: !1836)
!1848 = distinct !DISubprogram(name: "quotearg", scope: !82, file: !82, line: 934, type: !1849, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!32, !6}
!1851 = !{!1852}
!1852 = !DILocalVariable(name: "arg", arg: 1, scope: !1848, file: !82, line: 934, type: !6)
!1853 = !DILocation(line: 934, column: 23, scope: !1848)
!1854 = !DILocation(line: 922, column: 17, scope: !1734, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 936, column: 10, scope: !1848)
!1856 = !DILocation(line: 922, column: 32, scope: !1734, inlinedAt: !1855)
!1857 = !DILocation(line: 924, column: 10, scope: !1734, inlinedAt: !1855)
!1858 = !DILocation(line: 936, column: 3, scope: !1848)
!1859 = distinct !DISubprogram(name: "quotearg_mem", scope: !82, file: !82, line: 940, type: !1860, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!32, !6, !76}
!1862 = !{!1863, !1864}
!1863 = !DILocalVariable(name: "arg", arg: 1, scope: !1859, file: !82, line: 940, type: !6)
!1864 = !DILocalVariable(name: "argsize", arg: 2, scope: !1859, file: !82, line: 940, type: !76)
!1865 = !DILocation(line: 940, column: 27, scope: !1859)
!1866 = !DILocation(line: 940, column: 39, scope: !1859)
!1867 = !DILocation(line: 928, column: 21, scope: !1836, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 942, column: 10, scope: !1859)
!1869 = !DILocation(line: 928, column: 36, scope: !1836, inlinedAt: !1868)
!1870 = !DILocation(line: 928, column: 48, scope: !1836, inlinedAt: !1868)
!1871 = !DILocation(line: 930, column: 10, scope: !1836, inlinedAt: !1868)
!1872 = !DILocation(line: 942, column: 3, scope: !1859)
!1873 = distinct !DISubprogram(name: "quotearg_n_style", scope: !82, file: !82, line: 946, type: !1874, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1876)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!32, !25, !40, !6}
!1876 = !{!1877, !1878, !1879, !1880}
!1877 = !DILocalVariable(name: "n", arg: 1, scope: !1873, file: !82, line: 946, type: !25)
!1878 = !DILocalVariable(name: "s", arg: 2, scope: !1873, file: !82, line: 946, type: !40)
!1879 = !DILocalVariable(name: "arg", arg: 3, scope: !1873, file: !82, line: 946, type: !6)
!1880 = !DILocalVariable(name: "o", scope: !1873, file: !82, line: 948, type: !728)
!1881 = !DILocalVariable(name: "o", scope: !1882, file: !82, line: 187, type: !89)
!1882 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !82, file: !82, line: 185, type: !1883, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!89, !40}
!1885 = !{!1886, !1881}
!1886 = !DILocalVariable(name: "style", arg: 1, scope: !1882, file: !82, line: 185, type: !40)
!1887 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!1888 = !DILocation(line: 187, column: 26, scope: !1882, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 948, column: 36, scope: !1873)
!1890 = !DILocation(line: 946, column: 23, scope: !1873)
!1891 = !DILocation(line: 946, column: 45, scope: !1873)
!1892 = !DILocation(line: 946, column: 60, scope: !1873)
!1893 = !DILocation(line: 948, column: 3, scope: !1873)
!1894 = !DILocation(line: 948, column: 32, scope: !1873)
!1895 = !DILocation(line: 185, column: 48, scope: !1882, inlinedAt: !1889)
!1896 = !DILocation(line: 187, column: 3, scope: !1882, inlinedAt: !1889)
!1897 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!1898 = !DILocation(line: 188, column: 13, scope: !1899, inlinedAt: !1889)
!1899 = distinct !DILexicalBlock(scope: !1882, file: !82, line: 188, column: 7)
!1900 = !DILocation(line: 188, column: 7, scope: !1882, inlinedAt: !1889)
!1901 = !DILocation(line: 189, column: 5, scope: !1899, inlinedAt: !1889)
!1902 = !{!1903}
!1903 = distinct !{!1903, !1904, !"quoting_options_from_style: argument 0"}
!1904 = distinct !{!1904, !"quoting_options_from_style"}
!1905 = !DILocation(line: 191, column: 10, scope: !1882, inlinedAt: !1889)
!1906 = !DILocation(line: 192, column: 1, scope: !1882, inlinedAt: !1889)
!1907 = !DILocation(line: 949, column: 10, scope: !1873)
!1908 = !DILocation(line: 950, column: 1, scope: !1873)
!1909 = !DILocation(line: 949, column: 3, scope: !1873)
!1910 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !82, file: !82, line: 953, type: !1911, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!32, !25, !40, !6, !76}
!1913 = !{!1914, !1915, !1916, !1917, !1918}
!1914 = !DILocalVariable(name: "n", arg: 1, scope: !1910, file: !82, line: 953, type: !25)
!1915 = !DILocalVariable(name: "s", arg: 2, scope: !1910, file: !82, line: 953, type: !40)
!1916 = !DILocalVariable(name: "arg", arg: 3, scope: !1910, file: !82, line: 954, type: !6)
!1917 = !DILocalVariable(name: "argsize", arg: 4, scope: !1910, file: !82, line: 954, type: !76)
!1918 = !DILocalVariable(name: "o", scope: !1910, file: !82, line: 956, type: !728)
!1919 = !DILocation(line: 187, column: 26, scope: !1882, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 956, column: 36, scope: !1910)
!1921 = !DILocation(line: 953, column: 27, scope: !1910)
!1922 = !DILocation(line: 953, column: 49, scope: !1910)
!1923 = !DILocation(line: 954, column: 35, scope: !1910)
!1924 = !DILocation(line: 954, column: 47, scope: !1910)
!1925 = !DILocation(line: 956, column: 3, scope: !1910)
!1926 = !DILocation(line: 956, column: 32, scope: !1910)
!1927 = !DILocation(line: 185, column: 48, scope: !1882, inlinedAt: !1920)
!1928 = !DILocation(line: 187, column: 3, scope: !1882, inlinedAt: !1920)
!1929 = !DILocation(line: 188, column: 13, scope: !1899, inlinedAt: !1920)
!1930 = !DILocation(line: 188, column: 7, scope: !1882, inlinedAt: !1920)
!1931 = !DILocation(line: 189, column: 5, scope: !1899, inlinedAt: !1920)
!1932 = !{!1933}
!1933 = distinct !{!1933, !1934, !"quoting_options_from_style: argument 0"}
!1934 = distinct !{!1934, !"quoting_options_from_style"}
!1935 = !DILocation(line: 191, column: 10, scope: !1882, inlinedAt: !1920)
!1936 = !DILocation(line: 192, column: 1, scope: !1882, inlinedAt: !1920)
!1937 = !DILocation(line: 957, column: 10, scope: !1910)
!1938 = !DILocation(line: 958, column: 1, scope: !1910)
!1939 = !DILocation(line: 957, column: 3, scope: !1910)
!1940 = distinct !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 961, type: !1941, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!32, !40, !6}
!1943 = !{!1944, !1945}
!1944 = !DILocalVariable(name: "s", arg: 1, scope: !1940, file: !82, line: 961, type: !40)
!1945 = !DILocalVariable(name: "arg", arg: 2, scope: !1940, file: !82, line: 961, type: !6)
!1946 = !DILocation(line: 187, column: 26, scope: !1882, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 948, column: 36, scope: !1873, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 963, column: 10, scope: !1940)
!1949 = !DILocation(line: 961, column: 36, scope: !1940)
!1950 = !DILocation(line: 961, column: 51, scope: !1940)
!1951 = !DILocation(line: 946, column: 23, scope: !1873, inlinedAt: !1948)
!1952 = !DILocation(line: 946, column: 45, scope: !1873, inlinedAt: !1948)
!1953 = !DILocation(line: 946, column: 60, scope: !1873, inlinedAt: !1948)
!1954 = !DILocation(line: 948, column: 3, scope: !1873, inlinedAt: !1948)
!1955 = !DILocation(line: 948, column: 32, scope: !1873, inlinedAt: !1948)
!1956 = !DILocation(line: 185, column: 48, scope: !1882, inlinedAt: !1947)
!1957 = !DILocation(line: 187, column: 3, scope: !1882, inlinedAt: !1947)
!1958 = !DILocation(line: 188, column: 13, scope: !1899, inlinedAt: !1947)
!1959 = !DILocation(line: 188, column: 7, scope: !1882, inlinedAt: !1947)
!1960 = !DILocation(line: 189, column: 5, scope: !1899, inlinedAt: !1947)
!1961 = !{!1962}
!1962 = distinct !{!1962, !1963, !"quoting_options_from_style: argument 0"}
!1963 = distinct !{!1963, !"quoting_options_from_style"}
!1964 = !DILocation(line: 191, column: 10, scope: !1882, inlinedAt: !1947)
!1965 = !DILocation(line: 192, column: 1, scope: !1882, inlinedAt: !1947)
!1966 = !DILocation(line: 949, column: 10, scope: !1873, inlinedAt: !1948)
!1967 = !DILocation(line: 950, column: 1, scope: !1873, inlinedAt: !1948)
!1968 = !DILocation(line: 963, column: 3, scope: !1940)
!1969 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !82, file: !82, line: 967, type: !1970, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!32, !40, !6, !76}
!1972 = !{!1973, !1974, !1975}
!1973 = !DILocalVariable(name: "s", arg: 1, scope: !1969, file: !82, line: 967, type: !40)
!1974 = !DILocalVariable(name: "arg", arg: 2, scope: !1969, file: !82, line: 967, type: !6)
!1975 = !DILocalVariable(name: "argsize", arg: 3, scope: !1969, file: !82, line: 967, type: !76)
!1976 = !DILocation(line: 187, column: 26, scope: !1882, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 956, column: 36, scope: !1910, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 969, column: 10, scope: !1969)
!1979 = !DILocation(line: 967, column: 40, scope: !1969)
!1980 = !DILocation(line: 967, column: 55, scope: !1969)
!1981 = !DILocation(line: 967, column: 67, scope: !1969)
!1982 = !DILocation(line: 953, column: 27, scope: !1910, inlinedAt: !1978)
!1983 = !DILocation(line: 953, column: 49, scope: !1910, inlinedAt: !1978)
!1984 = !DILocation(line: 954, column: 35, scope: !1910, inlinedAt: !1978)
!1985 = !DILocation(line: 954, column: 47, scope: !1910, inlinedAt: !1978)
!1986 = !DILocation(line: 956, column: 3, scope: !1910, inlinedAt: !1978)
!1987 = !DILocation(line: 956, column: 32, scope: !1910, inlinedAt: !1978)
!1988 = !DILocation(line: 185, column: 48, scope: !1882, inlinedAt: !1977)
!1989 = !DILocation(line: 187, column: 3, scope: !1882, inlinedAt: !1977)
!1990 = !DILocation(line: 188, column: 13, scope: !1899, inlinedAt: !1977)
!1991 = !DILocation(line: 188, column: 7, scope: !1882, inlinedAt: !1977)
!1992 = !DILocation(line: 189, column: 5, scope: !1899, inlinedAt: !1977)
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"quoting_options_from_style: argument 0"}
!1995 = distinct !{!1995, !"quoting_options_from_style"}
!1996 = !DILocation(line: 191, column: 10, scope: !1882, inlinedAt: !1977)
!1997 = !DILocation(line: 192, column: 1, scope: !1882, inlinedAt: !1977)
!1998 = !DILocation(line: 957, column: 10, scope: !1910, inlinedAt: !1978)
!1999 = !DILocation(line: 958, column: 1, scope: !1910, inlinedAt: !1978)
!2000 = !DILocation(line: 969, column: 3, scope: !1969)
!2001 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !82, file: !82, line: 973, type: !2002, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!32, !6, !76, !8}
!2004 = !{!2005, !2006, !2007, !2008}
!2005 = !DILocalVariable(name: "arg", arg: 1, scope: !2001, file: !82, line: 973, type: !6)
!2006 = !DILocalVariable(name: "argsize", arg: 2, scope: !2001, file: !82, line: 973, type: !76)
!2007 = !DILocalVariable(name: "ch", arg: 3, scope: !2001, file: !82, line: 973, type: !8)
!2008 = !DILocalVariable(name: "options", scope: !2001, file: !82, line: 975, type: !89)
!2009 = !DILocation(line: 973, column: 32, scope: !2001)
!2010 = !DILocation(line: 973, column: 44, scope: !2001)
!2011 = !DILocation(line: 973, column: 58, scope: !2001)
!2012 = !DILocation(line: 975, column: 3, scope: !2001)
!2013 = !DILocation(line: 976, column: 13, scope: !2001)
!2014 = !{i64 0, i64 4, !955, i64 4, i64 4, !648, i64 8, i64 32, !955, i64 40, i64 8, !561, i64 48, i64 8, !561}
!2015 = !DILocation(line: 975, column: 26, scope: !2001)
!2016 = !DILocation(line: 144, column: 43, scope: !749, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 977, column: 3, scope: !2001)
!2018 = !DILocation(line: 144, column: 51, scope: !749, inlinedAt: !2017)
!2019 = !DILocation(line: 144, column: 58, scope: !749, inlinedAt: !2017)
!2020 = !DILocation(line: 146, column: 17, scope: !749, inlinedAt: !2017)
!2021 = !DILocation(line: 148, column: 62, scope: !749, inlinedAt: !2017)
!2022 = !DILocation(line: 148, column: 57, scope: !749, inlinedAt: !2017)
!2023 = !DILocation(line: 147, column: 17, scope: !749, inlinedAt: !2017)
!2024 = !DILocation(line: 149, column: 18, scope: !749, inlinedAt: !2017)
!2025 = !DILocation(line: 149, column: 15, scope: !749, inlinedAt: !2017)
!2026 = !DILocation(line: 149, column: 7, scope: !749, inlinedAt: !2017)
!2027 = !DILocation(line: 150, column: 12, scope: !749, inlinedAt: !2017)
!2028 = !DILocation(line: 150, column: 15, scope: !749, inlinedAt: !2017)
!2029 = !DILocation(line: 150, column: 25, scope: !749, inlinedAt: !2017)
!2030 = !DILocation(line: 150, column: 7, scope: !749, inlinedAt: !2017)
!2031 = !DILocation(line: 151, column: 18, scope: !749, inlinedAt: !2017)
!2032 = !DILocation(line: 151, column: 23, scope: !749, inlinedAt: !2017)
!2033 = !DILocation(line: 151, column: 6, scope: !749, inlinedAt: !2017)
!2034 = !DILocation(line: 978, column: 10, scope: !2001)
!2035 = !DILocation(line: 979, column: 1, scope: !2001)
!2036 = !DILocation(line: 978, column: 3, scope: !2001)
!2037 = distinct !DISubprogram(name: "quotearg_char", scope: !82, file: !82, line: 982, type: !2038, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!32, !6, !8}
!2040 = !{!2041, !2042}
!2041 = !DILocalVariable(name: "arg", arg: 1, scope: !2037, file: !82, line: 982, type: !6)
!2042 = !DILocalVariable(name: "ch", arg: 2, scope: !2037, file: !82, line: 982, type: !8)
!2043 = !DILocation(line: 982, column: 28, scope: !2037)
!2044 = !DILocation(line: 982, column: 38, scope: !2037)
!2045 = !DILocation(line: 973, column: 32, scope: !2001, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 984, column: 10, scope: !2037)
!2047 = !DILocation(line: 973, column: 44, scope: !2001, inlinedAt: !2046)
!2048 = !DILocation(line: 973, column: 58, scope: !2001, inlinedAt: !2046)
!2049 = !DILocation(line: 975, column: 3, scope: !2001, inlinedAt: !2046)
!2050 = !DILocation(line: 976, column: 13, scope: !2001, inlinedAt: !2046)
!2051 = !DILocation(line: 975, column: 26, scope: !2001, inlinedAt: !2046)
!2052 = !DILocation(line: 144, column: 43, scope: !749, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 977, column: 3, scope: !2001, inlinedAt: !2046)
!2054 = !DILocation(line: 144, column: 51, scope: !749, inlinedAt: !2053)
!2055 = !DILocation(line: 144, column: 58, scope: !749, inlinedAt: !2053)
!2056 = !DILocation(line: 146, column: 17, scope: !749, inlinedAt: !2053)
!2057 = !DILocation(line: 148, column: 62, scope: !749, inlinedAt: !2053)
!2058 = !DILocation(line: 148, column: 57, scope: !749, inlinedAt: !2053)
!2059 = !DILocation(line: 147, column: 17, scope: !749, inlinedAt: !2053)
!2060 = !DILocation(line: 149, column: 18, scope: !749, inlinedAt: !2053)
!2061 = !DILocation(line: 149, column: 15, scope: !749, inlinedAt: !2053)
!2062 = !DILocation(line: 149, column: 7, scope: !749, inlinedAt: !2053)
!2063 = !DILocation(line: 150, column: 12, scope: !749, inlinedAt: !2053)
!2064 = !DILocation(line: 150, column: 15, scope: !749, inlinedAt: !2053)
!2065 = !DILocation(line: 150, column: 25, scope: !749, inlinedAt: !2053)
!2066 = !DILocation(line: 150, column: 7, scope: !749, inlinedAt: !2053)
!2067 = !DILocation(line: 151, column: 18, scope: !749, inlinedAt: !2053)
!2068 = !DILocation(line: 151, column: 23, scope: !749, inlinedAt: !2053)
!2069 = !DILocation(line: 151, column: 6, scope: !749, inlinedAt: !2053)
!2070 = !DILocation(line: 978, column: 10, scope: !2001, inlinedAt: !2046)
!2071 = !DILocation(line: 979, column: 1, scope: !2001, inlinedAt: !2046)
!2072 = !DILocation(line: 984, column: 3, scope: !2037)
!2073 = distinct !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 988, type: !1849, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2074)
!2074 = !{!2075}
!2075 = !DILocalVariable(name: "arg", arg: 1, scope: !2073, file: !82, line: 988, type: !6)
!2076 = !DILocation(line: 988, column: 29, scope: !2073)
!2077 = !DILocation(line: 982, column: 28, scope: !2037, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 990, column: 10, scope: !2073)
!2079 = !DILocation(line: 982, column: 38, scope: !2037, inlinedAt: !2078)
!2080 = !DILocation(line: 973, column: 32, scope: !2001, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 984, column: 10, scope: !2037, inlinedAt: !2078)
!2082 = !DILocation(line: 973, column: 44, scope: !2001, inlinedAt: !2081)
!2083 = !DILocation(line: 973, column: 58, scope: !2001, inlinedAt: !2081)
!2084 = !DILocation(line: 975, column: 3, scope: !2001, inlinedAt: !2081)
!2085 = !DILocation(line: 976, column: 13, scope: !2001, inlinedAt: !2081)
!2086 = !DILocation(line: 975, column: 26, scope: !2001, inlinedAt: !2081)
!2087 = !DILocation(line: 144, column: 43, scope: !749, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 977, column: 3, scope: !2001, inlinedAt: !2081)
!2089 = !DILocation(line: 144, column: 51, scope: !749, inlinedAt: !2088)
!2090 = !DILocation(line: 144, column: 58, scope: !749, inlinedAt: !2088)
!2091 = !DILocation(line: 146, column: 17, scope: !749, inlinedAt: !2088)
!2092 = !DILocation(line: 148, column: 57, scope: !749, inlinedAt: !2088)
!2093 = !DILocation(line: 147, column: 17, scope: !749, inlinedAt: !2088)
!2094 = !DILocation(line: 149, column: 7, scope: !749, inlinedAt: !2088)
!2095 = !DILocation(line: 150, column: 12, scope: !749, inlinedAt: !2088)
!2096 = !DILocation(line: 151, column: 6, scope: !749, inlinedAt: !2088)
!2097 = !DILocation(line: 978, column: 10, scope: !2001, inlinedAt: !2081)
!2098 = !DILocation(line: 979, column: 1, scope: !2001, inlinedAt: !2081)
!2099 = !DILocation(line: 990, column: 3, scope: !2073)
!2100 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !82, file: !82, line: 994, type: !1860, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2101)
!2101 = !{!2102, !2103}
!2102 = !DILocalVariable(name: "arg", arg: 1, scope: !2100, file: !82, line: 994, type: !6)
!2103 = !DILocalVariable(name: "argsize", arg: 2, scope: !2100, file: !82, line: 994, type: !76)
!2104 = !DILocation(line: 994, column: 33, scope: !2100)
!2105 = !DILocation(line: 994, column: 45, scope: !2100)
!2106 = !DILocation(line: 973, column: 32, scope: !2001, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 996, column: 10, scope: !2100)
!2108 = !DILocation(line: 973, column: 44, scope: !2001, inlinedAt: !2107)
!2109 = !DILocation(line: 973, column: 58, scope: !2001, inlinedAt: !2107)
!2110 = !DILocation(line: 975, column: 3, scope: !2001, inlinedAt: !2107)
!2111 = !DILocation(line: 976, column: 13, scope: !2001, inlinedAt: !2107)
!2112 = !DILocation(line: 975, column: 26, scope: !2001, inlinedAt: !2107)
!2113 = !DILocation(line: 144, column: 43, scope: !749, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 977, column: 3, scope: !2001, inlinedAt: !2107)
!2115 = !DILocation(line: 144, column: 51, scope: !749, inlinedAt: !2114)
!2116 = !DILocation(line: 144, column: 58, scope: !749, inlinedAt: !2114)
!2117 = !DILocation(line: 146, column: 17, scope: !749, inlinedAt: !2114)
!2118 = !DILocation(line: 148, column: 57, scope: !749, inlinedAt: !2114)
!2119 = !DILocation(line: 147, column: 17, scope: !749, inlinedAt: !2114)
!2120 = !DILocation(line: 149, column: 7, scope: !749, inlinedAt: !2114)
!2121 = !DILocation(line: 150, column: 12, scope: !749, inlinedAt: !2114)
!2122 = !DILocation(line: 151, column: 6, scope: !749, inlinedAt: !2114)
!2123 = !DILocation(line: 978, column: 10, scope: !2001, inlinedAt: !2107)
!2124 = !DILocation(line: 979, column: 1, scope: !2001, inlinedAt: !2107)
!2125 = !DILocation(line: 996, column: 3, scope: !2100)
!2126 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !82, file: !82, line: 1000, type: !1874, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2127)
!2127 = !{!2128, !2129, !2130, !2131}
!2128 = !DILocalVariable(name: "n", arg: 1, scope: !2126, file: !82, line: 1000, type: !25)
!2129 = !DILocalVariable(name: "s", arg: 2, scope: !2126, file: !82, line: 1000, type: !40)
!2130 = !DILocalVariable(name: "arg", arg: 3, scope: !2126, file: !82, line: 1000, type: !6)
!2131 = !DILocalVariable(name: "options", scope: !2126, file: !82, line: 1002, type: !89)
!2132 = !DILocation(line: 187, column: 26, scope: !1882, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 1003, column: 13, scope: !2126)
!2134 = !DILocation(line: 1000, column: 29, scope: !2126)
!2135 = !DILocation(line: 1000, column: 51, scope: !2126)
!2136 = !DILocation(line: 1000, column: 66, scope: !2126)
!2137 = !DILocation(line: 1002, column: 3, scope: !2126)
!2138 = !DILocation(line: 185, column: 48, scope: !1882, inlinedAt: !2133)
!2139 = !DILocation(line: 187, column: 3, scope: !1882, inlinedAt: !2133)
!2140 = !DILocation(line: 188, column: 13, scope: !1899, inlinedAt: !2133)
!2141 = !DILocation(line: 188, column: 7, scope: !1882, inlinedAt: !2133)
!2142 = !DILocation(line: 189, column: 5, scope: !1899, inlinedAt: !2133)
!2143 = !{!2144}
!2144 = distinct !{!2144, !2145, !"quoting_options_from_style: argument 0"}
!2145 = distinct !{!2145, !"quoting_options_from_style"}
!2146 = !DILocation(line: 191, column: 10, scope: !1882, inlinedAt: !2133)
!2147 = !DILocation(line: 192, column: 1, scope: !1882, inlinedAt: !2133)
!2148 = !DILocation(line: 1003, column: 13, scope: !2126)
!2149 = !DILocation(line: 1002, column: 26, scope: !2126)
!2150 = !DILocation(line: 144, column: 43, scope: !749, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 1004, column: 3, scope: !2126)
!2152 = !DILocation(line: 144, column: 51, scope: !749, inlinedAt: !2151)
!2153 = !DILocation(line: 144, column: 58, scope: !749, inlinedAt: !2151)
!2154 = !DILocation(line: 146, column: 17, scope: !749, inlinedAt: !2151)
!2155 = !DILocation(line: 148, column: 57, scope: !749, inlinedAt: !2151)
!2156 = !DILocation(line: 147, column: 17, scope: !749, inlinedAt: !2151)
!2157 = !DILocation(line: 149, column: 7, scope: !749, inlinedAt: !2151)
!2158 = !DILocation(line: 150, column: 12, scope: !749, inlinedAt: !2151)
!2159 = !DILocation(line: 151, column: 6, scope: !749, inlinedAt: !2151)
!2160 = !DILocation(line: 1005, column: 10, scope: !2126)
!2161 = !DILocation(line: 1006, column: 1, scope: !2126)
!2162 = !DILocation(line: 1005, column: 3, scope: !2126)
!2163 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !82, file: !82, line: 1009, type: !2164, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!32, !25, !6, !6, !6}
!2166 = !{!2167, !2168, !2169, !2170}
!2167 = !DILocalVariable(name: "n", arg: 1, scope: !2163, file: !82, line: 1009, type: !25)
!2168 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2163, file: !82, line: 1009, type: !6)
!2169 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2163, file: !82, line: 1010, type: !6)
!2170 = !DILocalVariable(name: "arg", arg: 4, scope: !2163, file: !82, line: 1010, type: !6)
!2171 = !DILocation(line: 1009, column: 24, scope: !2163)
!2172 = !DILocation(line: 1009, column: 39, scope: !2163)
!2173 = !DILocation(line: 1010, column: 32, scope: !2163)
!2174 = !DILocation(line: 1010, column: 57, scope: !2163)
!2175 = !DILocalVariable(name: "n", arg: 1, scope: !2176, file: !82, line: 1017, type: !25)
!2176 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 1017, type: !2177, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2179)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!32, !25, !6, !6, !6, !76}
!2179 = !{!2175, !2180, !2181, !2182, !2183, !2184}
!2180 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2176, file: !82, line: 1017, type: !6)
!2181 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2176, file: !82, line: 1018, type: !6)
!2182 = !DILocalVariable(name: "arg", arg: 4, scope: !2176, file: !82, line: 1019, type: !6)
!2183 = !DILocalVariable(name: "argsize", arg: 5, scope: !2176, file: !82, line: 1019, type: !76)
!2184 = !DILocalVariable(name: "o", scope: !2176, file: !82, line: 1021, type: !89)
!2185 = !DILocation(line: 1017, column: 28, scope: !2176, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 1012, column: 10, scope: !2163)
!2187 = !DILocation(line: 1017, column: 43, scope: !2176, inlinedAt: !2186)
!2188 = !DILocation(line: 1018, column: 36, scope: !2176, inlinedAt: !2186)
!2189 = !DILocation(line: 1019, column: 36, scope: !2176, inlinedAt: !2186)
!2190 = !DILocation(line: 1019, column: 48, scope: !2176, inlinedAt: !2186)
!2191 = !DILocation(line: 1021, column: 3, scope: !2176, inlinedAt: !2186)
!2192 = !DILocation(line: 1021, column: 30, scope: !2176, inlinedAt: !2186)
!2193 = !DILocation(line: 1021, column: 26, scope: !2176, inlinedAt: !2186)
!2194 = !DILocation(line: 171, column: 45, scope: !798, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 1022, column: 3, scope: !2176, inlinedAt: !2186)
!2196 = !DILocation(line: 172, column: 33, scope: !798, inlinedAt: !2195)
!2197 = !DILocation(line: 172, column: 57, scope: !798, inlinedAt: !2195)
!2198 = !DILocation(line: 176, column: 6, scope: !798, inlinedAt: !2195)
!2199 = !DILocation(line: 176, column: 12, scope: !798, inlinedAt: !2195)
!2200 = !DILocation(line: 177, column: 8, scope: !814, inlinedAt: !2195)
!2201 = !DILocation(line: 177, column: 23, scope: !814, inlinedAt: !2195)
!2202 = !DILocation(line: 177, column: 19, scope: !814, inlinedAt: !2195)
!2203 = !DILocation(line: 178, column: 5, scope: !814, inlinedAt: !2195)
!2204 = !DILocation(line: 179, column: 6, scope: !798, inlinedAt: !2195)
!2205 = !DILocation(line: 179, column: 17, scope: !798, inlinedAt: !2195)
!2206 = !DILocation(line: 180, column: 6, scope: !798, inlinedAt: !2195)
!2207 = !DILocation(line: 180, column: 18, scope: !798, inlinedAt: !2195)
!2208 = !DILocation(line: 1023, column: 10, scope: !2176, inlinedAt: !2186)
!2209 = !DILocation(line: 1024, column: 1, scope: !2176, inlinedAt: !2186)
!2210 = !DILocation(line: 1012, column: 3, scope: !2163)
!2211 = !DILocation(line: 1017, column: 28, scope: !2176)
!2212 = !DILocation(line: 1017, column: 43, scope: !2176)
!2213 = !DILocation(line: 1018, column: 36, scope: !2176)
!2214 = !DILocation(line: 1019, column: 36, scope: !2176)
!2215 = !DILocation(line: 1019, column: 48, scope: !2176)
!2216 = !DILocation(line: 1021, column: 3, scope: !2176)
!2217 = !DILocation(line: 1021, column: 30, scope: !2176)
!2218 = !DILocation(line: 1021, column: 26, scope: !2176)
!2219 = !DILocation(line: 171, column: 45, scope: !798, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 1022, column: 3, scope: !2176)
!2221 = !DILocation(line: 172, column: 33, scope: !798, inlinedAt: !2220)
!2222 = !DILocation(line: 172, column: 57, scope: !798, inlinedAt: !2220)
!2223 = !DILocation(line: 176, column: 6, scope: !798, inlinedAt: !2220)
!2224 = !DILocation(line: 176, column: 12, scope: !798, inlinedAt: !2220)
!2225 = !DILocation(line: 177, column: 8, scope: !814, inlinedAt: !2220)
!2226 = !DILocation(line: 177, column: 23, scope: !814, inlinedAt: !2220)
!2227 = !DILocation(line: 177, column: 19, scope: !814, inlinedAt: !2220)
!2228 = !DILocation(line: 178, column: 5, scope: !814, inlinedAt: !2220)
!2229 = !DILocation(line: 179, column: 6, scope: !798, inlinedAt: !2220)
!2230 = !DILocation(line: 179, column: 17, scope: !798, inlinedAt: !2220)
!2231 = !DILocation(line: 180, column: 6, scope: !798, inlinedAt: !2220)
!2232 = !DILocation(line: 180, column: 18, scope: !798, inlinedAt: !2220)
!2233 = !DILocation(line: 1023, column: 10, scope: !2176)
!2234 = !DILocation(line: 1024, column: 1, scope: !2176)
!2235 = !DILocation(line: 1023, column: 3, scope: !2176)
!2236 = distinct !DISubprogram(name: "quotearg_custom", scope: !82, file: !82, line: 1027, type: !2237, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!32, !6, !6, !6}
!2239 = !{!2240, !2241, !2242}
!2240 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2236, file: !82, line: 1027, type: !6)
!2241 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2236, file: !82, line: 1027, type: !6)
!2242 = !DILocalVariable(name: "arg", arg: 3, scope: !2236, file: !82, line: 1028, type: !6)
!2243 = !DILocation(line: 1027, column: 30, scope: !2236)
!2244 = !DILocation(line: 1027, column: 54, scope: !2236)
!2245 = !DILocation(line: 1028, column: 30, scope: !2236)
!2246 = !DILocation(line: 1009, column: 24, scope: !2163, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 1030, column: 10, scope: !2236)
!2248 = !DILocation(line: 1009, column: 39, scope: !2163, inlinedAt: !2247)
!2249 = !DILocation(line: 1010, column: 32, scope: !2163, inlinedAt: !2247)
!2250 = !DILocation(line: 1010, column: 57, scope: !2163, inlinedAt: !2247)
!2251 = !DILocation(line: 1017, column: 28, scope: !2176, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 1012, column: 10, scope: !2163, inlinedAt: !2247)
!2253 = !DILocation(line: 1017, column: 43, scope: !2176, inlinedAt: !2252)
!2254 = !DILocation(line: 1018, column: 36, scope: !2176, inlinedAt: !2252)
!2255 = !DILocation(line: 1019, column: 36, scope: !2176, inlinedAt: !2252)
!2256 = !DILocation(line: 1019, column: 48, scope: !2176, inlinedAt: !2252)
!2257 = !DILocation(line: 1021, column: 3, scope: !2176, inlinedAt: !2252)
!2258 = !DILocation(line: 1021, column: 30, scope: !2176, inlinedAt: !2252)
!2259 = !DILocation(line: 1021, column: 26, scope: !2176, inlinedAt: !2252)
!2260 = !DILocation(line: 171, column: 45, scope: !798, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 1022, column: 3, scope: !2176, inlinedAt: !2252)
!2262 = !DILocation(line: 172, column: 33, scope: !798, inlinedAt: !2261)
!2263 = !DILocation(line: 172, column: 57, scope: !798, inlinedAt: !2261)
!2264 = !DILocation(line: 176, column: 6, scope: !798, inlinedAt: !2261)
!2265 = !DILocation(line: 176, column: 12, scope: !798, inlinedAt: !2261)
!2266 = !DILocation(line: 177, column: 8, scope: !814, inlinedAt: !2261)
!2267 = !DILocation(line: 177, column: 23, scope: !814, inlinedAt: !2261)
!2268 = !DILocation(line: 177, column: 19, scope: !814, inlinedAt: !2261)
!2269 = !DILocation(line: 178, column: 5, scope: !814, inlinedAt: !2261)
!2270 = !DILocation(line: 179, column: 6, scope: !798, inlinedAt: !2261)
!2271 = !DILocation(line: 179, column: 17, scope: !798, inlinedAt: !2261)
!2272 = !DILocation(line: 180, column: 6, scope: !798, inlinedAt: !2261)
!2273 = !DILocation(line: 180, column: 18, scope: !798, inlinedAt: !2261)
!2274 = !DILocation(line: 1023, column: 10, scope: !2176, inlinedAt: !2252)
!2275 = !DILocation(line: 1024, column: 1, scope: !2176, inlinedAt: !2252)
!2276 = !DILocation(line: 1030, column: 3, scope: !2236)
!2277 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !82, file: !82, line: 1034, type: !2278, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!32, !6, !6, !6, !76}
!2280 = !{!2281, !2282, !2283, !2284}
!2281 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2277, file: !82, line: 1034, type: !6)
!2282 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2277, file: !82, line: 1034, type: !6)
!2283 = !DILocalVariable(name: "arg", arg: 3, scope: !2277, file: !82, line: 1035, type: !6)
!2284 = !DILocalVariable(name: "argsize", arg: 4, scope: !2277, file: !82, line: 1035, type: !76)
!2285 = !DILocation(line: 1034, column: 34, scope: !2277)
!2286 = !DILocation(line: 1034, column: 58, scope: !2277)
!2287 = !DILocation(line: 1035, column: 34, scope: !2277)
!2288 = !DILocation(line: 1035, column: 46, scope: !2277)
!2289 = !DILocation(line: 1017, column: 28, scope: !2176, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 1037, column: 10, scope: !2277)
!2291 = !DILocation(line: 1017, column: 43, scope: !2176, inlinedAt: !2290)
!2292 = !DILocation(line: 1018, column: 36, scope: !2176, inlinedAt: !2290)
!2293 = !DILocation(line: 1019, column: 36, scope: !2176, inlinedAt: !2290)
!2294 = !DILocation(line: 1019, column: 48, scope: !2176, inlinedAt: !2290)
!2295 = !DILocation(line: 1021, column: 3, scope: !2176, inlinedAt: !2290)
!2296 = !DILocation(line: 1021, column: 30, scope: !2176, inlinedAt: !2290)
!2297 = !DILocation(line: 1021, column: 26, scope: !2176, inlinedAt: !2290)
!2298 = !DILocation(line: 171, column: 45, scope: !798, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 1022, column: 3, scope: !2176, inlinedAt: !2290)
!2300 = !DILocation(line: 172, column: 33, scope: !798, inlinedAt: !2299)
!2301 = !DILocation(line: 172, column: 57, scope: !798, inlinedAt: !2299)
!2302 = !DILocation(line: 176, column: 6, scope: !798, inlinedAt: !2299)
!2303 = !DILocation(line: 176, column: 12, scope: !798, inlinedAt: !2299)
!2304 = !DILocation(line: 177, column: 8, scope: !814, inlinedAt: !2299)
!2305 = !DILocation(line: 177, column: 23, scope: !814, inlinedAt: !2299)
!2306 = !DILocation(line: 177, column: 19, scope: !814, inlinedAt: !2299)
!2307 = !DILocation(line: 178, column: 5, scope: !814, inlinedAt: !2299)
!2308 = !DILocation(line: 179, column: 6, scope: !798, inlinedAt: !2299)
!2309 = !DILocation(line: 179, column: 17, scope: !798, inlinedAt: !2299)
!2310 = !DILocation(line: 180, column: 6, scope: !798, inlinedAt: !2299)
!2311 = !DILocation(line: 180, column: 18, scope: !798, inlinedAt: !2299)
!2312 = !DILocation(line: 1023, column: 10, scope: !2176, inlinedAt: !2290)
!2313 = !DILocation(line: 1024, column: 1, scope: !2176, inlinedAt: !2290)
!2314 = !DILocation(line: 1037, column: 3, scope: !2277)
!2315 = distinct !DISubprogram(name: "quote_n_mem", scope: !82, file: !82, line: 1052, type: !2316, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!6, !25, !6, !76}
!2318 = !{!2319, !2320, !2321}
!2319 = !DILocalVariable(name: "n", arg: 1, scope: !2315, file: !82, line: 1052, type: !25)
!2320 = !DILocalVariable(name: "arg", arg: 2, scope: !2315, file: !82, line: 1052, type: !6)
!2321 = !DILocalVariable(name: "argsize", arg: 3, scope: !2315, file: !82, line: 1052, type: !76)
!2322 = !DILocation(line: 1052, column: 18, scope: !2315)
!2323 = !DILocation(line: 1052, column: 33, scope: !2315)
!2324 = !DILocation(line: 1052, column: 45, scope: !2315)
!2325 = !DILocation(line: 1054, column: 10, scope: !2315)
!2326 = !DILocation(line: 1054, column: 3, scope: !2315)
!2327 = distinct !DISubprogram(name: "quote_mem", scope: !82, file: !82, line: 1058, type: !2328, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!6, !6, !76}
!2330 = !{!2331, !2332}
!2331 = !DILocalVariable(name: "arg", arg: 1, scope: !2327, file: !82, line: 1058, type: !6)
!2332 = !DILocalVariable(name: "argsize", arg: 2, scope: !2327, file: !82, line: 1058, type: !76)
!2333 = !DILocation(line: 1058, column: 24, scope: !2327)
!2334 = !DILocation(line: 1058, column: 36, scope: !2327)
!2335 = !DILocation(line: 1052, column: 18, scope: !2315, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 1060, column: 10, scope: !2327)
!2337 = !DILocation(line: 1052, column: 33, scope: !2315, inlinedAt: !2336)
!2338 = !DILocation(line: 1052, column: 45, scope: !2315, inlinedAt: !2336)
!2339 = !DILocation(line: 1054, column: 10, scope: !2315, inlinedAt: !2336)
!2340 = !DILocation(line: 1060, column: 3, scope: !2327)
!2341 = distinct !DISubprogram(name: "quote_n", scope: !82, file: !82, line: 1064, type: !2342, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!6, !25, !6}
!2344 = !{!2345, !2346}
!2345 = !DILocalVariable(name: "n", arg: 1, scope: !2341, file: !82, line: 1064, type: !25)
!2346 = !DILocalVariable(name: "arg", arg: 2, scope: !2341, file: !82, line: 1064, type: !6)
!2347 = !DILocation(line: 1064, column: 14, scope: !2341)
!2348 = !DILocation(line: 1064, column: 29, scope: !2341)
!2349 = !DILocation(line: 1052, column: 18, scope: !2315, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 1066, column: 10, scope: !2341)
!2351 = !DILocation(line: 1052, column: 33, scope: !2315, inlinedAt: !2350)
!2352 = !DILocation(line: 1052, column: 45, scope: !2315, inlinedAt: !2350)
!2353 = !DILocation(line: 1054, column: 10, scope: !2315, inlinedAt: !2350)
!2354 = !DILocation(line: 1066, column: 3, scope: !2341)
!2355 = distinct !DISubprogram(name: "quote", scope: !82, file: !82, line: 1070, type: !2356, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!6, !6}
!2358 = !{!2359}
!2359 = !DILocalVariable(name: "arg", arg: 1, scope: !2355, file: !82, line: 1070, type: !6)
!2360 = !DILocation(line: 1070, column: 20, scope: !2355)
!2361 = !DILocation(line: 1064, column: 14, scope: !2341, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 1072, column: 10, scope: !2355)
!2363 = !DILocation(line: 1064, column: 29, scope: !2341, inlinedAt: !2362)
!2364 = !DILocation(line: 1052, column: 18, scope: !2315, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 1066, column: 10, scope: !2341, inlinedAt: !2362)
!2366 = !DILocation(line: 1052, column: 33, scope: !2315, inlinedAt: !2365)
!2367 = !DILocation(line: 1052, column: 45, scope: !2315, inlinedAt: !2365)
!2368 = !DILocation(line: 1054, column: 10, scope: !2315, inlinedAt: !2365)
!2369 = !DILocation(line: 1072, column: 3, scope: !2355)
!2370 = distinct !DISubprogram(name: "version_etc_arn", scope: !508, file: !508, line: 62, type: !2371, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !2429)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !2373, !6, !6, !6, !2428, !76}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2375, line: 7, baseType: !2376)
!2375 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2377, line: 241, size: 1728, elements: !2378)
!2377 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2399, !2400, !2401, !2402, !2406, !2407, !2409, !2413, !2416, !2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2376, file: !2377, line: 242, baseType: !25, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2376, file: !2377, line: 247, baseType: !32, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2376, file: !2377, line: 248, baseType: !32, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2376, file: !2377, line: 249, baseType: !32, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2376, file: !2377, line: 250, baseType: !32, size: 64, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2376, file: !2377, line: 251, baseType: !32, size: 64, offset: 320)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2376, file: !2377, line: 252, baseType: !32, size: 64, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2376, file: !2377, line: 253, baseType: !32, size: 64, offset: 448)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2376, file: !2377, line: 254, baseType: !32, size: 64, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2376, file: !2377, line: 256, baseType: !32, size: 64, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2376, file: !2377, line: 257, baseType: !32, size: 64, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2376, file: !2377, line: 258, baseType: !32, size: 64, offset: 704)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2376, file: !2377, line: 260, baseType: !2392, size: 64, offset: 768)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2377, line: 156, size: 192, elements: !2394)
!2394 = !{!2395, !2396, !2398}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2393, file: !2377, line: 157, baseType: !2392, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2393, file: !2377, line: 158, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2393, file: !2377, line: 162, baseType: !25, size: 32, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2376, file: !2377, line: 262, baseType: !2397, size: 64, offset: 832)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2376, file: !2377, line: 264, baseType: !25, size: 32, offset: 896)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2376, file: !2377, line: 268, baseType: !25, size: 32, offset: 928)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2376, file: !2377, line: 270, baseType: !2403, size: 64, offset: 960)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2404, line: 140, baseType: !2405)
!2404 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2405 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2376, file: !2377, line: 274, baseType: !75, size: 16, offset: 1024)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2376, file: !2377, line: 275, baseType: !2408, size: 8, offset: 1040)
!2408 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2376, file: !2377, line: 276, baseType: !2410, size: 8, offset: 1048)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2411)
!2411 = !{!2412}
!2412 = !DISubrange(count: 1)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2376, file: !2377, line: 280, baseType: !2414, size: 64, offset: 1088)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2377, line: 150, baseType: null)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2376, file: !2377, line: 289, baseType: !2417, size: 64, offset: 1152)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2404, line: 141, baseType: !2405)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2376, file: !2377, line: 297, baseType: !31, size: 64, offset: 1216)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2376, file: !2377, line: 298, baseType: !31, size: 64, offset: 1280)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2376, file: !2377, line: 299, baseType: !31, size: 64, offset: 1344)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2376, file: !2377, line: 300, baseType: !31, size: 64, offset: 1408)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2376, file: !2377, line: 302, baseType: !76, size: 64, offset: 1472)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2376, file: !2377, line: 303, baseType: !25, size: 32, offset: 1536)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2376, file: !2377, line: 305, baseType: !2425, size: 160, offset: 1568)
!2425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2426)
!2426 = !{!2427}
!2427 = !DISubrange(count: 20)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435}
!2430 = !DILocalVariable(name: "stream", arg: 1, scope: !2370, file: !508, line: 62, type: !2373)
!2431 = !DILocalVariable(name: "command_name", arg: 2, scope: !2370, file: !508, line: 63, type: !6)
!2432 = !DILocalVariable(name: "package", arg: 3, scope: !2370, file: !508, line: 63, type: !6)
!2433 = !DILocalVariable(name: "version", arg: 4, scope: !2370, file: !508, line: 64, type: !6)
!2434 = !DILocalVariable(name: "authors", arg: 5, scope: !2370, file: !508, line: 65, type: !2428)
!2435 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2370, file: !508, line: 65, type: !76)
!2436 = !DILocation(line: 62, column: 24, scope: !2370)
!2437 = !DILocation(line: 63, column: 30, scope: !2370)
!2438 = !DILocation(line: 63, column: 56, scope: !2370)
!2439 = !DILocation(line: 64, column: 30, scope: !2370)
!2440 = !DILocation(line: 65, column: 39, scope: !2370)
!2441 = !DILocation(line: 65, column: 55, scope: !2370)
!2442 = !DILocation(line: 67, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2370, file: !508, line: 67, column: 7)
!2444 = !DILocation(line: 67, column: 7, scope: !2370)
!2445 = !DILocation(line: 68, column: 5, scope: !2443)
!2446 = !DILocation(line: 70, column: 5, scope: !2443)
!2447 = !DILocation(line: 84, column: 3, scope: !2370)
!2448 = !DILocation(line: 86, column: 3, scope: !2370)
!2449 = !DILocation(line: 95, column: 3, scope: !2370)
!2450 = !DILocation(line: 99, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2370, file: !508, line: 96, column: 5)
!2452 = !DILocation(line: 102, column: 7, scope: !2451)
!2453 = !DILocation(line: 103, column: 7, scope: !2451)
!2454 = !DILocation(line: 106, column: 7, scope: !2451)
!2455 = !DILocation(line: 107, column: 7, scope: !2451)
!2456 = !DILocation(line: 110, column: 7, scope: !2451)
!2457 = !DILocation(line: 112, column: 7, scope: !2451)
!2458 = !DILocation(line: 117, column: 7, scope: !2451)
!2459 = !DILocation(line: 119, column: 7, scope: !2451)
!2460 = !DILocation(line: 124, column: 7, scope: !2451)
!2461 = !DILocation(line: 126, column: 7, scope: !2451)
!2462 = !DILocation(line: 131, column: 7, scope: !2451)
!2463 = !DILocation(line: 134, column: 7, scope: !2451)
!2464 = !DILocation(line: 139, column: 7, scope: !2451)
!2465 = !DILocation(line: 142, column: 7, scope: !2451)
!2466 = !DILocation(line: 147, column: 7, scope: !2451)
!2467 = !DILocation(line: 151, column: 7, scope: !2451)
!2468 = !DILocation(line: 156, column: 7, scope: !2451)
!2469 = !DILocation(line: 160, column: 7, scope: !2451)
!2470 = !DILocation(line: 167, column: 7, scope: !2451)
!2471 = !DILocation(line: 171, column: 7, scope: !2451)
!2472 = !DILocation(line: 173, column: 1, scope: !2370)
!2473 = distinct !DISubprogram(name: "version_etc_ar", scope: !508, file: !508, line: 180, type: !2474, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2373, !6, !6, !6, !2428}
!2476 = !{!2477, !2478, !2479, !2480, !2481, !2482}
!2477 = !DILocalVariable(name: "stream", arg: 1, scope: !2473, file: !508, line: 180, type: !2373)
!2478 = !DILocalVariable(name: "command_name", arg: 2, scope: !2473, file: !508, line: 181, type: !6)
!2479 = !DILocalVariable(name: "package", arg: 3, scope: !2473, file: !508, line: 181, type: !6)
!2480 = !DILocalVariable(name: "version", arg: 4, scope: !2473, file: !508, line: 182, type: !6)
!2481 = !DILocalVariable(name: "authors", arg: 5, scope: !2473, file: !508, line: 182, type: !2428)
!2482 = !DILocalVariable(name: "n_authors", scope: !2473, file: !508, line: 184, type: !76)
!2483 = !DILocation(line: 180, column: 23, scope: !2473)
!2484 = !DILocation(line: 181, column: 29, scope: !2473)
!2485 = !DILocation(line: 181, column: 55, scope: !2473)
!2486 = !DILocation(line: 182, column: 29, scope: !2473)
!2487 = !DILocation(line: 182, column: 59, scope: !2473)
!2488 = !DILocation(line: 184, column: 10, scope: !2473)
!2489 = !DILocation(line: 186, column: 8, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2473, file: !508, line: 186, column: 3)
!2491 = !DILocation(line: 186, column: 23, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2490, file: !508, line: 186, column: 3)
!2493 = !DILocation(line: 186, column: 3, scope: !2490)
!2494 = !DILocation(line: 186, column: 52, scope: !2492)
!2495 = distinct !{!2495, !2493, !2496}
!2496 = !DILocation(line: 187, column: 5, scope: !2490)
!2497 = !DILocation(line: 188, column: 3, scope: !2473)
!2498 = !DILocation(line: 189, column: 1, scope: !2473)
!2499 = distinct !DISubprogram(name: "version_etc_va", scope: !508, file: !508, line: 196, type: !2500, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !2509)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{null, !2373, !6, !6, !6, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !505, line: 189, size: 192, elements: !2504)
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2503, file: !505, line: 189, baseType: !95, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2503, file: !505, line: 189, baseType: !95, size: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2503, file: !505, line: 189, baseType: !31, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2503, file: !505, line: 189, baseType: !31, size: 64, offset: 128)
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2510 = !DILocalVariable(name: "stream", arg: 1, scope: !2499, file: !508, line: 196, type: !2373)
!2511 = !DILocalVariable(name: "command_name", arg: 2, scope: !2499, file: !508, line: 197, type: !6)
!2512 = !DILocalVariable(name: "package", arg: 3, scope: !2499, file: !508, line: 197, type: !6)
!2513 = !DILocalVariable(name: "version", arg: 4, scope: !2499, file: !508, line: 198, type: !6)
!2514 = !DILocalVariable(name: "authors", arg: 5, scope: !2499, file: !508, line: 198, type: !2502)
!2515 = !DILocalVariable(name: "n_authors", scope: !2499, file: !508, line: 200, type: !76)
!2516 = !DILocalVariable(name: "authtab", scope: !2499, file: !508, line: 201, type: !2517)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !85)
!2518 = !DILocation(line: 196, column: 23, scope: !2499)
!2519 = !DILocation(line: 197, column: 29, scope: !2499)
!2520 = !DILocation(line: 197, column: 55, scope: !2499)
!2521 = !DILocation(line: 198, column: 29, scope: !2499)
!2522 = !DILocation(line: 198, column: 46, scope: !2499)
!2523 = !DILocation(line: 201, column: 3, scope: !2499)
!2524 = !DILocation(line: 201, column: 15, scope: !2499)
!2525 = !DILocation(line: 200, column: 10, scope: !2499)
!2526 = !DILocation(line: 205, column: 35, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !508, line: 203, column: 3)
!2528 = distinct !DILexicalBlock(scope: !2499, file: !508, line: 203, column: 3)
!2529 = !DILocation(line: 205, column: 14, scope: !2527)
!2530 = !DILocation(line: 205, column: 33, scope: !2527)
!2531 = !DILocation(line: 205, column: 67, scope: !2527)
!2532 = !DILocation(line: 203, column: 3, scope: !2528)
!2533 = !DILocation(line: 208, column: 3, scope: !2499)
!2534 = !DILocation(line: 210, column: 1, scope: !2499)
!2535 = distinct !DISubprogram(name: "version_etc", scope: !508, file: !508, line: 227, type: !2536, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2373, !6, !6, !6, null}
!2538 = !{!2539, !2540, !2541, !2542, !2543}
!2539 = !DILocalVariable(name: "stream", arg: 1, scope: !2535, file: !508, line: 227, type: !2373)
!2540 = !DILocalVariable(name: "command_name", arg: 2, scope: !2535, file: !508, line: 228, type: !6)
!2541 = !DILocalVariable(name: "package", arg: 3, scope: !2535, file: !508, line: 228, type: !6)
!2542 = !DILocalVariable(name: "version", arg: 4, scope: !2535, file: !508, line: 229, type: !6)
!2543 = !DILocalVariable(name: "authors", scope: !2535, file: !508, line: 231, type: !2544)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2545, line: 46, baseType: !2546)
!2545 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2547, line: 48, baseType: !2548)
!2547 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !505, line: 231, baseType: !2549)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2503, size: 192, elements: !2411)
!2550 = !DILocation(line: 227, column: 20, scope: !2535)
!2551 = !DILocation(line: 228, column: 26, scope: !2535)
!2552 = !DILocation(line: 228, column: 52, scope: !2535)
!2553 = !DILocation(line: 229, column: 26, scope: !2535)
!2554 = !DILocation(line: 231, column: 3, scope: !2535)
!2555 = !DILocation(line: 231, column: 11, scope: !2535)
!2556 = !DILocation(line: 233, column: 3, scope: !2535)
!2557 = !DILocation(line: 234, column: 3, scope: !2535)
!2558 = !DILocation(line: 235, column: 3, scope: !2535)
!2559 = !DILocation(line: 236, column: 1, scope: !2535)
!2560 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !508, file: !508, line: 239, type: !632, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !4)
!2561 = !DILocation(line: 245, column: 3, scope: !2560)
!2562 = !DILocation(line: 251, column: 3, scope: !2560)
!2563 = !DILocation(line: 256, column: 3, scope: !2560)
!2564 = !DILocation(line: 258, column: 1, scope: !2560)
!2565 = distinct !DISubprogram(name: "xnmalloc", scope: !516, file: !516, line: 105, type: !2566, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!31, !76, !76}
!2568 = !{!2569, !2570}
!2569 = !DILocalVariable(name: "n", arg: 1, scope: !2565, file: !516, line: 105, type: !76)
!2570 = !DILocalVariable(name: "s", arg: 2, scope: !2565, file: !516, line: 105, type: !76)
!2571 = !DILocation(line: 105, column: 18, scope: !2565)
!2572 = !DILocation(line: 105, column: 28, scope: !2565)
!2573 = !DILocation(line: 107, column: 7, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2565, file: !516, line: 107, column: 7)
!2575 = !DILocation(line: 107, column: 7, scope: !2565)
!2576 = !DILocation(line: 108, column: 5, scope: !2574)
!2577 = !DILocation(line: 109, column: 21, scope: !2565)
!2578 = !DILocalVariable(name: "n", arg: 1, scope: !2579, file: !2580, line: 39, type: !76)
!2579 = distinct !DISubprogram(name: "xmalloc", scope: !2580, file: !2580, line: 39, type: !2581, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2583)
!2580 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!31, !76}
!2583 = !{!2578, !2584}
!2584 = !DILocalVariable(name: "p", scope: !2579, file: !2580, line: 41, type: !31)
!2585 = !DILocation(line: 39, column: 17, scope: !2579, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 109, column: 10, scope: !2565)
!2587 = !DILocation(line: 41, column: 13, scope: !2579, inlinedAt: !2586)
!2588 = !DILocation(line: 41, column: 9, scope: !2579, inlinedAt: !2586)
!2589 = !DILocation(line: 42, column: 8, scope: !2590, inlinedAt: !2586)
!2590 = distinct !DILexicalBlock(scope: !2579, file: !2580, line: 42, column: 7)
!2591 = !DILocation(line: 42, column: 15, scope: !2590, inlinedAt: !2586)
!2592 = !DILocation(line: 42, column: 10, scope: !2590, inlinedAt: !2586)
!2593 = !DILocation(line: 43, column: 5, scope: !2590, inlinedAt: !2586)
!2594 = !DILocation(line: 109, column: 3, scope: !2565)
!2595 = !DILocation(line: 39, column: 17, scope: !2579)
!2596 = !DILocation(line: 41, column: 13, scope: !2579)
!2597 = !DILocation(line: 41, column: 9, scope: !2579)
!2598 = !DILocation(line: 42, column: 8, scope: !2590)
!2599 = !DILocation(line: 42, column: 15, scope: !2590)
!2600 = !DILocation(line: 42, column: 10, scope: !2590)
!2601 = !DILocation(line: 43, column: 5, scope: !2590)
!2602 = !DILocation(line: 44, column: 3, scope: !2579)
!2603 = distinct !DISubprogram(name: "xnrealloc", scope: !516, file: !516, line: 118, type: !2604, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!31, !31, !76, !76}
!2606 = !{!2607, !2608, !2609}
!2607 = !DILocalVariable(name: "p", arg: 1, scope: !2603, file: !516, line: 118, type: !31)
!2608 = !DILocalVariable(name: "n", arg: 2, scope: !2603, file: !516, line: 118, type: !76)
!2609 = !DILocalVariable(name: "s", arg: 3, scope: !2603, file: !516, line: 118, type: !76)
!2610 = !DILocation(line: 118, column: 18, scope: !2603)
!2611 = !DILocation(line: 118, column: 28, scope: !2603)
!2612 = !DILocation(line: 118, column: 38, scope: !2603)
!2613 = !DILocation(line: 120, column: 7, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2603, file: !516, line: 120, column: 7)
!2615 = !DILocation(line: 120, column: 7, scope: !2603)
!2616 = !DILocation(line: 121, column: 5, scope: !2614)
!2617 = !DILocation(line: 122, column: 25, scope: !2603)
!2618 = !DILocalVariable(name: "p", arg: 1, scope: !2619, file: !2580, line: 51, type: !31)
!2619 = distinct !DISubprogram(name: "xrealloc", scope: !2580, file: !2580, line: 51, type: !2620, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!31, !31, !76}
!2622 = !{!2618, !2623}
!2623 = !DILocalVariable(name: "n", arg: 2, scope: !2619, file: !2580, line: 51, type: !76)
!2624 = !DILocation(line: 51, column: 17, scope: !2619, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 122, column: 10, scope: !2603)
!2626 = !DILocation(line: 51, column: 27, scope: !2619, inlinedAt: !2625)
!2627 = !DILocation(line: 53, column: 8, scope: !2628, inlinedAt: !2625)
!2628 = distinct !DILexicalBlock(scope: !2619, file: !2580, line: 53, column: 7)
!2629 = !DILocation(line: 53, column: 13, scope: !2628, inlinedAt: !2625)
!2630 = !DILocation(line: 53, column: 10, scope: !2628, inlinedAt: !2625)
!2631 = !DILocation(line: 57, column: 7, scope: !2632, inlinedAt: !2625)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !2580, line: 54, column: 5)
!2633 = !DILocation(line: 58, column: 7, scope: !2632, inlinedAt: !2625)
!2634 = !DILocation(line: 61, column: 7, scope: !2619, inlinedAt: !2625)
!2635 = !DILocation(line: 62, column: 8, scope: !2636, inlinedAt: !2625)
!2636 = distinct !DILexicalBlock(scope: !2619, file: !2580, line: 62, column: 7)
!2637 = !DILocation(line: 62, column: 13, scope: !2636, inlinedAt: !2625)
!2638 = !DILocation(line: 62, column: 10, scope: !2636, inlinedAt: !2625)
!2639 = !DILocation(line: 63, column: 5, scope: !2636, inlinedAt: !2625)
!2640 = !DILocation(line: 122, column: 3, scope: !2603)
!2641 = !DILocation(line: 51, column: 17, scope: !2619)
!2642 = !DILocation(line: 51, column: 27, scope: !2619)
!2643 = !DILocation(line: 53, column: 8, scope: !2628)
!2644 = !DILocation(line: 53, column: 13, scope: !2628)
!2645 = !DILocation(line: 53, column: 10, scope: !2628)
!2646 = !DILocation(line: 57, column: 7, scope: !2632)
!2647 = !DILocation(line: 58, column: 7, scope: !2632)
!2648 = !DILocation(line: 61, column: 7, scope: !2619)
!2649 = !DILocation(line: 62, column: 8, scope: !2636)
!2650 = !DILocation(line: 62, column: 13, scope: !2636)
!2651 = !DILocation(line: 62, column: 10, scope: !2636)
!2652 = !DILocation(line: 63, column: 5, scope: !2636)
!2653 = !DILocation(line: 65, column: 1, scope: !2619)
!2654 = !DILocation(line: 180, column: 19, scope: !517)
!2655 = !DILocation(line: 180, column: 30, scope: !517)
!2656 = !DILocation(line: 180, column: 41, scope: !517)
!2657 = !DILocation(line: 182, column: 14, scope: !517)
!2658 = !DILocation(line: 182, column: 10, scope: !517)
!2659 = !DILocation(line: 184, column: 9, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !517, file: !516, line: 184, column: 7)
!2661 = !DILocation(line: 184, column: 7, scope: !517)
!2662 = !DILocation(line: 186, column: 13, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !516, line: 186, column: 11)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !516, line: 185, column: 5)
!2665 = !DILocation(line: 186, column: 11, scope: !2664)
!2666 = !DILocation(line: 194, column: 30, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !516, line: 187, column: 9)
!2668 = !DILocation(line: 195, column: 16, scope: !2667)
!2669 = !DILocation(line: 195, column: 13, scope: !2667)
!2670 = !DILocation(line: 196, column: 9, scope: !2667)
!2671 = !DILocation(line: 204, column: 69, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !516, line: 204, column: 11)
!2673 = distinct !DILexicalBlock(scope: !2660, file: !516, line: 199, column: 5)
!2674 = !DILocation(line: 205, column: 11, scope: !2672)
!2675 = !DILocation(line: 204, column: 11, scope: !2673)
!2676 = !DILocation(line: 206, column: 9, scope: !2672)
!2677 = !DILocation(line: 210, column: 7, scope: !517)
!2678 = !DILocation(line: 211, column: 25, scope: !517)
!2679 = !DILocation(line: 51, column: 17, scope: !2619, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 211, column: 10, scope: !517)
!2681 = !DILocation(line: 51, column: 27, scope: !2619, inlinedAt: !2680)
!2682 = !DILocation(line: 53, column: 10, scope: !2628, inlinedAt: !2680)
!2683 = !DILocation(line: 207, column: 14, scope: !2673)
!2684 = !DILocation(line: 207, column: 18, scope: !2673)
!2685 = !DILocation(line: 207, column: 9, scope: !2673)
!2686 = !DILocation(line: 53, column: 8, scope: !2628, inlinedAt: !2680)
!2687 = !DILocation(line: 57, column: 7, scope: !2632, inlinedAt: !2680)
!2688 = !DILocation(line: 58, column: 7, scope: !2632, inlinedAt: !2680)
!2689 = !DILocation(line: 61, column: 7, scope: !2619, inlinedAt: !2680)
!2690 = !DILocation(line: 62, column: 8, scope: !2636, inlinedAt: !2680)
!2691 = !DILocation(line: 62, column: 13, scope: !2636, inlinedAt: !2680)
!2692 = !DILocation(line: 62, column: 10, scope: !2636, inlinedAt: !2680)
!2693 = !DILocation(line: 63, column: 5, scope: !2636, inlinedAt: !2680)
!2694 = !DILocation(line: 211, column: 3, scope: !517)
!2695 = distinct !DISubprogram(name: "xcharalloc", scope: !516, file: !516, line: 220, type: !1647, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2696)
!2696 = !{!2697}
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !516, line: 220, type: !76)
!2698 = !DILocation(line: 220, column: 20, scope: !2695)
!2699 = !DILocation(line: 39, column: 17, scope: !2579, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 222, column: 10, scope: !2695)
!2701 = !DILocation(line: 41, column: 13, scope: !2579, inlinedAt: !2700)
!2702 = !DILocation(line: 41, column: 9, scope: !2579, inlinedAt: !2700)
!2703 = !DILocation(line: 42, column: 8, scope: !2590, inlinedAt: !2700)
!2704 = !DILocation(line: 42, column: 15, scope: !2590, inlinedAt: !2700)
!2705 = !DILocation(line: 42, column: 10, scope: !2590, inlinedAt: !2700)
!2706 = !DILocation(line: 43, column: 5, scope: !2590, inlinedAt: !2700)
!2707 = !DILocation(line: 222, column: 3, scope: !2695)
!2708 = distinct !DISubprogram(name: "x2realloc", scope: !2580, file: !2580, line: 74, type: !2709, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!31, !31, !520}
!2711 = !{!2712, !2713}
!2712 = !DILocalVariable(name: "p", arg: 1, scope: !2708, file: !2580, line: 74, type: !31)
!2713 = !DILocalVariable(name: "pn", arg: 2, scope: !2708, file: !2580, line: 74, type: !520)
!2714 = !DILocation(line: 74, column: 18, scope: !2708)
!2715 = !DILocation(line: 74, column: 29, scope: !2708)
!2716 = !DILocation(line: 180, column: 19, scope: !517, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 76, column: 10, scope: !2708)
!2718 = !DILocation(line: 180, column: 30, scope: !517, inlinedAt: !2717)
!2719 = !DILocation(line: 180, column: 41, scope: !517, inlinedAt: !2717)
!2720 = !DILocation(line: 182, column: 14, scope: !517, inlinedAt: !2717)
!2721 = !DILocation(line: 182, column: 10, scope: !517, inlinedAt: !2717)
!2722 = !DILocation(line: 184, column: 9, scope: !2660, inlinedAt: !2717)
!2723 = !DILocation(line: 184, column: 7, scope: !517, inlinedAt: !2717)
!2724 = !DILocation(line: 186, column: 13, scope: !2663, inlinedAt: !2717)
!2725 = !DILocation(line: 186, column: 11, scope: !2664, inlinedAt: !2717)
!2726 = !DILocation(line: 210, column: 7, scope: !517, inlinedAt: !2717)
!2727 = !DILocation(line: 51, column: 17, scope: !2619, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 211, column: 10, scope: !517, inlinedAt: !2717)
!2729 = !DILocation(line: 51, column: 27, scope: !2619, inlinedAt: !2728)
!2730 = !DILocation(line: 53, column: 10, scope: !2628, inlinedAt: !2728)
!2731 = !DILocation(line: 205, column: 11, scope: !2672, inlinedAt: !2717)
!2732 = !DILocation(line: 204, column: 11, scope: !2673, inlinedAt: !2717)
!2733 = !DILocation(line: 206, column: 9, scope: !2672, inlinedAt: !2717)
!2734 = !DILocation(line: 207, column: 14, scope: !2673, inlinedAt: !2717)
!2735 = !DILocation(line: 207, column: 18, scope: !2673, inlinedAt: !2717)
!2736 = !DILocation(line: 207, column: 9, scope: !2673, inlinedAt: !2717)
!2737 = !DILocation(line: 53, column: 8, scope: !2628, inlinedAt: !2728)
!2738 = !DILocation(line: 57, column: 7, scope: !2632, inlinedAt: !2728)
!2739 = !DILocation(line: 58, column: 7, scope: !2632, inlinedAt: !2728)
!2740 = !DILocation(line: 61, column: 7, scope: !2619, inlinedAt: !2728)
!2741 = !DILocation(line: 62, column: 8, scope: !2636, inlinedAt: !2728)
!2742 = !DILocation(line: 62, column: 13, scope: !2636, inlinedAt: !2728)
!2743 = !DILocation(line: 62, column: 10, scope: !2636, inlinedAt: !2728)
!2744 = !DILocation(line: 63, column: 5, scope: !2636, inlinedAt: !2728)
!2745 = !DILocation(line: 76, column: 3, scope: !2708)
!2746 = distinct !DISubprogram(name: "xzalloc", scope: !2580, file: !2580, line: 84, type: !2581, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2747)
!2747 = !{!2748}
!2748 = !DILocalVariable(name: "s", arg: 1, scope: !2746, file: !2580, line: 84, type: !76)
!2749 = !DILocation(line: 84, column: 17, scope: !2746)
!2750 = !DILocation(line: 39, column: 17, scope: !2579, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 86, column: 18, scope: !2746)
!2752 = !DILocation(line: 41, column: 13, scope: !2579, inlinedAt: !2751)
!2753 = !DILocation(line: 41, column: 9, scope: !2579, inlinedAt: !2751)
!2754 = !DILocation(line: 42, column: 8, scope: !2590, inlinedAt: !2751)
!2755 = !DILocation(line: 42, column: 15, scope: !2590, inlinedAt: !2751)
!2756 = !DILocation(line: 42, column: 10, scope: !2590, inlinedAt: !2751)
!2757 = !DILocation(line: 43, column: 5, scope: !2590, inlinedAt: !2751)
!2758 = !DILocation(line: 86, column: 10, scope: !2746)
!2759 = !DILocation(line: 86, column: 3, scope: !2746)
!2760 = distinct !DISubprogram(name: "xcalloc", scope: !2580, file: !2580, line: 93, type: !2566, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2761)
!2761 = !{!2762, !2763, !2764}
!2762 = !DILocalVariable(name: "n", arg: 1, scope: !2760, file: !2580, line: 93, type: !76)
!2763 = !DILocalVariable(name: "s", arg: 2, scope: !2760, file: !2580, line: 93, type: !76)
!2764 = !DILocalVariable(name: "p", scope: !2760, file: !2580, line: 95, type: !31)
!2765 = !DILocation(line: 93, column: 17, scope: !2760)
!2766 = !DILocation(line: 93, column: 27, scope: !2760)
!2767 = !DILocation(line: 100, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2760, file: !2580, line: 100, column: 7)
!2769 = !DILocation(line: 101, column: 7, scope: !2768)
!2770 = !DILocation(line: 101, column: 18, scope: !2768)
!2771 = !DILocation(line: 95, column: 9, scope: !2760)
!2772 = !DILocation(line: 101, column: 16, scope: !2768)
!2773 = !DILocation(line: 100, column: 7, scope: !2760)
!2774 = !DILocation(line: 102, column: 5, scope: !2768)
!2775 = !DILocation(line: 103, column: 3, scope: !2760)
!2776 = distinct !DISubprogram(name: "xmemdup", scope: !2580, file: !2580, line: 111, type: !2777, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2781)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!31, !2779, !76}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2781 = !{!2782, !2783}
!2782 = !DILocalVariable(name: "p", arg: 1, scope: !2776, file: !2580, line: 111, type: !2779)
!2783 = !DILocalVariable(name: "s", arg: 2, scope: !2776, file: !2580, line: 111, type: !76)
!2784 = !DILocation(line: 111, column: 22, scope: !2776)
!2785 = !DILocation(line: 111, column: 32, scope: !2776)
!2786 = !DILocation(line: 39, column: 17, scope: !2579, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 113, column: 18, scope: !2776)
!2788 = !DILocation(line: 41, column: 13, scope: !2579, inlinedAt: !2787)
!2789 = !DILocation(line: 41, column: 9, scope: !2579, inlinedAt: !2787)
!2790 = !DILocation(line: 42, column: 8, scope: !2590, inlinedAt: !2787)
!2791 = !DILocation(line: 42, column: 15, scope: !2590, inlinedAt: !2787)
!2792 = !DILocation(line: 42, column: 10, scope: !2590, inlinedAt: !2787)
!2793 = !DILocation(line: 43, column: 5, scope: !2590, inlinedAt: !2787)
!2794 = !DILocation(line: 113, column: 10, scope: !2776)
!2795 = !DILocation(line: 113, column: 3, scope: !2776)
!2796 = distinct !DISubprogram(name: "xstrdup", scope: !2580, file: !2580, line: 119, type: !1849, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2797)
!2797 = !{!2798}
!2798 = !DILocalVariable(name: "string", arg: 1, scope: !2796, file: !2580, line: 119, type: !6)
!2799 = !DILocation(line: 119, column: 22, scope: !2796)
!2800 = !DILocation(line: 121, column: 27, scope: !2796)
!2801 = !DILocation(line: 121, column: 43, scope: !2796)
!2802 = !DILocation(line: 111, column: 22, scope: !2776, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 121, column: 10, scope: !2796)
!2804 = !DILocation(line: 111, column: 32, scope: !2776, inlinedAt: !2803)
!2805 = !DILocation(line: 39, column: 17, scope: !2579, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 113, column: 18, scope: !2776, inlinedAt: !2803)
!2807 = !DILocation(line: 41, column: 13, scope: !2579, inlinedAt: !2806)
!2808 = !DILocation(line: 41, column: 9, scope: !2579, inlinedAt: !2806)
!2809 = !DILocation(line: 42, column: 8, scope: !2590, inlinedAt: !2806)
!2810 = !DILocation(line: 42, column: 15, scope: !2590, inlinedAt: !2806)
!2811 = !DILocation(line: 42, column: 10, scope: !2590, inlinedAt: !2806)
!2812 = !DILocation(line: 43, column: 5, scope: !2590, inlinedAt: !2806)
!2813 = !DILocation(line: 113, column: 10, scope: !2776, inlinedAt: !2803)
!2814 = !DILocation(line: 121, column: 3, scope: !2796)
!2815 = distinct !DISubprogram(name: "xalloc_die", scope: !2816, file: !2816, line: 32, type: !632, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !529, variables: !4)
!2816 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2817 = !DILocation(line: 34, column: 10, scope: !2815)
!2818 = !DILocation(line: 34, column: 33, scope: !2815)
!2819 = !DILocation(line: 34, column: 3, scope: !2815)
!2820 = !DILocation(line: 40, column: 3, scope: !2815)
!2821 = distinct !DISubprogram(name: "rpl_calloc", scope: !2822, file: !2822, line: 42, type: !2566, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2823)
!2822 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2823 = !{!2824, !2825, !2826, !2827}
!2824 = !DILocalVariable(name: "n", arg: 1, scope: !2821, file: !2822, line: 42, type: !76)
!2825 = !DILocalVariable(name: "s", arg: 2, scope: !2821, file: !2822, line: 42, type: !76)
!2826 = !DILocalVariable(name: "result", scope: !2821, file: !2822, line: 44, type: !31)
!2827 = !DILocalVariable(name: "bytes", scope: !2828, file: !2822, line: 56, type: !76)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !2822, line: 53, column: 5)
!2829 = distinct !DILexicalBlock(scope: !2821, file: !2822, line: 47, column: 7)
!2830 = !DILocation(line: 42, column: 20, scope: !2821)
!2831 = !DILocation(line: 42, column: 30, scope: !2821)
!2832 = !DILocation(line: 47, column: 9, scope: !2829)
!2833 = !DILocation(line: 47, column: 19, scope: !2829)
!2834 = !DILocation(line: 47, column: 14, scope: !2829)
!2835 = !DILocation(line: 56, column: 24, scope: !2828)
!2836 = !DILocation(line: 56, column: 14, scope: !2828)
!2837 = !DILocation(line: 57, column: 17, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2828, file: !2822, line: 57, column: 11)
!2839 = !DILocation(line: 57, column: 21, scope: !2838)
!2840 = !DILocation(line: 57, column: 11, scope: !2828)
!2841 = !DILocation(line: 59, column: 11, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2838, file: !2822, line: 58, column: 9)
!2843 = !DILocation(line: 59, column: 17, scope: !2842)
!2844 = !DILocation(line: 65, column: 12, scope: !2821)
!2845 = !DILocation(line: 44, column: 9, scope: !2821)
!2846 = !DILocation(line: 72, column: 3, scope: !2821)
!2847 = !DILocation(line: 73, column: 1, scope: !2821)
!2848 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2849, file: !2849, line: 334, type: !2850, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2864)
!2849 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!76, !2852, !6, !76, !2853}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !897, line: 6, baseType: !2855)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !899, line: 21, baseType: !2856)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !899, line: 13, size: 64, elements: !2857)
!2857 = !{!2858, !2859}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2856, file: !899, line: 15, baseType: !25, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2856, file: !899, line: 20, baseType: !2860, size: 32, offset: 32)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2856, file: !899, line: 16, size: 32, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2860, file: !899, line: 18, baseType: !95, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2860, file: !899, line: 19, baseType: !908, size: 32)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870, !2871}
!2865 = !DILocalVariable(name: "pwc", arg: 1, scope: !2848, file: !2849, line: 334, type: !2852)
!2866 = !DILocalVariable(name: "s", arg: 2, scope: !2848, file: !2849, line: 334, type: !6)
!2867 = !DILocalVariable(name: "n", arg: 3, scope: !2848, file: !2849, line: 334, type: !76)
!2868 = !DILocalVariable(name: "ps", arg: 4, scope: !2848, file: !2849, line: 334, type: !2853)
!2869 = !DILocalVariable(name: "ret", scope: !2848, file: !2849, line: 336, type: !76)
!2870 = !DILocalVariable(name: "wc", scope: !2848, file: !2849, line: 337, type: !913)
!2871 = !DILocalVariable(name: "uc", scope: !2872, file: !2849, line: 398, type: !476)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !2849, line: 397, column: 5)
!2873 = distinct !DILexicalBlock(scope: !2848, file: !2849, line: 396, column: 7)
!2874 = !DILocation(line: 334, column: 23, scope: !2848)
!2875 = !DILocation(line: 334, column: 40, scope: !2848)
!2876 = !DILocation(line: 334, column: 50, scope: !2848)
!2877 = !DILocation(line: 334, column: 64, scope: !2848)
!2878 = !DILocation(line: 337, column: 3, scope: !2848)
!2879 = !DILocation(line: 353, column: 9, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2848, file: !2849, line: 353, column: 7)
!2881 = !DILocation(line: 353, column: 7, scope: !2848)
!2882 = !DILocation(line: 388, column: 9, scope: !2848)
!2883 = !DILocation(line: 336, column: 10, scope: !2848)
!2884 = !DILocation(line: 396, column: 19, scope: !2873)
!2885 = !DILocation(line: 396, column: 31, scope: !2873)
!2886 = !DILocation(line: 396, column: 26, scope: !2873)
!2887 = !DILocation(line: 396, column: 41, scope: !2873)
!2888 = !DILocation(line: 396, column: 7, scope: !2848)
!2889 = !DILocation(line: 398, column: 26, scope: !2872)
!2890 = !DILocation(line: 398, column: 21, scope: !2872)
!2891 = !DILocation(line: 399, column: 14, scope: !2872)
!2892 = !DILocation(line: 399, column: 12, scope: !2872)
!2893 = !DILocation(line: 405, column: 1, scope: !2848)
!2894 = distinct !DISubprogram(name: "close_stream", scope: !2895, file: !2895, line: 56, type: !2896, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2938)
!2895 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!25, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2375, line: 7, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2377, line: 241, size: 1728, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2900, file: !2377, line: 242, baseType: !25, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2900, file: !2377, line: 247, baseType: !32, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2900, file: !2377, line: 248, baseType: !32, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2900, file: !2377, line: 249, baseType: !32, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2900, file: !2377, line: 250, baseType: !32, size: 64, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2900, file: !2377, line: 251, baseType: !32, size: 64, offset: 320)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2900, file: !2377, line: 252, baseType: !32, size: 64, offset: 384)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2900, file: !2377, line: 253, baseType: !32, size: 64, offset: 448)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2900, file: !2377, line: 254, baseType: !32, size: 64, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2900, file: !2377, line: 256, baseType: !32, size: 64, offset: 576)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2900, file: !2377, line: 257, baseType: !32, size: 64, offset: 640)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2900, file: !2377, line: 258, baseType: !32, size: 64, offset: 704)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2900, file: !2377, line: 260, baseType: !2915, size: 64, offset: 768)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2377, line: 156, size: 192, elements: !2917)
!2917 = !{!2918, !2919, !2921}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2916, file: !2377, line: 157, baseType: !2915, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2916, file: !2377, line: 158, baseType: !2920, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2916, file: !2377, line: 162, baseType: !25, size: 32, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2900, file: !2377, line: 262, baseType: !2920, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2900, file: !2377, line: 264, baseType: !25, size: 32, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2900, file: !2377, line: 268, baseType: !25, size: 32, offset: 928)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2900, file: !2377, line: 270, baseType: !2403, size: 64, offset: 960)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2900, file: !2377, line: 274, baseType: !75, size: 16, offset: 1024)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2900, file: !2377, line: 275, baseType: !2408, size: 8, offset: 1040)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2900, file: !2377, line: 276, baseType: !2410, size: 8, offset: 1048)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2900, file: !2377, line: 280, baseType: !2414, size: 64, offset: 1088)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2900, file: !2377, line: 289, baseType: !2417, size: 64, offset: 1152)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2900, file: !2377, line: 297, baseType: !31, size: 64, offset: 1216)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2900, file: !2377, line: 298, baseType: !31, size: 64, offset: 1280)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2900, file: !2377, line: 299, baseType: !31, size: 64, offset: 1344)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2900, file: !2377, line: 300, baseType: !31, size: 64, offset: 1408)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2900, file: !2377, line: 302, baseType: !76, size: 64, offset: 1472)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2900, file: !2377, line: 303, baseType: !25, size: 32, offset: 1536)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2900, file: !2377, line: 305, baseType: !2425, size: 160, offset: 1568)
!2938 = !{!2939, !2940, !2942, !2943}
!2939 = !DILocalVariable(name: "stream", arg: 1, scope: !2894, file: !2895, line: 56, type: !2898)
!2940 = !DILocalVariable(name: "some_pending", scope: !2894, file: !2895, line: 58, type: !2941)
!2941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!2942 = !DILocalVariable(name: "prev_fail", scope: !2894, file: !2895, line: 59, type: !2941)
!2943 = !DILocalVariable(name: "fclose_fail", scope: !2894, file: !2895, line: 60, type: !2941)
!2944 = !DILocation(line: 56, column: 21, scope: !2894)
!2945 = !DILocation(line: 58, column: 30, scope: !2894)
!2946 = !DILocalVariable(name: "__stream", arg: 1, scope: !2947, file: !2948, line: 132, type: !2898)
!2947 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2948, file: !2948, line: 132, type: !2896, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2949)
!2948 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2949 = !{!2946}
!2950 = !DILocation(line: 132, column: 1, scope: !2947, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 59, column: 27, scope: !2894)
!2952 = !DILocation(line: 134, column: 10, scope: !2947, inlinedAt: !2951)
!2953 = !{!2954, !649, i64 0}
!2954 = !{!"_IO_FILE", !649, i64 0, !562, i64 8, !562, i64 16, !562, i64 24, !562, i64 32, !562, i64 40, !562, i64 48, !562, i64 56, !562, i64 64, !562, i64 72, !562, i64 80, !562, i64 88, !562, i64 96, !562, i64 104, !649, i64 112, !649, i64 116, !1692, i64 120, !1148, i64 128, !563, i64 130, !563, i64 131, !562, i64 136, !1692, i64 144, !562, i64 152, !562, i64 160, !562, i64 168, !562, i64 176, !1692, i64 184, !649, i64 192, !563, i64 196}
!2955 = !DILocation(line: 59, column: 43, scope: !2894)
!2956 = !DILocation(line: 60, column: 29, scope: !2894)
!2957 = !DILocation(line: 60, column: 45, scope: !2894)
!2958 = !DILocation(line: 70, column: 17, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2894, file: !2895, line: 70, column: 7)
!2960 = !DILocation(line: 58, column: 50, scope: !2894)
!2961 = !DILocation(line: 70, column: 33, scope: !2959)
!2962 = !DILocation(line: 70, column: 53, scope: !2959)
!2963 = !DILocation(line: 70, column: 59, scope: !2959)
!2964 = !DILocation(line: 70, column: 7, scope: !2894)
!2965 = !DILocation(line: 72, column: 11, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2959, file: !2895, line: 71, column: 5)
!2967 = !DILocation(line: 73, column: 9, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2966, file: !2895, line: 72, column: 11)
!2969 = !DILocation(line: 73, column: 15, scope: !2968)
!2970 = !DILocation(line: 78, column: 1, scope: !2894)
!2971 = distinct !DISubprogram(name: "hard_locale", scope: !2972, file: !2972, line: 38, type: !2973, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !2975)
!2972 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!17, !25}
!2975 = !{!2976, !2977, !2978}
!2976 = !DILocalVariable(name: "category", arg: 1, scope: !2971, file: !2972, line: 38, type: !25)
!2977 = !DILocalVariable(name: "hard", scope: !2971, file: !2972, line: 40, type: !17)
!2978 = !DILocalVariable(name: "p", scope: !2971, file: !2972, line: 41, type: !6)
!2979 = !DILocation(line: 38, column: 18, scope: !2971)
!2980 = !DILocation(line: 40, column: 8, scope: !2971)
!2981 = !DILocation(line: 41, column: 19, scope: !2971)
!2982 = !DILocation(line: 41, column: 15, scope: !2971)
!2983 = !DILocation(line: 43, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2971, file: !2972, line: 43, column: 7)
!2985 = !DILocation(line: 43, column: 7, scope: !2971)
!2986 = !DILocation(line: 47, column: 15, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !2972, line: 47, column: 15)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !2972, line: 46, column: 9)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !2972, line: 45, column: 11)
!2990 = distinct !DILexicalBlock(scope: !2984, file: !2972, line: 44, column: 5)
!2991 = !DILocation(line: 47, column: 31, scope: !2987)
!2992 = !DILocation(line: 47, column: 36, scope: !2987)
!2993 = !DILocation(line: 47, column: 39, scope: !2987)
!2994 = !DILocation(line: 47, column: 59, scope: !2987)
!2995 = !DILocation(line: 47, column: 15, scope: !2988)
!2996 = !DILocation(line: 48, column: 13, scope: !2987)
!2997 = !DILocation(line: 71, column: 3, scope: !2971)
!2998 = distinct !DISubprogram(name: "locale_charset", scope: !478, file: !478, line: 393, type: !2999, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!6}
!3001 = !{!3002, !3003}
!3002 = !DILocalVariable(name: "codeset", scope: !2998, file: !478, line: 395, type: !6)
!3003 = !DILocalVariable(name: "aliases", scope: !2998, file: !478, line: 396, type: !6)
!3004 = !DILocalVariable(name: "buf1", scope: !3005, file: !478, line: 196, type: !3072)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !478, line: 194, column: 21)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !478, line: 193, column: 19)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !478, line: 193, column: 19)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !478, line: 188, column: 17)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !478, line: 181, column: 19)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !478, line: 177, column: 13)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !478, line: 173, column: 15)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !478, line: 161, column: 9)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !478, line: 157, column: 11)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !478, line: 130, column: 5)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !478, line: 129, column: 7)
!3016 = distinct !DISubprogram(name: "get_charset_aliases", scope: !478, file: !478, line: 124, type: !2999, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3017)
!3017 = !{!3018, !3019, !3020, !3021, !3022, !3024, !3025, !3026, !3027, !3068, !3069, !3070, !3004, !3071, !3075, !3076, !3077}
!3018 = !DILocalVariable(name: "cp", scope: !3016, file: !478, line: 126, type: !6)
!3019 = !DILocalVariable(name: "dir", scope: !3014, file: !478, line: 132, type: !6)
!3020 = !DILocalVariable(name: "base", scope: !3014, file: !478, line: 133, type: !6)
!3021 = !DILocalVariable(name: "file_name", scope: !3014, file: !478, line: 134, type: !32)
!3022 = !DILocalVariable(name: "dir_len", scope: !3023, file: !478, line: 144, type: !76)
!3023 = distinct !DILexicalBlock(scope: !3014, file: !478, line: 143, column: 7)
!3024 = !DILocalVariable(name: "base_len", scope: !3023, file: !478, line: 145, type: !76)
!3025 = !DILocalVariable(name: "add_slash", scope: !3023, file: !478, line: 146, type: !25)
!3026 = !DILocalVariable(name: "fd", scope: !3012, file: !478, line: 162, type: !25)
!3027 = !DILocalVariable(name: "fp", scope: !3010, file: !478, line: 178, type: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2375, line: 7, baseType: !3030)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2377, line: 241, size: 1728, elements: !3031)
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3030, file: !2377, line: 242, baseType: !25, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3030, file: !2377, line: 247, baseType: !32, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3030, file: !2377, line: 248, baseType: !32, size: 64, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3030, file: !2377, line: 249, baseType: !32, size: 64, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3030, file: !2377, line: 250, baseType: !32, size: 64, offset: 256)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3030, file: !2377, line: 251, baseType: !32, size: 64, offset: 320)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3030, file: !2377, line: 252, baseType: !32, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3030, file: !2377, line: 253, baseType: !32, size: 64, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3030, file: !2377, line: 254, baseType: !32, size: 64, offset: 512)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3030, file: !2377, line: 256, baseType: !32, size: 64, offset: 576)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3030, file: !2377, line: 257, baseType: !32, size: 64, offset: 640)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3030, file: !2377, line: 258, baseType: !32, size: 64, offset: 704)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3030, file: !2377, line: 260, baseType: !3045, size: 64, offset: 768)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2377, line: 156, size: 192, elements: !3047)
!3047 = !{!3048, !3049, !3051}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3046, file: !2377, line: 157, baseType: !3045, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3046, file: !2377, line: 158, baseType: !3050, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3046, file: !2377, line: 162, baseType: !25, size: 32, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3030, file: !2377, line: 262, baseType: !3050, size: 64, offset: 832)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3030, file: !2377, line: 264, baseType: !25, size: 32, offset: 896)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3030, file: !2377, line: 268, baseType: !25, size: 32, offset: 928)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3030, file: !2377, line: 270, baseType: !2403, size: 64, offset: 960)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3030, file: !2377, line: 274, baseType: !75, size: 16, offset: 1024)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3030, file: !2377, line: 275, baseType: !2408, size: 8, offset: 1040)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3030, file: !2377, line: 276, baseType: !2410, size: 8, offset: 1048)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3030, file: !2377, line: 280, baseType: !2414, size: 64, offset: 1088)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3030, file: !2377, line: 289, baseType: !2417, size: 64, offset: 1152)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3030, file: !2377, line: 297, baseType: !31, size: 64, offset: 1216)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3030, file: !2377, line: 298, baseType: !31, size: 64, offset: 1280)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3030, file: !2377, line: 299, baseType: !31, size: 64, offset: 1344)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3030, file: !2377, line: 300, baseType: !31, size: 64, offset: 1408)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3030, file: !2377, line: 302, baseType: !76, size: 64, offset: 1472)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3030, file: !2377, line: 303, baseType: !25, size: 32, offset: 1536)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3030, file: !2377, line: 305, baseType: !2425, size: 160, offset: 1568)
!3068 = !DILocalVariable(name: "res_ptr", scope: !3008, file: !478, line: 190, type: !32)
!3069 = !DILocalVariable(name: "res_size", scope: !3008, file: !478, line: 191, type: !76)
!3070 = !DILocalVariable(name: "c", scope: !3005, file: !478, line: 195, type: !25)
!3071 = !DILocalVariable(name: "buf2", scope: !3005, file: !478, line: 197, type: !3072)
!3072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3073)
!3073 = !{!3074}
!3074 = !DISubrange(count: 51)
!3075 = !DILocalVariable(name: "l1", scope: !3005, file: !478, line: 198, type: !76)
!3076 = !DILocalVariable(name: "l2", scope: !3005, file: !478, line: 198, type: !76)
!3077 = !DILocalVariable(name: "old_res_ptr", scope: !3005, file: !478, line: 199, type: !32)
!3078 = !DILocation(line: 196, column: 28, scope: !3005, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 589, column: 18, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2998, file: !478, line: 589, column: 3)
!3081 = !DILocation(line: 197, column: 28, scope: !3005, inlinedAt: !3079)
!3082 = !DILocation(line: 403, column: 13, scope: !2998)
!3083 = !DILocation(line: 395, column: 15, scope: !2998)
!3084 = !DILocation(line: 584, column: 15, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !2998, file: !478, line: 584, column: 7)
!3086 = !DILocation(line: 584, column: 7, scope: !2998)
!3087 = !DILocation(line: 128, column: 8, scope: !3016, inlinedAt: !3079)
!3088 = !DILocation(line: 126, column: 15, scope: !3016, inlinedAt: !3079)
!3089 = !DILocation(line: 129, column: 10, scope: !3015, inlinedAt: !3079)
!3090 = !DILocation(line: 129, column: 7, scope: !3016, inlinedAt: !3079)
!3091 = !DILocation(line: 138, column: 13, scope: !3014, inlinedAt: !3079)
!3092 = !DILocation(line: 132, column: 19, scope: !3014, inlinedAt: !3079)
!3093 = !DILocation(line: 139, column: 15, scope: !3094, inlinedAt: !3079)
!3094 = distinct !DILexicalBlock(scope: !3014, file: !478, line: 139, column: 11)
!3095 = !DILocation(line: 139, column: 23, scope: !3094, inlinedAt: !3079)
!3096 = !DILocation(line: 139, column: 26, scope: !3094, inlinedAt: !3079)
!3097 = !DILocation(line: 139, column: 33, scope: !3094, inlinedAt: !3079)
!3098 = !DILocation(line: 139, column: 11, scope: !3014, inlinedAt: !3079)
!3099 = !DILocation(line: 140, column: 9, scope: !3094, inlinedAt: !3079)
!3100 = !DILocation(line: 144, column: 26, scope: !3023, inlinedAt: !3079)
!3101 = !DILocation(line: 144, column: 16, scope: !3023, inlinedAt: !3079)
!3102 = !DILocation(line: 145, column: 16, scope: !3023, inlinedAt: !3079)
!3103 = !DILocation(line: 146, column: 34, scope: !3023, inlinedAt: !3079)
!3104 = !DILocation(line: 146, column: 38, scope: !3023, inlinedAt: !3079)
!3105 = !DILocation(line: 146, column: 42, scope: !3023, inlinedAt: !3079)
!3106 = !DILocation(line: 147, column: 48, scope: !3023, inlinedAt: !3079)
!3107 = !DILocation(line: 147, column: 46, scope: !3023, inlinedAt: !3079)
!3108 = !DILocation(line: 147, column: 69, scope: !3023, inlinedAt: !3079)
!3109 = !DILocation(line: 147, column: 30, scope: !3023, inlinedAt: !3079)
!3110 = !DILocation(line: 134, column: 13, scope: !3014, inlinedAt: !3079)
!3111 = !DILocation(line: 148, column: 13, scope: !3023, inlinedAt: !3079)
!3112 = !DILocation(line: 150, column: 13, scope: !3113, inlinedAt: !3079)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !478, line: 149, column: 11)
!3114 = distinct !DILexicalBlock(scope: !3023, file: !478, line: 148, column: 13)
!3115 = !DILocation(line: 151, column: 17, scope: !3113, inlinedAt: !3079)
!3116 = !DILocation(line: 152, column: 34, scope: !3117, inlinedAt: !3079)
!3117 = distinct !DILexicalBlock(scope: !3113, file: !478, line: 151, column: 17)
!3118 = !DILocation(line: 153, column: 41, scope: !3113, inlinedAt: !3079)
!3119 = !DILocation(line: 153, column: 13, scope: !3113, inlinedAt: !3079)
!3120 = !DILocation(line: 157, column: 11, scope: !3014, inlinedAt: !3079)
!3121 = !DILocation(line: 171, column: 16, scope: !3012, inlinedAt: !3079)
!3122 = !DILocation(line: 162, column: 15, scope: !3012, inlinedAt: !3079)
!3123 = !DILocation(line: 173, column: 18, scope: !3011, inlinedAt: !3079)
!3124 = !DILocation(line: 173, column: 15, scope: !3012, inlinedAt: !3079)
!3125 = !DILocation(line: 180, column: 20, scope: !3010, inlinedAt: !3079)
!3126 = !DILocation(line: 178, column: 21, scope: !3010, inlinedAt: !3079)
!3127 = !DILocation(line: 181, column: 22, scope: !3009, inlinedAt: !3079)
!3128 = !DILocation(line: 181, column: 19, scope: !3010, inlinedAt: !3079)
!3129 = !DILocation(line: 184, column: 19, scope: !3130, inlinedAt: !3079)
!3130 = distinct !DILexicalBlock(scope: !3009, file: !478, line: 182, column: 17)
!3131 = !DILocation(line: 186, column: 17, scope: !3130, inlinedAt: !3079)
!3132 = !DILocation(line: 190, column: 25, scope: !3008, inlinedAt: !3079)
!3133 = !DILocation(line: 191, column: 26, scope: !3008, inlinedAt: !3079)
!3134 = !DILocation(line: 193, column: 19, scope: !3008, inlinedAt: !3079)
!3135 = !DILocation(line: 196, column: 23, scope: !3005, inlinedAt: !3079)
!3136 = !DILocation(line: 197, column: 23, scope: !3005, inlinedAt: !3079)
!3137 = !DILocalVariable(name: "__fp", arg: 1, scope: !3138, file: !2948, line: 63, type: !3028)
!3138 = distinct !DISubprogram(name: "getc_unlocked", scope: !2948, file: !2948, line: 63, type: !3139, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!25, !3028}
!3141 = !{!3137}
!3142 = !DILocation(line: 63, column: 22, scope: !3138, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 201, column: 27, scope: !3005, inlinedAt: !3079)
!3144 = !DILocation(line: 65, column: 10, scope: !3138, inlinedAt: !3143)
!3145 = !{!2954, !562, i64 8}
!3146 = !{!2954, !562, i64 16}
!3147 = !{!"branch_weights", i32 2000, i32 1}
!3148 = !DILocation(line: 195, column: 27, scope: !3005, inlinedAt: !3079)
!3149 = !DILocation(line: 202, column: 27, scope: !3005, inlinedAt: !3079)
!3150 = distinct !{!3150, !3151, !3154}
!3151 = !DILocation(line: 209, column: 27, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !478, line: 207, column: 25)
!3153 = distinct !DILexicalBlock(scope: !3005, file: !478, line: 206, column: 27)
!3154 = !DILocation(line: 211, column: 58, scope: !3152)
!3155 = !DILocation(line: 65, column: 10, scope: !3138, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 210, column: 33, scope: !3152, inlinedAt: !3079)
!3157 = !DILocation(line: 63, column: 22, scope: !3138, inlinedAt: !3156)
!3158 = !DILocation(line: 210, column: 29, scope: !3152, inlinedAt: !3079)
!3159 = distinct !{!3159, !3160, !3161}
!3160 = !DILocation(line: 193, column: 19, scope: !3007)
!3161 = !DILocation(line: 241, column: 21, scope: !3007)
!3162 = !DILocation(line: 216, column: 23, scope: !3005, inlinedAt: !3079)
!3163 = !DILocation(line: 217, column: 27, scope: !3164, inlinedAt: !3079)
!3164 = distinct !DILexicalBlock(scope: !3005, file: !478, line: 217, column: 27)
!3165 = !DILocation(line: 217, column: 64, scope: !3164, inlinedAt: !3079)
!3166 = !DILocation(line: 217, column: 27, scope: !3005, inlinedAt: !3079)
!3167 = !DILocation(line: 219, column: 28, scope: !3005, inlinedAt: !3079)
!3168 = !DILocation(line: 198, column: 30, scope: !3005, inlinedAt: !3079)
!3169 = !DILocation(line: 220, column: 28, scope: !3005, inlinedAt: !3079)
!3170 = !DILocation(line: 198, column: 34, scope: !3005, inlinedAt: !3079)
!3171 = !DILocation(line: 199, column: 29, scope: !3005, inlinedAt: !3079)
!3172 = !DILocation(line: 222, column: 36, scope: !3173, inlinedAt: !3079)
!3173 = distinct !DILexicalBlock(scope: !3005, file: !478, line: 222, column: 27)
!3174 = !DILocation(line: 222, column: 27, scope: !3005, inlinedAt: !3079)
!3175 = !DILocation(line: 225, column: 63, scope: !3176, inlinedAt: !3079)
!3176 = distinct !DILexicalBlock(scope: !3173, file: !478, line: 223, column: 25)
!3177 = !DILocation(line: 225, column: 46, scope: !3176, inlinedAt: !3079)
!3178 = !DILocation(line: 226, column: 25, scope: !3176, inlinedAt: !3079)
!3179 = !DILocation(line: 229, column: 36, scope: !3180, inlinedAt: !3079)
!3180 = distinct !DILexicalBlock(scope: !3173, file: !478, line: 228, column: 25)
!3181 = !DILocation(line: 230, column: 73, scope: !3180, inlinedAt: !3079)
!3182 = !DILocation(line: 230, column: 46, scope: !3180, inlinedAt: !3079)
!3183 = !DILocation(line: 232, column: 35, scope: !3184, inlinedAt: !3079)
!3184 = distinct !DILexicalBlock(scope: !3005, file: !478, line: 232, column: 27)
!3185 = !DILocation(line: 232, column: 27, scope: !3005, inlinedAt: !3079)
!3186 = !DILocation(line: 236, column: 27, scope: !3187, inlinedAt: !3079)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !478, line: 233, column: 25)
!3188 = !DILocation(line: 237, column: 27, scope: !3187, inlinedAt: !3079)
!3189 = !DILocation(line: 241, column: 21, scope: !3006, inlinedAt: !3079)
!3190 = !DILocation(line: 239, column: 39, scope: !3005, inlinedAt: !3079)
!3191 = !DILocation(line: 239, column: 50, scope: !3005, inlinedAt: !3079)
!3192 = !DILocation(line: 239, column: 61, scope: !3005, inlinedAt: !3079)
!3193 = !DILocalVariable(name: "__dest", arg: 1, scope: !3194, file: !3195, line: 88, type: !3198)
!3194 = distinct !DISubprogram(name: "strcpy", scope: !3195, file: !3195, line: 88, type: !3196, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3200)
!3195 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!32, !3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!3199 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3200 = !{!3193, !3201}
!3201 = !DILocalVariable(name: "__src", arg: 2, scope: !3194, file: !3195, line: 88, type: !3199)
!3202 = !DILocation(line: 88, column: 1, scope: !3194, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 239, column: 23, scope: !3005, inlinedAt: !3079)
!3204 = !DILocation(line: 90, column: 49, scope: !3194, inlinedAt: !3203)
!3205 = !DILocation(line: 90, column: 10, scope: !3194, inlinedAt: !3203)
!3206 = !DILocation(line: 88, column: 1, scope: !3194, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 240, column: 23, scope: !3005, inlinedAt: !3079)
!3208 = !DILocation(line: 90, column: 49, scope: !3194, inlinedAt: !3207)
!3209 = !DILocation(line: 90, column: 10, scope: !3194, inlinedAt: !3207)
!3210 = !DILocation(line: 193, column: 19, scope: !3006, inlinedAt: !3079)
!3211 = !DILocation(line: 242, column: 19, scope: !3008, inlinedAt: !3079)
!3212 = !DILocation(line: 243, column: 32, scope: !3213, inlinedAt: !3079)
!3213 = distinct !DILexicalBlock(scope: !3008, file: !478, line: 243, column: 23)
!3214 = !DILocation(line: 243, column: 23, scope: !3008, inlinedAt: !3079)
!3215 = !DILocation(line: 247, column: 33, scope: !3216, inlinedAt: !3079)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !478, line: 246, column: 21)
!3217 = !DILocation(line: 247, column: 45, scope: !3216, inlinedAt: !3079)
!3218 = !DILocation(line: 253, column: 11, scope: !3012, inlinedAt: !3079)
!3219 = !DILocation(line: 377, column: 23, scope: !3014, inlinedAt: !3079)
!3220 = !DILocation(line: 378, column: 5, scope: !3014, inlinedAt: !3079)
!3221 = !DILocation(line: 396, column: 15, scope: !2998)
!3222 = !DILocation(line: 590, column: 8, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3080, file: !478, line: 589, column: 3)
!3224 = !DILocation(line: 590, column: 17, scope: !3223)
!3225 = !DILocation(line: 589, column: 3, scope: !3080)
!3226 = !DILocation(line: 592, column: 9, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !478, line: 592, column: 9)
!3228 = !DILocation(line: 592, column: 35, scope: !3227)
!3229 = !DILocation(line: 593, column: 9, scope: !3227)
!3230 = !DILocation(line: 593, column: 24, scope: !3227)
!3231 = !DILocation(line: 593, column: 31, scope: !3227)
!3232 = !DILocation(line: 593, column: 34, scope: !3227)
!3233 = !DILocation(line: 593, column: 45, scope: !3227)
!3234 = !DILocation(line: 592, column: 9, scope: !3223)
!3235 = !DILocation(line: 595, column: 29, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3227, file: !478, line: 594, column: 7)
!3237 = !DILocation(line: 595, column: 27, scope: !3236)
!3238 = !DILocation(line: 595, column: 46, scope: !3236)
!3239 = !DILocation(line: 596, column: 9, scope: !3236)
!3240 = !DILocation(line: 591, column: 19, scope: !3223)
!3241 = !DILocation(line: 591, column: 36, scope: !3223)
!3242 = !DILocation(line: 591, column: 16, scope: !3223)
!3243 = !DILocation(line: 591, column: 52, scope: !3223)
!3244 = !DILocation(line: 591, column: 69, scope: !3223)
!3245 = !DILocation(line: 591, column: 49, scope: !3223)
!3246 = distinct !{!3246, !3225, !3247}
!3247 = !DILocation(line: 597, column: 7, scope: !3080)
!3248 = !DILocation(line: 602, column: 7, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !2998, file: !478, line: 602, column: 7)
!3250 = !DILocation(line: 602, column: 18, scope: !3249)
!3251 = !DILocation(line: 602, column: 7, scope: !2998)
!3252 = !DILocation(line: 612, column: 3, scope: !2998)
!3253 = distinct !DISubprogram(name: "rpl_fclose", scope: !3254, file: !3254, line: 56, type: !3255, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3297)
!3254 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!25, !3257}
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2375, line: 7, baseType: !3259)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2377, line: 241, size: 1728, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3259, file: !2377, line: 242, baseType: !25, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3259, file: !2377, line: 247, baseType: !32, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3259, file: !2377, line: 248, baseType: !32, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3259, file: !2377, line: 249, baseType: !32, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3259, file: !2377, line: 250, baseType: !32, size: 64, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3259, file: !2377, line: 251, baseType: !32, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3259, file: !2377, line: 252, baseType: !32, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3259, file: !2377, line: 253, baseType: !32, size: 64, offset: 448)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3259, file: !2377, line: 254, baseType: !32, size: 64, offset: 512)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3259, file: !2377, line: 256, baseType: !32, size: 64, offset: 576)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3259, file: !2377, line: 257, baseType: !32, size: 64, offset: 640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3259, file: !2377, line: 258, baseType: !32, size: 64, offset: 704)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3259, file: !2377, line: 260, baseType: !3274, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2377, line: 156, size: 192, elements: !3276)
!3276 = !{!3277, !3278, !3280}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3275, file: !2377, line: 157, baseType: !3274, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3275, file: !2377, line: 158, baseType: !3279, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3275, file: !2377, line: 162, baseType: !25, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3259, file: !2377, line: 262, baseType: !3279, size: 64, offset: 832)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3259, file: !2377, line: 264, baseType: !25, size: 32, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3259, file: !2377, line: 268, baseType: !25, size: 32, offset: 928)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3259, file: !2377, line: 270, baseType: !2403, size: 64, offset: 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3259, file: !2377, line: 274, baseType: !75, size: 16, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3259, file: !2377, line: 275, baseType: !2408, size: 8, offset: 1040)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3259, file: !2377, line: 276, baseType: !2410, size: 8, offset: 1048)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3259, file: !2377, line: 280, baseType: !2414, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3259, file: !2377, line: 289, baseType: !2417, size: 64, offset: 1152)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3259, file: !2377, line: 297, baseType: !31, size: 64, offset: 1216)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3259, file: !2377, line: 298, baseType: !31, size: 64, offset: 1280)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3259, file: !2377, line: 299, baseType: !31, size: 64, offset: 1344)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3259, file: !2377, line: 300, baseType: !31, size: 64, offset: 1408)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3259, file: !2377, line: 302, baseType: !76, size: 64, offset: 1472)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3259, file: !2377, line: 303, baseType: !25, size: 32, offset: 1536)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3259, file: !2377, line: 305, baseType: !2425, size: 160, offset: 1568)
!3297 = !{!3298, !3299, !3300, !3301}
!3298 = !DILocalVariable(name: "fp", arg: 1, scope: !3253, file: !3254, line: 56, type: !3257)
!3299 = !DILocalVariable(name: "saved_errno", scope: !3253, file: !3254, line: 58, type: !25)
!3300 = !DILocalVariable(name: "fd", scope: !3253, file: !3254, line: 59, type: !25)
!3301 = !DILocalVariable(name: "result", scope: !3253, file: !3254, line: 60, type: !25)
!3302 = !DILocation(line: 56, column: 19, scope: !3253)
!3303 = !DILocation(line: 58, column: 7, scope: !3253)
!3304 = !DILocation(line: 60, column: 7, scope: !3253)
!3305 = !DILocation(line: 63, column: 8, scope: !3253)
!3306 = !DILocation(line: 59, column: 7, scope: !3253)
!3307 = !DILocation(line: 64, column: 10, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3253, file: !3254, line: 64, column: 7)
!3309 = !DILocation(line: 64, column: 7, scope: !3253)
!3310 = !DILocation(line: 65, column: 12, scope: !3308)
!3311 = !DILocation(line: 65, column: 5, scope: !3308)
!3312 = !DILocation(line: 70, column: 9, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3253, file: !3254, line: 70, column: 7)
!3314 = !DILocation(line: 70, column: 23, scope: !3313)
!3315 = !DILocation(line: 70, column: 33, scope: !3313)
!3316 = !DILocation(line: 70, column: 26, scope: !3313)
!3317 = !DILocation(line: 70, column: 59, scope: !3313)
!3318 = !DILocation(line: 71, column: 7, scope: !3313)
!3319 = !DILocation(line: 71, column: 10, scope: !3313)
!3320 = !DILocation(line: 70, column: 7, scope: !3253)
!3321 = !DILocation(line: 98, column: 12, scope: !3253)
!3322 = !DILocation(line: 103, column: 7, scope: !3253)
!3323 = !DILocation(line: 72, column: 19, scope: !3313)
!3324 = !DILocation(line: 103, column: 19, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3253, file: !3254, line: 103, column: 7)
!3326 = !DILocation(line: 105, column: 13, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3325, file: !3254, line: 104, column: 5)
!3328 = !DILocation(line: 107, column: 5, scope: !3327)
!3329 = !DILocation(line: 110, column: 1, scope: !3253)
!3330 = distinct !DISubprogram(name: "rpl_fflush", scope: !3331, file: !3331, line: 127, type: !3332, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !3374)
!3331 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!25, !3334}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2375, line: 7, baseType: !3336)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2377, line: 241, size: 1728, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3336, file: !2377, line: 242, baseType: !25, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3336, file: !2377, line: 247, baseType: !32, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3336, file: !2377, line: 248, baseType: !32, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3336, file: !2377, line: 249, baseType: !32, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3336, file: !2377, line: 250, baseType: !32, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3336, file: !2377, line: 251, baseType: !32, size: 64, offset: 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3336, file: !2377, line: 252, baseType: !32, size: 64, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3336, file: !2377, line: 253, baseType: !32, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3336, file: !2377, line: 254, baseType: !32, size: 64, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3336, file: !2377, line: 256, baseType: !32, size: 64, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3336, file: !2377, line: 257, baseType: !32, size: 64, offset: 640)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3336, file: !2377, line: 258, baseType: !32, size: 64, offset: 704)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3336, file: !2377, line: 260, baseType: !3351, size: 64, offset: 768)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2377, line: 156, size: 192, elements: !3353)
!3353 = !{!3354, !3355, !3357}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3352, file: !2377, line: 157, baseType: !3351, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3352, file: !2377, line: 158, baseType: !3356, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3352, file: !2377, line: 162, baseType: !25, size: 32, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3336, file: !2377, line: 262, baseType: !3356, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3336, file: !2377, line: 264, baseType: !25, size: 32, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3336, file: !2377, line: 268, baseType: !25, size: 32, offset: 928)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3336, file: !2377, line: 270, baseType: !2403, size: 64, offset: 960)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3336, file: !2377, line: 274, baseType: !75, size: 16, offset: 1024)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3336, file: !2377, line: 275, baseType: !2408, size: 8, offset: 1040)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3336, file: !2377, line: 276, baseType: !2410, size: 8, offset: 1048)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3336, file: !2377, line: 280, baseType: !2414, size: 64, offset: 1088)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3336, file: !2377, line: 289, baseType: !2417, size: 64, offset: 1152)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3336, file: !2377, line: 297, baseType: !31, size: 64, offset: 1216)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3336, file: !2377, line: 298, baseType: !31, size: 64, offset: 1280)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3336, file: !2377, line: 299, baseType: !31, size: 64, offset: 1344)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3336, file: !2377, line: 300, baseType: !31, size: 64, offset: 1408)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3336, file: !2377, line: 302, baseType: !76, size: 64, offset: 1472)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3336, file: !2377, line: 303, baseType: !25, size: 32, offset: 1536)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3336, file: !2377, line: 305, baseType: !2425, size: 160, offset: 1568)
!3374 = !{!3375}
!3375 = !DILocalVariable(name: "stream", arg: 1, scope: !3330, file: !3331, line: 127, type: !3334)
!3376 = !DILocation(line: 127, column: 19, scope: !3330)
!3377 = !DILocation(line: 148, column: 14, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3330, file: !3331, line: 148, column: 7)
!3379 = !DILocation(line: 148, column: 22, scope: !3378)
!3380 = !DILocation(line: 148, column: 27, scope: !3378)
!3381 = !DILocation(line: 148, column: 7, scope: !3330)
!3382 = !DILocation(line: 149, column: 12, scope: !3378)
!3383 = !DILocation(line: 149, column: 5, scope: !3378)
!3384 = !DILocalVariable(name: "fp", arg: 1, scope: !3385, file: !3331, line: 40, type: !3334)
!3385 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3331, file: !3331, line: 40, type: !3386, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !3334}
!3388 = !{!3384}
!3389 = !DILocation(line: 40, column: 48, scope: !3385, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 153, column: 3, scope: !3330)
!3391 = !DILocation(line: 42, column: 11, scope: !3392, inlinedAt: !3390)
!3392 = distinct !DILexicalBlock(scope: !3385, file: !3331, line: 42, column: 7)
!3393 = !DILocation(line: 42, column: 18, scope: !3392, inlinedAt: !3390)
!3394 = !DILocation(line: 42, column: 7, scope: !3385, inlinedAt: !3390)
!3395 = !DILocation(line: 44, column: 5, scope: !3392, inlinedAt: !3390)
!3396 = !DILocation(line: 155, column: 10, scope: !3330)
!3397 = !DILocation(line: 155, column: 3, scope: !3330)
!3398 = !DILocation(line: 229, column: 1, scope: !3330)
!3399 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3400, file: !3400, line: 28, type: !3401, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3444)
!3400 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!25, !3403, !3443, !25}
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2375, line: 7, baseType: !3405)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2377, line: 241, size: 1728, elements: !3406)
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3405, file: !2377, line: 242, baseType: !25, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3405, file: !2377, line: 247, baseType: !32, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3405, file: !2377, line: 248, baseType: !32, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3405, file: !2377, line: 249, baseType: !32, size: 64, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3405, file: !2377, line: 250, baseType: !32, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3405, file: !2377, line: 251, baseType: !32, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3405, file: !2377, line: 252, baseType: !32, size: 64, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3405, file: !2377, line: 253, baseType: !32, size: 64, offset: 448)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3405, file: !2377, line: 254, baseType: !32, size: 64, offset: 512)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3405, file: !2377, line: 256, baseType: !32, size: 64, offset: 576)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3405, file: !2377, line: 257, baseType: !32, size: 64, offset: 640)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3405, file: !2377, line: 258, baseType: !32, size: 64, offset: 704)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3405, file: !2377, line: 260, baseType: !3420, size: 64, offset: 768)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2377, line: 156, size: 192, elements: !3422)
!3422 = !{!3423, !3424, !3426}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3421, file: !2377, line: 157, baseType: !3420, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3421, file: !2377, line: 158, baseType: !3425, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3421, file: !2377, line: 162, baseType: !25, size: 32, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3405, file: !2377, line: 262, baseType: !3425, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3405, file: !2377, line: 264, baseType: !25, size: 32, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3405, file: !2377, line: 268, baseType: !25, size: 32, offset: 928)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3405, file: !2377, line: 270, baseType: !2403, size: 64, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3405, file: !2377, line: 274, baseType: !75, size: 16, offset: 1024)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3405, file: !2377, line: 275, baseType: !2408, size: 8, offset: 1040)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3405, file: !2377, line: 276, baseType: !2410, size: 8, offset: 1048)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3405, file: !2377, line: 280, baseType: !2414, size: 64, offset: 1088)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3405, file: !2377, line: 289, baseType: !2417, size: 64, offset: 1152)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3405, file: !2377, line: 297, baseType: !31, size: 64, offset: 1216)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3405, file: !2377, line: 298, baseType: !31, size: 64, offset: 1280)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3405, file: !2377, line: 299, baseType: !31, size: 64, offset: 1344)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3405, file: !2377, line: 300, baseType: !31, size: 64, offset: 1408)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3405, file: !2377, line: 302, baseType: !76, size: 64, offset: 1472)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3405, file: !2377, line: 303, baseType: !25, size: 32, offset: 1536)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3405, file: !2377, line: 305, baseType: !2425, size: 160, offset: 1568)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2545, line: 57, baseType: !2403)
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "fp", arg: 1, scope: !3399, file: !3400, line: 28, type: !3403)
!3446 = !DILocalVariable(name: "offset", arg: 2, scope: !3399, file: !3400, line: 28, type: !3443)
!3447 = !DILocalVariable(name: "whence", arg: 3, scope: !3399, file: !3400, line: 28, type: !25)
!3448 = !DILocalVariable(name: "pos", scope: !3449, file: !3400, line: 116, type: !3443)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !3400, line: 112, column: 5)
!3450 = distinct !DILexicalBlock(scope: !3399, file: !3400, line: 51, column: 7)
!3451 = !DILocation(line: 28, column: 15, scope: !3399)
!3452 = !DILocation(line: 28, column: 25, scope: !3399)
!3453 = !DILocation(line: 28, column: 37, scope: !3399)
!3454 = !DILocation(line: 51, column: 11, scope: !3450)
!3455 = !DILocation(line: 51, column: 31, scope: !3450)
!3456 = !DILocation(line: 51, column: 24, scope: !3450)
!3457 = !DILocation(line: 52, column: 7, scope: !3450)
!3458 = !DILocation(line: 52, column: 14, scope: !3450)
!3459 = !{!2954, !562, i64 40}
!3460 = !DILocation(line: 52, column: 35, scope: !3450)
!3461 = !{!2954, !562, i64 32}
!3462 = !DILocation(line: 52, column: 28, scope: !3450)
!3463 = !DILocation(line: 53, column: 7, scope: !3450)
!3464 = !DILocation(line: 53, column: 14, scope: !3450)
!3465 = !{!2954, !562, i64 72}
!3466 = !DILocation(line: 53, column: 28, scope: !3450)
!3467 = !DILocation(line: 51, column: 7, scope: !3399)
!3468 = !DILocation(line: 116, column: 26, scope: !3449)
!3469 = !DILocation(line: 116, column: 19, scope: !3449)
!3470 = !DILocation(line: 116, column: 13, scope: !3449)
!3471 = !DILocation(line: 117, column: 15, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3449, file: !3400, line: 117, column: 11)
!3473 = !DILocation(line: 117, column: 11, scope: !3449)
!3474 = !DILocation(line: 127, column: 11, scope: !3449)
!3475 = !DILocation(line: 127, column: 18, scope: !3449)
!3476 = !DILocation(line: 128, column: 11, scope: !3449)
!3477 = !DILocation(line: 128, column: 19, scope: !3449)
!3478 = !{!2954, !1692, i64 144}
!3479 = !DILocation(line: 159, column: 7, scope: !3449)
!3480 = !DILocation(line: 161, column: 10, scope: !3399)
!3481 = !DILocation(line: 161, column: 3, scope: !3399)
!3482 = !DILocation(line: 162, column: 1, scope: !3399)
