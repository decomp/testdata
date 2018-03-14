; ModuleID = 'coreutils-8.27/src/tty.bc'
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
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [135 x i8] c"Print the file name of the terminal connected to standard input.\0A\0A  -s, --silent, --quiet   print nothing, only return an exit status\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@silent = internal unnamed_addr global i8 0, align 1, !dbg !0
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !36
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"not a tty\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !52
@.str.14 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !58
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !63
@.str.17 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !66
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !73
@.str.33 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.34 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.35 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.39, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.45, i32 0, i32 0), i8* null], align 16, !dbg !80
@.str.36 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.37 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.38 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.39 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.40 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.41 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.42 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.43 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.44 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.45 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !125
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !132
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !145
@.str.11.46 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.47 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.48 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.49 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.50 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !152
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !159
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !147
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !161
@.str.55 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.58 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.59 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.60 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.61 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.62 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.63 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.64 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.65 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.66 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.67 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.68 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.71 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.72 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.73 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.74 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !167
@.str.1.85 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.96 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.99 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !176
@.str.3.100 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.101 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.102 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.103 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.104 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.105 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !573 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !577, metadata !578), !dbg !579
  %2 = icmp eq i32 %0, 0, !dbg !580
  br i1 %2, label %8, label %3, !dbg !582

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !583, !tbaa !585
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !583
  %6 = load i8*, i8** @program_name, align 8, !dbg !583, !tbaa !585
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !583
  br label %36, !dbg !583

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !589
  %10 = load i8*, i8** @program_name, align 8, !dbg !589, !tbaa !585
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !589
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !591
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !591, !tbaa !585
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !591
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !592
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !592, !tbaa !585
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !592
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !593
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !593, !tbaa !585
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !593
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !24, metadata !578) #9, !dbg !594
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !24, metadata !578) #9, !dbg !594
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !596
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !596
  %23 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !597
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !32, metadata !578) #9, !dbg !598
  %24 = icmp eq i8* %23, null, !dbg !599
  br i1 %24, label %31, label %25, !dbg !601

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !602
  %27 = icmp eq i32 %26, 0, !dbg !602
  br i1 %27, label %31, label %28, !dbg !603

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #9, !dbg !604
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !604
  br label %31, !dbg !606

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #9, !dbg !607
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !607
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !608
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !608
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #15, !dbg !609
  unreachable, !dbg !609
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !610 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !615, metadata !578), !dbg !619
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !616, metadata !578), !dbg !620
  %3 = load i8*, i8** %1, align 8, !dbg !621, !tbaa !585
  tail call void @set_program_name(i8* %3) #9, !dbg !622
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !623
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !624
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !625
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !626, metadata !578), !dbg !629
  store volatile i32 3, i32* @exit_failure, align 4, !dbg !631, !tbaa !633
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !635
  br label %8, !dbg !636

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %8 ]
  store i8 %9, i8* @silent, align 1, !tbaa !637
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !639
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !618, metadata !578), !dbg !640
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 115, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !636, !llvm.loop !641

; <label>:11:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !643
  unreachable, !dbg !643

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !585
  %14 = load i8*, i8** @Version, align 8, !dbg !646, !tbaa !585
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #9, !dbg !646
  tail call void @exit(i32 0) #15, !dbg !646
  unreachable, !dbg !646

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 2) #16, !dbg !647
  unreachable, !dbg !647

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !648, !tbaa !633
  %18 = icmp slt i32 %17, %0, !dbg !650
  br i1 %18, label %19, label %26, !dbg !651

; <label>:19:                                     ; preds = %16
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #9, !dbg !652
  %21 = load i32, i32* @optind, align 4, !dbg !653, !tbaa !633
  %22 = sext i32 %21 to i64, !dbg !654
  %23 = getelementptr inbounds i8*, i8** %1, i64 %22, !dbg !654
  %24 = load i8*, i8** %23, align 8, !dbg !654, !tbaa !585
  %25 = tail call i8* @quote(i8* %24) #9, !dbg !655
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20, i8* %25) #9, !dbg !656
  br label %26, !dbg !656

; <label>:26:                                     ; preds = %19, %16
  %27 = tail call i8* @ttyname(i32 0) #9, !dbg !657
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !617, metadata !578), !dbg !658
  %28 = load i8, i8* @silent, align 1, !dbg !659, !tbaa !637, !range !661
  %29 = icmp eq i8 %28, 0, !dbg !659
  br i1 %29, label %30, label %37, !dbg !662

; <label>:30:                                     ; preds = %26
  %31 = icmp eq i8* %27, null, !dbg !663
  br i1 %31, label %34, label %32, !dbg !666

; <label>:32:                                     ; preds = %30
  %33 = tail call i32 @puts(i8* nonnull %27), !dbg !667
  br label %37, !dbg !667

; <label>:34:                                     ; preds = %30
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 5) #9, !dbg !668
  %36 = tail call i32 @puts(i8* %35), !dbg !669
  br label %37

; <label>:37:                                     ; preds = %26, %32, %34
  %38 = tail call i32 @isatty(i32 0) #9, !dbg !670
  %39 = icmp eq i32 %38, 0, !dbg !670
  %40 = zext i1 %39 to i32, !dbg !670
  ret i32 %40, !dbg !671
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

; Function Attrs: nounwind
declare i8* @ttyname(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !672 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !674, metadata !578), !dbg !675
  store i8* %0, i8** @file_name, align 8, !dbg !676, !tbaa !585
  ret void, !dbg !677
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !678 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !682, metadata !578), !dbg !683
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !684, !tbaa !637
  ret void, !dbg !685
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !686 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !693, !tbaa !585
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !694
  %3 = icmp eq i32 %2, 0, !dbg !695
  br i1 %3, label %21, label %4, !dbg !696

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !697, !tbaa !637, !range !661
  %6 = icmp eq i8 %5, 0, !dbg !697
  %7 = tail call i32* @__errno_location() #17, !dbg !698
  br i1 %6, label %11, label %8, !dbg !700

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !701, !tbaa !633
  %10 = icmp eq i32 %9, 32, !dbg !702
  br i1 %10, label %21, label %11, !dbg !703

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #9, !dbg !704
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !690, metadata !578), !dbg !705
  %13 = load i8*, i8** @file_name, align 8, !dbg !706, !tbaa !585
  %14 = icmp eq i8* %13, null, !dbg !706
  %15 = load i32, i32* %7, align 4, !tbaa !633
  br i1 %14, label %18, label %16, !dbg !707

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !708
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !709
  br label %19, !dbg !709

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #9, !dbg !710
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !711, !tbaa !633
  tail call void @_exit(i32 %20) #15, !dbg !712
  unreachable, !dbg !712

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !713, !tbaa !585
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !715
  %24 = icmp eq i32 %23, 0, !dbg !716
  br i1 %24, label %27, label %25, !dbg !717

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !718, !tbaa !633
  tail call void @_exit(i32 %26) #15, !dbg !719
  unreachable, !dbg !719

; <label>:27:                                     ; preds = %21
  ret void, !dbg !720
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !721 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !723, metadata !578), !dbg !726
  %2 = icmp eq i8* %0, null, !dbg !727
  br i1 %2, label %3, label %6, !dbg !729

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !730, !tbaa !585
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !732
  tail call void @abort() #15, !dbg !733
  unreachable, !dbg !733

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !734
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !724, metadata !578), !dbg !735
  %8 = icmp eq i8* %7, null, !dbg !736
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !737
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !738
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !725, metadata !578), !dbg !739
  %11 = ptrtoint i8* %10 to i64, !dbg !740
  %12 = ptrtoint i8* %0 to i64, !dbg !740
  %13 = sub i64 %11, %12, !dbg !740
  %14 = icmp sgt i64 %13, 6, !dbg !742
  br i1 %14, label %15, label %24, !dbg !743

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !744
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.34, i64 0, i64 0), i64 7) #14, !dbg !745
  %18 = icmp eq i32 %17, 0, !dbg !746
  br i1 %18, label %19, label %24, !dbg !747

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !723, metadata !578), !dbg !726
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.35, i64 0, i64 0), i64 3) #14, !dbg !748
  %21 = icmp eq i32 %20, 0, !dbg !751
  br i1 %21, label %22, label %24, !dbg !752

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !753
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !723, metadata !578), !dbg !726
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !755, !tbaa !585
  br label %24, !dbg !756

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !723, metadata !578), !dbg !726
  store i8* %25, i8** @program_name, align 8, !dbg !757, !tbaa !585
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !758, !tbaa !585
  ret void, !dbg !759
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !760 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !765, metadata !578), !dbg !768
  %2 = tail call i32* @__errno_location() #17, !dbg !769
  %3 = load i32, i32* %2, align 4, !dbg !769, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !766, metadata !578), !dbg !770
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !771
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !771
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !771
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !772
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !772
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !767, metadata !578), !dbg !773
  store i32 %3, i32* %2, align 4, !dbg !774, !tbaa !633
  ret %struct.quoting_options* %8, !dbg !775
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !776 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !782, metadata !578), !dbg !783
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !784
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !784
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !785
  %5 = load i32, i32* %4, align 8, !dbg !785, !tbaa !786
  ret i32 %5, !dbg !788
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !789 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !793, metadata !578), !dbg !795
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !794, metadata !578), !dbg !796
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !797
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !797
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !798
  store i32 %1, i32* %5, align 8, !dbg !799, !tbaa !786
  ret void, !dbg !800
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !801 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !805, metadata !578), !dbg !813
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !806, metadata !578), !dbg !814
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !807, metadata !578), !dbg !815
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !808, metadata !578), !dbg !816
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !817
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !817
  %6 = lshr i8 %1, 5, !dbg !818
  %7 = zext i8 %6 to i64, !dbg !818
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !819
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !809, metadata !578), !dbg !820
  %9 = and i8 %1, 31, !dbg !821
  %10 = zext i8 %9 to i32, !dbg !822
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !811, metadata !578), !dbg !823
  %11 = load i32, i32* %8, align 4, !dbg !824, !tbaa !633
  %12 = lshr i32 %11, %10, !dbg !825
  %13 = and i32 %12, 1, !dbg !826
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !812, metadata !578), !dbg !827
  %14 = and i32 %2, 1, !dbg !828
  %15 = xor i32 %13, %14, !dbg !829
  %16 = shl i32 %15, %10, !dbg !830
  %17 = xor i32 %16, %11, !dbg !831
  store i32 %17, i32* %8, align 4, !dbg !831, !tbaa !633
  ret i32 %13, !dbg !832
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !833 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !837, metadata !578), !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !838, metadata !578), !dbg !841
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !842
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !837, metadata !578), !dbg !840
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !837, metadata !578), !dbg !840
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !845
  %6 = load i32, i32* %5, align 4, !dbg !845, !tbaa !846
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !839, metadata !578), !dbg !847
  store i32 %1, i32* %5, align 4, !dbg !848, !tbaa !846
  ret i32 %6, !dbg !849
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !850 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !854, metadata !578), !dbg !857
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !855, metadata !578), !dbg !858
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !856, metadata !578), !dbg !859
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !854, metadata !578), !dbg !857
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !854, metadata !578), !dbg !857
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !863
  store i32 10, i32* %6, align 8, !dbg !864, !tbaa !786
  %7 = icmp ne i8* %1, null, !dbg !865
  %8 = icmp ne i8* %2, null, !dbg !867
  %9 = and i1 %7, %8, !dbg !868
  br i1 %9, label %11, label %10, !dbg !868

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !869
  unreachable, !dbg !869

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !870
  store i8* %1, i8** %12, align 8, !dbg !871, !tbaa !872
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !873
  store i8* %2, i8** %13, align 8, !dbg !874, !tbaa !875
  ret void, !dbg !876
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !877 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !881, metadata !578), !dbg !889
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !882, metadata !578), !dbg !890
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !883, metadata !578), !dbg !891
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !884, metadata !578), !dbg !892
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !885, metadata !578), !dbg !893
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !894
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !894
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !886, metadata !578), !dbg !895
  %8 = tail call i32* @__errno_location() #17, !dbg !896
  %9 = load i32, i32* %8, align 4, !dbg !896, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !887, metadata !578), !dbg !897
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !898
  %11 = load i32, i32* %10, align 8, !dbg !898, !tbaa !786
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !899
  %13 = load i32, i32* %12, align 4, !dbg !899, !tbaa !846
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !900
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !901
  %16 = load i8*, i8** %15, align 8, !dbg !901, !tbaa !872
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !902
  %18 = load i8*, i8** %17, align 8, !dbg !902, !tbaa !875
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !903
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !888, metadata !578), !dbg !904
  store i32 %9, i32* %8, align 4, !dbg !905, !tbaa !633
  ret i64 %19, !dbg !906
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !907 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !913, metadata !578), !dbg !977
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !914, metadata !578), !dbg !978
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !915, metadata !578), !dbg !979
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !916, metadata !578), !dbg !980
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !917, metadata !578), !dbg !981
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !918, metadata !578), !dbg !982
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !919, metadata !578), !dbg !983
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !920, metadata !578), !dbg !984
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !921, metadata !578), !dbg !985
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !923, metadata !578), !dbg !986
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !924, metadata !578), !dbg !987
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !925, metadata !578), !dbg !988
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !926, metadata !578), !dbg !989
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !927, metadata !578), !dbg !990
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !991
  %14 = icmp eq i64 %13, 1, !dbg !992
  %15 = lshr i32 %5, 1, !dbg !993
  %16 = trunc i32 %15 to i8, !dbg !993
  %17 = and i8 %16, 1, !dbg !993
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !929, metadata !578), !dbg !993
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !930, metadata !578), !dbg !994
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !931, metadata !578), !dbg !995
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !932, metadata !578), !dbg !996
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !997

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !932, metadata !578), !dbg !996
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !931, metadata !578), !dbg !995
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !929, metadata !578), !dbg !993
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !916, metadata !578), !dbg !980
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !927, metadata !578), !dbg !990
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !926, metadata !578), !dbg !989
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !925, metadata !578), !dbg !988
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !924, metadata !578), !dbg !987
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !921, metadata !578), !dbg !985
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !920, metadata !578), !dbg !984
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !917, metadata !578), !dbg !981
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
  ], !dbg !998

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !917, metadata !578), !dbg !981
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !929, metadata !578), !dbg !993
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !929, metadata !578), !dbg !993
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !917, metadata !578), !dbg !981
  br label %94, !dbg !999

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !929, metadata !578), !dbg !993
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !917, metadata !578), !dbg !981
  %43 = and i8 %36, 1, !dbg !1001
  %44 = icmp eq i8 %43, 0, !dbg !1001
  br i1 %44, label %45, label %94, !dbg !999

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1003
  br i1 %46, label %94, label %47, !dbg !1006

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1003, !tbaa !1007
  br label %94, !dbg !1003

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.46, i64 0, i64 0), i32 %28), !dbg !1008
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !920, metadata !578), !dbg !984
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), i32 %28), !dbg !1012
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !921, metadata !578), !dbg !985
  br label %51, !dbg !1013

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !921, metadata !578), !dbg !985
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !920, metadata !578), !dbg !984
  %54 = and i8 %36, 1, !dbg !1014
  %55 = icmp eq i8 %54, 0, !dbg !1014
  br i1 %55, label %56, label %72, !dbg !1016

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !925, metadata !578), !dbg !988
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !925, metadata !578), !dbg !988
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !923, metadata !578), !dbg !986
  %57 = load i8, i8* %52, align 1, !dbg !1017, !tbaa !1007
  %58 = icmp eq i8 %57, 0, !dbg !1020
  br i1 %58, label %72, label %59, !dbg !1020

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1021

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !925, metadata !578), !dbg !988
  %64 = icmp ult i64 %63, %40, !dbg !1021
  br i1 %64, label %65, label %67, !dbg !1024

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1021
  store i8 %61, i8* %66, align 1, !dbg !1021, !tbaa !1007
  br label %67, !dbg !1021

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !923, metadata !578), !dbg !986
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !925, metadata !578), !dbg !988
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !925, metadata !578), !dbg !988
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !923, metadata !578), !dbg !986
  %70 = load i8, i8* %69, align 1, !dbg !1017, !tbaa !1007
  %71 = icmp eq i8 %70, 0, !dbg !1020
  br i1 %71, label %72, label %60, !dbg !1020, !llvm.loop !1026

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !927, metadata !578), !dbg !990
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !925, metadata !578), !dbg !988
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !926, metadata !578), !dbg !989
  br label %94, !dbg !1029

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !927, metadata !578), !dbg !990
  br label %76, !dbg !1030

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !927, metadata !578), !dbg !990
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !929, metadata !578), !dbg !993
  br label %78, !dbg !1031

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !929, metadata !578), !dbg !993
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !927, metadata !578), !dbg !990
  %81 = and i8 %80, 1, !dbg !1032
  %82 = icmp eq i8 %81, 0, !dbg !1032
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !927, metadata !578), !dbg !990
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1034
  br label %84, !dbg !1034

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !929, metadata !578), !dbg !993
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !927, metadata !578), !dbg !990
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !917, metadata !578), !dbg !981
  %87 = and i8 %86, 1, !dbg !1035
  %88 = icmp eq i8 %87, 0, !dbg !1035
  br i1 %88, label %89, label %94, !dbg !1037

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1038
  br i1 %90, label %94, label %91, !dbg !1041

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1038, !tbaa !1007
  br label %94, !dbg !1038

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !929, metadata !578), !dbg !993
  br label %94, !dbg !1042

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1043
  unreachable, !dbg !1043

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !929, metadata !578), !dbg !993
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !927, metadata !578), !dbg !990
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !926, metadata !578), !dbg !989
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !925, metadata !578), !dbg !988
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !921, metadata !578), !dbg !985
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !920, metadata !578), !dbg !984
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !917, metadata !578), !dbg !981
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !922, metadata !578), !dbg !1044
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
  br label %122, !dbg !1045

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !932, metadata !578), !dbg !996
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !931, metadata !578), !dbg !995
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !916, metadata !578), !dbg !980
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !924, metadata !578), !dbg !987
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !922, metadata !578), !dbg !1044
  %131 = icmp eq i64 %126, -1, !dbg !1046
  br i1 %131, label %134, label %132, !dbg !1047

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1048
  br i1 %133, label %590, label %138, !dbg !1049

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1050
  %136 = load i8, i8* %135, align 1, !dbg !1050, !tbaa !1007
  %137 = icmp eq i8 %136, 0, !dbg !1051
  br i1 %137, label %590, label %138, !dbg !1049

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !938, metadata !578), !dbg !1052
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !939, metadata !578), !dbg !1053
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !940, metadata !578), !dbg !1054
  br i1 %108, label %139, label %154, !dbg !1055

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1057
  %141 = and i1 %109, %131, !dbg !1058
  br i1 %141, label %142, label %144, !dbg !1058

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !916, metadata !578), !dbg !980
  br label %144, !dbg !1060

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !916, metadata !578), !dbg !980
  %146 = icmp ugt i64 %140, %145, !dbg !1061
  br i1 %146, label %154, label %147, !dbg !1062

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1063
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1064
  %150 = icmp ne i32 %149, 0, !dbg !1065
  %151 = or i1 %150, %111, !dbg !1066
  %152 = xor i1 %150, true, !dbg !1066
  %153 = zext i1 %152 to i8, !dbg !1066
  br i1 %151, label %154, label %635, !dbg !1066

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !938, metadata !578), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !916, metadata !578), !dbg !980
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1067
  %158 = load i8, i8* %157, align 1, !dbg !1067, !tbaa !1007
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !933, metadata !578), !dbg !1068
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
  ], !dbg !1069

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1070

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1071

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !939, metadata !578), !dbg !1053
  %162 = and i8 %127, 1, !dbg !1075
  %163 = icmp eq i8 %162, 0, !dbg !1075
  %164 = and i1 %113, %163, !dbg !1075
  br i1 %164, label %165, label %181, !dbg !1075

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1077
  br i1 %166, label %167, label %169, !dbg !1081

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1077
  store i8 39, i8* %168, align 1, !dbg !1077, !tbaa !1007
  br label %169, !dbg !1077

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !923, metadata !578), !dbg !986
  %171 = icmp ult i64 %170, %130, !dbg !1082
  br i1 %171, label %172, label %174, !dbg !1085

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1082
  store i8 36, i8* %173, align 1, !dbg !1082, !tbaa !1007
  br label %174, !dbg !1082

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !923, metadata !578), !dbg !986
  %176 = icmp ult i64 %175, %130, !dbg !1086
  br i1 %176, label %177, label %179, !dbg !1089

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1086
  store i8 39, i8* %178, align 1, !dbg !1086, !tbaa !1007
  br label %179, !dbg !1086

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !930, metadata !578), !dbg !994
  br label %181, !dbg !1090

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !923, metadata !578), !dbg !986
  %184 = icmp ult i64 %182, %130, !dbg !1091
  br i1 %184, label %185, label %187, !dbg !1094

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1091
  store i8 92, i8* %186, align 1, !dbg !1091, !tbaa !1007
  br label %187, !dbg !1091

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !923, metadata !578), !dbg !986
  br i1 %105, label %189, label %470, !dbg !1095

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1097
  %191 = icmp ult i64 %190, %155, !dbg !1098
  br i1 %191, label %192, label %470, !dbg !1099

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1100
  %194 = load i8, i8* %193, align 1, !dbg !1100, !tbaa !1007
  %195 = add i8 %194, -48, !dbg !1101
  %196 = icmp ult i8 %195, 10, !dbg !1101
  br i1 %196, label %197, label %470, !dbg !1101

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1102
  br i1 %198, label %199, label %201, !dbg !1106

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1102
  store i8 48, i8* %200, align 1, !dbg !1102, !tbaa !1007
  br label %201, !dbg !1102

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !923, metadata !578), !dbg !986
  %203 = icmp ult i64 %202, %130, !dbg !1107
  br i1 %203, label %204, label %206, !dbg !1110

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1107
  store i8 48, i8* %205, align 1, !dbg !1107, !tbaa !1007
  br label %206, !dbg !1107

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !923, metadata !578), !dbg !986
  br label %470, !dbg !1111

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1112

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1113

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1114

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1116

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1118
  %214 = icmp ult i64 %213, %155, !dbg !1119
  br i1 %214, label %215, label %470, !dbg !1120

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1121
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1122
  %218 = load i8, i8* %217, align 1, !dbg !1122, !tbaa !1007
  %219 = icmp eq i8 %218, 63, !dbg !1123
  br i1 %219, label %220, label %470, !dbg !1124

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1125
  %222 = load i8, i8* %221, align 1, !dbg !1125, !tbaa !1007
  %223 = sext i8 %222 to i32, !dbg !1125
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
  ], !dbg !1126

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1127

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !933, metadata !578), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !922, metadata !578), !dbg !1044
  %226 = icmp ult i64 %124, %130, !dbg !1129
  br i1 %226, label %227, label %229, !dbg !1132

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1129
  store i8 63, i8* %228, align 1, !dbg !1129, !tbaa !1007
  br label %229, !dbg !1129

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !923, metadata !578), !dbg !986
  %231 = icmp ult i64 %230, %130, !dbg !1133
  br i1 %231, label %232, label %234, !dbg !1136

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1133
  store i8 34, i8* %233, align 1, !dbg !1133, !tbaa !1007
  br label %234, !dbg !1133

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !923, metadata !578), !dbg !986
  %236 = icmp ult i64 %235, %130, !dbg !1137
  br i1 %236, label %237, label %239, !dbg !1140

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1137
  store i8 34, i8* %238, align 1, !dbg !1137, !tbaa !1007
  br label %239, !dbg !1137

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !923, metadata !578), !dbg !986
  %241 = icmp ult i64 %240, %130, !dbg !1141
  br i1 %241, label %242, label %244, !dbg !1144

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1141
  store i8 63, i8* %243, align 1, !dbg !1141, !tbaa !1007
  br label %244, !dbg !1141

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !923, metadata !578), !dbg !986
  br label %470, !dbg !1145

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !937, metadata !578), !dbg !1146
  br label %256, !dbg !1147

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !937, metadata !578), !dbg !1146
  br label %256, !dbg !1148

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !937, metadata !578), !dbg !1146
  br label %254, !dbg !1149

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !937, metadata !578), !dbg !1146
  br label %254, !dbg !1150

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !937, metadata !578), !dbg !1146
  br label %256, !dbg !1151

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !937, metadata !578), !dbg !1146
  br i1 %113, label %252, label %253, !dbg !1152

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1153

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1156

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !937, metadata !578), !dbg !1146
  br i1 %117, label %256, label %635, !dbg !1158

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !937, metadata !578), !dbg !1146
  br i1 %104, label %497, label %470, !dbg !1160

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1161
  br i1 %259, label %260, label %265, !dbg !1163

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1164, !tbaa !1007
  %262 = icmp ne i8 %261, 0, !dbg !1165
  %263 = icmp ne i64 %123, 0, !dbg !1166
  %264 = or i1 %263, %262, !dbg !1168
  br i1 %264, label %470, label %271, !dbg !1168

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1169
  %267 = icmp ne i64 %123, 0, !dbg !1166
  %268 = or i1 %267, %266, !dbg !1163
  br i1 %268, label %470, label %271, !dbg !1163

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1166
  br i1 %270, label %271, label %470, !dbg !1170

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !940, metadata !578), !dbg !1054
  br label %272, !dbg !1171

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !940, metadata !578), !dbg !1054
  br i1 %117, label %470, label %635, !dbg !1172

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !931, metadata !578), !dbg !995
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !940, metadata !578), !dbg !1054
  br i1 %113, label %275, label %470, !dbg !1174

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1175

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1178
  %278 = icmp ne i64 %125, 0, !dbg !1180
  %279 = or i1 %278, %277, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !924, metadata !578), !dbg !987
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !914, metadata !578), !dbg !978
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1181
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !924, metadata !578), !dbg !987
  %282 = icmp ult i64 %124, %281, !dbg !1182
  br i1 %282, label %283, label %285, !dbg !1185

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1182
  store i8 39, i8* %284, align 1, !dbg !1182, !tbaa !1007
  br label %285, !dbg !1182

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !923, metadata !578), !dbg !986
  %287 = icmp ult i64 %286, %281, !dbg !1186
  br i1 %287, label %288, label %290, !dbg !1189

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1186
  store i8 92, i8* %289, align 1, !dbg !1186, !tbaa !1007
  br label %290, !dbg !1186

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !923, metadata !578), !dbg !986
  %292 = icmp ult i64 %291, %281, !dbg !1190
  br i1 %292, label %293, label %295, !dbg !1193

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1190
  store i8 39, i8* %294, align 1, !dbg !1190, !tbaa !1007
  br label %295, !dbg !1190

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !930, metadata !578), !dbg !994
  br label %470, !dbg !1194

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1195

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !941, metadata !578), !dbg !1196
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1197
  %300 = load i16*, i16** %299, align 8, !dbg !1197, !tbaa !585
  %301 = zext i8 %158 to i64, !dbg !1197
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1197
  %303 = load i16, i16* %302, align 2, !dbg !1197, !tbaa !1199
  %304 = lshr i16 %303, 14, !dbg !1201
  %305 = trunc i16 %304 to i8, !dbg !1201
  %306 = and i8 %305, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !944, metadata !578), !dbg !1202
  br label %362, !dbg !1203

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1204
  store i64 0, i64* %10, align 8, !dbg !1205
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !941, metadata !578), !dbg !1196
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !944, metadata !578), !dbg !1202
  %308 = icmp eq i64 %155, -1, !dbg !1206
  br i1 %308, label %309, label %311, !dbg !1208

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !916, metadata !578), !dbg !980
  br label %311, !dbg !1210

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !916, metadata !578), !dbg !980
  br label %313, !dbg !1211, !llvm.loop !1212

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !944, metadata !578), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !941, metadata !578), !dbg !1196
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1214
  %316 = add i64 %314, %123, !dbg !1215
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1216
  %318 = sub i64 %312, %316, !dbg !1217
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !945, metadata !578), !dbg !1218
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !963, metadata !578), !dbg !1219
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #9, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !966, metadata !578), !dbg !1221
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1222

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !944, metadata !578), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !941, metadata !578), !dbg !1196
  %321 = icmp ugt i64 %312, %316, !dbg !1223
  br i1 %321, label %322, label %347, !dbg !1225

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1226

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !941, metadata !578), !dbg !1196
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1226
  %327 = load i8, i8* %326, align 1, !dbg !1226, !tbaa !1007
  %328 = icmp eq i8 %327, 0, !dbg !1225
  br i1 %328, label %347, label %329, !dbg !1227

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !941, metadata !578), !dbg !1196
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !941, metadata !578), !dbg !1196
  %331 = add i64 %330, %123, !dbg !1229
  %332 = icmp ult i64 %331, %312, !dbg !1223
  br i1 %332, label %323, label %347, !dbg !1225, !llvm.loop !1230

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1231
  %335 = and i1 %115, %334, !dbg !1234
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !967, metadata !578), !dbg !1235
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !967, metadata !578), !dbg !1235
  br i1 %335, label %336, label %350, !dbg !1234

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1236

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !967, metadata !578), !dbg !1235
  %339 = add i64 %338, %316, !dbg !1236
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1237
  %341 = load i8, i8* %340, align 1, !dbg !1237, !tbaa !1007
  %342 = sext i8 %341 to i32, !dbg !1237
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1238

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !967, metadata !578), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !967, metadata !578), !dbg !1235
  %345 = icmp ult i64 %344, %319, !dbg !1231
  br i1 %345, label %337, label %350, !dbg !1240, !llvm.loop !1241

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1243

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !944, metadata !578), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !941, metadata !578), !dbg !1196
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1243
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1244, !tbaa !633
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !963, metadata !578), !dbg !1219
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !1246
  %353 = icmp eq i32 %352, 0, !dbg !1246
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !944, metadata !578), !dbg !1202
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1247
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !944, metadata !578), !dbg !1202
  %355 = add i64 %319, %314, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !941, metadata !578), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !944, metadata !578), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !941, metadata !578), !dbg !1196
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1243
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !945, metadata !578), !dbg !1218
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1249
  %357 = icmp eq i32 %356, 0, !dbg !1250
  br i1 %357, label %313, label %358, !dbg !1251, !llvm.loop !1212

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1252
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !944, metadata !578), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !941, metadata !578), !dbg !1196
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1243
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1252
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !944, metadata !578), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !941, metadata !578), !dbg !1196
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !916, metadata !578), !dbg !980
  %366 = and i8 %365, 1, !dbg !1253
  %367 = icmp ne i8 %366, 0, !dbg !1253
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !940, metadata !578), !dbg !1054
  %368 = icmp ult i64 %364, 2, !dbg !1254
  %369 = or i1 %367, %112, !dbg !1255
  %370 = and i1 %368, %369, !dbg !1256
  br i1 %370, label %470, label %371, !dbg !1256

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !974, metadata !578), !dbg !1258
  br label %373, !dbg !1259

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !939, metadata !578), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !938, metadata !578), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !933, metadata !578), !dbg !1068
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !922, metadata !578), !dbg !1044
  br i1 %369, label %426, label %380, !dbg !1260

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1265

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !939, metadata !578), !dbg !1053
  %382 = and i8 %376, 1, !dbg !1268
  %383 = icmp eq i8 %382, 0, !dbg !1268
  %384 = and i1 %113, %383, !dbg !1268
  br i1 %384, label %385, label %401, !dbg !1268

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1270
  br i1 %386, label %387, label %389, !dbg !1274

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1270
  store i8 39, i8* %388, align 1, !dbg !1270, !tbaa !1007
  br label %389, !dbg !1270

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !923, metadata !578), !dbg !986
  %391 = icmp ult i64 %390, %130, !dbg !1275
  br i1 %391, label %392, label %394, !dbg !1278

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1275
  store i8 36, i8* %393, align 1, !dbg !1275, !tbaa !1007
  br label %394, !dbg !1275

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !923, metadata !578), !dbg !986
  %396 = icmp ult i64 %395, %130, !dbg !1279
  br i1 %396, label %397, label %399, !dbg !1282

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1279
  store i8 39, i8* %398, align 1, !dbg !1279, !tbaa !1007
  br label %399, !dbg !1279

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !930, metadata !578), !dbg !994
  br label %401, !dbg !1283

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !923, metadata !578), !dbg !986
  %404 = icmp ult i64 %402, %130, !dbg !1284
  br i1 %404, label %405, label %407, !dbg !1287

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1284
  store i8 92, i8* %406, align 1, !dbg !1284, !tbaa !1007
  br label %407, !dbg !1284

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !923, metadata !578), !dbg !986
  %409 = icmp ult i64 %408, %130, !dbg !1288
  br i1 %409, label %410, label %414, !dbg !1291

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1288
  %412 = or i8 %411, 48, !dbg !1288
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1288
  store i8 %412, i8* %413, align 1, !dbg !1288, !tbaa !1007
  br label %414, !dbg !1288

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !923, metadata !578), !dbg !986
  %416 = icmp ult i64 %415, %130, !dbg !1292
  br i1 %416, label %417, label %422, !dbg !1295

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1292
  %419 = and i8 %418, 7, !dbg !1292
  %420 = or i8 %419, 48, !dbg !1292
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1292
  store i8 %420, i8* %421, align 1, !dbg !1292, !tbaa !1007
  br label %422, !dbg !1292

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !923, metadata !578), !dbg !986
  %424 = and i8 %377, 7, !dbg !1296
  %425 = or i8 %424, 48, !dbg !1297
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !933, metadata !578), !dbg !1068
  br label %435, !dbg !1298

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1299
  %428 = icmp eq i8 %427, 0, !dbg !1299
  br i1 %428, label %435, label %429, !dbg !1301

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1302
  br i1 %430, label %431, label %433, !dbg !1306

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1302
  store i8 92, i8* %432, align 1, !dbg !1302, !tbaa !1007
  br label %433, !dbg !1302

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !938, metadata !578), !dbg !1052
  br label %435, !dbg !1307

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !939, metadata !578), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !938, metadata !578), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !933, metadata !578), !dbg !1068
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !923, metadata !578), !dbg !986
  %441 = add i64 %374, 1, !dbg !1308
  %442 = icmp ugt i64 %372, %441, !dbg !1310
  br i1 %442, label %443, label %535, !dbg !1311

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1312
  %445 = icmp ne i8 %444, 0, !dbg !1312
  %446 = and i8 %440, 1, !dbg !1312
  %447 = icmp eq i8 %446, 0, !dbg !1312
  %448 = and i1 %445, %447, !dbg !1312
  br i1 %448, label %449, label %460, !dbg !1312

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1315
  br i1 %450, label %451, label %453, !dbg !1319

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1315
  store i8 39, i8* %452, align 1, !dbg !1315, !tbaa !1007
  br label %453, !dbg !1315

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !923, metadata !578), !dbg !986
  %455 = icmp ult i64 %454, %130, !dbg !1320
  br i1 %455, label %456, label %458, !dbg !1323

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1320
  store i8 39, i8* %457, align 1, !dbg !1320, !tbaa !1007
  br label %458, !dbg !1320

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !930, metadata !578), !dbg !994
  br label %460, !dbg !1324

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !923, metadata !578), !dbg !986
  %463 = icmp ult i64 %461, %130, !dbg !1325
  br i1 %463, label %464, label %466, !dbg !1328

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1325
  store i8 %438, i8* %465, align 1, !dbg !1325, !tbaa !1007
  br label %466, !dbg !1325

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !922, metadata !578), !dbg !1044
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1329
  %469 = load i8, i8* %468, align 1, !dbg !1329, !tbaa !1007
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !933, metadata !578), !dbg !1068
  br label %373, !dbg !1330, !llvm.loop !1331

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !940, metadata !578), !dbg !1054
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !939, metadata !578), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !938, metadata !578), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !933, metadata !578), !dbg !1068
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !931, metadata !578), !dbg !995
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !916, metadata !578), !dbg !980
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !924, metadata !578), !dbg !987
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !922, metadata !578), !dbg !1044
  br i1 %106, label %482, label %481, !dbg !1334

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1336

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1337

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1338
  %485 = zext i8 %484 to i64, !dbg !1338
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1339
  %487 = load i32, i32* %486, align 4, !dbg !1339, !tbaa !633
  %488 = and i8 %477, 31, !dbg !1340
  %489 = zext i8 %488 to i32, !dbg !1341
  %490 = shl i32 1, %489, !dbg !1342
  %491 = and i32 %487, %490, !dbg !1342
  %492 = icmp eq i32 %491, 0, !dbg !1342
  %493 = icmp eq i8 %156, 0, !dbg !1343
  %494 = and i1 %493, %492, !dbg !1344
  br i1 %494, label %535, label %497, !dbg !1344

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1343
  br i1 %496, label %535, label %497, !dbg !1345

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !940, metadata !578), !dbg !1054
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !933, metadata !578), !dbg !1068
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !931, metadata !578), !dbg !995
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !916, metadata !578), !dbg !980
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !924, metadata !578), !dbg !987
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !922, metadata !578), !dbg !1044
  br i1 %111, label %507, label %635, !dbg !1346

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !939, metadata !578), !dbg !1053
  %508 = and i8 %502, 1, !dbg !1348
  %509 = icmp eq i8 %508, 0, !dbg !1348
  %510 = and i1 %113, %509, !dbg !1348
  br i1 %510, label %511, label %527, !dbg !1348

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1350
  br i1 %512, label %513, label %515, !dbg !1354

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1350
  store i8 39, i8* %514, align 1, !dbg !1350, !tbaa !1007
  br label %515, !dbg !1350

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !923, metadata !578), !dbg !986
  %517 = icmp ult i64 %516, %506, !dbg !1355
  br i1 %517, label %518, label %520, !dbg !1358

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1355
  store i8 36, i8* %519, align 1, !dbg !1355, !tbaa !1007
  br label %520, !dbg !1355

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !923, metadata !578), !dbg !986
  %522 = icmp ult i64 %521, %506, !dbg !1359
  br i1 %522, label %523, label %525, !dbg !1362

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1359
  store i8 39, i8* %524, align 1, !dbg !1359, !tbaa !1007
  br label %525, !dbg !1359

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !930, metadata !578), !dbg !994
  br label %527, !dbg !1363

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !923, metadata !578), !dbg !986
  %530 = icmp ult i64 %528, %506, !dbg !1364
  br i1 %530, label %531, label %533, !dbg !1367

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1364
  store i8 92, i8* %532, align 1, !dbg !1364, !tbaa !1007
  br label %533, !dbg !1364

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !940, metadata !578), !dbg !1054
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !939, metadata !578), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !933, metadata !578), !dbg !1068
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !931, metadata !578), !dbg !995
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !916, metadata !578), !dbg !980
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !924, metadata !578), !dbg !987
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !922, metadata !578), !dbg !1044
  br label %562, !dbg !1368

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !940, metadata !578), !dbg !1054
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !939, metadata !578), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !933, metadata !578), !dbg !1068
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !931, metadata !578), !dbg !995
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !916, metadata !578), !dbg !980
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !924, metadata !578), !dbg !987
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !922, metadata !578), !dbg !1044
  %546 = and i8 %540, 1, !dbg !1368
  %547 = icmp ne i8 %546, 0, !dbg !1368
  %548 = and i8 %543, 1, !dbg !1368
  %549 = icmp eq i8 %548, 0, !dbg !1368
  %550 = and i1 %547, %549, !dbg !1368
  br i1 %550, label %551, label %562, !dbg !1368

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1371
  br i1 %552, label %553, label %555, !dbg !1375

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1371
  store i8 39, i8* %554, align 1, !dbg !1371, !tbaa !1007
  br label %555, !dbg !1371

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !923, metadata !578), !dbg !986
  %557 = icmp ult i64 %556, %545, !dbg !1376
  br i1 %557, label %558, label %560, !dbg !1379

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1376
  store i8 39, i8* %559, align 1, !dbg !1376, !tbaa !1007
  br label %560, !dbg !1376

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !930, metadata !578), !dbg !994
  br label %562, !dbg !1380

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !923, metadata !578), !dbg !986
  %572 = icmp ult i64 %570, %563, !dbg !1381
  br i1 %572, label %573, label %575, !dbg !1384

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1381
  store i8 %565, i8* %574, align 1, !dbg !1381, !tbaa !1007
  br label %575, !dbg !1381

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !923, metadata !578), !dbg !986
  %577 = and i8 %564, 1, !dbg !1385
  %578 = icmp eq i8 %577, 0, !dbg !1385
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !932, metadata !578), !dbg !996
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1387
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !932, metadata !578), !dbg !996
  br label %580, !dbg !1388

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !932, metadata !578), !dbg !996
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !931, metadata !578), !dbg !995
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !930, metadata !578), !dbg !994
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !916, metadata !578), !dbg !980
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !924, metadata !578), !dbg !987
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !922, metadata !578), !dbg !1044
  %589 = add i64 %581, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !922, metadata !578), !dbg !1044
  br label %122, !dbg !1390, !llvm.loop !1391

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1393
  %593 = and i1 %113, %592, !dbg !1395
  %594 = xor i1 %593, true, !dbg !1395
  %595 = or i1 %111, %594, !dbg !1395
  br i1 %595, label %596, label %635, !dbg !1395

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1396
  %598 = xor i1 %597, true, !dbg !1396
  %599 = and i8 %128, 1, !dbg !1398
  %600 = icmp eq i8 %599, 0, !dbg !1398
  %601 = or i1 %600, %598, !dbg !1396
  br i1 %601, label %611, label %602, !dbg !1396

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1399
  %604 = icmp eq i8 %603, 0, !dbg !1399
  br i1 %604, label %607, label %605, !dbg !1402

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1403
  br label %645, !dbg !1404

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1405
  %609 = icmp ne i64 %125, 0, !dbg !1407
  %610 = and i1 %609, %608, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !923, metadata !578), !dbg !986
  br i1 %610, label %27, label %611, !dbg !1408

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1409
  %613 = and i1 %612, %111, !dbg !1411
  br i1 %613, label %614, label %630, !dbg !1411

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !925, metadata !578), !dbg !988
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !923, metadata !578), !dbg !986
  %615 = load i8, i8* %99, align 1, !dbg !1412, !tbaa !1007
  %616 = icmp eq i8 %615, 0, !dbg !1415
  br i1 %616, label %630, label %617, !dbg !1415

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1416

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !923, metadata !578), !dbg !986
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !925, metadata !578), !dbg !988
  %622 = icmp ult i64 %621, %130, !dbg !1416
  br i1 %622, label %623, label %625, !dbg !1419

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1416
  store i8 %619, i8* %624, align 1, !dbg !1416, !tbaa !1007
  br label %625, !dbg !1416

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !923, metadata !578), !dbg !986
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !925, metadata !578), !dbg !988
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !925, metadata !578), !dbg !988
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !923, metadata !578), !dbg !986
  %628 = load i8, i8* %627, align 1, !dbg !1412, !tbaa !1007
  %629 = icmp eq i8 %628, 0, !dbg !1415
  br i1 %629, label %630, label %618, !dbg !1415, !llvm.loop !1421

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !923, metadata !578), !dbg !986
  %632 = icmp ult i64 %631, %130, !dbg !1423
  br i1 %632, label %633, label %645, !dbg !1425

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1426
  store i8 0, i8* %634, align 1, !dbg !1427, !tbaa !1007
  br label %645, !dbg !1426

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !914, metadata !578), !dbg !978
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !916, metadata !578), !dbg !980
  %639 = icmp ne i32 %636, 2, !dbg !1428
  %640 = icmp eq i8 %103, 0, !dbg !1430
  %641 = or i1 %639, %640, !dbg !1431
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !917, metadata !578), !dbg !981
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !917, metadata !578), !dbg !981
  %643 = and i32 %5, -3, !dbg !1432
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1433
  br label %645, !dbg !1434

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1435
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1436 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1440, metadata !578), !dbg !1444
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1441, metadata !578), !dbg !1445
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1446
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1442, metadata !578), !dbg !1447
  %4 = icmp eq i8* %3, %0, !dbg !1448
  br i1 %4, label %5, label %75, !dbg !1450

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1451
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1443, metadata !578), !dbg !1452
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1453, metadata !578), !dbg !1469
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1467, metadata !578), !dbg !1472
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1468, metadata !578), !dbg !1473
  %7 = load i8, i8* %6, align 1, !dbg !1474, !tbaa !1007
  %8 = sext i8 %7 to i32, !dbg !1474
  %9 = and i32 %8, -33, !dbg !1474
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1474

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1476, metadata !578), !dbg !1490
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1488, metadata !578), !dbg !1494
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1489, metadata !578), !dbg !1495
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1496
  %12 = load i8, i8* %11, align 1, !dbg !1496, !tbaa !1007
  %13 = sext i8 %12 to i32, !dbg !1496
  %14 = and i32 %13, -33, !dbg !1496
  %15 = icmp eq i32 %14, 84, !dbg !1496
  br i1 %15, label %16, label %72, !dbg !1496

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1498, metadata !578), !dbg !1511
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1509, metadata !578), !dbg !1515
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1510, metadata !578), !dbg !1516
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1517
  %18 = load i8, i8* %17, align 1, !dbg !1517, !tbaa !1007
  %19 = sext i8 %18 to i32, !dbg !1517
  %20 = and i32 %19, -33, !dbg !1517
  %21 = icmp eq i32 %20, 70, !dbg !1517
  br i1 %21, label %22, label %72, !dbg !1517

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1519, metadata !578), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1529, metadata !578), !dbg !1535
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1530, metadata !578), !dbg !1536
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1537
  %24 = load i8, i8* %23, align 1, !dbg !1537, !tbaa !1007
  %25 = icmp eq i8 %24, 45, !dbg !1537
  br i1 %25, label %26, label %72, !dbg !1539

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1540, metadata !578), !dbg !1551
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1549, metadata !578), !dbg !1555
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1550, metadata !578), !dbg !1556
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1557
  %28 = load i8, i8* %27, align 1, !dbg !1557, !tbaa !1007
  %29 = icmp eq i8 %28, 56, !dbg !1557
  br i1 %29, label %30, label %72, !dbg !1559

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1560, metadata !578), !dbg !1570
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !578), !dbg !1574
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1569, metadata !578), !dbg !1575
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1576
  %32 = load i8, i8* %31, align 1, !dbg !1576, !tbaa !1007
  %33 = icmp eq i8 %32, 0, !dbg !1576
  br i1 %33, label %34, label %72, !dbg !1578

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1579, !tbaa !1007
  %36 = icmp eq i8 %35, 96, !dbg !1580
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.49, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1579
  br label %75, !dbg !1581

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1476, metadata !578), !dbg !1582
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1488, metadata !578), !dbg !1586
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1489, metadata !578), !dbg !1587
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1588
  %40 = load i8, i8* %39, align 1, !dbg !1588, !tbaa !1007
  %41 = sext i8 %40 to i32, !dbg !1588
  %42 = and i32 %41, -33, !dbg !1588
  %43 = icmp eq i32 %42, 66, !dbg !1588
  br i1 %43, label %44, label %72, !dbg !1588

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1498, metadata !578), !dbg !1589
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1509, metadata !578), !dbg !1591
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1510, metadata !578), !dbg !1592
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1593
  %46 = load i8, i8* %45, align 1, !dbg !1593, !tbaa !1007
  %47 = icmp eq i8 %46, 49, !dbg !1593
  br i1 %47, label %48, label %72, !dbg !1594

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1519, metadata !578), !dbg !1595
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1529, metadata !578), !dbg !1597
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1530, metadata !578), !dbg !1598
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1599
  %50 = load i8, i8* %49, align 1, !dbg !1599, !tbaa !1007
  %51 = icmp eq i8 %50, 56, !dbg !1599
  br i1 %51, label %52, label %72, !dbg !1600

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1540, metadata !578), !dbg !1601
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1549, metadata !578), !dbg !1603
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1550, metadata !578), !dbg !1604
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1605
  %54 = load i8, i8* %53, align 1, !dbg !1605, !tbaa !1007
  %55 = icmp eq i8 %54, 48, !dbg !1605
  br i1 %55, label %56, label %72, !dbg !1606

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1560, metadata !578), !dbg !1607
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !578), !dbg !1609
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1569, metadata !578), !dbg !1610
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1611
  %58 = load i8, i8* %57, align 1, !dbg !1611, !tbaa !1007
  %59 = icmp eq i8 %58, 51, !dbg !1611
  br i1 %59, label %60, label %72, !dbg !1612

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1613, metadata !578), !dbg !1622
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1620, metadata !578), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1621, metadata !578), !dbg !1627
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1628
  %62 = load i8, i8* %61, align 1, !dbg !1628, !tbaa !1007
  %63 = icmp eq i8 %62, 48, !dbg !1628
  br i1 %63, label %64, label %72, !dbg !1630

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1631, metadata !578), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1637, metadata !578), !dbg !1643
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1638, metadata !578), !dbg !1644
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1645
  %66 = load i8, i8* %65, align 1, !dbg !1645, !tbaa !1007
  %67 = icmp eq i8 %66, 0, !dbg !1645
  br i1 %67, label %68, label %72, !dbg !1647

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1648, !tbaa !1007
  %70 = icmp eq i8 %69, 96, !dbg !1649
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1648
  br label %75, !dbg !1650

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1651
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), !dbg !1652
  br label %75, !dbg !1653

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1654
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1655 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1659, metadata !578), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1660, metadata !578), !dbg !1663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1661, metadata !578), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1665, metadata !578) #9, !dbg !1678
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1670, metadata !578) #9, !dbg !1680
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1671, metadata !578) #9, !dbg !1681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1672, metadata !578) #9, !dbg !1682
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1683
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1673, metadata !578) #9, !dbg !1684
  %6 = tail call i32* @__errno_location() #17, !dbg !1685
  %7 = load i32, i32* %6, align 4, !dbg !1685, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1674, metadata !578) #9, !dbg !1686
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1687
  %9 = load i32, i32* %8, align 4, !dbg !1687, !tbaa !846
  %10 = or i32 %9, 1, !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1675, metadata !578) #9, !dbg !1689
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1690
  %12 = load i32, i32* %11, align 8, !dbg !1690, !tbaa !786
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1691
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1692
  %15 = load i8*, i8** %14, align 8, !dbg !1692, !tbaa !872
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1693
  %17 = load i8*, i8** %16, align 8, !dbg !1693, !tbaa !875
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !1694
  %19 = add i64 %18, 1, !dbg !1695
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1676, metadata !578) #9, !dbg !1696
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1697, metadata !578) #9, !dbg !1702
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !1704
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1677, metadata !578) #9, !dbg !1705
  %21 = load i32, i32* %11, align 8, !dbg !1706, !tbaa !786
  %22 = load i8*, i8** %14, align 8, !dbg !1707, !tbaa !872
  %23 = load i8*, i8** %16, align 8, !dbg !1708, !tbaa !875
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !1709
  store i32 %7, i32* %6, align 4, !dbg !1710, !tbaa !633
  ret i8* %20, !dbg !1711
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1666 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1665, metadata !578), !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1670, metadata !578), !dbg !1713
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1671, metadata !578), !dbg !1714
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1672, metadata !578), !dbg !1715
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1716
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1673, metadata !578), !dbg !1717
  %7 = tail call i32* @__errno_location() #17, !dbg !1718
  %8 = load i32, i32* %7, align 4, !dbg !1718, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1674, metadata !578), !dbg !1719
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1720
  %10 = load i32, i32* %9, align 4, !dbg !1720, !tbaa !846
  %11 = icmp ne i64* %2, null, !dbg !1721
  %12 = xor i1 %11, true, !dbg !1721
  %13 = zext i1 %12 to i32, !dbg !1721
  %14 = or i32 %10, %13, !dbg !1722
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1675, metadata !578), !dbg !1723
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1724
  %16 = load i32, i32* %15, align 8, !dbg !1724, !tbaa !786
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1725
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1726
  %19 = load i8*, i8** %18, align 8, !dbg !1726, !tbaa !872
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1727
  %21 = load i8*, i8** %20, align 8, !dbg !1727, !tbaa !875
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1728
  %23 = add i64 %22, 1, !dbg !1729
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1676, metadata !578), !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1697, metadata !578) #9, !dbg !1731
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !1733
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1677, metadata !578), !dbg !1734
  %25 = load i32, i32* %15, align 8, !dbg !1735, !tbaa !786
  %26 = load i8*, i8** %18, align 8, !dbg !1736, !tbaa !872
  %27 = load i8*, i8** %20, align 8, !dbg !1737, !tbaa !875
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1738
  store i32 %8, i32* %7, align 4, !dbg !1739, !tbaa !633
  br i1 %11, label %29, label %30, !dbg !1740

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1741, !tbaa !1743
  br label %30, !dbg !1745

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1746
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1747 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1751, !tbaa !585
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1749, metadata !578), !dbg !1752
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1750, metadata !578), !dbg !1753
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1750, metadata !578), !dbg !1753
  %2 = load i32, i32* @nslots, align 4, !dbg !1754, !tbaa !633
  %3 = icmp sgt i32 %2, 1, !dbg !1757
  br i1 %3, label %4, label %13, !dbg !1758

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1759

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1750, metadata !578), !dbg !1753
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1759
  %8 = load i8*, i8** %7, align 8, !dbg !1759, !tbaa !1760
  tail call void @free(i8* %8) #9, !dbg !1762
  %9 = add nuw i64 %6, 1, !dbg !1763
  %10 = load i32, i32* @nslots, align 4, !dbg !1754, !tbaa !633
  %11 = sext i32 %10 to i64, !dbg !1757
  %12 = icmp slt i64 %9, %11, !dbg !1757
  br i1 %12, label %5, label %13, !dbg !1758, !llvm.loop !1764

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1766
  %15 = load i8*, i8** %14, align 8, !dbg !1766, !tbaa !1760
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1768
  br i1 %16, label %18, label %17, !dbg !1769

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !1770
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1772, !tbaa !1773
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1774, !tbaa !1760
  br label %18, !dbg !1775

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1776
  br i1 %19, label %22, label %20, !dbg !1778

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1779
  tail call void @free(i8* %21) #9, !dbg !1781
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1782, !tbaa !585
  br label %22, !dbg !1783

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1784, !tbaa !633
  ret void, !dbg !1785
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1786 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1790, metadata !578), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1791, metadata !578), !dbg !1793
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1794
  ret i8* %3, !dbg !1795
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1796 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1800, metadata !578), !dbg !1814
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1801, metadata !578), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1802, metadata !578), !dbg !1816
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1803, metadata !578), !dbg !1817
  %5 = tail call i32* @__errno_location() #17, !dbg !1818
  %6 = load i32, i32* %5, align 4, !dbg !1818, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1804, metadata !578), !dbg !1819
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1820, !tbaa !585
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1805, metadata !578), !dbg !1821
  %8 = icmp slt i32 %0, 0, !dbg !1822
  br i1 %8, label %9, label %10, !dbg !1824

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1825
  unreachable, !dbg !1825

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1826, !tbaa !633
  %12 = icmp sgt i32 %11, %0, !dbg !1827
  br i1 %12, label %34, label %13, !dbg !1828

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1829
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1830
  br i1 %15, label %16, label %17, !dbg !1832

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1833
  unreachable, !dbg !1833

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1834
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1834
  %20 = add nsw i32 %0, 1, !dbg !1835
  %21 = sext i32 %20 to i64, !dbg !1836
  %22 = shl nsw i64 %21, 4, !dbg !1837
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !1838
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1838
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1805, metadata !578), !dbg !1821
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1839, !tbaa !585
  br i1 %14, label %25, label %26, !dbg !1840

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1841, !tbaa.struct !1843
  br label %26, !dbg !1844

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1845, !tbaa !633
  %28 = sext i32 %27 to i64, !dbg !1846
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1846
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1847
  %31 = sub nsw i32 %20, %27, !dbg !1848
  %32 = sext i32 %31 to i64, !dbg !1849
  %33 = shl nsw i64 %32, 4, !dbg !1850
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1847
  store i32 %20, i32* @nslots, align 4, !dbg !1851, !tbaa !633
  br label %34, !dbg !1852

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1805, metadata !578), !dbg !1821
  %36 = sext i32 %0 to i64, !dbg !1853
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1854
  %38 = load i64, i64* %37, align 8, !dbg !1854, !tbaa !1773
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1809, metadata !578), !dbg !1855
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1856
  %40 = load i8*, i8** %39, align 8, !dbg !1856, !tbaa !1760
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1811, metadata !578), !dbg !1857
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1858
  %42 = load i32, i32* %41, align 4, !dbg !1858, !tbaa !846
  %43 = or i32 %42, 1, !dbg !1859
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1812, metadata !578), !dbg !1860
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1861
  %45 = load i32, i32* %44, align 8, !dbg !1861, !tbaa !786
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1862
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1863
  %48 = load i8*, i8** %47, align 8, !dbg !1863, !tbaa !872
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1864
  %50 = load i8*, i8** %49, align 8, !dbg !1864, !tbaa !875
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1865
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1813, metadata !578), !dbg !1866
  %52 = icmp ugt i64 %38, %51, !dbg !1867
  br i1 %52, label %63, label %53, !dbg !1869

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1870
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1809, metadata !578), !dbg !1855
  store i64 %54, i64* %37, align 8, !dbg !1872, !tbaa !1773
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1873
  br i1 %55, label %57, label %56, !dbg !1875

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !1876
  br label %57, !dbg !1876

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1697, metadata !578) #9, !dbg !1877
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !1879
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1811, metadata !578), !dbg !1857
  store i8* %58, i8** %39, align 8, !dbg !1880, !tbaa !1760
  %59 = load i32, i32* %44, align 8, !dbg !1881, !tbaa !786
  %60 = load i8*, i8** %47, align 8, !dbg !1882, !tbaa !872
  %61 = load i8*, i8** %49, align 8, !dbg !1883, !tbaa !875
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1884
  br label %63, !dbg !1885

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1811, metadata !578), !dbg !1857
  store i32 %6, i32* %5, align 4, !dbg !1886, !tbaa !633
  ret i8* %64, !dbg !1887
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1888 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1892, metadata !578), !dbg !1895
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1893, metadata !578), !dbg !1896
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1894, metadata !578), !dbg !1897
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1898
  ret i8* %4, !dbg !1899
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1900 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1904, metadata !578), !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1790, metadata !578) #9, !dbg !1906
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1791, metadata !578) #9, !dbg !1908
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1909
  ret i8* %2, !dbg !1910
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1911 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1915, metadata !578), !dbg !1917
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1916, metadata !578), !dbg !1918
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1892, metadata !578) #9, !dbg !1919
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1893, metadata !578) #9, !dbg !1921
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1894, metadata !578) #9, !dbg !1922
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1923
  ret i8* %3, !dbg !1924
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1925 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1933, metadata !1939), !dbg !1940
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1929, metadata !578), !dbg !1942
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1930, metadata !578), !dbg !1943
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1931, metadata !578), !dbg !1944
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1945
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1945
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1932, metadata !578), !dbg !1946
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1938, metadata !578) #9, !dbg !1947
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !1948
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !1948
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1933, metadata !578) #9, !dbg !1940
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1933, metadata !1949) #9, !dbg !1940
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1940
  %8 = icmp eq i32 %1, 10, !dbg !1950
  br i1 %8, label %9, label %10, !dbg !1952

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !1953, !noalias !1954
  unreachable, !dbg !1953

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1933, metadata !1949) #9, !dbg !1940
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1957
  store i32 %1, i32* %11, align 8, !dbg !1957, !alias.scope !1954
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1957
  %13 = bitcast i32* %12 to i8*, !dbg !1957
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !1957
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !1958
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1932, metadata !578), !dbg !1946
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !1959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1960
  ret i8* %14, !dbg !1961
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !1962 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1933, metadata !1939), !dbg !1971
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1966, metadata !578), !dbg !1973
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1967, metadata !578), !dbg !1974
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1968, metadata !578), !dbg !1975
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1969, metadata !578), !dbg !1976
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !1977
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !1977
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1970, metadata !578), !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1938, metadata !578) #9, !dbg !1979
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !1980
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !1980
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1933, metadata !578) #9, !dbg !1971
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1933, metadata !1949) #9, !dbg !1971
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !1971
  %9 = icmp eq i32 %1, 10, !dbg !1981
  br i1 %9, label %10, label %11, !dbg !1982

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !1983, !noalias !1984
  unreachable, !dbg !1983

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1933, metadata !1949) #9, !dbg !1971
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1987
  store i32 %1, i32* %12, align 8, !dbg !1987, !alias.scope !1984
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1987
  %14 = bitcast i32* %13 to i8*, !dbg !1987
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !1987
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !1988
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1970, metadata !578), !dbg !1978
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !1989
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !1990
  ret i8* %15, !dbg !1991
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !1992 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !1933, metadata !1939), !dbg !1998
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1996, metadata !578), !dbg !2001
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1997, metadata !578), !dbg !2002
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1929, metadata !578) #9, !dbg !2003
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1930, metadata !578) #9, !dbg !2004
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1931, metadata !578) #9, !dbg !2005
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2006
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2006
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1932, metadata !578) #9, !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1938, metadata !578) #9, !dbg !2008
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2009
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2009
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1933, metadata !578) #9, !dbg !1998
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1933, metadata !1949) #9, !dbg !1998
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !1998
  %7 = icmp eq i32 %0, 10, !dbg !2010
  br i1 %7, label %8, label %9, !dbg !2011

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2012, !noalias !2013
  unreachable, !dbg !2012

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1933, metadata !1949) #9, !dbg !1998
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2016
  store i32 %0, i32* %10, align 8, !dbg !2016, !alias.scope !2013
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2016
  %12 = bitcast i32* %11 to i8*, !dbg !2016
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2016
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2017
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1932, metadata !578) #9, !dbg !2007
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2018
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2019
  ret i8* %13, !dbg !2020
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2021 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1933, metadata !1939), !dbg !2028
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2025, metadata !578), !dbg !2031
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2026, metadata !578), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2027, metadata !578), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1966, metadata !578) #9, !dbg !2034
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1967, metadata !578) #9, !dbg !2035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1968, metadata !578) #9, !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1969, metadata !578) #9, !dbg !2037
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2038
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2038
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1970, metadata !578) #9, !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1938, metadata !578) #9, !dbg !2040
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2041
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2041
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1933, metadata !578) #9, !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1933, metadata !1949) #9, !dbg !2028
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2028
  %8 = icmp eq i32 %0, 10, !dbg !2042
  br i1 %8, label %9, label %10, !dbg !2043

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2044, !noalias !2045
  unreachable, !dbg !2044

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1933, metadata !1949) #9, !dbg !2028
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2048
  store i32 %0, i32* %11, align 8, !dbg !2048, !alias.scope !2045
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2048
  %13 = bitcast i32* %12 to i8*, !dbg !2048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2048
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2049
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1970, metadata !578) #9, !dbg !2039
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2050
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2051
  ret i8* %14, !dbg !2052
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2053 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2057, metadata !578), !dbg !2061
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2058, metadata !578), !dbg !2062
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2059, metadata !578), !dbg !2063
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2064
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2065, !tbaa.struct !2066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2060, metadata !578), !dbg !2067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !805, metadata !578), !dbg !2068
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !806, metadata !578), !dbg !2070
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !807, metadata !578), !dbg !2071
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !808, metadata !578), !dbg !2072
  %6 = lshr i8 %2, 5, !dbg !2073
  %7 = zext i8 %6 to i64, !dbg !2073
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2074
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !809, metadata !578), !dbg !2075
  %9 = and i8 %2, 31, !dbg !2076
  %10 = zext i8 %9 to i32, !dbg !2077
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !811, metadata !578), !dbg !2078
  %11 = load i32, i32* %8, align 4, !dbg !2079, !tbaa !633
  %12 = lshr i32 %11, %10, !dbg !2080
  %13 = and i32 %12, 1, !dbg !2081
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !812, metadata !578), !dbg !2082
  %14 = xor i32 %13, 1, !dbg !2083
  %15 = shl i32 %14, %10, !dbg !2084
  %16 = xor i32 %15, %11, !dbg !2085
  store i32 %16, i32* %8, align 4, !dbg !2085, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2060, metadata !578), !dbg !2067
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2086
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2087
  ret i8* %17, !dbg !2088
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2089 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2093, metadata !578), !dbg !2095
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2094, metadata !578), !dbg !2096
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2057, metadata !578) #9, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2058, metadata !578) #9, !dbg !2099
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2059, metadata !578) #9, !dbg !2100
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2101
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2101
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2102, !tbaa.struct !2066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2060, metadata !578) #9, !dbg !2103
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !805, metadata !578) #9, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !806, metadata !578) #9, !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !807, metadata !578) #9, !dbg !2107
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !808, metadata !578) #9, !dbg !2108
  %5 = lshr i8 %1, 5, !dbg !2109
  %6 = zext i8 %5 to i64, !dbg !2109
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2110
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !809, metadata !578) #9, !dbg !2111
  %8 = and i8 %1, 31, !dbg !2112
  %9 = zext i8 %8 to i32, !dbg !2113
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !811, metadata !578) #9, !dbg !2114
  %10 = load i32, i32* %7, align 4, !dbg !2115, !tbaa !633
  %11 = lshr i32 %10, %9, !dbg !2116
  %12 = and i32 %11, 1, !dbg !2117
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !812, metadata !578) #9, !dbg !2118
  %13 = xor i32 %12, 1, !dbg !2119
  %14 = shl i32 %13, %9, !dbg !2120
  %15 = xor i32 %14, %10, !dbg !2121
  store i32 %15, i32* %7, align 4, !dbg !2121, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2060, metadata !578) #9, !dbg !2103
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2122
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2123
  ret i8* %16, !dbg !2124
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2125 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2127, metadata !578), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2093, metadata !578) #9, !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2094, metadata !578) #9, !dbg !2131
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2057, metadata !578) #9, !dbg !2132
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2058, metadata !578) #9, !dbg !2134
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2059, metadata !578) #9, !dbg !2135
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2136
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2137, !tbaa.struct !2066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2060, metadata !578) #9, !dbg !2138
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !805, metadata !578) #9, !dbg !2139
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !806, metadata !578) #9, !dbg !2141
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !807, metadata !578) #9, !dbg !2142
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !808, metadata !578) #9, !dbg !2143
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2144
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !809, metadata !578) #9, !dbg !2145
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !811, metadata !578) #9, !dbg !2146
  %5 = load i32, i32* %4, align 4, !dbg !2147, !tbaa !633
  %6 = or i32 %5, 67108864, !dbg !2148
  store i32 %6, i32* %4, align 4, !dbg !2148, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2060, metadata !578) #9, !dbg !2138
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2149
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2150
  ret i8* %7, !dbg !2151
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2152 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2154, metadata !578), !dbg !2156
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2155, metadata !578), !dbg !2157
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2057, metadata !578) #9, !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2058, metadata !578) #9, !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2059, metadata !578) #9, !dbg !2161
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2162
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2163, !tbaa.struct !2066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2060, metadata !578) #9, !dbg !2164
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !805, metadata !578) #9, !dbg !2165
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !806, metadata !578) #9, !dbg !2167
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !807, metadata !578) #9, !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !808, metadata !578) #9, !dbg !2169
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2170
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !809, metadata !578) #9, !dbg !2171
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !811, metadata !578) #9, !dbg !2172
  %6 = load i32, i32* %5, align 4, !dbg !2173, !tbaa !633
  %7 = or i32 %6, 67108864, !dbg !2174
  store i32 %7, i32* %5, align 4, !dbg !2174, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2060, metadata !578) #9, !dbg !2164
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2175
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2176
  ret i8* %8, !dbg !2177
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2178 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1933, metadata !1939), !dbg !2184
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2180, metadata !578), !dbg !2186
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2181, metadata !578), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2182, metadata !578), !dbg !2188
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2189
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2189
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1938, metadata !578) #9, !dbg !2190
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2191
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2191
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1933, metadata !578) #9, !dbg !2184
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1933, metadata !1949) #9, !dbg !2184
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2184
  %9 = icmp eq i32 %1, 10, !dbg !2192
  br i1 %9, label %10, label %11, !dbg !2193

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2194, !noalias !2195
  unreachable, !dbg !2194

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1933, metadata !1949) #9, !dbg !2184
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2198
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2199
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2200
  store i32 %1, i32* %13, align 8, !dbg !2200
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2200
  %15 = bitcast i32* %14 to i8*, !dbg !2200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2200
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2183, metadata !578), !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !805, metadata !578), !dbg !2202
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !806, metadata !578), !dbg !2204
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !807, metadata !578), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !808, metadata !578), !dbg !2206
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2207
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !809, metadata !578), !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !811, metadata !578), !dbg !2209
  %17 = load i32, i32* %16, align 4, !dbg !2210, !tbaa !633
  %18 = or i32 %17, 67108864, !dbg !2211
  store i32 %18, i32* %16, align 4, !dbg !2211, !tbaa !633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2183, metadata !578), !dbg !2201
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2213
  ret i8* %19, !dbg !2214
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2215 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2219, metadata !578), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2220, metadata !578), !dbg !2224
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2221, metadata !578), !dbg !2225
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2222, metadata !578), !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2227, metadata !578) #9, !dbg !2237
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2232, metadata !578) #9, !dbg !2239
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2233, metadata !578) #9, !dbg !2240
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2234, metadata !578) #9, !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2235, metadata !578) #9, !dbg !2242
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2243
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2244, !tbaa.struct !2066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2236, metadata !578) #9, !dbg !2245
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !854, metadata !578) #9, !dbg !2246
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !855, metadata !578) #9, !dbg !2248
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !856, metadata !578) #9, !dbg !2249
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !854, metadata !578) #9, !dbg !2246
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !854, metadata !578) #9, !dbg !2246
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2250
  store i32 10, i32* %7, align 8, !dbg !2251, !tbaa !786
  %8 = icmp ne i8* %1, null, !dbg !2252
  %9 = icmp ne i8* %2, null, !dbg !2253
  %10 = and i1 %8, %9, !dbg !2254
  br i1 %10, label %12, label %11, !dbg !2254

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2255
  unreachable, !dbg !2255

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2256
  store i8* %1, i8** %13, align 8, !dbg !2257, !tbaa !872
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2258
  store i8* %2, i8** %14, align 8, !dbg !2259, !tbaa !875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2236, metadata !578) #9, !dbg !2245
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2261
  ret i8* %15, !dbg !2262
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2228 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2227, metadata !578), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2232, metadata !578), !dbg !2264
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2233, metadata !578), !dbg !2265
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2234, metadata !578), !dbg !2266
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2235, metadata !578), !dbg !2267
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2268
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2268
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2269, !tbaa.struct !2066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2236, metadata !578), !dbg !2270
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !854, metadata !578) #9, !dbg !2271
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !855, metadata !578) #9, !dbg !2273
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !856, metadata !578) #9, !dbg !2274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !854, metadata !578) #9, !dbg !2271
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !854, metadata !578) #9, !dbg !2271
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2275
  store i32 10, i32* %8, align 8, !dbg !2276, !tbaa !786
  %9 = icmp ne i8* %1, null, !dbg !2277
  %10 = icmp ne i8* %2, null, !dbg !2278
  %11 = and i1 %9, %10, !dbg !2279
  br i1 %11, label %13, label %12, !dbg !2279

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2280
  unreachable, !dbg !2280

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2281
  store i8* %1, i8** %14, align 8, !dbg !2282, !tbaa !872
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2283
  store i8* %2, i8** %15, align 8, !dbg !2284, !tbaa !875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2236, metadata !578), !dbg !2270
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2285
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2286
  ret i8* %16, !dbg !2287
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2288 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2292, metadata !578), !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2293, metadata !578), !dbg !2296
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2294, metadata !578), !dbg !2297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2219, metadata !578) #9, !dbg !2298
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2220, metadata !578) #9, !dbg !2300
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2221, metadata !578) #9, !dbg !2301
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2222, metadata !578) #9, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2227, metadata !578) #9, !dbg !2303
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2232, metadata !578) #9, !dbg !2305
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2233, metadata !578) #9, !dbg !2306
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2234, metadata !578) #9, !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2235, metadata !578) #9, !dbg !2308
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2309
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2310, !tbaa.struct !2066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2236, metadata !578) #9, !dbg !2311
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !854, metadata !578) #9, !dbg !2312
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !855, metadata !578) #9, !dbg !2314
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !856, metadata !578) #9, !dbg !2315
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !854, metadata !578) #9, !dbg !2312
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !854, metadata !578) #9, !dbg !2312
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2316
  store i32 10, i32* %6, align 8, !dbg !2317, !tbaa !786
  %7 = icmp ne i8* %0, null, !dbg !2318
  %8 = icmp ne i8* %1, null, !dbg !2319
  %9 = and i1 %7, %8, !dbg !2320
  br i1 %9, label %11, label %10, !dbg !2320

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2321
  unreachable, !dbg !2321

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2322
  store i8* %0, i8** %12, align 8, !dbg !2323, !tbaa !872
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2324
  store i8* %1, i8** %13, align 8, !dbg !2325, !tbaa !875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2236, metadata !578) #9, !dbg !2311
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2326
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2327
  ret i8* %14, !dbg !2328
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2329 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2333, metadata !578), !dbg !2337
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2334, metadata !578), !dbg !2338
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2335, metadata !578), !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2336, metadata !578), !dbg !2340
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2227, metadata !578) #9, !dbg !2341
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2232, metadata !578) #9, !dbg !2343
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2233, metadata !578) #9, !dbg !2344
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2234, metadata !578) #9, !dbg !2345
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2235, metadata !578) #9, !dbg !2346
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2347
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2348, !tbaa.struct !2066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2236, metadata !578) #9, !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !854, metadata !578) #9, !dbg !2350
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !855, metadata !578) #9, !dbg !2352
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !856, metadata !578) #9, !dbg !2353
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !854, metadata !578) #9, !dbg !2350
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !854, metadata !578) #9, !dbg !2350
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2354
  store i32 10, i32* %7, align 8, !dbg !2355, !tbaa !786
  %8 = icmp ne i8* %0, null, !dbg !2356
  %9 = icmp ne i8* %1, null, !dbg !2357
  %10 = and i1 %8, %9, !dbg !2358
  br i1 %10, label %12, label %11, !dbg !2358

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2359
  unreachable, !dbg !2359

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2360
  store i8* %0, i8** %13, align 8, !dbg !2361, !tbaa !872
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2362
  store i8* %1, i8** %14, align 8, !dbg !2363, !tbaa !875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2236, metadata !578) #9, !dbg !2349
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2364
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2365
  ret i8* %15, !dbg !2366
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2367 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2371, metadata !578), !dbg !2374
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2372, metadata !578), !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2373, metadata !578), !dbg !2376
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2377
  ret i8* %4, !dbg !2378
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2379 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2383, metadata !578), !dbg !2385
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2384, metadata !578), !dbg !2386
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2371, metadata !578) #9, !dbg !2387
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2372, metadata !578) #9, !dbg !2389
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2373, metadata !578) #9, !dbg !2390
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2391
  ret i8* %3, !dbg !2392
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2393 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2397, metadata !578), !dbg !2399
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2398, metadata !578), !dbg !2400
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2371, metadata !578) #9, !dbg !2401
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2372, metadata !578) #9, !dbg !2403
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2373, metadata !578) #9, !dbg !2404
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2405
  ret i8* %3, !dbg !2406
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2407 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2411, metadata !578), !dbg !2412
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2397, metadata !578) #9, !dbg !2413
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2398, metadata !578) #9, !dbg !2415
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2371, metadata !578) #9, !dbg !2416
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2372, metadata !578) #9, !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2373, metadata !578) #9, !dbg !2419
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2420
  ret i8* %2, !dbg !2421
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2422 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2482, metadata !578), !dbg !2488
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2483, metadata !578), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2484, metadata !578), !dbg !2490
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2485, metadata !578), !dbg !2491
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2486, metadata !578), !dbg !2492
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2487, metadata !578), !dbg !2493
  %7 = icmp eq i8* %1, null, !dbg !2494
  br i1 %7, label %10, label %8, !dbg !2496

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2497
  br label %12, !dbg !2497

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2498
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i32 5) #9, !dbg !2499
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2499
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.58, i64 0, i64 0), i32 5) #9, !dbg !2500
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2500
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
  ], !dbg !2501

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2502
  unreachable, !dbg !2502

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.59, i64 0, i64 0), i32 5) #9, !dbg !2504
  %20 = load i8*, i8** %4, align 8, !dbg !2504, !tbaa !585
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2504
  br label %146, !dbg !2505

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.60, i64 0, i64 0), i32 5) #9, !dbg !2506
  %24 = load i8*, i8** %4, align 8, !dbg !2506, !tbaa !585
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2506
  %26 = load i8*, i8** %25, align 8, !dbg !2506, !tbaa !585
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2506
  br label %146, !dbg !2507

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.61, i64 0, i64 0), i32 5) #9, !dbg !2508
  %30 = load i8*, i8** %4, align 8, !dbg !2508, !tbaa !585
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2508
  %32 = load i8*, i8** %31, align 8, !dbg !2508, !tbaa !585
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2508
  %34 = load i8*, i8** %33, align 8, !dbg !2508, !tbaa !585
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2508
  br label %146, !dbg !2509

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.62, i64 0, i64 0), i32 5) #9, !dbg !2510
  %38 = load i8*, i8** %4, align 8, !dbg !2510, !tbaa !585
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2510
  %40 = load i8*, i8** %39, align 8, !dbg !2510, !tbaa !585
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2510
  %42 = load i8*, i8** %41, align 8, !dbg !2510, !tbaa !585
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2510
  %44 = load i8*, i8** %43, align 8, !dbg !2510, !tbaa !585
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2510
  br label %146, !dbg !2511

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.63, i64 0, i64 0), i32 5) #9, !dbg !2512
  %48 = load i8*, i8** %4, align 8, !dbg !2512, !tbaa !585
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2512
  %50 = load i8*, i8** %49, align 8, !dbg !2512, !tbaa !585
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2512
  %52 = load i8*, i8** %51, align 8, !dbg !2512, !tbaa !585
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2512
  %54 = load i8*, i8** %53, align 8, !dbg !2512, !tbaa !585
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2512
  %56 = load i8*, i8** %55, align 8, !dbg !2512, !tbaa !585
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2512
  br label %146, !dbg !2513

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.64, i64 0, i64 0), i32 5) #9, !dbg !2514
  %60 = load i8*, i8** %4, align 8, !dbg !2514, !tbaa !585
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2514
  %62 = load i8*, i8** %61, align 8, !dbg !2514, !tbaa !585
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2514
  %64 = load i8*, i8** %63, align 8, !dbg !2514, !tbaa !585
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2514
  %66 = load i8*, i8** %65, align 8, !dbg !2514, !tbaa !585
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2514
  %68 = load i8*, i8** %67, align 8, !dbg !2514, !tbaa !585
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2514
  %70 = load i8*, i8** %69, align 8, !dbg !2514, !tbaa !585
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2514
  br label %146, !dbg !2515

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.65, i64 0, i64 0), i32 5) #9, !dbg !2516
  %74 = load i8*, i8** %4, align 8, !dbg !2516, !tbaa !585
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2516
  %76 = load i8*, i8** %75, align 8, !dbg !2516, !tbaa !585
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2516
  %78 = load i8*, i8** %77, align 8, !dbg !2516, !tbaa !585
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2516
  %80 = load i8*, i8** %79, align 8, !dbg !2516, !tbaa !585
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2516
  %82 = load i8*, i8** %81, align 8, !dbg !2516, !tbaa !585
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2516
  %84 = load i8*, i8** %83, align 8, !dbg !2516, !tbaa !585
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2516
  %86 = load i8*, i8** %85, align 8, !dbg !2516, !tbaa !585
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2516
  br label %146, !dbg !2517

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.66, i64 0, i64 0), i32 5) #9, !dbg !2518
  %90 = load i8*, i8** %4, align 8, !dbg !2518, !tbaa !585
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2518
  %92 = load i8*, i8** %91, align 8, !dbg !2518, !tbaa !585
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2518
  %94 = load i8*, i8** %93, align 8, !dbg !2518, !tbaa !585
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2518
  %96 = load i8*, i8** %95, align 8, !dbg !2518, !tbaa !585
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2518
  %98 = load i8*, i8** %97, align 8, !dbg !2518, !tbaa !585
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2518
  %100 = load i8*, i8** %99, align 8, !dbg !2518, !tbaa !585
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2518
  %102 = load i8*, i8** %101, align 8, !dbg !2518, !tbaa !585
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2518
  %104 = load i8*, i8** %103, align 8, !dbg !2518, !tbaa !585
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2518
  br label %146, !dbg !2519

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.67, i64 0, i64 0), i32 5) #9, !dbg !2520
  %108 = load i8*, i8** %4, align 8, !dbg !2520, !tbaa !585
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2520
  %110 = load i8*, i8** %109, align 8, !dbg !2520, !tbaa !585
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2520
  %112 = load i8*, i8** %111, align 8, !dbg !2520, !tbaa !585
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2520
  %114 = load i8*, i8** %113, align 8, !dbg !2520, !tbaa !585
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2520
  %116 = load i8*, i8** %115, align 8, !dbg !2520, !tbaa !585
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2520
  %118 = load i8*, i8** %117, align 8, !dbg !2520, !tbaa !585
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2520
  %120 = load i8*, i8** %119, align 8, !dbg !2520, !tbaa !585
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2520
  %122 = load i8*, i8** %121, align 8, !dbg !2520, !tbaa !585
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2520
  %124 = load i8*, i8** %123, align 8, !dbg !2520, !tbaa !585
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2520
  br label %146, !dbg !2521

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.68, i64 0, i64 0), i32 5) #9, !dbg !2522
  %128 = load i8*, i8** %4, align 8, !dbg !2522, !tbaa !585
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2522
  %130 = load i8*, i8** %129, align 8, !dbg !2522, !tbaa !585
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2522
  %132 = load i8*, i8** %131, align 8, !dbg !2522, !tbaa !585
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2522
  %134 = load i8*, i8** %133, align 8, !dbg !2522, !tbaa !585
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2522
  %136 = load i8*, i8** %135, align 8, !dbg !2522, !tbaa !585
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2522
  %138 = load i8*, i8** %137, align 8, !dbg !2522, !tbaa !585
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2522
  %140 = load i8*, i8** %139, align 8, !dbg !2522, !tbaa !585
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2522
  %142 = load i8*, i8** %141, align 8, !dbg !2522, !tbaa !585
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2522
  %144 = load i8*, i8** %143, align 8, !dbg !2522, !tbaa !585
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2522
  br label %146, !dbg !2523

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2525 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2529, metadata !578), !dbg !2535
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2530, metadata !578), !dbg !2536
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2531, metadata !578), !dbg !2537
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2532, metadata !578), !dbg !2538
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2533, metadata !578), !dbg !2539
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2534, metadata !578), !dbg !2540
  br label %6, !dbg !2541

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2534, metadata !578), !dbg !2540
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2543
  %9 = load i8*, i8** %8, align 8, !dbg !2543, !tbaa !585
  %10 = icmp eq i8* %9, null, !dbg !2545
  %11 = add i64 %7, 1, !dbg !2546
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2534, metadata !578), !dbg !2540
  br i1 %10, label %12, label %6, !dbg !2545, !llvm.loop !2547

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2549
  ret void, !dbg !2550
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2551 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2562, metadata !578), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2563, metadata !578), !dbg !2571
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2564, metadata !578), !dbg !2572
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2565, metadata !578), !dbg !2573
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2566, metadata !578), !dbg !2574
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2575
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2568, metadata !578), !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %11 = load i32, i32* %8, align 8, !dbg !2578
  %12 = icmp ult i32 %11, 41, !dbg !2578
  br i1 %12, label %13, label %18, !dbg !2578

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2578
  %15 = sext i32 %11 to i64, !dbg !2578
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2578
  %17 = add i32 %11, 8, !dbg !2578
  store i32 %17, i32* %8, align 8, !dbg !2578
  br label %21, !dbg !2578

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2578
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2578
  store i8* %20, i8** %10, align 8, !dbg !2578
  br label %21, !dbg !2578

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2578
  %25 = load i8*, i8** %24, align 8, !dbg !2578
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2581
  store i8* %25, i8** %26, align 16, !dbg !2582, !tbaa !585
  %27 = icmp eq i8* %25, null, !dbg !2583
  br i1 %27, label %30, label %28, !dbg !2584

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %29 = icmp ult i32 %22, 41, !dbg !2578
  br i1 %29, label %35, label %32, !dbg !2578

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2585
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2586
  ret void, !dbg !2586

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2578
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2578
  store i8* %34, i8** %10, align 8, !dbg !2578
  br label %40, !dbg !2578

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2578
  %37 = sext i32 %22 to i64, !dbg !2578
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2578
  %39 = add i32 %22, 8, !dbg !2578
  store i32 %39, i32* %8, align 8, !dbg !2578
  br label %40, !dbg !2578

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2578
  %44 = load i8*, i8** %43, align 8, !dbg !2578
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2581
  store i8* %44, i8** %45, align 8, !dbg !2582, !tbaa !585
  %46 = icmp eq i8* %44, null, !dbg !2583
  br i1 %46, label %30, label %47, !dbg !2584

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %48 = icmp ult i32 %41, 41, !dbg !2578
  br i1 %48, label %52, label %49, !dbg !2578

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2578
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2578
  store i8* %51, i8** %10, align 8, !dbg !2578
  br label %57, !dbg !2578

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2578
  %54 = sext i32 %41 to i64, !dbg !2578
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2578
  %56 = add i32 %41, 8, !dbg !2578
  store i32 %56, i32* %8, align 8, !dbg !2578
  br label %57, !dbg !2578

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2578
  %61 = load i8*, i8** %60, align 8, !dbg !2578
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2581
  store i8* %61, i8** %62, align 16, !dbg !2582, !tbaa !585
  %63 = icmp eq i8* %61, null, !dbg !2583
  br i1 %63, label %30, label %64, !dbg !2584

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %65 = icmp ult i32 %58, 41, !dbg !2578
  br i1 %65, label %69, label %66, !dbg !2578

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2578
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2578
  store i8* %68, i8** %10, align 8, !dbg !2578
  br label %74, !dbg !2578

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2578
  %71 = sext i32 %58 to i64, !dbg !2578
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2578
  %73 = add i32 %58, 8, !dbg !2578
  store i32 %73, i32* %8, align 8, !dbg !2578
  br label %74, !dbg !2578

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2578
  %78 = load i8*, i8** %77, align 8, !dbg !2578
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2581
  store i8* %78, i8** %79, align 8, !dbg !2582, !tbaa !585
  %80 = icmp eq i8* %78, null, !dbg !2583
  br i1 %80, label %30, label %81, !dbg !2584

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %82 = icmp ult i32 %75, 41, !dbg !2578
  br i1 %82, label %86, label %83, !dbg !2578

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2578
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2578
  store i8* %85, i8** %10, align 8, !dbg !2578
  br label %91, !dbg !2578

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2578
  %88 = sext i32 %75 to i64, !dbg !2578
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2578
  %90 = add i32 %75, 8, !dbg !2578
  store i32 %90, i32* %8, align 8, !dbg !2578
  br label %91, !dbg !2578

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2578
  %95 = load i8*, i8** %94, align 8, !dbg !2578
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2581
  store i8* %95, i8** %96, align 16, !dbg !2582, !tbaa !585
  %97 = icmp eq i8* %95, null, !dbg !2583
  br i1 %97, label %30, label %98, !dbg !2584

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %99 = icmp ult i32 %92, 41, !dbg !2578
  br i1 %99, label %103, label %100, !dbg !2578

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2578
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2578
  store i8* %102, i8** %10, align 8, !dbg !2578
  br label %108, !dbg !2578

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2578
  %105 = sext i32 %92 to i64, !dbg !2578
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2578
  %107 = add i32 %92, 8, !dbg !2578
  store i32 %107, i32* %8, align 8, !dbg !2578
  br label %108, !dbg !2578

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2578
  %111 = load i8*, i8** %110, align 8, !dbg !2578
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2581
  store i8* %111, i8** %112, align 8, !dbg !2582, !tbaa !585
  %113 = icmp eq i8* %111, null, !dbg !2583
  br i1 %113, label %30, label %114, !dbg !2584

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %115 = load i8*, i8** %10, align 8, !dbg !2578
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2578
  store i8* %116, i8** %10, align 8, !dbg !2578
  %117 = bitcast i8* %115 to i8**, !dbg !2578
  %118 = load i8*, i8** %117, align 8, !dbg !2578
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2581
  store i8* %118, i8** %119, align 16, !dbg !2582, !tbaa !585
  %120 = icmp eq i8* %118, null, !dbg !2583
  br i1 %120, label %30, label %121, !dbg !2584

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %122 = load i8*, i8** %10, align 8, !dbg !2578
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2578
  store i8* %123, i8** %10, align 8, !dbg !2578
  %124 = bitcast i8* %122 to i8**, !dbg !2578
  %125 = load i8*, i8** %124, align 8, !dbg !2578
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2581
  store i8* %125, i8** %126, align 8, !dbg !2582, !tbaa !585
  %127 = icmp eq i8* %125, null, !dbg !2583
  br i1 %127, label %30, label %128, !dbg !2584

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %129 = load i8*, i8** %10, align 8, !dbg !2578
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2578
  store i8* %130, i8** %10, align 8, !dbg !2578
  %131 = bitcast i8* %129 to i8**, !dbg !2578
  %132 = load i8*, i8** %131, align 8, !dbg !2578
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2581
  store i8* %132, i8** %133, align 16, !dbg !2582, !tbaa !585
  %134 = icmp eq i8* %132, null, !dbg !2583
  br i1 %134, label %30, label %135, !dbg !2584

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2567, metadata !578), !dbg !2577
  %136 = load i8*, i8** %10, align 8, !dbg !2578
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2578
  store i8* %137, i8** %10, align 8, !dbg !2578
  %138 = bitcast i8* %136 to i8**, !dbg !2578
  %139 = load i8*, i8** %138, align 8, !dbg !2578
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2581
  store i8* %139, i8** %140, align 8, !dbg !2582, !tbaa !585
  %141 = icmp eq i8* %139, null, !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2567, metadata !578), !dbg !2577
  %142 = select i1 %141, i64 9, i64 10, !dbg !2584
  br label %30, !dbg !2584
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2587 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2591, metadata !578), !dbg !2602
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2592, metadata !578), !dbg !2603
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2593, metadata !578), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2594, metadata !578), !dbg !2605
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2606
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2606
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2595, metadata !578), !dbg !2607
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2608
  call void @llvm.va_start(i8* nonnull %6), !dbg !2608
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2609
  call void @llvm.va_end(i8* nonnull %6), !dbg !2610
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2611
  ret void, !dbg !2611
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2612 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.71, i64 0, i64 0), i32 5) #9, !dbg !2613
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.72, i64 0, i64 0)) #9, !dbg !2613
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !2614
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.74, i64 0, i64 0)) #9, !dbg !2614
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !2615
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2615, !tbaa !585
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2615
  ret void, !dbg !2616
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2617 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2621, metadata !578), !dbg !2623
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2622, metadata !578), !dbg !2624
  %3 = udiv i64 9223372036854775807, %1, !dbg !2625
  %4 = icmp ult i64 %3, %0, !dbg !2625
  br i1 %4, label %5, label %6, !dbg !2627

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2628
  unreachable, !dbg !2628

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2630, metadata !578) #9, !dbg !2637
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2636, metadata !578) #9, !dbg !2640
  %9 = icmp eq i8* %8, null, !dbg !2641
  %10 = icmp ne i64 %7, 0, !dbg !2643
  %11 = and i1 %10, %9, !dbg !2644
  br i1 %11, label %12, label %13, !dbg !2644

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2645
  unreachable, !dbg !2645

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2646
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2631 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2630, metadata !578), !dbg !2647
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2648
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2636, metadata !578), !dbg !2649
  %3 = icmp eq i8* %2, null, !dbg !2650
  %4 = icmp ne i64 %0, 0, !dbg !2651
  %5 = and i1 %4, %3, !dbg !2652
  br i1 %5, label %6, label %7, !dbg !2652

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2653
  unreachable, !dbg !2653

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2654
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2655 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2659, metadata !578), !dbg !2662
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2660, metadata !578), !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2661, metadata !578), !dbg !2664
  %4 = udiv i64 9223372036854775807, %2, !dbg !2665
  %5 = icmp ult i64 %4, %1, !dbg !2665
  br i1 %5, label %6, label %7, !dbg !2667

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2668
  unreachable, !dbg !2668

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !578) #9, !dbg !2676
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2675, metadata !578) #9, !dbg !2678
  %9 = icmp eq i64 %8, 0, !dbg !2679
  %10 = icmp ne i8* %0, null, !dbg !2681
  %11 = and i1 %10, %9, !dbg !2682
  br i1 %11, label %12, label %13, !dbg !2682

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !2683
  br label %19, !dbg !2685

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !2686
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2670, metadata !578) #9, !dbg !2676
  %15 = icmp eq i8* %14, null, !dbg !2687
  %16 = icmp ne i64 %8, 0, !dbg !2689
  %17 = and i1 %16, %15, !dbg !2690
  br i1 %17, label %18, label %19, !dbg !2690

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2691
  unreachable, !dbg !2691

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2692
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2671 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !578), !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2675, metadata !578), !dbg !2694
  %3 = icmp eq i64 %1, 0, !dbg !2695
  %4 = icmp ne i8* %0, null, !dbg !2696
  %5 = and i1 %4, %3, !dbg !2697
  br i1 %5, label %6, label %7, !dbg !2697

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !2698
  br label %13, !dbg !2699

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2670, metadata !578), !dbg !2693
  %9 = icmp eq i8* %8, null, !dbg !2701
  %10 = icmp ne i64 %1, 0, !dbg !2702
  %11 = and i1 %10, %9, !dbg !2703
  br i1 %11, label %12, label %13, !dbg !2703

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2704
  unreachable, !dbg !2704

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2705
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !538 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !543, metadata !578), !dbg !2706
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !544, metadata !578), !dbg !2707
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !545, metadata !578), !dbg !2708
  %4 = load i64, i64* %1, align 8, !dbg !2709, !tbaa !1743
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !546, metadata !578), !dbg !2710
  %5 = icmp eq i8* %0, null, !dbg !2711
  br i1 %5, label %6, label %13, !dbg !2713

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2714
  br i1 %7, label %8, label %17, !dbg !2717

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !546, metadata !578), !dbg !2710
  %10 = icmp ugt i64 %2, 128, !dbg !2720
  %11 = zext i1 %10 to i64, !dbg !2720
  %12 = add nuw nsw i64 %9, %11, !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !546, metadata !578), !dbg !2710
  br label %17, !dbg !2722

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2723
  %15 = icmp ugt i64 %14, %4, !dbg !2726
  br i1 %15, label %20, label %16, !dbg !2727

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2728
  unreachable, !dbg !2728

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !546, metadata !578), !dbg !2710
  store i64 %18, i64* %1, align 8, !dbg !2729, !tbaa !1743
  %19 = mul i64 %18, %2, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !578) #9, !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2675, metadata !578) #9, !dbg !2733
  br label %27, !dbg !2734

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2735
  %22 = add i64 %4, 1, !dbg !2736
  %23 = add i64 %22, %21, !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !546, metadata !578), !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !546, metadata !578), !dbg !2710
  store i64 %23, i64* %1, align 8, !dbg !2729, !tbaa !1743
  %24 = mul i64 %23, %2, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !578) #9, !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2675, metadata !578) #9, !dbg !2733
  %25 = icmp eq i64 %24, 0, !dbg !2738
  br i1 %25, label %26, label %27, !dbg !2734

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !2739
  br label %34, !dbg !2740

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2670, metadata !578) #9, !dbg !2731
  %30 = icmp eq i8* %29, null, !dbg !2742
  %31 = icmp ne i64 %28, 0, !dbg !2743
  %32 = and i1 %31, %30, !dbg !2744
  br i1 %32, label %33, label %34, !dbg !2744

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2745
  unreachable, !dbg !2745

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2746
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2747 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2749, metadata !578), !dbg !2750
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2630, metadata !578) #9, !dbg !2751
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2636, metadata !578) #9, !dbg !2754
  %3 = icmp eq i8* %2, null, !dbg !2755
  %4 = icmp ne i64 %0, 0, !dbg !2756
  %5 = and i1 %4, %3, !dbg !2757
  br i1 %5, label %6, label %7, !dbg !2757

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2758
  unreachable, !dbg !2758

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2759
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2760 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2764, metadata !578), !dbg !2766
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2765, metadata !578), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !543, metadata !578) #9, !dbg !2768
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !544, metadata !578) #9, !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !545, metadata !578) #9, !dbg !2771
  %3 = load i64, i64* %1, align 8, !dbg !2772, !tbaa !1743
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !546, metadata !578) #9, !dbg !2773
  %4 = icmp eq i8* %0, null, !dbg !2774
  br i1 %4, label %5, label %8, !dbg !2775

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !546, metadata !578) #9, !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !546, metadata !578) #9, !dbg !2773
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2777
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !546, metadata !578) #9, !dbg !2773
  store i64 %7, i64* %1, align 8, !dbg !2778, !tbaa !1743
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !578) #9, !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2675, metadata !578) #9, !dbg !2781
  br label %17, !dbg !2782

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2783
  br i1 %9, label %11, label %10, !dbg !2784

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2785
  unreachable, !dbg !2785

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2786
  %13 = add i64 %3, 1, !dbg !2787
  %14 = add i64 %13, %12, !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !546, metadata !578) #9, !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !546, metadata !578) #9, !dbg !2773
  store i64 %14, i64* %1, align 8, !dbg !2778, !tbaa !1743
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !578) #9, !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2675, metadata !578) #9, !dbg !2781
  %15 = icmp eq i64 %14, 0, !dbg !2789
  br i1 %15, label %16, label %17, !dbg !2782

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !2790
  br label %24, !dbg !2791

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !2792
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2670, metadata !578) #9, !dbg !2779
  %20 = icmp eq i8* %19, null, !dbg !2793
  %21 = icmp ne i64 %18, 0, !dbg !2794
  %22 = and i1 %21, %20, !dbg !2795
  br i1 %22, label %23, label %24, !dbg !2795

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2796
  unreachable, !dbg !2796

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2798 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2800, metadata !578), !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2630, metadata !578) #9, !dbg !2802
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2804
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2636, metadata !578) #9, !dbg !2805
  %3 = icmp eq i8* %2, null, !dbg !2806
  %4 = icmp ne i64 %0, 0, !dbg !2807
  %5 = and i1 %4, %3, !dbg !2808
  br i1 %5, label %6, label %7, !dbg !2808

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2809
  unreachable, !dbg !2809

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2810
  ret i8* %2, !dbg !2811
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2812 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2814, metadata !578), !dbg !2817
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2815, metadata !578), !dbg !2818
  %3 = udiv i64 9223372036854775807, %1, !dbg !2819
  %4 = icmp ult i64 %3, %0, !dbg !2819
  br i1 %4, label %8, label %5, !dbg !2821

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !2822
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2816, metadata !578), !dbg !2823
  %7 = icmp eq i8* %6, null, !dbg !2824
  br i1 %7, label %8, label %9, !dbg !2825

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2826
  unreachable, !dbg !2826

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2828 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2834, metadata !578), !dbg !2836
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2835, metadata !578), !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2630, metadata !578) #9, !dbg !2838
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !2840
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2636, metadata !578) #9, !dbg !2841
  %4 = icmp eq i8* %3, null, !dbg !2842
  %5 = icmp ne i64 %1, 0, !dbg !2843
  %6 = and i1 %5, %4, !dbg !2844
  br i1 %6, label %7, label %8, !dbg !2844

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2845
  unreachable, !dbg !2845

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2846
  ret i8* %3, !dbg !2847
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2848 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2850, metadata !578), !dbg !2851
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2852
  %3 = add i64 %2, 1, !dbg !2853
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2834, metadata !578) #9, !dbg !2854
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2835, metadata !578) #9, !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2630, metadata !578) #9, !dbg !2857
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !2859
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2636, metadata !578) #9, !dbg !2860
  %5 = icmp eq i8* %4, null, !dbg !2861
  %6 = icmp ne i64 %3, 0, !dbg !2862
  %7 = and i1 %6, %5, !dbg !2863
  br i1 %7, label %8, label %9, !dbg !2863

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2864
  unreachable, !dbg !2864

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !2865
  ret i8* %4, !dbg !2866
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2867 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2869, !tbaa !633
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.85, i64 0, i64 0), i32 5) #9, !dbg !2870
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i8* %2) #9, !dbg !2871
  tail call void @abort() #15, !dbg !2872
  unreachable, !dbg !2872
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2873 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2876, metadata !578), !dbg !2882
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2877, metadata !578), !dbg !2883
  %3 = icmp eq i64 %0, 0, !dbg !2884
  %4 = icmp eq i64 %1, 0, !dbg !2885
  %5 = or i1 %3, %4, !dbg !2886
  br i1 %5, label %12, label %6, !dbg !2886

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2887
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2879, metadata !578), !dbg !2888
  %8 = udiv i64 %7, %1, !dbg !2889
  %9 = icmp eq i64 %8, %0, !dbg !2891
  br i1 %9, label %12, label %10, !dbg !2892

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2893
  store i32 12, i32* %11, align 4, !dbg !2895, !tbaa !633
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2876, metadata !578), !dbg !2882
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2877, metadata !578), !dbg !2883
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !2896
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2878, metadata !578), !dbg !2897
  br label %16, !dbg !2898

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2899
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2900 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2917, metadata !578), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2918, metadata !578), !dbg !2927
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2919, metadata !578), !dbg !2928
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2920, metadata !578), !dbg !2929
  %6 = bitcast i32* %5 to i8*, !dbg !2930
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !2930
  %7 = icmp eq i32* %0, null, !dbg !2931
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2917, metadata !578), !dbg !2926
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2933
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2917, metadata !578), !dbg !2926
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !2934
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2921, metadata !578), !dbg !2935
  %10 = icmp ugt i64 %9, -3, !dbg !2936
  %11 = icmp ne i64 %2, 0, !dbg !2937
  %12 = and i1 %11, %10, !dbg !2938
  br i1 %12, label %13, label %18, !dbg !2938

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !2939
  br i1 %14, label %18, label %15, !dbg !2940

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2941, !tbaa !1007
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2923, metadata !578), !dbg !2942
  %17 = zext i8 %16 to i32, !dbg !2943
  store i32 %17, i32* %8, align 4, !dbg !2944, !tbaa !633
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !2945
  ret i64 %19, !dbg !2945
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !2946 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2991, metadata !578), !dbg !2996
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !2997
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2998, metadata !578), !dbg !3002
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3004
  %4 = load i32, i32* %3, align 8, !dbg !3004, !tbaa !3005
  %5 = and i32 %4, 32, !dbg !3004
  %6 = icmp eq i32 %5, 0, !dbg !3007
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3008
  %8 = icmp ne i32 %7, 0, !dbg !3009
  br i1 %6, label %9, label %19, !dbg !3010

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3012
  %11 = xor i1 %8, true, !dbg !3013
  %12 = or i1 %10, %11, !dbg !3013
  %13 = sext i1 %8 to i32, !dbg !3013
  br i1 %12, label %22, label %14, !dbg !3013

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3014
  %16 = load i32, i32* %15, align 4, !dbg !3014, !tbaa !633
  %17 = icmp ne i32 %16, 9, !dbg !3015
  %18 = sext i1 %17 to i32, !dbg !3016
  br label %22, !dbg !3016

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3017

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3019
  store i32 0, i32* %21, align 4, !dbg !3021, !tbaa !633
  br label %22, !dbg !3019

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3022
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3023 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3028, metadata !578), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3029, metadata !578), !dbg !3032
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3033
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3030, metadata !578), !dbg !3034
  %3 = icmp eq i8* %2, null, !dbg !3035
  br i1 %3, label %11, label %4, !dbg !3037

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i64 0, i64 0)) #14, !dbg !3038
  %6 = icmp eq i32 %5, 0, !dbg !3043
  br i1 %6, label %10, label %7, !dbg !3044

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i64 0, i64 0)) #14, !dbg !3045
  %9 = icmp eq i32 %8, 0, !dbg !3046
  br i1 %9, label %10, label %11, !dbg !3047

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3029, metadata !578), !dbg !3032
  br label %11, !dbg !3048

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3049
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3050 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3056, metadata !578), !dbg !3130
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3123, metadata !578), !dbg !3133
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3134
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3054, metadata !578), !dbg !3135
  %4 = icmp eq i8* %3, null, !dbg !3136
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), i8* %3, !dbg !3138
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3054, metadata !578), !dbg !3135
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3139, !tbaa !585
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3070, metadata !578) #9, !dbg !3140
  %7 = icmp eq i8* %6, null, !dbg !3141
  br i1 %7, label %8, label %123, !dbg !3142

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.100, i64 0, i64 0)) #9, !dbg !3143
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3071, metadata !578) #9, !dbg !3144
  %10 = icmp eq i8* %9, null, !dbg !3145
  br i1 %10, label %14, label %11, !dbg !3147

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3148, !tbaa !1007
  %13 = icmp eq i8 %12, 0, !dbg !3149
  br i1 %13, label %14, label %15, !dbg !3150

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3151

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.101, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3071, metadata !578) #9, !dbg !3144
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3152
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3074, metadata !578) #9, !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3076, metadata !578) #9, !dbg !3154
  %18 = icmp eq i64 %17, 0, !dbg !3155
  br i1 %18, label %24, label %19, !dbg !3156

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3157
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3157
  %22 = load i8, i8* %21, align 1, !dbg !3157, !tbaa !1007
  %23 = icmp ne i8 %22, 47, !dbg !3157
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3158
  %27 = add i64 %17, 14, !dbg !3159
  %28 = add i64 %27, %26, !dbg !3160
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3161
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3073, metadata !578) #9, !dbg !3162
  %30 = icmp eq i8* %29, null, !dbg !3163
  br i1 %30, label %121, label %31, !dbg !3163

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3164
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3167

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3168, !tbaa !1007
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3170
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.102, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3171
  br label %37, !dbg !3172

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3170
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.102, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3171
  br label %37, !dbg !3172

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3173
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3078, metadata !578) #9, !dbg !3174
  %39 = icmp slt i32 %38, 0, !dbg !3175
  br i1 %39, label %119, label %40, !dbg !3176

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.103, i64 0, i64 0)) #9, !dbg !3177
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3079, metadata !578) #9, !dbg !3178
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3179
  br i1 %42, label %43, label %45, !dbg !3180

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !3181
  br label %119, !dbg !3183

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3120, metadata !578) #9, !dbg !3184
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3121, metadata !578) #9, !dbg !3185
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3186

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3187

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3120, metadata !578) #9, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3121, metadata !578) #9, !dbg !3185
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3187
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3188
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3189, metadata !578) #9, !dbg !3194
  %54 = load i8*, i8** %48, align 8, !dbg !3196, !tbaa !3197
  %55 = load i8*, i8** %49, align 8, !dbg !3196, !tbaa !3198
  %56 = icmp ult i8* %54, %55, !dbg !3196
  br i1 %56, label %59, label %57, !dbg !3196, !prof !3199

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3196
  br label %63, !dbg !3196

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3196
  store i8* %60, i8** %48, align 8, !dbg !3196, !tbaa !3197
  %61 = load i8, i8* %54, align 1, !dbg !3196, !tbaa !1007
  %62 = zext i8 %61 to i32, !dbg !3196
  br label %63, !dbg !3196

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3122, metadata !578) #9, !dbg !3200
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3201, !llvm.loop !3202

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3207

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3189, metadata !578) #9, !dbg !3209
  %67 = load i8*, i8** %48, align 8, !dbg !3207, !tbaa !3197
  %68 = load i8*, i8** %49, align 8, !dbg !3207, !tbaa !3198
  %69 = icmp ult i8* %67, %68, !dbg !3207
  br i1 %69, label %72, label %70, !dbg !3207, !prof !3199

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3207
  br label %76, !dbg !3207

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3207
  store i8* %73, i8** %48, align 8, !dbg !3207, !tbaa !3197
  %74 = load i8, i8* %67, align 1, !dbg !3207, !tbaa !1007
  %75 = zext i8 %74 to i32, !dbg !3207
  br label %76, !dbg !3207

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3207
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3122, metadata !578) #9, !dbg !3200
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3210, !llvm.loop !3211

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !3214
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.104, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !3215
  %81 = icmp slt i32 %80, 2, !dbg !3217
  br i1 %81, label %112, label %82, !dbg !3218

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3127, metadata !578) #9, !dbg !3220
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3128, metadata !578) #9, !dbg !3222
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3129, metadata !578) #9, !dbg !3223
  %85 = icmp eq i64 %51, 0, !dbg !3224
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3226

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3121, metadata !578) #9, !dbg !3185
  %90 = add i64 %87, 2, !dbg !3227
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3120, metadata !578) #9, !dbg !3184
  br label %96, !dbg !3230

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3121, metadata !578) #9, !dbg !3185
  %94 = add i64 %93, 1, !dbg !3233
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3120, metadata !578) #9, !dbg !3184
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3120, metadata !578) #9, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3121, metadata !578) #9, !dbg !3185
  %99 = icmp eq i8* %98, null, !dbg !3235
  br i1 %99, label %100, label %102, !dbg !3237

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3121, metadata !578) #9, !dbg !3185
  call void @free(i8* %52) #9, !dbg !3238
  br label %112, !dbg !3240

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3241
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3241
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3242
  %104 = xor i64 %84, -1, !dbg !3243
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3243
  %106 = xor i64 %83, -1, !dbg !3244
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3245, metadata !578) #9, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3253, metadata !578) #9, !dbg !3254
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !3256
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !3257
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3245, metadata !578) #9, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3253, metadata !578) #9, !dbg !3258
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !3260
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3120, metadata !578) #9, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3121, metadata !578) #9, !dbg !3185
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3241
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3241
  br label %50, !dbg !3262, !llvm.loop !3211

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3241
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3241
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3263
  %116 = icmp eq i64 %113, 0, !dbg !3264
  br i1 %116, label %119, label %117, !dbg !3266

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3267
  store i8 0, i8* %118, align 1, !dbg !3269, !tbaa !1007
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3070, metadata !578) #9, !dbg !3140
  call void @free(i8* %29) #9, !dbg !3270
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3070, metadata !578) #9, !dbg !3140
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3271, !tbaa !585
  br label %123, !dbg !3272

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3070, metadata !578) #9, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3055, metadata !578), !dbg !3273
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3055, metadata !578), !dbg !3273
  %125 = load i8, i8* %124, align 1, !dbg !3274, !tbaa !1007
  %126 = icmp eq i8 %125, 0, !dbg !3276
  br i1 %126, label %152, label %127, !dbg !3277

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3278

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3055, metadata !578), !dbg !3273
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3278
  %132 = icmp eq i32 %131, 0, !dbg !3280
  br i1 %132, label %139, label %133, !dbg !3281

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3282
  br i1 %134, label %135, label %143, !dbg !3283

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3284
  %137 = load i8, i8* %136, align 1, !dbg !3284, !tbaa !1007
  %138 = icmp eq i8 %137, 0, !dbg !3285
  br i1 %138, label %139, label %143, !dbg !3286

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3287
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3289
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3290
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3054, metadata !578), !dbg !3135
  br label %152, !dbg !3291

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3292
  %145 = add i64 %144, 1, !dbg !3293
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3055, metadata !578), !dbg !3273
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3295
  %148 = add i64 %147, 1, !dbg !3296
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3297
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3055, metadata !578), !dbg !3273
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3055, metadata !578), !dbg !3273
  %150 = load i8, i8* %149, align 1, !dbg !3274, !tbaa !1007
  %151 = icmp eq i8 %150, 0, !dbg !3276
  br i1 %151, label %152, label %128, !dbg !3277, !llvm.loop !3298

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3054, metadata !578), !dbg !3135
  %154 = load i8, i8* %153, align 1, !dbg !3300, !tbaa !1007
  %155 = icmp eq i8 %154, 0, !dbg !3302
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i64 0, i64 0), i8* %153, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3054, metadata !578), !dbg !3135
  ret i8* %156, !dbg !3304
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3305 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3350, metadata !578), !dbg !3354
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3351, metadata !578), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3353, metadata !578), !dbg !3356
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3357
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3352, metadata !578), !dbg !3358
  %3 = icmp slt i32 %2, 0, !dbg !3359
  br i1 %3, label %4, label %6, !dbg !3361

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3362
  br label %24, !dbg !3363

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3364
  %8 = icmp eq i32 %7, 0, !dbg !3364
  br i1 %8, label %13, label %9, !dbg !3366

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3367
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3368
  %12 = icmp eq i64 %11, -1, !dbg !3369
  br i1 %12, label %16, label %13, !dbg !3370

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3371
  %15 = icmp eq i32 %14, 0, !dbg !3371
  br i1 %15, label %16, label %18, !dbg !3372

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3351, metadata !578), !dbg !3355
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3373
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3353, metadata !578), !dbg !3356
  br label %24, !dbg !3374

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3375
  %20 = load i32, i32* %19, align 4, !dbg !3375, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3351, metadata !578), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3351, metadata !578), !dbg !3355
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3373
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3353, metadata !578), !dbg !3356
  %22 = icmp eq i32 %20, 0, !dbg !3376
  br i1 %22, label %24, label %23, !dbg !3374

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3378, !tbaa !633
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3353, metadata !578), !dbg !3356
  br label %24, !dbg !3380

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3381
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3382 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3427, metadata !578), !dbg !3428
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3429
  br i1 %2, label %6, label %3, !dbg !3431

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3432
  %5 = icmp eq i32 %4, 0, !dbg !3432
  br i1 %5, label %6, label %8, !dbg !3433

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3434
  br label %17, !dbg !3435

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3436, metadata !578) #9, !dbg !3441
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3443
  %10 = load i32, i32* %9, align 8, !dbg !3443, !tbaa !3005
  %11 = and i32 %10, 256, !dbg !3445
  %12 = icmp eq i32 %11, 0, !dbg !3445
  br i1 %12, label %15, label %13, !dbg !3446

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3447
  br label %15, !dbg !3447

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3448
  br label %17, !dbg !3449

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3450
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3451 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3497, metadata !578), !dbg !3503
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3498, metadata !578), !dbg !3504
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3499, metadata !578), !dbg !3505
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3506
  %5 = load i8*, i8** %4, align 8, !dbg !3506, !tbaa !3198
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3507
  %7 = load i8*, i8** %6, align 8, !dbg !3507, !tbaa !3197
  %8 = icmp eq i8* %5, %7, !dbg !3508
  br i1 %8, label %9, label %28, !dbg !3509

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3510
  %11 = load i8*, i8** %10, align 8, !dbg !3510, !tbaa !3511
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3512
  %13 = load i8*, i8** %12, align 8, !dbg !3512, !tbaa !3513
  %14 = icmp eq i8* %11, %13, !dbg !3514
  br i1 %14, label %15, label %28, !dbg !3515

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3516
  %17 = load i8*, i8** %16, align 8, !dbg !3516, !tbaa !3517
  %18 = icmp eq i8* %17, null, !dbg !3518
  br i1 %18, label %19, label %28, !dbg !3519

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3520
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3500, metadata !578), !dbg !3522
  %22 = icmp eq i64 %21, -1, !dbg !3523
  br i1 %22, label %30, label %23, !dbg !3525

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3526
  %25 = load i32, i32* %24, align 8, !dbg !3527, !tbaa !3005
  %26 = and i32 %25, -17, !dbg !3527
  store i32 %26, i32* %24, align 8, !dbg !3527, !tbaa !3005
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3528
  store i64 %21, i64* %27, align 8, !dbg !3529, !tbaa !3530
  br label %30, !dbg !3531

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3532
  br label %30, !dbg !3533

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3534
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

!llvm.dbg.cu = !{!2, !54, !60, !68, !75, !82, !525, !169, !533, !550, !552, !554, !557, !559, !178, !561, !563, !565}
!llvm.ident = !{!567, !567, !567, !567, !567, !567, !567, !567, !567, !567, !567, !567, !567, !567, !567, !567, !567, !567}
!llvm.module.flags = !{!568, !569, !570, !571, !572}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "silent", scope: !2, file: !3, line: 46, type: !51, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !9, globals: !13)
!3 = !DIFile(filename: "src/tty.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 34, size: 32, elements: !6)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "TTY_FAILURE", value: 2)
!8 = !DIEnumerator(name: "TTY_WRITE_ERROR", value: 3)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0, !14, !36}
!14 = !DIGlobalVariableExpression(var: !15)
!15 = distinct !DIGlobalVariable(name: "infomap", scope: !16, file: !17, line: 632, type: !33, isLocal: true, isDefinition: true)
!16 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !17, file: !17, line: 630, type: !18, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !22)
!17 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!22 = !{!23, !24, !25, !32}
!23 = !DILocalVariable(name: "program", arg: 1, scope: !16, file: !17, line: 630, type: !20)
!24 = !DILocalVariable(name: "node", scope: !16, file: !17, line: 642, type: !20)
!25 = !DILocalVariable(name: "map_prog", scope: !16, file: !17, line: 643, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !16, file: !17, line: 632, size: 128, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !28, file: !17, line: 632, baseType: !20, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !28, file: !17, line: 632, baseType: !20, size: 64, offset: 64)
!32 = !DILocalVariable(name: "lc_messages", scope: !16, file: !17, line: 655, type: !20)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 896, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 7)
!36 = !DIGlobalVariableExpression(var: !37)
!37 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 48, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1280, elements: !49)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !41, line: 50, size: 256, elements: !42)
!41 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !{!43, !44, !46, !48}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 52, baseType: !20, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !40, file: !41, line: 55, baseType: !45, size: 32, offset: 64)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !40, file: !41, line: 56, baseType: !47, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !40, file: !41, line: 57, baseType: !45, size: 32, offset: 192)
!49 = !{!50}
!50 = !DISubrange(count: 5)
!51 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "Version", scope: !54, file: !55, line: 2, type: !20, isLocal: false, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !57)
!55 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !{}
!57 = !{!52}
!58 = !DIGlobalVariableExpression(var: !59)
!59 = distinct !DIGlobalVariable(name: "file_name", scope: !60, file: !65, line: 36, type: !20, isLocal: true, isDefinition: true)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !62)
!61 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!62 = !{!58, !63}
!63 = !DIGlobalVariableExpression(var: !64)
!64 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !60, file: !65, line: 46, type: !51, isLocal: true, isDefinition: true)
!65 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "exit_failure", scope: !68, file: !71, line: 24, type: !72, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !70)
!69 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!70 = !{!66}
!71 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "program_name", scope: !75, file: !79, line: 33, type: !20, isLocal: false, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !77, globals: !78)
!76 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !{!12, !10}
!78 = !{!73}
!79 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !82, file: !127, line: 77, type: !163, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !119, globals: !124)
!83 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{!85, !99, !104}
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !86, line: 32, size: 32, elements: !87)
!86 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!88 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!89 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!90 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!91 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!92 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!93 = !DIEnumerator(name: "c_quoting_style", value: 5)
!94 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!95 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!96 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!97 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!98 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !86, line: 242, size: 32, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!102 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!103 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 46, size: 32, elements: !106)
!105 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!107 = !DIEnumerator(name: "_ISupper", value: 256)
!108 = !DIEnumerator(name: "_ISlower", value: 512)
!109 = !DIEnumerator(name: "_ISalpha", value: 1024)
!110 = !DIEnumerator(name: "_ISdigit", value: 2048)
!111 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!112 = !DIEnumerator(name: "_ISspace", value: 8192)
!113 = !DIEnumerator(name: "_ISprint", value: 16384)
!114 = !DIEnumerator(name: "_ISgraph", value: 32768)
!115 = !DIEnumerator(name: "_ISblank", value: 1)
!116 = !DIEnumerator(name: "_IScntrl", value: 2)
!117 = !DIEnumerator(name: "_ISpunct", value: 4)
!118 = !DIEnumerator(name: "_ISalnum", value: 8)
!119 = !{!45, !120, !121, !10}
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 62, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !{!80, !125, !132, !145, !147, !152, !159, !161}
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !82, file: !127, line: 93, type: !128, isLocal: false, isDefinition: true)
!127 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 320, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!130 = !{!131}
!131 = !DISubrange(count: 10)
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !82, file: !127, line: 1043, type: !134, isLocal: false, isDefinition: true)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !127, line: 57, size: 448, elements: !135)
!135 = !{!136, !137, !138, !143, !144}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !134, file: !127, line: 60, baseType: !85, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !127, line: 63, baseType: !45, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !134, file: !127, line: 67, baseType: !139, size: 256, offset: 64)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !141)
!140 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !134, file: !127, line: 70, baseType: !20, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !134, file: !127, line: 73, baseType: !20, size: 64, offset: 384)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !82, file: !127, line: 108, type: !134, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "slot0", scope: !82, file: !127, line: 834, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 256)
!152 = !DIGlobalVariableExpression(var: !153)
!153 = distinct !DIGlobalVariable(name: "slotvec", scope: !82, file: !127, line: 837, type: !154, isLocal: true, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !127, line: 826, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !127, line: 828, baseType: !121, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !155, file: !127, line: 829, baseType: !10, size: 64, offset: 64)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "nslots", scope: !82, file: !127, line: 835, type: !45, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "slotvec0", scope: !82, file: !127, line: 836, type: !155, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 704, elements: !165)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!165 = !{!166}
!166 = !DISubrange(count: 11)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !169, file: !172, line: 26, type: !173, isLocal: false, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !171)
!170 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!171 = !{!167}
!172 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 376, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 47)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !178, file: !523, line: 120, type: !524, isLocal: true, isDefinition: true)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !519, globals: !522)
!179 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!180 = !{!181}
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 41, size: 32, elements: !183)
!182 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!184 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!185 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!186 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!187 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!188 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!189 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!190 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!191 = !DIEnumerator(name: "DAY_1", value: 131079)
!192 = !DIEnumerator(name: "DAY_2", value: 131080)
!193 = !DIEnumerator(name: "DAY_3", value: 131081)
!194 = !DIEnumerator(name: "DAY_4", value: 131082)
!195 = !DIEnumerator(name: "DAY_5", value: 131083)
!196 = !DIEnumerator(name: "DAY_6", value: 131084)
!197 = !DIEnumerator(name: "DAY_7", value: 131085)
!198 = !DIEnumerator(name: "ABMON_1", value: 131086)
!199 = !DIEnumerator(name: "ABMON_2", value: 131087)
!200 = !DIEnumerator(name: "ABMON_3", value: 131088)
!201 = !DIEnumerator(name: "ABMON_4", value: 131089)
!202 = !DIEnumerator(name: "ABMON_5", value: 131090)
!203 = !DIEnumerator(name: "ABMON_6", value: 131091)
!204 = !DIEnumerator(name: "ABMON_7", value: 131092)
!205 = !DIEnumerator(name: "ABMON_8", value: 131093)
!206 = !DIEnumerator(name: "ABMON_9", value: 131094)
!207 = !DIEnumerator(name: "ABMON_10", value: 131095)
!208 = !DIEnumerator(name: "ABMON_11", value: 131096)
!209 = !DIEnumerator(name: "ABMON_12", value: 131097)
!210 = !DIEnumerator(name: "MON_1", value: 131098)
!211 = !DIEnumerator(name: "MON_2", value: 131099)
!212 = !DIEnumerator(name: "MON_3", value: 131100)
!213 = !DIEnumerator(name: "MON_4", value: 131101)
!214 = !DIEnumerator(name: "MON_5", value: 131102)
!215 = !DIEnumerator(name: "MON_6", value: 131103)
!216 = !DIEnumerator(name: "MON_7", value: 131104)
!217 = !DIEnumerator(name: "MON_8", value: 131105)
!218 = !DIEnumerator(name: "MON_9", value: 131106)
!219 = !DIEnumerator(name: "MON_10", value: 131107)
!220 = !DIEnumerator(name: "MON_11", value: 131108)
!221 = !DIEnumerator(name: "MON_12", value: 131109)
!222 = !DIEnumerator(name: "AM_STR", value: 131110)
!223 = !DIEnumerator(name: "PM_STR", value: 131111)
!224 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!225 = !DIEnumerator(name: "D_FMT", value: 131113)
!226 = !DIEnumerator(name: "T_FMT", value: 131114)
!227 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!228 = !DIEnumerator(name: "ERA", value: 131116)
!229 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!230 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!231 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!232 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!233 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!234 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!235 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!236 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!237 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!238 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!239 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!240 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!241 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!242 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!243 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!244 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!245 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!246 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!247 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!248 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!249 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!250 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!251 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!252 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!253 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!254 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!255 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!256 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!257 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!258 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!259 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!260 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!261 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!262 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!263 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!264 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!265 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!266 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!267 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!268 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!269 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!270 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!271 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!272 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!273 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!274 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!275 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!276 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!277 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!278 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!279 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!280 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!281 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!282 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!283 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!284 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!285 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!286 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!287 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!288 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!289 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!290 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!291 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!292 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!293 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!294 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!295 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!296 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!297 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!298 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!299 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!300 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!301 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!302 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!303 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!304 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!305 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!306 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!307 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!308 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!309 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!310 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!311 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!312 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!313 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!314 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!315 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!316 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!317 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!318 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!319 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!320 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!321 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!322 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!323 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!324 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!325 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!326 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!327 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!328 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!329 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!330 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!331 = !DIEnumerator(name: "CODESET", value: 14)
!332 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!333 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!334 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!335 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!380 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!381 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!382 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!383 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!384 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!385 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!386 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!387 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!388 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!403 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!404 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!405 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!406 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!407 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!408 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!409 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!410 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!411 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!412 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!413 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!414 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!415 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!416 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!417 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!418 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!419 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!420 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!421 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!422 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!423 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!424 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!425 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!442 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!443 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!446 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!447 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!448 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!449 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!450 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!451 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!452 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!453 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!454 = !DIEnumerator(name: "THOUSEP", value: 65537)
!455 = !DIEnumerator(name: "__GROUPING", value: 65538)
!456 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!457 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!458 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!459 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!460 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!461 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!462 = !DIEnumerator(name: "__YESSTR", value: 327682)
!463 = !DIEnumerator(name: "__NOSTR", value: 327683)
!464 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!465 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!466 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!467 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!468 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!469 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!470 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!471 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!472 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!473 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!474 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!475 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!476 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!477 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!478 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!479 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!480 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!481 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!482 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!483 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!484 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!485 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!486 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!487 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!488 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!489 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!490 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!491 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!492 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!493 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!494 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!495 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!496 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!497 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!498 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!499 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!500 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!517 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!518 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!519 = !{!12, !10, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!522 = !{!176}
!523 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!524 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !527, retainedTypes: !532)
!526 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!527 = !{!528}
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !529, line: 41, size: 32, elements: !530)
!529 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!530 = !{!531}
!531 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!532 = !{!12}
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !535, retainedTypes: !549)
!534 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = !{!536}
!536 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !538, file: !537, line: 192, size: 32, elements: !547)
!537 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = distinct !DISubprogram(name: "x2nrealloc", scope: !537, file: !537, line: 180, type: !539, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !542)
!539 = !DISubroutineType(types: !540)
!540 = !{!12, !12, !541, !121}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!542 = !{!543, !544, !545, !546}
!543 = !DILocalVariable(name: "p", arg: 1, scope: !538, file: !537, line: 180, type: !12)
!544 = !DILocalVariable(name: "pn", arg: 2, scope: !538, file: !537, line: 180, type: !541)
!545 = !DILocalVariable(name: "s", arg: 3, scope: !538, file: !537, line: 180, type: !121)
!546 = !DILocalVariable(name: "n", scope: !538, file: !537, line: 182, type: !121)
!547 = !{!548}
!548 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!549 = !{!121, !10, !12}
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!551 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !532)
!553 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !556)
!555 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = !{!121}
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!558 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!560 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!562 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !532)
!564 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !532)
!566 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!568 = !{i32 2, !"Dwarf Version", i32 4}
!569 = !{i32 2, !"Debug Info Version", i32 3}
!570 = !{i32 1, !"wchar_size", i32 4}
!571 = !{i32 7, !"PIC Level", i32 2}
!572 = !{i32 7, !"PIE Level", i32 2}
!573 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 58, type: !574, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !45}
!576 = !{!577}
!577 = !DILocalVariable(name: "status", arg: 1, scope: !573, file: !3, line: 58, type: !45)
!578 = !DIExpression()
!579 = !DILocation(line: 58, column: 12, scope: !573)
!580 = !DILocation(line: 60, column: 14, scope: !581)
!581 = distinct !DILexicalBlock(scope: !573, file: !3, line: 60, column: 7)
!582 = !DILocation(line: 60, column: 7, scope: !573)
!583 = !DILocation(line: 61, column: 5, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !3, line: 61, column: 5)
!585 = !{!586, !586, i64 0}
!586 = !{!"any pointer", !587, i64 0}
!587 = !{!"omnipotent char", !588, i64 0}
!588 = !{!"Simple C/C++ TBAA"}
!589 = !DILocation(line: 64, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !581, file: !3, line: 63, column: 5)
!591 = !DILocation(line: 65, column: 7, scope: !590)
!592 = !DILocation(line: 70, column: 7, scope: !590)
!593 = !DILocation(line: 71, column: 7, scope: !590)
!594 = !DILocation(line: 642, column: 15, scope: !16, inlinedAt: !595)
!595 = distinct !DILocation(line: 72, column: 7, scope: !590)
!596 = !DILocation(line: 651, column: 3, scope: !16, inlinedAt: !595)
!597 = !DILocation(line: 655, column: 29, scope: !16, inlinedAt: !595)
!598 = !DILocation(line: 655, column: 15, scope: !16, inlinedAt: !595)
!599 = !DILocation(line: 656, column: 7, scope: !600, inlinedAt: !595)
!600 = distinct !DILexicalBlock(scope: !16, file: !17, line: 656, column: 7)
!601 = !DILocation(line: 656, column: 19, scope: !600, inlinedAt: !595)
!602 = !DILocation(line: 656, column: 22, scope: !600, inlinedAt: !595)
!603 = !DILocation(line: 656, column: 7, scope: !16, inlinedAt: !595)
!604 = !DILocation(line: 662, column: 7, scope: !605, inlinedAt: !595)
!605 = distinct !DILexicalBlock(scope: !600, file: !17, line: 657, column: 5)
!606 = !DILocation(line: 664, column: 5, scope: !605, inlinedAt: !595)
!607 = !DILocation(line: 665, column: 3, scope: !16, inlinedAt: !595)
!608 = !DILocation(line: 667, column: 3, scope: !16, inlinedAt: !595)
!609 = !DILocation(line: 74, column: 3, scope: !573)
!610 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !611, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !614)
!611 = !DISubroutineType(types: !612)
!612 = !{!45, !45, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!614 = !{!615, !616, !617, !618}
!615 = !DILocalVariable(name: "argc", arg: 1, scope: !610, file: !3, line: 78, type: !45)
!616 = !DILocalVariable(name: "argv", arg: 2, scope: !610, file: !3, line: 78, type: !613)
!617 = !DILocalVariable(name: "tty", scope: !610, file: !3, line: 80, type: !10)
!618 = !DILocalVariable(name: "optc", scope: !610, file: !3, line: 81, type: !45)
!619 = !DILocation(line: 78, column: 11, scope: !610)
!620 = !DILocation(line: 78, column: 24, scope: !610)
!621 = !DILocation(line: 84, column: 21, scope: !610)
!622 = !DILocation(line: 84, column: 3, scope: !610)
!623 = !DILocation(line: 85, column: 3, scope: !610)
!624 = !DILocation(line: 86, column: 3, scope: !610)
!625 = !DILocation(line: 87, column: 3, scope: !610)
!626 = !DILocalVariable(name: "status", arg: 1, scope: !627, file: !17, line: 99, type: !45)
!627 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !17, file: !17, line: 99, type: !574, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !628)
!628 = !{!626}
!629 = !DILocation(line: 99, column: 30, scope: !627, inlinedAt: !630)
!630 = distinct !DILocation(line: 89, column: 3, scope: !610)
!631 = !DILocation(line: 102, column: 18, scope: !632, inlinedAt: !630)
!632 = distinct !DILexicalBlock(scope: !627, file: !17, line: 101, column: 7)
!633 = !{!634, !634, i64 0}
!634 = !{!"int", !587, i64 0}
!635 = !DILocation(line: 90, column: 3, scope: !610)
!636 = !DILocation(line: 94, column: 3, scope: !610)
!637 = !{!638, !638, i64 0}
!638 = !{!"_Bool", !587, i64 0}
!639 = !DILocation(line: 94, column: 18, scope: !610)
!640 = !DILocation(line: 81, column: 7, scope: !610)
!641 = distinct !{!641, !636, !642}
!642 = !DILocation(line: 109, column: 5, scope: !610)
!643 = !DILocation(line: 102, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 97, column: 9)
!645 = distinct !DILexicalBlock(scope: !610, file: !3, line: 95, column: 5)
!646 = !DILocation(line: 104, column: 9, scope: !644)
!647 = !DILocation(line: 107, column: 11, scope: !644)
!648 = !DILocation(line: 111, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !610, file: !3, line: 111, column: 7)
!650 = !DILocation(line: 111, column: 14, scope: !649)
!651 = !DILocation(line: 111, column: 7, scope: !610)
!652 = !DILocation(line: 112, column: 18, scope: !649)
!653 = !DILocation(line: 112, column: 53, scope: !649)
!654 = !DILocation(line: 112, column: 48, scope: !649)
!655 = !DILocation(line: 112, column: 41, scope: !649)
!656 = !DILocation(line: 112, column: 5, scope: !649)
!657 = !DILocation(line: 114, column: 9, scope: !610)
!658 = !DILocation(line: 80, column: 9, scope: !610)
!659 = !DILocation(line: 115, column: 8, scope: !660)
!660 = distinct !DILexicalBlock(scope: !610, file: !3, line: 115, column: 7)
!661 = !{i8 0, i8 2}
!662 = !DILocation(line: 115, column: 7, scope: !610)
!663 = !DILocation(line: 117, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 117, column: 11)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 116, column: 5)
!666 = !DILocation(line: 117, column: 11, scope: !665)
!667 = !DILocation(line: 118, column: 9, scope: !664)
!668 = !DILocation(line: 120, column: 15, scope: !664)
!669 = !DILocation(line: 120, column: 9, scope: !664)
!670 = !DILocation(line: 123, column: 10, scope: !610)
!671 = !DILocation(line: 123, column: 3, scope: !610)
!672 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !65, file: !65, line: 41, type: !18, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !60, variables: !673)
!673 = !{!674}
!674 = !DILocalVariable(name: "file", arg: 1, scope: !672, file: !65, line: 41, type: !20)
!675 = !DILocation(line: 41, column: 41, scope: !672)
!676 = !DILocation(line: 43, column: 13, scope: !672)
!677 = !DILocation(line: 44, column: 1, scope: !672)
!678 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !65, file: !65, line: 78, type: !679, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !60, variables: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !51}
!681 = !{!682}
!682 = !DILocalVariable(name: "ignore", arg: 1, scope: !678, file: !65, line: 78, type: !51)
!683 = !DILocation(line: 78, column: 37, scope: !678)
!684 = !DILocation(line: 80, column: 16, scope: !678)
!685 = !DILocation(line: 81, column: 1, scope: !678)
!686 = distinct !DISubprogram(name: "close_stdout", scope: !65, file: !65, line: 107, type: !687, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !60, variables: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{null}
!689 = !{!690}
!690 = !DILocalVariable(name: "write_error", scope: !691, file: !65, line: 112, type: !20)
!691 = distinct !DILexicalBlock(scope: !692, file: !65, line: 111, column: 5)
!692 = distinct !DILexicalBlock(scope: !686, file: !65, line: 109, column: 7)
!693 = !DILocation(line: 109, column: 21, scope: !692)
!694 = !DILocation(line: 109, column: 7, scope: !692)
!695 = !DILocation(line: 109, column: 29, scope: !692)
!696 = !DILocation(line: 110, column: 7, scope: !692)
!697 = !DILocation(line: 110, column: 12, scope: !692)
!698 = !DILocation(line: 114, column: 19, scope: !699)
!699 = distinct !DILexicalBlock(scope: !691, file: !65, line: 113, column: 11)
!700 = !DILocation(line: 110, column: 25, scope: !692)
!701 = !DILocation(line: 110, column: 28, scope: !692)
!702 = !DILocation(line: 110, column: 34, scope: !692)
!703 = !DILocation(line: 109, column: 7, scope: !686)
!704 = !DILocation(line: 112, column: 33, scope: !691)
!705 = !DILocation(line: 112, column: 19, scope: !691)
!706 = !DILocation(line: 113, column: 11, scope: !699)
!707 = !DILocation(line: 113, column: 11, scope: !691)
!708 = !DILocation(line: 114, column: 36, scope: !699)
!709 = !DILocation(line: 114, column: 9, scope: !699)
!710 = !DILocation(line: 117, column: 9, scope: !699)
!711 = !DILocation(line: 119, column: 14, scope: !691)
!712 = !DILocation(line: 119, column: 7, scope: !691)
!713 = !DILocation(line: 122, column: 22, scope: !714)
!714 = distinct !DILexicalBlock(scope: !686, file: !65, line: 122, column: 8)
!715 = !DILocation(line: 122, column: 8, scope: !714)
!716 = !DILocation(line: 122, column: 30, scope: !714)
!717 = !DILocation(line: 122, column: 8, scope: !686)
!718 = !DILocation(line: 123, column: 13, scope: !714)
!719 = !DILocation(line: 123, column: 6, scope: !714)
!720 = !DILocation(line: 124, column: 1, scope: !686)
!721 = distinct !DISubprogram(name: "set_program_name", scope: !79, file: !79, line: 39, type: !18, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !75, variables: !722)
!722 = !{!723, !724, !725}
!723 = !DILocalVariable(name: "argv0", arg: 1, scope: !721, file: !79, line: 39, type: !20)
!724 = !DILocalVariable(name: "slash", scope: !721, file: !79, line: 46, type: !20)
!725 = !DILocalVariable(name: "base", scope: !721, file: !79, line: 47, type: !20)
!726 = !DILocation(line: 39, column: 31, scope: !721)
!727 = !DILocation(line: 51, column: 13, scope: !728)
!728 = distinct !DILexicalBlock(scope: !721, file: !79, line: 51, column: 7)
!729 = !DILocation(line: 51, column: 7, scope: !721)
!730 = !DILocation(line: 55, column: 14, scope: !731)
!731 = distinct !DILexicalBlock(scope: !728, file: !79, line: 52, column: 5)
!732 = !DILocation(line: 54, column: 7, scope: !731)
!733 = !DILocation(line: 56, column: 7, scope: !731)
!734 = !DILocation(line: 59, column: 11, scope: !721)
!735 = !DILocation(line: 46, column: 15, scope: !721)
!736 = !DILocation(line: 60, column: 17, scope: !721)
!737 = !DILocation(line: 60, column: 33, scope: !721)
!738 = !DILocation(line: 60, column: 11, scope: !721)
!739 = !DILocation(line: 47, column: 15, scope: !721)
!740 = !DILocation(line: 61, column: 12, scope: !741)
!741 = distinct !DILexicalBlock(scope: !721, file: !79, line: 61, column: 7)
!742 = !DILocation(line: 61, column: 20, scope: !741)
!743 = !DILocation(line: 61, column: 25, scope: !741)
!744 = !DILocation(line: 61, column: 42, scope: !741)
!745 = !DILocation(line: 61, column: 28, scope: !741)
!746 = !DILocation(line: 61, column: 61, scope: !741)
!747 = !DILocation(line: 61, column: 7, scope: !721)
!748 = !DILocation(line: 64, column: 11, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !79, line: 64, column: 11)
!750 = distinct !DILexicalBlock(scope: !741, file: !79, line: 62, column: 5)
!751 = !DILocation(line: 64, column: 36, scope: !749)
!752 = !DILocation(line: 64, column: 11, scope: !750)
!753 = !DILocation(line: 66, column: 24, scope: !754)
!754 = distinct !DILexicalBlock(scope: !749, file: !79, line: 65, column: 9)
!755 = !DILocation(line: 70, column: 41, scope: !754)
!756 = !DILocation(line: 72, column: 9, scope: !754)
!757 = !DILocation(line: 84, column: 16, scope: !721)
!758 = !DILocation(line: 90, column: 27, scope: !721)
!759 = !DILocation(line: 92, column: 1, scope: !721)
!760 = distinct !DISubprogram(name: "clone_quoting_options", scope: !127, file: !127, line: 114, type: !761, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !764)
!761 = !DISubroutineType(types: !762)
!762 = !{!763, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!764 = !{!765, !766, !767}
!765 = !DILocalVariable(name: "o", arg: 1, scope: !760, file: !127, line: 114, type: !763)
!766 = !DILocalVariable(name: "e", scope: !760, file: !127, line: 116, type: !45)
!767 = !DILocalVariable(name: "p", scope: !760, file: !127, line: 117, type: !763)
!768 = !DILocation(line: 114, column: 48, scope: !760)
!769 = !DILocation(line: 116, column: 11, scope: !760)
!770 = !DILocation(line: 116, column: 7, scope: !760)
!771 = !DILocation(line: 117, column: 40, scope: !760)
!772 = !DILocation(line: 117, column: 31, scope: !760)
!773 = !DILocation(line: 117, column: 27, scope: !760)
!774 = !DILocation(line: 119, column: 9, scope: !760)
!775 = !DILocation(line: 120, column: 3, scope: !760)
!776 = distinct !DISubprogram(name: "get_quoting_style", scope: !127, file: !127, line: 125, type: !777, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !781)
!777 = !DISubroutineType(types: !778)
!778 = !{!85, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!781 = !{!782}
!782 = !DILocalVariable(name: "o", arg: 1, scope: !776, file: !127, line: 125, type: !779)
!783 = !DILocation(line: 125, column: 50, scope: !776)
!784 = !DILocation(line: 127, column: 11, scope: !776)
!785 = !DILocation(line: 127, column: 46, scope: !776)
!786 = !{!787, !587, i64 0}
!787 = !{!"quoting_options", !587, i64 0, !634, i64 4, !587, i64 8, !586, i64 40, !586, i64 48}
!788 = !DILocation(line: 127, column: 3, scope: !776)
!789 = distinct !DISubprogram(name: "set_quoting_style", scope: !127, file: !127, line: 133, type: !790, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !763, !85}
!792 = !{!793, !794}
!793 = !DILocalVariable(name: "o", arg: 1, scope: !789, file: !127, line: 133, type: !763)
!794 = !DILocalVariable(name: "s", arg: 2, scope: !789, file: !127, line: 133, type: !85)
!795 = !DILocation(line: 133, column: 44, scope: !789)
!796 = !DILocation(line: 133, column: 66, scope: !789)
!797 = !DILocation(line: 135, column: 4, scope: !789)
!798 = !DILocation(line: 135, column: 39, scope: !789)
!799 = !DILocation(line: 135, column: 45, scope: !789)
!800 = !DILocation(line: 136, column: 1, scope: !789)
!801 = distinct !DISubprogram(name: "set_char_quoting", scope: !127, file: !127, line: 144, type: !802, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{!45, !763, !11, !45}
!804 = !{!805, !806, !807, !808, !809, !811, !812}
!805 = !DILocalVariable(name: "o", arg: 1, scope: !801, file: !127, line: 144, type: !763)
!806 = !DILocalVariable(name: "c", arg: 2, scope: !801, file: !127, line: 144, type: !11)
!807 = !DILocalVariable(name: "i", arg: 3, scope: !801, file: !127, line: 144, type: !45)
!808 = !DILocalVariable(name: "uc", scope: !801, file: !127, line: 146, type: !521)
!809 = !DILocalVariable(name: "p", scope: !801, file: !127, line: 147, type: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!811 = !DILocalVariable(name: "shift", scope: !801, file: !127, line: 149, type: !45)
!812 = !DILocalVariable(name: "r", scope: !801, file: !127, line: 150, type: !45)
!813 = !DILocation(line: 144, column: 43, scope: !801)
!814 = !DILocation(line: 144, column: 51, scope: !801)
!815 = !DILocation(line: 144, column: 58, scope: !801)
!816 = !DILocation(line: 146, column: 17, scope: !801)
!817 = !DILocation(line: 148, column: 6, scope: !801)
!818 = !DILocation(line: 148, column: 62, scope: !801)
!819 = !DILocation(line: 148, column: 57, scope: !801)
!820 = !DILocation(line: 147, column: 17, scope: !801)
!821 = !DILocation(line: 149, column: 18, scope: !801)
!822 = !DILocation(line: 149, column: 15, scope: !801)
!823 = !DILocation(line: 149, column: 7, scope: !801)
!824 = !DILocation(line: 150, column: 12, scope: !801)
!825 = !DILocation(line: 150, column: 15, scope: !801)
!826 = !DILocation(line: 150, column: 25, scope: !801)
!827 = !DILocation(line: 150, column: 7, scope: !801)
!828 = !DILocation(line: 151, column: 13, scope: !801)
!829 = !DILocation(line: 151, column: 18, scope: !801)
!830 = !DILocation(line: 151, column: 23, scope: !801)
!831 = !DILocation(line: 151, column: 6, scope: !801)
!832 = !DILocation(line: 152, column: 3, scope: !801)
!833 = distinct !DISubprogram(name: "set_quoting_flags", scope: !127, file: !127, line: 160, type: !834, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!45, !763, !45}
!836 = !{!837, !838, !839}
!837 = !DILocalVariable(name: "o", arg: 1, scope: !833, file: !127, line: 160, type: !763)
!838 = !DILocalVariable(name: "i", arg: 2, scope: !833, file: !127, line: 160, type: !45)
!839 = !DILocalVariable(name: "r", scope: !833, file: !127, line: 162, type: !45)
!840 = !DILocation(line: 160, column: 44, scope: !833)
!841 = !DILocation(line: 160, column: 51, scope: !833)
!842 = !DILocation(line: 163, column: 8, scope: !843)
!843 = distinct !DILexicalBlock(scope: !833, file: !127, line: 163, column: 7)
!844 = !DILocation(line: 163, column: 7, scope: !833)
!845 = !DILocation(line: 165, column: 10, scope: !833)
!846 = !{!787, !634, i64 4}
!847 = !DILocation(line: 162, column: 7, scope: !833)
!848 = !DILocation(line: 166, column: 12, scope: !833)
!849 = !DILocation(line: 167, column: 3, scope: !833)
!850 = distinct !DISubprogram(name: "set_custom_quoting", scope: !127, file: !127, line: 171, type: !851, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !763, !20, !20}
!853 = !{!854, !855, !856}
!854 = !DILocalVariable(name: "o", arg: 1, scope: !850, file: !127, line: 171, type: !763)
!855 = !DILocalVariable(name: "left_quote", arg: 2, scope: !850, file: !127, line: 172, type: !20)
!856 = !DILocalVariable(name: "right_quote", arg: 3, scope: !850, file: !127, line: 172, type: !20)
!857 = !DILocation(line: 171, column: 45, scope: !850)
!858 = !DILocation(line: 172, column: 33, scope: !850)
!859 = !DILocation(line: 172, column: 57, scope: !850)
!860 = !DILocation(line: 174, column: 8, scope: !861)
!861 = distinct !DILexicalBlock(scope: !850, file: !127, line: 174, column: 7)
!862 = !DILocation(line: 174, column: 7, scope: !850)
!863 = !DILocation(line: 176, column: 6, scope: !850)
!864 = !DILocation(line: 176, column: 12, scope: !850)
!865 = !DILocation(line: 177, column: 8, scope: !866)
!866 = distinct !DILexicalBlock(scope: !850, file: !127, line: 177, column: 7)
!867 = !DILocation(line: 177, column: 23, scope: !866)
!868 = !DILocation(line: 177, column: 19, scope: !866)
!869 = !DILocation(line: 178, column: 5, scope: !866)
!870 = !DILocation(line: 179, column: 6, scope: !850)
!871 = !DILocation(line: 179, column: 17, scope: !850)
!872 = !{!787, !586, i64 40}
!873 = !DILocation(line: 180, column: 6, scope: !850)
!874 = !DILocation(line: 180, column: 18, scope: !850)
!875 = !{!787, !586, i64 48}
!876 = !DILocation(line: 181, column: 1, scope: !850)
!877 = distinct !DISubprogram(name: "quotearg_buffer", scope: !127, file: !127, line: 776, type: !878, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{!121, !10, !121, !20, !121, !779}
!880 = !{!881, !882, !883, !884, !885, !886, !887, !888}
!881 = !DILocalVariable(name: "buffer", arg: 1, scope: !877, file: !127, line: 776, type: !10)
!882 = !DILocalVariable(name: "buffersize", arg: 2, scope: !877, file: !127, line: 776, type: !121)
!883 = !DILocalVariable(name: "arg", arg: 3, scope: !877, file: !127, line: 777, type: !20)
!884 = !DILocalVariable(name: "argsize", arg: 4, scope: !877, file: !127, line: 777, type: !121)
!885 = !DILocalVariable(name: "o", arg: 5, scope: !877, file: !127, line: 778, type: !779)
!886 = !DILocalVariable(name: "p", scope: !877, file: !127, line: 780, type: !779)
!887 = !DILocalVariable(name: "e", scope: !877, file: !127, line: 781, type: !45)
!888 = !DILocalVariable(name: "r", scope: !877, file: !127, line: 782, type: !121)
!889 = !DILocation(line: 776, column: 24, scope: !877)
!890 = !DILocation(line: 776, column: 39, scope: !877)
!891 = !DILocation(line: 777, column: 30, scope: !877)
!892 = !DILocation(line: 777, column: 42, scope: !877)
!893 = !DILocation(line: 778, column: 48, scope: !877)
!894 = !DILocation(line: 780, column: 37, scope: !877)
!895 = !DILocation(line: 780, column: 33, scope: !877)
!896 = !DILocation(line: 781, column: 11, scope: !877)
!897 = !DILocation(line: 781, column: 7, scope: !877)
!898 = !DILocation(line: 783, column: 43, scope: !877)
!899 = !DILocation(line: 783, column: 53, scope: !877)
!900 = !DILocation(line: 783, column: 60, scope: !877)
!901 = !DILocation(line: 784, column: 43, scope: !877)
!902 = !DILocation(line: 784, column: 58, scope: !877)
!903 = !DILocation(line: 782, column: 14, scope: !877)
!904 = !DILocation(line: 782, column: 10, scope: !877)
!905 = !DILocation(line: 785, column: 9, scope: !877)
!906 = !DILocation(line: 786, column: 3, scope: !877)
!907 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !127, file: !127, line: 248, type: !908, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !912)
!908 = !DISubroutineType(types: !909)
!909 = !{!121, !10, !121, !20, !121, !85, !45, !910, !20, !20}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !937, !938, !939, !940, !941, !944, !945, !963, !966, !967, !974}
!913 = !DILocalVariable(name: "buffer", arg: 1, scope: !907, file: !127, line: 248, type: !10)
!914 = !DILocalVariable(name: "buffersize", arg: 2, scope: !907, file: !127, line: 248, type: !121)
!915 = !DILocalVariable(name: "arg", arg: 3, scope: !907, file: !127, line: 249, type: !20)
!916 = !DILocalVariable(name: "argsize", arg: 4, scope: !907, file: !127, line: 249, type: !121)
!917 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !907, file: !127, line: 250, type: !85)
!918 = !DILocalVariable(name: "flags", arg: 6, scope: !907, file: !127, line: 250, type: !45)
!919 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !907, file: !127, line: 251, type: !910)
!920 = !DILocalVariable(name: "left_quote", arg: 8, scope: !907, file: !127, line: 252, type: !20)
!921 = !DILocalVariable(name: "right_quote", arg: 9, scope: !907, file: !127, line: 253, type: !20)
!922 = !DILocalVariable(name: "i", scope: !907, file: !127, line: 255, type: !121)
!923 = !DILocalVariable(name: "len", scope: !907, file: !127, line: 256, type: !121)
!924 = !DILocalVariable(name: "orig_buffersize", scope: !907, file: !127, line: 257, type: !121)
!925 = !DILocalVariable(name: "quote_string", scope: !907, file: !127, line: 258, type: !20)
!926 = !DILocalVariable(name: "quote_string_len", scope: !907, file: !127, line: 259, type: !121)
!927 = !DILocalVariable(name: "backslash_escapes", scope: !907, file: !127, line: 260, type: !51)
!928 = !DILocalVariable(name: "unibyte_locale", scope: !907, file: !127, line: 261, type: !51)
!929 = !DILocalVariable(name: "elide_outer_quotes", scope: !907, file: !127, line: 262, type: !51)
!930 = !DILocalVariable(name: "pending_shell_escape_end", scope: !907, file: !127, line: 263, type: !51)
!931 = !DILocalVariable(name: "encountered_single_quote", scope: !907, file: !127, line: 264, type: !51)
!932 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !907, file: !127, line: 265, type: !51)
!933 = !DILocalVariable(name: "c", scope: !934, file: !127, line: 394, type: !521)
!934 = distinct !DILexicalBlock(scope: !935, file: !127, line: 393, column: 5)
!935 = distinct !DILexicalBlock(scope: !936, file: !127, line: 392, column: 3)
!936 = distinct !DILexicalBlock(scope: !907, file: !127, line: 392, column: 3)
!937 = !DILocalVariable(name: "esc", scope: !934, file: !127, line: 395, type: !521)
!938 = !DILocalVariable(name: "is_right_quote", scope: !934, file: !127, line: 396, type: !51)
!939 = !DILocalVariable(name: "escaping", scope: !934, file: !127, line: 397, type: !51)
!940 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !934, file: !127, line: 398, type: !51)
!941 = !DILocalVariable(name: "m", scope: !942, file: !127, line: 602, type: !121)
!942 = distinct !DILexicalBlock(scope: !943, file: !127, line: 600, column: 11)
!943 = distinct !DILexicalBlock(scope: !934, file: !127, line: 418, column: 9)
!944 = !DILocalVariable(name: "printable", scope: !942, file: !127, line: 604, type: !51)
!945 = !DILocalVariable(name: "mbstate", scope: !946, file: !127, line: 613, type: !948)
!946 = distinct !DILexicalBlock(scope: !947, file: !127, line: 612, column: 15)
!947 = distinct !DILexicalBlock(scope: !942, file: !127, line: 606, column: 17)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !949, line: 6, baseType: !950)
!949 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !951, line: 21, baseType: !952)
!951 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !951, line: 13, size: 64, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !952, file: !951, line: 15, baseType: !45, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !952, file: !951, line: 20, baseType: !956, size: 32, offset: 32)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !951, line: 16, size: 32, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !956, file: !951, line: 18, baseType: !140, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !956, file: !951, line: 19, baseType: !960, size: 32)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 4)
!963 = !DILocalVariable(name: "w", scope: !964, file: !127, line: 623, type: !965)
!964 = distinct !DILexicalBlock(scope: !946, file: !127, line: 622, column: 19)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !122, line: 90, baseType: !45)
!966 = !DILocalVariable(name: "bytes", scope: !964, file: !127, line: 624, type: !121)
!967 = !DILocalVariable(name: "j", scope: !968, file: !127, line: 649, type: !121)
!968 = distinct !DILexicalBlock(scope: !969, file: !127, line: 648, column: 27)
!969 = distinct !DILexicalBlock(scope: !970, file: !127, line: 646, column: 29)
!970 = distinct !DILexicalBlock(scope: !971, file: !127, line: 641, column: 23)
!971 = distinct !DILexicalBlock(scope: !972, file: !127, line: 633, column: 30)
!972 = distinct !DILexicalBlock(scope: !973, file: !127, line: 628, column: 30)
!973 = distinct !DILexicalBlock(scope: !964, file: !127, line: 626, column: 25)
!974 = !DILocalVariable(name: "ilim", scope: !975, file: !127, line: 676, type: !121)
!975 = distinct !DILexicalBlock(scope: !976, file: !127, line: 673, column: 15)
!976 = distinct !DILexicalBlock(scope: !942, file: !127, line: 672, column: 17)
!977 = !DILocation(line: 248, column: 33, scope: !907)
!978 = !DILocation(line: 248, column: 48, scope: !907)
!979 = !DILocation(line: 249, column: 39, scope: !907)
!980 = !DILocation(line: 249, column: 51, scope: !907)
!981 = !DILocation(line: 250, column: 46, scope: !907)
!982 = !DILocation(line: 250, column: 65, scope: !907)
!983 = !DILocation(line: 251, column: 47, scope: !907)
!984 = !DILocation(line: 252, column: 39, scope: !907)
!985 = !DILocation(line: 253, column: 39, scope: !907)
!986 = !DILocation(line: 256, column: 10, scope: !907)
!987 = !DILocation(line: 257, column: 10, scope: !907)
!988 = !DILocation(line: 258, column: 15, scope: !907)
!989 = !DILocation(line: 259, column: 10, scope: !907)
!990 = !DILocation(line: 260, column: 8, scope: !907)
!991 = !DILocation(line: 261, column: 25, scope: !907)
!992 = !DILocation(line: 261, column: 36, scope: !907)
!993 = !DILocation(line: 262, column: 8, scope: !907)
!994 = !DILocation(line: 263, column: 8, scope: !907)
!995 = !DILocation(line: 264, column: 8, scope: !907)
!996 = !DILocation(line: 265, column: 8, scope: !907)
!997 = !DILocation(line: 265, column: 3, scope: !907)
!998 = !DILocation(line: 308, column: 3, scope: !907)
!999 = !DILocation(line: 315, column: 11, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !907, file: !127, line: 309, column: 5)
!1001 = !DILocation(line: 315, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1000, file: !127, line: 315, column: 11)
!1003 = !DILocation(line: 316, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !127, line: 316, column: 9)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !127, line: 316, column: 9)
!1006 = !DILocation(line: 316, column: 9, scope: !1005)
!1007 = !{!587, !587, i64 0}
!1008 = !DILocation(line: 354, column: 26, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !127, line: 332, column: 11)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !127, line: 331, column: 13)
!1011 = distinct !DILexicalBlock(scope: !1000, file: !127, line: 330, column: 7)
!1012 = !DILocation(line: 355, column: 27, scope: !1009)
!1013 = !DILocation(line: 356, column: 11, scope: !1009)
!1014 = !DILocation(line: 357, column: 14, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !127, line: 357, column: 13)
!1016 = !DILocation(line: 357, column: 13, scope: !1011)
!1017 = !DILocation(line: 358, column: 43, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !127, line: 358, column: 11)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !127, line: 358, column: 11)
!1020 = !DILocation(line: 358, column: 11, scope: !1019)
!1021 = !DILocation(line: 359, column: 13, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !127, line: 359, column: 13)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !127, line: 359, column: 13)
!1024 = !DILocation(line: 359, column: 13, scope: !1023)
!1025 = !DILocation(line: 358, column: 70, scope: !1018)
!1026 = distinct !{!1026, !1020, !1027}
!1027 = !DILocation(line: 359, column: 13, scope: !1019)
!1028 = !DILocation(line: 362, column: 28, scope: !1011)
!1029 = !DILocation(line: 364, column: 7, scope: !1000)
!1030 = !DILocation(line: 367, column: 7, scope: !1000)
!1031 = !DILocation(line: 370, column: 7, scope: !1000)
!1032 = !DILocation(line: 373, column: 12, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1000, file: !127, line: 373, column: 11)
!1034 = !DILocation(line: 373, column: 11, scope: !1000)
!1035 = !DILocation(line: 378, column: 12, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1000, file: !127, line: 378, column: 11)
!1037 = !DILocation(line: 378, column: 11, scope: !1000)
!1038 = !DILocation(line: 379, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !127, line: 379, column: 9)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !127, line: 379, column: 9)
!1041 = !DILocation(line: 379, column: 9, scope: !1040)
!1042 = !DILocation(line: 386, column: 7, scope: !1000)
!1043 = !DILocation(line: 389, column: 7, scope: !1000)
!1044 = !DILocation(line: 255, column: 10, scope: !907)
!1045 = !DILocation(line: 392, column: 8, scope: !936)
!1046 = !DILocation(line: 392, column: 27, scope: !935)
!1047 = !DILocation(line: 392, column: 19, scope: !935)
!1048 = !DILocation(line: 392, column: 60, scope: !935)
!1049 = !DILocation(line: 392, column: 3, scope: !936)
!1050 = !DILocation(line: 392, column: 41, scope: !935)
!1051 = !DILocation(line: 392, column: 48, scope: !935)
!1052 = !DILocation(line: 396, column: 12, scope: !934)
!1053 = !DILocation(line: 397, column: 12, scope: !934)
!1054 = !DILocation(line: 398, column: 12, scope: !934)
!1055 = !DILocation(line: 401, column: 11, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !934, file: !127, line: 400, column: 11)
!1057 = !DILocation(line: 403, column: 17, scope: !1056)
!1058 = !DILocation(line: 404, column: 39, scope: !1056)
!1059 = !DILocation(line: 408, column: 32, scope: !1056)
!1060 = !DILocation(line: 404, column: 19, scope: !1056)
!1061 = !DILocation(line: 404, column: 15, scope: !1056)
!1062 = !DILocation(line: 409, column: 11, scope: !1056)
!1063 = !DILocation(line: 409, column: 26, scope: !1056)
!1064 = !DILocation(line: 409, column: 14, scope: !1056)
!1065 = !DILocation(line: 409, column: 63, scope: !1056)
!1066 = !DILocation(line: 400, column: 11, scope: !934)
!1067 = !DILocation(line: 416, column: 11, scope: !934)
!1068 = !DILocation(line: 394, column: 21, scope: !934)
!1069 = !DILocation(line: 417, column: 7, scope: !934)
!1070 = !DILocation(line: 420, column: 15, scope: !943)
!1071 = !DILocation(line: 422, column: 15, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !127, line: 422, column: 15)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !127, line: 421, column: 13)
!1074 = distinct !DILexicalBlock(scope: !943, file: !127, line: 420, column: 15)
!1075 = !DILocation(line: 422, column: 15, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !127, line: 422, column: 15)
!1077 = !DILocation(line: 422, column: 15, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !127, line: 422, column: 15)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !127, line: 422, column: 15)
!1080 = distinct !DILexicalBlock(scope: !1076, file: !127, line: 422, column: 15)
!1081 = !DILocation(line: 422, column: 15, scope: !1079)
!1082 = !DILocation(line: 422, column: 15, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !127, line: 422, column: 15)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !127, line: 422, column: 15)
!1085 = !DILocation(line: 422, column: 15, scope: !1084)
!1086 = !DILocation(line: 422, column: 15, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !127, line: 422, column: 15)
!1088 = distinct !DILexicalBlock(scope: !1080, file: !127, line: 422, column: 15)
!1089 = !DILocation(line: 422, column: 15, scope: !1088)
!1090 = !DILocation(line: 422, column: 15, scope: !1080)
!1091 = !DILocation(line: 422, column: 15, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !127, line: 422, column: 15)
!1093 = distinct !DILexicalBlock(scope: !1072, file: !127, line: 422, column: 15)
!1094 = !DILocation(line: 422, column: 15, scope: !1093)
!1095 = !DILocation(line: 430, column: 19, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1073, file: !127, line: 429, column: 19)
!1097 = !DILocation(line: 430, column: 24, scope: !1096)
!1098 = !DILocation(line: 430, column: 28, scope: !1096)
!1099 = !DILocation(line: 430, column: 38, scope: !1096)
!1100 = !DILocation(line: 430, column: 48, scope: !1096)
!1101 = !DILocation(line: 430, column: 59, scope: !1096)
!1102 = !DILocation(line: 432, column: 19, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !127, line: 432, column: 19)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !127, line: 432, column: 19)
!1105 = distinct !DILexicalBlock(scope: !1096, file: !127, line: 431, column: 17)
!1106 = !DILocation(line: 432, column: 19, scope: !1104)
!1107 = !DILocation(line: 433, column: 19, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !127, line: 433, column: 19)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !127, line: 433, column: 19)
!1110 = !DILocation(line: 433, column: 19, scope: !1109)
!1111 = !DILocation(line: 434, column: 17, scope: !1105)
!1112 = !DILocation(line: 441, column: 20, scope: !1074)
!1113 = !DILocation(line: 446, column: 11, scope: !943)
!1114 = !DILocation(line: 449, column: 19, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !943, file: !127, line: 447, column: 13)
!1116 = !DILocation(line: 455, column: 19, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1115, file: !127, line: 454, column: 19)
!1118 = !DILocation(line: 455, column: 24, scope: !1117)
!1119 = !DILocation(line: 455, column: 28, scope: !1117)
!1120 = !DILocation(line: 455, column: 38, scope: !1117)
!1121 = !DILocation(line: 455, column: 47, scope: !1117)
!1122 = !DILocation(line: 455, column: 41, scope: !1117)
!1123 = !DILocation(line: 455, column: 52, scope: !1117)
!1124 = !DILocation(line: 454, column: 19, scope: !1115)
!1125 = !DILocation(line: 456, column: 25, scope: !1117)
!1126 = !DILocation(line: 456, column: 17, scope: !1117)
!1127 = !DILocation(line: 463, column: 25, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1117, file: !127, line: 457, column: 19)
!1129 = !DILocation(line: 467, column: 21, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !127, line: 467, column: 21)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !127, line: 467, column: 21)
!1132 = !DILocation(line: 467, column: 21, scope: !1131)
!1133 = !DILocation(line: 468, column: 21, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !127, line: 468, column: 21)
!1135 = distinct !DILexicalBlock(scope: !1128, file: !127, line: 468, column: 21)
!1136 = !DILocation(line: 468, column: 21, scope: !1135)
!1137 = !DILocation(line: 469, column: 21, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !127, line: 469, column: 21)
!1139 = distinct !DILexicalBlock(scope: !1128, file: !127, line: 469, column: 21)
!1140 = !DILocation(line: 469, column: 21, scope: !1139)
!1141 = !DILocation(line: 470, column: 21, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !127, line: 470, column: 21)
!1143 = distinct !DILexicalBlock(scope: !1128, file: !127, line: 470, column: 21)
!1144 = !DILocation(line: 470, column: 21, scope: !1143)
!1145 = !DILocation(line: 471, column: 21, scope: !1128)
!1146 = !DILocation(line: 395, column: 21, scope: !934)
!1147 = !DILocation(line: 484, column: 31, scope: !943)
!1148 = !DILocation(line: 485, column: 31, scope: !943)
!1149 = !DILocation(line: 487, column: 31, scope: !943)
!1150 = !DILocation(line: 488, column: 31, scope: !943)
!1151 = !DILocation(line: 489, column: 31, scope: !943)
!1152 = !DILocation(line: 492, column: 15, scope: !943)
!1153 = !DILocation(line: 494, column: 19, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !127, line: 493, column: 13)
!1155 = distinct !DILexicalBlock(scope: !943, file: !127, line: 492, column: 15)
!1156 = !DILocation(line: 501, column: 33, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !943, file: !127, line: 501, column: 15)
!1158 = !DILocation(line: 506, column: 15, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !943, file: !127, line: 505, column: 15)
!1160 = !DILocation(line: 510, column: 15, scope: !943)
!1161 = !DILocation(line: 518, column: 26, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !943, file: !127, line: 518, column: 15)
!1163 = !DILocation(line: 518, column: 15, scope: !943)
!1164 = !DILocation(line: 518, column: 40, scope: !1162)
!1165 = !DILocation(line: 518, column: 47, scope: !1162)
!1166 = !DILocation(line: 522, column: 17, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !943, file: !127, line: 522, column: 15)
!1168 = !DILocation(line: 518, column: 18, scope: !1162)
!1169 = !DILocation(line: 518, column: 65, scope: !1162)
!1170 = !DILocation(line: 522, column: 15, scope: !943)
!1171 = !DILocation(line: 526, column: 11, scope: !943)
!1172 = !DILocation(line: 541, column: 15, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !943, file: !127, line: 540, column: 15)
!1174 = !DILocation(line: 548, column: 15, scope: !943)
!1175 = !DILocation(line: 550, column: 19, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !127, line: 549, column: 13)
!1177 = distinct !DILexicalBlock(scope: !943, file: !127, line: 548, column: 15)
!1178 = !DILocation(line: 553, column: 19, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !127, line: 553, column: 19)
!1180 = !DILocation(line: 553, column: 35, scope: !1179)
!1181 = !DILocation(line: 553, column: 30, scope: !1179)
!1182 = !DILocation(line: 562, column: 15, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !127, line: 562, column: 15)
!1184 = distinct !DILexicalBlock(scope: !1176, file: !127, line: 562, column: 15)
!1185 = !DILocation(line: 562, column: 15, scope: !1184)
!1186 = !DILocation(line: 563, column: 15, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !127, line: 563, column: 15)
!1188 = distinct !DILexicalBlock(scope: !1176, file: !127, line: 563, column: 15)
!1189 = !DILocation(line: 563, column: 15, scope: !1188)
!1190 = !DILocation(line: 564, column: 15, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !127, line: 564, column: 15)
!1192 = distinct !DILexicalBlock(scope: !1176, file: !127, line: 564, column: 15)
!1193 = !DILocation(line: 564, column: 15, scope: !1192)
!1194 = !DILocation(line: 566, column: 13, scope: !1176)
!1195 = !DILocation(line: 606, column: 17, scope: !942)
!1196 = !DILocation(line: 602, column: 20, scope: !942)
!1197 = !DILocation(line: 609, column: 29, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !947, file: !127, line: 607, column: 15)
!1199 = !{!1200, !1200, i64 0}
!1200 = !{!"short", !587, i64 0}
!1201 = !DILocation(line: 609, column: 27, scope: !1198)
!1202 = !DILocation(line: 604, column: 18, scope: !942)
!1203 = !DILocation(line: 610, column: 15, scope: !1198)
!1204 = !DILocation(line: 613, column: 17, scope: !946)
!1205 = !DILocation(line: 614, column: 17, scope: !946)
!1206 = !DILocation(line: 618, column: 29, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !946, file: !127, line: 618, column: 21)
!1208 = !DILocation(line: 618, column: 21, scope: !946)
!1209 = !DILocation(line: 619, column: 29, scope: !1207)
!1210 = !DILocation(line: 619, column: 19, scope: !1207)
!1211 = !DILocation(line: 621, column: 17, scope: !946)
!1212 = distinct !{!1212, !1211, !1213}
!1213 = !DILocation(line: 667, column: 44, scope: !946)
!1214 = !DILocation(line: 623, column: 21, scope: !964)
!1215 = !DILocation(line: 624, column: 56, scope: !964)
!1216 = !DILocation(line: 624, column: 50, scope: !964)
!1217 = !DILocation(line: 625, column: 53, scope: !964)
!1218 = !DILocation(line: 613, column: 27, scope: !946)
!1219 = !DILocation(line: 623, column: 29, scope: !964)
!1220 = !DILocation(line: 624, column: 36, scope: !964)
!1221 = !DILocation(line: 624, column: 28, scope: !964)
!1222 = !DILocation(line: 626, column: 25, scope: !964)
!1223 = !DILocation(line: 636, column: 38, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !971, file: !127, line: 634, column: 23)
!1225 = !DILocation(line: 636, column: 48, scope: !1224)
!1226 = !DILocation(line: 636, column: 51, scope: !1224)
!1227 = !DILocation(line: 636, column: 25, scope: !1224)
!1228 = !DILocation(line: 637, column: 28, scope: !1224)
!1229 = !DILocation(line: 636, column: 34, scope: !1224)
!1230 = distinct !{!1230, !1227, !1228}
!1231 = !DILocation(line: 650, column: 43, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !127, line: 650, column: 29)
!1233 = distinct !DILexicalBlock(scope: !968, file: !127, line: 650, column: 29)
!1234 = !DILocation(line: 647, column: 29, scope: !969)
!1235 = !DILocation(line: 649, column: 36, scope: !968)
!1236 = !DILocation(line: 651, column: 49, scope: !1232)
!1237 = !DILocation(line: 651, column: 39, scope: !1232)
!1238 = !DILocation(line: 651, column: 31, scope: !1232)
!1239 = !DILocation(line: 650, column: 53, scope: !1232)
!1240 = !DILocation(line: 650, column: 29, scope: !1233)
!1241 = distinct !{!1241, !1240, !1242}
!1242 = !DILocation(line: 659, column: 33, scope: !1233)
!1243 = !DILocation(line: 666, column: 19, scope: !946)
!1244 = !DILocation(line: 662, column: 41, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !970, file: !127, line: 662, column: 29)
!1246 = !DILocation(line: 662, column: 31, scope: !1245)
!1247 = !DILocation(line: 662, column: 29, scope: !970)
!1248 = !DILocation(line: 664, column: 27, scope: !970)
!1249 = !DILocation(line: 667, column: 26, scope: !946)
!1250 = !DILocation(line: 667, column: 24, scope: !946)
!1251 = !DILocation(line: 666, column: 19, scope: !964)
!1252 = !DILocation(line: 668, column: 15, scope: !947)
!1253 = !DILocation(line: 670, column: 40, scope: !942)
!1254 = !DILocation(line: 672, column: 19, scope: !976)
!1255 = !DILocation(line: 672, column: 45, scope: !976)
!1256 = !DILocation(line: 672, column: 23, scope: !976)
!1257 = !DILocation(line: 676, column: 33, scope: !975)
!1258 = !DILocation(line: 676, column: 24, scope: !975)
!1259 = !DILocation(line: 678, column: 17, scope: !975)
!1260 = !DILocation(line: 680, column: 43, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !127, line: 680, column: 25)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !127, line: 679, column: 19)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !127, line: 678, column: 17)
!1264 = distinct !DILexicalBlock(scope: !975, file: !127, line: 678, column: 17)
!1265 = !DILocation(line: 682, column: 25, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !127, line: 682, column: 25)
!1267 = distinct !DILexicalBlock(scope: !1261, file: !127, line: 681, column: 23)
!1268 = !DILocation(line: 682, column: 25, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !127, line: 682, column: 25)
!1270 = !DILocation(line: 682, column: 25, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !127, line: 682, column: 25)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !127, line: 682, column: 25)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !127, line: 682, column: 25)
!1274 = !DILocation(line: 682, column: 25, scope: !1272)
!1275 = !DILocation(line: 682, column: 25, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !127, line: 682, column: 25)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !127, line: 682, column: 25)
!1278 = !DILocation(line: 682, column: 25, scope: !1277)
!1279 = !DILocation(line: 682, column: 25, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !127, line: 682, column: 25)
!1281 = distinct !DILexicalBlock(scope: !1273, file: !127, line: 682, column: 25)
!1282 = !DILocation(line: 682, column: 25, scope: !1281)
!1283 = !DILocation(line: 682, column: 25, scope: !1273)
!1284 = !DILocation(line: 682, column: 25, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !127, line: 682, column: 25)
!1286 = distinct !DILexicalBlock(scope: !1266, file: !127, line: 682, column: 25)
!1287 = !DILocation(line: 682, column: 25, scope: !1286)
!1288 = !DILocation(line: 683, column: 25, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !127, line: 683, column: 25)
!1290 = distinct !DILexicalBlock(scope: !1267, file: !127, line: 683, column: 25)
!1291 = !DILocation(line: 683, column: 25, scope: !1290)
!1292 = !DILocation(line: 684, column: 25, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !127, line: 684, column: 25)
!1294 = distinct !DILexicalBlock(scope: !1267, file: !127, line: 684, column: 25)
!1295 = !DILocation(line: 684, column: 25, scope: !1294)
!1296 = !DILocation(line: 685, column: 38, scope: !1267)
!1297 = !DILocation(line: 685, column: 33, scope: !1267)
!1298 = !DILocation(line: 686, column: 23, scope: !1267)
!1299 = !DILocation(line: 687, column: 30, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1261, file: !127, line: 687, column: 30)
!1301 = !DILocation(line: 687, column: 30, scope: !1261)
!1302 = !DILocation(line: 689, column: 25, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !127, line: 689, column: 25)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !127, line: 689, column: 25)
!1305 = distinct !DILexicalBlock(scope: !1300, file: !127, line: 688, column: 23)
!1306 = !DILocation(line: 689, column: 25, scope: !1304)
!1307 = !DILocation(line: 691, column: 23, scope: !1305)
!1308 = !DILocation(line: 692, column: 35, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1262, file: !127, line: 692, column: 25)
!1310 = !DILocation(line: 692, column: 30, scope: !1309)
!1311 = !DILocation(line: 692, column: 25, scope: !1262)
!1312 = !DILocation(line: 694, column: 21, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !127, line: 694, column: 21)
!1314 = distinct !DILexicalBlock(scope: !1262, file: !127, line: 694, column: 21)
!1315 = !DILocation(line: 694, column: 21, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !127, line: 694, column: 21)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !127, line: 694, column: 21)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !127, line: 694, column: 21)
!1319 = !DILocation(line: 694, column: 21, scope: !1317)
!1320 = !DILocation(line: 694, column: 21, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !127, line: 694, column: 21)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !127, line: 694, column: 21)
!1323 = !DILocation(line: 694, column: 21, scope: !1322)
!1324 = !DILocation(line: 694, column: 21, scope: !1318)
!1325 = !DILocation(line: 695, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !127, line: 695, column: 21)
!1327 = distinct !DILexicalBlock(scope: !1262, file: !127, line: 695, column: 21)
!1328 = !DILocation(line: 695, column: 21, scope: !1327)
!1329 = !DILocation(line: 696, column: 25, scope: !1262)
!1330 = !DILocation(line: 678, column: 17, scope: !1263)
!1331 = distinct !{!1331, !1332, !1333}
!1332 = !DILocation(line: 678, column: 17, scope: !1264)
!1333 = !DILocation(line: 697, column: 19, scope: !1264)
!1334 = !DILocation(line: 704, column: 34, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !934, file: !127, line: 704, column: 11)
!1336 = !DILocation(line: 706, column: 14, scope: !1335)
!1337 = !DILocation(line: 707, column: 14, scope: !1335)
!1338 = !DILocation(line: 707, column: 35, scope: !1335)
!1339 = !DILocation(line: 707, column: 17, scope: !1335)
!1340 = !DILocation(line: 707, column: 53, scope: !1335)
!1341 = !DILocation(line: 707, column: 47, scope: !1335)
!1342 = !DILocation(line: 707, column: 65, scope: !1335)
!1343 = !DILocation(line: 708, column: 15, scope: !1335)
!1344 = !DILocation(line: 708, column: 11, scope: !1335)
!1345 = !DILocation(line: 704, column: 11, scope: !934)
!1346 = !DILocation(line: 712, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !934, file: !127, line: 712, column: 7)
!1348 = !DILocation(line: 712, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1347, file: !127, line: 712, column: 7)
!1350 = !DILocation(line: 712, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !127, line: 712, column: 7)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !127, line: 712, column: 7)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !127, line: 712, column: 7)
!1354 = !DILocation(line: 712, column: 7, scope: !1352)
!1355 = !DILocation(line: 712, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !127, line: 712, column: 7)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !127, line: 712, column: 7)
!1358 = !DILocation(line: 712, column: 7, scope: !1357)
!1359 = !DILocation(line: 712, column: 7, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !127, line: 712, column: 7)
!1361 = distinct !DILexicalBlock(scope: !1353, file: !127, line: 712, column: 7)
!1362 = !DILocation(line: 712, column: 7, scope: !1361)
!1363 = !DILocation(line: 712, column: 7, scope: !1353)
!1364 = !DILocation(line: 712, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !127, line: 712, column: 7)
!1366 = distinct !DILexicalBlock(scope: !1347, file: !127, line: 712, column: 7)
!1367 = !DILocation(line: 712, column: 7, scope: !1366)
!1368 = !DILocation(line: 715, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !127, line: 715, column: 7)
!1370 = distinct !DILexicalBlock(scope: !934, file: !127, line: 715, column: 7)
!1371 = !DILocation(line: 715, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !127, line: 715, column: 7)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !127, line: 715, column: 7)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !127, line: 715, column: 7)
!1375 = !DILocation(line: 715, column: 7, scope: !1373)
!1376 = !DILocation(line: 715, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !127, line: 715, column: 7)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !127, line: 715, column: 7)
!1379 = !DILocation(line: 715, column: 7, scope: !1378)
!1380 = !DILocation(line: 715, column: 7, scope: !1374)
!1381 = !DILocation(line: 716, column: 7, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !127, line: 716, column: 7)
!1383 = distinct !DILexicalBlock(scope: !934, file: !127, line: 716, column: 7)
!1384 = !DILocation(line: 716, column: 7, scope: !1383)
!1385 = !DILocation(line: 718, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !934, file: !127, line: 718, column: 11)
!1387 = !DILocation(line: 718, column: 11, scope: !934)
!1388 = !DILocation(line: 720, column: 5, scope: !935)
!1389 = !DILocation(line: 392, column: 75, scope: !935)
!1390 = !DILocation(line: 392, column: 3, scope: !935)
!1391 = distinct !{!1391, !1049, !1392}
!1392 = !DILocation(line: 720, column: 5, scope: !936)
!1393 = !DILocation(line: 722, column: 11, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !907, file: !127, line: 722, column: 7)
!1395 = !DILocation(line: 722, column: 16, scope: !1394)
!1396 = !DILocation(line: 730, column: 51, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !907, file: !127, line: 730, column: 7)
!1398 = !DILocation(line: 731, column: 10, scope: !1397)
!1399 = !DILocation(line: 733, column: 11, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !127, line: 733, column: 11)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !127, line: 732, column: 5)
!1402 = !DILocation(line: 733, column: 11, scope: !1401)
!1403 = !DILocation(line: 734, column: 16, scope: !1400)
!1404 = !DILocation(line: 734, column: 9, scope: !1400)
!1405 = !DILocation(line: 738, column: 18, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1400, file: !127, line: 738, column: 16)
!1407 = !DILocation(line: 738, column: 32, scope: !1406)
!1408 = !DILocation(line: 738, column: 29, scope: !1406)
!1409 = !DILocation(line: 747, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !907, file: !127, line: 747, column: 7)
!1411 = !DILocation(line: 747, column: 20, scope: !1410)
!1412 = !DILocation(line: 748, column: 12, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !127, line: 748, column: 5)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !127, line: 748, column: 5)
!1415 = !DILocation(line: 748, column: 5, scope: !1414)
!1416 = !DILocation(line: 749, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !127, line: 749, column: 7)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !127, line: 749, column: 7)
!1419 = !DILocation(line: 749, column: 7, scope: !1418)
!1420 = !DILocation(line: 748, column: 39, scope: !1413)
!1421 = distinct !{!1421, !1415, !1422}
!1422 = !DILocation(line: 749, column: 7, scope: !1414)
!1423 = !DILocation(line: 751, column: 11, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !907, file: !127, line: 751, column: 7)
!1425 = !DILocation(line: 751, column: 7, scope: !907)
!1426 = !DILocation(line: 752, column: 5, scope: !1424)
!1427 = !DILocation(line: 752, column: 17, scope: !1424)
!1428 = !DILocation(line: 758, column: 21, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !907, file: !127, line: 758, column: 7)
!1430 = !DILocation(line: 758, column: 54, scope: !1429)
!1431 = !DILocation(line: 758, column: 51, scope: !1429)
!1432 = !DILocation(line: 762, column: 42, scope: !907)
!1433 = !DILocation(line: 760, column: 10, scope: !907)
!1434 = !DILocation(line: 760, column: 3, scope: !907)
!1435 = !DILocation(line: 764, column: 1, scope: !907)
!1436 = distinct !DISubprogram(name: "gettext_quote", scope: !127, file: !127, line: 199, type: !1437, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!20, !20, !85}
!1439 = !{!1440, !1441, !1442, !1443}
!1440 = !DILocalVariable(name: "msgid", arg: 1, scope: !1436, file: !127, line: 199, type: !20)
!1441 = !DILocalVariable(name: "s", arg: 2, scope: !1436, file: !127, line: 199, type: !85)
!1442 = !DILocalVariable(name: "translation", scope: !1436, file: !127, line: 201, type: !20)
!1443 = !DILocalVariable(name: "locale_code", scope: !1436, file: !127, line: 202, type: !20)
!1444 = !DILocation(line: 199, column: 28, scope: !1436)
!1445 = !DILocation(line: 199, column: 54, scope: !1436)
!1446 = !DILocation(line: 201, column: 29, scope: !1436)
!1447 = !DILocation(line: 201, column: 15, scope: !1436)
!1448 = !DILocation(line: 204, column: 19, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1436, file: !127, line: 204, column: 7)
!1450 = !DILocation(line: 204, column: 7, scope: !1436)
!1451 = !DILocation(line: 225, column: 17, scope: !1436)
!1452 = !DILocation(line: 202, column: 15, scope: !1436)
!1453 = !DILocalVariable(name: "s2", arg: 2, scope: !1454, file: !1455, line: 160, type: !20)
!1454 = distinct !DISubprogram(name: "strcaseeq0", scope: !1455, file: !1455, line: 160, type: !1456, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1458)
!1455 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!45, !20, !20, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!1458 = !{!1459, !1453, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468}
!1459 = !DILocalVariable(name: "s1", arg: 1, scope: !1454, file: !1455, line: 160, type: !20)
!1460 = !DILocalVariable(name: "s20", arg: 3, scope: !1454, file: !1455, line: 160, type: !11)
!1461 = !DILocalVariable(name: "s21", arg: 4, scope: !1454, file: !1455, line: 160, type: !11)
!1462 = !DILocalVariable(name: "s22", arg: 5, scope: !1454, file: !1455, line: 160, type: !11)
!1463 = !DILocalVariable(name: "s23", arg: 6, scope: !1454, file: !1455, line: 160, type: !11)
!1464 = !DILocalVariable(name: "s24", arg: 7, scope: !1454, file: !1455, line: 160, type: !11)
!1465 = !DILocalVariable(name: "s25", arg: 8, scope: !1454, file: !1455, line: 160, type: !11)
!1466 = !DILocalVariable(name: "s26", arg: 9, scope: !1454, file: !1455, line: 160, type: !11)
!1467 = !DILocalVariable(name: "s27", arg: 10, scope: !1454, file: !1455, line: 160, type: !11)
!1468 = !DILocalVariable(name: "s28", arg: 11, scope: !1454, file: !1455, line: 160, type: !11)
!1469 = !DILocation(line: 160, column: 41, scope: !1454, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 226, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1436, file: !127, line: 226, column: 7)
!1472 = !DILocation(line: 160, column: 120, scope: !1454, inlinedAt: !1470)
!1473 = !DILocation(line: 160, column: 130, scope: !1454, inlinedAt: !1470)
!1474 = !DILocation(line: 162, column: 7, scope: !1475, inlinedAt: !1470)
!1475 = distinct !DILexicalBlock(scope: !1454, file: !1455, line: 162, column: 7)
!1476 = !DILocalVariable(name: "s2", arg: 2, scope: !1477, file: !1455, line: 146, type: !20)
!1477 = distinct !DISubprogram(name: "strcaseeq1", scope: !1455, file: !1455, line: 146, type: !1478, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!45, !20, !20, !11, !11, !11, !11, !11, !11, !11, !11}
!1480 = !{!1481, !1476, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1481 = !DILocalVariable(name: "s1", arg: 1, scope: !1477, file: !1455, line: 146, type: !20)
!1482 = !DILocalVariable(name: "s21", arg: 3, scope: !1477, file: !1455, line: 146, type: !11)
!1483 = !DILocalVariable(name: "s22", arg: 4, scope: !1477, file: !1455, line: 146, type: !11)
!1484 = !DILocalVariable(name: "s23", arg: 5, scope: !1477, file: !1455, line: 146, type: !11)
!1485 = !DILocalVariable(name: "s24", arg: 6, scope: !1477, file: !1455, line: 146, type: !11)
!1486 = !DILocalVariable(name: "s25", arg: 7, scope: !1477, file: !1455, line: 146, type: !11)
!1487 = !DILocalVariable(name: "s26", arg: 8, scope: !1477, file: !1455, line: 146, type: !11)
!1488 = !DILocalVariable(name: "s27", arg: 9, scope: !1477, file: !1455, line: 146, type: !11)
!1489 = !DILocalVariable(name: "s28", arg: 10, scope: !1477, file: !1455, line: 146, type: !11)
!1490 = !DILocation(line: 146, column: 41, scope: !1477, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 167, column: 16, scope: !1492, inlinedAt: !1470)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !1455, line: 164, column: 11)
!1493 = distinct !DILexicalBlock(scope: !1475, file: !1455, line: 163, column: 5)
!1494 = !DILocation(line: 146, column: 110, scope: !1477, inlinedAt: !1491)
!1495 = !DILocation(line: 146, column: 120, scope: !1477, inlinedAt: !1491)
!1496 = !DILocation(line: 148, column: 7, scope: !1497, inlinedAt: !1491)
!1497 = distinct !DILexicalBlock(scope: !1477, file: !1455, line: 148, column: 7)
!1498 = !DILocalVariable(name: "s2", arg: 2, scope: !1499, file: !1455, line: 132, type: !20)
!1499 = distinct !DISubprogram(name: "strcaseeq2", scope: !1455, file: !1455, line: 132, type: !1500, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!45, !20, !20, !11, !11, !11, !11, !11, !11, !11}
!1502 = !{!1503, !1498, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1503 = !DILocalVariable(name: "s1", arg: 1, scope: !1499, file: !1455, line: 132, type: !20)
!1504 = !DILocalVariable(name: "s22", arg: 3, scope: !1499, file: !1455, line: 132, type: !11)
!1505 = !DILocalVariable(name: "s23", arg: 4, scope: !1499, file: !1455, line: 132, type: !11)
!1506 = !DILocalVariable(name: "s24", arg: 5, scope: !1499, file: !1455, line: 132, type: !11)
!1507 = !DILocalVariable(name: "s25", arg: 6, scope: !1499, file: !1455, line: 132, type: !11)
!1508 = !DILocalVariable(name: "s26", arg: 7, scope: !1499, file: !1455, line: 132, type: !11)
!1509 = !DILocalVariable(name: "s27", arg: 8, scope: !1499, file: !1455, line: 132, type: !11)
!1510 = !DILocalVariable(name: "s28", arg: 9, scope: !1499, file: !1455, line: 132, type: !11)
!1511 = !DILocation(line: 132, column: 41, scope: !1499, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 153, column: 16, scope: !1513, inlinedAt: !1491)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !1455, line: 150, column: 11)
!1514 = distinct !DILexicalBlock(scope: !1497, file: !1455, line: 149, column: 5)
!1515 = !DILocation(line: 132, column: 100, scope: !1499, inlinedAt: !1512)
!1516 = !DILocation(line: 132, column: 110, scope: !1499, inlinedAt: !1512)
!1517 = !DILocation(line: 134, column: 7, scope: !1518, inlinedAt: !1512)
!1518 = distinct !DILexicalBlock(scope: !1499, file: !1455, line: 134, column: 7)
!1519 = !DILocalVariable(name: "s2", arg: 2, scope: !1520, file: !1455, line: 118, type: !20)
!1520 = distinct !DISubprogram(name: "strcaseeq3", scope: !1455, file: !1455, line: 118, type: !1521, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!45, !20, !20, !11, !11, !11, !11, !11, !11}
!1523 = !{!1524, !1519, !1525, !1526, !1527, !1528, !1529, !1530}
!1524 = !DILocalVariable(name: "s1", arg: 1, scope: !1520, file: !1455, line: 118, type: !20)
!1525 = !DILocalVariable(name: "s23", arg: 3, scope: !1520, file: !1455, line: 118, type: !11)
!1526 = !DILocalVariable(name: "s24", arg: 4, scope: !1520, file: !1455, line: 118, type: !11)
!1527 = !DILocalVariable(name: "s25", arg: 5, scope: !1520, file: !1455, line: 118, type: !11)
!1528 = !DILocalVariable(name: "s26", arg: 6, scope: !1520, file: !1455, line: 118, type: !11)
!1529 = !DILocalVariable(name: "s27", arg: 7, scope: !1520, file: !1455, line: 118, type: !11)
!1530 = !DILocalVariable(name: "s28", arg: 8, scope: !1520, file: !1455, line: 118, type: !11)
!1531 = !DILocation(line: 118, column: 41, scope: !1520, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 139, column: 16, scope: !1533, inlinedAt: !1512)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !1455, line: 136, column: 11)
!1534 = distinct !DILexicalBlock(scope: !1518, file: !1455, line: 135, column: 5)
!1535 = !DILocation(line: 118, column: 90, scope: !1520, inlinedAt: !1532)
!1536 = !DILocation(line: 118, column: 100, scope: !1520, inlinedAt: !1532)
!1537 = !DILocation(line: 120, column: 7, scope: !1538, inlinedAt: !1532)
!1538 = distinct !DILexicalBlock(scope: !1520, file: !1455, line: 120, column: 7)
!1539 = !DILocation(line: 120, column: 7, scope: !1520, inlinedAt: !1532)
!1540 = !DILocalVariable(name: "s2", arg: 2, scope: !1541, file: !1455, line: 104, type: !20)
!1541 = distinct !DISubprogram(name: "strcaseeq4", scope: !1455, file: !1455, line: 104, type: !1542, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!45, !20, !20, !11, !11, !11, !11, !11}
!1544 = !{!1545, !1540, !1546, !1547, !1548, !1549, !1550}
!1545 = !DILocalVariable(name: "s1", arg: 1, scope: !1541, file: !1455, line: 104, type: !20)
!1546 = !DILocalVariable(name: "s24", arg: 3, scope: !1541, file: !1455, line: 104, type: !11)
!1547 = !DILocalVariable(name: "s25", arg: 4, scope: !1541, file: !1455, line: 104, type: !11)
!1548 = !DILocalVariable(name: "s26", arg: 5, scope: !1541, file: !1455, line: 104, type: !11)
!1549 = !DILocalVariable(name: "s27", arg: 6, scope: !1541, file: !1455, line: 104, type: !11)
!1550 = !DILocalVariable(name: "s28", arg: 7, scope: !1541, file: !1455, line: 104, type: !11)
!1551 = !DILocation(line: 104, column: 41, scope: !1541, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 125, column: 16, scope: !1553, inlinedAt: !1532)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !1455, line: 122, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1538, file: !1455, line: 121, column: 5)
!1555 = !DILocation(line: 104, column: 80, scope: !1541, inlinedAt: !1552)
!1556 = !DILocation(line: 104, column: 90, scope: !1541, inlinedAt: !1552)
!1557 = !DILocation(line: 106, column: 7, scope: !1558, inlinedAt: !1552)
!1558 = distinct !DILexicalBlock(scope: !1541, file: !1455, line: 106, column: 7)
!1559 = !DILocation(line: 106, column: 7, scope: !1541, inlinedAt: !1552)
!1560 = !DILocalVariable(name: "s2", arg: 2, scope: !1561, file: !1455, line: 90, type: !20)
!1561 = distinct !DISubprogram(name: "strcaseeq5", scope: !1455, file: !1455, line: 90, type: !1562, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!45, !20, !20, !11, !11, !11, !11}
!1564 = !{!1565, !1560, !1566, !1567, !1568, !1569}
!1565 = !DILocalVariable(name: "s1", arg: 1, scope: !1561, file: !1455, line: 90, type: !20)
!1566 = !DILocalVariable(name: "s25", arg: 3, scope: !1561, file: !1455, line: 90, type: !11)
!1567 = !DILocalVariable(name: "s26", arg: 4, scope: !1561, file: !1455, line: 90, type: !11)
!1568 = !DILocalVariable(name: "s27", arg: 5, scope: !1561, file: !1455, line: 90, type: !11)
!1569 = !DILocalVariable(name: "s28", arg: 6, scope: !1561, file: !1455, line: 90, type: !11)
!1570 = !DILocation(line: 90, column: 41, scope: !1561, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 111, column: 16, scope: !1572, inlinedAt: !1552)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !1455, line: 108, column: 11)
!1573 = distinct !DILexicalBlock(scope: !1558, file: !1455, line: 107, column: 5)
!1574 = !DILocation(line: 90, column: 70, scope: !1561, inlinedAt: !1571)
!1575 = !DILocation(line: 90, column: 80, scope: !1561, inlinedAt: !1571)
!1576 = !DILocation(line: 92, column: 7, scope: !1577, inlinedAt: !1571)
!1577 = distinct !DILexicalBlock(scope: !1561, file: !1455, line: 92, column: 7)
!1578 = !DILocation(line: 92, column: 7, scope: !1561, inlinedAt: !1571)
!1579 = !DILocation(line: 227, column: 12, scope: !1471)
!1580 = !DILocation(line: 227, column: 21, scope: !1471)
!1581 = !DILocation(line: 227, column: 5, scope: !1471)
!1582 = !DILocation(line: 146, column: 41, scope: !1477, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 167, column: 16, scope: !1492, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 228, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1436, file: !127, line: 228, column: 7)
!1586 = !DILocation(line: 146, column: 110, scope: !1477, inlinedAt: !1583)
!1587 = !DILocation(line: 146, column: 120, scope: !1477, inlinedAt: !1583)
!1588 = !DILocation(line: 148, column: 7, scope: !1497, inlinedAt: !1583)
!1589 = !DILocation(line: 132, column: 41, scope: !1499, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 153, column: 16, scope: !1513, inlinedAt: !1583)
!1591 = !DILocation(line: 132, column: 100, scope: !1499, inlinedAt: !1590)
!1592 = !DILocation(line: 132, column: 110, scope: !1499, inlinedAt: !1590)
!1593 = !DILocation(line: 134, column: 7, scope: !1518, inlinedAt: !1590)
!1594 = !DILocation(line: 134, column: 7, scope: !1499, inlinedAt: !1590)
!1595 = !DILocation(line: 118, column: 41, scope: !1520, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 139, column: 16, scope: !1533, inlinedAt: !1590)
!1597 = !DILocation(line: 118, column: 90, scope: !1520, inlinedAt: !1596)
!1598 = !DILocation(line: 118, column: 100, scope: !1520, inlinedAt: !1596)
!1599 = !DILocation(line: 120, column: 7, scope: !1538, inlinedAt: !1596)
!1600 = !DILocation(line: 120, column: 7, scope: !1520, inlinedAt: !1596)
!1601 = !DILocation(line: 104, column: 41, scope: !1541, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 125, column: 16, scope: !1553, inlinedAt: !1596)
!1603 = !DILocation(line: 104, column: 80, scope: !1541, inlinedAt: !1602)
!1604 = !DILocation(line: 104, column: 90, scope: !1541, inlinedAt: !1602)
!1605 = !DILocation(line: 106, column: 7, scope: !1558, inlinedAt: !1602)
!1606 = !DILocation(line: 106, column: 7, scope: !1541, inlinedAt: !1602)
!1607 = !DILocation(line: 90, column: 41, scope: !1561, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 111, column: 16, scope: !1572, inlinedAt: !1602)
!1609 = !DILocation(line: 90, column: 70, scope: !1561, inlinedAt: !1608)
!1610 = !DILocation(line: 90, column: 80, scope: !1561, inlinedAt: !1608)
!1611 = !DILocation(line: 92, column: 7, scope: !1577, inlinedAt: !1608)
!1612 = !DILocation(line: 92, column: 7, scope: !1561, inlinedAt: !1608)
!1613 = !DILocalVariable(name: "s2", arg: 2, scope: !1614, file: !1455, line: 76, type: !20)
!1614 = distinct !DISubprogram(name: "strcaseeq6", scope: !1455, file: !1455, line: 76, type: !1615, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!45, !20, !20, !11, !11, !11}
!1617 = !{!1618, !1613, !1619, !1620, !1621}
!1618 = !DILocalVariable(name: "s1", arg: 1, scope: !1614, file: !1455, line: 76, type: !20)
!1619 = !DILocalVariable(name: "s26", arg: 3, scope: !1614, file: !1455, line: 76, type: !11)
!1620 = !DILocalVariable(name: "s27", arg: 4, scope: !1614, file: !1455, line: 76, type: !11)
!1621 = !DILocalVariable(name: "s28", arg: 5, scope: !1614, file: !1455, line: 76, type: !11)
!1622 = !DILocation(line: 76, column: 41, scope: !1614, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 97, column: 16, scope: !1624, inlinedAt: !1608)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !1455, line: 94, column: 11)
!1625 = distinct !DILexicalBlock(scope: !1577, file: !1455, line: 93, column: 5)
!1626 = !DILocation(line: 76, column: 60, scope: !1614, inlinedAt: !1623)
!1627 = !DILocation(line: 76, column: 70, scope: !1614, inlinedAt: !1623)
!1628 = !DILocation(line: 78, column: 7, scope: !1629, inlinedAt: !1623)
!1629 = distinct !DILexicalBlock(scope: !1614, file: !1455, line: 78, column: 7)
!1630 = !DILocation(line: 78, column: 7, scope: !1614, inlinedAt: !1623)
!1631 = !DILocalVariable(name: "s2", arg: 2, scope: !1632, file: !1455, line: 62, type: !20)
!1632 = distinct !DISubprogram(name: "strcaseeq7", scope: !1455, file: !1455, line: 62, type: !1633, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!45, !20, !20, !11, !11}
!1635 = !{!1636, !1631, !1637, !1638}
!1636 = !DILocalVariable(name: "s1", arg: 1, scope: !1632, file: !1455, line: 62, type: !20)
!1637 = !DILocalVariable(name: "s27", arg: 3, scope: !1632, file: !1455, line: 62, type: !11)
!1638 = !DILocalVariable(name: "s28", arg: 4, scope: !1632, file: !1455, line: 62, type: !11)
!1639 = !DILocation(line: 62, column: 41, scope: !1632, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 83, column: 16, scope: !1641, inlinedAt: !1623)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !1455, line: 80, column: 11)
!1642 = distinct !DILexicalBlock(scope: !1629, file: !1455, line: 79, column: 5)
!1643 = !DILocation(line: 62, column: 50, scope: !1632, inlinedAt: !1640)
!1644 = !DILocation(line: 62, column: 60, scope: !1632, inlinedAt: !1640)
!1645 = !DILocation(line: 64, column: 7, scope: !1646, inlinedAt: !1640)
!1646 = distinct !DILexicalBlock(scope: !1632, file: !1455, line: 64, column: 7)
!1647 = !DILocation(line: 228, column: 7, scope: !1436)
!1648 = !DILocation(line: 229, column: 12, scope: !1585)
!1649 = !DILocation(line: 229, column: 21, scope: !1585)
!1650 = !DILocation(line: 229, column: 5, scope: !1585)
!1651 = !DILocation(line: 231, column: 13, scope: !1436)
!1652 = !DILocation(line: 231, column: 11, scope: !1436)
!1653 = !DILocation(line: 231, column: 3, scope: !1436)
!1654 = !DILocation(line: 232, column: 1, scope: !1436)
!1655 = distinct !DISubprogram(name: "quotearg_alloc", scope: !127, file: !127, line: 791, type: !1656, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1658)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!10, !20, !121, !779}
!1658 = !{!1659, !1660, !1661}
!1659 = !DILocalVariable(name: "arg", arg: 1, scope: !1655, file: !127, line: 791, type: !20)
!1660 = !DILocalVariable(name: "argsize", arg: 2, scope: !1655, file: !127, line: 791, type: !121)
!1661 = !DILocalVariable(name: "o", arg: 3, scope: !1655, file: !127, line: 792, type: !779)
!1662 = !DILocation(line: 791, column: 29, scope: !1655)
!1663 = !DILocation(line: 791, column: 41, scope: !1655)
!1664 = !DILocation(line: 792, column: 47, scope: !1655)
!1665 = !DILocalVariable(name: "arg", arg: 1, scope: !1666, file: !127, line: 804, type: !20)
!1666 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !127, file: !127, line: 804, type: !1667, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!10, !20, !121, !541, !779}
!1669 = !{!1665, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677}
!1670 = !DILocalVariable(name: "argsize", arg: 2, scope: !1666, file: !127, line: 804, type: !121)
!1671 = !DILocalVariable(name: "size", arg: 3, scope: !1666, file: !127, line: 804, type: !541)
!1672 = !DILocalVariable(name: "o", arg: 4, scope: !1666, file: !127, line: 805, type: !779)
!1673 = !DILocalVariable(name: "p", scope: !1666, file: !127, line: 807, type: !779)
!1674 = !DILocalVariable(name: "e", scope: !1666, file: !127, line: 808, type: !45)
!1675 = !DILocalVariable(name: "flags", scope: !1666, file: !127, line: 810, type: !45)
!1676 = !DILocalVariable(name: "bufsize", scope: !1666, file: !127, line: 811, type: !121)
!1677 = !DILocalVariable(name: "buf", scope: !1666, file: !127, line: 815, type: !10)
!1678 = !DILocation(line: 804, column: 33, scope: !1666, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 794, column: 10, scope: !1655)
!1680 = !DILocation(line: 804, column: 45, scope: !1666, inlinedAt: !1679)
!1681 = !DILocation(line: 804, column: 62, scope: !1666, inlinedAt: !1679)
!1682 = !DILocation(line: 805, column: 51, scope: !1666, inlinedAt: !1679)
!1683 = !DILocation(line: 807, column: 37, scope: !1666, inlinedAt: !1679)
!1684 = !DILocation(line: 807, column: 33, scope: !1666, inlinedAt: !1679)
!1685 = !DILocation(line: 808, column: 11, scope: !1666, inlinedAt: !1679)
!1686 = !DILocation(line: 808, column: 7, scope: !1666, inlinedAt: !1679)
!1687 = !DILocation(line: 810, column: 18, scope: !1666, inlinedAt: !1679)
!1688 = !DILocation(line: 810, column: 24, scope: !1666, inlinedAt: !1679)
!1689 = !DILocation(line: 810, column: 7, scope: !1666, inlinedAt: !1679)
!1690 = !DILocation(line: 811, column: 69, scope: !1666, inlinedAt: !1679)
!1691 = !DILocation(line: 812, column: 53, scope: !1666, inlinedAt: !1679)
!1692 = !DILocation(line: 813, column: 49, scope: !1666, inlinedAt: !1679)
!1693 = !DILocation(line: 814, column: 49, scope: !1666, inlinedAt: !1679)
!1694 = !DILocation(line: 811, column: 20, scope: !1666, inlinedAt: !1679)
!1695 = !DILocation(line: 814, column: 62, scope: !1666, inlinedAt: !1679)
!1696 = !DILocation(line: 811, column: 10, scope: !1666, inlinedAt: !1679)
!1697 = !DILocalVariable(name: "n", arg: 1, scope: !1698, file: !537, line: 220, type: !121)
!1698 = distinct !DISubprogram(name: "xcharalloc", scope: !537, file: !537, line: 220, type: !1699, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!10, !121}
!1701 = !{!1697}
!1702 = !DILocation(line: 220, column: 20, scope: !1698, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 815, column: 15, scope: !1666, inlinedAt: !1679)
!1704 = !DILocation(line: 222, column: 10, scope: !1698, inlinedAt: !1703)
!1705 = !DILocation(line: 815, column: 9, scope: !1666, inlinedAt: !1679)
!1706 = !DILocation(line: 816, column: 60, scope: !1666, inlinedAt: !1679)
!1707 = !DILocation(line: 818, column: 32, scope: !1666, inlinedAt: !1679)
!1708 = !DILocation(line: 818, column: 47, scope: !1666, inlinedAt: !1679)
!1709 = !DILocation(line: 816, column: 3, scope: !1666, inlinedAt: !1679)
!1710 = !DILocation(line: 819, column: 9, scope: !1666, inlinedAt: !1679)
!1711 = !DILocation(line: 794, column: 3, scope: !1655)
!1712 = !DILocation(line: 804, column: 33, scope: !1666)
!1713 = !DILocation(line: 804, column: 45, scope: !1666)
!1714 = !DILocation(line: 804, column: 62, scope: !1666)
!1715 = !DILocation(line: 805, column: 51, scope: !1666)
!1716 = !DILocation(line: 807, column: 37, scope: !1666)
!1717 = !DILocation(line: 807, column: 33, scope: !1666)
!1718 = !DILocation(line: 808, column: 11, scope: !1666)
!1719 = !DILocation(line: 808, column: 7, scope: !1666)
!1720 = !DILocation(line: 810, column: 18, scope: !1666)
!1721 = !DILocation(line: 810, column: 27, scope: !1666)
!1722 = !DILocation(line: 810, column: 24, scope: !1666)
!1723 = !DILocation(line: 810, column: 7, scope: !1666)
!1724 = !DILocation(line: 811, column: 69, scope: !1666)
!1725 = !DILocation(line: 812, column: 53, scope: !1666)
!1726 = !DILocation(line: 813, column: 49, scope: !1666)
!1727 = !DILocation(line: 814, column: 49, scope: !1666)
!1728 = !DILocation(line: 811, column: 20, scope: !1666)
!1729 = !DILocation(line: 814, column: 62, scope: !1666)
!1730 = !DILocation(line: 811, column: 10, scope: !1666)
!1731 = !DILocation(line: 220, column: 20, scope: !1698, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 815, column: 15, scope: !1666)
!1733 = !DILocation(line: 222, column: 10, scope: !1698, inlinedAt: !1732)
!1734 = !DILocation(line: 815, column: 9, scope: !1666)
!1735 = !DILocation(line: 816, column: 60, scope: !1666)
!1736 = !DILocation(line: 818, column: 32, scope: !1666)
!1737 = !DILocation(line: 818, column: 47, scope: !1666)
!1738 = !DILocation(line: 816, column: 3, scope: !1666)
!1739 = !DILocation(line: 819, column: 9, scope: !1666)
!1740 = !DILocation(line: 820, column: 7, scope: !1666)
!1741 = !DILocation(line: 821, column: 11, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1666, file: !127, line: 820, column: 7)
!1743 = !{!1744, !1744, i64 0}
!1744 = !{!"long", !587, i64 0}
!1745 = !DILocation(line: 821, column: 5, scope: !1742)
!1746 = !DILocation(line: 822, column: 3, scope: !1666)
!1747 = distinct !DISubprogram(name: "quotearg_free", scope: !127, file: !127, line: 840, type: !687, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1748)
!1748 = !{!1749, !1750}
!1749 = !DILocalVariable(name: "sv", scope: !1747, file: !127, line: 842, type: !154)
!1750 = !DILocalVariable(name: "i", scope: !1747, file: !127, line: 843, type: !45)
!1751 = !DILocation(line: 842, column: 24, scope: !1747)
!1752 = !DILocation(line: 842, column: 19, scope: !1747)
!1753 = !DILocation(line: 843, column: 7, scope: !1747)
!1754 = !DILocation(line: 844, column: 19, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !127, line: 844, column: 3)
!1756 = distinct !DILexicalBlock(scope: !1747, file: !127, line: 844, column: 3)
!1757 = !DILocation(line: 844, column: 17, scope: !1755)
!1758 = !DILocation(line: 844, column: 3, scope: !1756)
!1759 = !DILocation(line: 845, column: 17, scope: !1755)
!1760 = !{!1761, !586, i64 8}
!1761 = !{!"slotvec", !1744, i64 0, !586, i64 8}
!1762 = !DILocation(line: 845, column: 5, scope: !1755)
!1763 = !DILocation(line: 844, column: 28, scope: !1755)
!1764 = distinct !{!1764, !1758, !1765}
!1765 = !DILocation(line: 845, column: 20, scope: !1756)
!1766 = !DILocation(line: 846, column: 13, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1747, file: !127, line: 846, column: 7)
!1768 = !DILocation(line: 846, column: 17, scope: !1767)
!1769 = !DILocation(line: 846, column: 7, scope: !1747)
!1770 = !DILocation(line: 848, column: 7, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !127, line: 847, column: 5)
!1772 = !DILocation(line: 849, column: 21, scope: !1771)
!1773 = !{!1761, !1744, i64 0}
!1774 = !DILocation(line: 850, column: 20, scope: !1771)
!1775 = !DILocation(line: 851, column: 5, scope: !1771)
!1776 = !DILocation(line: 852, column: 10, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1747, file: !127, line: 852, column: 7)
!1778 = !DILocation(line: 852, column: 7, scope: !1747)
!1779 = !DILocation(line: 854, column: 13, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !127, line: 853, column: 5)
!1781 = !DILocation(line: 854, column: 7, scope: !1780)
!1782 = !DILocation(line: 855, column: 15, scope: !1780)
!1783 = !DILocation(line: 856, column: 5, scope: !1780)
!1784 = !DILocation(line: 857, column: 10, scope: !1747)
!1785 = !DILocation(line: 858, column: 1, scope: !1747)
!1786 = distinct !DISubprogram(name: "quotearg_n", scope: !127, file: !127, line: 922, type: !1787, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!10, !45, !20}
!1789 = !{!1790, !1791}
!1790 = !DILocalVariable(name: "n", arg: 1, scope: !1786, file: !127, line: 922, type: !45)
!1791 = !DILocalVariable(name: "arg", arg: 2, scope: !1786, file: !127, line: 922, type: !20)
!1792 = !DILocation(line: 922, column: 17, scope: !1786)
!1793 = !DILocation(line: 922, column: 32, scope: !1786)
!1794 = !DILocation(line: 924, column: 10, scope: !1786)
!1795 = !DILocation(line: 924, column: 3, scope: !1786)
!1796 = distinct !DISubprogram(name: "quotearg_n_options", scope: !127, file: !127, line: 869, type: !1797, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!10, !45, !20, !121, !779}
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1809, !1811, !1812, !1813}
!1800 = !DILocalVariable(name: "n", arg: 1, scope: !1796, file: !127, line: 869, type: !45)
!1801 = !DILocalVariable(name: "arg", arg: 2, scope: !1796, file: !127, line: 869, type: !20)
!1802 = !DILocalVariable(name: "argsize", arg: 3, scope: !1796, file: !127, line: 869, type: !121)
!1803 = !DILocalVariable(name: "options", arg: 4, scope: !1796, file: !127, line: 870, type: !779)
!1804 = !DILocalVariable(name: "e", scope: !1796, file: !127, line: 872, type: !45)
!1805 = !DILocalVariable(name: "sv", scope: !1796, file: !127, line: 874, type: !154)
!1806 = !DILocalVariable(name: "preallocated", scope: !1807, file: !127, line: 881, type: !51)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !127, line: 880, column: 5)
!1808 = distinct !DILexicalBlock(scope: !1796, file: !127, line: 879, column: 7)
!1809 = !DILocalVariable(name: "size", scope: !1810, file: !127, line: 894, type: !121)
!1810 = distinct !DILexicalBlock(scope: !1796, file: !127, line: 893, column: 3)
!1811 = !DILocalVariable(name: "val", scope: !1810, file: !127, line: 895, type: !10)
!1812 = !DILocalVariable(name: "flags", scope: !1810, file: !127, line: 897, type: !45)
!1813 = !DILocalVariable(name: "qsize", scope: !1810, file: !127, line: 898, type: !121)
!1814 = !DILocation(line: 869, column: 25, scope: !1796)
!1815 = !DILocation(line: 869, column: 40, scope: !1796)
!1816 = !DILocation(line: 869, column: 52, scope: !1796)
!1817 = !DILocation(line: 870, column: 51, scope: !1796)
!1818 = !DILocation(line: 872, column: 11, scope: !1796)
!1819 = !DILocation(line: 872, column: 7, scope: !1796)
!1820 = !DILocation(line: 874, column: 24, scope: !1796)
!1821 = !DILocation(line: 874, column: 19, scope: !1796)
!1822 = !DILocation(line: 876, column: 9, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1796, file: !127, line: 876, column: 7)
!1824 = !DILocation(line: 876, column: 7, scope: !1796)
!1825 = !DILocation(line: 877, column: 5, scope: !1823)
!1826 = !DILocation(line: 879, column: 7, scope: !1808)
!1827 = !DILocation(line: 879, column: 14, scope: !1808)
!1828 = !DILocation(line: 879, column: 7, scope: !1796)
!1829 = !DILocation(line: 881, column: 31, scope: !1807)
!1830 = !DILocation(line: 883, column: 67, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1807, file: !127, line: 883, column: 11)
!1832 = !DILocation(line: 883, column: 11, scope: !1807)
!1833 = !DILocation(line: 884, column: 9, scope: !1831)
!1834 = !DILocation(line: 886, column: 32, scope: !1807)
!1835 = !DILocation(line: 886, column: 61, scope: !1807)
!1836 = !DILocation(line: 886, column: 58, scope: !1807)
!1837 = !DILocation(line: 886, column: 66, scope: !1807)
!1838 = !DILocation(line: 886, column: 22, scope: !1807)
!1839 = !DILocation(line: 886, column: 15, scope: !1807)
!1840 = !DILocation(line: 887, column: 11, scope: !1807)
!1841 = !DILocation(line: 888, column: 15, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1807, file: !127, line: 887, column: 11)
!1843 = !{i64 0, i64 8, !1743, i64 8, i64 8, !585}
!1844 = !DILocation(line: 888, column: 9, scope: !1842)
!1845 = !DILocation(line: 889, column: 20, scope: !1807)
!1846 = !DILocation(line: 889, column: 18, scope: !1807)
!1847 = !DILocation(line: 889, column: 7, scope: !1807)
!1848 = !DILocation(line: 889, column: 38, scope: !1807)
!1849 = !DILocation(line: 889, column: 31, scope: !1807)
!1850 = !DILocation(line: 889, column: 48, scope: !1807)
!1851 = !DILocation(line: 890, column: 14, scope: !1807)
!1852 = !DILocation(line: 891, column: 5, scope: !1807)
!1853 = !DILocation(line: 894, column: 19, scope: !1810)
!1854 = !DILocation(line: 894, column: 25, scope: !1810)
!1855 = !DILocation(line: 894, column: 12, scope: !1810)
!1856 = !DILocation(line: 895, column: 23, scope: !1810)
!1857 = !DILocation(line: 895, column: 11, scope: !1810)
!1858 = !DILocation(line: 897, column: 26, scope: !1810)
!1859 = !DILocation(line: 897, column: 32, scope: !1810)
!1860 = !DILocation(line: 897, column: 9, scope: !1810)
!1861 = !DILocation(line: 899, column: 55, scope: !1810)
!1862 = !DILocation(line: 900, column: 46, scope: !1810)
!1863 = !DILocation(line: 901, column: 55, scope: !1810)
!1864 = !DILocation(line: 902, column: 55, scope: !1810)
!1865 = !DILocation(line: 898, column: 20, scope: !1810)
!1866 = !DILocation(line: 898, column: 12, scope: !1810)
!1867 = !DILocation(line: 904, column: 14, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1810, file: !127, line: 904, column: 9)
!1869 = !DILocation(line: 904, column: 9, scope: !1810)
!1870 = !DILocation(line: 906, column: 35, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !127, line: 905, column: 7)
!1872 = !DILocation(line: 906, column: 20, scope: !1871)
!1873 = !DILocation(line: 907, column: 17, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !127, line: 907, column: 13)
!1875 = !DILocation(line: 907, column: 13, scope: !1871)
!1876 = !DILocation(line: 908, column: 11, scope: !1874)
!1877 = !DILocation(line: 220, column: 20, scope: !1698, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 909, column: 27, scope: !1871)
!1879 = !DILocation(line: 222, column: 10, scope: !1698, inlinedAt: !1878)
!1880 = !DILocation(line: 909, column: 19, scope: !1871)
!1881 = !DILocation(line: 910, column: 69, scope: !1871)
!1882 = !DILocation(line: 912, column: 44, scope: !1871)
!1883 = !DILocation(line: 913, column: 44, scope: !1871)
!1884 = !DILocation(line: 910, column: 9, scope: !1871)
!1885 = !DILocation(line: 914, column: 7, scope: !1871)
!1886 = !DILocation(line: 916, column: 11, scope: !1810)
!1887 = !DILocation(line: 917, column: 5, scope: !1810)
!1888 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !127, file: !127, line: 928, type: !1889, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!10, !45, !20, !121}
!1891 = !{!1892, !1893, !1894}
!1892 = !DILocalVariable(name: "n", arg: 1, scope: !1888, file: !127, line: 928, type: !45)
!1893 = !DILocalVariable(name: "arg", arg: 2, scope: !1888, file: !127, line: 928, type: !20)
!1894 = !DILocalVariable(name: "argsize", arg: 3, scope: !1888, file: !127, line: 928, type: !121)
!1895 = !DILocation(line: 928, column: 21, scope: !1888)
!1896 = !DILocation(line: 928, column: 36, scope: !1888)
!1897 = !DILocation(line: 928, column: 48, scope: !1888)
!1898 = !DILocation(line: 930, column: 10, scope: !1888)
!1899 = !DILocation(line: 930, column: 3, scope: !1888)
!1900 = distinct !DISubprogram(name: "quotearg", scope: !127, file: !127, line: 934, type: !1901, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!10, !20}
!1903 = !{!1904}
!1904 = !DILocalVariable(name: "arg", arg: 1, scope: !1900, file: !127, line: 934, type: !20)
!1905 = !DILocation(line: 934, column: 23, scope: !1900)
!1906 = !DILocation(line: 922, column: 17, scope: !1786, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 936, column: 10, scope: !1900)
!1908 = !DILocation(line: 922, column: 32, scope: !1786, inlinedAt: !1907)
!1909 = !DILocation(line: 924, column: 10, scope: !1786, inlinedAt: !1907)
!1910 = !DILocation(line: 936, column: 3, scope: !1900)
!1911 = distinct !DISubprogram(name: "quotearg_mem", scope: !127, file: !127, line: 940, type: !1912, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!10, !20, !121}
!1914 = !{!1915, !1916}
!1915 = !DILocalVariable(name: "arg", arg: 1, scope: !1911, file: !127, line: 940, type: !20)
!1916 = !DILocalVariable(name: "argsize", arg: 2, scope: !1911, file: !127, line: 940, type: !121)
!1917 = !DILocation(line: 940, column: 27, scope: !1911)
!1918 = !DILocation(line: 940, column: 39, scope: !1911)
!1919 = !DILocation(line: 928, column: 21, scope: !1888, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 942, column: 10, scope: !1911)
!1921 = !DILocation(line: 928, column: 36, scope: !1888, inlinedAt: !1920)
!1922 = !DILocation(line: 928, column: 48, scope: !1888, inlinedAt: !1920)
!1923 = !DILocation(line: 930, column: 10, scope: !1888, inlinedAt: !1920)
!1924 = !DILocation(line: 942, column: 3, scope: !1911)
!1925 = distinct !DISubprogram(name: "quotearg_n_style", scope: !127, file: !127, line: 946, type: !1926, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!10, !45, !85, !20}
!1928 = !{!1929, !1930, !1931, !1932}
!1929 = !DILocalVariable(name: "n", arg: 1, scope: !1925, file: !127, line: 946, type: !45)
!1930 = !DILocalVariable(name: "s", arg: 2, scope: !1925, file: !127, line: 946, type: !85)
!1931 = !DILocalVariable(name: "arg", arg: 3, scope: !1925, file: !127, line: 946, type: !20)
!1932 = !DILocalVariable(name: "o", scope: !1925, file: !127, line: 948, type: !780)
!1933 = !DILocalVariable(name: "o", scope: !1934, file: !127, line: 187, type: !134)
!1934 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !127, file: !127, line: 185, type: !1935, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!134, !85}
!1937 = !{!1938, !1933}
!1938 = !DILocalVariable(name: "style", arg: 1, scope: !1934, file: !127, line: 185, type: !85)
!1939 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!1940 = !DILocation(line: 187, column: 26, scope: !1934, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 948, column: 36, scope: !1925)
!1942 = !DILocation(line: 946, column: 23, scope: !1925)
!1943 = !DILocation(line: 946, column: 45, scope: !1925)
!1944 = !DILocation(line: 946, column: 60, scope: !1925)
!1945 = !DILocation(line: 948, column: 3, scope: !1925)
!1946 = !DILocation(line: 948, column: 32, scope: !1925)
!1947 = !DILocation(line: 185, column: 48, scope: !1934, inlinedAt: !1941)
!1948 = !DILocation(line: 187, column: 3, scope: !1934, inlinedAt: !1941)
!1949 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!1950 = !DILocation(line: 188, column: 13, scope: !1951, inlinedAt: !1941)
!1951 = distinct !DILexicalBlock(scope: !1934, file: !127, line: 188, column: 7)
!1952 = !DILocation(line: 188, column: 7, scope: !1934, inlinedAt: !1941)
!1953 = !DILocation(line: 189, column: 5, scope: !1951, inlinedAt: !1941)
!1954 = !{!1955}
!1955 = distinct !{!1955, !1956, !"quoting_options_from_style: argument 0"}
!1956 = distinct !{!1956, !"quoting_options_from_style"}
!1957 = !DILocation(line: 191, column: 10, scope: !1934, inlinedAt: !1941)
!1958 = !DILocation(line: 192, column: 1, scope: !1934, inlinedAt: !1941)
!1959 = !DILocation(line: 949, column: 10, scope: !1925)
!1960 = !DILocation(line: 950, column: 1, scope: !1925)
!1961 = !DILocation(line: 949, column: 3, scope: !1925)
!1962 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !127, file: !127, line: 953, type: !1963, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!10, !45, !85, !20, !121}
!1965 = !{!1966, !1967, !1968, !1969, !1970}
!1966 = !DILocalVariable(name: "n", arg: 1, scope: !1962, file: !127, line: 953, type: !45)
!1967 = !DILocalVariable(name: "s", arg: 2, scope: !1962, file: !127, line: 953, type: !85)
!1968 = !DILocalVariable(name: "arg", arg: 3, scope: !1962, file: !127, line: 954, type: !20)
!1969 = !DILocalVariable(name: "argsize", arg: 4, scope: !1962, file: !127, line: 954, type: !121)
!1970 = !DILocalVariable(name: "o", scope: !1962, file: !127, line: 956, type: !780)
!1971 = !DILocation(line: 187, column: 26, scope: !1934, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 956, column: 36, scope: !1962)
!1973 = !DILocation(line: 953, column: 27, scope: !1962)
!1974 = !DILocation(line: 953, column: 49, scope: !1962)
!1975 = !DILocation(line: 954, column: 35, scope: !1962)
!1976 = !DILocation(line: 954, column: 47, scope: !1962)
!1977 = !DILocation(line: 956, column: 3, scope: !1962)
!1978 = !DILocation(line: 956, column: 32, scope: !1962)
!1979 = !DILocation(line: 185, column: 48, scope: !1934, inlinedAt: !1972)
!1980 = !DILocation(line: 187, column: 3, scope: !1934, inlinedAt: !1972)
!1981 = !DILocation(line: 188, column: 13, scope: !1951, inlinedAt: !1972)
!1982 = !DILocation(line: 188, column: 7, scope: !1934, inlinedAt: !1972)
!1983 = !DILocation(line: 189, column: 5, scope: !1951, inlinedAt: !1972)
!1984 = !{!1985}
!1985 = distinct !{!1985, !1986, !"quoting_options_from_style: argument 0"}
!1986 = distinct !{!1986, !"quoting_options_from_style"}
!1987 = !DILocation(line: 191, column: 10, scope: !1934, inlinedAt: !1972)
!1988 = !DILocation(line: 192, column: 1, scope: !1934, inlinedAt: !1972)
!1989 = !DILocation(line: 957, column: 10, scope: !1962)
!1990 = !DILocation(line: 958, column: 1, scope: !1962)
!1991 = !DILocation(line: 957, column: 3, scope: !1962)
!1992 = distinct !DISubprogram(name: "quotearg_style", scope: !127, file: !127, line: 961, type: !1993, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!10, !85, !20}
!1995 = !{!1996, !1997}
!1996 = !DILocalVariable(name: "s", arg: 1, scope: !1992, file: !127, line: 961, type: !85)
!1997 = !DILocalVariable(name: "arg", arg: 2, scope: !1992, file: !127, line: 961, type: !20)
!1998 = !DILocation(line: 187, column: 26, scope: !1934, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 948, column: 36, scope: !1925, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 963, column: 10, scope: !1992)
!2001 = !DILocation(line: 961, column: 36, scope: !1992)
!2002 = !DILocation(line: 961, column: 51, scope: !1992)
!2003 = !DILocation(line: 946, column: 23, scope: !1925, inlinedAt: !2000)
!2004 = !DILocation(line: 946, column: 45, scope: !1925, inlinedAt: !2000)
!2005 = !DILocation(line: 946, column: 60, scope: !1925, inlinedAt: !2000)
!2006 = !DILocation(line: 948, column: 3, scope: !1925, inlinedAt: !2000)
!2007 = !DILocation(line: 948, column: 32, scope: !1925, inlinedAt: !2000)
!2008 = !DILocation(line: 185, column: 48, scope: !1934, inlinedAt: !1999)
!2009 = !DILocation(line: 187, column: 3, scope: !1934, inlinedAt: !1999)
!2010 = !DILocation(line: 188, column: 13, scope: !1951, inlinedAt: !1999)
!2011 = !DILocation(line: 188, column: 7, scope: !1934, inlinedAt: !1999)
!2012 = !DILocation(line: 189, column: 5, scope: !1951, inlinedAt: !1999)
!2013 = !{!2014}
!2014 = distinct !{!2014, !2015, !"quoting_options_from_style: argument 0"}
!2015 = distinct !{!2015, !"quoting_options_from_style"}
!2016 = !DILocation(line: 191, column: 10, scope: !1934, inlinedAt: !1999)
!2017 = !DILocation(line: 192, column: 1, scope: !1934, inlinedAt: !1999)
!2018 = !DILocation(line: 949, column: 10, scope: !1925, inlinedAt: !2000)
!2019 = !DILocation(line: 950, column: 1, scope: !1925, inlinedAt: !2000)
!2020 = !DILocation(line: 963, column: 3, scope: !1992)
!2021 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !127, file: !127, line: 967, type: !2022, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!10, !85, !20, !121}
!2024 = !{!2025, !2026, !2027}
!2025 = !DILocalVariable(name: "s", arg: 1, scope: !2021, file: !127, line: 967, type: !85)
!2026 = !DILocalVariable(name: "arg", arg: 2, scope: !2021, file: !127, line: 967, type: !20)
!2027 = !DILocalVariable(name: "argsize", arg: 3, scope: !2021, file: !127, line: 967, type: !121)
!2028 = !DILocation(line: 187, column: 26, scope: !1934, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 956, column: 36, scope: !1962, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 969, column: 10, scope: !2021)
!2031 = !DILocation(line: 967, column: 40, scope: !2021)
!2032 = !DILocation(line: 967, column: 55, scope: !2021)
!2033 = !DILocation(line: 967, column: 67, scope: !2021)
!2034 = !DILocation(line: 953, column: 27, scope: !1962, inlinedAt: !2030)
!2035 = !DILocation(line: 953, column: 49, scope: !1962, inlinedAt: !2030)
!2036 = !DILocation(line: 954, column: 35, scope: !1962, inlinedAt: !2030)
!2037 = !DILocation(line: 954, column: 47, scope: !1962, inlinedAt: !2030)
!2038 = !DILocation(line: 956, column: 3, scope: !1962, inlinedAt: !2030)
!2039 = !DILocation(line: 956, column: 32, scope: !1962, inlinedAt: !2030)
!2040 = !DILocation(line: 185, column: 48, scope: !1934, inlinedAt: !2029)
!2041 = !DILocation(line: 187, column: 3, scope: !1934, inlinedAt: !2029)
!2042 = !DILocation(line: 188, column: 13, scope: !1951, inlinedAt: !2029)
!2043 = !DILocation(line: 188, column: 7, scope: !1934, inlinedAt: !2029)
!2044 = !DILocation(line: 189, column: 5, scope: !1951, inlinedAt: !2029)
!2045 = !{!2046}
!2046 = distinct !{!2046, !2047, !"quoting_options_from_style: argument 0"}
!2047 = distinct !{!2047, !"quoting_options_from_style"}
!2048 = !DILocation(line: 191, column: 10, scope: !1934, inlinedAt: !2029)
!2049 = !DILocation(line: 192, column: 1, scope: !1934, inlinedAt: !2029)
!2050 = !DILocation(line: 957, column: 10, scope: !1962, inlinedAt: !2030)
!2051 = !DILocation(line: 958, column: 1, scope: !1962, inlinedAt: !2030)
!2052 = !DILocation(line: 969, column: 3, scope: !2021)
!2053 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !127, file: !127, line: 973, type: !2054, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2056)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!10, !20, !121, !11}
!2056 = !{!2057, !2058, !2059, !2060}
!2057 = !DILocalVariable(name: "arg", arg: 1, scope: !2053, file: !127, line: 973, type: !20)
!2058 = !DILocalVariable(name: "argsize", arg: 2, scope: !2053, file: !127, line: 973, type: !121)
!2059 = !DILocalVariable(name: "ch", arg: 3, scope: !2053, file: !127, line: 973, type: !11)
!2060 = !DILocalVariable(name: "options", scope: !2053, file: !127, line: 975, type: !134)
!2061 = !DILocation(line: 973, column: 32, scope: !2053)
!2062 = !DILocation(line: 973, column: 44, scope: !2053)
!2063 = !DILocation(line: 973, column: 58, scope: !2053)
!2064 = !DILocation(line: 975, column: 3, scope: !2053)
!2065 = !DILocation(line: 976, column: 13, scope: !2053)
!2066 = !{i64 0, i64 4, !1007, i64 4, i64 4, !633, i64 8, i64 32, !1007, i64 40, i64 8, !585, i64 48, i64 8, !585}
!2067 = !DILocation(line: 975, column: 26, scope: !2053)
!2068 = !DILocation(line: 144, column: 43, scope: !801, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 977, column: 3, scope: !2053)
!2070 = !DILocation(line: 144, column: 51, scope: !801, inlinedAt: !2069)
!2071 = !DILocation(line: 144, column: 58, scope: !801, inlinedAt: !2069)
!2072 = !DILocation(line: 146, column: 17, scope: !801, inlinedAt: !2069)
!2073 = !DILocation(line: 148, column: 62, scope: !801, inlinedAt: !2069)
!2074 = !DILocation(line: 148, column: 57, scope: !801, inlinedAt: !2069)
!2075 = !DILocation(line: 147, column: 17, scope: !801, inlinedAt: !2069)
!2076 = !DILocation(line: 149, column: 18, scope: !801, inlinedAt: !2069)
!2077 = !DILocation(line: 149, column: 15, scope: !801, inlinedAt: !2069)
!2078 = !DILocation(line: 149, column: 7, scope: !801, inlinedAt: !2069)
!2079 = !DILocation(line: 150, column: 12, scope: !801, inlinedAt: !2069)
!2080 = !DILocation(line: 150, column: 15, scope: !801, inlinedAt: !2069)
!2081 = !DILocation(line: 150, column: 25, scope: !801, inlinedAt: !2069)
!2082 = !DILocation(line: 150, column: 7, scope: !801, inlinedAt: !2069)
!2083 = !DILocation(line: 151, column: 18, scope: !801, inlinedAt: !2069)
!2084 = !DILocation(line: 151, column: 23, scope: !801, inlinedAt: !2069)
!2085 = !DILocation(line: 151, column: 6, scope: !801, inlinedAt: !2069)
!2086 = !DILocation(line: 978, column: 10, scope: !2053)
!2087 = !DILocation(line: 979, column: 1, scope: !2053)
!2088 = !DILocation(line: 978, column: 3, scope: !2053)
!2089 = distinct !DISubprogram(name: "quotearg_char", scope: !127, file: !127, line: 982, type: !2090, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!10, !20, !11}
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "arg", arg: 1, scope: !2089, file: !127, line: 982, type: !20)
!2094 = !DILocalVariable(name: "ch", arg: 2, scope: !2089, file: !127, line: 982, type: !11)
!2095 = !DILocation(line: 982, column: 28, scope: !2089)
!2096 = !DILocation(line: 982, column: 38, scope: !2089)
!2097 = !DILocation(line: 973, column: 32, scope: !2053, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 984, column: 10, scope: !2089)
!2099 = !DILocation(line: 973, column: 44, scope: !2053, inlinedAt: !2098)
!2100 = !DILocation(line: 973, column: 58, scope: !2053, inlinedAt: !2098)
!2101 = !DILocation(line: 975, column: 3, scope: !2053, inlinedAt: !2098)
!2102 = !DILocation(line: 976, column: 13, scope: !2053, inlinedAt: !2098)
!2103 = !DILocation(line: 975, column: 26, scope: !2053, inlinedAt: !2098)
!2104 = !DILocation(line: 144, column: 43, scope: !801, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 977, column: 3, scope: !2053, inlinedAt: !2098)
!2106 = !DILocation(line: 144, column: 51, scope: !801, inlinedAt: !2105)
!2107 = !DILocation(line: 144, column: 58, scope: !801, inlinedAt: !2105)
!2108 = !DILocation(line: 146, column: 17, scope: !801, inlinedAt: !2105)
!2109 = !DILocation(line: 148, column: 62, scope: !801, inlinedAt: !2105)
!2110 = !DILocation(line: 148, column: 57, scope: !801, inlinedAt: !2105)
!2111 = !DILocation(line: 147, column: 17, scope: !801, inlinedAt: !2105)
!2112 = !DILocation(line: 149, column: 18, scope: !801, inlinedAt: !2105)
!2113 = !DILocation(line: 149, column: 15, scope: !801, inlinedAt: !2105)
!2114 = !DILocation(line: 149, column: 7, scope: !801, inlinedAt: !2105)
!2115 = !DILocation(line: 150, column: 12, scope: !801, inlinedAt: !2105)
!2116 = !DILocation(line: 150, column: 15, scope: !801, inlinedAt: !2105)
!2117 = !DILocation(line: 150, column: 25, scope: !801, inlinedAt: !2105)
!2118 = !DILocation(line: 150, column: 7, scope: !801, inlinedAt: !2105)
!2119 = !DILocation(line: 151, column: 18, scope: !801, inlinedAt: !2105)
!2120 = !DILocation(line: 151, column: 23, scope: !801, inlinedAt: !2105)
!2121 = !DILocation(line: 151, column: 6, scope: !801, inlinedAt: !2105)
!2122 = !DILocation(line: 978, column: 10, scope: !2053, inlinedAt: !2098)
!2123 = !DILocation(line: 979, column: 1, scope: !2053, inlinedAt: !2098)
!2124 = !DILocation(line: 984, column: 3, scope: !2089)
!2125 = distinct !DISubprogram(name: "quotearg_colon", scope: !127, file: !127, line: 988, type: !1901, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2126)
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "arg", arg: 1, scope: !2125, file: !127, line: 988, type: !20)
!2128 = !DILocation(line: 988, column: 29, scope: !2125)
!2129 = !DILocation(line: 982, column: 28, scope: !2089, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 990, column: 10, scope: !2125)
!2131 = !DILocation(line: 982, column: 38, scope: !2089, inlinedAt: !2130)
!2132 = !DILocation(line: 973, column: 32, scope: !2053, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 984, column: 10, scope: !2089, inlinedAt: !2130)
!2134 = !DILocation(line: 973, column: 44, scope: !2053, inlinedAt: !2133)
!2135 = !DILocation(line: 973, column: 58, scope: !2053, inlinedAt: !2133)
!2136 = !DILocation(line: 975, column: 3, scope: !2053, inlinedAt: !2133)
!2137 = !DILocation(line: 976, column: 13, scope: !2053, inlinedAt: !2133)
!2138 = !DILocation(line: 975, column: 26, scope: !2053, inlinedAt: !2133)
!2139 = !DILocation(line: 144, column: 43, scope: !801, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 977, column: 3, scope: !2053, inlinedAt: !2133)
!2141 = !DILocation(line: 144, column: 51, scope: !801, inlinedAt: !2140)
!2142 = !DILocation(line: 144, column: 58, scope: !801, inlinedAt: !2140)
!2143 = !DILocation(line: 146, column: 17, scope: !801, inlinedAt: !2140)
!2144 = !DILocation(line: 148, column: 57, scope: !801, inlinedAt: !2140)
!2145 = !DILocation(line: 147, column: 17, scope: !801, inlinedAt: !2140)
!2146 = !DILocation(line: 149, column: 7, scope: !801, inlinedAt: !2140)
!2147 = !DILocation(line: 150, column: 12, scope: !801, inlinedAt: !2140)
!2148 = !DILocation(line: 151, column: 6, scope: !801, inlinedAt: !2140)
!2149 = !DILocation(line: 978, column: 10, scope: !2053, inlinedAt: !2133)
!2150 = !DILocation(line: 979, column: 1, scope: !2053, inlinedAt: !2133)
!2151 = !DILocation(line: 990, column: 3, scope: !2125)
!2152 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !127, file: !127, line: 994, type: !1912, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2153)
!2153 = !{!2154, !2155}
!2154 = !DILocalVariable(name: "arg", arg: 1, scope: !2152, file: !127, line: 994, type: !20)
!2155 = !DILocalVariable(name: "argsize", arg: 2, scope: !2152, file: !127, line: 994, type: !121)
!2156 = !DILocation(line: 994, column: 33, scope: !2152)
!2157 = !DILocation(line: 994, column: 45, scope: !2152)
!2158 = !DILocation(line: 973, column: 32, scope: !2053, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 996, column: 10, scope: !2152)
!2160 = !DILocation(line: 973, column: 44, scope: !2053, inlinedAt: !2159)
!2161 = !DILocation(line: 973, column: 58, scope: !2053, inlinedAt: !2159)
!2162 = !DILocation(line: 975, column: 3, scope: !2053, inlinedAt: !2159)
!2163 = !DILocation(line: 976, column: 13, scope: !2053, inlinedAt: !2159)
!2164 = !DILocation(line: 975, column: 26, scope: !2053, inlinedAt: !2159)
!2165 = !DILocation(line: 144, column: 43, scope: !801, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 977, column: 3, scope: !2053, inlinedAt: !2159)
!2167 = !DILocation(line: 144, column: 51, scope: !801, inlinedAt: !2166)
!2168 = !DILocation(line: 144, column: 58, scope: !801, inlinedAt: !2166)
!2169 = !DILocation(line: 146, column: 17, scope: !801, inlinedAt: !2166)
!2170 = !DILocation(line: 148, column: 57, scope: !801, inlinedAt: !2166)
!2171 = !DILocation(line: 147, column: 17, scope: !801, inlinedAt: !2166)
!2172 = !DILocation(line: 149, column: 7, scope: !801, inlinedAt: !2166)
!2173 = !DILocation(line: 150, column: 12, scope: !801, inlinedAt: !2166)
!2174 = !DILocation(line: 151, column: 6, scope: !801, inlinedAt: !2166)
!2175 = !DILocation(line: 978, column: 10, scope: !2053, inlinedAt: !2159)
!2176 = !DILocation(line: 979, column: 1, scope: !2053, inlinedAt: !2159)
!2177 = !DILocation(line: 996, column: 3, scope: !2152)
!2178 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !127, file: !127, line: 1000, type: !1926, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2179)
!2179 = !{!2180, !2181, !2182, !2183}
!2180 = !DILocalVariable(name: "n", arg: 1, scope: !2178, file: !127, line: 1000, type: !45)
!2181 = !DILocalVariable(name: "s", arg: 2, scope: !2178, file: !127, line: 1000, type: !85)
!2182 = !DILocalVariable(name: "arg", arg: 3, scope: !2178, file: !127, line: 1000, type: !20)
!2183 = !DILocalVariable(name: "options", scope: !2178, file: !127, line: 1002, type: !134)
!2184 = !DILocation(line: 187, column: 26, scope: !1934, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 1003, column: 13, scope: !2178)
!2186 = !DILocation(line: 1000, column: 29, scope: !2178)
!2187 = !DILocation(line: 1000, column: 51, scope: !2178)
!2188 = !DILocation(line: 1000, column: 66, scope: !2178)
!2189 = !DILocation(line: 1002, column: 3, scope: !2178)
!2190 = !DILocation(line: 185, column: 48, scope: !1934, inlinedAt: !2185)
!2191 = !DILocation(line: 187, column: 3, scope: !1934, inlinedAt: !2185)
!2192 = !DILocation(line: 188, column: 13, scope: !1951, inlinedAt: !2185)
!2193 = !DILocation(line: 188, column: 7, scope: !1934, inlinedAt: !2185)
!2194 = !DILocation(line: 189, column: 5, scope: !1951, inlinedAt: !2185)
!2195 = !{!2196}
!2196 = distinct !{!2196, !2197, !"quoting_options_from_style: argument 0"}
!2197 = distinct !{!2197, !"quoting_options_from_style"}
!2198 = !DILocation(line: 191, column: 10, scope: !1934, inlinedAt: !2185)
!2199 = !DILocation(line: 192, column: 1, scope: !1934, inlinedAt: !2185)
!2200 = !DILocation(line: 1003, column: 13, scope: !2178)
!2201 = !DILocation(line: 1002, column: 26, scope: !2178)
!2202 = !DILocation(line: 144, column: 43, scope: !801, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 1004, column: 3, scope: !2178)
!2204 = !DILocation(line: 144, column: 51, scope: !801, inlinedAt: !2203)
!2205 = !DILocation(line: 144, column: 58, scope: !801, inlinedAt: !2203)
!2206 = !DILocation(line: 146, column: 17, scope: !801, inlinedAt: !2203)
!2207 = !DILocation(line: 148, column: 57, scope: !801, inlinedAt: !2203)
!2208 = !DILocation(line: 147, column: 17, scope: !801, inlinedAt: !2203)
!2209 = !DILocation(line: 149, column: 7, scope: !801, inlinedAt: !2203)
!2210 = !DILocation(line: 150, column: 12, scope: !801, inlinedAt: !2203)
!2211 = !DILocation(line: 151, column: 6, scope: !801, inlinedAt: !2203)
!2212 = !DILocation(line: 1005, column: 10, scope: !2178)
!2213 = !DILocation(line: 1006, column: 1, scope: !2178)
!2214 = !DILocation(line: 1005, column: 3, scope: !2178)
!2215 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !127, file: !127, line: 1009, type: !2216, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!10, !45, !20, !20, !20}
!2218 = !{!2219, !2220, !2221, !2222}
!2219 = !DILocalVariable(name: "n", arg: 1, scope: !2215, file: !127, line: 1009, type: !45)
!2220 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2215, file: !127, line: 1009, type: !20)
!2221 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2215, file: !127, line: 1010, type: !20)
!2222 = !DILocalVariable(name: "arg", arg: 4, scope: !2215, file: !127, line: 1010, type: !20)
!2223 = !DILocation(line: 1009, column: 24, scope: !2215)
!2224 = !DILocation(line: 1009, column: 39, scope: !2215)
!2225 = !DILocation(line: 1010, column: 32, scope: !2215)
!2226 = !DILocation(line: 1010, column: 57, scope: !2215)
!2227 = !DILocalVariable(name: "n", arg: 1, scope: !2228, file: !127, line: 1017, type: !45)
!2228 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !127, file: !127, line: 1017, type: !2229, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!10, !45, !20, !20, !20, !121}
!2231 = !{!2227, !2232, !2233, !2234, !2235, !2236}
!2232 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2228, file: !127, line: 1017, type: !20)
!2233 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2228, file: !127, line: 1018, type: !20)
!2234 = !DILocalVariable(name: "arg", arg: 4, scope: !2228, file: !127, line: 1019, type: !20)
!2235 = !DILocalVariable(name: "argsize", arg: 5, scope: !2228, file: !127, line: 1019, type: !121)
!2236 = !DILocalVariable(name: "o", scope: !2228, file: !127, line: 1021, type: !134)
!2237 = !DILocation(line: 1017, column: 28, scope: !2228, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 1012, column: 10, scope: !2215)
!2239 = !DILocation(line: 1017, column: 43, scope: !2228, inlinedAt: !2238)
!2240 = !DILocation(line: 1018, column: 36, scope: !2228, inlinedAt: !2238)
!2241 = !DILocation(line: 1019, column: 36, scope: !2228, inlinedAt: !2238)
!2242 = !DILocation(line: 1019, column: 48, scope: !2228, inlinedAt: !2238)
!2243 = !DILocation(line: 1021, column: 3, scope: !2228, inlinedAt: !2238)
!2244 = !DILocation(line: 1021, column: 30, scope: !2228, inlinedAt: !2238)
!2245 = !DILocation(line: 1021, column: 26, scope: !2228, inlinedAt: !2238)
!2246 = !DILocation(line: 171, column: 45, scope: !850, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 1022, column: 3, scope: !2228, inlinedAt: !2238)
!2248 = !DILocation(line: 172, column: 33, scope: !850, inlinedAt: !2247)
!2249 = !DILocation(line: 172, column: 57, scope: !850, inlinedAt: !2247)
!2250 = !DILocation(line: 176, column: 6, scope: !850, inlinedAt: !2247)
!2251 = !DILocation(line: 176, column: 12, scope: !850, inlinedAt: !2247)
!2252 = !DILocation(line: 177, column: 8, scope: !866, inlinedAt: !2247)
!2253 = !DILocation(line: 177, column: 23, scope: !866, inlinedAt: !2247)
!2254 = !DILocation(line: 177, column: 19, scope: !866, inlinedAt: !2247)
!2255 = !DILocation(line: 178, column: 5, scope: !866, inlinedAt: !2247)
!2256 = !DILocation(line: 179, column: 6, scope: !850, inlinedAt: !2247)
!2257 = !DILocation(line: 179, column: 17, scope: !850, inlinedAt: !2247)
!2258 = !DILocation(line: 180, column: 6, scope: !850, inlinedAt: !2247)
!2259 = !DILocation(line: 180, column: 18, scope: !850, inlinedAt: !2247)
!2260 = !DILocation(line: 1023, column: 10, scope: !2228, inlinedAt: !2238)
!2261 = !DILocation(line: 1024, column: 1, scope: !2228, inlinedAt: !2238)
!2262 = !DILocation(line: 1012, column: 3, scope: !2215)
!2263 = !DILocation(line: 1017, column: 28, scope: !2228)
!2264 = !DILocation(line: 1017, column: 43, scope: !2228)
!2265 = !DILocation(line: 1018, column: 36, scope: !2228)
!2266 = !DILocation(line: 1019, column: 36, scope: !2228)
!2267 = !DILocation(line: 1019, column: 48, scope: !2228)
!2268 = !DILocation(line: 1021, column: 3, scope: !2228)
!2269 = !DILocation(line: 1021, column: 30, scope: !2228)
!2270 = !DILocation(line: 1021, column: 26, scope: !2228)
!2271 = !DILocation(line: 171, column: 45, scope: !850, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 1022, column: 3, scope: !2228)
!2273 = !DILocation(line: 172, column: 33, scope: !850, inlinedAt: !2272)
!2274 = !DILocation(line: 172, column: 57, scope: !850, inlinedAt: !2272)
!2275 = !DILocation(line: 176, column: 6, scope: !850, inlinedAt: !2272)
!2276 = !DILocation(line: 176, column: 12, scope: !850, inlinedAt: !2272)
!2277 = !DILocation(line: 177, column: 8, scope: !866, inlinedAt: !2272)
!2278 = !DILocation(line: 177, column: 23, scope: !866, inlinedAt: !2272)
!2279 = !DILocation(line: 177, column: 19, scope: !866, inlinedAt: !2272)
!2280 = !DILocation(line: 178, column: 5, scope: !866, inlinedAt: !2272)
!2281 = !DILocation(line: 179, column: 6, scope: !850, inlinedAt: !2272)
!2282 = !DILocation(line: 179, column: 17, scope: !850, inlinedAt: !2272)
!2283 = !DILocation(line: 180, column: 6, scope: !850, inlinedAt: !2272)
!2284 = !DILocation(line: 180, column: 18, scope: !850, inlinedAt: !2272)
!2285 = !DILocation(line: 1023, column: 10, scope: !2228)
!2286 = !DILocation(line: 1024, column: 1, scope: !2228)
!2287 = !DILocation(line: 1023, column: 3, scope: !2228)
!2288 = distinct !DISubprogram(name: "quotearg_custom", scope: !127, file: !127, line: 1027, type: !2289, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!10, !20, !20, !20}
!2291 = !{!2292, !2293, !2294}
!2292 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2288, file: !127, line: 1027, type: !20)
!2293 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2288, file: !127, line: 1027, type: !20)
!2294 = !DILocalVariable(name: "arg", arg: 3, scope: !2288, file: !127, line: 1028, type: !20)
!2295 = !DILocation(line: 1027, column: 30, scope: !2288)
!2296 = !DILocation(line: 1027, column: 54, scope: !2288)
!2297 = !DILocation(line: 1028, column: 30, scope: !2288)
!2298 = !DILocation(line: 1009, column: 24, scope: !2215, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 1030, column: 10, scope: !2288)
!2300 = !DILocation(line: 1009, column: 39, scope: !2215, inlinedAt: !2299)
!2301 = !DILocation(line: 1010, column: 32, scope: !2215, inlinedAt: !2299)
!2302 = !DILocation(line: 1010, column: 57, scope: !2215, inlinedAt: !2299)
!2303 = !DILocation(line: 1017, column: 28, scope: !2228, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 1012, column: 10, scope: !2215, inlinedAt: !2299)
!2305 = !DILocation(line: 1017, column: 43, scope: !2228, inlinedAt: !2304)
!2306 = !DILocation(line: 1018, column: 36, scope: !2228, inlinedAt: !2304)
!2307 = !DILocation(line: 1019, column: 36, scope: !2228, inlinedAt: !2304)
!2308 = !DILocation(line: 1019, column: 48, scope: !2228, inlinedAt: !2304)
!2309 = !DILocation(line: 1021, column: 3, scope: !2228, inlinedAt: !2304)
!2310 = !DILocation(line: 1021, column: 30, scope: !2228, inlinedAt: !2304)
!2311 = !DILocation(line: 1021, column: 26, scope: !2228, inlinedAt: !2304)
!2312 = !DILocation(line: 171, column: 45, scope: !850, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 1022, column: 3, scope: !2228, inlinedAt: !2304)
!2314 = !DILocation(line: 172, column: 33, scope: !850, inlinedAt: !2313)
!2315 = !DILocation(line: 172, column: 57, scope: !850, inlinedAt: !2313)
!2316 = !DILocation(line: 176, column: 6, scope: !850, inlinedAt: !2313)
!2317 = !DILocation(line: 176, column: 12, scope: !850, inlinedAt: !2313)
!2318 = !DILocation(line: 177, column: 8, scope: !866, inlinedAt: !2313)
!2319 = !DILocation(line: 177, column: 23, scope: !866, inlinedAt: !2313)
!2320 = !DILocation(line: 177, column: 19, scope: !866, inlinedAt: !2313)
!2321 = !DILocation(line: 178, column: 5, scope: !866, inlinedAt: !2313)
!2322 = !DILocation(line: 179, column: 6, scope: !850, inlinedAt: !2313)
!2323 = !DILocation(line: 179, column: 17, scope: !850, inlinedAt: !2313)
!2324 = !DILocation(line: 180, column: 6, scope: !850, inlinedAt: !2313)
!2325 = !DILocation(line: 180, column: 18, scope: !850, inlinedAt: !2313)
!2326 = !DILocation(line: 1023, column: 10, scope: !2228, inlinedAt: !2304)
!2327 = !DILocation(line: 1024, column: 1, scope: !2228, inlinedAt: !2304)
!2328 = !DILocation(line: 1030, column: 3, scope: !2288)
!2329 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !127, file: !127, line: 1034, type: !2330, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!10, !20, !20, !20, !121}
!2332 = !{!2333, !2334, !2335, !2336}
!2333 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2329, file: !127, line: 1034, type: !20)
!2334 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2329, file: !127, line: 1034, type: !20)
!2335 = !DILocalVariable(name: "arg", arg: 3, scope: !2329, file: !127, line: 1035, type: !20)
!2336 = !DILocalVariable(name: "argsize", arg: 4, scope: !2329, file: !127, line: 1035, type: !121)
!2337 = !DILocation(line: 1034, column: 34, scope: !2329)
!2338 = !DILocation(line: 1034, column: 58, scope: !2329)
!2339 = !DILocation(line: 1035, column: 34, scope: !2329)
!2340 = !DILocation(line: 1035, column: 46, scope: !2329)
!2341 = !DILocation(line: 1017, column: 28, scope: !2228, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 1037, column: 10, scope: !2329)
!2343 = !DILocation(line: 1017, column: 43, scope: !2228, inlinedAt: !2342)
!2344 = !DILocation(line: 1018, column: 36, scope: !2228, inlinedAt: !2342)
!2345 = !DILocation(line: 1019, column: 36, scope: !2228, inlinedAt: !2342)
!2346 = !DILocation(line: 1019, column: 48, scope: !2228, inlinedAt: !2342)
!2347 = !DILocation(line: 1021, column: 3, scope: !2228, inlinedAt: !2342)
!2348 = !DILocation(line: 1021, column: 30, scope: !2228, inlinedAt: !2342)
!2349 = !DILocation(line: 1021, column: 26, scope: !2228, inlinedAt: !2342)
!2350 = !DILocation(line: 171, column: 45, scope: !850, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1022, column: 3, scope: !2228, inlinedAt: !2342)
!2352 = !DILocation(line: 172, column: 33, scope: !850, inlinedAt: !2351)
!2353 = !DILocation(line: 172, column: 57, scope: !850, inlinedAt: !2351)
!2354 = !DILocation(line: 176, column: 6, scope: !850, inlinedAt: !2351)
!2355 = !DILocation(line: 176, column: 12, scope: !850, inlinedAt: !2351)
!2356 = !DILocation(line: 177, column: 8, scope: !866, inlinedAt: !2351)
!2357 = !DILocation(line: 177, column: 23, scope: !866, inlinedAt: !2351)
!2358 = !DILocation(line: 177, column: 19, scope: !866, inlinedAt: !2351)
!2359 = !DILocation(line: 178, column: 5, scope: !866, inlinedAt: !2351)
!2360 = !DILocation(line: 179, column: 6, scope: !850, inlinedAt: !2351)
!2361 = !DILocation(line: 179, column: 17, scope: !850, inlinedAt: !2351)
!2362 = !DILocation(line: 180, column: 6, scope: !850, inlinedAt: !2351)
!2363 = !DILocation(line: 180, column: 18, scope: !850, inlinedAt: !2351)
!2364 = !DILocation(line: 1023, column: 10, scope: !2228, inlinedAt: !2342)
!2365 = !DILocation(line: 1024, column: 1, scope: !2228, inlinedAt: !2342)
!2366 = !DILocation(line: 1037, column: 3, scope: !2329)
!2367 = distinct !DISubprogram(name: "quote_n_mem", scope: !127, file: !127, line: 1052, type: !2368, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!20, !45, !20, !121}
!2370 = !{!2371, !2372, !2373}
!2371 = !DILocalVariable(name: "n", arg: 1, scope: !2367, file: !127, line: 1052, type: !45)
!2372 = !DILocalVariable(name: "arg", arg: 2, scope: !2367, file: !127, line: 1052, type: !20)
!2373 = !DILocalVariable(name: "argsize", arg: 3, scope: !2367, file: !127, line: 1052, type: !121)
!2374 = !DILocation(line: 1052, column: 18, scope: !2367)
!2375 = !DILocation(line: 1052, column: 33, scope: !2367)
!2376 = !DILocation(line: 1052, column: 45, scope: !2367)
!2377 = !DILocation(line: 1054, column: 10, scope: !2367)
!2378 = !DILocation(line: 1054, column: 3, scope: !2367)
!2379 = distinct !DISubprogram(name: "quote_mem", scope: !127, file: !127, line: 1058, type: !2380, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!20, !20, !121}
!2382 = !{!2383, !2384}
!2383 = !DILocalVariable(name: "arg", arg: 1, scope: !2379, file: !127, line: 1058, type: !20)
!2384 = !DILocalVariable(name: "argsize", arg: 2, scope: !2379, file: !127, line: 1058, type: !121)
!2385 = !DILocation(line: 1058, column: 24, scope: !2379)
!2386 = !DILocation(line: 1058, column: 36, scope: !2379)
!2387 = !DILocation(line: 1052, column: 18, scope: !2367, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 1060, column: 10, scope: !2379)
!2389 = !DILocation(line: 1052, column: 33, scope: !2367, inlinedAt: !2388)
!2390 = !DILocation(line: 1052, column: 45, scope: !2367, inlinedAt: !2388)
!2391 = !DILocation(line: 1054, column: 10, scope: !2367, inlinedAt: !2388)
!2392 = !DILocation(line: 1060, column: 3, scope: !2379)
!2393 = distinct !DISubprogram(name: "quote_n", scope: !127, file: !127, line: 1064, type: !2394, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!20, !45, !20}
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "n", arg: 1, scope: !2393, file: !127, line: 1064, type: !45)
!2398 = !DILocalVariable(name: "arg", arg: 2, scope: !2393, file: !127, line: 1064, type: !20)
!2399 = !DILocation(line: 1064, column: 14, scope: !2393)
!2400 = !DILocation(line: 1064, column: 29, scope: !2393)
!2401 = !DILocation(line: 1052, column: 18, scope: !2367, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 1066, column: 10, scope: !2393)
!2403 = !DILocation(line: 1052, column: 33, scope: !2367, inlinedAt: !2402)
!2404 = !DILocation(line: 1052, column: 45, scope: !2367, inlinedAt: !2402)
!2405 = !DILocation(line: 1054, column: 10, scope: !2367, inlinedAt: !2402)
!2406 = !DILocation(line: 1066, column: 3, scope: !2393)
!2407 = distinct !DISubprogram(name: "quote", scope: !127, file: !127, line: 1070, type: !2408, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!20, !20}
!2410 = !{!2411}
!2411 = !DILocalVariable(name: "arg", arg: 1, scope: !2407, file: !127, line: 1070, type: !20)
!2412 = !DILocation(line: 1070, column: 20, scope: !2407)
!2413 = !DILocation(line: 1064, column: 14, scope: !2393, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 1072, column: 10, scope: !2407)
!2415 = !DILocation(line: 1064, column: 29, scope: !2393, inlinedAt: !2414)
!2416 = !DILocation(line: 1052, column: 18, scope: !2367, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 1066, column: 10, scope: !2393, inlinedAt: !2414)
!2418 = !DILocation(line: 1052, column: 33, scope: !2367, inlinedAt: !2417)
!2419 = !DILocation(line: 1052, column: 45, scope: !2367, inlinedAt: !2417)
!2420 = !DILocation(line: 1054, column: 10, scope: !2367, inlinedAt: !2417)
!2421 = !DILocation(line: 1072, column: 3, scope: !2407)
!2422 = distinct !DISubprogram(name: "version_etc_arn", scope: !529, file: !529, line: 62, type: !2423, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !2481)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2425, !20, !20, !20, !2480, !121}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !2428)
!2427 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2429, line: 241, size: 1728, elements: !2430)
!2429 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2430 = !{!2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2451, !2452, !2453, !2454, !2458, !2459, !2461, !2465, !2468, !2470, !2471, !2472, !2473, !2474, !2475, !2476}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2428, file: !2429, line: 242, baseType: !45, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2428, file: !2429, line: 247, baseType: !10, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2428, file: !2429, line: 248, baseType: !10, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2428, file: !2429, line: 249, baseType: !10, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2428, file: !2429, line: 250, baseType: !10, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2428, file: !2429, line: 251, baseType: !10, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2428, file: !2429, line: 252, baseType: !10, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2428, file: !2429, line: 253, baseType: !10, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2428, file: !2429, line: 254, baseType: !10, size: 64, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2428, file: !2429, line: 256, baseType: !10, size: 64, offset: 576)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2428, file: !2429, line: 257, baseType: !10, size: 64, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2428, file: !2429, line: 258, baseType: !10, size: 64, offset: 704)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2428, file: !2429, line: 260, baseType: !2444, size: 64, offset: 768)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2429, line: 156, size: 192, elements: !2446)
!2446 = !{!2447, !2448, !2450}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2445, file: !2429, line: 157, baseType: !2444, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2445, file: !2429, line: 158, baseType: !2449, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2445, file: !2429, line: 162, baseType: !45, size: 32, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2428, file: !2429, line: 262, baseType: !2449, size: 64, offset: 832)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2428, file: !2429, line: 264, baseType: !45, size: 32, offset: 896)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2428, file: !2429, line: 268, baseType: !45, size: 32, offset: 928)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2428, file: !2429, line: 270, baseType: !2455, size: 64, offset: 960)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2456, line: 140, baseType: !2457)
!2456 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2457 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2428, file: !2429, line: 274, baseType: !120, size: 16, offset: 1024)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2428, file: !2429, line: 275, baseType: !2460, size: 8, offset: 1040)
!2460 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2428, file: !2429, line: 276, baseType: !2462, size: 8, offset: 1048)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !2463)
!2463 = !{!2464}
!2464 = !DISubrange(count: 1)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2428, file: !2429, line: 280, baseType: !2466, size: 64, offset: 1088)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2429, line: 150, baseType: null)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2428, file: !2429, line: 289, baseType: !2469, size: 64, offset: 1152)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2456, line: 141, baseType: !2457)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2428, file: !2429, line: 297, baseType: !12, size: 64, offset: 1216)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2428, file: !2429, line: 298, baseType: !12, size: 64, offset: 1280)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2428, file: !2429, line: 299, baseType: !12, size: 64, offset: 1344)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2428, file: !2429, line: 300, baseType: !12, size: 64, offset: 1408)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2428, file: !2429, line: 302, baseType: !121, size: 64, offset: 1472)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2428, file: !2429, line: 303, baseType: !45, size: 32, offset: 1536)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2428, file: !2429, line: 305, baseType: !2477, size: 160, offset: 1568)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !2478)
!2478 = !{!2479}
!2479 = !DISubrange(count: 20)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487}
!2482 = !DILocalVariable(name: "stream", arg: 1, scope: !2422, file: !529, line: 62, type: !2425)
!2483 = !DILocalVariable(name: "command_name", arg: 2, scope: !2422, file: !529, line: 63, type: !20)
!2484 = !DILocalVariable(name: "package", arg: 3, scope: !2422, file: !529, line: 63, type: !20)
!2485 = !DILocalVariable(name: "version", arg: 4, scope: !2422, file: !529, line: 64, type: !20)
!2486 = !DILocalVariable(name: "authors", arg: 5, scope: !2422, file: !529, line: 65, type: !2480)
!2487 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2422, file: !529, line: 65, type: !121)
!2488 = !DILocation(line: 62, column: 24, scope: !2422)
!2489 = !DILocation(line: 63, column: 30, scope: !2422)
!2490 = !DILocation(line: 63, column: 56, scope: !2422)
!2491 = !DILocation(line: 64, column: 30, scope: !2422)
!2492 = !DILocation(line: 65, column: 39, scope: !2422)
!2493 = !DILocation(line: 65, column: 55, scope: !2422)
!2494 = !DILocation(line: 67, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2422, file: !529, line: 67, column: 7)
!2496 = !DILocation(line: 67, column: 7, scope: !2422)
!2497 = !DILocation(line: 68, column: 5, scope: !2495)
!2498 = !DILocation(line: 70, column: 5, scope: !2495)
!2499 = !DILocation(line: 84, column: 3, scope: !2422)
!2500 = !DILocation(line: 86, column: 3, scope: !2422)
!2501 = !DILocation(line: 95, column: 3, scope: !2422)
!2502 = !DILocation(line: 99, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2422, file: !529, line: 96, column: 5)
!2504 = !DILocation(line: 102, column: 7, scope: !2503)
!2505 = !DILocation(line: 103, column: 7, scope: !2503)
!2506 = !DILocation(line: 106, column: 7, scope: !2503)
!2507 = !DILocation(line: 107, column: 7, scope: !2503)
!2508 = !DILocation(line: 110, column: 7, scope: !2503)
!2509 = !DILocation(line: 112, column: 7, scope: !2503)
!2510 = !DILocation(line: 117, column: 7, scope: !2503)
!2511 = !DILocation(line: 119, column: 7, scope: !2503)
!2512 = !DILocation(line: 124, column: 7, scope: !2503)
!2513 = !DILocation(line: 126, column: 7, scope: !2503)
!2514 = !DILocation(line: 131, column: 7, scope: !2503)
!2515 = !DILocation(line: 134, column: 7, scope: !2503)
!2516 = !DILocation(line: 139, column: 7, scope: !2503)
!2517 = !DILocation(line: 142, column: 7, scope: !2503)
!2518 = !DILocation(line: 147, column: 7, scope: !2503)
!2519 = !DILocation(line: 151, column: 7, scope: !2503)
!2520 = !DILocation(line: 156, column: 7, scope: !2503)
!2521 = !DILocation(line: 160, column: 7, scope: !2503)
!2522 = !DILocation(line: 167, column: 7, scope: !2503)
!2523 = !DILocation(line: 171, column: 7, scope: !2503)
!2524 = !DILocation(line: 173, column: 1, scope: !2422)
!2525 = distinct !DISubprogram(name: "version_etc_ar", scope: !529, file: !529, line: 180, type: !2526, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !2425, !20, !20, !20, !2480}
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534}
!2529 = !DILocalVariable(name: "stream", arg: 1, scope: !2525, file: !529, line: 180, type: !2425)
!2530 = !DILocalVariable(name: "command_name", arg: 2, scope: !2525, file: !529, line: 181, type: !20)
!2531 = !DILocalVariable(name: "package", arg: 3, scope: !2525, file: !529, line: 181, type: !20)
!2532 = !DILocalVariable(name: "version", arg: 4, scope: !2525, file: !529, line: 182, type: !20)
!2533 = !DILocalVariable(name: "authors", arg: 5, scope: !2525, file: !529, line: 182, type: !2480)
!2534 = !DILocalVariable(name: "n_authors", scope: !2525, file: !529, line: 184, type: !121)
!2535 = !DILocation(line: 180, column: 23, scope: !2525)
!2536 = !DILocation(line: 181, column: 29, scope: !2525)
!2537 = !DILocation(line: 181, column: 55, scope: !2525)
!2538 = !DILocation(line: 182, column: 29, scope: !2525)
!2539 = !DILocation(line: 182, column: 59, scope: !2525)
!2540 = !DILocation(line: 184, column: 10, scope: !2525)
!2541 = !DILocation(line: 186, column: 8, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2525, file: !529, line: 186, column: 3)
!2543 = !DILocation(line: 186, column: 23, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2542, file: !529, line: 186, column: 3)
!2545 = !DILocation(line: 186, column: 3, scope: !2542)
!2546 = !DILocation(line: 186, column: 52, scope: !2544)
!2547 = distinct !{!2547, !2545, !2548}
!2548 = !DILocation(line: 187, column: 5, scope: !2542)
!2549 = !DILocation(line: 188, column: 3, scope: !2525)
!2550 = !DILocation(line: 189, column: 1, scope: !2525)
!2551 = distinct !DISubprogram(name: "version_etc_va", scope: !529, file: !529, line: 196, type: !2552, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !2561)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !2425, !20, !20, !20, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !526, line: 189, size: 192, elements: !2556)
!2556 = !{!2557, !2558, !2559, !2560}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2555, file: !526, line: 189, baseType: !140, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2555, file: !526, line: 189, baseType: !140, size: 32, offset: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2555, file: !526, line: 189, baseType: !12, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2555, file: !526, line: 189, baseType: !12, size: 64, offset: 128)
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2562 = !DILocalVariable(name: "stream", arg: 1, scope: !2551, file: !529, line: 196, type: !2425)
!2563 = !DILocalVariable(name: "command_name", arg: 2, scope: !2551, file: !529, line: 197, type: !20)
!2564 = !DILocalVariable(name: "package", arg: 3, scope: !2551, file: !529, line: 197, type: !20)
!2565 = !DILocalVariable(name: "version", arg: 4, scope: !2551, file: !529, line: 198, type: !20)
!2566 = !DILocalVariable(name: "authors", arg: 5, scope: !2551, file: !529, line: 198, type: !2554)
!2567 = !DILocalVariable(name: "n_authors", scope: !2551, file: !529, line: 200, type: !121)
!2568 = !DILocalVariable(name: "authtab", scope: !2551, file: !529, line: 201, type: !2569)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 640, elements: !130)
!2570 = !DILocation(line: 196, column: 23, scope: !2551)
!2571 = !DILocation(line: 197, column: 29, scope: !2551)
!2572 = !DILocation(line: 197, column: 55, scope: !2551)
!2573 = !DILocation(line: 198, column: 29, scope: !2551)
!2574 = !DILocation(line: 198, column: 46, scope: !2551)
!2575 = !DILocation(line: 201, column: 3, scope: !2551)
!2576 = !DILocation(line: 201, column: 15, scope: !2551)
!2577 = !DILocation(line: 200, column: 10, scope: !2551)
!2578 = !DILocation(line: 205, column: 35, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !529, line: 203, column: 3)
!2580 = distinct !DILexicalBlock(scope: !2551, file: !529, line: 203, column: 3)
!2581 = !DILocation(line: 205, column: 14, scope: !2579)
!2582 = !DILocation(line: 205, column: 33, scope: !2579)
!2583 = !DILocation(line: 205, column: 67, scope: !2579)
!2584 = !DILocation(line: 203, column: 3, scope: !2580)
!2585 = !DILocation(line: 208, column: 3, scope: !2551)
!2586 = !DILocation(line: 210, column: 1, scope: !2551)
!2587 = distinct !DISubprogram(name: "version_etc", scope: !529, file: !529, line: 227, type: !2588, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !2425, !20, !20, !20, null}
!2590 = !{!2591, !2592, !2593, !2594, !2595}
!2591 = !DILocalVariable(name: "stream", arg: 1, scope: !2587, file: !529, line: 227, type: !2425)
!2592 = !DILocalVariable(name: "command_name", arg: 2, scope: !2587, file: !529, line: 228, type: !20)
!2593 = !DILocalVariable(name: "package", arg: 3, scope: !2587, file: !529, line: 228, type: !20)
!2594 = !DILocalVariable(name: "version", arg: 4, scope: !2587, file: !529, line: 229, type: !20)
!2595 = !DILocalVariable(name: "authors", scope: !2587, file: !529, line: 231, type: !2596)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2597, line: 46, baseType: !2598)
!2597 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2599, line: 48, baseType: !2600)
!2599 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !526, line: 231, baseType: !2601)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2555, size: 192, elements: !2463)
!2602 = !DILocation(line: 227, column: 20, scope: !2587)
!2603 = !DILocation(line: 228, column: 26, scope: !2587)
!2604 = !DILocation(line: 228, column: 52, scope: !2587)
!2605 = !DILocation(line: 229, column: 26, scope: !2587)
!2606 = !DILocation(line: 231, column: 3, scope: !2587)
!2607 = !DILocation(line: 231, column: 11, scope: !2587)
!2608 = !DILocation(line: 233, column: 3, scope: !2587)
!2609 = !DILocation(line: 234, column: 3, scope: !2587)
!2610 = !DILocation(line: 235, column: 3, scope: !2587)
!2611 = !DILocation(line: 236, column: 1, scope: !2587)
!2612 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !529, file: !529, line: 239, type: !687, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !56)
!2613 = !DILocation(line: 245, column: 3, scope: !2612)
!2614 = !DILocation(line: 251, column: 3, scope: !2612)
!2615 = !DILocation(line: 256, column: 3, scope: !2612)
!2616 = !DILocation(line: 258, column: 1, scope: !2612)
!2617 = distinct !DISubprogram(name: "xnmalloc", scope: !537, file: !537, line: 105, type: !2618, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!12, !121, !121}
!2620 = !{!2621, !2622}
!2621 = !DILocalVariable(name: "n", arg: 1, scope: !2617, file: !537, line: 105, type: !121)
!2622 = !DILocalVariable(name: "s", arg: 2, scope: !2617, file: !537, line: 105, type: !121)
!2623 = !DILocation(line: 105, column: 18, scope: !2617)
!2624 = !DILocation(line: 105, column: 28, scope: !2617)
!2625 = !DILocation(line: 107, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2617, file: !537, line: 107, column: 7)
!2627 = !DILocation(line: 107, column: 7, scope: !2617)
!2628 = !DILocation(line: 108, column: 5, scope: !2626)
!2629 = !DILocation(line: 109, column: 21, scope: !2617)
!2630 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !2632, line: 39, type: !121)
!2631 = distinct !DISubprogram(name: "xmalloc", scope: !2632, file: !2632, line: 39, type: !2633, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2635)
!2632 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!12, !121}
!2635 = !{!2630, !2636}
!2636 = !DILocalVariable(name: "p", scope: !2631, file: !2632, line: 41, type: !12)
!2637 = !DILocation(line: 39, column: 17, scope: !2631, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 109, column: 10, scope: !2617)
!2639 = !DILocation(line: 41, column: 13, scope: !2631, inlinedAt: !2638)
!2640 = !DILocation(line: 41, column: 9, scope: !2631, inlinedAt: !2638)
!2641 = !DILocation(line: 42, column: 8, scope: !2642, inlinedAt: !2638)
!2642 = distinct !DILexicalBlock(scope: !2631, file: !2632, line: 42, column: 7)
!2643 = !DILocation(line: 42, column: 15, scope: !2642, inlinedAt: !2638)
!2644 = !DILocation(line: 42, column: 10, scope: !2642, inlinedAt: !2638)
!2645 = !DILocation(line: 43, column: 5, scope: !2642, inlinedAt: !2638)
!2646 = !DILocation(line: 109, column: 3, scope: !2617)
!2647 = !DILocation(line: 39, column: 17, scope: !2631)
!2648 = !DILocation(line: 41, column: 13, scope: !2631)
!2649 = !DILocation(line: 41, column: 9, scope: !2631)
!2650 = !DILocation(line: 42, column: 8, scope: !2642)
!2651 = !DILocation(line: 42, column: 15, scope: !2642)
!2652 = !DILocation(line: 42, column: 10, scope: !2642)
!2653 = !DILocation(line: 43, column: 5, scope: !2642)
!2654 = !DILocation(line: 44, column: 3, scope: !2631)
!2655 = distinct !DISubprogram(name: "xnrealloc", scope: !537, file: !537, line: 118, type: !2656, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!12, !12, !121, !121}
!2658 = !{!2659, !2660, !2661}
!2659 = !DILocalVariable(name: "p", arg: 1, scope: !2655, file: !537, line: 118, type: !12)
!2660 = !DILocalVariable(name: "n", arg: 2, scope: !2655, file: !537, line: 118, type: !121)
!2661 = !DILocalVariable(name: "s", arg: 3, scope: !2655, file: !537, line: 118, type: !121)
!2662 = !DILocation(line: 118, column: 18, scope: !2655)
!2663 = !DILocation(line: 118, column: 28, scope: !2655)
!2664 = !DILocation(line: 118, column: 38, scope: !2655)
!2665 = !DILocation(line: 120, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2655, file: !537, line: 120, column: 7)
!2667 = !DILocation(line: 120, column: 7, scope: !2655)
!2668 = !DILocation(line: 121, column: 5, scope: !2666)
!2669 = !DILocation(line: 122, column: 25, scope: !2655)
!2670 = !DILocalVariable(name: "p", arg: 1, scope: !2671, file: !2632, line: 51, type: !12)
!2671 = distinct !DISubprogram(name: "xrealloc", scope: !2632, file: !2632, line: 51, type: !2672, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!12, !12, !121}
!2674 = !{!2670, !2675}
!2675 = !DILocalVariable(name: "n", arg: 2, scope: !2671, file: !2632, line: 51, type: !121)
!2676 = !DILocation(line: 51, column: 17, scope: !2671, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 122, column: 10, scope: !2655)
!2678 = !DILocation(line: 51, column: 27, scope: !2671, inlinedAt: !2677)
!2679 = !DILocation(line: 53, column: 8, scope: !2680, inlinedAt: !2677)
!2680 = distinct !DILexicalBlock(scope: !2671, file: !2632, line: 53, column: 7)
!2681 = !DILocation(line: 53, column: 13, scope: !2680, inlinedAt: !2677)
!2682 = !DILocation(line: 53, column: 10, scope: !2680, inlinedAt: !2677)
!2683 = !DILocation(line: 57, column: 7, scope: !2684, inlinedAt: !2677)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !2632, line: 54, column: 5)
!2685 = !DILocation(line: 58, column: 7, scope: !2684, inlinedAt: !2677)
!2686 = !DILocation(line: 61, column: 7, scope: !2671, inlinedAt: !2677)
!2687 = !DILocation(line: 62, column: 8, scope: !2688, inlinedAt: !2677)
!2688 = distinct !DILexicalBlock(scope: !2671, file: !2632, line: 62, column: 7)
!2689 = !DILocation(line: 62, column: 13, scope: !2688, inlinedAt: !2677)
!2690 = !DILocation(line: 62, column: 10, scope: !2688, inlinedAt: !2677)
!2691 = !DILocation(line: 63, column: 5, scope: !2688, inlinedAt: !2677)
!2692 = !DILocation(line: 122, column: 3, scope: !2655)
!2693 = !DILocation(line: 51, column: 17, scope: !2671)
!2694 = !DILocation(line: 51, column: 27, scope: !2671)
!2695 = !DILocation(line: 53, column: 8, scope: !2680)
!2696 = !DILocation(line: 53, column: 13, scope: !2680)
!2697 = !DILocation(line: 53, column: 10, scope: !2680)
!2698 = !DILocation(line: 57, column: 7, scope: !2684)
!2699 = !DILocation(line: 58, column: 7, scope: !2684)
!2700 = !DILocation(line: 61, column: 7, scope: !2671)
!2701 = !DILocation(line: 62, column: 8, scope: !2688)
!2702 = !DILocation(line: 62, column: 13, scope: !2688)
!2703 = !DILocation(line: 62, column: 10, scope: !2688)
!2704 = !DILocation(line: 63, column: 5, scope: !2688)
!2705 = !DILocation(line: 65, column: 1, scope: !2671)
!2706 = !DILocation(line: 180, column: 19, scope: !538)
!2707 = !DILocation(line: 180, column: 30, scope: !538)
!2708 = !DILocation(line: 180, column: 41, scope: !538)
!2709 = !DILocation(line: 182, column: 14, scope: !538)
!2710 = !DILocation(line: 182, column: 10, scope: !538)
!2711 = !DILocation(line: 184, column: 9, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !538, file: !537, line: 184, column: 7)
!2713 = !DILocation(line: 184, column: 7, scope: !538)
!2714 = !DILocation(line: 186, column: 13, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !537, line: 186, column: 11)
!2716 = distinct !DILexicalBlock(scope: !2712, file: !537, line: 185, column: 5)
!2717 = !DILocation(line: 186, column: 11, scope: !2716)
!2718 = !DILocation(line: 194, column: 30, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !537, line: 187, column: 9)
!2720 = !DILocation(line: 195, column: 16, scope: !2719)
!2721 = !DILocation(line: 195, column: 13, scope: !2719)
!2722 = !DILocation(line: 196, column: 9, scope: !2719)
!2723 = !DILocation(line: 204, column: 69, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !537, line: 204, column: 11)
!2725 = distinct !DILexicalBlock(scope: !2712, file: !537, line: 199, column: 5)
!2726 = !DILocation(line: 205, column: 11, scope: !2724)
!2727 = !DILocation(line: 204, column: 11, scope: !2725)
!2728 = !DILocation(line: 206, column: 9, scope: !2724)
!2729 = !DILocation(line: 210, column: 7, scope: !538)
!2730 = !DILocation(line: 211, column: 25, scope: !538)
!2731 = !DILocation(line: 51, column: 17, scope: !2671, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 211, column: 10, scope: !538)
!2733 = !DILocation(line: 51, column: 27, scope: !2671, inlinedAt: !2732)
!2734 = !DILocation(line: 53, column: 10, scope: !2680, inlinedAt: !2732)
!2735 = !DILocation(line: 207, column: 14, scope: !2725)
!2736 = !DILocation(line: 207, column: 18, scope: !2725)
!2737 = !DILocation(line: 207, column: 9, scope: !2725)
!2738 = !DILocation(line: 53, column: 8, scope: !2680, inlinedAt: !2732)
!2739 = !DILocation(line: 57, column: 7, scope: !2684, inlinedAt: !2732)
!2740 = !DILocation(line: 58, column: 7, scope: !2684, inlinedAt: !2732)
!2741 = !DILocation(line: 61, column: 7, scope: !2671, inlinedAt: !2732)
!2742 = !DILocation(line: 62, column: 8, scope: !2688, inlinedAt: !2732)
!2743 = !DILocation(line: 62, column: 13, scope: !2688, inlinedAt: !2732)
!2744 = !DILocation(line: 62, column: 10, scope: !2688, inlinedAt: !2732)
!2745 = !DILocation(line: 63, column: 5, scope: !2688, inlinedAt: !2732)
!2746 = !DILocation(line: 211, column: 3, scope: !538)
!2747 = distinct !DISubprogram(name: "xcharalloc", scope: !537, file: !537, line: 220, type: !1699, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2748)
!2748 = !{!2749}
!2749 = !DILocalVariable(name: "n", arg: 1, scope: !2747, file: !537, line: 220, type: !121)
!2750 = !DILocation(line: 220, column: 20, scope: !2747)
!2751 = !DILocation(line: 39, column: 17, scope: !2631, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 222, column: 10, scope: !2747)
!2753 = !DILocation(line: 41, column: 13, scope: !2631, inlinedAt: !2752)
!2754 = !DILocation(line: 41, column: 9, scope: !2631, inlinedAt: !2752)
!2755 = !DILocation(line: 42, column: 8, scope: !2642, inlinedAt: !2752)
!2756 = !DILocation(line: 42, column: 15, scope: !2642, inlinedAt: !2752)
!2757 = !DILocation(line: 42, column: 10, scope: !2642, inlinedAt: !2752)
!2758 = !DILocation(line: 43, column: 5, scope: !2642, inlinedAt: !2752)
!2759 = !DILocation(line: 222, column: 3, scope: !2747)
!2760 = distinct !DISubprogram(name: "x2realloc", scope: !2632, file: !2632, line: 74, type: !2761, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!12, !12, !541}
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "p", arg: 1, scope: !2760, file: !2632, line: 74, type: !12)
!2765 = !DILocalVariable(name: "pn", arg: 2, scope: !2760, file: !2632, line: 74, type: !541)
!2766 = !DILocation(line: 74, column: 18, scope: !2760)
!2767 = !DILocation(line: 74, column: 29, scope: !2760)
!2768 = !DILocation(line: 180, column: 19, scope: !538, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 76, column: 10, scope: !2760)
!2770 = !DILocation(line: 180, column: 30, scope: !538, inlinedAt: !2769)
!2771 = !DILocation(line: 180, column: 41, scope: !538, inlinedAt: !2769)
!2772 = !DILocation(line: 182, column: 14, scope: !538, inlinedAt: !2769)
!2773 = !DILocation(line: 182, column: 10, scope: !538, inlinedAt: !2769)
!2774 = !DILocation(line: 184, column: 9, scope: !2712, inlinedAt: !2769)
!2775 = !DILocation(line: 184, column: 7, scope: !538, inlinedAt: !2769)
!2776 = !DILocation(line: 186, column: 13, scope: !2715, inlinedAt: !2769)
!2777 = !DILocation(line: 186, column: 11, scope: !2716, inlinedAt: !2769)
!2778 = !DILocation(line: 210, column: 7, scope: !538, inlinedAt: !2769)
!2779 = !DILocation(line: 51, column: 17, scope: !2671, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 211, column: 10, scope: !538, inlinedAt: !2769)
!2781 = !DILocation(line: 51, column: 27, scope: !2671, inlinedAt: !2780)
!2782 = !DILocation(line: 53, column: 10, scope: !2680, inlinedAt: !2780)
!2783 = !DILocation(line: 205, column: 11, scope: !2724, inlinedAt: !2769)
!2784 = !DILocation(line: 204, column: 11, scope: !2725, inlinedAt: !2769)
!2785 = !DILocation(line: 206, column: 9, scope: !2724, inlinedAt: !2769)
!2786 = !DILocation(line: 207, column: 14, scope: !2725, inlinedAt: !2769)
!2787 = !DILocation(line: 207, column: 18, scope: !2725, inlinedAt: !2769)
!2788 = !DILocation(line: 207, column: 9, scope: !2725, inlinedAt: !2769)
!2789 = !DILocation(line: 53, column: 8, scope: !2680, inlinedAt: !2780)
!2790 = !DILocation(line: 57, column: 7, scope: !2684, inlinedAt: !2780)
!2791 = !DILocation(line: 58, column: 7, scope: !2684, inlinedAt: !2780)
!2792 = !DILocation(line: 61, column: 7, scope: !2671, inlinedAt: !2780)
!2793 = !DILocation(line: 62, column: 8, scope: !2688, inlinedAt: !2780)
!2794 = !DILocation(line: 62, column: 13, scope: !2688, inlinedAt: !2780)
!2795 = !DILocation(line: 62, column: 10, scope: !2688, inlinedAt: !2780)
!2796 = !DILocation(line: 63, column: 5, scope: !2688, inlinedAt: !2780)
!2797 = !DILocation(line: 76, column: 3, scope: !2760)
!2798 = distinct !DISubprogram(name: "xzalloc", scope: !2632, file: !2632, line: 84, type: !2633, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2799)
!2799 = !{!2800}
!2800 = !DILocalVariable(name: "s", arg: 1, scope: !2798, file: !2632, line: 84, type: !121)
!2801 = !DILocation(line: 84, column: 17, scope: !2798)
!2802 = !DILocation(line: 39, column: 17, scope: !2631, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 86, column: 18, scope: !2798)
!2804 = !DILocation(line: 41, column: 13, scope: !2631, inlinedAt: !2803)
!2805 = !DILocation(line: 41, column: 9, scope: !2631, inlinedAt: !2803)
!2806 = !DILocation(line: 42, column: 8, scope: !2642, inlinedAt: !2803)
!2807 = !DILocation(line: 42, column: 15, scope: !2642, inlinedAt: !2803)
!2808 = !DILocation(line: 42, column: 10, scope: !2642, inlinedAt: !2803)
!2809 = !DILocation(line: 43, column: 5, scope: !2642, inlinedAt: !2803)
!2810 = !DILocation(line: 86, column: 10, scope: !2798)
!2811 = !DILocation(line: 86, column: 3, scope: !2798)
!2812 = distinct !DISubprogram(name: "xcalloc", scope: !2632, file: !2632, line: 93, type: !2618, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2813)
!2813 = !{!2814, !2815, !2816}
!2814 = !DILocalVariable(name: "n", arg: 1, scope: !2812, file: !2632, line: 93, type: !121)
!2815 = !DILocalVariable(name: "s", arg: 2, scope: !2812, file: !2632, line: 93, type: !121)
!2816 = !DILocalVariable(name: "p", scope: !2812, file: !2632, line: 95, type: !12)
!2817 = !DILocation(line: 93, column: 17, scope: !2812)
!2818 = !DILocation(line: 93, column: 27, scope: !2812)
!2819 = !DILocation(line: 100, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2812, file: !2632, line: 100, column: 7)
!2821 = !DILocation(line: 101, column: 7, scope: !2820)
!2822 = !DILocation(line: 101, column: 18, scope: !2820)
!2823 = !DILocation(line: 95, column: 9, scope: !2812)
!2824 = !DILocation(line: 101, column: 16, scope: !2820)
!2825 = !DILocation(line: 100, column: 7, scope: !2812)
!2826 = !DILocation(line: 102, column: 5, scope: !2820)
!2827 = !DILocation(line: 103, column: 3, scope: !2812)
!2828 = distinct !DISubprogram(name: "xmemdup", scope: !2632, file: !2632, line: 111, type: !2829, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2833)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!12, !2831, !121}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2833 = !{!2834, !2835}
!2834 = !DILocalVariable(name: "p", arg: 1, scope: !2828, file: !2632, line: 111, type: !2831)
!2835 = !DILocalVariable(name: "s", arg: 2, scope: !2828, file: !2632, line: 111, type: !121)
!2836 = !DILocation(line: 111, column: 22, scope: !2828)
!2837 = !DILocation(line: 111, column: 32, scope: !2828)
!2838 = !DILocation(line: 39, column: 17, scope: !2631, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 113, column: 18, scope: !2828)
!2840 = !DILocation(line: 41, column: 13, scope: !2631, inlinedAt: !2839)
!2841 = !DILocation(line: 41, column: 9, scope: !2631, inlinedAt: !2839)
!2842 = !DILocation(line: 42, column: 8, scope: !2642, inlinedAt: !2839)
!2843 = !DILocation(line: 42, column: 15, scope: !2642, inlinedAt: !2839)
!2844 = !DILocation(line: 42, column: 10, scope: !2642, inlinedAt: !2839)
!2845 = !DILocation(line: 43, column: 5, scope: !2642, inlinedAt: !2839)
!2846 = !DILocation(line: 113, column: 10, scope: !2828)
!2847 = !DILocation(line: 113, column: 3, scope: !2828)
!2848 = distinct !DISubprogram(name: "xstrdup", scope: !2632, file: !2632, line: 119, type: !1901, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2849)
!2849 = !{!2850}
!2850 = !DILocalVariable(name: "string", arg: 1, scope: !2848, file: !2632, line: 119, type: !20)
!2851 = !DILocation(line: 119, column: 22, scope: !2848)
!2852 = !DILocation(line: 121, column: 27, scope: !2848)
!2853 = !DILocation(line: 121, column: 43, scope: !2848)
!2854 = !DILocation(line: 111, column: 22, scope: !2828, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 121, column: 10, scope: !2848)
!2856 = !DILocation(line: 111, column: 32, scope: !2828, inlinedAt: !2855)
!2857 = !DILocation(line: 39, column: 17, scope: !2631, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 113, column: 18, scope: !2828, inlinedAt: !2855)
!2859 = !DILocation(line: 41, column: 13, scope: !2631, inlinedAt: !2858)
!2860 = !DILocation(line: 41, column: 9, scope: !2631, inlinedAt: !2858)
!2861 = !DILocation(line: 42, column: 8, scope: !2642, inlinedAt: !2858)
!2862 = !DILocation(line: 42, column: 15, scope: !2642, inlinedAt: !2858)
!2863 = !DILocation(line: 42, column: 10, scope: !2642, inlinedAt: !2858)
!2864 = !DILocation(line: 43, column: 5, scope: !2642, inlinedAt: !2858)
!2865 = !DILocation(line: 113, column: 10, scope: !2828, inlinedAt: !2855)
!2866 = !DILocation(line: 121, column: 3, scope: !2848)
!2867 = distinct !DISubprogram(name: "xalloc_die", scope: !2868, file: !2868, line: 32, type: !687, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !550, variables: !56)
!2868 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2869 = !DILocation(line: 34, column: 10, scope: !2867)
!2870 = !DILocation(line: 34, column: 33, scope: !2867)
!2871 = !DILocation(line: 34, column: 3, scope: !2867)
!2872 = !DILocation(line: 40, column: 3, scope: !2867)
!2873 = distinct !DISubprogram(name: "rpl_calloc", scope: !2874, file: !2874, line: 42, type: !2618, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !2875)
!2874 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2875 = !{!2876, !2877, !2878, !2879}
!2876 = !DILocalVariable(name: "n", arg: 1, scope: !2873, file: !2874, line: 42, type: !121)
!2877 = !DILocalVariable(name: "s", arg: 2, scope: !2873, file: !2874, line: 42, type: !121)
!2878 = !DILocalVariable(name: "result", scope: !2873, file: !2874, line: 44, type: !12)
!2879 = !DILocalVariable(name: "bytes", scope: !2880, file: !2874, line: 56, type: !121)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !2874, line: 53, column: 5)
!2881 = distinct !DILexicalBlock(scope: !2873, file: !2874, line: 47, column: 7)
!2882 = !DILocation(line: 42, column: 20, scope: !2873)
!2883 = !DILocation(line: 42, column: 30, scope: !2873)
!2884 = !DILocation(line: 47, column: 9, scope: !2881)
!2885 = !DILocation(line: 47, column: 19, scope: !2881)
!2886 = !DILocation(line: 47, column: 14, scope: !2881)
!2887 = !DILocation(line: 56, column: 24, scope: !2880)
!2888 = !DILocation(line: 56, column: 14, scope: !2880)
!2889 = !DILocation(line: 57, column: 17, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2880, file: !2874, line: 57, column: 11)
!2891 = !DILocation(line: 57, column: 21, scope: !2890)
!2892 = !DILocation(line: 57, column: 11, scope: !2880)
!2893 = !DILocation(line: 59, column: 11, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !2874, line: 58, column: 9)
!2895 = !DILocation(line: 59, column: 17, scope: !2894)
!2896 = !DILocation(line: 65, column: 12, scope: !2873)
!2897 = !DILocation(line: 44, column: 9, scope: !2873)
!2898 = !DILocation(line: 72, column: 3, scope: !2873)
!2899 = !DILocation(line: 73, column: 1, scope: !2873)
!2900 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2901, file: !2901, line: 334, type: !2902, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !2916)
!2901 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!121, !2904, !20, !121, !2905}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !949, line: 6, baseType: !2907)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !951, line: 21, baseType: !2908)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !951, line: 13, size: 64, elements: !2909)
!2909 = !{!2910, !2911}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2908, file: !951, line: 15, baseType: !45, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2908, file: !951, line: 20, baseType: !2912, size: 32, offset: 32)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2908, file: !951, line: 16, size: 32, elements: !2913)
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2912, file: !951, line: 18, baseType: !140, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2912, file: !951, line: 19, baseType: !960, size: 32)
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923}
!2917 = !DILocalVariable(name: "pwc", arg: 1, scope: !2900, file: !2901, line: 334, type: !2904)
!2918 = !DILocalVariable(name: "s", arg: 2, scope: !2900, file: !2901, line: 334, type: !20)
!2919 = !DILocalVariable(name: "n", arg: 3, scope: !2900, file: !2901, line: 334, type: !121)
!2920 = !DILocalVariable(name: "ps", arg: 4, scope: !2900, file: !2901, line: 334, type: !2905)
!2921 = !DILocalVariable(name: "ret", scope: !2900, file: !2901, line: 336, type: !121)
!2922 = !DILocalVariable(name: "wc", scope: !2900, file: !2901, line: 337, type: !965)
!2923 = !DILocalVariable(name: "uc", scope: !2924, file: !2901, line: 398, type: !521)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !2901, line: 397, column: 5)
!2925 = distinct !DILexicalBlock(scope: !2900, file: !2901, line: 396, column: 7)
!2926 = !DILocation(line: 334, column: 23, scope: !2900)
!2927 = !DILocation(line: 334, column: 40, scope: !2900)
!2928 = !DILocation(line: 334, column: 50, scope: !2900)
!2929 = !DILocation(line: 334, column: 64, scope: !2900)
!2930 = !DILocation(line: 337, column: 3, scope: !2900)
!2931 = !DILocation(line: 353, column: 9, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2900, file: !2901, line: 353, column: 7)
!2933 = !DILocation(line: 353, column: 7, scope: !2900)
!2934 = !DILocation(line: 388, column: 9, scope: !2900)
!2935 = !DILocation(line: 336, column: 10, scope: !2900)
!2936 = !DILocation(line: 396, column: 19, scope: !2925)
!2937 = !DILocation(line: 396, column: 31, scope: !2925)
!2938 = !DILocation(line: 396, column: 26, scope: !2925)
!2939 = !DILocation(line: 396, column: 41, scope: !2925)
!2940 = !DILocation(line: 396, column: 7, scope: !2900)
!2941 = !DILocation(line: 398, column: 26, scope: !2924)
!2942 = !DILocation(line: 398, column: 21, scope: !2924)
!2943 = !DILocation(line: 399, column: 14, scope: !2924)
!2944 = !DILocation(line: 399, column: 12, scope: !2924)
!2945 = !DILocation(line: 405, column: 1, scope: !2900)
!2946 = distinct !DISubprogram(name: "close_stream", scope: !2947, file: !2947, line: 56, type: !2948, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !2990)
!2947 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!45, !2950}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2429, line: 241, size: 1728, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2952, file: !2429, line: 242, baseType: !45, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2952, file: !2429, line: 247, baseType: !10, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2952, file: !2429, line: 248, baseType: !10, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2952, file: !2429, line: 249, baseType: !10, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2952, file: !2429, line: 250, baseType: !10, size: 64, offset: 256)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2952, file: !2429, line: 251, baseType: !10, size: 64, offset: 320)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2952, file: !2429, line: 252, baseType: !10, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2952, file: !2429, line: 253, baseType: !10, size: 64, offset: 448)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2952, file: !2429, line: 254, baseType: !10, size: 64, offset: 512)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2952, file: !2429, line: 256, baseType: !10, size: 64, offset: 576)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2952, file: !2429, line: 257, baseType: !10, size: 64, offset: 640)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2952, file: !2429, line: 258, baseType: !10, size: 64, offset: 704)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2952, file: !2429, line: 260, baseType: !2967, size: 64, offset: 768)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2429, line: 156, size: 192, elements: !2969)
!2969 = !{!2970, !2971, !2973}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2968, file: !2429, line: 157, baseType: !2967, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2968, file: !2429, line: 158, baseType: !2972, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2968, file: !2429, line: 162, baseType: !45, size: 32, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2952, file: !2429, line: 262, baseType: !2972, size: 64, offset: 832)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2952, file: !2429, line: 264, baseType: !45, size: 32, offset: 896)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2952, file: !2429, line: 268, baseType: !45, size: 32, offset: 928)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2952, file: !2429, line: 270, baseType: !2455, size: 64, offset: 960)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2952, file: !2429, line: 274, baseType: !120, size: 16, offset: 1024)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2952, file: !2429, line: 275, baseType: !2460, size: 8, offset: 1040)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2952, file: !2429, line: 276, baseType: !2462, size: 8, offset: 1048)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2952, file: !2429, line: 280, baseType: !2466, size: 64, offset: 1088)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2952, file: !2429, line: 289, baseType: !2469, size: 64, offset: 1152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2952, file: !2429, line: 297, baseType: !12, size: 64, offset: 1216)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2952, file: !2429, line: 298, baseType: !12, size: 64, offset: 1280)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2952, file: !2429, line: 299, baseType: !12, size: 64, offset: 1344)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2952, file: !2429, line: 300, baseType: !12, size: 64, offset: 1408)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2952, file: !2429, line: 302, baseType: !121, size: 64, offset: 1472)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2952, file: !2429, line: 303, baseType: !45, size: 32, offset: 1536)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2952, file: !2429, line: 305, baseType: !2477, size: 160, offset: 1568)
!2990 = !{!2991, !2992, !2994, !2995}
!2991 = !DILocalVariable(name: "stream", arg: 1, scope: !2946, file: !2947, line: 56, type: !2950)
!2992 = !DILocalVariable(name: "some_pending", scope: !2946, file: !2947, line: 58, type: !2993)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!2994 = !DILocalVariable(name: "prev_fail", scope: !2946, file: !2947, line: 59, type: !2993)
!2995 = !DILocalVariable(name: "fclose_fail", scope: !2946, file: !2947, line: 60, type: !2993)
!2996 = !DILocation(line: 56, column: 21, scope: !2946)
!2997 = !DILocation(line: 58, column: 30, scope: !2946)
!2998 = !DILocalVariable(name: "__stream", arg: 1, scope: !2999, file: !3000, line: 132, type: !2950)
!2999 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3000, file: !3000, line: 132, type: !2948, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3001)
!3000 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3001 = !{!2998}
!3002 = !DILocation(line: 132, column: 1, scope: !2999, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 59, column: 27, scope: !2946)
!3004 = !DILocation(line: 134, column: 10, scope: !2999, inlinedAt: !3003)
!3005 = !{!3006, !634, i64 0}
!3006 = !{!"_IO_FILE", !634, i64 0, !586, i64 8, !586, i64 16, !586, i64 24, !586, i64 32, !586, i64 40, !586, i64 48, !586, i64 56, !586, i64 64, !586, i64 72, !586, i64 80, !586, i64 88, !586, i64 96, !586, i64 104, !634, i64 112, !634, i64 116, !1744, i64 120, !1200, i64 128, !587, i64 130, !587, i64 131, !586, i64 136, !1744, i64 144, !586, i64 152, !586, i64 160, !586, i64 168, !586, i64 176, !1744, i64 184, !634, i64 192, !587, i64 196}
!3007 = !DILocation(line: 59, column: 43, scope: !2946)
!3008 = !DILocation(line: 60, column: 29, scope: !2946)
!3009 = !DILocation(line: 60, column: 45, scope: !2946)
!3010 = !DILocation(line: 70, column: 17, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2946, file: !2947, line: 70, column: 7)
!3012 = !DILocation(line: 58, column: 50, scope: !2946)
!3013 = !DILocation(line: 70, column: 33, scope: !3011)
!3014 = !DILocation(line: 70, column: 53, scope: !3011)
!3015 = !DILocation(line: 70, column: 59, scope: !3011)
!3016 = !DILocation(line: 70, column: 7, scope: !2946)
!3017 = !DILocation(line: 72, column: 11, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3011, file: !2947, line: 71, column: 5)
!3019 = !DILocation(line: 73, column: 9, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3018, file: !2947, line: 72, column: 11)
!3021 = !DILocation(line: 73, column: 15, scope: !3020)
!3022 = !DILocation(line: 78, column: 1, scope: !2946)
!3023 = distinct !DISubprogram(name: "hard_locale", scope: !3024, file: !3024, line: 38, type: !3025, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3027)
!3024 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!51, !45}
!3027 = !{!3028, !3029, !3030}
!3028 = !DILocalVariable(name: "category", arg: 1, scope: !3023, file: !3024, line: 38, type: !45)
!3029 = !DILocalVariable(name: "hard", scope: !3023, file: !3024, line: 40, type: !51)
!3030 = !DILocalVariable(name: "p", scope: !3023, file: !3024, line: 41, type: !20)
!3031 = !DILocation(line: 38, column: 18, scope: !3023)
!3032 = !DILocation(line: 40, column: 8, scope: !3023)
!3033 = !DILocation(line: 41, column: 19, scope: !3023)
!3034 = !DILocation(line: 41, column: 15, scope: !3023)
!3035 = !DILocation(line: 43, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3023, file: !3024, line: 43, column: 7)
!3037 = !DILocation(line: 43, column: 7, scope: !3023)
!3038 = !DILocation(line: 47, column: 15, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3024, line: 47, column: 15)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3024, line: 46, column: 9)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3024, line: 45, column: 11)
!3042 = distinct !DILexicalBlock(scope: !3036, file: !3024, line: 44, column: 5)
!3043 = !DILocation(line: 47, column: 31, scope: !3039)
!3044 = !DILocation(line: 47, column: 36, scope: !3039)
!3045 = !DILocation(line: 47, column: 39, scope: !3039)
!3046 = !DILocation(line: 47, column: 59, scope: !3039)
!3047 = !DILocation(line: 47, column: 15, scope: !3040)
!3048 = !DILocation(line: 48, column: 13, scope: !3039)
!3049 = !DILocation(line: 71, column: 3, scope: !3023)
!3050 = distinct !DISubprogram(name: "locale_charset", scope: !523, file: !523, line: 393, type: !3051, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !178, variables: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!20}
!3053 = !{!3054, !3055}
!3054 = !DILocalVariable(name: "codeset", scope: !3050, file: !523, line: 395, type: !20)
!3055 = !DILocalVariable(name: "aliases", scope: !3050, file: !523, line: 396, type: !20)
!3056 = !DILocalVariable(name: "buf1", scope: !3057, file: !523, line: 196, type: !3124)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !523, line: 194, column: 21)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !523, line: 193, column: 19)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !523, line: 193, column: 19)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !523, line: 188, column: 17)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !523, line: 181, column: 19)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !523, line: 177, column: 13)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !523, line: 173, column: 15)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !523, line: 161, column: 9)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !523, line: 157, column: 11)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !523, line: 130, column: 5)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !523, line: 129, column: 7)
!3068 = distinct !DISubprogram(name: "get_charset_aliases", scope: !523, file: !523, line: 124, type: !3051, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !178, variables: !3069)
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3076, !3077, !3078, !3079, !3120, !3121, !3122, !3056, !3123, !3127, !3128, !3129}
!3070 = !DILocalVariable(name: "cp", scope: !3068, file: !523, line: 126, type: !20)
!3071 = !DILocalVariable(name: "dir", scope: !3066, file: !523, line: 132, type: !20)
!3072 = !DILocalVariable(name: "base", scope: !3066, file: !523, line: 133, type: !20)
!3073 = !DILocalVariable(name: "file_name", scope: !3066, file: !523, line: 134, type: !10)
!3074 = !DILocalVariable(name: "dir_len", scope: !3075, file: !523, line: 144, type: !121)
!3075 = distinct !DILexicalBlock(scope: !3066, file: !523, line: 143, column: 7)
!3076 = !DILocalVariable(name: "base_len", scope: !3075, file: !523, line: 145, type: !121)
!3077 = !DILocalVariable(name: "add_slash", scope: !3075, file: !523, line: 146, type: !45)
!3078 = !DILocalVariable(name: "fd", scope: !3064, file: !523, line: 162, type: !45)
!3079 = !DILocalVariable(name: "fp", scope: !3062, file: !523, line: 178, type: !3080)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !3082)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2429, line: 241, size: 1728, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3082, file: !2429, line: 242, baseType: !45, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3082, file: !2429, line: 247, baseType: !10, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3082, file: !2429, line: 248, baseType: !10, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3082, file: !2429, line: 249, baseType: !10, size: 64, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3082, file: !2429, line: 250, baseType: !10, size: 64, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3082, file: !2429, line: 251, baseType: !10, size: 64, offset: 320)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3082, file: !2429, line: 252, baseType: !10, size: 64, offset: 384)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3082, file: !2429, line: 253, baseType: !10, size: 64, offset: 448)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3082, file: !2429, line: 254, baseType: !10, size: 64, offset: 512)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3082, file: !2429, line: 256, baseType: !10, size: 64, offset: 576)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3082, file: !2429, line: 257, baseType: !10, size: 64, offset: 640)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3082, file: !2429, line: 258, baseType: !10, size: 64, offset: 704)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3082, file: !2429, line: 260, baseType: !3097, size: 64, offset: 768)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2429, line: 156, size: 192, elements: !3099)
!3099 = !{!3100, !3101, !3103}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3098, file: !2429, line: 157, baseType: !3097, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3098, file: !2429, line: 158, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3098, file: !2429, line: 162, baseType: !45, size: 32, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3082, file: !2429, line: 262, baseType: !3102, size: 64, offset: 832)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3082, file: !2429, line: 264, baseType: !45, size: 32, offset: 896)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3082, file: !2429, line: 268, baseType: !45, size: 32, offset: 928)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3082, file: !2429, line: 270, baseType: !2455, size: 64, offset: 960)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3082, file: !2429, line: 274, baseType: !120, size: 16, offset: 1024)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3082, file: !2429, line: 275, baseType: !2460, size: 8, offset: 1040)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3082, file: !2429, line: 276, baseType: !2462, size: 8, offset: 1048)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3082, file: !2429, line: 280, baseType: !2466, size: 64, offset: 1088)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3082, file: !2429, line: 289, baseType: !2469, size: 64, offset: 1152)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3082, file: !2429, line: 297, baseType: !12, size: 64, offset: 1216)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3082, file: !2429, line: 298, baseType: !12, size: 64, offset: 1280)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3082, file: !2429, line: 299, baseType: !12, size: 64, offset: 1344)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3082, file: !2429, line: 300, baseType: !12, size: 64, offset: 1408)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3082, file: !2429, line: 302, baseType: !121, size: 64, offset: 1472)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3082, file: !2429, line: 303, baseType: !45, size: 32, offset: 1536)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3082, file: !2429, line: 305, baseType: !2477, size: 160, offset: 1568)
!3120 = !DILocalVariable(name: "res_ptr", scope: !3060, file: !523, line: 190, type: !10)
!3121 = !DILocalVariable(name: "res_size", scope: !3060, file: !523, line: 191, type: !121)
!3122 = !DILocalVariable(name: "c", scope: !3057, file: !523, line: 195, type: !45)
!3123 = !DILocalVariable(name: "buf2", scope: !3057, file: !523, line: 197, type: !3124)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 408, elements: !3125)
!3125 = !{!3126}
!3126 = !DISubrange(count: 51)
!3127 = !DILocalVariable(name: "l1", scope: !3057, file: !523, line: 198, type: !121)
!3128 = !DILocalVariable(name: "l2", scope: !3057, file: !523, line: 198, type: !121)
!3129 = !DILocalVariable(name: "old_res_ptr", scope: !3057, file: !523, line: 199, type: !10)
!3130 = !DILocation(line: 196, column: 28, scope: !3057, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 589, column: 18, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3050, file: !523, line: 589, column: 3)
!3133 = !DILocation(line: 197, column: 28, scope: !3057, inlinedAt: !3131)
!3134 = !DILocation(line: 403, column: 13, scope: !3050)
!3135 = !DILocation(line: 395, column: 15, scope: !3050)
!3136 = !DILocation(line: 584, column: 15, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3050, file: !523, line: 584, column: 7)
!3138 = !DILocation(line: 584, column: 7, scope: !3050)
!3139 = !DILocation(line: 128, column: 8, scope: !3068, inlinedAt: !3131)
!3140 = !DILocation(line: 126, column: 15, scope: !3068, inlinedAt: !3131)
!3141 = !DILocation(line: 129, column: 10, scope: !3067, inlinedAt: !3131)
!3142 = !DILocation(line: 129, column: 7, scope: !3068, inlinedAt: !3131)
!3143 = !DILocation(line: 138, column: 13, scope: !3066, inlinedAt: !3131)
!3144 = !DILocation(line: 132, column: 19, scope: !3066, inlinedAt: !3131)
!3145 = !DILocation(line: 139, column: 15, scope: !3146, inlinedAt: !3131)
!3146 = distinct !DILexicalBlock(scope: !3066, file: !523, line: 139, column: 11)
!3147 = !DILocation(line: 139, column: 23, scope: !3146, inlinedAt: !3131)
!3148 = !DILocation(line: 139, column: 26, scope: !3146, inlinedAt: !3131)
!3149 = !DILocation(line: 139, column: 33, scope: !3146, inlinedAt: !3131)
!3150 = !DILocation(line: 139, column: 11, scope: !3066, inlinedAt: !3131)
!3151 = !DILocation(line: 140, column: 9, scope: !3146, inlinedAt: !3131)
!3152 = !DILocation(line: 144, column: 26, scope: !3075, inlinedAt: !3131)
!3153 = !DILocation(line: 144, column: 16, scope: !3075, inlinedAt: !3131)
!3154 = !DILocation(line: 145, column: 16, scope: !3075, inlinedAt: !3131)
!3155 = !DILocation(line: 146, column: 34, scope: !3075, inlinedAt: !3131)
!3156 = !DILocation(line: 146, column: 38, scope: !3075, inlinedAt: !3131)
!3157 = !DILocation(line: 146, column: 42, scope: !3075, inlinedAt: !3131)
!3158 = !DILocation(line: 147, column: 48, scope: !3075, inlinedAt: !3131)
!3159 = !DILocation(line: 147, column: 46, scope: !3075, inlinedAt: !3131)
!3160 = !DILocation(line: 147, column: 69, scope: !3075, inlinedAt: !3131)
!3161 = !DILocation(line: 147, column: 30, scope: !3075, inlinedAt: !3131)
!3162 = !DILocation(line: 134, column: 13, scope: !3066, inlinedAt: !3131)
!3163 = !DILocation(line: 148, column: 13, scope: !3075, inlinedAt: !3131)
!3164 = !DILocation(line: 150, column: 13, scope: !3165, inlinedAt: !3131)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !523, line: 149, column: 11)
!3166 = distinct !DILexicalBlock(scope: !3075, file: !523, line: 148, column: 13)
!3167 = !DILocation(line: 151, column: 17, scope: !3165, inlinedAt: !3131)
!3168 = !DILocation(line: 152, column: 34, scope: !3169, inlinedAt: !3131)
!3169 = distinct !DILexicalBlock(scope: !3165, file: !523, line: 151, column: 17)
!3170 = !DILocation(line: 153, column: 41, scope: !3165, inlinedAt: !3131)
!3171 = !DILocation(line: 153, column: 13, scope: !3165, inlinedAt: !3131)
!3172 = !DILocation(line: 157, column: 11, scope: !3066, inlinedAt: !3131)
!3173 = !DILocation(line: 171, column: 16, scope: !3064, inlinedAt: !3131)
!3174 = !DILocation(line: 162, column: 15, scope: !3064, inlinedAt: !3131)
!3175 = !DILocation(line: 173, column: 18, scope: !3063, inlinedAt: !3131)
!3176 = !DILocation(line: 173, column: 15, scope: !3064, inlinedAt: !3131)
!3177 = !DILocation(line: 180, column: 20, scope: !3062, inlinedAt: !3131)
!3178 = !DILocation(line: 178, column: 21, scope: !3062, inlinedAt: !3131)
!3179 = !DILocation(line: 181, column: 22, scope: !3061, inlinedAt: !3131)
!3180 = !DILocation(line: 181, column: 19, scope: !3062, inlinedAt: !3131)
!3181 = !DILocation(line: 184, column: 19, scope: !3182, inlinedAt: !3131)
!3182 = distinct !DILexicalBlock(scope: !3061, file: !523, line: 182, column: 17)
!3183 = !DILocation(line: 186, column: 17, scope: !3182, inlinedAt: !3131)
!3184 = !DILocation(line: 190, column: 25, scope: !3060, inlinedAt: !3131)
!3185 = !DILocation(line: 191, column: 26, scope: !3060, inlinedAt: !3131)
!3186 = !DILocation(line: 193, column: 19, scope: !3060, inlinedAt: !3131)
!3187 = !DILocation(line: 196, column: 23, scope: !3057, inlinedAt: !3131)
!3188 = !DILocation(line: 197, column: 23, scope: !3057, inlinedAt: !3131)
!3189 = !DILocalVariable(name: "__fp", arg: 1, scope: !3190, file: !3000, line: 63, type: !3080)
!3190 = distinct !DISubprogram(name: "getc_unlocked", scope: !3000, file: !3000, line: 63, type: !3191, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !178, variables: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!45, !3080}
!3193 = !{!3189}
!3194 = !DILocation(line: 63, column: 22, scope: !3190, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 201, column: 27, scope: !3057, inlinedAt: !3131)
!3196 = !DILocation(line: 65, column: 10, scope: !3190, inlinedAt: !3195)
!3197 = !{!3006, !586, i64 8}
!3198 = !{!3006, !586, i64 16}
!3199 = !{!"branch_weights", i32 2000, i32 1}
!3200 = !DILocation(line: 195, column: 27, scope: !3057, inlinedAt: !3131)
!3201 = !DILocation(line: 202, column: 27, scope: !3057, inlinedAt: !3131)
!3202 = distinct !{!3202, !3203, !3206}
!3203 = !DILocation(line: 209, column: 27, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !523, line: 207, column: 25)
!3205 = distinct !DILexicalBlock(scope: !3057, file: !523, line: 206, column: 27)
!3206 = !DILocation(line: 211, column: 58, scope: !3204)
!3207 = !DILocation(line: 65, column: 10, scope: !3190, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 210, column: 33, scope: !3204, inlinedAt: !3131)
!3209 = !DILocation(line: 63, column: 22, scope: !3190, inlinedAt: !3208)
!3210 = !DILocation(line: 210, column: 29, scope: !3204, inlinedAt: !3131)
!3211 = distinct !{!3211, !3212, !3213}
!3212 = !DILocation(line: 193, column: 19, scope: !3059)
!3213 = !DILocation(line: 241, column: 21, scope: !3059)
!3214 = !DILocation(line: 216, column: 23, scope: !3057, inlinedAt: !3131)
!3215 = !DILocation(line: 217, column: 27, scope: !3216, inlinedAt: !3131)
!3216 = distinct !DILexicalBlock(scope: !3057, file: !523, line: 217, column: 27)
!3217 = !DILocation(line: 217, column: 64, scope: !3216, inlinedAt: !3131)
!3218 = !DILocation(line: 217, column: 27, scope: !3057, inlinedAt: !3131)
!3219 = !DILocation(line: 219, column: 28, scope: !3057, inlinedAt: !3131)
!3220 = !DILocation(line: 198, column: 30, scope: !3057, inlinedAt: !3131)
!3221 = !DILocation(line: 220, column: 28, scope: !3057, inlinedAt: !3131)
!3222 = !DILocation(line: 198, column: 34, scope: !3057, inlinedAt: !3131)
!3223 = !DILocation(line: 199, column: 29, scope: !3057, inlinedAt: !3131)
!3224 = !DILocation(line: 222, column: 36, scope: !3225, inlinedAt: !3131)
!3225 = distinct !DILexicalBlock(scope: !3057, file: !523, line: 222, column: 27)
!3226 = !DILocation(line: 222, column: 27, scope: !3057, inlinedAt: !3131)
!3227 = !DILocation(line: 225, column: 63, scope: !3228, inlinedAt: !3131)
!3228 = distinct !DILexicalBlock(scope: !3225, file: !523, line: 223, column: 25)
!3229 = !DILocation(line: 225, column: 46, scope: !3228, inlinedAt: !3131)
!3230 = !DILocation(line: 226, column: 25, scope: !3228, inlinedAt: !3131)
!3231 = !DILocation(line: 229, column: 36, scope: !3232, inlinedAt: !3131)
!3232 = distinct !DILexicalBlock(scope: !3225, file: !523, line: 228, column: 25)
!3233 = !DILocation(line: 230, column: 73, scope: !3232, inlinedAt: !3131)
!3234 = !DILocation(line: 230, column: 46, scope: !3232, inlinedAt: !3131)
!3235 = !DILocation(line: 232, column: 35, scope: !3236, inlinedAt: !3131)
!3236 = distinct !DILexicalBlock(scope: !3057, file: !523, line: 232, column: 27)
!3237 = !DILocation(line: 232, column: 27, scope: !3057, inlinedAt: !3131)
!3238 = !DILocation(line: 236, column: 27, scope: !3239, inlinedAt: !3131)
!3239 = distinct !DILexicalBlock(scope: !3236, file: !523, line: 233, column: 25)
!3240 = !DILocation(line: 237, column: 27, scope: !3239, inlinedAt: !3131)
!3241 = !DILocation(line: 241, column: 21, scope: !3058, inlinedAt: !3131)
!3242 = !DILocation(line: 239, column: 39, scope: !3057, inlinedAt: !3131)
!3243 = !DILocation(line: 239, column: 50, scope: !3057, inlinedAt: !3131)
!3244 = !DILocation(line: 239, column: 61, scope: !3057, inlinedAt: !3131)
!3245 = !DILocalVariable(name: "__dest", arg: 1, scope: !3246, file: !3247, line: 88, type: !3250)
!3246 = distinct !DISubprogram(name: "strcpy", scope: !3247, file: !3247, line: 88, type: !3248, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !178, variables: !3252)
!3247 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!10, !3250, !3251}
!3250 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!3251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!3252 = !{!3245, !3253}
!3253 = !DILocalVariable(name: "__src", arg: 2, scope: !3246, file: !3247, line: 88, type: !3251)
!3254 = !DILocation(line: 88, column: 1, scope: !3246, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 239, column: 23, scope: !3057, inlinedAt: !3131)
!3256 = !DILocation(line: 90, column: 49, scope: !3246, inlinedAt: !3255)
!3257 = !DILocation(line: 90, column: 10, scope: !3246, inlinedAt: !3255)
!3258 = !DILocation(line: 88, column: 1, scope: !3246, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 240, column: 23, scope: !3057, inlinedAt: !3131)
!3260 = !DILocation(line: 90, column: 49, scope: !3246, inlinedAt: !3259)
!3261 = !DILocation(line: 90, column: 10, scope: !3246, inlinedAt: !3259)
!3262 = !DILocation(line: 193, column: 19, scope: !3058, inlinedAt: !3131)
!3263 = !DILocation(line: 242, column: 19, scope: !3060, inlinedAt: !3131)
!3264 = !DILocation(line: 243, column: 32, scope: !3265, inlinedAt: !3131)
!3265 = distinct !DILexicalBlock(scope: !3060, file: !523, line: 243, column: 23)
!3266 = !DILocation(line: 243, column: 23, scope: !3060, inlinedAt: !3131)
!3267 = !DILocation(line: 247, column: 33, scope: !3268, inlinedAt: !3131)
!3268 = distinct !DILexicalBlock(scope: !3265, file: !523, line: 246, column: 21)
!3269 = !DILocation(line: 247, column: 45, scope: !3268, inlinedAt: !3131)
!3270 = !DILocation(line: 253, column: 11, scope: !3064, inlinedAt: !3131)
!3271 = !DILocation(line: 377, column: 23, scope: !3066, inlinedAt: !3131)
!3272 = !DILocation(line: 378, column: 5, scope: !3066, inlinedAt: !3131)
!3273 = !DILocation(line: 396, column: 15, scope: !3050)
!3274 = !DILocation(line: 590, column: 8, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3132, file: !523, line: 589, column: 3)
!3276 = !DILocation(line: 590, column: 17, scope: !3275)
!3277 = !DILocation(line: 589, column: 3, scope: !3132)
!3278 = !DILocation(line: 592, column: 9, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3275, file: !523, line: 592, column: 9)
!3280 = !DILocation(line: 592, column: 35, scope: !3279)
!3281 = !DILocation(line: 593, column: 9, scope: !3279)
!3282 = !DILocation(line: 593, column: 24, scope: !3279)
!3283 = !DILocation(line: 593, column: 31, scope: !3279)
!3284 = !DILocation(line: 593, column: 34, scope: !3279)
!3285 = !DILocation(line: 593, column: 45, scope: !3279)
!3286 = !DILocation(line: 592, column: 9, scope: !3275)
!3287 = !DILocation(line: 595, column: 29, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3279, file: !523, line: 594, column: 7)
!3289 = !DILocation(line: 595, column: 27, scope: !3288)
!3290 = !DILocation(line: 595, column: 46, scope: !3288)
!3291 = !DILocation(line: 596, column: 9, scope: !3288)
!3292 = !DILocation(line: 591, column: 19, scope: !3275)
!3293 = !DILocation(line: 591, column: 36, scope: !3275)
!3294 = !DILocation(line: 591, column: 16, scope: !3275)
!3295 = !DILocation(line: 591, column: 52, scope: !3275)
!3296 = !DILocation(line: 591, column: 69, scope: !3275)
!3297 = !DILocation(line: 591, column: 49, scope: !3275)
!3298 = distinct !{!3298, !3277, !3299}
!3299 = !DILocation(line: 597, column: 7, scope: !3132)
!3300 = !DILocation(line: 602, column: 7, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3050, file: !523, line: 602, column: 7)
!3302 = !DILocation(line: 602, column: 18, scope: !3301)
!3303 = !DILocation(line: 602, column: 7, scope: !3050)
!3304 = !DILocation(line: 612, column: 3, scope: !3050)
!3305 = distinct !DISubprogram(name: "rpl_fclose", scope: !3306, file: !3306, line: 56, type: !3307, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3349)
!3306 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!45, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !3311)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2429, line: 241, size: 1728, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3311, file: !2429, line: 242, baseType: !45, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3311, file: !2429, line: 247, baseType: !10, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3311, file: !2429, line: 248, baseType: !10, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3311, file: !2429, line: 249, baseType: !10, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3311, file: !2429, line: 250, baseType: !10, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3311, file: !2429, line: 251, baseType: !10, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3311, file: !2429, line: 252, baseType: !10, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3311, file: !2429, line: 253, baseType: !10, size: 64, offset: 448)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3311, file: !2429, line: 254, baseType: !10, size: 64, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3311, file: !2429, line: 256, baseType: !10, size: 64, offset: 576)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3311, file: !2429, line: 257, baseType: !10, size: 64, offset: 640)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3311, file: !2429, line: 258, baseType: !10, size: 64, offset: 704)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3311, file: !2429, line: 260, baseType: !3326, size: 64, offset: 768)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2429, line: 156, size: 192, elements: !3328)
!3328 = !{!3329, !3330, !3332}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3327, file: !2429, line: 157, baseType: !3326, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3327, file: !2429, line: 158, baseType: !3331, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3327, file: !2429, line: 162, baseType: !45, size: 32, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3311, file: !2429, line: 262, baseType: !3331, size: 64, offset: 832)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3311, file: !2429, line: 264, baseType: !45, size: 32, offset: 896)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3311, file: !2429, line: 268, baseType: !45, size: 32, offset: 928)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3311, file: !2429, line: 270, baseType: !2455, size: 64, offset: 960)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3311, file: !2429, line: 274, baseType: !120, size: 16, offset: 1024)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3311, file: !2429, line: 275, baseType: !2460, size: 8, offset: 1040)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3311, file: !2429, line: 276, baseType: !2462, size: 8, offset: 1048)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3311, file: !2429, line: 280, baseType: !2466, size: 64, offset: 1088)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3311, file: !2429, line: 289, baseType: !2469, size: 64, offset: 1152)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3311, file: !2429, line: 297, baseType: !12, size: 64, offset: 1216)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3311, file: !2429, line: 298, baseType: !12, size: 64, offset: 1280)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3311, file: !2429, line: 299, baseType: !12, size: 64, offset: 1344)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3311, file: !2429, line: 300, baseType: !12, size: 64, offset: 1408)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3311, file: !2429, line: 302, baseType: !121, size: 64, offset: 1472)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3311, file: !2429, line: 303, baseType: !45, size: 32, offset: 1536)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3311, file: !2429, line: 305, baseType: !2477, size: 160, offset: 1568)
!3349 = !{!3350, !3351, !3352, !3353}
!3350 = !DILocalVariable(name: "fp", arg: 1, scope: !3305, file: !3306, line: 56, type: !3309)
!3351 = !DILocalVariable(name: "saved_errno", scope: !3305, file: !3306, line: 58, type: !45)
!3352 = !DILocalVariable(name: "fd", scope: !3305, file: !3306, line: 59, type: !45)
!3353 = !DILocalVariable(name: "result", scope: !3305, file: !3306, line: 60, type: !45)
!3354 = !DILocation(line: 56, column: 19, scope: !3305)
!3355 = !DILocation(line: 58, column: 7, scope: !3305)
!3356 = !DILocation(line: 60, column: 7, scope: !3305)
!3357 = !DILocation(line: 63, column: 8, scope: !3305)
!3358 = !DILocation(line: 59, column: 7, scope: !3305)
!3359 = !DILocation(line: 64, column: 10, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3305, file: !3306, line: 64, column: 7)
!3361 = !DILocation(line: 64, column: 7, scope: !3305)
!3362 = !DILocation(line: 65, column: 12, scope: !3360)
!3363 = !DILocation(line: 65, column: 5, scope: !3360)
!3364 = !DILocation(line: 70, column: 9, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3305, file: !3306, line: 70, column: 7)
!3366 = !DILocation(line: 70, column: 23, scope: !3365)
!3367 = !DILocation(line: 70, column: 33, scope: !3365)
!3368 = !DILocation(line: 70, column: 26, scope: !3365)
!3369 = !DILocation(line: 70, column: 59, scope: !3365)
!3370 = !DILocation(line: 71, column: 7, scope: !3365)
!3371 = !DILocation(line: 71, column: 10, scope: !3365)
!3372 = !DILocation(line: 70, column: 7, scope: !3305)
!3373 = !DILocation(line: 98, column: 12, scope: !3305)
!3374 = !DILocation(line: 103, column: 7, scope: !3305)
!3375 = !DILocation(line: 72, column: 19, scope: !3365)
!3376 = !DILocation(line: 103, column: 19, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3305, file: !3306, line: 103, column: 7)
!3378 = !DILocation(line: 105, column: 13, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3377, file: !3306, line: 104, column: 5)
!3380 = !DILocation(line: 107, column: 5, scope: !3379)
!3381 = !DILocation(line: 110, column: 1, scope: !3305)
!3382 = distinct !DISubprogram(name: "rpl_fflush", scope: !3383, file: !3383, line: 127, type: !3384, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3426)
!3383 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!45, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !3388)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2429, line: 241, size: 1728, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3388, file: !2429, line: 242, baseType: !45, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3388, file: !2429, line: 247, baseType: !10, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3388, file: !2429, line: 248, baseType: !10, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3388, file: !2429, line: 249, baseType: !10, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3388, file: !2429, line: 250, baseType: !10, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3388, file: !2429, line: 251, baseType: !10, size: 64, offset: 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3388, file: !2429, line: 252, baseType: !10, size: 64, offset: 384)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3388, file: !2429, line: 253, baseType: !10, size: 64, offset: 448)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3388, file: !2429, line: 254, baseType: !10, size: 64, offset: 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3388, file: !2429, line: 256, baseType: !10, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3388, file: !2429, line: 257, baseType: !10, size: 64, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3388, file: !2429, line: 258, baseType: !10, size: 64, offset: 704)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3388, file: !2429, line: 260, baseType: !3403, size: 64, offset: 768)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2429, line: 156, size: 192, elements: !3405)
!3405 = !{!3406, !3407, !3409}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3404, file: !2429, line: 157, baseType: !3403, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3404, file: !2429, line: 158, baseType: !3408, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3404, file: !2429, line: 162, baseType: !45, size: 32, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3388, file: !2429, line: 262, baseType: !3408, size: 64, offset: 832)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3388, file: !2429, line: 264, baseType: !45, size: 32, offset: 896)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3388, file: !2429, line: 268, baseType: !45, size: 32, offset: 928)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3388, file: !2429, line: 270, baseType: !2455, size: 64, offset: 960)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3388, file: !2429, line: 274, baseType: !120, size: 16, offset: 1024)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3388, file: !2429, line: 275, baseType: !2460, size: 8, offset: 1040)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3388, file: !2429, line: 276, baseType: !2462, size: 8, offset: 1048)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3388, file: !2429, line: 280, baseType: !2466, size: 64, offset: 1088)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3388, file: !2429, line: 289, baseType: !2469, size: 64, offset: 1152)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3388, file: !2429, line: 297, baseType: !12, size: 64, offset: 1216)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3388, file: !2429, line: 298, baseType: !12, size: 64, offset: 1280)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3388, file: !2429, line: 299, baseType: !12, size: 64, offset: 1344)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3388, file: !2429, line: 300, baseType: !12, size: 64, offset: 1408)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3388, file: !2429, line: 302, baseType: !121, size: 64, offset: 1472)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3388, file: !2429, line: 303, baseType: !45, size: 32, offset: 1536)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3388, file: !2429, line: 305, baseType: !2477, size: 160, offset: 1568)
!3426 = !{!3427}
!3427 = !DILocalVariable(name: "stream", arg: 1, scope: !3382, file: !3383, line: 127, type: !3386)
!3428 = !DILocation(line: 127, column: 19, scope: !3382)
!3429 = !DILocation(line: 148, column: 14, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3382, file: !3383, line: 148, column: 7)
!3431 = !DILocation(line: 148, column: 22, scope: !3430)
!3432 = !DILocation(line: 148, column: 27, scope: !3430)
!3433 = !DILocation(line: 148, column: 7, scope: !3382)
!3434 = !DILocation(line: 149, column: 12, scope: !3430)
!3435 = !DILocation(line: 149, column: 5, scope: !3430)
!3436 = !DILocalVariable(name: "fp", arg: 1, scope: !3437, file: !3383, line: 40, type: !3386)
!3437 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3383, file: !3383, line: 40, type: !3438, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !3386}
!3440 = !{!3436}
!3441 = !DILocation(line: 40, column: 48, scope: !3437, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 153, column: 3, scope: !3382)
!3443 = !DILocation(line: 42, column: 11, scope: !3444, inlinedAt: !3442)
!3444 = distinct !DILexicalBlock(scope: !3437, file: !3383, line: 42, column: 7)
!3445 = !DILocation(line: 42, column: 18, scope: !3444, inlinedAt: !3442)
!3446 = !DILocation(line: 42, column: 7, scope: !3437, inlinedAt: !3442)
!3447 = !DILocation(line: 44, column: 5, scope: !3444, inlinedAt: !3442)
!3448 = !DILocation(line: 155, column: 10, scope: !3382)
!3449 = !DILocation(line: 155, column: 3, scope: !3382)
!3450 = !DILocation(line: 229, column: 1, scope: !3382)
!3451 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3452, file: !3452, line: 28, type: !3453, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3496)
!3452 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!45, !3455, !3495, !45}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !3457)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2429, line: 241, size: 1728, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3457, file: !2429, line: 242, baseType: !45, size: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3457, file: !2429, line: 247, baseType: !10, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3457, file: !2429, line: 248, baseType: !10, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3457, file: !2429, line: 249, baseType: !10, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3457, file: !2429, line: 250, baseType: !10, size: 64, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3457, file: !2429, line: 251, baseType: !10, size: 64, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3457, file: !2429, line: 252, baseType: !10, size: 64, offset: 384)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3457, file: !2429, line: 253, baseType: !10, size: 64, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3457, file: !2429, line: 254, baseType: !10, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3457, file: !2429, line: 256, baseType: !10, size: 64, offset: 576)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3457, file: !2429, line: 257, baseType: !10, size: 64, offset: 640)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3457, file: !2429, line: 258, baseType: !10, size: 64, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3457, file: !2429, line: 260, baseType: !3472, size: 64, offset: 768)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2429, line: 156, size: 192, elements: !3474)
!3474 = !{!3475, !3476, !3478}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3473, file: !2429, line: 157, baseType: !3472, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3473, file: !2429, line: 158, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3473, file: !2429, line: 162, baseType: !45, size: 32, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3457, file: !2429, line: 262, baseType: !3477, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3457, file: !2429, line: 264, baseType: !45, size: 32, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3457, file: !2429, line: 268, baseType: !45, size: 32, offset: 928)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3457, file: !2429, line: 270, baseType: !2455, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3457, file: !2429, line: 274, baseType: !120, size: 16, offset: 1024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3457, file: !2429, line: 275, baseType: !2460, size: 8, offset: 1040)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3457, file: !2429, line: 276, baseType: !2462, size: 8, offset: 1048)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3457, file: !2429, line: 280, baseType: !2466, size: 64, offset: 1088)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3457, file: !2429, line: 289, baseType: !2469, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3457, file: !2429, line: 297, baseType: !12, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3457, file: !2429, line: 298, baseType: !12, size: 64, offset: 1280)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3457, file: !2429, line: 299, baseType: !12, size: 64, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3457, file: !2429, line: 300, baseType: !12, size: 64, offset: 1408)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3457, file: !2429, line: 302, baseType: !121, size: 64, offset: 1472)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3457, file: !2429, line: 303, baseType: !45, size: 32, offset: 1536)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3457, file: !2429, line: 305, baseType: !2477, size: 160, offset: 1568)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2597, line: 57, baseType: !2455)
!3496 = !{!3497, !3498, !3499, !3500}
!3497 = !DILocalVariable(name: "fp", arg: 1, scope: !3451, file: !3452, line: 28, type: !3455)
!3498 = !DILocalVariable(name: "offset", arg: 2, scope: !3451, file: !3452, line: 28, type: !3495)
!3499 = !DILocalVariable(name: "whence", arg: 3, scope: !3451, file: !3452, line: 28, type: !45)
!3500 = !DILocalVariable(name: "pos", scope: !3501, file: !3452, line: 116, type: !3495)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !3452, line: 112, column: 5)
!3502 = distinct !DILexicalBlock(scope: !3451, file: !3452, line: 51, column: 7)
!3503 = !DILocation(line: 28, column: 15, scope: !3451)
!3504 = !DILocation(line: 28, column: 25, scope: !3451)
!3505 = !DILocation(line: 28, column: 37, scope: !3451)
!3506 = !DILocation(line: 51, column: 11, scope: !3502)
!3507 = !DILocation(line: 51, column: 31, scope: !3502)
!3508 = !DILocation(line: 51, column: 24, scope: !3502)
!3509 = !DILocation(line: 52, column: 7, scope: !3502)
!3510 = !DILocation(line: 52, column: 14, scope: !3502)
!3511 = !{!3006, !586, i64 40}
!3512 = !DILocation(line: 52, column: 35, scope: !3502)
!3513 = !{!3006, !586, i64 32}
!3514 = !DILocation(line: 52, column: 28, scope: !3502)
!3515 = !DILocation(line: 53, column: 7, scope: !3502)
!3516 = !DILocation(line: 53, column: 14, scope: !3502)
!3517 = !{!3006, !586, i64 72}
!3518 = !DILocation(line: 53, column: 28, scope: !3502)
!3519 = !DILocation(line: 51, column: 7, scope: !3451)
!3520 = !DILocation(line: 116, column: 26, scope: !3501)
!3521 = !DILocation(line: 116, column: 19, scope: !3501)
!3522 = !DILocation(line: 116, column: 13, scope: !3501)
!3523 = !DILocation(line: 117, column: 15, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3501, file: !3452, line: 117, column: 11)
!3525 = !DILocation(line: 117, column: 11, scope: !3501)
!3526 = !DILocation(line: 127, column: 11, scope: !3501)
!3527 = !DILocation(line: 127, column: 18, scope: !3501)
!3528 = !DILocation(line: 128, column: 11, scope: !3501)
!3529 = !DILocation(line: 128, column: 19, scope: !3501)
!3530 = !{!3006, !1744, i64 144}
!3531 = !DILocation(line: 159, column: 7, scope: !3501)
!3532 = !DILocation(line: 161, column: 10, scope: !3451)
!3533 = !DILocation(line: 161, column: 3, scope: !3451)
!3534 = !DILocation(line: 162, column: 1, scope: !3451)
