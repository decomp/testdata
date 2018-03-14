; ModuleID = 'coreutils-8.27/src/true.bc'
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
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
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
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !556, metadata !557), !dbg !558
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !559
  %3 = load i8*, i8** @program_name, align 8, !dbg !559, !tbaa !560
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #9, !dbg !559
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !564
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #9, !dbg !564
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !565
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !565, !tbaa !560
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8) #9, !dbg !565
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !566
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !566, !tbaa !560
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11) #9, !dbg !566
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !567
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !567
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !492, metadata !557) #9, !dbg !568
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !492, metadata !557) #9, !dbg !568
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !570
  %16 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !570
  %17 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !571
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !500, metadata !557) #9, !dbg !572
  %18 = icmp eq i8* %17, null, !dbg !573
  br i1 %18, label %25, label %19, !dbg !575

; <label>:19:                                     ; preds = %1
  %20 = tail call i32 @strncmp(i8* nonnull %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !576
  %21 = icmp eq i32 %20, 0, !dbg !576
  br i1 %21, label %25, label %22, !dbg !577

; <label>:22:                                     ; preds = %19
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #9, !dbg !578
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !578
  br label %25, !dbg !580

; <label>:25:                                     ; preds = %1, %19, %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #9, !dbg !581
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !581
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !582
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !582
  tail call void @exit(i32 %0) #15, !dbg !583
  unreachable, !dbg !583
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
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #6 !dbg !584 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !589, metadata !557), !dbg !591
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !590, metadata !557), !dbg !592
  %3 = icmp eq i32 %0, 2, !dbg !593
  br i1 %3, label %4, label %21, !dbg !595

; <label>:4:                                      ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !596, !tbaa !560
  tail call void @set_program_name(i8* %5) #9, !dbg !598
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !599
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !600
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !601
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !602
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !603
  %11 = load i8*, i8** %10, align 8, !dbg !603, !tbaa !560
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !603
  %13 = icmp eq i32 %12, 0, !dbg !603
  br i1 %13, label %14, label %15, !dbg !605

; <label>:14:                                     ; preds = %4
  tail call void @usage(i32 0) #16, !dbg !606
  unreachable, !dbg !606

; <label>:15:                                     ; preds = %4
  %16 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #14, !dbg !607
  %17 = icmp eq i32 %16, 0, !dbg !607
  br i1 %17, label %18, label %21, !dbg !609

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !560
  %20 = load i8*, i8** @Version, align 8, !dbg !611, !tbaa !560
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #9, !dbg !612
  br label %21, !dbg !612

; <label>:21:                                     ; preds = %15, %18, %2
  ret i32 0, !dbg !613
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
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !614 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !616, metadata !557), !dbg !617
  store i8* %0, i8** @file_name, align 8, !dbg !618, !tbaa !560
  ret void, !dbg !619
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !620 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !624, metadata !557), !dbg !625
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !626, !tbaa !627
  ret void, !dbg !629
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !630 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !560
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !638
  %3 = icmp eq i32 %2, 0, !dbg !639
  br i1 %3, label %21, label %4, !dbg !640

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !641, !tbaa !627, !range !642
  %6 = icmp eq i8 %5, 0, !dbg !641
  %7 = tail call i32* @__errno_location() #17, !dbg !643
  br i1 %6, label %11, label %8, !dbg !645

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !646, !tbaa !647
  %10 = icmp eq i32 %9, 32, !dbg !649
  br i1 %10, label %21, label %11, !dbg !650

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #9, !dbg !651
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !634, metadata !557), !dbg !652
  %13 = load i8*, i8** @file_name, align 8, !dbg !653, !tbaa !560
  %14 = icmp eq i8* %13, null, !dbg !653
  %15 = load i32, i32* %7, align 4, !tbaa !647
  br i1 %14, label %18, label %16, !dbg !654

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !655
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !656
  br label %19, !dbg !656

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #9, !dbg !657
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !658, !tbaa !647
  tail call void @_exit(i32 %20) #15, !dbg !659
  unreachable, !dbg !659

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !660, !tbaa !560
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !662
  %24 = icmp eq i32 %23, 0, !dbg !663
  br i1 %24, label %27, label %25, !dbg !664

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !665, !tbaa !647
  tail call void @_exit(i32 %26) #15, !dbg !666
  unreachable, !dbg !666

; <label>:27:                                     ; preds = %21
  ret void, !dbg !667
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !668 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !670, metadata !557), !dbg !673
  %2 = icmp eq i8* %0, null, !dbg !674
  br i1 %2, label %3, label %6, !dbg !676

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !677, !tbaa !560
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !679
  tail call void @abort() #15, !dbg !680
  unreachable, !dbg !680

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !681
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !671, metadata !557), !dbg !682
  %8 = icmp eq i8* %7, null, !dbg !683
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !684
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !685
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !672, metadata !557), !dbg !686
  %11 = ptrtoint i8* %10 to i64, !dbg !687
  %12 = ptrtoint i8* %0 to i64, !dbg !687
  %13 = sub i64 %11, %12, !dbg !687
  %14 = icmp sgt i64 %13, 6, !dbg !689
  br i1 %14, label %15, label %24, !dbg !690

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !691
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.30, i64 0, i64 0), i64 7) #14, !dbg !692
  %18 = icmp eq i32 %17, 0, !dbg !693
  br i1 %18, label %19, label %24, !dbg !694

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !670, metadata !557), !dbg !673
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.31, i64 0, i64 0), i64 3) #14, !dbg !695
  %21 = icmp eq i32 %20, 0, !dbg !698
  br i1 %21, label %22, label %24, !dbg !699

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !700
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !670, metadata !557), !dbg !673
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !702, !tbaa !560
  br label %24, !dbg !703

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !670, metadata !557), !dbg !673
  store i8* %25, i8** @program_name, align 8, !dbg !704, !tbaa !560
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !705, !tbaa !560
  ret void, !dbg !706
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !707 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !712, metadata !557), !dbg !715
  %2 = tail call i32* @__errno_location() #17, !dbg !716
  %3 = load i32, i32* %2, align 4, !dbg !716, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !713, metadata !557), !dbg !717
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !718
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !718
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !718
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !719
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !719
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !714, metadata !557), !dbg !720
  store i32 %3, i32* %2, align 4, !dbg !721, !tbaa !647
  ret %struct.quoting_options* %8, !dbg !722
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !723 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !729, metadata !557), !dbg !730
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !731
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !731
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !732
  %5 = load i32, i32* %4, align 8, !dbg !732, !tbaa !733
  ret i32 %5, !dbg !735
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !736 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !740, metadata !557), !dbg !742
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !741, metadata !557), !dbg !743
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !744
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !744
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !745
  store i32 %1, i32* %5, align 8, !dbg !746, !tbaa !733
  ret void, !dbg !747
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !748 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !752, metadata !557), !dbg !760
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !753, metadata !557), !dbg !761
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !754, metadata !557), !dbg !762
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !755, metadata !557), !dbg !763
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !764
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !764
  %6 = lshr i8 %1, 5, !dbg !765
  %7 = zext i8 %6 to i64, !dbg !765
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !766
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !756, metadata !557), !dbg !767
  %9 = and i8 %1, 31, !dbg !768
  %10 = zext i8 %9 to i32, !dbg !769
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !758, metadata !557), !dbg !770
  %11 = load i32, i32* %8, align 4, !dbg !771, !tbaa !647
  %12 = lshr i32 %11, %10, !dbg !772
  %13 = and i32 %12, 1, !dbg !773
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !759, metadata !557), !dbg !774
  %14 = and i32 %2, 1, !dbg !775
  %15 = xor i32 %13, %14, !dbg !776
  %16 = shl i32 %15, %10, !dbg !777
  %17 = xor i32 %16, %11, !dbg !778
  store i32 %17, i32* %8, align 4, !dbg !778, !tbaa !647
  ret i32 %13, !dbg !779
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !780 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !784, metadata !557), !dbg !787
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !785, metadata !557), !dbg !788
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !784, metadata !557), !dbg !787
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !791
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !784, metadata !557), !dbg !787
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !792
  %6 = load i32, i32* %5, align 4, !dbg !792, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !786, metadata !557), !dbg !794
  store i32 %1, i32* %5, align 4, !dbg !795, !tbaa !793
  ret i32 %6, !dbg !796
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !797 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !801, metadata !557), !dbg !804
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !802, metadata !557), !dbg !805
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !803, metadata !557), !dbg !806
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !807
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !801, metadata !557), !dbg !804
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !809
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !801, metadata !557), !dbg !804
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !810
  store i32 10, i32* %6, align 8, !dbg !811, !tbaa !733
  %7 = icmp ne i8* %1, null, !dbg !812
  %8 = icmp ne i8* %2, null, !dbg !814
  %9 = and i1 %7, %8, !dbg !815
  br i1 %9, label %11, label %10, !dbg !815

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !816
  unreachable, !dbg !816

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !817
  store i8* %1, i8** %12, align 8, !dbg !818, !tbaa !819
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !820
  store i8* %2, i8** %13, align 8, !dbg !821, !tbaa !822
  ret void, !dbg !823
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !824 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !828, metadata !557), !dbg !836
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !829, metadata !557), !dbg !837
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !830, metadata !557), !dbg !838
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !831, metadata !557), !dbg !839
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !832, metadata !557), !dbg !840
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !841
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !841
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !833, metadata !557), !dbg !842
  %8 = tail call i32* @__errno_location() #17, !dbg !843
  %9 = load i32, i32* %8, align 4, !dbg !843, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !834, metadata !557), !dbg !844
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !845
  %11 = load i32, i32* %10, align 8, !dbg !845, !tbaa !733
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !846
  %13 = load i32, i32* %12, align 4, !dbg !846, !tbaa !793
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !847
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !848
  %16 = load i8*, i8** %15, align 8, !dbg !848, !tbaa !819
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !849
  %18 = load i8*, i8** %17, align 8, !dbg !849, !tbaa !822
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !850
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !835, metadata !557), !dbg !851
  store i32 %9, i32* %8, align 4, !dbg !852, !tbaa !647
  ret i64 %19, !dbg !853
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !854 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !860, metadata !557), !dbg !924
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !861, metadata !557), !dbg !925
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !862, metadata !557), !dbg !926
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !863, metadata !557), !dbg !927
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !864, metadata !557), !dbg !928
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !865, metadata !557), !dbg !929
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !866, metadata !557), !dbg !930
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !867, metadata !557), !dbg !931
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !868, metadata !557), !dbg !932
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !870, metadata !557), !dbg !933
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !871, metadata !557), !dbg !934
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !872, metadata !557), !dbg !935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !873, metadata !557), !dbg !936
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !874, metadata !557), !dbg !937
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !938
  %14 = icmp eq i64 %13, 1, !dbg !939
  %15 = lshr i32 %5, 1, !dbg !940
  %16 = trunc i32 %15 to i8, !dbg !940
  %17 = and i8 %16, 1, !dbg !940
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !876, metadata !557), !dbg !940
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !877, metadata !557), !dbg !941
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !878, metadata !557), !dbg !942
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !879, metadata !557), !dbg !943
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !944

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !879, metadata !557), !dbg !943
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !878, metadata !557), !dbg !942
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !876, metadata !557), !dbg !940
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !863, metadata !557), !dbg !927
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !874, metadata !557), !dbg !937
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !873, metadata !557), !dbg !936
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !872, metadata !557), !dbg !935
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !871, metadata !557), !dbg !934
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !868, metadata !557), !dbg !932
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !867, metadata !557), !dbg !931
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !864, metadata !557), !dbg !928
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
  ], !dbg !945

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !864, metadata !557), !dbg !928
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !876, metadata !557), !dbg !940
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !876, metadata !557), !dbg !940
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !864, metadata !557), !dbg !928
  br label %94, !dbg !946

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !876, metadata !557), !dbg !940
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !864, metadata !557), !dbg !928
  %43 = and i8 %36, 1, !dbg !948
  %44 = icmp eq i8 %43, 0, !dbg !948
  br i1 %44, label %45, label %94, !dbg !946

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !950
  br i1 %46, label %94, label %47, !dbg !953

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !950, !tbaa !954
  br label %94, !dbg !950

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.42, i64 0, i64 0), i32 %28), !dbg !955
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !867, metadata !557), !dbg !931
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), i32 %28), !dbg !959
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !868, metadata !557), !dbg !932
  br label %51, !dbg !960

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !868, metadata !557), !dbg !932
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !867, metadata !557), !dbg !931
  %54 = and i8 %36, 1, !dbg !961
  %55 = icmp eq i8 %54, 0, !dbg !961
  br i1 %55, label %56, label %72, !dbg !963

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !872, metadata !557), !dbg !935
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !872, metadata !557), !dbg !935
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !870, metadata !557), !dbg !933
  %57 = load i8, i8* %52, align 1, !dbg !964, !tbaa !954
  %58 = icmp eq i8 %57, 0, !dbg !967
  br i1 %58, label %72, label %59, !dbg !967

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !968

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !872, metadata !557), !dbg !935
  %64 = icmp ult i64 %63, %40, !dbg !968
  br i1 %64, label %65, label %67, !dbg !971

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !968
  store i8 %61, i8* %66, align 1, !dbg !968, !tbaa !954
  br label %67, !dbg !968

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !971
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !870, metadata !557), !dbg !933
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !972
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !872, metadata !557), !dbg !935
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !872, metadata !557), !dbg !935
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !870, metadata !557), !dbg !933
  %70 = load i8, i8* %69, align 1, !dbg !964, !tbaa !954
  %71 = icmp eq i8 %70, 0, !dbg !967
  br i1 %71, label %72, label %60, !dbg !967, !llvm.loop !973

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !874, metadata !557), !dbg !937
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !872, metadata !557), !dbg !935
  %74 = call i64 @strlen(i8* %53) #14, !dbg !975
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !873, metadata !557), !dbg !936
  br label %94, !dbg !976

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !874, metadata !557), !dbg !937
  br label %76, !dbg !977

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !874, metadata !557), !dbg !937
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !876, metadata !557), !dbg !940
  br label %78, !dbg !978

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !876, metadata !557), !dbg !940
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !874, metadata !557), !dbg !937
  %81 = and i8 %80, 1, !dbg !979
  %82 = icmp eq i8 %81, 0, !dbg !979
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !874, metadata !557), !dbg !937
  %83 = select i1 %82, i8 1, i8 %79, !dbg !981
  br label %84, !dbg !981

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !876, metadata !557), !dbg !940
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !874, metadata !557), !dbg !937
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !864, metadata !557), !dbg !928
  %87 = and i8 %86, 1, !dbg !982
  %88 = icmp eq i8 %87, 0, !dbg !982
  br i1 %88, label %89, label %94, !dbg !984

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !985
  br i1 %90, label %94, label %91, !dbg !988

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !985, !tbaa !954
  br label %94, !dbg !985

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !876, metadata !557), !dbg !940
  br label %94, !dbg !989

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !990
  unreachable, !dbg !990

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !876, metadata !557), !dbg !940
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !874, metadata !557), !dbg !937
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !873, metadata !557), !dbg !936
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !872, metadata !557), !dbg !935
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !868, metadata !557), !dbg !932
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !867, metadata !557), !dbg !931
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !864, metadata !557), !dbg !928
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !869, metadata !557), !dbg !991
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
  br label %122, !dbg !992

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !879, metadata !557), !dbg !943
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !878, metadata !557), !dbg !942
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !863, metadata !557), !dbg !927
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !871, metadata !557), !dbg !934
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !869, metadata !557), !dbg !991
  %131 = icmp eq i64 %126, -1, !dbg !993
  br i1 %131, label %134, label %132, !dbg !994

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !995
  br i1 %133, label %590, label %138, !dbg !996

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !997
  %136 = load i8, i8* %135, align 1, !dbg !997, !tbaa !954
  %137 = icmp eq i8 %136, 0, !dbg !998
  br i1 %137, label %590, label %138, !dbg !996

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !885, metadata !557), !dbg !999
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !886, metadata !557), !dbg !1000
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !887, metadata !557), !dbg !1001
  br i1 %108, label %139, label %154, !dbg !1002

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1004
  %141 = and i1 %109, %131, !dbg !1005
  br i1 %141, label %142, label %144, !dbg !1005

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1006
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !863, metadata !557), !dbg !927
  br label %144, !dbg !1007

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !863, metadata !557), !dbg !927
  %146 = icmp ugt i64 %140, %145, !dbg !1008
  br i1 %146, label %154, label %147, !dbg !1009

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1010
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1011
  %150 = icmp ne i32 %149, 0, !dbg !1012
  %151 = or i1 %150, %111, !dbg !1013
  %152 = xor i1 %150, true, !dbg !1013
  %153 = zext i1 %152 to i8, !dbg !1013
  br i1 %151, label %154, label %635, !dbg !1013

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !885, metadata !557), !dbg !999
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !863, metadata !557), !dbg !927
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1014
  %158 = load i8, i8* %157, align 1, !dbg !1014, !tbaa !954
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !880, metadata !557), !dbg !1015
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
  ], !dbg !1016

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1017

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1018

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !886, metadata !557), !dbg !1000
  %162 = and i8 %127, 1, !dbg !1022
  %163 = icmp eq i8 %162, 0, !dbg !1022
  %164 = and i1 %113, %163, !dbg !1022
  br i1 %164, label %165, label %181, !dbg !1022

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1024
  br i1 %166, label %167, label %169, !dbg !1028

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1024
  store i8 39, i8* %168, align 1, !dbg !1024, !tbaa !954
  br label %169, !dbg !1024

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !870, metadata !557), !dbg !933
  %171 = icmp ult i64 %170, %130, !dbg !1029
  br i1 %171, label %172, label %174, !dbg !1032

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1029
  store i8 36, i8* %173, align 1, !dbg !1029, !tbaa !954
  br label %174, !dbg !1029

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !870, metadata !557), !dbg !933
  %176 = icmp ult i64 %175, %130, !dbg !1033
  br i1 %176, label %177, label %179, !dbg !1036

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1033
  store i8 39, i8* %178, align 1, !dbg !1033, !tbaa !954
  br label %179, !dbg !1033

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !877, metadata !557), !dbg !941
  br label %181, !dbg !1037

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !870, metadata !557), !dbg !933
  %184 = icmp ult i64 %182, %130, !dbg !1038
  br i1 %184, label %185, label %187, !dbg !1041

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1038
  store i8 92, i8* %186, align 1, !dbg !1038, !tbaa !954
  br label %187, !dbg !1038

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !870, metadata !557), !dbg !933
  br i1 %105, label %189, label %470, !dbg !1042

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1044
  %191 = icmp ult i64 %190, %155, !dbg !1045
  br i1 %191, label %192, label %470, !dbg !1046

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1047
  %194 = load i8, i8* %193, align 1, !dbg !1047, !tbaa !954
  %195 = add i8 %194, -48, !dbg !1048
  %196 = icmp ult i8 %195, 10, !dbg !1048
  br i1 %196, label %197, label %470, !dbg !1048

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1049
  br i1 %198, label %199, label %201, !dbg !1053

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1049
  store i8 48, i8* %200, align 1, !dbg !1049, !tbaa !954
  br label %201, !dbg !1049

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1053
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !870, metadata !557), !dbg !933
  %203 = icmp ult i64 %202, %130, !dbg !1054
  br i1 %203, label %204, label %206, !dbg !1057

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1054
  store i8 48, i8* %205, align 1, !dbg !1054, !tbaa !954
  br label %206, !dbg !1054

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !870, metadata !557), !dbg !933
  br label %470, !dbg !1058

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1059

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1060

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1061

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1063

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1065
  %214 = icmp ult i64 %213, %155, !dbg !1066
  br i1 %214, label %215, label %470, !dbg !1067

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1068
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1069
  %218 = load i8, i8* %217, align 1, !dbg !1069, !tbaa !954
  %219 = icmp eq i8 %218, 63, !dbg !1070
  br i1 %219, label %220, label %470, !dbg !1071

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1072
  %222 = load i8, i8* %221, align 1, !dbg !1072, !tbaa !954
  %223 = sext i8 %222 to i32, !dbg !1072
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
  ], !dbg !1073

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1074

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !880, metadata !557), !dbg !1015
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !869, metadata !557), !dbg !991
  %226 = icmp ult i64 %124, %130, !dbg !1076
  br i1 %226, label %227, label %229, !dbg !1079

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1076
  store i8 63, i8* %228, align 1, !dbg !1076, !tbaa !954
  br label %229, !dbg !1076

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !870, metadata !557), !dbg !933
  %231 = icmp ult i64 %230, %130, !dbg !1080
  br i1 %231, label %232, label %234, !dbg !1083

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1080
  store i8 34, i8* %233, align 1, !dbg !1080, !tbaa !954
  br label %234, !dbg !1080

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !870, metadata !557), !dbg !933
  %236 = icmp ult i64 %235, %130, !dbg !1084
  br i1 %236, label %237, label %239, !dbg !1087

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1084
  store i8 34, i8* %238, align 1, !dbg !1084, !tbaa !954
  br label %239, !dbg !1084

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !870, metadata !557), !dbg !933
  %241 = icmp ult i64 %240, %130, !dbg !1088
  br i1 %241, label %242, label %244, !dbg !1091

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1088
  store i8 63, i8* %243, align 1, !dbg !1088, !tbaa !954
  br label %244, !dbg !1088

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !870, metadata !557), !dbg !933
  br label %470, !dbg !1092

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !884, metadata !557), !dbg !1093
  br label %256, !dbg !1094

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !884, metadata !557), !dbg !1093
  br label %256, !dbg !1095

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !884, metadata !557), !dbg !1093
  br label %254, !dbg !1096

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !884, metadata !557), !dbg !1093
  br label %254, !dbg !1097

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !884, metadata !557), !dbg !1093
  br label %256, !dbg !1098

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !884, metadata !557), !dbg !1093
  br i1 %113, label %252, label %253, !dbg !1099

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1100

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1103

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !884, metadata !557), !dbg !1093
  br i1 %117, label %256, label %635, !dbg !1105

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !884, metadata !557), !dbg !1093
  br i1 %104, label %497, label %470, !dbg !1107

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1108
  br i1 %259, label %260, label %265, !dbg !1110

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1111, !tbaa !954
  %262 = icmp ne i8 %261, 0, !dbg !1112
  %263 = icmp ne i64 %123, 0, !dbg !1113
  %264 = or i1 %263, %262, !dbg !1115
  br i1 %264, label %470, label %271, !dbg !1115

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1116
  %267 = icmp ne i64 %123, 0, !dbg !1113
  %268 = or i1 %267, %266, !dbg !1110
  br i1 %268, label %470, label %271, !dbg !1110

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1113
  br i1 %270, label %271, label %470, !dbg !1117

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !887, metadata !557), !dbg !1001
  br label %272, !dbg !1118

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !887, metadata !557), !dbg !1001
  br i1 %117, label %470, label %635, !dbg !1119

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !878, metadata !557), !dbg !942
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !887, metadata !557), !dbg !1001
  br i1 %113, label %275, label %470, !dbg !1121

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1122

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1125
  %278 = icmp ne i64 %125, 0, !dbg !1127
  %279 = or i1 %278, %277, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !871, metadata !557), !dbg !934
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !861, metadata !557), !dbg !925
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1128
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !871, metadata !557), !dbg !934
  %282 = icmp ult i64 %124, %281, !dbg !1129
  br i1 %282, label %283, label %285, !dbg !1132

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1129
  store i8 39, i8* %284, align 1, !dbg !1129, !tbaa !954
  br label %285, !dbg !1129

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !870, metadata !557), !dbg !933
  %287 = icmp ult i64 %286, %281, !dbg !1133
  br i1 %287, label %288, label %290, !dbg !1136

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1133
  store i8 92, i8* %289, align 1, !dbg !1133, !tbaa !954
  br label %290, !dbg !1133

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !870, metadata !557), !dbg !933
  %292 = icmp ult i64 %291, %281, !dbg !1137
  br i1 %292, label %293, label %295, !dbg !1140

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1137
  store i8 39, i8* %294, align 1, !dbg !1137, !tbaa !954
  br label %295, !dbg !1137

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !877, metadata !557), !dbg !941
  br label %470, !dbg !1141

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1142

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !888, metadata !557), !dbg !1143
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1144
  %300 = load i16*, i16** %299, align 8, !dbg !1144, !tbaa !560
  %301 = zext i8 %158 to i64, !dbg !1144
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1144
  %303 = load i16, i16* %302, align 2, !dbg !1144, !tbaa !1146
  %304 = lshr i16 %303, 14, !dbg !1148
  %305 = trunc i16 %304 to i8, !dbg !1148
  %306 = and i8 %305, 1, !dbg !1148
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !891, metadata !557), !dbg !1149
  br label %362, !dbg !1150

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1151
  store i64 0, i64* %10, align 8, !dbg !1152
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !888, metadata !557), !dbg !1143
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !891, metadata !557), !dbg !1149
  %308 = icmp eq i64 %155, -1, !dbg !1153
  br i1 %308, label %309, label %311, !dbg !1155

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !863, metadata !557), !dbg !927
  br label %311, !dbg !1157

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !863, metadata !557), !dbg !927
  br label %313, !dbg !1158, !llvm.loop !1159

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !891, metadata !557), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !888, metadata !557), !dbg !1143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1161
  %316 = add i64 %314, %123, !dbg !1162
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1163
  %318 = sub i64 %312, %316, !dbg !1164
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !892, metadata !557), !dbg !1165
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !910, metadata !557), !dbg !1166
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #9, !dbg !1167
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !913, metadata !557), !dbg !1168
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1169

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !891, metadata !557), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !888, metadata !557), !dbg !1143
  %321 = icmp ugt i64 %312, %316, !dbg !1170
  br i1 %321, label %322, label %347, !dbg !1172

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1173

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !888, metadata !557), !dbg !1143
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1173
  %327 = load i8, i8* %326, align 1, !dbg !1173, !tbaa !954
  %328 = icmp eq i8 %327, 0, !dbg !1172
  br i1 %328, label %347, label %329, !dbg !1174

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !888, metadata !557), !dbg !1143
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !888, metadata !557), !dbg !1143
  %331 = add i64 %330, %123, !dbg !1176
  %332 = icmp ult i64 %331, %312, !dbg !1170
  br i1 %332, label %323, label %347, !dbg !1172, !llvm.loop !1177

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1178
  %335 = and i1 %115, %334, !dbg !1181
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !914, metadata !557), !dbg !1182
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !914, metadata !557), !dbg !1182
  br i1 %335, label %336, label %350, !dbg !1181

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1183

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !914, metadata !557), !dbg !1182
  %339 = add i64 %338, %316, !dbg !1183
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1184
  %341 = load i8, i8* %340, align 1, !dbg !1184, !tbaa !954
  %342 = sext i8 %341 to i32, !dbg !1184
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1185

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !914, metadata !557), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !914, metadata !557), !dbg !1182
  %345 = icmp ult i64 %344, %319, !dbg !1178
  br i1 %345, label %337, label %350, !dbg !1187, !llvm.loop !1188

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1190

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !891, metadata !557), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !888, metadata !557), !dbg !1143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1190
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1191, !tbaa !647
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !910, metadata !557), !dbg !1166
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !1193
  %353 = icmp eq i32 %352, 0, !dbg !1193
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !891, metadata !557), !dbg !1149
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1194
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !891, metadata !557), !dbg !1149
  %355 = add i64 %319, %314, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !888, metadata !557), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !891, metadata !557), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !888, metadata !557), !dbg !1143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1190
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !892, metadata !557), !dbg !1165
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1196
  %357 = icmp eq i32 %356, 0, !dbg !1197
  br i1 %357, label %313, label %358, !dbg !1198, !llvm.loop !1159

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1199
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !891, metadata !557), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !888, metadata !557), !dbg !1143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1190
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1199
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !891, metadata !557), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !888, metadata !557), !dbg !1143
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !863, metadata !557), !dbg !927
  %366 = and i8 %365, 1, !dbg !1200
  %367 = icmp ne i8 %366, 0, !dbg !1200
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !887, metadata !557), !dbg !1001
  %368 = icmp ult i64 %364, 2, !dbg !1201
  %369 = or i1 %367, %112, !dbg !1202
  %370 = and i1 %368, %369, !dbg !1203
  br i1 %370, label %470, label %371, !dbg !1203

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !921, metadata !557), !dbg !1205
  br label %373, !dbg !1206

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !886, metadata !557), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !885, metadata !557), !dbg !999
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !880, metadata !557), !dbg !1015
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !869, metadata !557), !dbg !991
  br i1 %369, label %426, label %380, !dbg !1207

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1212

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !886, metadata !557), !dbg !1000
  %382 = and i8 %376, 1, !dbg !1215
  %383 = icmp eq i8 %382, 0, !dbg !1215
  %384 = and i1 %113, %383, !dbg !1215
  br i1 %384, label %385, label %401, !dbg !1215

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1217
  br i1 %386, label %387, label %389, !dbg !1221

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1217
  store i8 39, i8* %388, align 1, !dbg !1217, !tbaa !954
  br label %389, !dbg !1217

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !870, metadata !557), !dbg !933
  %391 = icmp ult i64 %390, %130, !dbg !1222
  br i1 %391, label %392, label %394, !dbg !1225

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1222
  store i8 36, i8* %393, align 1, !dbg !1222, !tbaa !954
  br label %394, !dbg !1222

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !870, metadata !557), !dbg !933
  %396 = icmp ult i64 %395, %130, !dbg !1226
  br i1 %396, label %397, label %399, !dbg !1229

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1226
  store i8 39, i8* %398, align 1, !dbg !1226, !tbaa !954
  br label %399, !dbg !1226

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !877, metadata !557), !dbg !941
  br label %401, !dbg !1230

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !870, metadata !557), !dbg !933
  %404 = icmp ult i64 %402, %130, !dbg !1231
  br i1 %404, label %405, label %407, !dbg !1234

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1231
  store i8 92, i8* %406, align 1, !dbg !1231, !tbaa !954
  br label %407, !dbg !1231

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !870, metadata !557), !dbg !933
  %409 = icmp ult i64 %408, %130, !dbg !1235
  br i1 %409, label %410, label %414, !dbg !1238

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1235
  %412 = or i8 %411, 48, !dbg !1235
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1235
  store i8 %412, i8* %413, align 1, !dbg !1235, !tbaa !954
  br label %414, !dbg !1235

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !870, metadata !557), !dbg !933
  %416 = icmp ult i64 %415, %130, !dbg !1239
  br i1 %416, label %417, label %422, !dbg !1242

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1239
  %419 = and i8 %418, 7, !dbg !1239
  %420 = or i8 %419, 48, !dbg !1239
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1239
  store i8 %420, i8* %421, align 1, !dbg !1239, !tbaa !954
  br label %422, !dbg !1239

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !870, metadata !557), !dbg !933
  %424 = and i8 %377, 7, !dbg !1243
  %425 = or i8 %424, 48, !dbg !1244
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !880, metadata !557), !dbg !1015
  br label %435, !dbg !1245

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1246
  %428 = icmp eq i8 %427, 0, !dbg !1246
  br i1 %428, label %435, label %429, !dbg !1248

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1249
  br i1 %430, label %431, label %433, !dbg !1253

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1249
  store i8 92, i8* %432, align 1, !dbg !1249, !tbaa !954
  br label %433, !dbg !1249

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !885, metadata !557), !dbg !999
  br label %435, !dbg !1254

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !886, metadata !557), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !885, metadata !557), !dbg !999
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !880, metadata !557), !dbg !1015
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !870, metadata !557), !dbg !933
  %441 = add i64 %374, 1, !dbg !1255
  %442 = icmp ugt i64 %372, %441, !dbg !1257
  br i1 %442, label %443, label %535, !dbg !1258

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1259
  %445 = icmp ne i8 %444, 0, !dbg !1259
  %446 = and i8 %440, 1, !dbg !1259
  %447 = icmp eq i8 %446, 0, !dbg !1259
  %448 = and i1 %445, %447, !dbg !1259
  br i1 %448, label %449, label %460, !dbg !1259

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1262
  br i1 %450, label %451, label %453, !dbg !1266

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1262
  store i8 39, i8* %452, align 1, !dbg !1262, !tbaa !954
  br label %453, !dbg !1262

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !870, metadata !557), !dbg !933
  %455 = icmp ult i64 %454, %130, !dbg !1267
  br i1 %455, label %456, label %458, !dbg !1270

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1267
  store i8 39, i8* %457, align 1, !dbg !1267, !tbaa !954
  br label %458, !dbg !1267

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !877, metadata !557), !dbg !941
  br label %460, !dbg !1271

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !870, metadata !557), !dbg !933
  %463 = icmp ult i64 %461, %130, !dbg !1272
  br i1 %463, label %464, label %466, !dbg !1275

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1272
  store i8 %438, i8* %465, align 1, !dbg !1272, !tbaa !954
  br label %466, !dbg !1272

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !869, metadata !557), !dbg !991
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1276
  %469 = load i8, i8* %468, align 1, !dbg !1276, !tbaa !954
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !880, metadata !557), !dbg !1015
  br label %373, !dbg !1277, !llvm.loop !1278

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !887, metadata !557), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !886, metadata !557), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !885, metadata !557), !dbg !999
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !880, metadata !557), !dbg !1015
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !878, metadata !557), !dbg !942
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !863, metadata !557), !dbg !927
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !871, metadata !557), !dbg !934
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !869, metadata !557), !dbg !991
  br i1 %106, label %482, label %481, !dbg !1281

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1283

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1284

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1285
  %485 = zext i8 %484 to i64, !dbg !1285
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1286
  %487 = load i32, i32* %486, align 4, !dbg !1286, !tbaa !647
  %488 = and i8 %477, 31, !dbg !1287
  %489 = zext i8 %488 to i32, !dbg !1288
  %490 = shl i32 1, %489, !dbg !1289
  %491 = and i32 %487, %490, !dbg !1289
  %492 = icmp eq i32 %491, 0, !dbg !1289
  %493 = icmp eq i8 %156, 0, !dbg !1290
  %494 = and i1 %493, %492, !dbg !1291
  br i1 %494, label %535, label %497, !dbg !1291

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1290
  br i1 %496, label %535, label %497, !dbg !1292

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !887, metadata !557), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !880, metadata !557), !dbg !1015
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !878, metadata !557), !dbg !942
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !863, metadata !557), !dbg !927
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !871, metadata !557), !dbg !934
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !869, metadata !557), !dbg !991
  br i1 %111, label %507, label %635, !dbg !1293

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !886, metadata !557), !dbg !1000
  %508 = and i8 %502, 1, !dbg !1295
  %509 = icmp eq i8 %508, 0, !dbg !1295
  %510 = and i1 %113, %509, !dbg !1295
  br i1 %510, label %511, label %527, !dbg !1295

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1297
  br i1 %512, label %513, label %515, !dbg !1301

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1297
  store i8 39, i8* %514, align 1, !dbg !1297, !tbaa !954
  br label %515, !dbg !1297

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !870, metadata !557), !dbg !933
  %517 = icmp ult i64 %516, %506, !dbg !1302
  br i1 %517, label %518, label %520, !dbg !1305

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1302
  store i8 36, i8* %519, align 1, !dbg !1302, !tbaa !954
  br label %520, !dbg !1302

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !870, metadata !557), !dbg !933
  %522 = icmp ult i64 %521, %506, !dbg !1306
  br i1 %522, label %523, label %525, !dbg !1309

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1306
  store i8 39, i8* %524, align 1, !dbg !1306, !tbaa !954
  br label %525, !dbg !1306

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !877, metadata !557), !dbg !941
  br label %527, !dbg !1310

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !870, metadata !557), !dbg !933
  %530 = icmp ult i64 %528, %506, !dbg !1311
  br i1 %530, label %531, label %533, !dbg !1314

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1311
  store i8 92, i8* %532, align 1, !dbg !1311, !tbaa !954
  br label %533, !dbg !1311

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !887, metadata !557), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !886, metadata !557), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !880, metadata !557), !dbg !1015
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !878, metadata !557), !dbg !942
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !863, metadata !557), !dbg !927
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !871, metadata !557), !dbg !934
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !869, metadata !557), !dbg !991
  br label %562, !dbg !1315

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !887, metadata !557), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !886, metadata !557), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !880, metadata !557), !dbg !1015
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !878, metadata !557), !dbg !942
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !863, metadata !557), !dbg !927
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !871, metadata !557), !dbg !934
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !869, metadata !557), !dbg !991
  %546 = and i8 %540, 1, !dbg !1315
  %547 = icmp ne i8 %546, 0, !dbg !1315
  %548 = and i8 %543, 1, !dbg !1315
  %549 = icmp eq i8 %548, 0, !dbg !1315
  %550 = and i1 %547, %549, !dbg !1315
  br i1 %550, label %551, label %562, !dbg !1315

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1318
  br i1 %552, label %553, label %555, !dbg !1322

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1318
  store i8 39, i8* %554, align 1, !dbg !1318, !tbaa !954
  br label %555, !dbg !1318

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !870, metadata !557), !dbg !933
  %557 = icmp ult i64 %556, %545, !dbg !1323
  br i1 %557, label %558, label %560, !dbg !1326

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1323
  store i8 39, i8* %559, align 1, !dbg !1323, !tbaa !954
  br label %560, !dbg !1323

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !877, metadata !557), !dbg !941
  br label %562, !dbg !1327

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !870, metadata !557), !dbg !933
  %572 = icmp ult i64 %570, %563, !dbg !1328
  br i1 %572, label %573, label %575, !dbg !1331

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1328
  store i8 %565, i8* %574, align 1, !dbg !1328, !tbaa !954
  br label %575, !dbg !1328

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !870, metadata !557), !dbg !933
  %577 = and i8 %564, 1, !dbg !1332
  %578 = icmp eq i8 %577, 0, !dbg !1332
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !879, metadata !557), !dbg !943
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1334
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !879, metadata !557), !dbg !943
  br label %580, !dbg !1335

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !879, metadata !557), !dbg !943
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !878, metadata !557), !dbg !942
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !877, metadata !557), !dbg !941
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !863, metadata !557), !dbg !927
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !871, metadata !557), !dbg !934
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !869, metadata !557), !dbg !991
  %589 = add i64 %581, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !869, metadata !557), !dbg !991
  br label %122, !dbg !1337, !llvm.loop !1338

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1340
  %593 = and i1 %113, %592, !dbg !1342
  %594 = xor i1 %593, true, !dbg !1342
  %595 = or i1 %111, %594, !dbg !1342
  br i1 %595, label %596, label %635, !dbg !1342

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1343
  %598 = xor i1 %597, true, !dbg !1343
  %599 = and i8 %128, 1, !dbg !1345
  %600 = icmp eq i8 %599, 0, !dbg !1345
  %601 = or i1 %600, %598, !dbg !1343
  br i1 %601, label %611, label %602, !dbg !1343

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1346
  %604 = icmp eq i8 %603, 0, !dbg !1346
  br i1 %604, label %607, label %605, !dbg !1349

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1350
  br label %645, !dbg !1351

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1352
  %609 = icmp ne i64 %125, 0, !dbg !1354
  %610 = and i1 %609, %608, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !870, metadata !557), !dbg !933
  br i1 %610, label %27, label %611, !dbg !1355

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1356
  %613 = and i1 %612, %111, !dbg !1358
  br i1 %613, label %614, label %630, !dbg !1358

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !872, metadata !557), !dbg !935
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !870, metadata !557), !dbg !933
  %615 = load i8, i8* %99, align 1, !dbg !1359, !tbaa !954
  %616 = icmp eq i8 %615, 0, !dbg !1362
  br i1 %616, label %630, label %617, !dbg !1362

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1363

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !870, metadata !557), !dbg !933
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !872, metadata !557), !dbg !935
  %622 = icmp ult i64 %621, %130, !dbg !1363
  br i1 %622, label %623, label %625, !dbg !1366

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1363
  store i8 %619, i8* %624, align 1, !dbg !1363, !tbaa !954
  br label %625, !dbg !1363

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1366
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !870, metadata !557), !dbg !933
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1367
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !872, metadata !557), !dbg !935
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !872, metadata !557), !dbg !935
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !870, metadata !557), !dbg !933
  %628 = load i8, i8* %627, align 1, !dbg !1359, !tbaa !954
  %629 = icmp eq i8 %628, 0, !dbg !1362
  br i1 %629, label %630, label %618, !dbg !1362, !llvm.loop !1368

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !870, metadata !557), !dbg !933
  %632 = icmp ult i64 %631, %130, !dbg !1370
  br i1 %632, label %633, label %645, !dbg !1372

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1373
  store i8 0, i8* %634, align 1, !dbg !1374, !tbaa !954
  br label %645, !dbg !1373

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !861, metadata !557), !dbg !925
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !863, metadata !557), !dbg !927
  %639 = icmp ne i32 %636, 2, !dbg !1375
  %640 = icmp eq i8 %103, 0, !dbg !1377
  %641 = or i1 %639, %640, !dbg !1378
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !864, metadata !557), !dbg !928
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !864, metadata !557), !dbg !928
  %643 = and i32 %5, -3, !dbg !1379
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1380
  br label %645, !dbg !1381

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1382
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1383 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1387, metadata !557), !dbg !1391
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1388, metadata !557), !dbg !1392
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1393
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1389, metadata !557), !dbg !1394
  %4 = icmp eq i8* %3, %0, !dbg !1395
  br i1 %4, label %5, label %75, !dbg !1397

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1398
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1390, metadata !557), !dbg !1399
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1400, metadata !557), !dbg !1416
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1414, metadata !557), !dbg !1419
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !557), !dbg !1420
  %7 = load i8, i8* %6, align 1, !dbg !1421, !tbaa !954
  %8 = sext i8 %7 to i32, !dbg !1421
  %9 = and i32 %8, -33, !dbg !1421
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1421

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1423, metadata !557), !dbg !1437
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1435, metadata !557), !dbg !1441
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1436, metadata !557), !dbg !1442
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1443
  %12 = load i8, i8* %11, align 1, !dbg !1443, !tbaa !954
  %13 = sext i8 %12 to i32, !dbg !1443
  %14 = and i32 %13, -33, !dbg !1443
  %15 = icmp eq i32 %14, 84, !dbg !1443
  br i1 %15, label %16, label %72, !dbg !1443

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1445, metadata !557), !dbg !1458
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1456, metadata !557), !dbg !1462
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1457, metadata !557), !dbg !1463
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1464
  %18 = load i8, i8* %17, align 1, !dbg !1464, !tbaa !954
  %19 = sext i8 %18 to i32, !dbg !1464
  %20 = and i32 %19, -33, !dbg !1464
  %21 = icmp eq i32 %20, 70, !dbg !1464
  br i1 %21, label %22, label %72, !dbg !1464

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1466, metadata !557), !dbg !1478
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1476, metadata !557), !dbg !1482
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1477, metadata !557), !dbg !1483
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1484
  %24 = load i8, i8* %23, align 1, !dbg !1484, !tbaa !954
  %25 = icmp eq i8 %24, 45, !dbg !1484
  br i1 %25, label %26, label %72, !dbg !1486

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1487, metadata !557), !dbg !1498
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1496, metadata !557), !dbg !1502
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1497, metadata !557), !dbg !1503
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1504
  %28 = load i8, i8* %27, align 1, !dbg !1504, !tbaa !954
  %29 = icmp eq i8 %28, 56, !dbg !1504
  br i1 %29, label %30, label %72, !dbg !1506

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1507, metadata !557), !dbg !1517
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1515, metadata !557), !dbg !1521
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1516, metadata !557), !dbg !1522
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1523
  %32 = load i8, i8* %31, align 1, !dbg !1523, !tbaa !954
  %33 = icmp eq i8 %32, 0, !dbg !1523
  br i1 %33, label %34, label %72, !dbg !1525

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1526, !tbaa !954
  %36 = icmp eq i8 %35, 96, !dbg !1527
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1526
  br label %75, !dbg !1528

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1423, metadata !557), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1435, metadata !557), !dbg !1533
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1436, metadata !557), !dbg !1534
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1535
  %40 = load i8, i8* %39, align 1, !dbg !1535, !tbaa !954
  %41 = sext i8 %40 to i32, !dbg !1535
  %42 = and i32 %41, -33, !dbg !1535
  %43 = icmp eq i32 %42, 66, !dbg !1535
  br i1 %43, label %44, label %72, !dbg !1535

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1445, metadata !557), !dbg !1536
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1456, metadata !557), !dbg !1538
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1457, metadata !557), !dbg !1539
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1540
  %46 = load i8, i8* %45, align 1, !dbg !1540, !tbaa !954
  %47 = icmp eq i8 %46, 49, !dbg !1540
  br i1 %47, label %48, label %72, !dbg !1541

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1466, metadata !557), !dbg !1542
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1476, metadata !557), !dbg !1544
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1477, metadata !557), !dbg !1545
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1546
  %50 = load i8, i8* %49, align 1, !dbg !1546, !tbaa !954
  %51 = icmp eq i8 %50, 56, !dbg !1546
  br i1 %51, label %52, label %72, !dbg !1547

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1487, metadata !557), !dbg !1548
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1496, metadata !557), !dbg !1550
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1497, metadata !557), !dbg !1551
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1552
  %54 = load i8, i8* %53, align 1, !dbg !1552, !tbaa !954
  %55 = icmp eq i8 %54, 48, !dbg !1552
  br i1 %55, label %56, label %72, !dbg !1553

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1507, metadata !557), !dbg !1554
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1515, metadata !557), !dbg !1556
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1516, metadata !557), !dbg !1557
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1558
  %58 = load i8, i8* %57, align 1, !dbg !1558, !tbaa !954
  %59 = icmp eq i8 %58, 51, !dbg !1558
  br i1 %59, label %60, label %72, !dbg !1559

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1560, metadata !557), !dbg !1569
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1567, metadata !557), !dbg !1573
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !557), !dbg !1574
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1575
  %62 = load i8, i8* %61, align 1, !dbg !1575, !tbaa !954
  %63 = icmp eq i8 %62, 48, !dbg !1575
  br i1 %63, label %64, label %72, !dbg !1577

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1578, metadata !557), !dbg !1586
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1584, metadata !557), !dbg !1590
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1585, metadata !557), !dbg !1591
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1592
  %66 = load i8, i8* %65, align 1, !dbg !1592, !tbaa !954
  %67 = icmp eq i8 %66, 0, !dbg !1592
  br i1 %67, label %68, label %72, !dbg !1594

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1595, !tbaa !954
  %70 = icmp eq i8 %69, 96, !dbg !1596
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.46, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1595
  br label %75, !dbg !1597

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1598
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), !dbg !1599
  br label %75, !dbg !1600

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1601
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1602 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1606, metadata !557), !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1607, metadata !557), !dbg !1610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1608, metadata !557), !dbg !1611
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1612, metadata !557) #9, !dbg !1625
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1617, metadata !557) #9, !dbg !1627
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1618, metadata !557) #9, !dbg !1628
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1619, metadata !557) #9, !dbg !1629
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1630
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1620, metadata !557) #9, !dbg !1631
  %6 = tail call i32* @__errno_location() #17, !dbg !1632
  %7 = load i32, i32* %6, align 4, !dbg !1632, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1621, metadata !557) #9, !dbg !1633
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1634
  %9 = load i32, i32* %8, align 4, !dbg !1634, !tbaa !793
  %10 = or i32 %9, 1, !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1622, metadata !557) #9, !dbg !1636
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1637
  %12 = load i32, i32* %11, align 8, !dbg !1637, !tbaa !733
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1638
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1639
  %15 = load i8*, i8** %14, align 8, !dbg !1639, !tbaa !819
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1640
  %17 = load i8*, i8** %16, align 8, !dbg !1640, !tbaa !822
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !1641
  %19 = add i64 %18, 1, !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1623, metadata !557) #9, !dbg !1643
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1644, metadata !557) #9, !dbg !1649
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !1651
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1624, metadata !557) #9, !dbg !1652
  %21 = load i32, i32* %11, align 8, !dbg !1653, !tbaa !733
  %22 = load i8*, i8** %14, align 8, !dbg !1654, !tbaa !819
  %23 = load i8*, i8** %16, align 8, !dbg !1655, !tbaa !822
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !1656
  store i32 %7, i32* %6, align 4, !dbg !1657, !tbaa !647
  ret i8* %20, !dbg !1658
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1613 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1612, metadata !557), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1617, metadata !557), !dbg !1660
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1618, metadata !557), !dbg !1661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1619, metadata !557), !dbg !1662
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1663
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1620, metadata !557), !dbg !1664
  %7 = tail call i32* @__errno_location() #17, !dbg !1665
  %8 = load i32, i32* %7, align 4, !dbg !1665, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1621, metadata !557), !dbg !1666
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1667
  %10 = load i32, i32* %9, align 4, !dbg !1667, !tbaa !793
  %11 = icmp ne i64* %2, null, !dbg !1668
  %12 = xor i1 %11, true, !dbg !1668
  %13 = zext i1 %12 to i32, !dbg !1668
  %14 = or i32 %10, %13, !dbg !1669
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1622, metadata !557), !dbg !1670
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1671
  %16 = load i32, i32* %15, align 8, !dbg !1671, !tbaa !733
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1672
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1673
  %19 = load i8*, i8** %18, align 8, !dbg !1673, !tbaa !819
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1674
  %21 = load i8*, i8** %20, align 8, !dbg !1674, !tbaa !822
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1675
  %23 = add i64 %22, 1, !dbg !1676
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1623, metadata !557), !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1644, metadata !557) #9, !dbg !1678
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !1680
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1624, metadata !557), !dbg !1681
  %25 = load i32, i32* %15, align 8, !dbg !1682, !tbaa !733
  %26 = load i8*, i8** %18, align 8, !dbg !1683, !tbaa !819
  %27 = load i8*, i8** %20, align 8, !dbg !1684, !tbaa !822
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1685
  store i32 %8, i32* %7, align 4, !dbg !1686, !tbaa !647
  br i1 %11, label %29, label %30, !dbg !1687

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1688, !tbaa !1690
  br label %30, !dbg !1692

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1693
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1694 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1698, !tbaa !560
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1696, metadata !557), !dbg !1699
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1697, metadata !557), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1697, metadata !557), !dbg !1700
  %2 = load i32, i32* @nslots, align 4, !dbg !1701, !tbaa !647
  %3 = icmp sgt i32 %2, 1, !dbg !1704
  br i1 %3, label %4, label %13, !dbg !1705

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1706

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1697, metadata !557), !dbg !1700
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1706
  %8 = load i8*, i8** %7, align 8, !dbg !1706, !tbaa !1707
  tail call void @free(i8* %8) #9, !dbg !1709
  %9 = add nuw i64 %6, 1, !dbg !1710
  %10 = load i32, i32* @nslots, align 4, !dbg !1701, !tbaa !647
  %11 = sext i32 %10 to i64, !dbg !1704
  %12 = icmp slt i64 %9, %11, !dbg !1704
  br i1 %12, label %5, label %13, !dbg !1705, !llvm.loop !1711

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1713
  %15 = load i8*, i8** %14, align 8, !dbg !1713, !tbaa !1707
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1715
  br i1 %16, label %18, label %17, !dbg !1716

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !1717
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1719, !tbaa !1720
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1721, !tbaa !1707
  br label %18, !dbg !1722

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1723
  br i1 %19, label %22, label %20, !dbg !1725

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1726
  tail call void @free(i8* %21) #9, !dbg !1728
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1729, !tbaa !560
  br label %22, !dbg !1730

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1731, !tbaa !647
  ret void, !dbg !1732
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1733 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1737, metadata !557), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1738, metadata !557), !dbg !1740
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1741
  ret i8* %3, !dbg !1742
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1743 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1747, metadata !557), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1748, metadata !557), !dbg !1762
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1749, metadata !557), !dbg !1763
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1750, metadata !557), !dbg !1764
  %5 = tail call i32* @__errno_location() #17, !dbg !1765
  %6 = load i32, i32* %5, align 4, !dbg !1765, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1751, metadata !557), !dbg !1766
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1767, !tbaa !560
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1752, metadata !557), !dbg !1768
  %8 = icmp slt i32 %0, 0, !dbg !1769
  br i1 %8, label %9, label %10, !dbg !1771

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1772
  unreachable, !dbg !1772

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1773, !tbaa !647
  %12 = icmp sgt i32 %11, %0, !dbg !1774
  br i1 %12, label %34, label %13, !dbg !1775

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1776
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1777
  br i1 %15, label %16, label %17, !dbg !1779

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1780
  unreachable, !dbg !1780

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1781
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1781
  %20 = add nsw i32 %0, 1, !dbg !1782
  %21 = sext i32 %20 to i64, !dbg !1783
  %22 = shl nsw i64 %21, 4, !dbg !1784
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !1785
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1785
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1752, metadata !557), !dbg !1768
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1786, !tbaa !560
  br i1 %14, label %25, label %26, !dbg !1787

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1788, !tbaa.struct !1790
  br label %26, !dbg !1791

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1792, !tbaa !647
  %28 = sext i32 %27 to i64, !dbg !1793
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1793
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1794
  %31 = sub nsw i32 %20, %27, !dbg !1795
  %32 = sext i32 %31 to i64, !dbg !1796
  %33 = shl nsw i64 %32, 4, !dbg !1797
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1794
  store i32 %20, i32* @nslots, align 4, !dbg !1798, !tbaa !647
  br label %34, !dbg !1799

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1752, metadata !557), !dbg !1768
  %36 = sext i32 %0 to i64, !dbg !1800
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1801
  %38 = load i64, i64* %37, align 8, !dbg !1801, !tbaa !1720
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1756, metadata !557), !dbg !1802
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1803
  %40 = load i8*, i8** %39, align 8, !dbg !1803, !tbaa !1707
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1758, metadata !557), !dbg !1804
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1805
  %42 = load i32, i32* %41, align 4, !dbg !1805, !tbaa !793
  %43 = or i32 %42, 1, !dbg !1806
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1759, metadata !557), !dbg !1807
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1808
  %45 = load i32, i32* %44, align 8, !dbg !1808, !tbaa !733
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1809
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1810
  %48 = load i8*, i8** %47, align 8, !dbg !1810, !tbaa !819
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1811
  %50 = load i8*, i8** %49, align 8, !dbg !1811, !tbaa !822
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1812
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1760, metadata !557), !dbg !1813
  %52 = icmp ugt i64 %38, %51, !dbg !1814
  br i1 %52, label %63, label %53, !dbg !1816

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1756, metadata !557), !dbg !1802
  store i64 %54, i64* %37, align 8, !dbg !1819, !tbaa !1720
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1820
  br i1 %55, label %57, label %56, !dbg !1822

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !1823
  br label %57, !dbg !1823

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1644, metadata !557) #9, !dbg !1824
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !1826
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1758, metadata !557), !dbg !1804
  store i8* %58, i8** %39, align 8, !dbg !1827, !tbaa !1707
  %59 = load i32, i32* %44, align 8, !dbg !1828, !tbaa !733
  %60 = load i8*, i8** %47, align 8, !dbg !1829, !tbaa !819
  %61 = load i8*, i8** %49, align 8, !dbg !1830, !tbaa !822
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1831
  br label %63, !dbg !1832

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1758, metadata !557), !dbg !1804
  store i32 %6, i32* %5, align 4, !dbg !1833, !tbaa !647
  ret i8* %64, !dbg !1834
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1835 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1839, metadata !557), !dbg !1842
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1840, metadata !557), !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1841, metadata !557), !dbg !1844
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1845
  ret i8* %4, !dbg !1846
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1847 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1851, metadata !557), !dbg !1852
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1737, metadata !557) #9, !dbg !1853
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1738, metadata !557) #9, !dbg !1855
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1856
  ret i8* %2, !dbg !1857
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1858 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1862, metadata !557), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1863, metadata !557), !dbg !1865
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1839, metadata !557) #9, !dbg !1866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1840, metadata !557) #9, !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1841, metadata !557) #9, !dbg !1869
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1870
  ret i8* %3, !dbg !1871
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1872 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1880, metadata !1886), !dbg !1887
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1876, metadata !557), !dbg !1889
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1877, metadata !557), !dbg !1890
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1878, metadata !557), !dbg !1891
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1892
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1892
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1879, metadata !557), !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1885, metadata !557) #9, !dbg !1894
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !1895
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !1895
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1880, metadata !557) #9, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1880, metadata !1896) #9, !dbg !1887
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1887
  %8 = icmp eq i32 %1, 10, !dbg !1897
  br i1 %8, label %9, label %10, !dbg !1899

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !1900, !noalias !1901
  unreachable, !dbg !1900

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1880, metadata !1896) #9, !dbg !1887
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1904
  store i32 %1, i32* %11, align 8, !dbg !1904, !alias.scope !1901
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1904
  %13 = bitcast i32* %12 to i8*, !dbg !1904
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !1904
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !1905
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1879, metadata !557), !dbg !1893
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !1906
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1907
  ret i8* %14, !dbg !1908
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !1909 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1880, metadata !1886), !dbg !1918
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1913, metadata !557), !dbg !1920
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1914, metadata !557), !dbg !1921
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1915, metadata !557), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1916, metadata !557), !dbg !1923
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !1924
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !1924
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1917, metadata !557), !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1885, metadata !557) #9, !dbg !1926
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !1927
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1880, metadata !557) #9, !dbg !1918
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1880, metadata !1896) #9, !dbg !1918
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !1918
  %9 = icmp eq i32 %1, 10, !dbg !1928
  br i1 %9, label %10, label %11, !dbg !1929

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !1930, !noalias !1931
  unreachable, !dbg !1930

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1880, metadata !1896) #9, !dbg !1918
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1934
  store i32 %1, i32* %12, align 8, !dbg !1934, !alias.scope !1931
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1934
  %14 = bitcast i32* %13 to i8*, !dbg !1934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !1934
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !1935
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1917, metadata !557), !dbg !1925
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !1936
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !1937
  ret i8* %15, !dbg !1938
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !1939 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !1880, metadata !1886), !dbg !1945
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1943, metadata !557), !dbg !1948
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1944, metadata !557), !dbg !1949
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1876, metadata !557) #9, !dbg !1950
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1877, metadata !557) #9, !dbg !1951
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1878, metadata !557) #9, !dbg !1952
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !1953
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !1953
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1879, metadata !557) #9, !dbg !1954
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1885, metadata !557) #9, !dbg !1955
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !1956
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !1956
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1880, metadata !557) #9, !dbg !1945
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1880, metadata !1896) #9, !dbg !1945
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !1945
  %7 = icmp eq i32 %0, 10, !dbg !1957
  br i1 %7, label %8, label %9, !dbg !1958

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !1959, !noalias !1960
  unreachable, !dbg !1959

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1880, metadata !1896) #9, !dbg !1945
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1963
  store i32 %0, i32* %10, align 8, !dbg !1963, !alias.scope !1960
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1963
  %12 = bitcast i32* %11 to i8*, !dbg !1963
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !1963
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !1964
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1879, metadata !557) #9, !dbg !1954
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !1965
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !1966
  ret i8* %13, !dbg !1967
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1968 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1880, metadata !1886), !dbg !1975
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1972, metadata !557), !dbg !1978
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1973, metadata !557), !dbg !1979
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1974, metadata !557), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1913, metadata !557) #9, !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1914, metadata !557) #9, !dbg !1982
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1915, metadata !557) #9, !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1916, metadata !557) #9, !dbg !1984
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1985
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1985
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1917, metadata !557) #9, !dbg !1986
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1885, metadata !557) #9, !dbg !1987
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !1988
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !1988
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1880, metadata !557) #9, !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1880, metadata !1896) #9, !dbg !1975
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1975
  %8 = icmp eq i32 %0, 10, !dbg !1989
  br i1 %8, label %9, label %10, !dbg !1990

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !1991, !noalias !1992
  unreachable, !dbg !1991

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1880, metadata !1896) #9, !dbg !1975
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1995
  store i32 %0, i32* %11, align 8, !dbg !1995, !alias.scope !1992
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1995
  %13 = bitcast i32* %12 to i8*, !dbg !1995
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !1995
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !1996
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1917, metadata !557) #9, !dbg !1986
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !1997
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1998
  ret i8* %14, !dbg !1999
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2000 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2004, metadata !557), !dbg !2008
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2005, metadata !557), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2006, metadata !557), !dbg !2010
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2011
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2012, !tbaa.struct !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2007, metadata !557), !dbg !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !752, metadata !557), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !753, metadata !557), !dbg !2017
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !754, metadata !557), !dbg !2018
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !755, metadata !557), !dbg !2019
  %6 = lshr i8 %2, 5, !dbg !2020
  %7 = zext i8 %6 to i64, !dbg !2020
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2021
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !756, metadata !557), !dbg !2022
  %9 = and i8 %2, 31, !dbg !2023
  %10 = zext i8 %9 to i32, !dbg !2024
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !758, metadata !557), !dbg !2025
  %11 = load i32, i32* %8, align 4, !dbg !2026, !tbaa !647
  %12 = lshr i32 %11, %10, !dbg !2027
  %13 = and i32 %12, 1, !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !759, metadata !557), !dbg !2029
  %14 = xor i32 %13, 1, !dbg !2030
  %15 = shl i32 %14, %10, !dbg !2031
  %16 = xor i32 %15, %11, !dbg !2032
  store i32 %16, i32* %8, align 4, !dbg !2032, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2007, metadata !557), !dbg !2014
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2033
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2034
  ret i8* %17, !dbg !2035
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2036 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2040, metadata !557), !dbg !2042
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2041, metadata !557), !dbg !2043
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2004, metadata !557) #9, !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2005, metadata !557) #9, !dbg !2046
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2006, metadata !557) #9, !dbg !2047
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2048
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2049, !tbaa.struct !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2007, metadata !557) #9, !dbg !2050
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !752, metadata !557) #9, !dbg !2051
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !753, metadata !557) #9, !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !754, metadata !557) #9, !dbg !2054
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !755, metadata !557) #9, !dbg !2055
  %5 = lshr i8 %1, 5, !dbg !2056
  %6 = zext i8 %5 to i64, !dbg !2056
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2057
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !756, metadata !557) #9, !dbg !2058
  %8 = and i8 %1, 31, !dbg !2059
  %9 = zext i8 %8 to i32, !dbg !2060
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !758, metadata !557) #9, !dbg !2061
  %10 = load i32, i32* %7, align 4, !dbg !2062, !tbaa !647
  %11 = lshr i32 %10, %9, !dbg !2063
  %12 = and i32 %11, 1, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !759, metadata !557) #9, !dbg !2065
  %13 = xor i32 %12, 1, !dbg !2066
  %14 = shl i32 %13, %9, !dbg !2067
  %15 = xor i32 %14, %10, !dbg !2068
  store i32 %15, i32* %7, align 4, !dbg !2068, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2007, metadata !557) #9, !dbg !2050
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2069
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2070
  ret i8* %16, !dbg !2071
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2072 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2074, metadata !557), !dbg !2075
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2040, metadata !557) #9, !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2041, metadata !557) #9, !dbg !2078
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2004, metadata !557) #9, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2005, metadata !557) #9, !dbg !2081
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2006, metadata !557) #9, !dbg !2082
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2083
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2084, !tbaa.struct !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2007, metadata !557) #9, !dbg !2085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !752, metadata !557) #9, !dbg !2086
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !753, metadata !557) #9, !dbg !2088
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !754, metadata !557) #9, !dbg !2089
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !755, metadata !557) #9, !dbg !2090
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !756, metadata !557) #9, !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !758, metadata !557) #9, !dbg !2093
  %5 = load i32, i32* %4, align 4, !dbg !2094, !tbaa !647
  %6 = or i32 %5, 67108864, !dbg !2095
  store i32 %6, i32* %4, align 4, !dbg !2095, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2007, metadata !557) #9, !dbg !2085
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2096
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2097
  ret i8* %7, !dbg !2098
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2099 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2101, metadata !557), !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2102, metadata !557), !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2004, metadata !557) #9, !dbg !2105
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2005, metadata !557) #9, !dbg !2107
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2006, metadata !557) #9, !dbg !2108
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2109
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2110, !tbaa.struct !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2007, metadata !557) #9, !dbg !2111
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !752, metadata !557) #9, !dbg !2112
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !753, metadata !557) #9, !dbg !2114
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !754, metadata !557) #9, !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !755, metadata !557) #9, !dbg !2116
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2117
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !756, metadata !557) #9, !dbg !2118
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !758, metadata !557) #9, !dbg !2119
  %6 = load i32, i32* %5, align 4, !dbg !2120, !tbaa !647
  %7 = or i32 %6, 67108864, !dbg !2121
  store i32 %7, i32* %5, align 4, !dbg !2121, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2007, metadata !557) #9, !dbg !2111
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2122
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2123
  ret i8* %8, !dbg !2124
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2125 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1880, metadata !1886), !dbg !2131
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2127, metadata !557), !dbg !2133
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2128, metadata !557), !dbg !2134
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2129, metadata !557), !dbg !2135
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2136
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2136
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1885, metadata !557) #9, !dbg !2137
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2138
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2138
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1880, metadata !557) #9, !dbg !2131
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1880, metadata !1896) #9, !dbg !2131
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2131
  %9 = icmp eq i32 %1, 10, !dbg !2139
  br i1 %9, label %10, label %11, !dbg !2140

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2141, !noalias !2142
  unreachable, !dbg !2141

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1880, metadata !1896) #9, !dbg !2131
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2145
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2146
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2147
  store i32 %1, i32* %13, align 8, !dbg !2147
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2147
  %15 = bitcast i32* %14 to i8*, !dbg !2147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2147
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2130, metadata !557), !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !752, metadata !557), !dbg !2149
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !753, metadata !557), !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !754, metadata !557), !dbg !2152
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !755, metadata !557), !dbg !2153
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2154
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !756, metadata !557), !dbg !2155
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !758, metadata !557), !dbg !2156
  %17 = load i32, i32* %16, align 4, !dbg !2157, !tbaa !647
  %18 = or i32 %17, 67108864, !dbg !2158
  store i32 %18, i32* %16, align 4, !dbg !2158, !tbaa !647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2130, metadata !557), !dbg !2148
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2159
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2160
  ret i8* %19, !dbg !2161
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2162 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2166, metadata !557), !dbg !2170
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2167, metadata !557), !dbg !2171
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2168, metadata !557), !dbg !2172
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2169, metadata !557), !dbg !2173
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2174, metadata !557) #9, !dbg !2184
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2179, metadata !557) #9, !dbg !2186
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2180, metadata !557) #9, !dbg !2187
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2181, metadata !557) #9, !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2182, metadata !557) #9, !dbg !2189
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2190
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2191, !tbaa.struct !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2183, metadata !557) #9, !dbg !2192
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !801, metadata !557) #9, !dbg !2193
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !802, metadata !557) #9, !dbg !2195
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !803, metadata !557) #9, !dbg !2196
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !801, metadata !557) #9, !dbg !2193
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !801, metadata !557) #9, !dbg !2193
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2197
  store i32 10, i32* %7, align 8, !dbg !2198, !tbaa !733
  %8 = icmp ne i8* %1, null, !dbg !2199
  %9 = icmp ne i8* %2, null, !dbg !2200
  %10 = and i1 %8, %9, !dbg !2201
  br i1 %10, label %12, label %11, !dbg !2201

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2202
  unreachable, !dbg !2202

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2203
  store i8* %1, i8** %13, align 8, !dbg !2204, !tbaa !819
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2205
  store i8* %2, i8** %14, align 8, !dbg !2206, !tbaa !822
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2183, metadata !557) #9, !dbg !2192
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2207
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2208
  ret i8* %15, !dbg !2209
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2175 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2174, metadata !557), !dbg !2210
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2179, metadata !557), !dbg !2211
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2180, metadata !557), !dbg !2212
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2181, metadata !557), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2182, metadata !557), !dbg !2214
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2215
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2216, !tbaa.struct !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2183, metadata !557), !dbg !2217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !801, metadata !557) #9, !dbg !2218
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !802, metadata !557) #9, !dbg !2220
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !803, metadata !557) #9, !dbg !2221
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !801, metadata !557) #9, !dbg !2218
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !801, metadata !557) #9, !dbg !2218
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2222
  store i32 10, i32* %8, align 8, !dbg !2223, !tbaa !733
  %9 = icmp ne i8* %1, null, !dbg !2224
  %10 = icmp ne i8* %2, null, !dbg !2225
  %11 = and i1 %9, %10, !dbg !2226
  br i1 %11, label %13, label %12, !dbg !2226

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2227
  unreachable, !dbg !2227

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2228
  store i8* %1, i8** %14, align 8, !dbg !2229, !tbaa !819
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2230
  store i8* %2, i8** %15, align 8, !dbg !2231, !tbaa !822
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2183, metadata !557), !dbg !2217
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2232
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2233
  ret i8* %16, !dbg !2234
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2235 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2239, metadata !557), !dbg !2242
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2240, metadata !557), !dbg !2243
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2241, metadata !557), !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2166, metadata !557) #9, !dbg !2245
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2167, metadata !557) #9, !dbg !2247
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2168, metadata !557) #9, !dbg !2248
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2169, metadata !557) #9, !dbg !2249
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2174, metadata !557) #9, !dbg !2250
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2179, metadata !557) #9, !dbg !2252
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2180, metadata !557) #9, !dbg !2253
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2181, metadata !557) #9, !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2182, metadata !557) #9, !dbg !2255
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2256
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2257, !tbaa.struct !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2183, metadata !557) #9, !dbg !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !801, metadata !557) #9, !dbg !2259
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !802, metadata !557) #9, !dbg !2261
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !803, metadata !557) #9, !dbg !2262
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !801, metadata !557) #9, !dbg !2259
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !801, metadata !557) #9, !dbg !2259
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2263
  store i32 10, i32* %6, align 8, !dbg !2264, !tbaa !733
  %7 = icmp ne i8* %0, null, !dbg !2265
  %8 = icmp ne i8* %1, null, !dbg !2266
  %9 = and i1 %7, %8, !dbg !2267
  br i1 %9, label %11, label %10, !dbg !2267

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2268
  unreachable, !dbg !2268

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2269
  store i8* %0, i8** %12, align 8, !dbg !2270, !tbaa !819
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2271
  store i8* %1, i8** %13, align 8, !dbg !2272, !tbaa !822
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2183, metadata !557) #9, !dbg !2258
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2273
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2274
  ret i8* %14, !dbg !2275
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2276 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2280, metadata !557), !dbg !2284
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2281, metadata !557), !dbg !2285
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2282, metadata !557), !dbg !2286
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2283, metadata !557), !dbg !2287
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2174, metadata !557) #9, !dbg !2288
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2179, metadata !557) #9, !dbg !2290
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2180, metadata !557) #9, !dbg !2291
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2181, metadata !557) #9, !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2182, metadata !557) #9, !dbg !2293
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2294
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2295, !tbaa.struct !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2183, metadata !557) #9, !dbg !2296
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !801, metadata !557) #9, !dbg !2297
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !802, metadata !557) #9, !dbg !2299
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !803, metadata !557) #9, !dbg !2300
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !801, metadata !557) #9, !dbg !2297
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !801, metadata !557) #9, !dbg !2297
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2301
  store i32 10, i32* %7, align 8, !dbg !2302, !tbaa !733
  %8 = icmp ne i8* %0, null, !dbg !2303
  %9 = icmp ne i8* %1, null, !dbg !2304
  %10 = and i1 %8, %9, !dbg !2305
  br i1 %10, label %12, label %11, !dbg !2305

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2306
  unreachable, !dbg !2306

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2307
  store i8* %0, i8** %13, align 8, !dbg !2308, !tbaa !819
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2309
  store i8* %1, i8** %14, align 8, !dbg !2310, !tbaa !822
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2183, metadata !557) #9, !dbg !2296
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2311
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2312
  ret i8* %15, !dbg !2313
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2318, metadata !557), !dbg !2321
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2319, metadata !557), !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2320, metadata !557), !dbg !2323
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2324
  ret i8* %4, !dbg !2325
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2326 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2330, metadata !557), !dbg !2332
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2331, metadata !557), !dbg !2333
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2318, metadata !557) #9, !dbg !2334
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2319, metadata !557) #9, !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2320, metadata !557) #9, !dbg !2337
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2338
  ret i8* %3, !dbg !2339
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2340 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2344, metadata !557), !dbg !2346
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2345, metadata !557), !dbg !2347
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2318, metadata !557) #9, !dbg !2348
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2319, metadata !557) #9, !dbg !2350
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2320, metadata !557) #9, !dbg !2351
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2352
  ret i8* %3, !dbg !2353
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2354 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2358, metadata !557), !dbg !2359
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2344, metadata !557) #9, !dbg !2360
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2345, metadata !557) #9, !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2318, metadata !557) #9, !dbg !2363
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2319, metadata !557) #9, !dbg !2365
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2320, metadata !557) #9, !dbg !2366
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2367
  ret i8* %2, !dbg !2368
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2369 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2429, metadata !557), !dbg !2435
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2430, metadata !557), !dbg !2436
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2431, metadata !557), !dbg !2437
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2432, metadata !557), !dbg !2438
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2433, metadata !557), !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2434, metadata !557), !dbg !2440
  %7 = icmp eq i8* %1, null, !dbg !2441
  br i1 %7, label %10, label %8, !dbg !2443

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2444
  br label %12, !dbg !2444

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.50, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2445
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i32 5) #9, !dbg !2446
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2446
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.52, i64 0, i64 0), i32 5) #9, !dbg !2447
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2447
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
  ], !dbg !2448

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2449
  unreachable, !dbg !2449

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.53, i64 0, i64 0), i32 5) #9, !dbg !2451
  %20 = load i8*, i8** %4, align 8, !dbg !2451, !tbaa !560
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2451
  br label %146, !dbg !2452

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.54, i64 0, i64 0), i32 5) #9, !dbg !2453
  %24 = load i8*, i8** %4, align 8, !dbg !2453, !tbaa !560
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2453
  %26 = load i8*, i8** %25, align 8, !dbg !2453, !tbaa !560
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2453
  br label %146, !dbg !2454

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.55, i64 0, i64 0), i32 5) #9, !dbg !2455
  %30 = load i8*, i8** %4, align 8, !dbg !2455, !tbaa !560
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2455
  %32 = load i8*, i8** %31, align 8, !dbg !2455, !tbaa !560
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2455
  %34 = load i8*, i8** %33, align 8, !dbg !2455, !tbaa !560
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2455
  br label %146, !dbg !2456

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.56, i64 0, i64 0), i32 5) #9, !dbg !2457
  %38 = load i8*, i8** %4, align 8, !dbg !2457, !tbaa !560
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2457
  %40 = load i8*, i8** %39, align 8, !dbg !2457, !tbaa !560
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2457
  %42 = load i8*, i8** %41, align 8, !dbg !2457, !tbaa !560
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2457
  %44 = load i8*, i8** %43, align 8, !dbg !2457, !tbaa !560
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2457
  br label %146, !dbg !2458

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.57, i64 0, i64 0), i32 5) #9, !dbg !2459
  %48 = load i8*, i8** %4, align 8, !dbg !2459, !tbaa !560
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2459
  %50 = load i8*, i8** %49, align 8, !dbg !2459, !tbaa !560
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2459
  %52 = load i8*, i8** %51, align 8, !dbg !2459, !tbaa !560
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2459
  %54 = load i8*, i8** %53, align 8, !dbg !2459, !tbaa !560
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2459
  %56 = load i8*, i8** %55, align 8, !dbg !2459, !tbaa !560
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2459
  br label %146, !dbg !2460

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.58, i64 0, i64 0), i32 5) #9, !dbg !2461
  %60 = load i8*, i8** %4, align 8, !dbg !2461, !tbaa !560
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2461
  %62 = load i8*, i8** %61, align 8, !dbg !2461, !tbaa !560
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2461
  %64 = load i8*, i8** %63, align 8, !dbg !2461, !tbaa !560
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2461
  %66 = load i8*, i8** %65, align 8, !dbg !2461, !tbaa !560
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2461
  %68 = load i8*, i8** %67, align 8, !dbg !2461, !tbaa !560
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2461
  %70 = load i8*, i8** %69, align 8, !dbg !2461, !tbaa !560
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2461
  br label %146, !dbg !2462

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.59, i64 0, i64 0), i32 5) #9, !dbg !2463
  %74 = load i8*, i8** %4, align 8, !dbg !2463, !tbaa !560
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2463
  %76 = load i8*, i8** %75, align 8, !dbg !2463, !tbaa !560
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2463
  %78 = load i8*, i8** %77, align 8, !dbg !2463, !tbaa !560
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2463
  %80 = load i8*, i8** %79, align 8, !dbg !2463, !tbaa !560
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2463
  %82 = load i8*, i8** %81, align 8, !dbg !2463, !tbaa !560
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2463
  %84 = load i8*, i8** %83, align 8, !dbg !2463, !tbaa !560
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2463
  %86 = load i8*, i8** %85, align 8, !dbg !2463, !tbaa !560
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2463
  br label %146, !dbg !2464

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.60, i64 0, i64 0), i32 5) #9, !dbg !2465
  %90 = load i8*, i8** %4, align 8, !dbg !2465, !tbaa !560
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2465
  %92 = load i8*, i8** %91, align 8, !dbg !2465, !tbaa !560
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2465
  %94 = load i8*, i8** %93, align 8, !dbg !2465, !tbaa !560
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2465
  %96 = load i8*, i8** %95, align 8, !dbg !2465, !tbaa !560
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2465
  %98 = load i8*, i8** %97, align 8, !dbg !2465, !tbaa !560
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2465
  %100 = load i8*, i8** %99, align 8, !dbg !2465, !tbaa !560
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2465
  %102 = load i8*, i8** %101, align 8, !dbg !2465, !tbaa !560
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2465
  %104 = load i8*, i8** %103, align 8, !dbg !2465, !tbaa !560
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2465
  br label %146, !dbg !2466

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.61, i64 0, i64 0), i32 5) #9, !dbg !2467
  %108 = load i8*, i8** %4, align 8, !dbg !2467, !tbaa !560
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2467
  %110 = load i8*, i8** %109, align 8, !dbg !2467, !tbaa !560
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2467
  %112 = load i8*, i8** %111, align 8, !dbg !2467, !tbaa !560
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2467
  %114 = load i8*, i8** %113, align 8, !dbg !2467, !tbaa !560
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2467
  %116 = load i8*, i8** %115, align 8, !dbg !2467, !tbaa !560
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2467
  %118 = load i8*, i8** %117, align 8, !dbg !2467, !tbaa !560
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2467
  %120 = load i8*, i8** %119, align 8, !dbg !2467, !tbaa !560
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2467
  %122 = load i8*, i8** %121, align 8, !dbg !2467, !tbaa !560
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2467
  %124 = load i8*, i8** %123, align 8, !dbg !2467, !tbaa !560
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2467
  br label %146, !dbg !2468

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.62, i64 0, i64 0), i32 5) #9, !dbg !2469
  %128 = load i8*, i8** %4, align 8, !dbg !2469, !tbaa !560
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2469
  %130 = load i8*, i8** %129, align 8, !dbg !2469, !tbaa !560
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2469
  %132 = load i8*, i8** %131, align 8, !dbg !2469, !tbaa !560
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2469
  %134 = load i8*, i8** %133, align 8, !dbg !2469, !tbaa !560
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2469
  %136 = load i8*, i8** %135, align 8, !dbg !2469, !tbaa !560
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2469
  %138 = load i8*, i8** %137, align 8, !dbg !2469, !tbaa !560
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2469
  %140 = load i8*, i8** %139, align 8, !dbg !2469, !tbaa !560
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2469
  %142 = load i8*, i8** %141, align 8, !dbg !2469, !tbaa !560
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2469
  %144 = load i8*, i8** %143, align 8, !dbg !2469, !tbaa !560
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2469
  br label %146, !dbg !2470

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2471
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2472 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2476, metadata !557), !dbg !2482
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2477, metadata !557), !dbg !2483
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2478, metadata !557), !dbg !2484
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2479, metadata !557), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2480, metadata !557), !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2481, metadata !557), !dbg !2487
  br label %6, !dbg !2488

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2481, metadata !557), !dbg !2487
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2490
  %9 = load i8*, i8** %8, align 8, !dbg !2490, !tbaa !560
  %10 = icmp eq i8* %9, null, !dbg !2492
  %11 = add i64 %7, 1, !dbg !2493
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2481, metadata !557), !dbg !2487
  br i1 %10, label %12, label %6, !dbg !2492, !llvm.loop !2494

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2496
  ret void, !dbg !2497
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2498 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2509, metadata !557), !dbg !2517
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2510, metadata !557), !dbg !2518
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2511, metadata !557), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2512, metadata !557), !dbg !2520
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2513, metadata !557), !dbg !2521
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2522
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2522
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2515, metadata !557), !dbg !2523
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %11 = load i32, i32* %8, align 8, !dbg !2525
  %12 = icmp ult i32 %11, 41, !dbg !2525
  br i1 %12, label %13, label %18, !dbg !2525

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2525
  %15 = sext i32 %11 to i64, !dbg !2525
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2525
  %17 = add i32 %11, 8, !dbg !2525
  store i32 %17, i32* %8, align 8, !dbg !2525
  br label %21, !dbg !2525

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2525
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2525
  store i8* %20, i8** %10, align 8, !dbg !2525
  br label %21, !dbg !2525

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2525
  %25 = load i8*, i8** %24, align 8, !dbg !2525
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2528
  store i8* %25, i8** %26, align 16, !dbg !2529, !tbaa !560
  %27 = icmp eq i8* %25, null, !dbg !2530
  br i1 %27, label %30, label %28, !dbg !2531

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %29 = icmp ult i32 %22, 41, !dbg !2525
  br i1 %29, label %35, label %32, !dbg !2525

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2532
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2533
  ret void, !dbg !2533

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2525
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2525
  store i8* %34, i8** %10, align 8, !dbg !2525
  br label %40, !dbg !2525

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2525
  %37 = sext i32 %22 to i64, !dbg !2525
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2525
  %39 = add i32 %22, 8, !dbg !2525
  store i32 %39, i32* %8, align 8, !dbg !2525
  br label %40, !dbg !2525

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2525
  %44 = load i8*, i8** %43, align 8, !dbg !2525
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2528
  store i8* %44, i8** %45, align 8, !dbg !2529, !tbaa !560
  %46 = icmp eq i8* %44, null, !dbg !2530
  br i1 %46, label %30, label %47, !dbg !2531

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %48 = icmp ult i32 %41, 41, !dbg !2525
  br i1 %48, label %52, label %49, !dbg !2525

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2525
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2525
  store i8* %51, i8** %10, align 8, !dbg !2525
  br label %57, !dbg !2525

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2525
  %54 = sext i32 %41 to i64, !dbg !2525
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2525
  %56 = add i32 %41, 8, !dbg !2525
  store i32 %56, i32* %8, align 8, !dbg !2525
  br label %57, !dbg !2525

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2525
  %61 = load i8*, i8** %60, align 8, !dbg !2525
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2528
  store i8* %61, i8** %62, align 16, !dbg !2529, !tbaa !560
  %63 = icmp eq i8* %61, null, !dbg !2530
  br i1 %63, label %30, label %64, !dbg !2531

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %65 = icmp ult i32 %58, 41, !dbg !2525
  br i1 %65, label %69, label %66, !dbg !2525

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2525
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2525
  store i8* %68, i8** %10, align 8, !dbg !2525
  br label %74, !dbg !2525

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2525
  %71 = sext i32 %58 to i64, !dbg !2525
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2525
  %73 = add i32 %58, 8, !dbg !2525
  store i32 %73, i32* %8, align 8, !dbg !2525
  br label %74, !dbg !2525

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2525
  %78 = load i8*, i8** %77, align 8, !dbg !2525
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2528
  store i8* %78, i8** %79, align 8, !dbg !2529, !tbaa !560
  %80 = icmp eq i8* %78, null, !dbg !2530
  br i1 %80, label %30, label %81, !dbg !2531

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %82 = icmp ult i32 %75, 41, !dbg !2525
  br i1 %82, label %86, label %83, !dbg !2525

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2525
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2525
  store i8* %85, i8** %10, align 8, !dbg !2525
  br label %91, !dbg !2525

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2525
  %88 = sext i32 %75 to i64, !dbg !2525
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2525
  %90 = add i32 %75, 8, !dbg !2525
  store i32 %90, i32* %8, align 8, !dbg !2525
  br label %91, !dbg !2525

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2525
  %95 = load i8*, i8** %94, align 8, !dbg !2525
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2528
  store i8* %95, i8** %96, align 16, !dbg !2529, !tbaa !560
  %97 = icmp eq i8* %95, null, !dbg !2530
  br i1 %97, label %30, label %98, !dbg !2531

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %99 = icmp ult i32 %92, 41, !dbg !2525
  br i1 %99, label %103, label %100, !dbg !2525

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2525
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2525
  store i8* %102, i8** %10, align 8, !dbg !2525
  br label %108, !dbg !2525

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2525
  %105 = sext i32 %92 to i64, !dbg !2525
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2525
  %107 = add i32 %92, 8, !dbg !2525
  store i32 %107, i32* %8, align 8, !dbg !2525
  br label %108, !dbg !2525

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2525
  %111 = load i8*, i8** %110, align 8, !dbg !2525
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2528
  store i8* %111, i8** %112, align 8, !dbg !2529, !tbaa !560
  %113 = icmp eq i8* %111, null, !dbg !2530
  br i1 %113, label %30, label %114, !dbg !2531

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %115 = load i8*, i8** %10, align 8, !dbg !2525
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2525
  store i8* %116, i8** %10, align 8, !dbg !2525
  %117 = bitcast i8* %115 to i8**, !dbg !2525
  %118 = load i8*, i8** %117, align 8, !dbg !2525
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2528
  store i8* %118, i8** %119, align 16, !dbg !2529, !tbaa !560
  %120 = icmp eq i8* %118, null, !dbg !2530
  br i1 %120, label %30, label %121, !dbg !2531

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %122 = load i8*, i8** %10, align 8, !dbg !2525
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2525
  store i8* %123, i8** %10, align 8, !dbg !2525
  %124 = bitcast i8* %122 to i8**, !dbg !2525
  %125 = load i8*, i8** %124, align 8, !dbg !2525
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2528
  store i8* %125, i8** %126, align 8, !dbg !2529, !tbaa !560
  %127 = icmp eq i8* %125, null, !dbg !2530
  br i1 %127, label %30, label %128, !dbg !2531

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %129 = load i8*, i8** %10, align 8, !dbg !2525
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2525
  store i8* %130, i8** %10, align 8, !dbg !2525
  %131 = bitcast i8* %129 to i8**, !dbg !2525
  %132 = load i8*, i8** %131, align 8, !dbg !2525
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2528
  store i8* %132, i8** %133, align 16, !dbg !2529, !tbaa !560
  %134 = icmp eq i8* %132, null, !dbg !2530
  br i1 %134, label %30, label %135, !dbg !2531

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2514, metadata !557), !dbg !2524
  %136 = load i8*, i8** %10, align 8, !dbg !2525
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2525
  store i8* %137, i8** %10, align 8, !dbg !2525
  %138 = bitcast i8* %136 to i8**, !dbg !2525
  %139 = load i8*, i8** %138, align 8, !dbg !2525
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2528
  store i8* %139, i8** %140, align 8, !dbg !2529, !tbaa !560
  %141 = icmp eq i8* %139, null, !dbg !2530
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2514, metadata !557), !dbg !2524
  %142 = select i1 %141, i64 9, i64 10, !dbg !2531
  br label %30, !dbg !2531
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2534 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2538, metadata !557), !dbg !2549
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2539, metadata !557), !dbg !2550
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2540, metadata !557), !dbg !2551
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2541, metadata !557), !dbg !2552
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2553
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2553
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2542, metadata !557), !dbg !2554
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2555
  call void @llvm.va_start(i8* nonnull %6), !dbg !2555
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2556
  call void @llvm.va_end(i8* nonnull %6), !dbg !2557
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2558
  ret void, !dbg !2558
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2559 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.65, i64 0, i64 0), i32 5) #9, !dbg !2560
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.66, i64 0, i64 0)) #9, !dbg !2560
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !2561
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.68, i64 0, i64 0)) #9, !dbg !2561
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !2562
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2562, !tbaa !560
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2562
  ret void, !dbg !2563
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2564 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2568, metadata !557), !dbg !2570
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2569, metadata !557), !dbg !2571
  %3 = udiv i64 9223372036854775807, %1, !dbg !2572
  %4 = icmp ult i64 %3, %0, !dbg !2572
  br i1 %4, label %5, label %6, !dbg !2574

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2575
  unreachable, !dbg !2575

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2577, metadata !557) #9, !dbg !2584
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2586
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2583, metadata !557) #9, !dbg !2587
  %9 = icmp eq i8* %8, null, !dbg !2588
  %10 = icmp ne i64 %7, 0, !dbg !2590
  %11 = and i1 %10, %9, !dbg !2591
  br i1 %11, label %12, label %13, !dbg !2591

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2592
  unreachable, !dbg !2592

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2593
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2578 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2577, metadata !557), !dbg !2594
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2595
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2583, metadata !557), !dbg !2596
  %3 = icmp eq i8* %2, null, !dbg !2597
  %4 = icmp ne i64 %0, 0, !dbg !2598
  %5 = and i1 %4, %3, !dbg !2599
  br i1 %5, label %6, label %7, !dbg !2599

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2600
  unreachable, !dbg !2600

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2601
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2602 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2606, metadata !557), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2607, metadata !557), !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2608, metadata !557), !dbg !2611
  %4 = udiv i64 9223372036854775807, %2, !dbg !2612
  %5 = icmp ult i64 %4, %1, !dbg !2612
  br i1 %5, label %6, label %7, !dbg !2614

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2615
  unreachable, !dbg !2615

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2616
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !557) #9, !dbg !2623
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2622, metadata !557) #9, !dbg !2625
  %9 = icmp eq i64 %8, 0, !dbg !2626
  %10 = icmp ne i8* %0, null, !dbg !2628
  %11 = and i1 %10, %9, !dbg !2629
  br i1 %11, label %12, label %13, !dbg !2629

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !2630
  br label %19, !dbg !2632

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2617, metadata !557) #9, !dbg !2623
  %15 = icmp eq i8* %14, null, !dbg !2634
  %16 = icmp ne i64 %8, 0, !dbg !2636
  %17 = and i1 %16, %15, !dbg !2637
  br i1 %17, label %18, label %19, !dbg !2637

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2638
  unreachable, !dbg !2638

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2639
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2618 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !557), !dbg !2640
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2622, metadata !557), !dbg !2641
  %3 = icmp eq i64 %1, 0, !dbg !2642
  %4 = icmp ne i8* %0, null, !dbg !2643
  %5 = and i1 %4, %3, !dbg !2644
  br i1 %5, label %6, label %7, !dbg !2644

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !2645
  br label %13, !dbg !2646

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !2647
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2617, metadata !557), !dbg !2640
  %9 = icmp eq i8* %8, null, !dbg !2648
  %10 = icmp ne i64 %1, 0, !dbg !2649
  %11 = and i1 %10, %9, !dbg !2650
  br i1 %11, label %12, label %13, !dbg !2650

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2651
  unreachable, !dbg !2651

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2652
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !517 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !522, metadata !557), !dbg !2653
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !523, metadata !557), !dbg !2654
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !524, metadata !557), !dbg !2655
  %4 = load i64, i64* %1, align 8, !dbg !2656, !tbaa !1690
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !525, metadata !557), !dbg !2657
  %5 = icmp eq i8* %0, null, !dbg !2658
  br i1 %5, label %6, label %13, !dbg !2660

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2661
  br i1 %7, label %8, label %17, !dbg !2664

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2665
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !525, metadata !557), !dbg !2657
  %10 = icmp ugt i64 %2, 128, !dbg !2667
  %11 = zext i1 %10 to i64, !dbg !2667
  %12 = add nuw nsw i64 %9, %11, !dbg !2668
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !525, metadata !557), !dbg !2657
  br label %17, !dbg !2669

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2670
  %15 = icmp ugt i64 %14, %4, !dbg !2673
  br i1 %15, label %20, label %16, !dbg !2674

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2675
  unreachable, !dbg !2675

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !525, metadata !557), !dbg !2657
  store i64 %18, i64* %1, align 8, !dbg !2676, !tbaa !1690
  %19 = mul i64 %18, %2, !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !557) #9, !dbg !2678
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2622, metadata !557) #9, !dbg !2680
  br label %27, !dbg !2681

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2682
  %22 = add i64 %4, 1, !dbg !2683
  %23 = add i64 %22, %21, !dbg !2684
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !525, metadata !557), !dbg !2657
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !525, metadata !557), !dbg !2657
  store i64 %23, i64* %1, align 8, !dbg !2676, !tbaa !1690
  %24 = mul i64 %23, %2, !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !557) #9, !dbg !2678
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2622, metadata !557) #9, !dbg !2680
  %25 = icmp eq i64 %24, 0, !dbg !2685
  br i1 %25, label %26, label %27, !dbg !2681

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !2686
  br label %34, !dbg !2687

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !2688
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2617, metadata !557) #9, !dbg !2678
  %30 = icmp eq i8* %29, null, !dbg !2689
  %31 = icmp ne i64 %28, 0, !dbg !2690
  %32 = and i1 %31, %30, !dbg !2691
  br i1 %32, label %33, label %34, !dbg !2691

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2692
  unreachable, !dbg !2692

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2693
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2694 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2696, metadata !557), !dbg !2697
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2577, metadata !557) #9, !dbg !2698
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2583, metadata !557) #9, !dbg !2701
  %3 = icmp eq i8* %2, null, !dbg !2702
  %4 = icmp ne i64 %0, 0, !dbg !2703
  %5 = and i1 %4, %3, !dbg !2704
  br i1 %5, label %6, label %7, !dbg !2704

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2705
  unreachable, !dbg !2705

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2706
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2707 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2711, metadata !557), !dbg !2713
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2712, metadata !557), !dbg !2714
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !522, metadata !557) #9, !dbg !2715
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !523, metadata !557) #9, !dbg !2717
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !524, metadata !557) #9, !dbg !2718
  %3 = load i64, i64* %1, align 8, !dbg !2719, !tbaa !1690
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !525, metadata !557) #9, !dbg !2720
  %4 = icmp eq i8* %0, null, !dbg !2721
  br i1 %4, label %5, label %8, !dbg !2722

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !525, metadata !557) #9, !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !525, metadata !557) #9, !dbg !2720
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !525, metadata !557) #9, !dbg !2720
  store i64 %7, i64* %1, align 8, !dbg !2725, !tbaa !1690
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !557) #9, !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2622, metadata !557) #9, !dbg !2728
  br label %17, !dbg !2729

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2730
  br i1 %9, label %11, label %10, !dbg !2731

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2732
  unreachable, !dbg !2732

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2733
  %13 = add i64 %3, 1, !dbg !2734
  %14 = add i64 %13, %12, !dbg !2735
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !525, metadata !557) #9, !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !525, metadata !557) #9, !dbg !2720
  store i64 %14, i64* %1, align 8, !dbg !2725, !tbaa !1690
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !557) #9, !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2622, metadata !557) #9, !dbg !2728
  %15 = icmp eq i64 %14, 0, !dbg !2736
  br i1 %15, label %16, label %17, !dbg !2729

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !2737
  br label %24, !dbg !2738

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2617, metadata !557) #9, !dbg !2726
  %20 = icmp eq i8* %19, null, !dbg !2740
  %21 = icmp ne i64 %18, 0, !dbg !2741
  %22 = and i1 %21, %20, !dbg !2742
  br i1 %22, label %23, label %24, !dbg !2742

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2743
  unreachable, !dbg !2743

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2744
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2745 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2747, metadata !557), !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2577, metadata !557) #9, !dbg !2749
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2751
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2583, metadata !557) #9, !dbg !2752
  %3 = icmp eq i8* %2, null, !dbg !2753
  %4 = icmp ne i64 %0, 0, !dbg !2754
  %5 = and i1 %4, %3, !dbg !2755
  br i1 %5, label %6, label %7, !dbg !2755

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2756
  unreachable, !dbg !2756

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2757
  ret i8* %2, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2759 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2761, metadata !557), !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2762, metadata !557), !dbg !2765
  %3 = udiv i64 9223372036854775807, %1, !dbg !2766
  %4 = icmp ult i64 %3, %0, !dbg !2766
  br i1 %4, label %8, label %5, !dbg !2768

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !2769
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2763, metadata !557), !dbg !2770
  %7 = icmp eq i8* %6, null, !dbg !2771
  br i1 %7, label %8, label %9, !dbg !2772

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2773
  unreachable, !dbg !2773

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2775 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2781, metadata !557), !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2782, metadata !557), !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2577, metadata !557) #9, !dbg !2785
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !2787
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2583, metadata !557) #9, !dbg !2788
  %4 = icmp eq i8* %3, null, !dbg !2789
  %5 = icmp ne i64 %1, 0, !dbg !2790
  %6 = and i1 %5, %4, !dbg !2791
  br i1 %6, label %7, label %8, !dbg !2791

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2792
  unreachable, !dbg !2792

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2793
  ret i8* %3, !dbg !2794
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2795 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2797, metadata !557), !dbg !2798
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2799
  %3 = add i64 %2, 1, !dbg !2800
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2781, metadata !557) #9, !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2782, metadata !557) #9, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2577, metadata !557) #9, !dbg !2804
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2583, metadata !557) #9, !dbg !2807
  %5 = icmp eq i8* %4, null, !dbg !2808
  %6 = icmp ne i64 %3, 0, !dbg !2809
  %7 = and i1 %6, %5, !dbg !2810
  br i1 %7, label %8, label %9, !dbg !2810

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2811
  unreachable, !dbg !2811

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !2812
  ret i8* %4, !dbg !2813
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2814 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2816, !tbaa !647
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.79, i64 0, i64 0), i32 5) #9, !dbg !2817
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i8* %2) #9, !dbg !2818
  tail call void @abort() #15, !dbg !2819
  unreachable, !dbg !2819
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2820 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2823, metadata !557), !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2824, metadata !557), !dbg !2830
  %3 = icmp eq i64 %0, 0, !dbg !2831
  %4 = icmp eq i64 %1, 0, !dbg !2832
  %5 = or i1 %3, %4, !dbg !2833
  br i1 %5, label %12, label %6, !dbg !2833

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2826, metadata !557), !dbg !2835
  %8 = udiv i64 %7, %1, !dbg !2836
  %9 = icmp eq i64 %8, %0, !dbg !2838
  br i1 %9, label %12, label %10, !dbg !2839

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2840
  store i32 12, i32* %11, align 4, !dbg !2842, !tbaa !647
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2823, metadata !557), !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2824, metadata !557), !dbg !2830
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !2843
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2825, metadata !557), !dbg !2844
  br label %16, !dbg !2845

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2846
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2847 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2864, metadata !557), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2865, metadata !557), !dbg !2874
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2866, metadata !557), !dbg !2875
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2867, metadata !557), !dbg !2876
  %6 = bitcast i32* %5 to i8*, !dbg !2877
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !2877
  %7 = icmp eq i32* %0, null, !dbg !2878
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2864, metadata !557), !dbg !2873
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2880
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2864, metadata !557), !dbg !2873
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2868, metadata !557), !dbg !2882
  %10 = icmp ugt i64 %9, -3, !dbg !2883
  %11 = icmp ne i64 %2, 0, !dbg !2884
  %12 = and i1 %11, %10, !dbg !2885
  br i1 %12, label %13, label %18, !dbg !2885

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !2886
  br i1 %14, label %18, label %15, !dbg !2887

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2888, !tbaa !954
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2870, metadata !557), !dbg !2889
  %17 = zext i8 %16 to i32, !dbg !2890
  store i32 %17, i32* %8, align 4, !dbg !2891, !tbaa !647
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !2892
  ret i64 %19, !dbg !2892
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !2893 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2938, metadata !557), !dbg !2943
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !2944
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2945, metadata !557), !dbg !2949
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2951
  %4 = load i32, i32* %3, align 8, !dbg !2951, !tbaa !2952
  %5 = and i32 %4, 32, !dbg !2951
  %6 = icmp eq i32 %5, 0, !dbg !2954
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !2955
  %8 = icmp ne i32 %7, 0, !dbg !2956
  br i1 %6, label %9, label %19, !dbg !2957

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2959
  %11 = xor i1 %8, true, !dbg !2960
  %12 = or i1 %10, %11, !dbg !2960
  %13 = sext i1 %8 to i32, !dbg !2960
  br i1 %12, label %22, label %14, !dbg !2960

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !2961
  %16 = load i32, i32* %15, align 4, !dbg !2961, !tbaa !647
  %17 = icmp ne i32 %16, 9, !dbg !2962
  %18 = sext i1 %17 to i32, !dbg !2963
  br label %22, !dbg !2963

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !2964

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !2966
  store i32 0, i32* %21, align 4, !dbg !2968, !tbaa !647
  br label %22, !dbg !2966

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !2969
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !2970 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2975, metadata !557), !dbg !2978
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2976, metadata !557), !dbg !2979
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !2980
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2977, metadata !557), !dbg !2981
  %3 = icmp eq i8* %2, null, !dbg !2982
  br i1 %3, label %11, label %4, !dbg !2984

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i64 0, i64 0)) #14, !dbg !2985
  %6 = icmp eq i32 %5, 0, !dbg !2990
  br i1 %6, label %10, label %7, !dbg !2991

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.90, i64 0, i64 0)) #14, !dbg !2992
  %9 = icmp eq i32 %8, 0, !dbg !2993
  br i1 %9, label %10, label %11, !dbg !2994

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2976, metadata !557), !dbg !2979
  br label %11, !dbg !2995

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !2996
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !2997 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3003, metadata !557), !dbg !3077
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3070, metadata !557), !dbg !3080
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3001, metadata !557), !dbg !3082
  %4 = icmp eq i8* %3, null, !dbg !3083
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), i8* %3, !dbg !3085
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3001, metadata !557), !dbg !3082
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3086, !tbaa !560
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3017, metadata !557) #9, !dbg !3087
  %7 = icmp eq i8* %6, null, !dbg !3088
  br i1 %7, label %8, label %123, !dbg !3089

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.94, i64 0, i64 0)) #9, !dbg !3090
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3018, metadata !557) #9, !dbg !3091
  %10 = icmp eq i8* %9, null, !dbg !3092
  br i1 %10, label %14, label %11, !dbg !3094

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3095, !tbaa !954
  %13 = icmp eq i8 %12, 0, !dbg !3096
  br i1 %13, label %14, label %15, !dbg !3097

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3098

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.95, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3018, metadata !557) #9, !dbg !3091
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3021, metadata !557) #9, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3023, metadata !557) #9, !dbg !3101
  %18 = icmp eq i64 %17, 0, !dbg !3102
  br i1 %18, label %24, label %19, !dbg !3103

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3104
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3104
  %22 = load i8, i8* %21, align 1, !dbg !3104, !tbaa !954
  %23 = icmp ne i8 %22, 47, !dbg !3104
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3105
  %27 = add i64 %17, 14, !dbg !3106
  %28 = add i64 %27, %26, !dbg !3107
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3108
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3020, metadata !557) #9, !dbg !3109
  %30 = icmp eq i8* %29, null, !dbg !3110
  br i1 %30, label %121, label %31, !dbg !3110

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3111
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3114

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3115, !tbaa !954
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3117
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.96, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3118
  br label %37, !dbg !3119

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3117
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.96, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3118
  br label %37, !dbg !3119

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3120
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3025, metadata !557) #9, !dbg !3121
  %39 = icmp slt i32 %38, 0, !dbg !3122
  br i1 %39, label %119, label %40, !dbg !3123

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.97, i64 0, i64 0)) #9, !dbg !3124
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3026, metadata !557) #9, !dbg !3125
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3126
  br i1 %42, label %43, label %45, !dbg !3127

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !3128
  br label %119, !dbg !3130

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3067, metadata !557) #9, !dbg !3131
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3068, metadata !557) #9, !dbg !3132
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3133

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3134

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3067, metadata !557) #9, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3068, metadata !557) #9, !dbg !3132
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3134
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3135
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3136, metadata !557) #9, !dbg !3141
  %54 = load i8*, i8** %48, align 8, !dbg !3143, !tbaa !3144
  %55 = load i8*, i8** %49, align 8, !dbg !3143, !tbaa !3145
  %56 = icmp ult i8* %54, %55, !dbg !3143
  br i1 %56, label %59, label %57, !dbg !3143, !prof !3146

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3143
  br label %63, !dbg !3143

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3143
  store i8* %60, i8** %48, align 8, !dbg !3143, !tbaa !3144
  %61 = load i8, i8* %54, align 1, !dbg !3143, !tbaa !954
  %62 = zext i8 %61 to i32, !dbg !3143
  br label %63, !dbg !3143

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3143
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3069, metadata !557) #9, !dbg !3147
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3148, !llvm.loop !3149

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3154

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3136, metadata !557) #9, !dbg !3156
  %67 = load i8*, i8** %48, align 8, !dbg !3154, !tbaa !3144
  %68 = load i8*, i8** %49, align 8, !dbg !3154, !tbaa !3145
  %69 = icmp ult i8* %67, %68, !dbg !3154
  br i1 %69, label %72, label %70, !dbg !3154, !prof !3146

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3154
  br label %76, !dbg !3154

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3154
  store i8* %73, i8** %48, align 8, !dbg !3154, !tbaa !3144
  %74 = load i8, i8* %67, align 1, !dbg !3154, !tbaa !954
  %75 = zext i8 %74 to i32, !dbg !3154
  br label %76, !dbg !3154

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3154
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3069, metadata !557) #9, !dbg !3147
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3157, !llvm.loop !3158

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !3161
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.98, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !3162
  %81 = icmp slt i32 %80, 2, !dbg !3164
  br i1 %81, label %112, label %82, !dbg !3165

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3074, metadata !557) #9, !dbg !3167
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3075, metadata !557) #9, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3076, metadata !557) #9, !dbg !3170
  %85 = icmp eq i64 %51, 0, !dbg !3171
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3173

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3068, metadata !557) #9, !dbg !3132
  %90 = add i64 %87, 2, !dbg !3174
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !3176
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3067, metadata !557) #9, !dbg !3131
  br label %96, !dbg !3177

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3068, metadata !557) #9, !dbg !3132
  %94 = add i64 %93, 1, !dbg !3180
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3067, metadata !557) #9, !dbg !3131
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3067, metadata !557) #9, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3068, metadata !557) #9, !dbg !3132
  %99 = icmp eq i8* %98, null, !dbg !3182
  br i1 %99, label %100, label %102, !dbg !3184

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3068, metadata !557) #9, !dbg !3132
  call void @free(i8* %52) #9, !dbg !3185
  br label %112, !dbg !3187

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3188
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3189
  %104 = xor i64 %84, -1, !dbg !3190
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3190
  %106 = xor i64 %83, -1, !dbg !3191
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3191
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3192, metadata !557) #9, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3200, metadata !557) #9, !dbg !3201
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !3203
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3192, metadata !557) #9, !dbg !3205
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3200, metadata !557) #9, !dbg !3205
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !3207
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3067, metadata !557) #9, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3068, metadata !557) #9, !dbg !3132
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3188
  br label %50, !dbg !3209, !llvm.loop !3158

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3188
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3210
  %116 = icmp eq i64 %113, 0, !dbg !3211
  br i1 %116, label %119, label %117, !dbg !3213

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3214
  store i8 0, i8* %118, align 1, !dbg !3216, !tbaa !954
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3017, metadata !557) #9, !dbg !3087
  call void @free(i8* %29) #9, !dbg !3217
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3017, metadata !557) #9, !dbg !3087
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3218, !tbaa !560
  br label %123, !dbg !3219

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3017, metadata !557) #9, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3002, metadata !557), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3002, metadata !557), !dbg !3220
  %125 = load i8, i8* %124, align 1, !dbg !3221, !tbaa !954
  %126 = icmp eq i8 %125, 0, !dbg !3223
  br i1 %126, label %152, label %127, !dbg !3224

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3225

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3002, metadata !557), !dbg !3220
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3225
  %132 = icmp eq i32 %131, 0, !dbg !3227
  br i1 %132, label %139, label %133, !dbg !3228

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3229
  br i1 %134, label %135, label %143, !dbg !3230

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3231
  %137 = load i8, i8* %136, align 1, !dbg !3231, !tbaa !954
  %138 = icmp eq i8 %137, 0, !dbg !3232
  br i1 %138, label %139, label %143, !dbg !3233

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3234
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3236
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3001, metadata !557), !dbg !3082
  br label %152, !dbg !3238

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3239
  %145 = add i64 %144, 1, !dbg !3240
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3002, metadata !557), !dbg !3220
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3242
  %148 = add i64 %147, 1, !dbg !3243
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3002, metadata !557), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3002, metadata !557), !dbg !3220
  %150 = load i8, i8* %149, align 1, !dbg !3221, !tbaa !954
  %151 = icmp eq i8 %150, 0, !dbg !3223
  br i1 %151, label %152, label %128, !dbg !3224, !llvm.loop !3245

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3001, metadata !557), !dbg !3082
  %154 = load i8, i8* %153, align 1, !dbg !3247, !tbaa !954
  %155 = icmp eq i8 %154, 0, !dbg !3249
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.99, i64 0, i64 0), i8* %153, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3001, metadata !557), !dbg !3082
  ret i8* %156, !dbg !3251
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3252 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3297, metadata !557), !dbg !3301
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3298, metadata !557), !dbg !3302
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3300, metadata !557), !dbg !3303
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3304
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3299, metadata !557), !dbg !3305
  %3 = icmp slt i32 %2, 0, !dbg !3306
  br i1 %3, label %4, label %6, !dbg !3308

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3309
  br label %24, !dbg !3310

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3311
  %8 = icmp eq i32 %7, 0, !dbg !3311
  br i1 %8, label %13, label %9, !dbg !3313

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3314
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3315
  %12 = icmp eq i64 %11, -1, !dbg !3316
  br i1 %12, label %16, label %13, !dbg !3317

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3318
  %15 = icmp eq i32 %14, 0, !dbg !3318
  br i1 %15, label %16, label %18, !dbg !3319

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3298, metadata !557), !dbg !3302
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3320
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3300, metadata !557), !dbg !3303
  br label %24, !dbg !3321

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3322
  %20 = load i32, i32* %19, align 4, !dbg !3322, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3298, metadata !557), !dbg !3302
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3298, metadata !557), !dbg !3302
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3320
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3300, metadata !557), !dbg !3303
  %22 = icmp eq i32 %20, 0, !dbg !3323
  br i1 %22, label %24, label %23, !dbg !3321

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3325, !tbaa !647
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3300, metadata !557), !dbg !3303
  br label %24, !dbg !3327

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3328
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3329 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3374, metadata !557), !dbg !3375
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3376
  br i1 %2, label %6, label %3, !dbg !3378

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3379
  %5 = icmp eq i32 %4, 0, !dbg !3379
  br i1 %5, label %6, label %8, !dbg !3380

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3381
  br label %17, !dbg !3382

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3383, metadata !557) #9, !dbg !3388
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3390
  %10 = load i32, i32* %9, align 8, !dbg !3390, !tbaa !2952
  %11 = and i32 %10, 256, !dbg !3392
  %12 = icmp eq i32 %11, 0, !dbg !3392
  br i1 %12, label %15, label %13, !dbg !3393

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3394
  br label %15, !dbg !3394

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3395
  br label %17, !dbg !3396

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3397
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3398 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3444, metadata !557), !dbg !3450
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3445, metadata !557), !dbg !3451
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3446, metadata !557), !dbg !3452
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3453
  %5 = load i8*, i8** %4, align 8, !dbg !3453, !tbaa !3145
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3454
  %7 = load i8*, i8** %6, align 8, !dbg !3454, !tbaa !3144
  %8 = icmp eq i8* %5, %7, !dbg !3455
  br i1 %8, label %9, label %28, !dbg !3456

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3457
  %11 = load i8*, i8** %10, align 8, !dbg !3457, !tbaa !3458
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3459
  %13 = load i8*, i8** %12, align 8, !dbg !3459, !tbaa !3460
  %14 = icmp eq i8* %11, %13, !dbg !3461
  br i1 %14, label %15, label %28, !dbg !3462

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3463
  %17 = load i8*, i8** %16, align 8, !dbg !3463, !tbaa !3464
  %18 = icmp eq i8* %17, null, !dbg !3465
  br i1 %18, label %19, label %28, !dbg !3466

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3467
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3468
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3447, metadata !557), !dbg !3469
  %22 = icmp eq i64 %21, -1, !dbg !3470
  br i1 %22, label %30, label %23, !dbg !3472

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3473
  %25 = load i32, i32* %24, align 8, !dbg !3474, !tbaa !2952
  %26 = and i32 %25, -17, !dbg !3474
  store i32 %26, i32* %24, align 8, !dbg !3474, !tbaa !2952
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3475
  store i64 %21, i64* %27, align 8, !dbg !3476, !tbaa !3477
  br label %30, !dbg !3478

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3479
  br label %30, !dbg !3480

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3481
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
!481 = !DIFile(filename: "src/true.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!552 = distinct !DISubprogram(name: "usage", scope: !481, file: !481, line: 36, type: !553, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !480, variables: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !25}
!555 = !{!556}
!556 = !DILocalVariable(name: "status", arg: 1, scope: !552, file: !481, line: 36, type: !25)
!557 = !DIExpression()
!558 = !DILocation(line: 36, column: 12, scope: !552)
!559 = !DILocation(line: 38, column: 3, scope: !552)
!560 = !{!561, !561, i64 0}
!561 = !{!"any pointer", !562, i64 0}
!562 = !{!"omnipotent char", !563, i64 0}
!563 = !{!"Simple C/C++ TBAA"}
!564 = !DILocation(line: 43, column: 3, scope: !552)
!565 = !DILocation(line: 47, column: 3, scope: !552)
!566 = !DILocation(line: 48, column: 3, scope: !552)
!567 = !DILocation(line: 49, column: 3, scope: !552)
!568 = !DILocation(line: 642, column: 15, scope: !486, inlinedAt: !569)
!569 = distinct !DILocation(line: 50, column: 3, scope: !552)
!570 = !DILocation(line: 651, column: 3, scope: !486, inlinedAt: !569)
!571 = !DILocation(line: 655, column: 29, scope: !486, inlinedAt: !569)
!572 = !DILocation(line: 655, column: 15, scope: !486, inlinedAt: !569)
!573 = !DILocation(line: 656, column: 7, scope: !574, inlinedAt: !569)
!574 = distinct !DILexicalBlock(scope: !486, file: !487, line: 656, column: 7)
!575 = !DILocation(line: 656, column: 19, scope: !574, inlinedAt: !569)
!576 = !DILocation(line: 656, column: 22, scope: !574, inlinedAt: !569)
!577 = !DILocation(line: 656, column: 7, scope: !486, inlinedAt: !569)
!578 = !DILocation(line: 662, column: 7, scope: !579, inlinedAt: !569)
!579 = distinct !DILexicalBlock(scope: !574, file: !487, line: 657, column: 5)
!580 = !DILocation(line: 664, column: 5, scope: !579, inlinedAt: !569)
!581 = !DILocation(line: 665, column: 3, scope: !486, inlinedAt: !569)
!582 = !DILocation(line: 667, column: 3, scope: !486, inlinedAt: !569)
!583 = !DILocation(line: 51, column: 3, scope: !552)
!584 = distinct !DISubprogram(name: "main", scope: !481, file: !481, line: 55, type: !585, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !588)
!585 = !DISubroutineType(types: !586)
!586 = !{!25, !25, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!588 = !{!589, !590}
!589 = !DILocalVariable(name: "argc", arg: 1, scope: !584, file: !481, line: 55, type: !25)
!590 = !DILocalVariable(name: "argv", arg: 2, scope: !584, file: !481, line: 55, type: !587)
!591 = !DILocation(line: 55, column: 11, scope: !584)
!592 = !DILocation(line: 55, column: 24, scope: !584)
!593 = !DILocation(line: 59, column: 12, scope: !594)
!594 = distinct !DILexicalBlock(scope: !584, file: !481, line: 59, column: 7)
!595 = !DILocation(line: 59, column: 7, scope: !584)
!596 = !DILocation(line: 62, column: 25, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !481, line: 60, column: 5)
!598 = !DILocation(line: 62, column: 7, scope: !597)
!599 = !DILocation(line: 63, column: 7, scope: !597)
!600 = !DILocation(line: 64, column: 7, scope: !597)
!601 = !DILocation(line: 65, column: 7, scope: !597)
!602 = !DILocation(line: 69, column: 7, scope: !597)
!603 = !DILocation(line: 71, column: 11, scope: !604)
!604 = distinct !DILexicalBlock(scope: !597, file: !481, line: 71, column: 11)
!605 = !DILocation(line: 71, column: 11, scope: !597)
!606 = !DILocation(line: 72, column: 9, scope: !604)
!607 = !DILocation(line: 74, column: 11, scope: !608)
!608 = distinct !DILexicalBlock(scope: !597, file: !481, line: 74, column: 11)
!609 = !DILocation(line: 74, column: 11, scope: !597)
!610 = !DILocation(line: 75, column: 22, scope: !608)
!611 = !DILocation(line: 75, column: 58, scope: !608)
!612 = !DILocation(line: 75, column: 9, scope: !608)
!613 = !DILocation(line: 79, column: 3, scope: !584)
!614 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !488, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !615)
!615 = !{!616}
!616 = !DILocalVariable(name: "file", arg: 1, scope: !614, file: !16, line: 41, type: !6)
!617 = !DILocation(line: 41, column: 41, scope: !614)
!618 = !DILocation(line: 43, column: 13, scope: !614)
!619 = !DILocation(line: 44, column: 1, scope: !614)
!620 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !621, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !17}
!623 = !{!624}
!624 = !DILocalVariable(name: "ignore", arg: 1, scope: !620, file: !16, line: 78, type: !17)
!625 = !DILocation(line: 78, column: 37, scope: !620)
!626 = !DILocation(line: 80, column: 16, scope: !620)
!627 = !{!628, !628, i64 0}
!628 = !{!"_Bool", !562, i64 0}
!629 = !DILocation(line: 81, column: 1, scope: !620)
!630 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !631, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null}
!633 = !{!634}
!634 = !DILocalVariable(name: "write_error", scope: !635, file: !16, line: 112, type: !6)
!635 = distinct !DILexicalBlock(scope: !636, file: !16, line: 111, column: 5)
!636 = distinct !DILexicalBlock(scope: !630, file: !16, line: 109, column: 7)
!637 = !DILocation(line: 109, column: 21, scope: !636)
!638 = !DILocation(line: 109, column: 7, scope: !636)
!639 = !DILocation(line: 109, column: 29, scope: !636)
!640 = !DILocation(line: 110, column: 7, scope: !636)
!641 = !DILocation(line: 110, column: 12, scope: !636)
!642 = !{i8 0, i8 2}
!643 = !DILocation(line: 114, column: 19, scope: !644)
!644 = distinct !DILexicalBlock(scope: !635, file: !16, line: 113, column: 11)
!645 = !DILocation(line: 110, column: 25, scope: !636)
!646 = !DILocation(line: 110, column: 28, scope: !636)
!647 = !{!648, !648, i64 0}
!648 = !{!"int", !562, i64 0}
!649 = !DILocation(line: 110, column: 34, scope: !636)
!650 = !DILocation(line: 109, column: 7, scope: !630)
!651 = !DILocation(line: 112, column: 33, scope: !635)
!652 = !DILocation(line: 112, column: 19, scope: !635)
!653 = !DILocation(line: 113, column: 11, scope: !644)
!654 = !DILocation(line: 113, column: 11, scope: !635)
!655 = !DILocation(line: 114, column: 36, scope: !644)
!656 = !DILocation(line: 114, column: 9, scope: !644)
!657 = !DILocation(line: 117, column: 9, scope: !644)
!658 = !DILocation(line: 119, column: 14, scope: !635)
!659 = !DILocation(line: 119, column: 7, scope: !635)
!660 = !DILocation(line: 122, column: 22, scope: !661)
!661 = distinct !DILexicalBlock(scope: !630, file: !16, line: 122, column: 8)
!662 = !DILocation(line: 122, column: 8, scope: !661)
!663 = !DILocation(line: 122, column: 30, scope: !661)
!664 = !DILocation(line: 122, column: 8, scope: !630)
!665 = !DILocation(line: 123, column: 13, scope: !661)
!666 = !DILocation(line: 123, column: 6, scope: !661)
!667 = !DILocation(line: 124, column: 1, scope: !630)
!668 = distinct !DISubprogram(name: "set_program_name", scope: !34, file: !34, line: 39, type: !488, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !669)
!669 = !{!670, !671, !672}
!670 = !DILocalVariable(name: "argv0", arg: 1, scope: !668, file: !34, line: 39, type: !6)
!671 = !DILocalVariable(name: "slash", scope: !668, file: !34, line: 46, type: !6)
!672 = !DILocalVariable(name: "base", scope: !668, file: !34, line: 47, type: !6)
!673 = !DILocation(line: 39, column: 31, scope: !668)
!674 = !DILocation(line: 51, column: 13, scope: !675)
!675 = distinct !DILexicalBlock(scope: !668, file: !34, line: 51, column: 7)
!676 = !DILocation(line: 51, column: 7, scope: !668)
!677 = !DILocation(line: 55, column: 14, scope: !678)
!678 = distinct !DILexicalBlock(scope: !675, file: !34, line: 52, column: 5)
!679 = !DILocation(line: 54, column: 7, scope: !678)
!680 = !DILocation(line: 56, column: 7, scope: !678)
!681 = !DILocation(line: 59, column: 11, scope: !668)
!682 = !DILocation(line: 46, column: 15, scope: !668)
!683 = !DILocation(line: 60, column: 17, scope: !668)
!684 = !DILocation(line: 60, column: 33, scope: !668)
!685 = !DILocation(line: 60, column: 11, scope: !668)
!686 = !DILocation(line: 47, column: 15, scope: !668)
!687 = !DILocation(line: 61, column: 12, scope: !688)
!688 = distinct !DILexicalBlock(scope: !668, file: !34, line: 61, column: 7)
!689 = !DILocation(line: 61, column: 20, scope: !688)
!690 = !DILocation(line: 61, column: 25, scope: !688)
!691 = !DILocation(line: 61, column: 42, scope: !688)
!692 = !DILocation(line: 61, column: 28, scope: !688)
!693 = !DILocation(line: 61, column: 61, scope: !688)
!694 = !DILocation(line: 61, column: 7, scope: !668)
!695 = !DILocation(line: 64, column: 11, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !34, line: 64, column: 11)
!697 = distinct !DILexicalBlock(scope: !688, file: !34, line: 62, column: 5)
!698 = !DILocation(line: 64, column: 36, scope: !696)
!699 = !DILocation(line: 64, column: 11, scope: !697)
!700 = !DILocation(line: 66, column: 24, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !34, line: 65, column: 9)
!702 = !DILocation(line: 70, column: 41, scope: !701)
!703 = !DILocation(line: 72, column: 9, scope: !701)
!704 = !DILocation(line: 84, column: 16, scope: !668)
!705 = !DILocation(line: 90, column: 27, scope: !668)
!706 = !DILocation(line: 92, column: 1, scope: !668)
!707 = distinct !DISubprogram(name: "clone_quoting_options", scope: !82, file: !82, line: 114, type: !708, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !711)
!708 = !DISubroutineType(types: !709)
!709 = !{!710, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!711 = !{!712, !713, !714}
!712 = !DILocalVariable(name: "o", arg: 1, scope: !707, file: !82, line: 114, type: !710)
!713 = !DILocalVariable(name: "e", scope: !707, file: !82, line: 116, type: !25)
!714 = !DILocalVariable(name: "p", scope: !707, file: !82, line: 117, type: !710)
!715 = !DILocation(line: 114, column: 48, scope: !707)
!716 = !DILocation(line: 116, column: 11, scope: !707)
!717 = !DILocation(line: 116, column: 7, scope: !707)
!718 = !DILocation(line: 117, column: 40, scope: !707)
!719 = !DILocation(line: 117, column: 31, scope: !707)
!720 = !DILocation(line: 117, column: 27, scope: !707)
!721 = !DILocation(line: 119, column: 9, scope: !707)
!722 = !DILocation(line: 120, column: 3, scope: !707)
!723 = distinct !DISubprogram(name: "get_quoting_style", scope: !82, file: !82, line: 125, type: !724, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !728)
!724 = !DISubroutineType(types: !725)
!725 = !{!40, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!728 = !{!729}
!729 = !DILocalVariable(name: "o", arg: 1, scope: !723, file: !82, line: 125, type: !726)
!730 = !DILocation(line: 125, column: 50, scope: !723)
!731 = !DILocation(line: 127, column: 11, scope: !723)
!732 = !DILocation(line: 127, column: 46, scope: !723)
!733 = !{!734, !562, i64 0}
!734 = !{!"quoting_options", !562, i64 0, !648, i64 4, !562, i64 8, !561, i64 40, !561, i64 48}
!735 = !DILocation(line: 127, column: 3, scope: !723)
!736 = distinct !DISubprogram(name: "set_quoting_style", scope: !82, file: !82, line: 133, type: !737, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !710, !40}
!739 = !{!740, !741}
!740 = !DILocalVariable(name: "o", arg: 1, scope: !736, file: !82, line: 133, type: !710)
!741 = !DILocalVariable(name: "s", arg: 2, scope: !736, file: !82, line: 133, type: !40)
!742 = !DILocation(line: 133, column: 44, scope: !736)
!743 = !DILocation(line: 133, column: 66, scope: !736)
!744 = !DILocation(line: 135, column: 4, scope: !736)
!745 = !DILocation(line: 135, column: 39, scope: !736)
!746 = !DILocation(line: 135, column: 45, scope: !736)
!747 = !DILocation(line: 136, column: 1, scope: !736)
!748 = distinct !DISubprogram(name: "set_char_quoting", scope: !82, file: !82, line: 144, type: !749, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{!25, !710, !8, !25}
!751 = !{!752, !753, !754, !755, !756, !758, !759}
!752 = !DILocalVariable(name: "o", arg: 1, scope: !748, file: !82, line: 144, type: !710)
!753 = !DILocalVariable(name: "c", arg: 2, scope: !748, file: !82, line: 144, type: !8)
!754 = !DILocalVariable(name: "i", arg: 3, scope: !748, file: !82, line: 144, type: !25)
!755 = !DILocalVariable(name: "uc", scope: !748, file: !82, line: 146, type: !476)
!756 = !DILocalVariable(name: "p", scope: !748, file: !82, line: 147, type: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!758 = !DILocalVariable(name: "shift", scope: !748, file: !82, line: 149, type: !25)
!759 = !DILocalVariable(name: "r", scope: !748, file: !82, line: 150, type: !25)
!760 = !DILocation(line: 144, column: 43, scope: !748)
!761 = !DILocation(line: 144, column: 51, scope: !748)
!762 = !DILocation(line: 144, column: 58, scope: !748)
!763 = !DILocation(line: 146, column: 17, scope: !748)
!764 = !DILocation(line: 148, column: 6, scope: !748)
!765 = !DILocation(line: 148, column: 62, scope: !748)
!766 = !DILocation(line: 148, column: 57, scope: !748)
!767 = !DILocation(line: 147, column: 17, scope: !748)
!768 = !DILocation(line: 149, column: 18, scope: !748)
!769 = !DILocation(line: 149, column: 15, scope: !748)
!770 = !DILocation(line: 149, column: 7, scope: !748)
!771 = !DILocation(line: 150, column: 12, scope: !748)
!772 = !DILocation(line: 150, column: 15, scope: !748)
!773 = !DILocation(line: 150, column: 25, scope: !748)
!774 = !DILocation(line: 150, column: 7, scope: !748)
!775 = !DILocation(line: 151, column: 13, scope: !748)
!776 = !DILocation(line: 151, column: 18, scope: !748)
!777 = !DILocation(line: 151, column: 23, scope: !748)
!778 = !DILocation(line: 151, column: 6, scope: !748)
!779 = !DILocation(line: 152, column: 3, scope: !748)
!780 = distinct !DISubprogram(name: "set_quoting_flags", scope: !82, file: !82, line: 160, type: !781, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!25, !710, !25}
!783 = !{!784, !785, !786}
!784 = !DILocalVariable(name: "o", arg: 1, scope: !780, file: !82, line: 160, type: !710)
!785 = !DILocalVariable(name: "i", arg: 2, scope: !780, file: !82, line: 160, type: !25)
!786 = !DILocalVariable(name: "r", scope: !780, file: !82, line: 162, type: !25)
!787 = !DILocation(line: 160, column: 44, scope: !780)
!788 = !DILocation(line: 160, column: 51, scope: !780)
!789 = !DILocation(line: 163, column: 8, scope: !790)
!790 = distinct !DILexicalBlock(scope: !780, file: !82, line: 163, column: 7)
!791 = !DILocation(line: 163, column: 7, scope: !780)
!792 = !DILocation(line: 165, column: 10, scope: !780)
!793 = !{!734, !648, i64 4}
!794 = !DILocation(line: 162, column: 7, scope: !780)
!795 = !DILocation(line: 166, column: 12, scope: !780)
!796 = !DILocation(line: 167, column: 3, scope: !780)
!797 = distinct !DISubprogram(name: "set_custom_quoting", scope: !82, file: !82, line: 171, type: !798, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !710, !6, !6}
!800 = !{!801, !802, !803}
!801 = !DILocalVariable(name: "o", arg: 1, scope: !797, file: !82, line: 171, type: !710)
!802 = !DILocalVariable(name: "left_quote", arg: 2, scope: !797, file: !82, line: 172, type: !6)
!803 = !DILocalVariable(name: "right_quote", arg: 3, scope: !797, file: !82, line: 172, type: !6)
!804 = !DILocation(line: 171, column: 45, scope: !797)
!805 = !DILocation(line: 172, column: 33, scope: !797)
!806 = !DILocation(line: 172, column: 57, scope: !797)
!807 = !DILocation(line: 174, column: 8, scope: !808)
!808 = distinct !DILexicalBlock(scope: !797, file: !82, line: 174, column: 7)
!809 = !DILocation(line: 174, column: 7, scope: !797)
!810 = !DILocation(line: 176, column: 6, scope: !797)
!811 = !DILocation(line: 176, column: 12, scope: !797)
!812 = !DILocation(line: 177, column: 8, scope: !813)
!813 = distinct !DILexicalBlock(scope: !797, file: !82, line: 177, column: 7)
!814 = !DILocation(line: 177, column: 23, scope: !813)
!815 = !DILocation(line: 177, column: 19, scope: !813)
!816 = !DILocation(line: 178, column: 5, scope: !813)
!817 = !DILocation(line: 179, column: 6, scope: !797)
!818 = !DILocation(line: 179, column: 17, scope: !797)
!819 = !{!734, !561, i64 40}
!820 = !DILocation(line: 180, column: 6, scope: !797)
!821 = !DILocation(line: 180, column: 18, scope: !797)
!822 = !{!734, !561, i64 48}
!823 = !DILocation(line: 181, column: 1, scope: !797)
!824 = distinct !DISubprogram(name: "quotearg_buffer", scope: !82, file: !82, line: 776, type: !825, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{!76, !32, !76, !6, !76, !726}
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835}
!828 = !DILocalVariable(name: "buffer", arg: 1, scope: !824, file: !82, line: 776, type: !32)
!829 = !DILocalVariable(name: "buffersize", arg: 2, scope: !824, file: !82, line: 776, type: !76)
!830 = !DILocalVariable(name: "arg", arg: 3, scope: !824, file: !82, line: 777, type: !6)
!831 = !DILocalVariable(name: "argsize", arg: 4, scope: !824, file: !82, line: 777, type: !76)
!832 = !DILocalVariable(name: "o", arg: 5, scope: !824, file: !82, line: 778, type: !726)
!833 = !DILocalVariable(name: "p", scope: !824, file: !82, line: 780, type: !726)
!834 = !DILocalVariable(name: "e", scope: !824, file: !82, line: 781, type: !25)
!835 = !DILocalVariable(name: "r", scope: !824, file: !82, line: 782, type: !76)
!836 = !DILocation(line: 776, column: 24, scope: !824)
!837 = !DILocation(line: 776, column: 39, scope: !824)
!838 = !DILocation(line: 777, column: 30, scope: !824)
!839 = !DILocation(line: 777, column: 42, scope: !824)
!840 = !DILocation(line: 778, column: 48, scope: !824)
!841 = !DILocation(line: 780, column: 37, scope: !824)
!842 = !DILocation(line: 780, column: 33, scope: !824)
!843 = !DILocation(line: 781, column: 11, scope: !824)
!844 = !DILocation(line: 781, column: 7, scope: !824)
!845 = !DILocation(line: 783, column: 43, scope: !824)
!846 = !DILocation(line: 783, column: 53, scope: !824)
!847 = !DILocation(line: 783, column: 60, scope: !824)
!848 = !DILocation(line: 784, column: 43, scope: !824)
!849 = !DILocation(line: 784, column: 58, scope: !824)
!850 = !DILocation(line: 782, column: 14, scope: !824)
!851 = !DILocation(line: 782, column: 10, scope: !824)
!852 = !DILocation(line: 785, column: 9, scope: !824)
!853 = !DILocation(line: 786, column: 3, scope: !824)
!854 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !82, file: !82, line: 248, type: !855, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !859)
!855 = !DISubroutineType(types: !856)
!856 = !{!76, !32, !76, !6, !76, !40, !25, !857, !6, !6}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !884, !885, !886, !887, !888, !891, !892, !910, !913, !914, !921}
!860 = !DILocalVariable(name: "buffer", arg: 1, scope: !854, file: !82, line: 248, type: !32)
!861 = !DILocalVariable(name: "buffersize", arg: 2, scope: !854, file: !82, line: 248, type: !76)
!862 = !DILocalVariable(name: "arg", arg: 3, scope: !854, file: !82, line: 249, type: !6)
!863 = !DILocalVariable(name: "argsize", arg: 4, scope: !854, file: !82, line: 249, type: !76)
!864 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !854, file: !82, line: 250, type: !40)
!865 = !DILocalVariable(name: "flags", arg: 6, scope: !854, file: !82, line: 250, type: !25)
!866 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !854, file: !82, line: 251, type: !857)
!867 = !DILocalVariable(name: "left_quote", arg: 8, scope: !854, file: !82, line: 252, type: !6)
!868 = !DILocalVariable(name: "right_quote", arg: 9, scope: !854, file: !82, line: 253, type: !6)
!869 = !DILocalVariable(name: "i", scope: !854, file: !82, line: 255, type: !76)
!870 = !DILocalVariable(name: "len", scope: !854, file: !82, line: 256, type: !76)
!871 = !DILocalVariable(name: "orig_buffersize", scope: !854, file: !82, line: 257, type: !76)
!872 = !DILocalVariable(name: "quote_string", scope: !854, file: !82, line: 258, type: !6)
!873 = !DILocalVariable(name: "quote_string_len", scope: !854, file: !82, line: 259, type: !76)
!874 = !DILocalVariable(name: "backslash_escapes", scope: !854, file: !82, line: 260, type: !17)
!875 = !DILocalVariable(name: "unibyte_locale", scope: !854, file: !82, line: 261, type: !17)
!876 = !DILocalVariable(name: "elide_outer_quotes", scope: !854, file: !82, line: 262, type: !17)
!877 = !DILocalVariable(name: "pending_shell_escape_end", scope: !854, file: !82, line: 263, type: !17)
!878 = !DILocalVariable(name: "encountered_single_quote", scope: !854, file: !82, line: 264, type: !17)
!879 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !854, file: !82, line: 265, type: !17)
!880 = !DILocalVariable(name: "c", scope: !881, file: !82, line: 394, type: !476)
!881 = distinct !DILexicalBlock(scope: !882, file: !82, line: 393, column: 5)
!882 = distinct !DILexicalBlock(scope: !883, file: !82, line: 392, column: 3)
!883 = distinct !DILexicalBlock(scope: !854, file: !82, line: 392, column: 3)
!884 = !DILocalVariable(name: "esc", scope: !881, file: !82, line: 395, type: !476)
!885 = !DILocalVariable(name: "is_right_quote", scope: !881, file: !82, line: 396, type: !17)
!886 = !DILocalVariable(name: "escaping", scope: !881, file: !82, line: 397, type: !17)
!887 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !881, file: !82, line: 398, type: !17)
!888 = !DILocalVariable(name: "m", scope: !889, file: !82, line: 602, type: !76)
!889 = distinct !DILexicalBlock(scope: !890, file: !82, line: 600, column: 11)
!890 = distinct !DILexicalBlock(scope: !881, file: !82, line: 418, column: 9)
!891 = !DILocalVariable(name: "printable", scope: !889, file: !82, line: 604, type: !17)
!892 = !DILocalVariable(name: "mbstate", scope: !893, file: !82, line: 613, type: !895)
!893 = distinct !DILexicalBlock(scope: !894, file: !82, line: 612, column: 15)
!894 = distinct !DILexicalBlock(scope: !889, file: !82, line: 606, column: 17)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !896, line: 6, baseType: !897)
!896 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !898, line: 21, baseType: !899)
!898 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !898, line: 13, size: 64, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !899, file: !898, line: 15, baseType: !25, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !899, file: !898, line: 20, baseType: !903, size: 32, offset: 32)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !899, file: !898, line: 16, size: 32, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !903, file: !898, line: 18, baseType: !95, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !903, file: !898, line: 19, baseType: !907, size: 32)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 4)
!910 = !DILocalVariable(name: "w", scope: !911, file: !82, line: 623, type: !912)
!911 = distinct !DILexicalBlock(scope: !893, file: !82, line: 622, column: 19)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 90, baseType: !25)
!913 = !DILocalVariable(name: "bytes", scope: !911, file: !82, line: 624, type: !76)
!914 = !DILocalVariable(name: "j", scope: !915, file: !82, line: 649, type: !76)
!915 = distinct !DILexicalBlock(scope: !916, file: !82, line: 648, column: 27)
!916 = distinct !DILexicalBlock(scope: !917, file: !82, line: 646, column: 29)
!917 = distinct !DILexicalBlock(scope: !918, file: !82, line: 641, column: 23)
!918 = distinct !DILexicalBlock(scope: !919, file: !82, line: 633, column: 30)
!919 = distinct !DILexicalBlock(scope: !920, file: !82, line: 628, column: 30)
!920 = distinct !DILexicalBlock(scope: !911, file: !82, line: 626, column: 25)
!921 = !DILocalVariable(name: "ilim", scope: !922, file: !82, line: 676, type: !76)
!922 = distinct !DILexicalBlock(scope: !923, file: !82, line: 673, column: 15)
!923 = distinct !DILexicalBlock(scope: !889, file: !82, line: 672, column: 17)
!924 = !DILocation(line: 248, column: 33, scope: !854)
!925 = !DILocation(line: 248, column: 48, scope: !854)
!926 = !DILocation(line: 249, column: 39, scope: !854)
!927 = !DILocation(line: 249, column: 51, scope: !854)
!928 = !DILocation(line: 250, column: 46, scope: !854)
!929 = !DILocation(line: 250, column: 65, scope: !854)
!930 = !DILocation(line: 251, column: 47, scope: !854)
!931 = !DILocation(line: 252, column: 39, scope: !854)
!932 = !DILocation(line: 253, column: 39, scope: !854)
!933 = !DILocation(line: 256, column: 10, scope: !854)
!934 = !DILocation(line: 257, column: 10, scope: !854)
!935 = !DILocation(line: 258, column: 15, scope: !854)
!936 = !DILocation(line: 259, column: 10, scope: !854)
!937 = !DILocation(line: 260, column: 8, scope: !854)
!938 = !DILocation(line: 261, column: 25, scope: !854)
!939 = !DILocation(line: 261, column: 36, scope: !854)
!940 = !DILocation(line: 262, column: 8, scope: !854)
!941 = !DILocation(line: 263, column: 8, scope: !854)
!942 = !DILocation(line: 264, column: 8, scope: !854)
!943 = !DILocation(line: 265, column: 8, scope: !854)
!944 = !DILocation(line: 265, column: 3, scope: !854)
!945 = !DILocation(line: 308, column: 3, scope: !854)
!946 = !DILocation(line: 315, column: 11, scope: !947)
!947 = distinct !DILexicalBlock(scope: !854, file: !82, line: 309, column: 5)
!948 = !DILocation(line: 315, column: 12, scope: !949)
!949 = distinct !DILexicalBlock(scope: !947, file: !82, line: 315, column: 11)
!950 = !DILocation(line: 316, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !82, line: 316, column: 9)
!952 = distinct !DILexicalBlock(scope: !949, file: !82, line: 316, column: 9)
!953 = !DILocation(line: 316, column: 9, scope: !952)
!954 = !{!562, !562, i64 0}
!955 = !DILocation(line: 354, column: 26, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !82, line: 332, column: 11)
!957 = distinct !DILexicalBlock(scope: !958, file: !82, line: 331, column: 13)
!958 = distinct !DILexicalBlock(scope: !947, file: !82, line: 330, column: 7)
!959 = !DILocation(line: 355, column: 27, scope: !956)
!960 = !DILocation(line: 356, column: 11, scope: !956)
!961 = !DILocation(line: 357, column: 14, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !82, line: 357, column: 13)
!963 = !DILocation(line: 357, column: 13, scope: !958)
!964 = !DILocation(line: 358, column: 43, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !82, line: 358, column: 11)
!966 = distinct !DILexicalBlock(scope: !962, file: !82, line: 358, column: 11)
!967 = !DILocation(line: 358, column: 11, scope: !966)
!968 = !DILocation(line: 359, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !82, line: 359, column: 13)
!970 = distinct !DILexicalBlock(scope: !965, file: !82, line: 359, column: 13)
!971 = !DILocation(line: 359, column: 13, scope: !970)
!972 = !DILocation(line: 358, column: 70, scope: !965)
!973 = distinct !{!973, !967, !974}
!974 = !DILocation(line: 359, column: 13, scope: !966)
!975 = !DILocation(line: 362, column: 28, scope: !958)
!976 = !DILocation(line: 364, column: 7, scope: !947)
!977 = !DILocation(line: 367, column: 7, scope: !947)
!978 = !DILocation(line: 370, column: 7, scope: !947)
!979 = !DILocation(line: 373, column: 12, scope: !980)
!980 = distinct !DILexicalBlock(scope: !947, file: !82, line: 373, column: 11)
!981 = !DILocation(line: 373, column: 11, scope: !947)
!982 = !DILocation(line: 378, column: 12, scope: !983)
!983 = distinct !DILexicalBlock(scope: !947, file: !82, line: 378, column: 11)
!984 = !DILocation(line: 378, column: 11, scope: !947)
!985 = !DILocation(line: 379, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !82, line: 379, column: 9)
!987 = distinct !DILexicalBlock(scope: !983, file: !82, line: 379, column: 9)
!988 = !DILocation(line: 379, column: 9, scope: !987)
!989 = !DILocation(line: 386, column: 7, scope: !947)
!990 = !DILocation(line: 389, column: 7, scope: !947)
!991 = !DILocation(line: 255, column: 10, scope: !854)
!992 = !DILocation(line: 392, column: 8, scope: !883)
!993 = !DILocation(line: 392, column: 27, scope: !882)
!994 = !DILocation(line: 392, column: 19, scope: !882)
!995 = !DILocation(line: 392, column: 60, scope: !882)
!996 = !DILocation(line: 392, column: 3, scope: !883)
!997 = !DILocation(line: 392, column: 41, scope: !882)
!998 = !DILocation(line: 392, column: 48, scope: !882)
!999 = !DILocation(line: 396, column: 12, scope: !881)
!1000 = !DILocation(line: 397, column: 12, scope: !881)
!1001 = !DILocation(line: 398, column: 12, scope: !881)
!1002 = !DILocation(line: 401, column: 11, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !881, file: !82, line: 400, column: 11)
!1004 = !DILocation(line: 403, column: 17, scope: !1003)
!1005 = !DILocation(line: 404, column: 39, scope: !1003)
!1006 = !DILocation(line: 408, column: 32, scope: !1003)
!1007 = !DILocation(line: 404, column: 19, scope: !1003)
!1008 = !DILocation(line: 404, column: 15, scope: !1003)
!1009 = !DILocation(line: 409, column: 11, scope: !1003)
!1010 = !DILocation(line: 409, column: 26, scope: !1003)
!1011 = !DILocation(line: 409, column: 14, scope: !1003)
!1012 = !DILocation(line: 409, column: 63, scope: !1003)
!1013 = !DILocation(line: 400, column: 11, scope: !881)
!1014 = !DILocation(line: 416, column: 11, scope: !881)
!1015 = !DILocation(line: 394, column: 21, scope: !881)
!1016 = !DILocation(line: 417, column: 7, scope: !881)
!1017 = !DILocation(line: 420, column: 15, scope: !890)
!1018 = !DILocation(line: 422, column: 15, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !82, line: 422, column: 15)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !82, line: 421, column: 13)
!1021 = distinct !DILexicalBlock(scope: !890, file: !82, line: 420, column: 15)
!1022 = !DILocation(line: 422, column: 15, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !82, line: 422, column: 15)
!1024 = !DILocation(line: 422, column: 15, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !82, line: 422, column: 15)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !82, line: 422, column: 15)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !82, line: 422, column: 15)
!1028 = !DILocation(line: 422, column: 15, scope: !1026)
!1029 = !DILocation(line: 422, column: 15, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !82, line: 422, column: 15)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !82, line: 422, column: 15)
!1032 = !DILocation(line: 422, column: 15, scope: !1031)
!1033 = !DILocation(line: 422, column: 15, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !82, line: 422, column: 15)
!1035 = distinct !DILexicalBlock(scope: !1027, file: !82, line: 422, column: 15)
!1036 = !DILocation(line: 422, column: 15, scope: !1035)
!1037 = !DILocation(line: 422, column: 15, scope: !1027)
!1038 = !DILocation(line: 422, column: 15, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !82, line: 422, column: 15)
!1040 = distinct !DILexicalBlock(scope: !1019, file: !82, line: 422, column: 15)
!1041 = !DILocation(line: 422, column: 15, scope: !1040)
!1042 = !DILocation(line: 430, column: 19, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1020, file: !82, line: 429, column: 19)
!1044 = !DILocation(line: 430, column: 24, scope: !1043)
!1045 = !DILocation(line: 430, column: 28, scope: !1043)
!1046 = !DILocation(line: 430, column: 38, scope: !1043)
!1047 = !DILocation(line: 430, column: 48, scope: !1043)
!1048 = !DILocation(line: 430, column: 59, scope: !1043)
!1049 = !DILocation(line: 432, column: 19, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !82, line: 432, column: 19)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !82, line: 432, column: 19)
!1052 = distinct !DILexicalBlock(scope: !1043, file: !82, line: 431, column: 17)
!1053 = !DILocation(line: 432, column: 19, scope: !1051)
!1054 = !DILocation(line: 433, column: 19, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !82, line: 433, column: 19)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !82, line: 433, column: 19)
!1057 = !DILocation(line: 433, column: 19, scope: !1056)
!1058 = !DILocation(line: 434, column: 17, scope: !1052)
!1059 = !DILocation(line: 441, column: 20, scope: !1021)
!1060 = !DILocation(line: 446, column: 11, scope: !890)
!1061 = !DILocation(line: 449, column: 19, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !890, file: !82, line: 447, column: 13)
!1063 = !DILocation(line: 455, column: 19, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1062, file: !82, line: 454, column: 19)
!1065 = !DILocation(line: 455, column: 24, scope: !1064)
!1066 = !DILocation(line: 455, column: 28, scope: !1064)
!1067 = !DILocation(line: 455, column: 38, scope: !1064)
!1068 = !DILocation(line: 455, column: 47, scope: !1064)
!1069 = !DILocation(line: 455, column: 41, scope: !1064)
!1070 = !DILocation(line: 455, column: 52, scope: !1064)
!1071 = !DILocation(line: 454, column: 19, scope: !1062)
!1072 = !DILocation(line: 456, column: 25, scope: !1064)
!1073 = !DILocation(line: 456, column: 17, scope: !1064)
!1074 = !DILocation(line: 463, column: 25, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1064, file: !82, line: 457, column: 19)
!1076 = !DILocation(line: 467, column: 21, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !82, line: 467, column: 21)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 467, column: 21)
!1079 = !DILocation(line: 467, column: 21, scope: !1078)
!1080 = !DILocation(line: 468, column: 21, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !82, line: 468, column: 21)
!1082 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 468, column: 21)
!1083 = !DILocation(line: 468, column: 21, scope: !1082)
!1084 = !DILocation(line: 469, column: 21, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !82, line: 469, column: 21)
!1086 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 469, column: 21)
!1087 = !DILocation(line: 469, column: 21, scope: !1086)
!1088 = !DILocation(line: 470, column: 21, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !82, line: 470, column: 21)
!1090 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 470, column: 21)
!1091 = !DILocation(line: 470, column: 21, scope: !1090)
!1092 = !DILocation(line: 471, column: 21, scope: !1075)
!1093 = !DILocation(line: 395, column: 21, scope: !881)
!1094 = !DILocation(line: 484, column: 31, scope: !890)
!1095 = !DILocation(line: 485, column: 31, scope: !890)
!1096 = !DILocation(line: 487, column: 31, scope: !890)
!1097 = !DILocation(line: 488, column: 31, scope: !890)
!1098 = !DILocation(line: 489, column: 31, scope: !890)
!1099 = !DILocation(line: 492, column: 15, scope: !890)
!1100 = !DILocation(line: 494, column: 19, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !82, line: 493, column: 13)
!1102 = distinct !DILexicalBlock(scope: !890, file: !82, line: 492, column: 15)
!1103 = !DILocation(line: 501, column: 33, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !890, file: !82, line: 501, column: 15)
!1105 = !DILocation(line: 506, column: 15, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !890, file: !82, line: 505, column: 15)
!1107 = !DILocation(line: 510, column: 15, scope: !890)
!1108 = !DILocation(line: 518, column: 26, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !890, file: !82, line: 518, column: 15)
!1110 = !DILocation(line: 518, column: 15, scope: !890)
!1111 = !DILocation(line: 518, column: 40, scope: !1109)
!1112 = !DILocation(line: 518, column: 47, scope: !1109)
!1113 = !DILocation(line: 522, column: 17, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !890, file: !82, line: 522, column: 15)
!1115 = !DILocation(line: 518, column: 18, scope: !1109)
!1116 = !DILocation(line: 518, column: 65, scope: !1109)
!1117 = !DILocation(line: 522, column: 15, scope: !890)
!1118 = !DILocation(line: 526, column: 11, scope: !890)
!1119 = !DILocation(line: 541, column: 15, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !890, file: !82, line: 540, column: 15)
!1121 = !DILocation(line: 548, column: 15, scope: !890)
!1122 = !DILocation(line: 550, column: 19, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !82, line: 549, column: 13)
!1124 = distinct !DILexicalBlock(scope: !890, file: !82, line: 548, column: 15)
!1125 = !DILocation(line: 553, column: 19, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !82, line: 553, column: 19)
!1127 = !DILocation(line: 553, column: 35, scope: !1126)
!1128 = !DILocation(line: 553, column: 30, scope: !1126)
!1129 = !DILocation(line: 562, column: 15, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !82, line: 562, column: 15)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !82, line: 562, column: 15)
!1132 = !DILocation(line: 562, column: 15, scope: !1131)
!1133 = !DILocation(line: 563, column: 15, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !82, line: 563, column: 15)
!1135 = distinct !DILexicalBlock(scope: !1123, file: !82, line: 563, column: 15)
!1136 = !DILocation(line: 563, column: 15, scope: !1135)
!1137 = !DILocation(line: 564, column: 15, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !82, line: 564, column: 15)
!1139 = distinct !DILexicalBlock(scope: !1123, file: !82, line: 564, column: 15)
!1140 = !DILocation(line: 564, column: 15, scope: !1139)
!1141 = !DILocation(line: 566, column: 13, scope: !1123)
!1142 = !DILocation(line: 606, column: 17, scope: !889)
!1143 = !DILocation(line: 602, column: 20, scope: !889)
!1144 = !DILocation(line: 609, column: 29, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !894, file: !82, line: 607, column: 15)
!1146 = !{!1147, !1147, i64 0}
!1147 = !{!"short", !562, i64 0}
!1148 = !DILocation(line: 609, column: 27, scope: !1145)
!1149 = !DILocation(line: 604, column: 18, scope: !889)
!1150 = !DILocation(line: 610, column: 15, scope: !1145)
!1151 = !DILocation(line: 613, column: 17, scope: !893)
!1152 = !DILocation(line: 614, column: 17, scope: !893)
!1153 = !DILocation(line: 618, column: 29, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !893, file: !82, line: 618, column: 21)
!1155 = !DILocation(line: 618, column: 21, scope: !893)
!1156 = !DILocation(line: 619, column: 29, scope: !1154)
!1157 = !DILocation(line: 619, column: 19, scope: !1154)
!1158 = !DILocation(line: 621, column: 17, scope: !893)
!1159 = distinct !{!1159, !1158, !1160}
!1160 = !DILocation(line: 667, column: 44, scope: !893)
!1161 = !DILocation(line: 623, column: 21, scope: !911)
!1162 = !DILocation(line: 624, column: 56, scope: !911)
!1163 = !DILocation(line: 624, column: 50, scope: !911)
!1164 = !DILocation(line: 625, column: 53, scope: !911)
!1165 = !DILocation(line: 613, column: 27, scope: !893)
!1166 = !DILocation(line: 623, column: 29, scope: !911)
!1167 = !DILocation(line: 624, column: 36, scope: !911)
!1168 = !DILocation(line: 624, column: 28, scope: !911)
!1169 = !DILocation(line: 626, column: 25, scope: !911)
!1170 = !DILocation(line: 636, column: 38, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !918, file: !82, line: 634, column: 23)
!1172 = !DILocation(line: 636, column: 48, scope: !1171)
!1173 = !DILocation(line: 636, column: 51, scope: !1171)
!1174 = !DILocation(line: 636, column: 25, scope: !1171)
!1175 = !DILocation(line: 637, column: 28, scope: !1171)
!1176 = !DILocation(line: 636, column: 34, scope: !1171)
!1177 = distinct !{!1177, !1174, !1175}
!1178 = !DILocation(line: 650, column: 43, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !82, line: 650, column: 29)
!1180 = distinct !DILexicalBlock(scope: !915, file: !82, line: 650, column: 29)
!1181 = !DILocation(line: 647, column: 29, scope: !916)
!1182 = !DILocation(line: 649, column: 36, scope: !915)
!1183 = !DILocation(line: 651, column: 49, scope: !1179)
!1184 = !DILocation(line: 651, column: 39, scope: !1179)
!1185 = !DILocation(line: 651, column: 31, scope: !1179)
!1186 = !DILocation(line: 650, column: 53, scope: !1179)
!1187 = !DILocation(line: 650, column: 29, scope: !1180)
!1188 = distinct !{!1188, !1187, !1189}
!1189 = !DILocation(line: 659, column: 33, scope: !1180)
!1190 = !DILocation(line: 666, column: 19, scope: !893)
!1191 = !DILocation(line: 662, column: 41, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !917, file: !82, line: 662, column: 29)
!1193 = !DILocation(line: 662, column: 31, scope: !1192)
!1194 = !DILocation(line: 662, column: 29, scope: !917)
!1195 = !DILocation(line: 664, column: 27, scope: !917)
!1196 = !DILocation(line: 667, column: 26, scope: !893)
!1197 = !DILocation(line: 667, column: 24, scope: !893)
!1198 = !DILocation(line: 666, column: 19, scope: !911)
!1199 = !DILocation(line: 668, column: 15, scope: !894)
!1200 = !DILocation(line: 670, column: 40, scope: !889)
!1201 = !DILocation(line: 672, column: 19, scope: !923)
!1202 = !DILocation(line: 672, column: 45, scope: !923)
!1203 = !DILocation(line: 672, column: 23, scope: !923)
!1204 = !DILocation(line: 676, column: 33, scope: !922)
!1205 = !DILocation(line: 676, column: 24, scope: !922)
!1206 = !DILocation(line: 678, column: 17, scope: !922)
!1207 = !DILocation(line: 680, column: 43, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !82, line: 680, column: 25)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !82, line: 679, column: 19)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !82, line: 678, column: 17)
!1211 = distinct !DILexicalBlock(scope: !922, file: !82, line: 678, column: 17)
!1212 = !DILocation(line: 682, column: 25, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !82, line: 682, column: 25)
!1214 = distinct !DILexicalBlock(scope: !1208, file: !82, line: 681, column: 23)
!1215 = !DILocation(line: 682, column: 25, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !82, line: 682, column: 25)
!1217 = !DILocation(line: 682, column: 25, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !82, line: 682, column: 25)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !82, line: 682, column: 25)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !82, line: 682, column: 25)
!1221 = !DILocation(line: 682, column: 25, scope: !1219)
!1222 = !DILocation(line: 682, column: 25, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !82, line: 682, column: 25)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !82, line: 682, column: 25)
!1225 = !DILocation(line: 682, column: 25, scope: !1224)
!1226 = !DILocation(line: 682, column: 25, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !82, line: 682, column: 25)
!1228 = distinct !DILexicalBlock(scope: !1220, file: !82, line: 682, column: 25)
!1229 = !DILocation(line: 682, column: 25, scope: !1228)
!1230 = !DILocation(line: 682, column: 25, scope: !1220)
!1231 = !DILocation(line: 682, column: 25, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !82, line: 682, column: 25)
!1233 = distinct !DILexicalBlock(scope: !1213, file: !82, line: 682, column: 25)
!1234 = !DILocation(line: 682, column: 25, scope: !1233)
!1235 = !DILocation(line: 683, column: 25, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !82, line: 683, column: 25)
!1237 = distinct !DILexicalBlock(scope: !1214, file: !82, line: 683, column: 25)
!1238 = !DILocation(line: 683, column: 25, scope: !1237)
!1239 = !DILocation(line: 684, column: 25, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !82, line: 684, column: 25)
!1241 = distinct !DILexicalBlock(scope: !1214, file: !82, line: 684, column: 25)
!1242 = !DILocation(line: 684, column: 25, scope: !1241)
!1243 = !DILocation(line: 685, column: 38, scope: !1214)
!1244 = !DILocation(line: 685, column: 33, scope: !1214)
!1245 = !DILocation(line: 686, column: 23, scope: !1214)
!1246 = !DILocation(line: 687, column: 30, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1208, file: !82, line: 687, column: 30)
!1248 = !DILocation(line: 687, column: 30, scope: !1208)
!1249 = !DILocation(line: 689, column: 25, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !82, line: 689, column: 25)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !82, line: 689, column: 25)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !82, line: 688, column: 23)
!1253 = !DILocation(line: 689, column: 25, scope: !1251)
!1254 = !DILocation(line: 691, column: 23, scope: !1252)
!1255 = !DILocation(line: 692, column: 35, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1209, file: !82, line: 692, column: 25)
!1257 = !DILocation(line: 692, column: 30, scope: !1256)
!1258 = !DILocation(line: 692, column: 25, scope: !1209)
!1259 = !DILocation(line: 694, column: 21, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !82, line: 694, column: 21)
!1261 = distinct !DILexicalBlock(scope: !1209, file: !82, line: 694, column: 21)
!1262 = !DILocation(line: 694, column: 21, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !82, line: 694, column: 21)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !82, line: 694, column: 21)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !82, line: 694, column: 21)
!1266 = !DILocation(line: 694, column: 21, scope: !1264)
!1267 = !DILocation(line: 694, column: 21, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !82, line: 694, column: 21)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !82, line: 694, column: 21)
!1270 = !DILocation(line: 694, column: 21, scope: !1269)
!1271 = !DILocation(line: 694, column: 21, scope: !1265)
!1272 = !DILocation(line: 695, column: 21, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !82, line: 695, column: 21)
!1274 = distinct !DILexicalBlock(scope: !1209, file: !82, line: 695, column: 21)
!1275 = !DILocation(line: 695, column: 21, scope: !1274)
!1276 = !DILocation(line: 696, column: 25, scope: !1209)
!1277 = !DILocation(line: 678, column: 17, scope: !1210)
!1278 = distinct !{!1278, !1279, !1280}
!1279 = !DILocation(line: 678, column: 17, scope: !1211)
!1280 = !DILocation(line: 697, column: 19, scope: !1211)
!1281 = !DILocation(line: 704, column: 34, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !881, file: !82, line: 704, column: 11)
!1283 = !DILocation(line: 706, column: 14, scope: !1282)
!1284 = !DILocation(line: 707, column: 14, scope: !1282)
!1285 = !DILocation(line: 707, column: 35, scope: !1282)
!1286 = !DILocation(line: 707, column: 17, scope: !1282)
!1287 = !DILocation(line: 707, column: 53, scope: !1282)
!1288 = !DILocation(line: 707, column: 47, scope: !1282)
!1289 = !DILocation(line: 707, column: 65, scope: !1282)
!1290 = !DILocation(line: 708, column: 15, scope: !1282)
!1291 = !DILocation(line: 708, column: 11, scope: !1282)
!1292 = !DILocation(line: 704, column: 11, scope: !881)
!1293 = !DILocation(line: 712, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !881, file: !82, line: 712, column: 7)
!1295 = !DILocation(line: 712, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1294, file: !82, line: 712, column: 7)
!1297 = !DILocation(line: 712, column: 7, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !82, line: 712, column: 7)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !82, line: 712, column: 7)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !82, line: 712, column: 7)
!1301 = !DILocation(line: 712, column: 7, scope: !1299)
!1302 = !DILocation(line: 712, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !82, line: 712, column: 7)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !82, line: 712, column: 7)
!1305 = !DILocation(line: 712, column: 7, scope: !1304)
!1306 = !DILocation(line: 712, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !82, line: 712, column: 7)
!1308 = distinct !DILexicalBlock(scope: !1300, file: !82, line: 712, column: 7)
!1309 = !DILocation(line: 712, column: 7, scope: !1308)
!1310 = !DILocation(line: 712, column: 7, scope: !1300)
!1311 = !DILocation(line: 712, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !82, line: 712, column: 7)
!1313 = distinct !DILexicalBlock(scope: !1294, file: !82, line: 712, column: 7)
!1314 = !DILocation(line: 712, column: 7, scope: !1313)
!1315 = !DILocation(line: 715, column: 7, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !82, line: 715, column: 7)
!1317 = distinct !DILexicalBlock(scope: !881, file: !82, line: 715, column: 7)
!1318 = !DILocation(line: 715, column: 7, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !82, line: 715, column: 7)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !82, line: 715, column: 7)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !82, line: 715, column: 7)
!1322 = !DILocation(line: 715, column: 7, scope: !1320)
!1323 = !DILocation(line: 715, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !82, line: 715, column: 7)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !82, line: 715, column: 7)
!1326 = !DILocation(line: 715, column: 7, scope: !1325)
!1327 = !DILocation(line: 715, column: 7, scope: !1321)
!1328 = !DILocation(line: 716, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !82, line: 716, column: 7)
!1330 = distinct !DILexicalBlock(scope: !881, file: !82, line: 716, column: 7)
!1331 = !DILocation(line: 716, column: 7, scope: !1330)
!1332 = !DILocation(line: 718, column: 13, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !881, file: !82, line: 718, column: 11)
!1334 = !DILocation(line: 718, column: 11, scope: !881)
!1335 = !DILocation(line: 720, column: 5, scope: !882)
!1336 = !DILocation(line: 392, column: 75, scope: !882)
!1337 = !DILocation(line: 392, column: 3, scope: !882)
!1338 = distinct !{!1338, !996, !1339}
!1339 = !DILocation(line: 720, column: 5, scope: !883)
!1340 = !DILocation(line: 722, column: 11, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !854, file: !82, line: 722, column: 7)
!1342 = !DILocation(line: 722, column: 16, scope: !1341)
!1343 = !DILocation(line: 730, column: 51, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !854, file: !82, line: 730, column: 7)
!1345 = !DILocation(line: 731, column: 10, scope: !1344)
!1346 = !DILocation(line: 733, column: 11, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !82, line: 733, column: 11)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !82, line: 732, column: 5)
!1349 = !DILocation(line: 733, column: 11, scope: !1348)
!1350 = !DILocation(line: 734, column: 16, scope: !1347)
!1351 = !DILocation(line: 734, column: 9, scope: !1347)
!1352 = !DILocation(line: 738, column: 18, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1347, file: !82, line: 738, column: 16)
!1354 = !DILocation(line: 738, column: 32, scope: !1353)
!1355 = !DILocation(line: 738, column: 29, scope: !1353)
!1356 = !DILocation(line: 747, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !854, file: !82, line: 747, column: 7)
!1358 = !DILocation(line: 747, column: 20, scope: !1357)
!1359 = !DILocation(line: 748, column: 12, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !82, line: 748, column: 5)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !82, line: 748, column: 5)
!1362 = !DILocation(line: 748, column: 5, scope: !1361)
!1363 = !DILocation(line: 749, column: 7, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !82, line: 749, column: 7)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !82, line: 749, column: 7)
!1366 = !DILocation(line: 749, column: 7, scope: !1365)
!1367 = !DILocation(line: 748, column: 39, scope: !1360)
!1368 = distinct !{!1368, !1362, !1369}
!1369 = !DILocation(line: 749, column: 7, scope: !1361)
!1370 = !DILocation(line: 751, column: 11, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !854, file: !82, line: 751, column: 7)
!1372 = !DILocation(line: 751, column: 7, scope: !854)
!1373 = !DILocation(line: 752, column: 5, scope: !1371)
!1374 = !DILocation(line: 752, column: 17, scope: !1371)
!1375 = !DILocation(line: 758, column: 21, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !854, file: !82, line: 758, column: 7)
!1377 = !DILocation(line: 758, column: 54, scope: !1376)
!1378 = !DILocation(line: 758, column: 51, scope: !1376)
!1379 = !DILocation(line: 762, column: 42, scope: !854)
!1380 = !DILocation(line: 760, column: 10, scope: !854)
!1381 = !DILocation(line: 760, column: 3, scope: !854)
!1382 = !DILocation(line: 764, column: 1, scope: !854)
!1383 = distinct !DISubprogram(name: "gettext_quote", scope: !82, file: !82, line: 199, type: !1384, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!6, !6, !40}
!1386 = !{!1387, !1388, !1389, !1390}
!1387 = !DILocalVariable(name: "msgid", arg: 1, scope: !1383, file: !82, line: 199, type: !6)
!1388 = !DILocalVariable(name: "s", arg: 2, scope: !1383, file: !82, line: 199, type: !40)
!1389 = !DILocalVariable(name: "translation", scope: !1383, file: !82, line: 201, type: !6)
!1390 = !DILocalVariable(name: "locale_code", scope: !1383, file: !82, line: 202, type: !6)
!1391 = !DILocation(line: 199, column: 28, scope: !1383)
!1392 = !DILocation(line: 199, column: 54, scope: !1383)
!1393 = !DILocation(line: 201, column: 29, scope: !1383)
!1394 = !DILocation(line: 201, column: 15, scope: !1383)
!1395 = !DILocation(line: 204, column: 19, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1383, file: !82, line: 204, column: 7)
!1397 = !DILocation(line: 204, column: 7, scope: !1383)
!1398 = !DILocation(line: 225, column: 17, scope: !1383)
!1399 = !DILocation(line: 202, column: 15, scope: !1383)
!1400 = !DILocalVariable(name: "s2", arg: 2, scope: !1401, file: !1402, line: 160, type: !6)
!1401 = distinct !DISubprogram(name: "strcaseeq0", scope: !1402, file: !1402, line: 160, type: !1403, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1405)
!1402 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1405 = !{!1406, !1400, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1406 = !DILocalVariable(name: "s1", arg: 1, scope: !1401, file: !1402, line: 160, type: !6)
!1407 = !DILocalVariable(name: "s20", arg: 3, scope: !1401, file: !1402, line: 160, type: !8)
!1408 = !DILocalVariable(name: "s21", arg: 4, scope: !1401, file: !1402, line: 160, type: !8)
!1409 = !DILocalVariable(name: "s22", arg: 5, scope: !1401, file: !1402, line: 160, type: !8)
!1410 = !DILocalVariable(name: "s23", arg: 6, scope: !1401, file: !1402, line: 160, type: !8)
!1411 = !DILocalVariable(name: "s24", arg: 7, scope: !1401, file: !1402, line: 160, type: !8)
!1412 = !DILocalVariable(name: "s25", arg: 8, scope: !1401, file: !1402, line: 160, type: !8)
!1413 = !DILocalVariable(name: "s26", arg: 9, scope: !1401, file: !1402, line: 160, type: !8)
!1414 = !DILocalVariable(name: "s27", arg: 10, scope: !1401, file: !1402, line: 160, type: !8)
!1415 = !DILocalVariable(name: "s28", arg: 11, scope: !1401, file: !1402, line: 160, type: !8)
!1416 = !DILocation(line: 160, column: 41, scope: !1401, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 226, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1383, file: !82, line: 226, column: 7)
!1419 = !DILocation(line: 160, column: 120, scope: !1401, inlinedAt: !1417)
!1420 = !DILocation(line: 160, column: 130, scope: !1401, inlinedAt: !1417)
!1421 = !DILocation(line: 162, column: 7, scope: !1422, inlinedAt: !1417)
!1422 = distinct !DILexicalBlock(scope: !1401, file: !1402, line: 162, column: 7)
!1423 = !DILocalVariable(name: "s2", arg: 2, scope: !1424, file: !1402, line: 146, type: !6)
!1424 = distinct !DISubprogram(name: "strcaseeq1", scope: !1402, file: !1402, line: 146, type: !1425, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1427 = !{!1428, !1423, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1428 = !DILocalVariable(name: "s1", arg: 1, scope: !1424, file: !1402, line: 146, type: !6)
!1429 = !DILocalVariable(name: "s21", arg: 3, scope: !1424, file: !1402, line: 146, type: !8)
!1430 = !DILocalVariable(name: "s22", arg: 4, scope: !1424, file: !1402, line: 146, type: !8)
!1431 = !DILocalVariable(name: "s23", arg: 5, scope: !1424, file: !1402, line: 146, type: !8)
!1432 = !DILocalVariable(name: "s24", arg: 6, scope: !1424, file: !1402, line: 146, type: !8)
!1433 = !DILocalVariable(name: "s25", arg: 7, scope: !1424, file: !1402, line: 146, type: !8)
!1434 = !DILocalVariable(name: "s26", arg: 8, scope: !1424, file: !1402, line: 146, type: !8)
!1435 = !DILocalVariable(name: "s27", arg: 9, scope: !1424, file: !1402, line: 146, type: !8)
!1436 = !DILocalVariable(name: "s28", arg: 10, scope: !1424, file: !1402, line: 146, type: !8)
!1437 = !DILocation(line: 146, column: 41, scope: !1424, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 167, column: 16, scope: !1439, inlinedAt: !1417)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !1402, line: 164, column: 11)
!1440 = distinct !DILexicalBlock(scope: !1422, file: !1402, line: 163, column: 5)
!1441 = !DILocation(line: 146, column: 110, scope: !1424, inlinedAt: !1438)
!1442 = !DILocation(line: 146, column: 120, scope: !1424, inlinedAt: !1438)
!1443 = !DILocation(line: 148, column: 7, scope: !1444, inlinedAt: !1438)
!1444 = distinct !DILexicalBlock(scope: !1424, file: !1402, line: 148, column: 7)
!1445 = !DILocalVariable(name: "s2", arg: 2, scope: !1446, file: !1402, line: 132, type: !6)
!1446 = distinct !DISubprogram(name: "strcaseeq2", scope: !1402, file: !1402, line: 132, type: !1447, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1449 = !{!1450, !1445, !1451, !1452, !1453, !1454, !1455, !1456, !1457}
!1450 = !DILocalVariable(name: "s1", arg: 1, scope: !1446, file: !1402, line: 132, type: !6)
!1451 = !DILocalVariable(name: "s22", arg: 3, scope: !1446, file: !1402, line: 132, type: !8)
!1452 = !DILocalVariable(name: "s23", arg: 4, scope: !1446, file: !1402, line: 132, type: !8)
!1453 = !DILocalVariable(name: "s24", arg: 5, scope: !1446, file: !1402, line: 132, type: !8)
!1454 = !DILocalVariable(name: "s25", arg: 6, scope: !1446, file: !1402, line: 132, type: !8)
!1455 = !DILocalVariable(name: "s26", arg: 7, scope: !1446, file: !1402, line: 132, type: !8)
!1456 = !DILocalVariable(name: "s27", arg: 8, scope: !1446, file: !1402, line: 132, type: !8)
!1457 = !DILocalVariable(name: "s28", arg: 9, scope: !1446, file: !1402, line: 132, type: !8)
!1458 = !DILocation(line: 132, column: 41, scope: !1446, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 153, column: 16, scope: !1460, inlinedAt: !1438)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !1402, line: 150, column: 11)
!1461 = distinct !DILexicalBlock(scope: !1444, file: !1402, line: 149, column: 5)
!1462 = !DILocation(line: 132, column: 100, scope: !1446, inlinedAt: !1459)
!1463 = !DILocation(line: 132, column: 110, scope: !1446, inlinedAt: !1459)
!1464 = !DILocation(line: 134, column: 7, scope: !1465, inlinedAt: !1459)
!1465 = distinct !DILexicalBlock(scope: !1446, file: !1402, line: 134, column: 7)
!1466 = !DILocalVariable(name: "s2", arg: 2, scope: !1467, file: !1402, line: 118, type: !6)
!1467 = distinct !DISubprogram(name: "strcaseeq3", scope: !1402, file: !1402, line: 118, type: !1468, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1470 = !{!1471, !1466, !1472, !1473, !1474, !1475, !1476, !1477}
!1471 = !DILocalVariable(name: "s1", arg: 1, scope: !1467, file: !1402, line: 118, type: !6)
!1472 = !DILocalVariable(name: "s23", arg: 3, scope: !1467, file: !1402, line: 118, type: !8)
!1473 = !DILocalVariable(name: "s24", arg: 4, scope: !1467, file: !1402, line: 118, type: !8)
!1474 = !DILocalVariable(name: "s25", arg: 5, scope: !1467, file: !1402, line: 118, type: !8)
!1475 = !DILocalVariable(name: "s26", arg: 6, scope: !1467, file: !1402, line: 118, type: !8)
!1476 = !DILocalVariable(name: "s27", arg: 7, scope: !1467, file: !1402, line: 118, type: !8)
!1477 = !DILocalVariable(name: "s28", arg: 8, scope: !1467, file: !1402, line: 118, type: !8)
!1478 = !DILocation(line: 118, column: 41, scope: !1467, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 139, column: 16, scope: !1480, inlinedAt: !1459)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !1402, line: 136, column: 11)
!1481 = distinct !DILexicalBlock(scope: !1465, file: !1402, line: 135, column: 5)
!1482 = !DILocation(line: 118, column: 90, scope: !1467, inlinedAt: !1479)
!1483 = !DILocation(line: 118, column: 100, scope: !1467, inlinedAt: !1479)
!1484 = !DILocation(line: 120, column: 7, scope: !1485, inlinedAt: !1479)
!1485 = distinct !DILexicalBlock(scope: !1467, file: !1402, line: 120, column: 7)
!1486 = !DILocation(line: 120, column: 7, scope: !1467, inlinedAt: !1479)
!1487 = !DILocalVariable(name: "s2", arg: 2, scope: !1488, file: !1402, line: 104, type: !6)
!1488 = distinct !DISubprogram(name: "strcaseeq4", scope: !1402, file: !1402, line: 104, type: !1489, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1491 = !{!1492, !1487, !1493, !1494, !1495, !1496, !1497}
!1492 = !DILocalVariable(name: "s1", arg: 1, scope: !1488, file: !1402, line: 104, type: !6)
!1493 = !DILocalVariable(name: "s24", arg: 3, scope: !1488, file: !1402, line: 104, type: !8)
!1494 = !DILocalVariable(name: "s25", arg: 4, scope: !1488, file: !1402, line: 104, type: !8)
!1495 = !DILocalVariable(name: "s26", arg: 5, scope: !1488, file: !1402, line: 104, type: !8)
!1496 = !DILocalVariable(name: "s27", arg: 6, scope: !1488, file: !1402, line: 104, type: !8)
!1497 = !DILocalVariable(name: "s28", arg: 7, scope: !1488, file: !1402, line: 104, type: !8)
!1498 = !DILocation(line: 104, column: 41, scope: !1488, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 125, column: 16, scope: !1500, inlinedAt: !1479)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !1402, line: 122, column: 11)
!1501 = distinct !DILexicalBlock(scope: !1485, file: !1402, line: 121, column: 5)
!1502 = !DILocation(line: 104, column: 80, scope: !1488, inlinedAt: !1499)
!1503 = !DILocation(line: 104, column: 90, scope: !1488, inlinedAt: !1499)
!1504 = !DILocation(line: 106, column: 7, scope: !1505, inlinedAt: !1499)
!1505 = distinct !DILexicalBlock(scope: !1488, file: !1402, line: 106, column: 7)
!1506 = !DILocation(line: 106, column: 7, scope: !1488, inlinedAt: !1499)
!1507 = !DILocalVariable(name: "s2", arg: 2, scope: !1508, file: !1402, line: 90, type: !6)
!1508 = distinct !DISubprogram(name: "strcaseeq5", scope: !1402, file: !1402, line: 90, type: !1509, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!25, !6, !6, !8, !8, !8, !8}
!1511 = !{!1512, !1507, !1513, !1514, !1515, !1516}
!1512 = !DILocalVariable(name: "s1", arg: 1, scope: !1508, file: !1402, line: 90, type: !6)
!1513 = !DILocalVariable(name: "s25", arg: 3, scope: !1508, file: !1402, line: 90, type: !8)
!1514 = !DILocalVariable(name: "s26", arg: 4, scope: !1508, file: !1402, line: 90, type: !8)
!1515 = !DILocalVariable(name: "s27", arg: 5, scope: !1508, file: !1402, line: 90, type: !8)
!1516 = !DILocalVariable(name: "s28", arg: 6, scope: !1508, file: !1402, line: 90, type: !8)
!1517 = !DILocation(line: 90, column: 41, scope: !1508, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 111, column: 16, scope: !1519, inlinedAt: !1499)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !1402, line: 108, column: 11)
!1520 = distinct !DILexicalBlock(scope: !1505, file: !1402, line: 107, column: 5)
!1521 = !DILocation(line: 90, column: 70, scope: !1508, inlinedAt: !1518)
!1522 = !DILocation(line: 90, column: 80, scope: !1508, inlinedAt: !1518)
!1523 = !DILocation(line: 92, column: 7, scope: !1524, inlinedAt: !1518)
!1524 = distinct !DILexicalBlock(scope: !1508, file: !1402, line: 92, column: 7)
!1525 = !DILocation(line: 92, column: 7, scope: !1508, inlinedAt: !1518)
!1526 = !DILocation(line: 227, column: 12, scope: !1418)
!1527 = !DILocation(line: 227, column: 21, scope: !1418)
!1528 = !DILocation(line: 227, column: 5, scope: !1418)
!1529 = !DILocation(line: 146, column: 41, scope: !1424, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 167, column: 16, scope: !1439, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 228, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1383, file: !82, line: 228, column: 7)
!1533 = !DILocation(line: 146, column: 110, scope: !1424, inlinedAt: !1530)
!1534 = !DILocation(line: 146, column: 120, scope: !1424, inlinedAt: !1530)
!1535 = !DILocation(line: 148, column: 7, scope: !1444, inlinedAt: !1530)
!1536 = !DILocation(line: 132, column: 41, scope: !1446, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 153, column: 16, scope: !1460, inlinedAt: !1530)
!1538 = !DILocation(line: 132, column: 100, scope: !1446, inlinedAt: !1537)
!1539 = !DILocation(line: 132, column: 110, scope: !1446, inlinedAt: !1537)
!1540 = !DILocation(line: 134, column: 7, scope: !1465, inlinedAt: !1537)
!1541 = !DILocation(line: 134, column: 7, scope: !1446, inlinedAt: !1537)
!1542 = !DILocation(line: 118, column: 41, scope: !1467, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 139, column: 16, scope: !1480, inlinedAt: !1537)
!1544 = !DILocation(line: 118, column: 90, scope: !1467, inlinedAt: !1543)
!1545 = !DILocation(line: 118, column: 100, scope: !1467, inlinedAt: !1543)
!1546 = !DILocation(line: 120, column: 7, scope: !1485, inlinedAt: !1543)
!1547 = !DILocation(line: 120, column: 7, scope: !1467, inlinedAt: !1543)
!1548 = !DILocation(line: 104, column: 41, scope: !1488, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 125, column: 16, scope: !1500, inlinedAt: !1543)
!1550 = !DILocation(line: 104, column: 80, scope: !1488, inlinedAt: !1549)
!1551 = !DILocation(line: 104, column: 90, scope: !1488, inlinedAt: !1549)
!1552 = !DILocation(line: 106, column: 7, scope: !1505, inlinedAt: !1549)
!1553 = !DILocation(line: 106, column: 7, scope: !1488, inlinedAt: !1549)
!1554 = !DILocation(line: 90, column: 41, scope: !1508, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 111, column: 16, scope: !1519, inlinedAt: !1549)
!1556 = !DILocation(line: 90, column: 70, scope: !1508, inlinedAt: !1555)
!1557 = !DILocation(line: 90, column: 80, scope: !1508, inlinedAt: !1555)
!1558 = !DILocation(line: 92, column: 7, scope: !1524, inlinedAt: !1555)
!1559 = !DILocation(line: 92, column: 7, scope: !1508, inlinedAt: !1555)
!1560 = !DILocalVariable(name: "s2", arg: 2, scope: !1561, file: !1402, line: 76, type: !6)
!1561 = distinct !DISubprogram(name: "strcaseeq6", scope: !1402, file: !1402, line: 76, type: !1562, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!25, !6, !6, !8, !8, !8}
!1564 = !{!1565, !1560, !1566, !1567, !1568}
!1565 = !DILocalVariable(name: "s1", arg: 1, scope: !1561, file: !1402, line: 76, type: !6)
!1566 = !DILocalVariable(name: "s26", arg: 3, scope: !1561, file: !1402, line: 76, type: !8)
!1567 = !DILocalVariable(name: "s27", arg: 4, scope: !1561, file: !1402, line: 76, type: !8)
!1568 = !DILocalVariable(name: "s28", arg: 5, scope: !1561, file: !1402, line: 76, type: !8)
!1569 = !DILocation(line: 76, column: 41, scope: !1561, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 97, column: 16, scope: !1571, inlinedAt: !1555)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !1402, line: 94, column: 11)
!1572 = distinct !DILexicalBlock(scope: !1524, file: !1402, line: 93, column: 5)
!1573 = !DILocation(line: 76, column: 60, scope: !1561, inlinedAt: !1570)
!1574 = !DILocation(line: 76, column: 70, scope: !1561, inlinedAt: !1570)
!1575 = !DILocation(line: 78, column: 7, scope: !1576, inlinedAt: !1570)
!1576 = distinct !DILexicalBlock(scope: !1561, file: !1402, line: 78, column: 7)
!1577 = !DILocation(line: 78, column: 7, scope: !1561, inlinedAt: !1570)
!1578 = !DILocalVariable(name: "s2", arg: 2, scope: !1579, file: !1402, line: 62, type: !6)
!1579 = distinct !DISubprogram(name: "strcaseeq7", scope: !1402, file: !1402, line: 62, type: !1580, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!25, !6, !6, !8, !8}
!1582 = !{!1583, !1578, !1584, !1585}
!1583 = !DILocalVariable(name: "s1", arg: 1, scope: !1579, file: !1402, line: 62, type: !6)
!1584 = !DILocalVariable(name: "s27", arg: 3, scope: !1579, file: !1402, line: 62, type: !8)
!1585 = !DILocalVariable(name: "s28", arg: 4, scope: !1579, file: !1402, line: 62, type: !8)
!1586 = !DILocation(line: 62, column: 41, scope: !1579, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 83, column: 16, scope: !1588, inlinedAt: !1570)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !1402, line: 80, column: 11)
!1589 = distinct !DILexicalBlock(scope: !1576, file: !1402, line: 79, column: 5)
!1590 = !DILocation(line: 62, column: 50, scope: !1579, inlinedAt: !1587)
!1591 = !DILocation(line: 62, column: 60, scope: !1579, inlinedAt: !1587)
!1592 = !DILocation(line: 64, column: 7, scope: !1593, inlinedAt: !1587)
!1593 = distinct !DILexicalBlock(scope: !1579, file: !1402, line: 64, column: 7)
!1594 = !DILocation(line: 228, column: 7, scope: !1383)
!1595 = !DILocation(line: 229, column: 12, scope: !1532)
!1596 = !DILocation(line: 229, column: 21, scope: !1532)
!1597 = !DILocation(line: 229, column: 5, scope: !1532)
!1598 = !DILocation(line: 231, column: 13, scope: !1383)
!1599 = !DILocation(line: 231, column: 11, scope: !1383)
!1600 = !DILocation(line: 231, column: 3, scope: !1383)
!1601 = !DILocation(line: 232, column: 1, scope: !1383)
!1602 = distinct !DISubprogram(name: "quotearg_alloc", scope: !82, file: !82, line: 791, type: !1603, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1605)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!32, !6, !76, !726}
!1605 = !{!1606, !1607, !1608}
!1606 = !DILocalVariable(name: "arg", arg: 1, scope: !1602, file: !82, line: 791, type: !6)
!1607 = !DILocalVariable(name: "argsize", arg: 2, scope: !1602, file: !82, line: 791, type: !76)
!1608 = !DILocalVariable(name: "o", arg: 3, scope: !1602, file: !82, line: 792, type: !726)
!1609 = !DILocation(line: 791, column: 29, scope: !1602)
!1610 = !DILocation(line: 791, column: 41, scope: !1602)
!1611 = !DILocation(line: 792, column: 47, scope: !1602)
!1612 = !DILocalVariable(name: "arg", arg: 1, scope: !1613, file: !82, line: 804, type: !6)
!1613 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 804, type: !1614, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1616)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!32, !6, !76, !520, !726}
!1616 = !{!1612, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1617 = !DILocalVariable(name: "argsize", arg: 2, scope: !1613, file: !82, line: 804, type: !76)
!1618 = !DILocalVariable(name: "size", arg: 3, scope: !1613, file: !82, line: 804, type: !520)
!1619 = !DILocalVariable(name: "o", arg: 4, scope: !1613, file: !82, line: 805, type: !726)
!1620 = !DILocalVariable(name: "p", scope: !1613, file: !82, line: 807, type: !726)
!1621 = !DILocalVariable(name: "e", scope: !1613, file: !82, line: 808, type: !25)
!1622 = !DILocalVariable(name: "flags", scope: !1613, file: !82, line: 810, type: !25)
!1623 = !DILocalVariable(name: "bufsize", scope: !1613, file: !82, line: 811, type: !76)
!1624 = !DILocalVariable(name: "buf", scope: !1613, file: !82, line: 815, type: !32)
!1625 = !DILocation(line: 804, column: 33, scope: !1613, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 794, column: 10, scope: !1602)
!1627 = !DILocation(line: 804, column: 45, scope: !1613, inlinedAt: !1626)
!1628 = !DILocation(line: 804, column: 62, scope: !1613, inlinedAt: !1626)
!1629 = !DILocation(line: 805, column: 51, scope: !1613, inlinedAt: !1626)
!1630 = !DILocation(line: 807, column: 37, scope: !1613, inlinedAt: !1626)
!1631 = !DILocation(line: 807, column: 33, scope: !1613, inlinedAt: !1626)
!1632 = !DILocation(line: 808, column: 11, scope: !1613, inlinedAt: !1626)
!1633 = !DILocation(line: 808, column: 7, scope: !1613, inlinedAt: !1626)
!1634 = !DILocation(line: 810, column: 18, scope: !1613, inlinedAt: !1626)
!1635 = !DILocation(line: 810, column: 24, scope: !1613, inlinedAt: !1626)
!1636 = !DILocation(line: 810, column: 7, scope: !1613, inlinedAt: !1626)
!1637 = !DILocation(line: 811, column: 69, scope: !1613, inlinedAt: !1626)
!1638 = !DILocation(line: 812, column: 53, scope: !1613, inlinedAt: !1626)
!1639 = !DILocation(line: 813, column: 49, scope: !1613, inlinedAt: !1626)
!1640 = !DILocation(line: 814, column: 49, scope: !1613, inlinedAt: !1626)
!1641 = !DILocation(line: 811, column: 20, scope: !1613, inlinedAt: !1626)
!1642 = !DILocation(line: 814, column: 62, scope: !1613, inlinedAt: !1626)
!1643 = !DILocation(line: 811, column: 10, scope: !1613, inlinedAt: !1626)
!1644 = !DILocalVariable(name: "n", arg: 1, scope: !1645, file: !516, line: 220, type: !76)
!1645 = distinct !DISubprogram(name: "xcharalloc", scope: !516, file: !516, line: 220, type: !1646, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!32, !76}
!1648 = !{!1644}
!1649 = !DILocation(line: 220, column: 20, scope: !1645, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 815, column: 15, scope: !1613, inlinedAt: !1626)
!1651 = !DILocation(line: 222, column: 10, scope: !1645, inlinedAt: !1650)
!1652 = !DILocation(line: 815, column: 9, scope: !1613, inlinedAt: !1626)
!1653 = !DILocation(line: 816, column: 60, scope: !1613, inlinedAt: !1626)
!1654 = !DILocation(line: 818, column: 32, scope: !1613, inlinedAt: !1626)
!1655 = !DILocation(line: 818, column: 47, scope: !1613, inlinedAt: !1626)
!1656 = !DILocation(line: 816, column: 3, scope: !1613, inlinedAt: !1626)
!1657 = !DILocation(line: 819, column: 9, scope: !1613, inlinedAt: !1626)
!1658 = !DILocation(line: 794, column: 3, scope: !1602)
!1659 = !DILocation(line: 804, column: 33, scope: !1613)
!1660 = !DILocation(line: 804, column: 45, scope: !1613)
!1661 = !DILocation(line: 804, column: 62, scope: !1613)
!1662 = !DILocation(line: 805, column: 51, scope: !1613)
!1663 = !DILocation(line: 807, column: 37, scope: !1613)
!1664 = !DILocation(line: 807, column: 33, scope: !1613)
!1665 = !DILocation(line: 808, column: 11, scope: !1613)
!1666 = !DILocation(line: 808, column: 7, scope: !1613)
!1667 = !DILocation(line: 810, column: 18, scope: !1613)
!1668 = !DILocation(line: 810, column: 27, scope: !1613)
!1669 = !DILocation(line: 810, column: 24, scope: !1613)
!1670 = !DILocation(line: 810, column: 7, scope: !1613)
!1671 = !DILocation(line: 811, column: 69, scope: !1613)
!1672 = !DILocation(line: 812, column: 53, scope: !1613)
!1673 = !DILocation(line: 813, column: 49, scope: !1613)
!1674 = !DILocation(line: 814, column: 49, scope: !1613)
!1675 = !DILocation(line: 811, column: 20, scope: !1613)
!1676 = !DILocation(line: 814, column: 62, scope: !1613)
!1677 = !DILocation(line: 811, column: 10, scope: !1613)
!1678 = !DILocation(line: 220, column: 20, scope: !1645, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 815, column: 15, scope: !1613)
!1680 = !DILocation(line: 222, column: 10, scope: !1645, inlinedAt: !1679)
!1681 = !DILocation(line: 815, column: 9, scope: !1613)
!1682 = !DILocation(line: 816, column: 60, scope: !1613)
!1683 = !DILocation(line: 818, column: 32, scope: !1613)
!1684 = !DILocation(line: 818, column: 47, scope: !1613)
!1685 = !DILocation(line: 816, column: 3, scope: !1613)
!1686 = !DILocation(line: 819, column: 9, scope: !1613)
!1687 = !DILocation(line: 820, column: 7, scope: !1613)
!1688 = !DILocation(line: 821, column: 11, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1613, file: !82, line: 820, column: 7)
!1690 = !{!1691, !1691, i64 0}
!1691 = !{!"long", !562, i64 0}
!1692 = !DILocation(line: 821, column: 5, scope: !1689)
!1693 = !DILocation(line: 822, column: 3, scope: !1613)
!1694 = distinct !DISubprogram(name: "quotearg_free", scope: !82, file: !82, line: 840, type: !631, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1695)
!1695 = !{!1696, !1697}
!1696 = !DILocalVariable(name: "sv", scope: !1694, file: !82, line: 842, type: !109)
!1697 = !DILocalVariable(name: "i", scope: !1694, file: !82, line: 843, type: !25)
!1698 = !DILocation(line: 842, column: 24, scope: !1694)
!1699 = !DILocation(line: 842, column: 19, scope: !1694)
!1700 = !DILocation(line: 843, column: 7, scope: !1694)
!1701 = !DILocation(line: 844, column: 19, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !82, line: 844, column: 3)
!1703 = distinct !DILexicalBlock(scope: !1694, file: !82, line: 844, column: 3)
!1704 = !DILocation(line: 844, column: 17, scope: !1702)
!1705 = !DILocation(line: 844, column: 3, scope: !1703)
!1706 = !DILocation(line: 845, column: 17, scope: !1702)
!1707 = !{!1708, !561, i64 8}
!1708 = !{!"slotvec", !1691, i64 0, !561, i64 8}
!1709 = !DILocation(line: 845, column: 5, scope: !1702)
!1710 = !DILocation(line: 844, column: 28, scope: !1702)
!1711 = distinct !{!1711, !1705, !1712}
!1712 = !DILocation(line: 845, column: 20, scope: !1703)
!1713 = !DILocation(line: 846, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1694, file: !82, line: 846, column: 7)
!1715 = !DILocation(line: 846, column: 17, scope: !1714)
!1716 = !DILocation(line: 846, column: 7, scope: !1694)
!1717 = !DILocation(line: 848, column: 7, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !82, line: 847, column: 5)
!1719 = !DILocation(line: 849, column: 21, scope: !1718)
!1720 = !{!1708, !1691, i64 0}
!1721 = !DILocation(line: 850, column: 20, scope: !1718)
!1722 = !DILocation(line: 851, column: 5, scope: !1718)
!1723 = !DILocation(line: 852, column: 10, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1694, file: !82, line: 852, column: 7)
!1725 = !DILocation(line: 852, column: 7, scope: !1694)
!1726 = !DILocation(line: 854, column: 13, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !82, line: 853, column: 5)
!1728 = !DILocation(line: 854, column: 7, scope: !1727)
!1729 = !DILocation(line: 855, column: 15, scope: !1727)
!1730 = !DILocation(line: 856, column: 5, scope: !1727)
!1731 = !DILocation(line: 857, column: 10, scope: !1694)
!1732 = !DILocation(line: 858, column: 1, scope: !1694)
!1733 = distinct !DISubprogram(name: "quotearg_n", scope: !82, file: !82, line: 922, type: !1734, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!32, !25, !6}
!1736 = !{!1737, !1738}
!1737 = !DILocalVariable(name: "n", arg: 1, scope: !1733, file: !82, line: 922, type: !25)
!1738 = !DILocalVariable(name: "arg", arg: 2, scope: !1733, file: !82, line: 922, type: !6)
!1739 = !DILocation(line: 922, column: 17, scope: !1733)
!1740 = !DILocation(line: 922, column: 32, scope: !1733)
!1741 = !DILocation(line: 924, column: 10, scope: !1733)
!1742 = !DILocation(line: 924, column: 3, scope: !1733)
!1743 = distinct !DISubprogram(name: "quotearg_n_options", scope: !82, file: !82, line: 869, type: !1744, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!32, !25, !6, !76, !726}
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1756, !1758, !1759, !1760}
!1747 = !DILocalVariable(name: "n", arg: 1, scope: !1743, file: !82, line: 869, type: !25)
!1748 = !DILocalVariable(name: "arg", arg: 2, scope: !1743, file: !82, line: 869, type: !6)
!1749 = !DILocalVariable(name: "argsize", arg: 3, scope: !1743, file: !82, line: 869, type: !76)
!1750 = !DILocalVariable(name: "options", arg: 4, scope: !1743, file: !82, line: 870, type: !726)
!1751 = !DILocalVariable(name: "e", scope: !1743, file: !82, line: 872, type: !25)
!1752 = !DILocalVariable(name: "sv", scope: !1743, file: !82, line: 874, type: !109)
!1753 = !DILocalVariable(name: "preallocated", scope: !1754, file: !82, line: 881, type: !17)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !82, line: 880, column: 5)
!1755 = distinct !DILexicalBlock(scope: !1743, file: !82, line: 879, column: 7)
!1756 = !DILocalVariable(name: "size", scope: !1757, file: !82, line: 894, type: !76)
!1757 = distinct !DILexicalBlock(scope: !1743, file: !82, line: 893, column: 3)
!1758 = !DILocalVariable(name: "val", scope: !1757, file: !82, line: 895, type: !32)
!1759 = !DILocalVariable(name: "flags", scope: !1757, file: !82, line: 897, type: !25)
!1760 = !DILocalVariable(name: "qsize", scope: !1757, file: !82, line: 898, type: !76)
!1761 = !DILocation(line: 869, column: 25, scope: !1743)
!1762 = !DILocation(line: 869, column: 40, scope: !1743)
!1763 = !DILocation(line: 869, column: 52, scope: !1743)
!1764 = !DILocation(line: 870, column: 51, scope: !1743)
!1765 = !DILocation(line: 872, column: 11, scope: !1743)
!1766 = !DILocation(line: 872, column: 7, scope: !1743)
!1767 = !DILocation(line: 874, column: 24, scope: !1743)
!1768 = !DILocation(line: 874, column: 19, scope: !1743)
!1769 = !DILocation(line: 876, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1743, file: !82, line: 876, column: 7)
!1771 = !DILocation(line: 876, column: 7, scope: !1743)
!1772 = !DILocation(line: 877, column: 5, scope: !1770)
!1773 = !DILocation(line: 879, column: 7, scope: !1755)
!1774 = !DILocation(line: 879, column: 14, scope: !1755)
!1775 = !DILocation(line: 879, column: 7, scope: !1743)
!1776 = !DILocation(line: 881, column: 31, scope: !1754)
!1777 = !DILocation(line: 883, column: 67, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1754, file: !82, line: 883, column: 11)
!1779 = !DILocation(line: 883, column: 11, scope: !1754)
!1780 = !DILocation(line: 884, column: 9, scope: !1778)
!1781 = !DILocation(line: 886, column: 32, scope: !1754)
!1782 = !DILocation(line: 886, column: 61, scope: !1754)
!1783 = !DILocation(line: 886, column: 58, scope: !1754)
!1784 = !DILocation(line: 886, column: 66, scope: !1754)
!1785 = !DILocation(line: 886, column: 22, scope: !1754)
!1786 = !DILocation(line: 886, column: 15, scope: !1754)
!1787 = !DILocation(line: 887, column: 11, scope: !1754)
!1788 = !DILocation(line: 888, column: 15, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1754, file: !82, line: 887, column: 11)
!1790 = !{i64 0, i64 8, !1690, i64 8, i64 8, !560}
!1791 = !DILocation(line: 888, column: 9, scope: !1789)
!1792 = !DILocation(line: 889, column: 20, scope: !1754)
!1793 = !DILocation(line: 889, column: 18, scope: !1754)
!1794 = !DILocation(line: 889, column: 7, scope: !1754)
!1795 = !DILocation(line: 889, column: 38, scope: !1754)
!1796 = !DILocation(line: 889, column: 31, scope: !1754)
!1797 = !DILocation(line: 889, column: 48, scope: !1754)
!1798 = !DILocation(line: 890, column: 14, scope: !1754)
!1799 = !DILocation(line: 891, column: 5, scope: !1754)
!1800 = !DILocation(line: 894, column: 19, scope: !1757)
!1801 = !DILocation(line: 894, column: 25, scope: !1757)
!1802 = !DILocation(line: 894, column: 12, scope: !1757)
!1803 = !DILocation(line: 895, column: 23, scope: !1757)
!1804 = !DILocation(line: 895, column: 11, scope: !1757)
!1805 = !DILocation(line: 897, column: 26, scope: !1757)
!1806 = !DILocation(line: 897, column: 32, scope: !1757)
!1807 = !DILocation(line: 897, column: 9, scope: !1757)
!1808 = !DILocation(line: 899, column: 55, scope: !1757)
!1809 = !DILocation(line: 900, column: 46, scope: !1757)
!1810 = !DILocation(line: 901, column: 55, scope: !1757)
!1811 = !DILocation(line: 902, column: 55, scope: !1757)
!1812 = !DILocation(line: 898, column: 20, scope: !1757)
!1813 = !DILocation(line: 898, column: 12, scope: !1757)
!1814 = !DILocation(line: 904, column: 14, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1757, file: !82, line: 904, column: 9)
!1816 = !DILocation(line: 904, column: 9, scope: !1757)
!1817 = !DILocation(line: 906, column: 35, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !82, line: 905, column: 7)
!1819 = !DILocation(line: 906, column: 20, scope: !1818)
!1820 = !DILocation(line: 907, column: 17, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !82, line: 907, column: 13)
!1822 = !DILocation(line: 907, column: 13, scope: !1818)
!1823 = !DILocation(line: 908, column: 11, scope: !1821)
!1824 = !DILocation(line: 220, column: 20, scope: !1645, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 909, column: 27, scope: !1818)
!1826 = !DILocation(line: 222, column: 10, scope: !1645, inlinedAt: !1825)
!1827 = !DILocation(line: 909, column: 19, scope: !1818)
!1828 = !DILocation(line: 910, column: 69, scope: !1818)
!1829 = !DILocation(line: 912, column: 44, scope: !1818)
!1830 = !DILocation(line: 913, column: 44, scope: !1818)
!1831 = !DILocation(line: 910, column: 9, scope: !1818)
!1832 = !DILocation(line: 914, column: 7, scope: !1818)
!1833 = !DILocation(line: 916, column: 11, scope: !1757)
!1834 = !DILocation(line: 917, column: 5, scope: !1757)
!1835 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !82, file: !82, line: 928, type: !1836, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!32, !25, !6, !76}
!1838 = !{!1839, !1840, !1841}
!1839 = !DILocalVariable(name: "n", arg: 1, scope: !1835, file: !82, line: 928, type: !25)
!1840 = !DILocalVariable(name: "arg", arg: 2, scope: !1835, file: !82, line: 928, type: !6)
!1841 = !DILocalVariable(name: "argsize", arg: 3, scope: !1835, file: !82, line: 928, type: !76)
!1842 = !DILocation(line: 928, column: 21, scope: !1835)
!1843 = !DILocation(line: 928, column: 36, scope: !1835)
!1844 = !DILocation(line: 928, column: 48, scope: !1835)
!1845 = !DILocation(line: 930, column: 10, scope: !1835)
!1846 = !DILocation(line: 930, column: 3, scope: !1835)
!1847 = distinct !DISubprogram(name: "quotearg", scope: !82, file: !82, line: 934, type: !1848, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!32, !6}
!1850 = !{!1851}
!1851 = !DILocalVariable(name: "arg", arg: 1, scope: !1847, file: !82, line: 934, type: !6)
!1852 = !DILocation(line: 934, column: 23, scope: !1847)
!1853 = !DILocation(line: 922, column: 17, scope: !1733, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 936, column: 10, scope: !1847)
!1855 = !DILocation(line: 922, column: 32, scope: !1733, inlinedAt: !1854)
!1856 = !DILocation(line: 924, column: 10, scope: !1733, inlinedAt: !1854)
!1857 = !DILocation(line: 936, column: 3, scope: !1847)
!1858 = distinct !DISubprogram(name: "quotearg_mem", scope: !82, file: !82, line: 940, type: !1859, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!32, !6, !76}
!1861 = !{!1862, !1863}
!1862 = !DILocalVariable(name: "arg", arg: 1, scope: !1858, file: !82, line: 940, type: !6)
!1863 = !DILocalVariable(name: "argsize", arg: 2, scope: !1858, file: !82, line: 940, type: !76)
!1864 = !DILocation(line: 940, column: 27, scope: !1858)
!1865 = !DILocation(line: 940, column: 39, scope: !1858)
!1866 = !DILocation(line: 928, column: 21, scope: !1835, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 942, column: 10, scope: !1858)
!1868 = !DILocation(line: 928, column: 36, scope: !1835, inlinedAt: !1867)
!1869 = !DILocation(line: 928, column: 48, scope: !1835, inlinedAt: !1867)
!1870 = !DILocation(line: 930, column: 10, scope: !1835, inlinedAt: !1867)
!1871 = !DILocation(line: 942, column: 3, scope: !1858)
!1872 = distinct !DISubprogram(name: "quotearg_n_style", scope: !82, file: !82, line: 946, type: !1873, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!32, !25, !40, !6}
!1875 = !{!1876, !1877, !1878, !1879}
!1876 = !DILocalVariable(name: "n", arg: 1, scope: !1872, file: !82, line: 946, type: !25)
!1877 = !DILocalVariable(name: "s", arg: 2, scope: !1872, file: !82, line: 946, type: !40)
!1878 = !DILocalVariable(name: "arg", arg: 3, scope: !1872, file: !82, line: 946, type: !6)
!1879 = !DILocalVariable(name: "o", scope: !1872, file: !82, line: 948, type: !727)
!1880 = !DILocalVariable(name: "o", scope: !1881, file: !82, line: 187, type: !89)
!1881 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !82, file: !82, line: 185, type: !1882, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1884)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!89, !40}
!1884 = !{!1885, !1880}
!1885 = !DILocalVariable(name: "style", arg: 1, scope: !1881, file: !82, line: 185, type: !40)
!1886 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!1887 = !DILocation(line: 187, column: 26, scope: !1881, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 948, column: 36, scope: !1872)
!1889 = !DILocation(line: 946, column: 23, scope: !1872)
!1890 = !DILocation(line: 946, column: 45, scope: !1872)
!1891 = !DILocation(line: 946, column: 60, scope: !1872)
!1892 = !DILocation(line: 948, column: 3, scope: !1872)
!1893 = !DILocation(line: 948, column: 32, scope: !1872)
!1894 = !DILocation(line: 185, column: 48, scope: !1881, inlinedAt: !1888)
!1895 = !DILocation(line: 187, column: 3, scope: !1881, inlinedAt: !1888)
!1896 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!1897 = !DILocation(line: 188, column: 13, scope: !1898, inlinedAt: !1888)
!1898 = distinct !DILexicalBlock(scope: !1881, file: !82, line: 188, column: 7)
!1899 = !DILocation(line: 188, column: 7, scope: !1881, inlinedAt: !1888)
!1900 = !DILocation(line: 189, column: 5, scope: !1898, inlinedAt: !1888)
!1901 = !{!1902}
!1902 = distinct !{!1902, !1903, !"quoting_options_from_style: argument 0"}
!1903 = distinct !{!1903, !"quoting_options_from_style"}
!1904 = !DILocation(line: 191, column: 10, scope: !1881, inlinedAt: !1888)
!1905 = !DILocation(line: 192, column: 1, scope: !1881, inlinedAt: !1888)
!1906 = !DILocation(line: 949, column: 10, scope: !1872)
!1907 = !DILocation(line: 950, column: 1, scope: !1872)
!1908 = !DILocation(line: 949, column: 3, scope: !1872)
!1909 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !82, file: !82, line: 953, type: !1910, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1912)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!32, !25, !40, !6, !76}
!1912 = !{!1913, !1914, !1915, !1916, !1917}
!1913 = !DILocalVariable(name: "n", arg: 1, scope: !1909, file: !82, line: 953, type: !25)
!1914 = !DILocalVariable(name: "s", arg: 2, scope: !1909, file: !82, line: 953, type: !40)
!1915 = !DILocalVariable(name: "arg", arg: 3, scope: !1909, file: !82, line: 954, type: !6)
!1916 = !DILocalVariable(name: "argsize", arg: 4, scope: !1909, file: !82, line: 954, type: !76)
!1917 = !DILocalVariable(name: "o", scope: !1909, file: !82, line: 956, type: !727)
!1918 = !DILocation(line: 187, column: 26, scope: !1881, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 956, column: 36, scope: !1909)
!1920 = !DILocation(line: 953, column: 27, scope: !1909)
!1921 = !DILocation(line: 953, column: 49, scope: !1909)
!1922 = !DILocation(line: 954, column: 35, scope: !1909)
!1923 = !DILocation(line: 954, column: 47, scope: !1909)
!1924 = !DILocation(line: 956, column: 3, scope: !1909)
!1925 = !DILocation(line: 956, column: 32, scope: !1909)
!1926 = !DILocation(line: 185, column: 48, scope: !1881, inlinedAt: !1919)
!1927 = !DILocation(line: 187, column: 3, scope: !1881, inlinedAt: !1919)
!1928 = !DILocation(line: 188, column: 13, scope: !1898, inlinedAt: !1919)
!1929 = !DILocation(line: 188, column: 7, scope: !1881, inlinedAt: !1919)
!1930 = !DILocation(line: 189, column: 5, scope: !1898, inlinedAt: !1919)
!1931 = !{!1932}
!1932 = distinct !{!1932, !1933, !"quoting_options_from_style: argument 0"}
!1933 = distinct !{!1933, !"quoting_options_from_style"}
!1934 = !DILocation(line: 191, column: 10, scope: !1881, inlinedAt: !1919)
!1935 = !DILocation(line: 192, column: 1, scope: !1881, inlinedAt: !1919)
!1936 = !DILocation(line: 957, column: 10, scope: !1909)
!1937 = !DILocation(line: 958, column: 1, scope: !1909)
!1938 = !DILocation(line: 957, column: 3, scope: !1909)
!1939 = distinct !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 961, type: !1940, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!32, !40, !6}
!1942 = !{!1943, !1944}
!1943 = !DILocalVariable(name: "s", arg: 1, scope: !1939, file: !82, line: 961, type: !40)
!1944 = !DILocalVariable(name: "arg", arg: 2, scope: !1939, file: !82, line: 961, type: !6)
!1945 = !DILocation(line: 187, column: 26, scope: !1881, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 948, column: 36, scope: !1872, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 963, column: 10, scope: !1939)
!1948 = !DILocation(line: 961, column: 36, scope: !1939)
!1949 = !DILocation(line: 961, column: 51, scope: !1939)
!1950 = !DILocation(line: 946, column: 23, scope: !1872, inlinedAt: !1947)
!1951 = !DILocation(line: 946, column: 45, scope: !1872, inlinedAt: !1947)
!1952 = !DILocation(line: 946, column: 60, scope: !1872, inlinedAt: !1947)
!1953 = !DILocation(line: 948, column: 3, scope: !1872, inlinedAt: !1947)
!1954 = !DILocation(line: 948, column: 32, scope: !1872, inlinedAt: !1947)
!1955 = !DILocation(line: 185, column: 48, scope: !1881, inlinedAt: !1946)
!1956 = !DILocation(line: 187, column: 3, scope: !1881, inlinedAt: !1946)
!1957 = !DILocation(line: 188, column: 13, scope: !1898, inlinedAt: !1946)
!1958 = !DILocation(line: 188, column: 7, scope: !1881, inlinedAt: !1946)
!1959 = !DILocation(line: 189, column: 5, scope: !1898, inlinedAt: !1946)
!1960 = !{!1961}
!1961 = distinct !{!1961, !1962, !"quoting_options_from_style: argument 0"}
!1962 = distinct !{!1962, !"quoting_options_from_style"}
!1963 = !DILocation(line: 191, column: 10, scope: !1881, inlinedAt: !1946)
!1964 = !DILocation(line: 192, column: 1, scope: !1881, inlinedAt: !1946)
!1965 = !DILocation(line: 949, column: 10, scope: !1872, inlinedAt: !1947)
!1966 = !DILocation(line: 950, column: 1, scope: !1872, inlinedAt: !1947)
!1967 = !DILocation(line: 963, column: 3, scope: !1939)
!1968 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !82, file: !82, line: 967, type: !1969, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!32, !40, !6, !76}
!1971 = !{!1972, !1973, !1974}
!1972 = !DILocalVariable(name: "s", arg: 1, scope: !1968, file: !82, line: 967, type: !40)
!1973 = !DILocalVariable(name: "arg", arg: 2, scope: !1968, file: !82, line: 967, type: !6)
!1974 = !DILocalVariable(name: "argsize", arg: 3, scope: !1968, file: !82, line: 967, type: !76)
!1975 = !DILocation(line: 187, column: 26, scope: !1881, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 956, column: 36, scope: !1909, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 969, column: 10, scope: !1968)
!1978 = !DILocation(line: 967, column: 40, scope: !1968)
!1979 = !DILocation(line: 967, column: 55, scope: !1968)
!1980 = !DILocation(line: 967, column: 67, scope: !1968)
!1981 = !DILocation(line: 953, column: 27, scope: !1909, inlinedAt: !1977)
!1982 = !DILocation(line: 953, column: 49, scope: !1909, inlinedAt: !1977)
!1983 = !DILocation(line: 954, column: 35, scope: !1909, inlinedAt: !1977)
!1984 = !DILocation(line: 954, column: 47, scope: !1909, inlinedAt: !1977)
!1985 = !DILocation(line: 956, column: 3, scope: !1909, inlinedAt: !1977)
!1986 = !DILocation(line: 956, column: 32, scope: !1909, inlinedAt: !1977)
!1987 = !DILocation(line: 185, column: 48, scope: !1881, inlinedAt: !1976)
!1988 = !DILocation(line: 187, column: 3, scope: !1881, inlinedAt: !1976)
!1989 = !DILocation(line: 188, column: 13, scope: !1898, inlinedAt: !1976)
!1990 = !DILocation(line: 188, column: 7, scope: !1881, inlinedAt: !1976)
!1991 = !DILocation(line: 189, column: 5, scope: !1898, inlinedAt: !1976)
!1992 = !{!1993}
!1993 = distinct !{!1993, !1994, !"quoting_options_from_style: argument 0"}
!1994 = distinct !{!1994, !"quoting_options_from_style"}
!1995 = !DILocation(line: 191, column: 10, scope: !1881, inlinedAt: !1976)
!1996 = !DILocation(line: 192, column: 1, scope: !1881, inlinedAt: !1976)
!1997 = !DILocation(line: 957, column: 10, scope: !1909, inlinedAt: !1977)
!1998 = !DILocation(line: 958, column: 1, scope: !1909, inlinedAt: !1977)
!1999 = !DILocation(line: 969, column: 3, scope: !1968)
!2000 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !82, file: !82, line: 973, type: !2001, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!32, !6, !76, !8}
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DILocalVariable(name: "arg", arg: 1, scope: !2000, file: !82, line: 973, type: !6)
!2005 = !DILocalVariable(name: "argsize", arg: 2, scope: !2000, file: !82, line: 973, type: !76)
!2006 = !DILocalVariable(name: "ch", arg: 3, scope: !2000, file: !82, line: 973, type: !8)
!2007 = !DILocalVariable(name: "options", scope: !2000, file: !82, line: 975, type: !89)
!2008 = !DILocation(line: 973, column: 32, scope: !2000)
!2009 = !DILocation(line: 973, column: 44, scope: !2000)
!2010 = !DILocation(line: 973, column: 58, scope: !2000)
!2011 = !DILocation(line: 975, column: 3, scope: !2000)
!2012 = !DILocation(line: 976, column: 13, scope: !2000)
!2013 = !{i64 0, i64 4, !954, i64 4, i64 4, !647, i64 8, i64 32, !954, i64 40, i64 8, !560, i64 48, i64 8, !560}
!2014 = !DILocation(line: 975, column: 26, scope: !2000)
!2015 = !DILocation(line: 144, column: 43, scope: !748, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 977, column: 3, scope: !2000)
!2017 = !DILocation(line: 144, column: 51, scope: !748, inlinedAt: !2016)
!2018 = !DILocation(line: 144, column: 58, scope: !748, inlinedAt: !2016)
!2019 = !DILocation(line: 146, column: 17, scope: !748, inlinedAt: !2016)
!2020 = !DILocation(line: 148, column: 62, scope: !748, inlinedAt: !2016)
!2021 = !DILocation(line: 148, column: 57, scope: !748, inlinedAt: !2016)
!2022 = !DILocation(line: 147, column: 17, scope: !748, inlinedAt: !2016)
!2023 = !DILocation(line: 149, column: 18, scope: !748, inlinedAt: !2016)
!2024 = !DILocation(line: 149, column: 15, scope: !748, inlinedAt: !2016)
!2025 = !DILocation(line: 149, column: 7, scope: !748, inlinedAt: !2016)
!2026 = !DILocation(line: 150, column: 12, scope: !748, inlinedAt: !2016)
!2027 = !DILocation(line: 150, column: 15, scope: !748, inlinedAt: !2016)
!2028 = !DILocation(line: 150, column: 25, scope: !748, inlinedAt: !2016)
!2029 = !DILocation(line: 150, column: 7, scope: !748, inlinedAt: !2016)
!2030 = !DILocation(line: 151, column: 18, scope: !748, inlinedAt: !2016)
!2031 = !DILocation(line: 151, column: 23, scope: !748, inlinedAt: !2016)
!2032 = !DILocation(line: 151, column: 6, scope: !748, inlinedAt: !2016)
!2033 = !DILocation(line: 978, column: 10, scope: !2000)
!2034 = !DILocation(line: 979, column: 1, scope: !2000)
!2035 = !DILocation(line: 978, column: 3, scope: !2000)
!2036 = distinct !DISubprogram(name: "quotearg_char", scope: !82, file: !82, line: 982, type: !2037, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!32, !6, !8}
!2039 = !{!2040, !2041}
!2040 = !DILocalVariable(name: "arg", arg: 1, scope: !2036, file: !82, line: 982, type: !6)
!2041 = !DILocalVariable(name: "ch", arg: 2, scope: !2036, file: !82, line: 982, type: !8)
!2042 = !DILocation(line: 982, column: 28, scope: !2036)
!2043 = !DILocation(line: 982, column: 38, scope: !2036)
!2044 = !DILocation(line: 973, column: 32, scope: !2000, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 984, column: 10, scope: !2036)
!2046 = !DILocation(line: 973, column: 44, scope: !2000, inlinedAt: !2045)
!2047 = !DILocation(line: 973, column: 58, scope: !2000, inlinedAt: !2045)
!2048 = !DILocation(line: 975, column: 3, scope: !2000, inlinedAt: !2045)
!2049 = !DILocation(line: 976, column: 13, scope: !2000, inlinedAt: !2045)
!2050 = !DILocation(line: 975, column: 26, scope: !2000, inlinedAt: !2045)
!2051 = !DILocation(line: 144, column: 43, scope: !748, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 977, column: 3, scope: !2000, inlinedAt: !2045)
!2053 = !DILocation(line: 144, column: 51, scope: !748, inlinedAt: !2052)
!2054 = !DILocation(line: 144, column: 58, scope: !748, inlinedAt: !2052)
!2055 = !DILocation(line: 146, column: 17, scope: !748, inlinedAt: !2052)
!2056 = !DILocation(line: 148, column: 62, scope: !748, inlinedAt: !2052)
!2057 = !DILocation(line: 148, column: 57, scope: !748, inlinedAt: !2052)
!2058 = !DILocation(line: 147, column: 17, scope: !748, inlinedAt: !2052)
!2059 = !DILocation(line: 149, column: 18, scope: !748, inlinedAt: !2052)
!2060 = !DILocation(line: 149, column: 15, scope: !748, inlinedAt: !2052)
!2061 = !DILocation(line: 149, column: 7, scope: !748, inlinedAt: !2052)
!2062 = !DILocation(line: 150, column: 12, scope: !748, inlinedAt: !2052)
!2063 = !DILocation(line: 150, column: 15, scope: !748, inlinedAt: !2052)
!2064 = !DILocation(line: 150, column: 25, scope: !748, inlinedAt: !2052)
!2065 = !DILocation(line: 150, column: 7, scope: !748, inlinedAt: !2052)
!2066 = !DILocation(line: 151, column: 18, scope: !748, inlinedAt: !2052)
!2067 = !DILocation(line: 151, column: 23, scope: !748, inlinedAt: !2052)
!2068 = !DILocation(line: 151, column: 6, scope: !748, inlinedAt: !2052)
!2069 = !DILocation(line: 978, column: 10, scope: !2000, inlinedAt: !2045)
!2070 = !DILocation(line: 979, column: 1, scope: !2000, inlinedAt: !2045)
!2071 = !DILocation(line: 984, column: 3, scope: !2036)
!2072 = distinct !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 988, type: !1848, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2073)
!2073 = !{!2074}
!2074 = !DILocalVariable(name: "arg", arg: 1, scope: !2072, file: !82, line: 988, type: !6)
!2075 = !DILocation(line: 988, column: 29, scope: !2072)
!2076 = !DILocation(line: 982, column: 28, scope: !2036, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 990, column: 10, scope: !2072)
!2078 = !DILocation(line: 982, column: 38, scope: !2036, inlinedAt: !2077)
!2079 = !DILocation(line: 973, column: 32, scope: !2000, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 984, column: 10, scope: !2036, inlinedAt: !2077)
!2081 = !DILocation(line: 973, column: 44, scope: !2000, inlinedAt: !2080)
!2082 = !DILocation(line: 973, column: 58, scope: !2000, inlinedAt: !2080)
!2083 = !DILocation(line: 975, column: 3, scope: !2000, inlinedAt: !2080)
!2084 = !DILocation(line: 976, column: 13, scope: !2000, inlinedAt: !2080)
!2085 = !DILocation(line: 975, column: 26, scope: !2000, inlinedAt: !2080)
!2086 = !DILocation(line: 144, column: 43, scope: !748, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 977, column: 3, scope: !2000, inlinedAt: !2080)
!2088 = !DILocation(line: 144, column: 51, scope: !748, inlinedAt: !2087)
!2089 = !DILocation(line: 144, column: 58, scope: !748, inlinedAt: !2087)
!2090 = !DILocation(line: 146, column: 17, scope: !748, inlinedAt: !2087)
!2091 = !DILocation(line: 148, column: 57, scope: !748, inlinedAt: !2087)
!2092 = !DILocation(line: 147, column: 17, scope: !748, inlinedAt: !2087)
!2093 = !DILocation(line: 149, column: 7, scope: !748, inlinedAt: !2087)
!2094 = !DILocation(line: 150, column: 12, scope: !748, inlinedAt: !2087)
!2095 = !DILocation(line: 151, column: 6, scope: !748, inlinedAt: !2087)
!2096 = !DILocation(line: 978, column: 10, scope: !2000, inlinedAt: !2080)
!2097 = !DILocation(line: 979, column: 1, scope: !2000, inlinedAt: !2080)
!2098 = !DILocation(line: 990, column: 3, scope: !2072)
!2099 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !82, file: !82, line: 994, type: !1859, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2100)
!2100 = !{!2101, !2102}
!2101 = !DILocalVariable(name: "arg", arg: 1, scope: !2099, file: !82, line: 994, type: !6)
!2102 = !DILocalVariable(name: "argsize", arg: 2, scope: !2099, file: !82, line: 994, type: !76)
!2103 = !DILocation(line: 994, column: 33, scope: !2099)
!2104 = !DILocation(line: 994, column: 45, scope: !2099)
!2105 = !DILocation(line: 973, column: 32, scope: !2000, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 996, column: 10, scope: !2099)
!2107 = !DILocation(line: 973, column: 44, scope: !2000, inlinedAt: !2106)
!2108 = !DILocation(line: 973, column: 58, scope: !2000, inlinedAt: !2106)
!2109 = !DILocation(line: 975, column: 3, scope: !2000, inlinedAt: !2106)
!2110 = !DILocation(line: 976, column: 13, scope: !2000, inlinedAt: !2106)
!2111 = !DILocation(line: 975, column: 26, scope: !2000, inlinedAt: !2106)
!2112 = !DILocation(line: 144, column: 43, scope: !748, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 977, column: 3, scope: !2000, inlinedAt: !2106)
!2114 = !DILocation(line: 144, column: 51, scope: !748, inlinedAt: !2113)
!2115 = !DILocation(line: 144, column: 58, scope: !748, inlinedAt: !2113)
!2116 = !DILocation(line: 146, column: 17, scope: !748, inlinedAt: !2113)
!2117 = !DILocation(line: 148, column: 57, scope: !748, inlinedAt: !2113)
!2118 = !DILocation(line: 147, column: 17, scope: !748, inlinedAt: !2113)
!2119 = !DILocation(line: 149, column: 7, scope: !748, inlinedAt: !2113)
!2120 = !DILocation(line: 150, column: 12, scope: !748, inlinedAt: !2113)
!2121 = !DILocation(line: 151, column: 6, scope: !748, inlinedAt: !2113)
!2122 = !DILocation(line: 978, column: 10, scope: !2000, inlinedAt: !2106)
!2123 = !DILocation(line: 979, column: 1, scope: !2000, inlinedAt: !2106)
!2124 = !DILocation(line: 996, column: 3, scope: !2099)
!2125 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !82, file: !82, line: 1000, type: !1873, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2126)
!2126 = !{!2127, !2128, !2129, !2130}
!2127 = !DILocalVariable(name: "n", arg: 1, scope: !2125, file: !82, line: 1000, type: !25)
!2128 = !DILocalVariable(name: "s", arg: 2, scope: !2125, file: !82, line: 1000, type: !40)
!2129 = !DILocalVariable(name: "arg", arg: 3, scope: !2125, file: !82, line: 1000, type: !6)
!2130 = !DILocalVariable(name: "options", scope: !2125, file: !82, line: 1002, type: !89)
!2131 = !DILocation(line: 187, column: 26, scope: !1881, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 1003, column: 13, scope: !2125)
!2133 = !DILocation(line: 1000, column: 29, scope: !2125)
!2134 = !DILocation(line: 1000, column: 51, scope: !2125)
!2135 = !DILocation(line: 1000, column: 66, scope: !2125)
!2136 = !DILocation(line: 1002, column: 3, scope: !2125)
!2137 = !DILocation(line: 185, column: 48, scope: !1881, inlinedAt: !2132)
!2138 = !DILocation(line: 187, column: 3, scope: !1881, inlinedAt: !2132)
!2139 = !DILocation(line: 188, column: 13, scope: !1898, inlinedAt: !2132)
!2140 = !DILocation(line: 188, column: 7, scope: !1881, inlinedAt: !2132)
!2141 = !DILocation(line: 189, column: 5, scope: !1898, inlinedAt: !2132)
!2142 = !{!2143}
!2143 = distinct !{!2143, !2144, !"quoting_options_from_style: argument 0"}
!2144 = distinct !{!2144, !"quoting_options_from_style"}
!2145 = !DILocation(line: 191, column: 10, scope: !1881, inlinedAt: !2132)
!2146 = !DILocation(line: 192, column: 1, scope: !1881, inlinedAt: !2132)
!2147 = !DILocation(line: 1003, column: 13, scope: !2125)
!2148 = !DILocation(line: 1002, column: 26, scope: !2125)
!2149 = !DILocation(line: 144, column: 43, scope: !748, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 1004, column: 3, scope: !2125)
!2151 = !DILocation(line: 144, column: 51, scope: !748, inlinedAt: !2150)
!2152 = !DILocation(line: 144, column: 58, scope: !748, inlinedAt: !2150)
!2153 = !DILocation(line: 146, column: 17, scope: !748, inlinedAt: !2150)
!2154 = !DILocation(line: 148, column: 57, scope: !748, inlinedAt: !2150)
!2155 = !DILocation(line: 147, column: 17, scope: !748, inlinedAt: !2150)
!2156 = !DILocation(line: 149, column: 7, scope: !748, inlinedAt: !2150)
!2157 = !DILocation(line: 150, column: 12, scope: !748, inlinedAt: !2150)
!2158 = !DILocation(line: 151, column: 6, scope: !748, inlinedAt: !2150)
!2159 = !DILocation(line: 1005, column: 10, scope: !2125)
!2160 = !DILocation(line: 1006, column: 1, scope: !2125)
!2161 = !DILocation(line: 1005, column: 3, scope: !2125)
!2162 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !82, file: !82, line: 1009, type: !2163, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!32, !25, !6, !6, !6}
!2165 = !{!2166, !2167, !2168, !2169}
!2166 = !DILocalVariable(name: "n", arg: 1, scope: !2162, file: !82, line: 1009, type: !25)
!2167 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2162, file: !82, line: 1009, type: !6)
!2168 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2162, file: !82, line: 1010, type: !6)
!2169 = !DILocalVariable(name: "arg", arg: 4, scope: !2162, file: !82, line: 1010, type: !6)
!2170 = !DILocation(line: 1009, column: 24, scope: !2162)
!2171 = !DILocation(line: 1009, column: 39, scope: !2162)
!2172 = !DILocation(line: 1010, column: 32, scope: !2162)
!2173 = !DILocation(line: 1010, column: 57, scope: !2162)
!2174 = !DILocalVariable(name: "n", arg: 1, scope: !2175, file: !82, line: 1017, type: !25)
!2175 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 1017, type: !2176, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!32, !25, !6, !6, !6, !76}
!2178 = !{!2174, !2179, !2180, !2181, !2182, !2183}
!2179 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2175, file: !82, line: 1017, type: !6)
!2180 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2175, file: !82, line: 1018, type: !6)
!2181 = !DILocalVariable(name: "arg", arg: 4, scope: !2175, file: !82, line: 1019, type: !6)
!2182 = !DILocalVariable(name: "argsize", arg: 5, scope: !2175, file: !82, line: 1019, type: !76)
!2183 = !DILocalVariable(name: "o", scope: !2175, file: !82, line: 1021, type: !89)
!2184 = !DILocation(line: 1017, column: 28, scope: !2175, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 1012, column: 10, scope: !2162)
!2186 = !DILocation(line: 1017, column: 43, scope: !2175, inlinedAt: !2185)
!2187 = !DILocation(line: 1018, column: 36, scope: !2175, inlinedAt: !2185)
!2188 = !DILocation(line: 1019, column: 36, scope: !2175, inlinedAt: !2185)
!2189 = !DILocation(line: 1019, column: 48, scope: !2175, inlinedAt: !2185)
!2190 = !DILocation(line: 1021, column: 3, scope: !2175, inlinedAt: !2185)
!2191 = !DILocation(line: 1021, column: 30, scope: !2175, inlinedAt: !2185)
!2192 = !DILocation(line: 1021, column: 26, scope: !2175, inlinedAt: !2185)
!2193 = !DILocation(line: 171, column: 45, scope: !797, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 1022, column: 3, scope: !2175, inlinedAt: !2185)
!2195 = !DILocation(line: 172, column: 33, scope: !797, inlinedAt: !2194)
!2196 = !DILocation(line: 172, column: 57, scope: !797, inlinedAt: !2194)
!2197 = !DILocation(line: 176, column: 6, scope: !797, inlinedAt: !2194)
!2198 = !DILocation(line: 176, column: 12, scope: !797, inlinedAt: !2194)
!2199 = !DILocation(line: 177, column: 8, scope: !813, inlinedAt: !2194)
!2200 = !DILocation(line: 177, column: 23, scope: !813, inlinedAt: !2194)
!2201 = !DILocation(line: 177, column: 19, scope: !813, inlinedAt: !2194)
!2202 = !DILocation(line: 178, column: 5, scope: !813, inlinedAt: !2194)
!2203 = !DILocation(line: 179, column: 6, scope: !797, inlinedAt: !2194)
!2204 = !DILocation(line: 179, column: 17, scope: !797, inlinedAt: !2194)
!2205 = !DILocation(line: 180, column: 6, scope: !797, inlinedAt: !2194)
!2206 = !DILocation(line: 180, column: 18, scope: !797, inlinedAt: !2194)
!2207 = !DILocation(line: 1023, column: 10, scope: !2175, inlinedAt: !2185)
!2208 = !DILocation(line: 1024, column: 1, scope: !2175, inlinedAt: !2185)
!2209 = !DILocation(line: 1012, column: 3, scope: !2162)
!2210 = !DILocation(line: 1017, column: 28, scope: !2175)
!2211 = !DILocation(line: 1017, column: 43, scope: !2175)
!2212 = !DILocation(line: 1018, column: 36, scope: !2175)
!2213 = !DILocation(line: 1019, column: 36, scope: !2175)
!2214 = !DILocation(line: 1019, column: 48, scope: !2175)
!2215 = !DILocation(line: 1021, column: 3, scope: !2175)
!2216 = !DILocation(line: 1021, column: 30, scope: !2175)
!2217 = !DILocation(line: 1021, column: 26, scope: !2175)
!2218 = !DILocation(line: 171, column: 45, scope: !797, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 1022, column: 3, scope: !2175)
!2220 = !DILocation(line: 172, column: 33, scope: !797, inlinedAt: !2219)
!2221 = !DILocation(line: 172, column: 57, scope: !797, inlinedAt: !2219)
!2222 = !DILocation(line: 176, column: 6, scope: !797, inlinedAt: !2219)
!2223 = !DILocation(line: 176, column: 12, scope: !797, inlinedAt: !2219)
!2224 = !DILocation(line: 177, column: 8, scope: !813, inlinedAt: !2219)
!2225 = !DILocation(line: 177, column: 23, scope: !813, inlinedAt: !2219)
!2226 = !DILocation(line: 177, column: 19, scope: !813, inlinedAt: !2219)
!2227 = !DILocation(line: 178, column: 5, scope: !813, inlinedAt: !2219)
!2228 = !DILocation(line: 179, column: 6, scope: !797, inlinedAt: !2219)
!2229 = !DILocation(line: 179, column: 17, scope: !797, inlinedAt: !2219)
!2230 = !DILocation(line: 180, column: 6, scope: !797, inlinedAt: !2219)
!2231 = !DILocation(line: 180, column: 18, scope: !797, inlinedAt: !2219)
!2232 = !DILocation(line: 1023, column: 10, scope: !2175)
!2233 = !DILocation(line: 1024, column: 1, scope: !2175)
!2234 = !DILocation(line: 1023, column: 3, scope: !2175)
!2235 = distinct !DISubprogram(name: "quotearg_custom", scope: !82, file: !82, line: 1027, type: !2236, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!32, !6, !6, !6}
!2238 = !{!2239, !2240, !2241}
!2239 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2235, file: !82, line: 1027, type: !6)
!2240 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2235, file: !82, line: 1027, type: !6)
!2241 = !DILocalVariable(name: "arg", arg: 3, scope: !2235, file: !82, line: 1028, type: !6)
!2242 = !DILocation(line: 1027, column: 30, scope: !2235)
!2243 = !DILocation(line: 1027, column: 54, scope: !2235)
!2244 = !DILocation(line: 1028, column: 30, scope: !2235)
!2245 = !DILocation(line: 1009, column: 24, scope: !2162, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 1030, column: 10, scope: !2235)
!2247 = !DILocation(line: 1009, column: 39, scope: !2162, inlinedAt: !2246)
!2248 = !DILocation(line: 1010, column: 32, scope: !2162, inlinedAt: !2246)
!2249 = !DILocation(line: 1010, column: 57, scope: !2162, inlinedAt: !2246)
!2250 = !DILocation(line: 1017, column: 28, scope: !2175, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 1012, column: 10, scope: !2162, inlinedAt: !2246)
!2252 = !DILocation(line: 1017, column: 43, scope: !2175, inlinedAt: !2251)
!2253 = !DILocation(line: 1018, column: 36, scope: !2175, inlinedAt: !2251)
!2254 = !DILocation(line: 1019, column: 36, scope: !2175, inlinedAt: !2251)
!2255 = !DILocation(line: 1019, column: 48, scope: !2175, inlinedAt: !2251)
!2256 = !DILocation(line: 1021, column: 3, scope: !2175, inlinedAt: !2251)
!2257 = !DILocation(line: 1021, column: 30, scope: !2175, inlinedAt: !2251)
!2258 = !DILocation(line: 1021, column: 26, scope: !2175, inlinedAt: !2251)
!2259 = !DILocation(line: 171, column: 45, scope: !797, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 1022, column: 3, scope: !2175, inlinedAt: !2251)
!2261 = !DILocation(line: 172, column: 33, scope: !797, inlinedAt: !2260)
!2262 = !DILocation(line: 172, column: 57, scope: !797, inlinedAt: !2260)
!2263 = !DILocation(line: 176, column: 6, scope: !797, inlinedAt: !2260)
!2264 = !DILocation(line: 176, column: 12, scope: !797, inlinedAt: !2260)
!2265 = !DILocation(line: 177, column: 8, scope: !813, inlinedAt: !2260)
!2266 = !DILocation(line: 177, column: 23, scope: !813, inlinedAt: !2260)
!2267 = !DILocation(line: 177, column: 19, scope: !813, inlinedAt: !2260)
!2268 = !DILocation(line: 178, column: 5, scope: !813, inlinedAt: !2260)
!2269 = !DILocation(line: 179, column: 6, scope: !797, inlinedAt: !2260)
!2270 = !DILocation(line: 179, column: 17, scope: !797, inlinedAt: !2260)
!2271 = !DILocation(line: 180, column: 6, scope: !797, inlinedAt: !2260)
!2272 = !DILocation(line: 180, column: 18, scope: !797, inlinedAt: !2260)
!2273 = !DILocation(line: 1023, column: 10, scope: !2175, inlinedAt: !2251)
!2274 = !DILocation(line: 1024, column: 1, scope: !2175, inlinedAt: !2251)
!2275 = !DILocation(line: 1030, column: 3, scope: !2235)
!2276 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !82, file: !82, line: 1034, type: !2277, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!32, !6, !6, !6, !76}
!2279 = !{!2280, !2281, !2282, !2283}
!2280 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2276, file: !82, line: 1034, type: !6)
!2281 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2276, file: !82, line: 1034, type: !6)
!2282 = !DILocalVariable(name: "arg", arg: 3, scope: !2276, file: !82, line: 1035, type: !6)
!2283 = !DILocalVariable(name: "argsize", arg: 4, scope: !2276, file: !82, line: 1035, type: !76)
!2284 = !DILocation(line: 1034, column: 34, scope: !2276)
!2285 = !DILocation(line: 1034, column: 58, scope: !2276)
!2286 = !DILocation(line: 1035, column: 34, scope: !2276)
!2287 = !DILocation(line: 1035, column: 46, scope: !2276)
!2288 = !DILocation(line: 1017, column: 28, scope: !2175, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 1037, column: 10, scope: !2276)
!2290 = !DILocation(line: 1017, column: 43, scope: !2175, inlinedAt: !2289)
!2291 = !DILocation(line: 1018, column: 36, scope: !2175, inlinedAt: !2289)
!2292 = !DILocation(line: 1019, column: 36, scope: !2175, inlinedAt: !2289)
!2293 = !DILocation(line: 1019, column: 48, scope: !2175, inlinedAt: !2289)
!2294 = !DILocation(line: 1021, column: 3, scope: !2175, inlinedAt: !2289)
!2295 = !DILocation(line: 1021, column: 30, scope: !2175, inlinedAt: !2289)
!2296 = !DILocation(line: 1021, column: 26, scope: !2175, inlinedAt: !2289)
!2297 = !DILocation(line: 171, column: 45, scope: !797, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 1022, column: 3, scope: !2175, inlinedAt: !2289)
!2299 = !DILocation(line: 172, column: 33, scope: !797, inlinedAt: !2298)
!2300 = !DILocation(line: 172, column: 57, scope: !797, inlinedAt: !2298)
!2301 = !DILocation(line: 176, column: 6, scope: !797, inlinedAt: !2298)
!2302 = !DILocation(line: 176, column: 12, scope: !797, inlinedAt: !2298)
!2303 = !DILocation(line: 177, column: 8, scope: !813, inlinedAt: !2298)
!2304 = !DILocation(line: 177, column: 23, scope: !813, inlinedAt: !2298)
!2305 = !DILocation(line: 177, column: 19, scope: !813, inlinedAt: !2298)
!2306 = !DILocation(line: 178, column: 5, scope: !813, inlinedAt: !2298)
!2307 = !DILocation(line: 179, column: 6, scope: !797, inlinedAt: !2298)
!2308 = !DILocation(line: 179, column: 17, scope: !797, inlinedAt: !2298)
!2309 = !DILocation(line: 180, column: 6, scope: !797, inlinedAt: !2298)
!2310 = !DILocation(line: 180, column: 18, scope: !797, inlinedAt: !2298)
!2311 = !DILocation(line: 1023, column: 10, scope: !2175, inlinedAt: !2289)
!2312 = !DILocation(line: 1024, column: 1, scope: !2175, inlinedAt: !2289)
!2313 = !DILocation(line: 1037, column: 3, scope: !2276)
!2314 = distinct !DISubprogram(name: "quote_n_mem", scope: !82, file: !82, line: 1052, type: !2315, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!6, !25, !6, !76}
!2317 = !{!2318, !2319, !2320}
!2318 = !DILocalVariable(name: "n", arg: 1, scope: !2314, file: !82, line: 1052, type: !25)
!2319 = !DILocalVariable(name: "arg", arg: 2, scope: !2314, file: !82, line: 1052, type: !6)
!2320 = !DILocalVariable(name: "argsize", arg: 3, scope: !2314, file: !82, line: 1052, type: !76)
!2321 = !DILocation(line: 1052, column: 18, scope: !2314)
!2322 = !DILocation(line: 1052, column: 33, scope: !2314)
!2323 = !DILocation(line: 1052, column: 45, scope: !2314)
!2324 = !DILocation(line: 1054, column: 10, scope: !2314)
!2325 = !DILocation(line: 1054, column: 3, scope: !2314)
!2326 = distinct !DISubprogram(name: "quote_mem", scope: !82, file: !82, line: 1058, type: !2327, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!6, !6, !76}
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "arg", arg: 1, scope: !2326, file: !82, line: 1058, type: !6)
!2331 = !DILocalVariable(name: "argsize", arg: 2, scope: !2326, file: !82, line: 1058, type: !76)
!2332 = !DILocation(line: 1058, column: 24, scope: !2326)
!2333 = !DILocation(line: 1058, column: 36, scope: !2326)
!2334 = !DILocation(line: 1052, column: 18, scope: !2314, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 1060, column: 10, scope: !2326)
!2336 = !DILocation(line: 1052, column: 33, scope: !2314, inlinedAt: !2335)
!2337 = !DILocation(line: 1052, column: 45, scope: !2314, inlinedAt: !2335)
!2338 = !DILocation(line: 1054, column: 10, scope: !2314, inlinedAt: !2335)
!2339 = !DILocation(line: 1060, column: 3, scope: !2326)
!2340 = distinct !DISubprogram(name: "quote_n", scope: !82, file: !82, line: 1064, type: !2341, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!6, !25, !6}
!2343 = !{!2344, !2345}
!2344 = !DILocalVariable(name: "n", arg: 1, scope: !2340, file: !82, line: 1064, type: !25)
!2345 = !DILocalVariable(name: "arg", arg: 2, scope: !2340, file: !82, line: 1064, type: !6)
!2346 = !DILocation(line: 1064, column: 14, scope: !2340)
!2347 = !DILocation(line: 1064, column: 29, scope: !2340)
!2348 = !DILocation(line: 1052, column: 18, scope: !2314, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 1066, column: 10, scope: !2340)
!2350 = !DILocation(line: 1052, column: 33, scope: !2314, inlinedAt: !2349)
!2351 = !DILocation(line: 1052, column: 45, scope: !2314, inlinedAt: !2349)
!2352 = !DILocation(line: 1054, column: 10, scope: !2314, inlinedAt: !2349)
!2353 = !DILocation(line: 1066, column: 3, scope: !2340)
!2354 = distinct !DISubprogram(name: "quote", scope: !82, file: !82, line: 1070, type: !2355, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!6, !6}
!2357 = !{!2358}
!2358 = !DILocalVariable(name: "arg", arg: 1, scope: !2354, file: !82, line: 1070, type: !6)
!2359 = !DILocation(line: 1070, column: 20, scope: !2354)
!2360 = !DILocation(line: 1064, column: 14, scope: !2340, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 1072, column: 10, scope: !2354)
!2362 = !DILocation(line: 1064, column: 29, scope: !2340, inlinedAt: !2361)
!2363 = !DILocation(line: 1052, column: 18, scope: !2314, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 1066, column: 10, scope: !2340, inlinedAt: !2361)
!2365 = !DILocation(line: 1052, column: 33, scope: !2314, inlinedAt: !2364)
!2366 = !DILocation(line: 1052, column: 45, scope: !2314, inlinedAt: !2364)
!2367 = !DILocation(line: 1054, column: 10, scope: !2314, inlinedAt: !2364)
!2368 = !DILocation(line: 1072, column: 3, scope: !2354)
!2369 = distinct !DISubprogram(name: "version_etc_arn", scope: !508, file: !508, line: 62, type: !2370, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !2428)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !2372, !6, !6, !6, !2427, !76}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2374, line: 7, baseType: !2375)
!2374 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2376, line: 241, size: 1728, elements: !2377)
!2376 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2398, !2399, !2400, !2401, !2405, !2406, !2408, !2412, !2415, !2417, !2418, !2419, !2420, !2421, !2422, !2423}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2375, file: !2376, line: 242, baseType: !25, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2375, file: !2376, line: 247, baseType: !32, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2375, file: !2376, line: 248, baseType: !32, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2375, file: !2376, line: 249, baseType: !32, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2375, file: !2376, line: 250, baseType: !32, size: 64, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2375, file: !2376, line: 251, baseType: !32, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2375, file: !2376, line: 252, baseType: !32, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2375, file: !2376, line: 253, baseType: !32, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2375, file: !2376, line: 254, baseType: !32, size: 64, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2375, file: !2376, line: 256, baseType: !32, size: 64, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2375, file: !2376, line: 257, baseType: !32, size: 64, offset: 640)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2375, file: !2376, line: 258, baseType: !32, size: 64, offset: 704)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2375, file: !2376, line: 260, baseType: !2391, size: 64, offset: 768)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2376, line: 156, size: 192, elements: !2393)
!2393 = !{!2394, !2395, !2397}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2392, file: !2376, line: 157, baseType: !2391, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2392, file: !2376, line: 158, baseType: !2396, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2392, file: !2376, line: 162, baseType: !25, size: 32, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2375, file: !2376, line: 262, baseType: !2396, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2375, file: !2376, line: 264, baseType: !25, size: 32, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2375, file: !2376, line: 268, baseType: !25, size: 32, offset: 928)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2375, file: !2376, line: 270, baseType: !2402, size: 64, offset: 960)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2403, line: 140, baseType: !2404)
!2403 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2404 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2375, file: !2376, line: 274, baseType: !75, size: 16, offset: 1024)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2375, file: !2376, line: 275, baseType: !2407, size: 8, offset: 1040)
!2407 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2375, file: !2376, line: 276, baseType: !2409, size: 8, offset: 1048)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2410)
!2410 = !{!2411}
!2411 = !DISubrange(count: 1)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2375, file: !2376, line: 280, baseType: !2413, size: 64, offset: 1088)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2376, line: 150, baseType: null)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2375, file: !2376, line: 289, baseType: !2416, size: 64, offset: 1152)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2403, line: 141, baseType: !2404)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2375, file: !2376, line: 297, baseType: !31, size: 64, offset: 1216)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2375, file: !2376, line: 298, baseType: !31, size: 64, offset: 1280)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2375, file: !2376, line: 299, baseType: !31, size: 64, offset: 1344)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2375, file: !2376, line: 300, baseType: !31, size: 64, offset: 1408)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2375, file: !2376, line: 302, baseType: !76, size: 64, offset: 1472)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2375, file: !2376, line: 303, baseType: !25, size: 32, offset: 1536)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2375, file: !2376, line: 305, baseType: !2424, size: 160, offset: 1568)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2425)
!2425 = !{!2426}
!2426 = !DISubrange(count: 20)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2428 = !{!2429, !2430, !2431, !2432, !2433, !2434}
!2429 = !DILocalVariable(name: "stream", arg: 1, scope: !2369, file: !508, line: 62, type: !2372)
!2430 = !DILocalVariable(name: "command_name", arg: 2, scope: !2369, file: !508, line: 63, type: !6)
!2431 = !DILocalVariable(name: "package", arg: 3, scope: !2369, file: !508, line: 63, type: !6)
!2432 = !DILocalVariable(name: "version", arg: 4, scope: !2369, file: !508, line: 64, type: !6)
!2433 = !DILocalVariable(name: "authors", arg: 5, scope: !2369, file: !508, line: 65, type: !2427)
!2434 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2369, file: !508, line: 65, type: !76)
!2435 = !DILocation(line: 62, column: 24, scope: !2369)
!2436 = !DILocation(line: 63, column: 30, scope: !2369)
!2437 = !DILocation(line: 63, column: 56, scope: !2369)
!2438 = !DILocation(line: 64, column: 30, scope: !2369)
!2439 = !DILocation(line: 65, column: 39, scope: !2369)
!2440 = !DILocation(line: 65, column: 55, scope: !2369)
!2441 = !DILocation(line: 67, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2369, file: !508, line: 67, column: 7)
!2443 = !DILocation(line: 67, column: 7, scope: !2369)
!2444 = !DILocation(line: 68, column: 5, scope: !2442)
!2445 = !DILocation(line: 70, column: 5, scope: !2442)
!2446 = !DILocation(line: 84, column: 3, scope: !2369)
!2447 = !DILocation(line: 86, column: 3, scope: !2369)
!2448 = !DILocation(line: 95, column: 3, scope: !2369)
!2449 = !DILocation(line: 99, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2369, file: !508, line: 96, column: 5)
!2451 = !DILocation(line: 102, column: 7, scope: !2450)
!2452 = !DILocation(line: 103, column: 7, scope: !2450)
!2453 = !DILocation(line: 106, column: 7, scope: !2450)
!2454 = !DILocation(line: 107, column: 7, scope: !2450)
!2455 = !DILocation(line: 110, column: 7, scope: !2450)
!2456 = !DILocation(line: 112, column: 7, scope: !2450)
!2457 = !DILocation(line: 117, column: 7, scope: !2450)
!2458 = !DILocation(line: 119, column: 7, scope: !2450)
!2459 = !DILocation(line: 124, column: 7, scope: !2450)
!2460 = !DILocation(line: 126, column: 7, scope: !2450)
!2461 = !DILocation(line: 131, column: 7, scope: !2450)
!2462 = !DILocation(line: 134, column: 7, scope: !2450)
!2463 = !DILocation(line: 139, column: 7, scope: !2450)
!2464 = !DILocation(line: 142, column: 7, scope: !2450)
!2465 = !DILocation(line: 147, column: 7, scope: !2450)
!2466 = !DILocation(line: 151, column: 7, scope: !2450)
!2467 = !DILocation(line: 156, column: 7, scope: !2450)
!2468 = !DILocation(line: 160, column: 7, scope: !2450)
!2469 = !DILocation(line: 167, column: 7, scope: !2450)
!2470 = !DILocation(line: 171, column: 7, scope: !2450)
!2471 = !DILocation(line: 173, column: 1, scope: !2369)
!2472 = distinct !DISubprogram(name: "version_etc_ar", scope: !508, file: !508, line: 180, type: !2473, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !2372, !6, !6, !6, !2427}
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481}
!2476 = !DILocalVariable(name: "stream", arg: 1, scope: !2472, file: !508, line: 180, type: !2372)
!2477 = !DILocalVariable(name: "command_name", arg: 2, scope: !2472, file: !508, line: 181, type: !6)
!2478 = !DILocalVariable(name: "package", arg: 3, scope: !2472, file: !508, line: 181, type: !6)
!2479 = !DILocalVariable(name: "version", arg: 4, scope: !2472, file: !508, line: 182, type: !6)
!2480 = !DILocalVariable(name: "authors", arg: 5, scope: !2472, file: !508, line: 182, type: !2427)
!2481 = !DILocalVariable(name: "n_authors", scope: !2472, file: !508, line: 184, type: !76)
!2482 = !DILocation(line: 180, column: 23, scope: !2472)
!2483 = !DILocation(line: 181, column: 29, scope: !2472)
!2484 = !DILocation(line: 181, column: 55, scope: !2472)
!2485 = !DILocation(line: 182, column: 29, scope: !2472)
!2486 = !DILocation(line: 182, column: 59, scope: !2472)
!2487 = !DILocation(line: 184, column: 10, scope: !2472)
!2488 = !DILocation(line: 186, column: 8, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2472, file: !508, line: 186, column: 3)
!2490 = !DILocation(line: 186, column: 23, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2489, file: !508, line: 186, column: 3)
!2492 = !DILocation(line: 186, column: 3, scope: !2489)
!2493 = !DILocation(line: 186, column: 52, scope: !2491)
!2494 = distinct !{!2494, !2492, !2495}
!2495 = !DILocation(line: 187, column: 5, scope: !2489)
!2496 = !DILocation(line: 188, column: 3, scope: !2472)
!2497 = !DILocation(line: 189, column: 1, scope: !2472)
!2498 = distinct !DISubprogram(name: "version_etc_va", scope: !508, file: !508, line: 196, type: !2499, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !2508)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !2372, !6, !6, !6, !2501}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !505, line: 189, size: 192, elements: !2503)
!2503 = !{!2504, !2505, !2506, !2507}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2502, file: !505, line: 189, baseType: !95, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2502, file: !505, line: 189, baseType: !95, size: 32, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2502, file: !505, line: 189, baseType: !31, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2502, file: !505, line: 189, baseType: !31, size: 64, offset: 128)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515}
!2509 = !DILocalVariable(name: "stream", arg: 1, scope: !2498, file: !508, line: 196, type: !2372)
!2510 = !DILocalVariable(name: "command_name", arg: 2, scope: !2498, file: !508, line: 197, type: !6)
!2511 = !DILocalVariable(name: "package", arg: 3, scope: !2498, file: !508, line: 197, type: !6)
!2512 = !DILocalVariable(name: "version", arg: 4, scope: !2498, file: !508, line: 198, type: !6)
!2513 = !DILocalVariable(name: "authors", arg: 5, scope: !2498, file: !508, line: 198, type: !2501)
!2514 = !DILocalVariable(name: "n_authors", scope: !2498, file: !508, line: 200, type: !76)
!2515 = !DILocalVariable(name: "authtab", scope: !2498, file: !508, line: 201, type: !2516)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !85)
!2517 = !DILocation(line: 196, column: 23, scope: !2498)
!2518 = !DILocation(line: 197, column: 29, scope: !2498)
!2519 = !DILocation(line: 197, column: 55, scope: !2498)
!2520 = !DILocation(line: 198, column: 29, scope: !2498)
!2521 = !DILocation(line: 198, column: 46, scope: !2498)
!2522 = !DILocation(line: 201, column: 3, scope: !2498)
!2523 = !DILocation(line: 201, column: 15, scope: !2498)
!2524 = !DILocation(line: 200, column: 10, scope: !2498)
!2525 = !DILocation(line: 205, column: 35, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !508, line: 203, column: 3)
!2527 = distinct !DILexicalBlock(scope: !2498, file: !508, line: 203, column: 3)
!2528 = !DILocation(line: 205, column: 14, scope: !2526)
!2529 = !DILocation(line: 205, column: 33, scope: !2526)
!2530 = !DILocation(line: 205, column: 67, scope: !2526)
!2531 = !DILocation(line: 203, column: 3, scope: !2527)
!2532 = !DILocation(line: 208, column: 3, scope: !2498)
!2533 = !DILocation(line: 210, column: 1, scope: !2498)
!2534 = distinct !DISubprogram(name: "version_etc", scope: !508, file: !508, line: 227, type: !2535, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !2372, !6, !6, !6, null}
!2537 = !{!2538, !2539, !2540, !2541, !2542}
!2538 = !DILocalVariable(name: "stream", arg: 1, scope: !2534, file: !508, line: 227, type: !2372)
!2539 = !DILocalVariable(name: "command_name", arg: 2, scope: !2534, file: !508, line: 228, type: !6)
!2540 = !DILocalVariable(name: "package", arg: 3, scope: !2534, file: !508, line: 228, type: !6)
!2541 = !DILocalVariable(name: "version", arg: 4, scope: !2534, file: !508, line: 229, type: !6)
!2542 = !DILocalVariable(name: "authors", scope: !2534, file: !508, line: 231, type: !2543)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2544, line: 46, baseType: !2545)
!2544 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2546, line: 48, baseType: !2547)
!2546 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !505, line: 231, baseType: !2548)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2502, size: 192, elements: !2410)
!2549 = !DILocation(line: 227, column: 20, scope: !2534)
!2550 = !DILocation(line: 228, column: 26, scope: !2534)
!2551 = !DILocation(line: 228, column: 52, scope: !2534)
!2552 = !DILocation(line: 229, column: 26, scope: !2534)
!2553 = !DILocation(line: 231, column: 3, scope: !2534)
!2554 = !DILocation(line: 231, column: 11, scope: !2534)
!2555 = !DILocation(line: 233, column: 3, scope: !2534)
!2556 = !DILocation(line: 234, column: 3, scope: !2534)
!2557 = !DILocation(line: 235, column: 3, scope: !2534)
!2558 = !DILocation(line: 236, column: 1, scope: !2534)
!2559 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !508, file: !508, line: 239, type: !631, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !504, variables: !4)
!2560 = !DILocation(line: 245, column: 3, scope: !2559)
!2561 = !DILocation(line: 251, column: 3, scope: !2559)
!2562 = !DILocation(line: 256, column: 3, scope: !2559)
!2563 = !DILocation(line: 258, column: 1, scope: !2559)
!2564 = distinct !DISubprogram(name: "xnmalloc", scope: !516, file: !516, line: 105, type: !2565, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!31, !76, !76}
!2567 = !{!2568, !2569}
!2568 = !DILocalVariable(name: "n", arg: 1, scope: !2564, file: !516, line: 105, type: !76)
!2569 = !DILocalVariable(name: "s", arg: 2, scope: !2564, file: !516, line: 105, type: !76)
!2570 = !DILocation(line: 105, column: 18, scope: !2564)
!2571 = !DILocation(line: 105, column: 28, scope: !2564)
!2572 = !DILocation(line: 107, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2564, file: !516, line: 107, column: 7)
!2574 = !DILocation(line: 107, column: 7, scope: !2564)
!2575 = !DILocation(line: 108, column: 5, scope: !2573)
!2576 = !DILocation(line: 109, column: 21, scope: !2564)
!2577 = !DILocalVariable(name: "n", arg: 1, scope: !2578, file: !2579, line: 39, type: !76)
!2578 = distinct !DISubprogram(name: "xmalloc", scope: !2579, file: !2579, line: 39, type: !2580, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2582)
!2579 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!31, !76}
!2582 = !{!2577, !2583}
!2583 = !DILocalVariable(name: "p", scope: !2578, file: !2579, line: 41, type: !31)
!2584 = !DILocation(line: 39, column: 17, scope: !2578, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 109, column: 10, scope: !2564)
!2586 = !DILocation(line: 41, column: 13, scope: !2578, inlinedAt: !2585)
!2587 = !DILocation(line: 41, column: 9, scope: !2578, inlinedAt: !2585)
!2588 = !DILocation(line: 42, column: 8, scope: !2589, inlinedAt: !2585)
!2589 = distinct !DILexicalBlock(scope: !2578, file: !2579, line: 42, column: 7)
!2590 = !DILocation(line: 42, column: 15, scope: !2589, inlinedAt: !2585)
!2591 = !DILocation(line: 42, column: 10, scope: !2589, inlinedAt: !2585)
!2592 = !DILocation(line: 43, column: 5, scope: !2589, inlinedAt: !2585)
!2593 = !DILocation(line: 109, column: 3, scope: !2564)
!2594 = !DILocation(line: 39, column: 17, scope: !2578)
!2595 = !DILocation(line: 41, column: 13, scope: !2578)
!2596 = !DILocation(line: 41, column: 9, scope: !2578)
!2597 = !DILocation(line: 42, column: 8, scope: !2589)
!2598 = !DILocation(line: 42, column: 15, scope: !2589)
!2599 = !DILocation(line: 42, column: 10, scope: !2589)
!2600 = !DILocation(line: 43, column: 5, scope: !2589)
!2601 = !DILocation(line: 44, column: 3, scope: !2578)
!2602 = distinct !DISubprogram(name: "xnrealloc", scope: !516, file: !516, line: 118, type: !2603, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!31, !31, !76, !76}
!2605 = !{!2606, !2607, !2608}
!2606 = !DILocalVariable(name: "p", arg: 1, scope: !2602, file: !516, line: 118, type: !31)
!2607 = !DILocalVariable(name: "n", arg: 2, scope: !2602, file: !516, line: 118, type: !76)
!2608 = !DILocalVariable(name: "s", arg: 3, scope: !2602, file: !516, line: 118, type: !76)
!2609 = !DILocation(line: 118, column: 18, scope: !2602)
!2610 = !DILocation(line: 118, column: 28, scope: !2602)
!2611 = !DILocation(line: 118, column: 38, scope: !2602)
!2612 = !DILocation(line: 120, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2602, file: !516, line: 120, column: 7)
!2614 = !DILocation(line: 120, column: 7, scope: !2602)
!2615 = !DILocation(line: 121, column: 5, scope: !2613)
!2616 = !DILocation(line: 122, column: 25, scope: !2602)
!2617 = !DILocalVariable(name: "p", arg: 1, scope: !2618, file: !2579, line: 51, type: !31)
!2618 = distinct !DISubprogram(name: "xrealloc", scope: !2579, file: !2579, line: 51, type: !2619, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!31, !31, !76}
!2621 = !{!2617, !2622}
!2622 = !DILocalVariable(name: "n", arg: 2, scope: !2618, file: !2579, line: 51, type: !76)
!2623 = !DILocation(line: 51, column: 17, scope: !2618, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 122, column: 10, scope: !2602)
!2625 = !DILocation(line: 51, column: 27, scope: !2618, inlinedAt: !2624)
!2626 = !DILocation(line: 53, column: 8, scope: !2627, inlinedAt: !2624)
!2627 = distinct !DILexicalBlock(scope: !2618, file: !2579, line: 53, column: 7)
!2628 = !DILocation(line: 53, column: 13, scope: !2627, inlinedAt: !2624)
!2629 = !DILocation(line: 53, column: 10, scope: !2627, inlinedAt: !2624)
!2630 = !DILocation(line: 57, column: 7, scope: !2631, inlinedAt: !2624)
!2631 = distinct !DILexicalBlock(scope: !2627, file: !2579, line: 54, column: 5)
!2632 = !DILocation(line: 58, column: 7, scope: !2631, inlinedAt: !2624)
!2633 = !DILocation(line: 61, column: 7, scope: !2618, inlinedAt: !2624)
!2634 = !DILocation(line: 62, column: 8, scope: !2635, inlinedAt: !2624)
!2635 = distinct !DILexicalBlock(scope: !2618, file: !2579, line: 62, column: 7)
!2636 = !DILocation(line: 62, column: 13, scope: !2635, inlinedAt: !2624)
!2637 = !DILocation(line: 62, column: 10, scope: !2635, inlinedAt: !2624)
!2638 = !DILocation(line: 63, column: 5, scope: !2635, inlinedAt: !2624)
!2639 = !DILocation(line: 122, column: 3, scope: !2602)
!2640 = !DILocation(line: 51, column: 17, scope: !2618)
!2641 = !DILocation(line: 51, column: 27, scope: !2618)
!2642 = !DILocation(line: 53, column: 8, scope: !2627)
!2643 = !DILocation(line: 53, column: 13, scope: !2627)
!2644 = !DILocation(line: 53, column: 10, scope: !2627)
!2645 = !DILocation(line: 57, column: 7, scope: !2631)
!2646 = !DILocation(line: 58, column: 7, scope: !2631)
!2647 = !DILocation(line: 61, column: 7, scope: !2618)
!2648 = !DILocation(line: 62, column: 8, scope: !2635)
!2649 = !DILocation(line: 62, column: 13, scope: !2635)
!2650 = !DILocation(line: 62, column: 10, scope: !2635)
!2651 = !DILocation(line: 63, column: 5, scope: !2635)
!2652 = !DILocation(line: 65, column: 1, scope: !2618)
!2653 = !DILocation(line: 180, column: 19, scope: !517)
!2654 = !DILocation(line: 180, column: 30, scope: !517)
!2655 = !DILocation(line: 180, column: 41, scope: !517)
!2656 = !DILocation(line: 182, column: 14, scope: !517)
!2657 = !DILocation(line: 182, column: 10, scope: !517)
!2658 = !DILocation(line: 184, column: 9, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !517, file: !516, line: 184, column: 7)
!2660 = !DILocation(line: 184, column: 7, scope: !517)
!2661 = !DILocation(line: 186, column: 13, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !516, line: 186, column: 11)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !516, line: 185, column: 5)
!2664 = !DILocation(line: 186, column: 11, scope: !2663)
!2665 = !DILocation(line: 194, column: 30, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !516, line: 187, column: 9)
!2667 = !DILocation(line: 195, column: 16, scope: !2666)
!2668 = !DILocation(line: 195, column: 13, scope: !2666)
!2669 = !DILocation(line: 196, column: 9, scope: !2666)
!2670 = !DILocation(line: 204, column: 69, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !516, line: 204, column: 11)
!2672 = distinct !DILexicalBlock(scope: !2659, file: !516, line: 199, column: 5)
!2673 = !DILocation(line: 205, column: 11, scope: !2671)
!2674 = !DILocation(line: 204, column: 11, scope: !2672)
!2675 = !DILocation(line: 206, column: 9, scope: !2671)
!2676 = !DILocation(line: 210, column: 7, scope: !517)
!2677 = !DILocation(line: 211, column: 25, scope: !517)
!2678 = !DILocation(line: 51, column: 17, scope: !2618, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 211, column: 10, scope: !517)
!2680 = !DILocation(line: 51, column: 27, scope: !2618, inlinedAt: !2679)
!2681 = !DILocation(line: 53, column: 10, scope: !2627, inlinedAt: !2679)
!2682 = !DILocation(line: 207, column: 14, scope: !2672)
!2683 = !DILocation(line: 207, column: 18, scope: !2672)
!2684 = !DILocation(line: 207, column: 9, scope: !2672)
!2685 = !DILocation(line: 53, column: 8, scope: !2627, inlinedAt: !2679)
!2686 = !DILocation(line: 57, column: 7, scope: !2631, inlinedAt: !2679)
!2687 = !DILocation(line: 58, column: 7, scope: !2631, inlinedAt: !2679)
!2688 = !DILocation(line: 61, column: 7, scope: !2618, inlinedAt: !2679)
!2689 = !DILocation(line: 62, column: 8, scope: !2635, inlinedAt: !2679)
!2690 = !DILocation(line: 62, column: 13, scope: !2635, inlinedAt: !2679)
!2691 = !DILocation(line: 62, column: 10, scope: !2635, inlinedAt: !2679)
!2692 = !DILocation(line: 63, column: 5, scope: !2635, inlinedAt: !2679)
!2693 = !DILocation(line: 211, column: 3, scope: !517)
!2694 = distinct !DISubprogram(name: "xcharalloc", scope: !516, file: !516, line: 220, type: !1646, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2695)
!2695 = !{!2696}
!2696 = !DILocalVariable(name: "n", arg: 1, scope: !2694, file: !516, line: 220, type: !76)
!2697 = !DILocation(line: 220, column: 20, scope: !2694)
!2698 = !DILocation(line: 39, column: 17, scope: !2578, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 222, column: 10, scope: !2694)
!2700 = !DILocation(line: 41, column: 13, scope: !2578, inlinedAt: !2699)
!2701 = !DILocation(line: 41, column: 9, scope: !2578, inlinedAt: !2699)
!2702 = !DILocation(line: 42, column: 8, scope: !2589, inlinedAt: !2699)
!2703 = !DILocation(line: 42, column: 15, scope: !2589, inlinedAt: !2699)
!2704 = !DILocation(line: 42, column: 10, scope: !2589, inlinedAt: !2699)
!2705 = !DILocation(line: 43, column: 5, scope: !2589, inlinedAt: !2699)
!2706 = !DILocation(line: 222, column: 3, scope: !2694)
!2707 = distinct !DISubprogram(name: "x2realloc", scope: !2579, file: !2579, line: 74, type: !2708, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!31, !31, !520}
!2710 = !{!2711, !2712}
!2711 = !DILocalVariable(name: "p", arg: 1, scope: !2707, file: !2579, line: 74, type: !31)
!2712 = !DILocalVariable(name: "pn", arg: 2, scope: !2707, file: !2579, line: 74, type: !520)
!2713 = !DILocation(line: 74, column: 18, scope: !2707)
!2714 = !DILocation(line: 74, column: 29, scope: !2707)
!2715 = !DILocation(line: 180, column: 19, scope: !517, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 76, column: 10, scope: !2707)
!2717 = !DILocation(line: 180, column: 30, scope: !517, inlinedAt: !2716)
!2718 = !DILocation(line: 180, column: 41, scope: !517, inlinedAt: !2716)
!2719 = !DILocation(line: 182, column: 14, scope: !517, inlinedAt: !2716)
!2720 = !DILocation(line: 182, column: 10, scope: !517, inlinedAt: !2716)
!2721 = !DILocation(line: 184, column: 9, scope: !2659, inlinedAt: !2716)
!2722 = !DILocation(line: 184, column: 7, scope: !517, inlinedAt: !2716)
!2723 = !DILocation(line: 186, column: 13, scope: !2662, inlinedAt: !2716)
!2724 = !DILocation(line: 186, column: 11, scope: !2663, inlinedAt: !2716)
!2725 = !DILocation(line: 210, column: 7, scope: !517, inlinedAt: !2716)
!2726 = !DILocation(line: 51, column: 17, scope: !2618, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 211, column: 10, scope: !517, inlinedAt: !2716)
!2728 = !DILocation(line: 51, column: 27, scope: !2618, inlinedAt: !2727)
!2729 = !DILocation(line: 53, column: 10, scope: !2627, inlinedAt: !2727)
!2730 = !DILocation(line: 205, column: 11, scope: !2671, inlinedAt: !2716)
!2731 = !DILocation(line: 204, column: 11, scope: !2672, inlinedAt: !2716)
!2732 = !DILocation(line: 206, column: 9, scope: !2671, inlinedAt: !2716)
!2733 = !DILocation(line: 207, column: 14, scope: !2672, inlinedAt: !2716)
!2734 = !DILocation(line: 207, column: 18, scope: !2672, inlinedAt: !2716)
!2735 = !DILocation(line: 207, column: 9, scope: !2672, inlinedAt: !2716)
!2736 = !DILocation(line: 53, column: 8, scope: !2627, inlinedAt: !2727)
!2737 = !DILocation(line: 57, column: 7, scope: !2631, inlinedAt: !2727)
!2738 = !DILocation(line: 58, column: 7, scope: !2631, inlinedAt: !2727)
!2739 = !DILocation(line: 61, column: 7, scope: !2618, inlinedAt: !2727)
!2740 = !DILocation(line: 62, column: 8, scope: !2635, inlinedAt: !2727)
!2741 = !DILocation(line: 62, column: 13, scope: !2635, inlinedAt: !2727)
!2742 = !DILocation(line: 62, column: 10, scope: !2635, inlinedAt: !2727)
!2743 = !DILocation(line: 63, column: 5, scope: !2635, inlinedAt: !2727)
!2744 = !DILocation(line: 76, column: 3, scope: !2707)
!2745 = distinct !DISubprogram(name: "xzalloc", scope: !2579, file: !2579, line: 84, type: !2580, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2746)
!2746 = !{!2747}
!2747 = !DILocalVariable(name: "s", arg: 1, scope: !2745, file: !2579, line: 84, type: !76)
!2748 = !DILocation(line: 84, column: 17, scope: !2745)
!2749 = !DILocation(line: 39, column: 17, scope: !2578, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 86, column: 18, scope: !2745)
!2751 = !DILocation(line: 41, column: 13, scope: !2578, inlinedAt: !2750)
!2752 = !DILocation(line: 41, column: 9, scope: !2578, inlinedAt: !2750)
!2753 = !DILocation(line: 42, column: 8, scope: !2589, inlinedAt: !2750)
!2754 = !DILocation(line: 42, column: 15, scope: !2589, inlinedAt: !2750)
!2755 = !DILocation(line: 42, column: 10, scope: !2589, inlinedAt: !2750)
!2756 = !DILocation(line: 43, column: 5, scope: !2589, inlinedAt: !2750)
!2757 = !DILocation(line: 86, column: 10, scope: !2745)
!2758 = !DILocation(line: 86, column: 3, scope: !2745)
!2759 = distinct !DISubprogram(name: "xcalloc", scope: !2579, file: !2579, line: 93, type: !2565, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2760)
!2760 = !{!2761, !2762, !2763}
!2761 = !DILocalVariable(name: "n", arg: 1, scope: !2759, file: !2579, line: 93, type: !76)
!2762 = !DILocalVariable(name: "s", arg: 2, scope: !2759, file: !2579, line: 93, type: !76)
!2763 = !DILocalVariable(name: "p", scope: !2759, file: !2579, line: 95, type: !31)
!2764 = !DILocation(line: 93, column: 17, scope: !2759)
!2765 = !DILocation(line: 93, column: 27, scope: !2759)
!2766 = !DILocation(line: 100, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2759, file: !2579, line: 100, column: 7)
!2768 = !DILocation(line: 101, column: 7, scope: !2767)
!2769 = !DILocation(line: 101, column: 18, scope: !2767)
!2770 = !DILocation(line: 95, column: 9, scope: !2759)
!2771 = !DILocation(line: 101, column: 16, scope: !2767)
!2772 = !DILocation(line: 100, column: 7, scope: !2759)
!2773 = !DILocation(line: 102, column: 5, scope: !2767)
!2774 = !DILocation(line: 103, column: 3, scope: !2759)
!2775 = distinct !DISubprogram(name: "xmemdup", scope: !2579, file: !2579, line: 111, type: !2776, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2780)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!31, !2778, !76}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2780 = !{!2781, !2782}
!2781 = !DILocalVariable(name: "p", arg: 1, scope: !2775, file: !2579, line: 111, type: !2778)
!2782 = !DILocalVariable(name: "s", arg: 2, scope: !2775, file: !2579, line: 111, type: !76)
!2783 = !DILocation(line: 111, column: 22, scope: !2775)
!2784 = !DILocation(line: 111, column: 32, scope: !2775)
!2785 = !DILocation(line: 39, column: 17, scope: !2578, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 113, column: 18, scope: !2775)
!2787 = !DILocation(line: 41, column: 13, scope: !2578, inlinedAt: !2786)
!2788 = !DILocation(line: 41, column: 9, scope: !2578, inlinedAt: !2786)
!2789 = !DILocation(line: 42, column: 8, scope: !2589, inlinedAt: !2786)
!2790 = !DILocation(line: 42, column: 15, scope: !2589, inlinedAt: !2786)
!2791 = !DILocation(line: 42, column: 10, scope: !2589, inlinedAt: !2786)
!2792 = !DILocation(line: 43, column: 5, scope: !2589, inlinedAt: !2786)
!2793 = !DILocation(line: 113, column: 10, scope: !2775)
!2794 = !DILocation(line: 113, column: 3, scope: !2775)
!2795 = distinct !DISubprogram(name: "xstrdup", scope: !2579, file: !2579, line: 119, type: !1848, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !512, variables: !2796)
!2796 = !{!2797}
!2797 = !DILocalVariable(name: "string", arg: 1, scope: !2795, file: !2579, line: 119, type: !6)
!2798 = !DILocation(line: 119, column: 22, scope: !2795)
!2799 = !DILocation(line: 121, column: 27, scope: !2795)
!2800 = !DILocation(line: 121, column: 43, scope: !2795)
!2801 = !DILocation(line: 111, column: 22, scope: !2775, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 121, column: 10, scope: !2795)
!2803 = !DILocation(line: 111, column: 32, scope: !2775, inlinedAt: !2802)
!2804 = !DILocation(line: 39, column: 17, scope: !2578, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 113, column: 18, scope: !2775, inlinedAt: !2802)
!2806 = !DILocation(line: 41, column: 13, scope: !2578, inlinedAt: !2805)
!2807 = !DILocation(line: 41, column: 9, scope: !2578, inlinedAt: !2805)
!2808 = !DILocation(line: 42, column: 8, scope: !2589, inlinedAt: !2805)
!2809 = !DILocation(line: 42, column: 15, scope: !2589, inlinedAt: !2805)
!2810 = !DILocation(line: 42, column: 10, scope: !2589, inlinedAt: !2805)
!2811 = !DILocation(line: 43, column: 5, scope: !2589, inlinedAt: !2805)
!2812 = !DILocation(line: 113, column: 10, scope: !2775, inlinedAt: !2802)
!2813 = !DILocation(line: 121, column: 3, scope: !2795)
!2814 = distinct !DISubprogram(name: "xalloc_die", scope: !2815, file: !2815, line: 32, type: !631, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !529, variables: !4)
!2815 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2816 = !DILocation(line: 34, column: 10, scope: !2814)
!2817 = !DILocation(line: 34, column: 33, scope: !2814)
!2818 = !DILocation(line: 34, column: 3, scope: !2814)
!2819 = !DILocation(line: 40, column: 3, scope: !2814)
!2820 = distinct !DISubprogram(name: "rpl_calloc", scope: !2821, file: !2821, line: 42, type: !2565, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2822)
!2821 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2822 = !{!2823, !2824, !2825, !2826}
!2823 = !DILocalVariable(name: "n", arg: 1, scope: !2820, file: !2821, line: 42, type: !76)
!2824 = !DILocalVariable(name: "s", arg: 2, scope: !2820, file: !2821, line: 42, type: !76)
!2825 = !DILocalVariable(name: "result", scope: !2820, file: !2821, line: 44, type: !31)
!2826 = !DILocalVariable(name: "bytes", scope: !2827, file: !2821, line: 56, type: !76)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !2821, line: 53, column: 5)
!2828 = distinct !DILexicalBlock(scope: !2820, file: !2821, line: 47, column: 7)
!2829 = !DILocation(line: 42, column: 20, scope: !2820)
!2830 = !DILocation(line: 42, column: 30, scope: !2820)
!2831 = !DILocation(line: 47, column: 9, scope: !2828)
!2832 = !DILocation(line: 47, column: 19, scope: !2828)
!2833 = !DILocation(line: 47, column: 14, scope: !2828)
!2834 = !DILocation(line: 56, column: 24, scope: !2827)
!2835 = !DILocation(line: 56, column: 14, scope: !2827)
!2836 = !DILocation(line: 57, column: 17, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2827, file: !2821, line: 57, column: 11)
!2838 = !DILocation(line: 57, column: 21, scope: !2837)
!2839 = !DILocation(line: 57, column: 11, scope: !2827)
!2840 = !DILocation(line: 59, column: 11, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2837, file: !2821, line: 58, column: 9)
!2842 = !DILocation(line: 59, column: 17, scope: !2841)
!2843 = !DILocation(line: 65, column: 12, scope: !2820)
!2844 = !DILocation(line: 44, column: 9, scope: !2820)
!2845 = !DILocation(line: 72, column: 3, scope: !2820)
!2846 = !DILocation(line: 73, column: 1, scope: !2820)
!2847 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2848, file: !2848, line: 334, type: !2849, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2863)
!2848 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!76, !2851, !6, !76, !2852}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !896, line: 6, baseType: !2854)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !898, line: 21, baseType: !2855)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !898, line: 13, size: 64, elements: !2856)
!2856 = !{!2857, !2858}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2855, file: !898, line: 15, baseType: !25, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2855, file: !898, line: 20, baseType: !2859, size: 32, offset: 32)
!2859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2855, file: !898, line: 16, size: 32, elements: !2860)
!2860 = !{!2861, !2862}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2859, file: !898, line: 18, baseType: !95, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2859, file: !898, line: 19, baseType: !907, size: 32)
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2869, !2870}
!2864 = !DILocalVariable(name: "pwc", arg: 1, scope: !2847, file: !2848, line: 334, type: !2851)
!2865 = !DILocalVariable(name: "s", arg: 2, scope: !2847, file: !2848, line: 334, type: !6)
!2866 = !DILocalVariable(name: "n", arg: 3, scope: !2847, file: !2848, line: 334, type: !76)
!2867 = !DILocalVariable(name: "ps", arg: 4, scope: !2847, file: !2848, line: 334, type: !2852)
!2868 = !DILocalVariable(name: "ret", scope: !2847, file: !2848, line: 336, type: !76)
!2869 = !DILocalVariable(name: "wc", scope: !2847, file: !2848, line: 337, type: !912)
!2870 = !DILocalVariable(name: "uc", scope: !2871, file: !2848, line: 398, type: !476)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !2848, line: 397, column: 5)
!2872 = distinct !DILexicalBlock(scope: !2847, file: !2848, line: 396, column: 7)
!2873 = !DILocation(line: 334, column: 23, scope: !2847)
!2874 = !DILocation(line: 334, column: 40, scope: !2847)
!2875 = !DILocation(line: 334, column: 50, scope: !2847)
!2876 = !DILocation(line: 334, column: 64, scope: !2847)
!2877 = !DILocation(line: 337, column: 3, scope: !2847)
!2878 = !DILocation(line: 353, column: 9, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2847, file: !2848, line: 353, column: 7)
!2880 = !DILocation(line: 353, column: 7, scope: !2847)
!2881 = !DILocation(line: 388, column: 9, scope: !2847)
!2882 = !DILocation(line: 336, column: 10, scope: !2847)
!2883 = !DILocation(line: 396, column: 19, scope: !2872)
!2884 = !DILocation(line: 396, column: 31, scope: !2872)
!2885 = !DILocation(line: 396, column: 26, scope: !2872)
!2886 = !DILocation(line: 396, column: 41, scope: !2872)
!2887 = !DILocation(line: 396, column: 7, scope: !2847)
!2888 = !DILocation(line: 398, column: 26, scope: !2871)
!2889 = !DILocation(line: 398, column: 21, scope: !2871)
!2890 = !DILocation(line: 399, column: 14, scope: !2871)
!2891 = !DILocation(line: 399, column: 12, scope: !2871)
!2892 = !DILocation(line: 405, column: 1, scope: !2847)
!2893 = distinct !DISubprogram(name: "close_stream", scope: !2894, file: !2894, line: 56, type: !2895, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2937)
!2894 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!25, !2897}
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2374, line: 7, baseType: !2899)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2376, line: 241, size: 1728, elements: !2900)
!2900 = !{!2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2899, file: !2376, line: 242, baseType: !25, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2899, file: !2376, line: 247, baseType: !32, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2899, file: !2376, line: 248, baseType: !32, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2899, file: !2376, line: 249, baseType: !32, size: 64, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2899, file: !2376, line: 250, baseType: !32, size: 64, offset: 256)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2899, file: !2376, line: 251, baseType: !32, size: 64, offset: 320)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2899, file: !2376, line: 252, baseType: !32, size: 64, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2899, file: !2376, line: 253, baseType: !32, size: 64, offset: 448)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2899, file: !2376, line: 254, baseType: !32, size: 64, offset: 512)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2899, file: !2376, line: 256, baseType: !32, size: 64, offset: 576)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2899, file: !2376, line: 257, baseType: !32, size: 64, offset: 640)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2899, file: !2376, line: 258, baseType: !32, size: 64, offset: 704)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2899, file: !2376, line: 260, baseType: !2914, size: 64, offset: 768)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2376, line: 156, size: 192, elements: !2916)
!2916 = !{!2917, !2918, !2920}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2915, file: !2376, line: 157, baseType: !2914, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2915, file: !2376, line: 158, baseType: !2919, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2915, file: !2376, line: 162, baseType: !25, size: 32, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2899, file: !2376, line: 262, baseType: !2919, size: 64, offset: 832)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2899, file: !2376, line: 264, baseType: !25, size: 32, offset: 896)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2899, file: !2376, line: 268, baseType: !25, size: 32, offset: 928)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2899, file: !2376, line: 270, baseType: !2402, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2899, file: !2376, line: 274, baseType: !75, size: 16, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2899, file: !2376, line: 275, baseType: !2407, size: 8, offset: 1040)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2899, file: !2376, line: 276, baseType: !2409, size: 8, offset: 1048)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2899, file: !2376, line: 280, baseType: !2413, size: 64, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2899, file: !2376, line: 289, baseType: !2416, size: 64, offset: 1152)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2899, file: !2376, line: 297, baseType: !31, size: 64, offset: 1216)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2899, file: !2376, line: 298, baseType: !31, size: 64, offset: 1280)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2899, file: !2376, line: 299, baseType: !31, size: 64, offset: 1344)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2899, file: !2376, line: 300, baseType: !31, size: 64, offset: 1408)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2899, file: !2376, line: 302, baseType: !76, size: 64, offset: 1472)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2899, file: !2376, line: 303, baseType: !25, size: 32, offset: 1536)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2899, file: !2376, line: 305, baseType: !2424, size: 160, offset: 1568)
!2937 = !{!2938, !2939, !2941, !2942}
!2938 = !DILocalVariable(name: "stream", arg: 1, scope: !2893, file: !2894, line: 56, type: !2897)
!2939 = !DILocalVariable(name: "some_pending", scope: !2893, file: !2894, line: 58, type: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!2941 = !DILocalVariable(name: "prev_fail", scope: !2893, file: !2894, line: 59, type: !2940)
!2942 = !DILocalVariable(name: "fclose_fail", scope: !2893, file: !2894, line: 60, type: !2940)
!2943 = !DILocation(line: 56, column: 21, scope: !2893)
!2944 = !DILocation(line: 58, column: 30, scope: !2893)
!2945 = !DILocalVariable(name: "__stream", arg: 1, scope: !2946, file: !2947, line: 132, type: !2897)
!2946 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2947, file: !2947, line: 132, type: !2895, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2948)
!2947 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2948 = !{!2945}
!2949 = !DILocation(line: 132, column: 1, scope: !2946, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 59, column: 27, scope: !2893)
!2951 = !DILocation(line: 134, column: 10, scope: !2946, inlinedAt: !2950)
!2952 = !{!2953, !648, i64 0}
!2953 = !{!"_IO_FILE", !648, i64 0, !561, i64 8, !561, i64 16, !561, i64 24, !561, i64 32, !561, i64 40, !561, i64 48, !561, i64 56, !561, i64 64, !561, i64 72, !561, i64 80, !561, i64 88, !561, i64 96, !561, i64 104, !648, i64 112, !648, i64 116, !1691, i64 120, !1147, i64 128, !562, i64 130, !562, i64 131, !561, i64 136, !1691, i64 144, !561, i64 152, !561, i64 160, !561, i64 168, !561, i64 176, !1691, i64 184, !648, i64 192, !562, i64 196}
!2954 = !DILocation(line: 59, column: 43, scope: !2893)
!2955 = !DILocation(line: 60, column: 29, scope: !2893)
!2956 = !DILocation(line: 60, column: 45, scope: !2893)
!2957 = !DILocation(line: 70, column: 17, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2893, file: !2894, line: 70, column: 7)
!2959 = !DILocation(line: 58, column: 50, scope: !2893)
!2960 = !DILocation(line: 70, column: 33, scope: !2958)
!2961 = !DILocation(line: 70, column: 53, scope: !2958)
!2962 = !DILocation(line: 70, column: 59, scope: !2958)
!2963 = !DILocation(line: 70, column: 7, scope: !2893)
!2964 = !DILocation(line: 72, column: 11, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2958, file: !2894, line: 71, column: 5)
!2966 = !DILocation(line: 73, column: 9, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2965, file: !2894, line: 72, column: 11)
!2968 = !DILocation(line: 73, column: 15, scope: !2967)
!2969 = !DILocation(line: 78, column: 1, scope: !2893)
!2970 = distinct !DISubprogram(name: "hard_locale", scope: !2971, file: !2971, line: 38, type: !2972, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !2974)
!2971 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!17, !25}
!2974 = !{!2975, !2976, !2977}
!2975 = !DILocalVariable(name: "category", arg: 1, scope: !2970, file: !2971, line: 38, type: !25)
!2976 = !DILocalVariable(name: "hard", scope: !2970, file: !2971, line: 40, type: !17)
!2977 = !DILocalVariable(name: "p", scope: !2970, file: !2971, line: 41, type: !6)
!2978 = !DILocation(line: 38, column: 18, scope: !2970)
!2979 = !DILocation(line: 40, column: 8, scope: !2970)
!2980 = !DILocation(line: 41, column: 19, scope: !2970)
!2981 = !DILocation(line: 41, column: 15, scope: !2970)
!2982 = !DILocation(line: 43, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2970, file: !2971, line: 43, column: 7)
!2984 = !DILocation(line: 43, column: 7, scope: !2970)
!2985 = !DILocation(line: 47, column: 15, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !2971, line: 47, column: 15)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !2971, line: 46, column: 9)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !2971, line: 45, column: 11)
!2989 = distinct !DILexicalBlock(scope: !2983, file: !2971, line: 44, column: 5)
!2990 = !DILocation(line: 47, column: 31, scope: !2986)
!2991 = !DILocation(line: 47, column: 36, scope: !2986)
!2992 = !DILocation(line: 47, column: 39, scope: !2986)
!2993 = !DILocation(line: 47, column: 59, scope: !2986)
!2994 = !DILocation(line: 47, column: 15, scope: !2987)
!2995 = !DILocation(line: 48, column: 13, scope: !2986)
!2996 = !DILocation(line: 71, column: 3, scope: !2970)
!2997 = distinct !DISubprogram(name: "locale_charset", scope: !478, file: !478, line: 393, type: !2998, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!6}
!3000 = !{!3001, !3002}
!3001 = !DILocalVariable(name: "codeset", scope: !2997, file: !478, line: 395, type: !6)
!3002 = !DILocalVariable(name: "aliases", scope: !2997, file: !478, line: 396, type: !6)
!3003 = !DILocalVariable(name: "buf1", scope: !3004, file: !478, line: 196, type: !3071)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !478, line: 194, column: 21)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !478, line: 193, column: 19)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !478, line: 193, column: 19)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !478, line: 188, column: 17)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !478, line: 181, column: 19)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !478, line: 177, column: 13)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !478, line: 173, column: 15)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !478, line: 161, column: 9)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !478, line: 157, column: 11)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !478, line: 130, column: 5)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !478, line: 129, column: 7)
!3015 = distinct !DISubprogram(name: "get_charset_aliases", scope: !478, file: !478, line: 124, type: !2998, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3016)
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3023, !3024, !3025, !3026, !3067, !3068, !3069, !3003, !3070, !3074, !3075, !3076}
!3017 = !DILocalVariable(name: "cp", scope: !3015, file: !478, line: 126, type: !6)
!3018 = !DILocalVariable(name: "dir", scope: !3013, file: !478, line: 132, type: !6)
!3019 = !DILocalVariable(name: "base", scope: !3013, file: !478, line: 133, type: !6)
!3020 = !DILocalVariable(name: "file_name", scope: !3013, file: !478, line: 134, type: !32)
!3021 = !DILocalVariable(name: "dir_len", scope: !3022, file: !478, line: 144, type: !76)
!3022 = distinct !DILexicalBlock(scope: !3013, file: !478, line: 143, column: 7)
!3023 = !DILocalVariable(name: "base_len", scope: !3022, file: !478, line: 145, type: !76)
!3024 = !DILocalVariable(name: "add_slash", scope: !3022, file: !478, line: 146, type: !25)
!3025 = !DILocalVariable(name: "fd", scope: !3011, file: !478, line: 162, type: !25)
!3026 = !DILocalVariable(name: "fp", scope: !3009, file: !478, line: 178, type: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2374, line: 7, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2376, line: 241, size: 1728, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3029, file: !2376, line: 242, baseType: !25, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3029, file: !2376, line: 247, baseType: !32, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3029, file: !2376, line: 248, baseType: !32, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3029, file: !2376, line: 249, baseType: !32, size: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3029, file: !2376, line: 250, baseType: !32, size: 64, offset: 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3029, file: !2376, line: 251, baseType: !32, size: 64, offset: 320)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3029, file: !2376, line: 252, baseType: !32, size: 64, offset: 384)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3029, file: !2376, line: 253, baseType: !32, size: 64, offset: 448)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3029, file: !2376, line: 254, baseType: !32, size: 64, offset: 512)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3029, file: !2376, line: 256, baseType: !32, size: 64, offset: 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3029, file: !2376, line: 257, baseType: !32, size: 64, offset: 640)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3029, file: !2376, line: 258, baseType: !32, size: 64, offset: 704)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3029, file: !2376, line: 260, baseType: !3044, size: 64, offset: 768)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2376, line: 156, size: 192, elements: !3046)
!3046 = !{!3047, !3048, !3050}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3045, file: !2376, line: 157, baseType: !3044, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3045, file: !2376, line: 158, baseType: !3049, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3045, file: !2376, line: 162, baseType: !25, size: 32, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3029, file: !2376, line: 262, baseType: !3049, size: 64, offset: 832)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3029, file: !2376, line: 264, baseType: !25, size: 32, offset: 896)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3029, file: !2376, line: 268, baseType: !25, size: 32, offset: 928)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3029, file: !2376, line: 270, baseType: !2402, size: 64, offset: 960)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3029, file: !2376, line: 274, baseType: !75, size: 16, offset: 1024)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3029, file: !2376, line: 275, baseType: !2407, size: 8, offset: 1040)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3029, file: !2376, line: 276, baseType: !2409, size: 8, offset: 1048)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3029, file: !2376, line: 280, baseType: !2413, size: 64, offset: 1088)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3029, file: !2376, line: 289, baseType: !2416, size: 64, offset: 1152)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3029, file: !2376, line: 297, baseType: !31, size: 64, offset: 1216)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3029, file: !2376, line: 298, baseType: !31, size: 64, offset: 1280)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3029, file: !2376, line: 299, baseType: !31, size: 64, offset: 1344)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3029, file: !2376, line: 300, baseType: !31, size: 64, offset: 1408)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3029, file: !2376, line: 302, baseType: !76, size: 64, offset: 1472)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3029, file: !2376, line: 303, baseType: !25, size: 32, offset: 1536)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3029, file: !2376, line: 305, baseType: !2424, size: 160, offset: 1568)
!3067 = !DILocalVariable(name: "res_ptr", scope: !3007, file: !478, line: 190, type: !32)
!3068 = !DILocalVariable(name: "res_size", scope: !3007, file: !478, line: 191, type: !76)
!3069 = !DILocalVariable(name: "c", scope: !3004, file: !478, line: 195, type: !25)
!3070 = !DILocalVariable(name: "buf2", scope: !3004, file: !478, line: 197, type: !3071)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3072)
!3072 = !{!3073}
!3073 = !DISubrange(count: 51)
!3074 = !DILocalVariable(name: "l1", scope: !3004, file: !478, line: 198, type: !76)
!3075 = !DILocalVariable(name: "l2", scope: !3004, file: !478, line: 198, type: !76)
!3076 = !DILocalVariable(name: "old_res_ptr", scope: !3004, file: !478, line: 199, type: !32)
!3077 = !DILocation(line: 196, column: 28, scope: !3004, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 589, column: 18, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !2997, file: !478, line: 589, column: 3)
!3080 = !DILocation(line: 197, column: 28, scope: !3004, inlinedAt: !3078)
!3081 = !DILocation(line: 403, column: 13, scope: !2997)
!3082 = !DILocation(line: 395, column: 15, scope: !2997)
!3083 = !DILocation(line: 584, column: 15, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2997, file: !478, line: 584, column: 7)
!3085 = !DILocation(line: 584, column: 7, scope: !2997)
!3086 = !DILocation(line: 128, column: 8, scope: !3015, inlinedAt: !3078)
!3087 = !DILocation(line: 126, column: 15, scope: !3015, inlinedAt: !3078)
!3088 = !DILocation(line: 129, column: 10, scope: !3014, inlinedAt: !3078)
!3089 = !DILocation(line: 129, column: 7, scope: !3015, inlinedAt: !3078)
!3090 = !DILocation(line: 138, column: 13, scope: !3013, inlinedAt: !3078)
!3091 = !DILocation(line: 132, column: 19, scope: !3013, inlinedAt: !3078)
!3092 = !DILocation(line: 139, column: 15, scope: !3093, inlinedAt: !3078)
!3093 = distinct !DILexicalBlock(scope: !3013, file: !478, line: 139, column: 11)
!3094 = !DILocation(line: 139, column: 23, scope: !3093, inlinedAt: !3078)
!3095 = !DILocation(line: 139, column: 26, scope: !3093, inlinedAt: !3078)
!3096 = !DILocation(line: 139, column: 33, scope: !3093, inlinedAt: !3078)
!3097 = !DILocation(line: 139, column: 11, scope: !3013, inlinedAt: !3078)
!3098 = !DILocation(line: 140, column: 9, scope: !3093, inlinedAt: !3078)
!3099 = !DILocation(line: 144, column: 26, scope: !3022, inlinedAt: !3078)
!3100 = !DILocation(line: 144, column: 16, scope: !3022, inlinedAt: !3078)
!3101 = !DILocation(line: 145, column: 16, scope: !3022, inlinedAt: !3078)
!3102 = !DILocation(line: 146, column: 34, scope: !3022, inlinedAt: !3078)
!3103 = !DILocation(line: 146, column: 38, scope: !3022, inlinedAt: !3078)
!3104 = !DILocation(line: 146, column: 42, scope: !3022, inlinedAt: !3078)
!3105 = !DILocation(line: 147, column: 48, scope: !3022, inlinedAt: !3078)
!3106 = !DILocation(line: 147, column: 46, scope: !3022, inlinedAt: !3078)
!3107 = !DILocation(line: 147, column: 69, scope: !3022, inlinedAt: !3078)
!3108 = !DILocation(line: 147, column: 30, scope: !3022, inlinedAt: !3078)
!3109 = !DILocation(line: 134, column: 13, scope: !3013, inlinedAt: !3078)
!3110 = !DILocation(line: 148, column: 13, scope: !3022, inlinedAt: !3078)
!3111 = !DILocation(line: 150, column: 13, scope: !3112, inlinedAt: !3078)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !478, line: 149, column: 11)
!3113 = distinct !DILexicalBlock(scope: !3022, file: !478, line: 148, column: 13)
!3114 = !DILocation(line: 151, column: 17, scope: !3112, inlinedAt: !3078)
!3115 = !DILocation(line: 152, column: 34, scope: !3116, inlinedAt: !3078)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !478, line: 151, column: 17)
!3117 = !DILocation(line: 153, column: 41, scope: !3112, inlinedAt: !3078)
!3118 = !DILocation(line: 153, column: 13, scope: !3112, inlinedAt: !3078)
!3119 = !DILocation(line: 157, column: 11, scope: !3013, inlinedAt: !3078)
!3120 = !DILocation(line: 171, column: 16, scope: !3011, inlinedAt: !3078)
!3121 = !DILocation(line: 162, column: 15, scope: !3011, inlinedAt: !3078)
!3122 = !DILocation(line: 173, column: 18, scope: !3010, inlinedAt: !3078)
!3123 = !DILocation(line: 173, column: 15, scope: !3011, inlinedAt: !3078)
!3124 = !DILocation(line: 180, column: 20, scope: !3009, inlinedAt: !3078)
!3125 = !DILocation(line: 178, column: 21, scope: !3009, inlinedAt: !3078)
!3126 = !DILocation(line: 181, column: 22, scope: !3008, inlinedAt: !3078)
!3127 = !DILocation(line: 181, column: 19, scope: !3009, inlinedAt: !3078)
!3128 = !DILocation(line: 184, column: 19, scope: !3129, inlinedAt: !3078)
!3129 = distinct !DILexicalBlock(scope: !3008, file: !478, line: 182, column: 17)
!3130 = !DILocation(line: 186, column: 17, scope: !3129, inlinedAt: !3078)
!3131 = !DILocation(line: 190, column: 25, scope: !3007, inlinedAt: !3078)
!3132 = !DILocation(line: 191, column: 26, scope: !3007, inlinedAt: !3078)
!3133 = !DILocation(line: 193, column: 19, scope: !3007, inlinedAt: !3078)
!3134 = !DILocation(line: 196, column: 23, scope: !3004, inlinedAt: !3078)
!3135 = !DILocation(line: 197, column: 23, scope: !3004, inlinedAt: !3078)
!3136 = !DILocalVariable(name: "__fp", arg: 1, scope: !3137, file: !2947, line: 63, type: !3027)
!3137 = distinct !DISubprogram(name: "getc_unlocked", scope: !2947, file: !2947, line: 63, type: !3138, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!25, !3027}
!3140 = !{!3136}
!3141 = !DILocation(line: 63, column: 22, scope: !3137, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 201, column: 27, scope: !3004, inlinedAt: !3078)
!3143 = !DILocation(line: 65, column: 10, scope: !3137, inlinedAt: !3142)
!3144 = !{!2953, !561, i64 8}
!3145 = !{!2953, !561, i64 16}
!3146 = !{!"branch_weights", i32 2000, i32 1}
!3147 = !DILocation(line: 195, column: 27, scope: !3004, inlinedAt: !3078)
!3148 = !DILocation(line: 202, column: 27, scope: !3004, inlinedAt: !3078)
!3149 = distinct !{!3149, !3150, !3153}
!3150 = !DILocation(line: 209, column: 27, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !478, line: 207, column: 25)
!3152 = distinct !DILexicalBlock(scope: !3004, file: !478, line: 206, column: 27)
!3153 = !DILocation(line: 211, column: 58, scope: !3151)
!3154 = !DILocation(line: 65, column: 10, scope: !3137, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 210, column: 33, scope: !3151, inlinedAt: !3078)
!3156 = !DILocation(line: 63, column: 22, scope: !3137, inlinedAt: !3155)
!3157 = !DILocation(line: 210, column: 29, scope: !3151, inlinedAt: !3078)
!3158 = distinct !{!3158, !3159, !3160}
!3159 = !DILocation(line: 193, column: 19, scope: !3006)
!3160 = !DILocation(line: 241, column: 21, scope: !3006)
!3161 = !DILocation(line: 216, column: 23, scope: !3004, inlinedAt: !3078)
!3162 = !DILocation(line: 217, column: 27, scope: !3163, inlinedAt: !3078)
!3163 = distinct !DILexicalBlock(scope: !3004, file: !478, line: 217, column: 27)
!3164 = !DILocation(line: 217, column: 64, scope: !3163, inlinedAt: !3078)
!3165 = !DILocation(line: 217, column: 27, scope: !3004, inlinedAt: !3078)
!3166 = !DILocation(line: 219, column: 28, scope: !3004, inlinedAt: !3078)
!3167 = !DILocation(line: 198, column: 30, scope: !3004, inlinedAt: !3078)
!3168 = !DILocation(line: 220, column: 28, scope: !3004, inlinedAt: !3078)
!3169 = !DILocation(line: 198, column: 34, scope: !3004, inlinedAt: !3078)
!3170 = !DILocation(line: 199, column: 29, scope: !3004, inlinedAt: !3078)
!3171 = !DILocation(line: 222, column: 36, scope: !3172, inlinedAt: !3078)
!3172 = distinct !DILexicalBlock(scope: !3004, file: !478, line: 222, column: 27)
!3173 = !DILocation(line: 222, column: 27, scope: !3004, inlinedAt: !3078)
!3174 = !DILocation(line: 225, column: 63, scope: !3175, inlinedAt: !3078)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !478, line: 223, column: 25)
!3176 = !DILocation(line: 225, column: 46, scope: !3175, inlinedAt: !3078)
!3177 = !DILocation(line: 226, column: 25, scope: !3175, inlinedAt: !3078)
!3178 = !DILocation(line: 229, column: 36, scope: !3179, inlinedAt: !3078)
!3179 = distinct !DILexicalBlock(scope: !3172, file: !478, line: 228, column: 25)
!3180 = !DILocation(line: 230, column: 73, scope: !3179, inlinedAt: !3078)
!3181 = !DILocation(line: 230, column: 46, scope: !3179, inlinedAt: !3078)
!3182 = !DILocation(line: 232, column: 35, scope: !3183, inlinedAt: !3078)
!3183 = distinct !DILexicalBlock(scope: !3004, file: !478, line: 232, column: 27)
!3184 = !DILocation(line: 232, column: 27, scope: !3004, inlinedAt: !3078)
!3185 = !DILocation(line: 236, column: 27, scope: !3186, inlinedAt: !3078)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !478, line: 233, column: 25)
!3187 = !DILocation(line: 237, column: 27, scope: !3186, inlinedAt: !3078)
!3188 = !DILocation(line: 241, column: 21, scope: !3005, inlinedAt: !3078)
!3189 = !DILocation(line: 239, column: 39, scope: !3004, inlinedAt: !3078)
!3190 = !DILocation(line: 239, column: 50, scope: !3004, inlinedAt: !3078)
!3191 = !DILocation(line: 239, column: 61, scope: !3004, inlinedAt: !3078)
!3192 = !DILocalVariable(name: "__dest", arg: 1, scope: !3193, file: !3194, line: 88, type: !3197)
!3193 = distinct !DISubprogram(name: "strcpy", scope: !3194, file: !3194, line: 88, type: !3195, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3199)
!3194 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!32, !3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!3198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3199 = !{!3192, !3200}
!3200 = !DILocalVariable(name: "__src", arg: 2, scope: !3193, file: !3194, line: 88, type: !3198)
!3201 = !DILocation(line: 88, column: 1, scope: !3193, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 239, column: 23, scope: !3004, inlinedAt: !3078)
!3203 = !DILocation(line: 90, column: 49, scope: !3193, inlinedAt: !3202)
!3204 = !DILocation(line: 90, column: 10, scope: !3193, inlinedAt: !3202)
!3205 = !DILocation(line: 88, column: 1, scope: !3193, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 240, column: 23, scope: !3004, inlinedAt: !3078)
!3207 = !DILocation(line: 90, column: 49, scope: !3193, inlinedAt: !3206)
!3208 = !DILocation(line: 90, column: 10, scope: !3193, inlinedAt: !3206)
!3209 = !DILocation(line: 193, column: 19, scope: !3005, inlinedAt: !3078)
!3210 = !DILocation(line: 242, column: 19, scope: !3007, inlinedAt: !3078)
!3211 = !DILocation(line: 243, column: 32, scope: !3212, inlinedAt: !3078)
!3212 = distinct !DILexicalBlock(scope: !3007, file: !478, line: 243, column: 23)
!3213 = !DILocation(line: 243, column: 23, scope: !3007, inlinedAt: !3078)
!3214 = !DILocation(line: 247, column: 33, scope: !3215, inlinedAt: !3078)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !478, line: 246, column: 21)
!3216 = !DILocation(line: 247, column: 45, scope: !3215, inlinedAt: !3078)
!3217 = !DILocation(line: 253, column: 11, scope: !3011, inlinedAt: !3078)
!3218 = !DILocation(line: 377, column: 23, scope: !3013, inlinedAt: !3078)
!3219 = !DILocation(line: 378, column: 5, scope: !3013, inlinedAt: !3078)
!3220 = !DILocation(line: 396, column: 15, scope: !2997)
!3221 = !DILocation(line: 590, column: 8, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3079, file: !478, line: 589, column: 3)
!3223 = !DILocation(line: 590, column: 17, scope: !3222)
!3224 = !DILocation(line: 589, column: 3, scope: !3079)
!3225 = !DILocation(line: 592, column: 9, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3222, file: !478, line: 592, column: 9)
!3227 = !DILocation(line: 592, column: 35, scope: !3226)
!3228 = !DILocation(line: 593, column: 9, scope: !3226)
!3229 = !DILocation(line: 593, column: 24, scope: !3226)
!3230 = !DILocation(line: 593, column: 31, scope: !3226)
!3231 = !DILocation(line: 593, column: 34, scope: !3226)
!3232 = !DILocation(line: 593, column: 45, scope: !3226)
!3233 = !DILocation(line: 592, column: 9, scope: !3222)
!3234 = !DILocation(line: 595, column: 29, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3226, file: !478, line: 594, column: 7)
!3236 = !DILocation(line: 595, column: 27, scope: !3235)
!3237 = !DILocation(line: 595, column: 46, scope: !3235)
!3238 = !DILocation(line: 596, column: 9, scope: !3235)
!3239 = !DILocation(line: 591, column: 19, scope: !3222)
!3240 = !DILocation(line: 591, column: 36, scope: !3222)
!3241 = !DILocation(line: 591, column: 16, scope: !3222)
!3242 = !DILocation(line: 591, column: 52, scope: !3222)
!3243 = !DILocation(line: 591, column: 69, scope: !3222)
!3244 = !DILocation(line: 591, column: 49, scope: !3222)
!3245 = distinct !{!3245, !3224, !3246}
!3246 = !DILocation(line: 597, column: 7, scope: !3079)
!3247 = !DILocation(line: 602, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !2997, file: !478, line: 602, column: 7)
!3249 = !DILocation(line: 602, column: 18, scope: !3248)
!3250 = !DILocation(line: 602, column: 7, scope: !2997)
!3251 = !DILocation(line: 612, column: 3, scope: !2997)
!3252 = distinct !DISubprogram(name: "rpl_fclose", scope: !3253, file: !3253, line: 56, type: !3254, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3296)
!3253 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!25, !3256}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2374, line: 7, baseType: !3258)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2376, line: 241, size: 1728, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3258, file: !2376, line: 242, baseType: !25, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3258, file: !2376, line: 247, baseType: !32, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3258, file: !2376, line: 248, baseType: !32, size: 64, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3258, file: !2376, line: 249, baseType: !32, size: 64, offset: 192)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3258, file: !2376, line: 250, baseType: !32, size: 64, offset: 256)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3258, file: !2376, line: 251, baseType: !32, size: 64, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3258, file: !2376, line: 252, baseType: !32, size: 64, offset: 384)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3258, file: !2376, line: 253, baseType: !32, size: 64, offset: 448)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3258, file: !2376, line: 254, baseType: !32, size: 64, offset: 512)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3258, file: !2376, line: 256, baseType: !32, size: 64, offset: 576)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3258, file: !2376, line: 257, baseType: !32, size: 64, offset: 640)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3258, file: !2376, line: 258, baseType: !32, size: 64, offset: 704)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3258, file: !2376, line: 260, baseType: !3273, size: 64, offset: 768)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2376, line: 156, size: 192, elements: !3275)
!3275 = !{!3276, !3277, !3279}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3274, file: !2376, line: 157, baseType: !3273, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3274, file: !2376, line: 158, baseType: !3278, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3274, file: !2376, line: 162, baseType: !25, size: 32, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3258, file: !2376, line: 262, baseType: !3278, size: 64, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3258, file: !2376, line: 264, baseType: !25, size: 32, offset: 896)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3258, file: !2376, line: 268, baseType: !25, size: 32, offset: 928)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3258, file: !2376, line: 270, baseType: !2402, size: 64, offset: 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3258, file: !2376, line: 274, baseType: !75, size: 16, offset: 1024)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3258, file: !2376, line: 275, baseType: !2407, size: 8, offset: 1040)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3258, file: !2376, line: 276, baseType: !2409, size: 8, offset: 1048)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3258, file: !2376, line: 280, baseType: !2413, size: 64, offset: 1088)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3258, file: !2376, line: 289, baseType: !2416, size: 64, offset: 1152)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3258, file: !2376, line: 297, baseType: !31, size: 64, offset: 1216)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3258, file: !2376, line: 298, baseType: !31, size: 64, offset: 1280)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3258, file: !2376, line: 299, baseType: !31, size: 64, offset: 1344)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3258, file: !2376, line: 300, baseType: !31, size: 64, offset: 1408)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3258, file: !2376, line: 302, baseType: !76, size: 64, offset: 1472)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3258, file: !2376, line: 303, baseType: !25, size: 32, offset: 1536)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3258, file: !2376, line: 305, baseType: !2424, size: 160, offset: 1568)
!3296 = !{!3297, !3298, !3299, !3300}
!3297 = !DILocalVariable(name: "fp", arg: 1, scope: !3252, file: !3253, line: 56, type: !3256)
!3298 = !DILocalVariable(name: "saved_errno", scope: !3252, file: !3253, line: 58, type: !25)
!3299 = !DILocalVariable(name: "fd", scope: !3252, file: !3253, line: 59, type: !25)
!3300 = !DILocalVariable(name: "result", scope: !3252, file: !3253, line: 60, type: !25)
!3301 = !DILocation(line: 56, column: 19, scope: !3252)
!3302 = !DILocation(line: 58, column: 7, scope: !3252)
!3303 = !DILocation(line: 60, column: 7, scope: !3252)
!3304 = !DILocation(line: 63, column: 8, scope: !3252)
!3305 = !DILocation(line: 59, column: 7, scope: !3252)
!3306 = !DILocation(line: 64, column: 10, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3252, file: !3253, line: 64, column: 7)
!3308 = !DILocation(line: 64, column: 7, scope: !3252)
!3309 = !DILocation(line: 65, column: 12, scope: !3307)
!3310 = !DILocation(line: 65, column: 5, scope: !3307)
!3311 = !DILocation(line: 70, column: 9, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3252, file: !3253, line: 70, column: 7)
!3313 = !DILocation(line: 70, column: 23, scope: !3312)
!3314 = !DILocation(line: 70, column: 33, scope: !3312)
!3315 = !DILocation(line: 70, column: 26, scope: !3312)
!3316 = !DILocation(line: 70, column: 59, scope: !3312)
!3317 = !DILocation(line: 71, column: 7, scope: !3312)
!3318 = !DILocation(line: 71, column: 10, scope: !3312)
!3319 = !DILocation(line: 70, column: 7, scope: !3252)
!3320 = !DILocation(line: 98, column: 12, scope: !3252)
!3321 = !DILocation(line: 103, column: 7, scope: !3252)
!3322 = !DILocation(line: 72, column: 19, scope: !3312)
!3323 = !DILocation(line: 103, column: 19, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3252, file: !3253, line: 103, column: 7)
!3325 = !DILocation(line: 105, column: 13, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3324, file: !3253, line: 104, column: 5)
!3327 = !DILocation(line: 107, column: 5, scope: !3326)
!3328 = !DILocation(line: 110, column: 1, scope: !3252)
!3329 = distinct !DISubprogram(name: "rpl_fflush", scope: !3330, file: !3330, line: 127, type: !3331, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !3373)
!3330 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!25, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2374, line: 7, baseType: !3335)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2376, line: 241, size: 1728, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3335, file: !2376, line: 242, baseType: !25, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3335, file: !2376, line: 247, baseType: !32, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3335, file: !2376, line: 248, baseType: !32, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3335, file: !2376, line: 249, baseType: !32, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3335, file: !2376, line: 250, baseType: !32, size: 64, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3335, file: !2376, line: 251, baseType: !32, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3335, file: !2376, line: 252, baseType: !32, size: 64, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3335, file: !2376, line: 253, baseType: !32, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3335, file: !2376, line: 254, baseType: !32, size: 64, offset: 512)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3335, file: !2376, line: 256, baseType: !32, size: 64, offset: 576)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3335, file: !2376, line: 257, baseType: !32, size: 64, offset: 640)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3335, file: !2376, line: 258, baseType: !32, size: 64, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3335, file: !2376, line: 260, baseType: !3350, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2376, line: 156, size: 192, elements: !3352)
!3352 = !{!3353, !3354, !3356}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3351, file: !2376, line: 157, baseType: !3350, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3351, file: !2376, line: 158, baseType: !3355, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3351, file: !2376, line: 162, baseType: !25, size: 32, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3335, file: !2376, line: 262, baseType: !3355, size: 64, offset: 832)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3335, file: !2376, line: 264, baseType: !25, size: 32, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3335, file: !2376, line: 268, baseType: !25, size: 32, offset: 928)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3335, file: !2376, line: 270, baseType: !2402, size: 64, offset: 960)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3335, file: !2376, line: 274, baseType: !75, size: 16, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3335, file: !2376, line: 275, baseType: !2407, size: 8, offset: 1040)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3335, file: !2376, line: 276, baseType: !2409, size: 8, offset: 1048)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3335, file: !2376, line: 280, baseType: !2413, size: 64, offset: 1088)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3335, file: !2376, line: 289, baseType: !2416, size: 64, offset: 1152)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3335, file: !2376, line: 297, baseType: !31, size: 64, offset: 1216)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3335, file: !2376, line: 298, baseType: !31, size: 64, offset: 1280)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3335, file: !2376, line: 299, baseType: !31, size: 64, offset: 1344)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3335, file: !2376, line: 300, baseType: !31, size: 64, offset: 1408)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3335, file: !2376, line: 302, baseType: !76, size: 64, offset: 1472)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3335, file: !2376, line: 303, baseType: !25, size: 32, offset: 1536)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3335, file: !2376, line: 305, baseType: !2424, size: 160, offset: 1568)
!3373 = !{!3374}
!3374 = !DILocalVariable(name: "stream", arg: 1, scope: !3329, file: !3330, line: 127, type: !3333)
!3375 = !DILocation(line: 127, column: 19, scope: !3329)
!3376 = !DILocation(line: 148, column: 14, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3329, file: !3330, line: 148, column: 7)
!3378 = !DILocation(line: 148, column: 22, scope: !3377)
!3379 = !DILocation(line: 148, column: 27, scope: !3377)
!3380 = !DILocation(line: 148, column: 7, scope: !3329)
!3381 = !DILocation(line: 149, column: 12, scope: !3377)
!3382 = !DILocation(line: 149, column: 5, scope: !3377)
!3383 = !DILocalVariable(name: "fp", arg: 1, scope: !3384, file: !3330, line: 40, type: !3333)
!3384 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3330, file: !3330, line: 40, type: !3385, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !3333}
!3387 = !{!3383}
!3388 = !DILocation(line: 40, column: 48, scope: !3384, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 153, column: 3, scope: !3329)
!3390 = !DILocation(line: 42, column: 11, scope: !3391, inlinedAt: !3389)
!3391 = distinct !DILexicalBlock(scope: !3384, file: !3330, line: 42, column: 7)
!3392 = !DILocation(line: 42, column: 18, scope: !3391, inlinedAt: !3389)
!3393 = !DILocation(line: 42, column: 7, scope: !3384, inlinedAt: !3389)
!3394 = !DILocation(line: 44, column: 5, scope: !3391, inlinedAt: !3389)
!3395 = !DILocation(line: 155, column: 10, scope: !3329)
!3396 = !DILocation(line: 155, column: 3, scope: !3329)
!3397 = !DILocation(line: 229, column: 1, scope: !3329)
!3398 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3399, file: !3399, line: 28, type: !3400, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3443)
!3399 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!25, !3402, !3442, !25}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2374, line: 7, baseType: !3404)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2376, line: 241, size: 1728, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3404, file: !2376, line: 242, baseType: !25, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3404, file: !2376, line: 247, baseType: !32, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3404, file: !2376, line: 248, baseType: !32, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3404, file: !2376, line: 249, baseType: !32, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3404, file: !2376, line: 250, baseType: !32, size: 64, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3404, file: !2376, line: 251, baseType: !32, size: 64, offset: 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3404, file: !2376, line: 252, baseType: !32, size: 64, offset: 384)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3404, file: !2376, line: 253, baseType: !32, size: 64, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3404, file: !2376, line: 254, baseType: !32, size: 64, offset: 512)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3404, file: !2376, line: 256, baseType: !32, size: 64, offset: 576)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3404, file: !2376, line: 257, baseType: !32, size: 64, offset: 640)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3404, file: !2376, line: 258, baseType: !32, size: 64, offset: 704)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3404, file: !2376, line: 260, baseType: !3419, size: 64, offset: 768)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2376, line: 156, size: 192, elements: !3421)
!3421 = !{!3422, !3423, !3425}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3420, file: !2376, line: 157, baseType: !3419, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3420, file: !2376, line: 158, baseType: !3424, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3420, file: !2376, line: 162, baseType: !25, size: 32, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3404, file: !2376, line: 262, baseType: !3424, size: 64, offset: 832)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3404, file: !2376, line: 264, baseType: !25, size: 32, offset: 896)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3404, file: !2376, line: 268, baseType: !25, size: 32, offset: 928)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3404, file: !2376, line: 270, baseType: !2402, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3404, file: !2376, line: 274, baseType: !75, size: 16, offset: 1024)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3404, file: !2376, line: 275, baseType: !2407, size: 8, offset: 1040)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3404, file: !2376, line: 276, baseType: !2409, size: 8, offset: 1048)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3404, file: !2376, line: 280, baseType: !2413, size: 64, offset: 1088)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3404, file: !2376, line: 289, baseType: !2416, size: 64, offset: 1152)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3404, file: !2376, line: 297, baseType: !31, size: 64, offset: 1216)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3404, file: !2376, line: 298, baseType: !31, size: 64, offset: 1280)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3404, file: !2376, line: 299, baseType: !31, size: 64, offset: 1344)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3404, file: !2376, line: 300, baseType: !31, size: 64, offset: 1408)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3404, file: !2376, line: 302, baseType: !76, size: 64, offset: 1472)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3404, file: !2376, line: 303, baseType: !25, size: 32, offset: 1536)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3404, file: !2376, line: 305, baseType: !2424, size: 160, offset: 1568)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2544, line: 57, baseType: !2402)
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DILocalVariable(name: "fp", arg: 1, scope: !3398, file: !3399, line: 28, type: !3402)
!3445 = !DILocalVariable(name: "offset", arg: 2, scope: !3398, file: !3399, line: 28, type: !3442)
!3446 = !DILocalVariable(name: "whence", arg: 3, scope: !3398, file: !3399, line: 28, type: !25)
!3447 = !DILocalVariable(name: "pos", scope: !3448, file: !3399, line: 116, type: !3442)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !3399, line: 112, column: 5)
!3449 = distinct !DILexicalBlock(scope: !3398, file: !3399, line: 51, column: 7)
!3450 = !DILocation(line: 28, column: 15, scope: !3398)
!3451 = !DILocation(line: 28, column: 25, scope: !3398)
!3452 = !DILocation(line: 28, column: 37, scope: !3398)
!3453 = !DILocation(line: 51, column: 11, scope: !3449)
!3454 = !DILocation(line: 51, column: 31, scope: !3449)
!3455 = !DILocation(line: 51, column: 24, scope: !3449)
!3456 = !DILocation(line: 52, column: 7, scope: !3449)
!3457 = !DILocation(line: 52, column: 14, scope: !3449)
!3458 = !{!2953, !561, i64 40}
!3459 = !DILocation(line: 52, column: 35, scope: !3449)
!3460 = !{!2953, !561, i64 32}
!3461 = !DILocation(line: 52, column: 28, scope: !3449)
!3462 = !DILocation(line: 53, column: 7, scope: !3449)
!3463 = !DILocation(line: 53, column: 14, scope: !3449)
!3464 = !{!2953, !561, i64 72}
!3465 = !DILocation(line: 53, column: 28, scope: !3449)
!3466 = !DILocation(line: 51, column: 7, scope: !3398)
!3467 = !DILocation(line: 116, column: 26, scope: !3448)
!3468 = !DILocation(line: 116, column: 19, scope: !3448)
!3469 = !DILocation(line: 116, column: 13, scope: !3448)
!3470 = !DILocation(line: 117, column: 15, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3448, file: !3399, line: 117, column: 11)
!3472 = !DILocation(line: 117, column: 11, scope: !3448)
!3473 = !DILocation(line: 127, column: 11, scope: !3448)
!3474 = !DILocation(line: 127, column: 18, scope: !3448)
!3475 = !DILocation(line: 128, column: 11, scope: !3448)
!3476 = !DILocation(line: 128, column: 19, scope: !3448)
!3477 = !{!2953, !1691, i64 144}
!3478 = !DILocation(line: 159, column: 7, scope: !3448)
!3479 = !DILocation(line: 161, column: 10, scope: !3398)
!3480 = !DILocation(line: 161, column: 3, scope: !3398)
!3481 = !DILocation(line: 162, column: 1, scope: !3398)
